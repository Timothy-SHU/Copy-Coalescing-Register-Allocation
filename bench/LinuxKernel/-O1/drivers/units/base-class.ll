; ModuleID = 'drivers/base/class.c'
source_filename = "drivers/base/class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_create_file_ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_create_file_ns ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_remove_file_ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_remove_file_ns ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_create: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_destroy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_dev_iter_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_dev_iter_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_dev_iter_next: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_dev_iter_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_dev_iter_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_dev_iter_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_for_each_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_for_each_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_find_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_find_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_interface_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_interface_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_interface_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_interface_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_show_class_attr_string: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad show_class_attr_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_compat_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_compat_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_compat_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_compat_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_compat_create_link: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_compat_create_link ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_compat_remove_link: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_compat_remove_link ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_class_is_registered: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad class_is_registered ; .previous"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, ptr, %struct.kset, ptr, %struct.lock_class_key }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.lock_class_key = type {}
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.class_dev_iter = type { %struct.klist_iter, ptr, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.class_attribute_string = type { %struct.class_attribute, ptr }
%struct.class_compat = type { ptr }

@class_kset = internal global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_class_create_file_ns335 = internal global ptr @class_create_file_ns, section ".discard.addressable", align 8, !dbg !5013
@__UNIQUE_ID___addressable_class_remove_file_ns336 = internal global ptr @class_remove_file_ns, section ".discard.addressable", align 8, !dbg !5015
@.str = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1, !dbg !5017
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !5022
@class_ktype = internal constant %struct.kobj_type { ptr @class_release, ptr @class_sysfs_ops, ptr null, ptr @class_child_ns_type, ptr null, ptr null }, align 8, !dbg !5095
@__UNIQUE_ID___addressable_class_register337 = internal global ptr @class_register, section ".discard.addressable", align 8, !dbg !5025
@__UNIQUE_ID___addressable_class_unregister338 = internal global ptr @class_unregister, section ".discard.addressable", align 8, !dbg !5027
@__UNIQUE_ID___addressable_class_create339 = internal global ptr @class_create, section ".discard.addressable", align 8, !dbg !5029
@__UNIQUE_ID___addressable_class_destroy340 = internal global ptr @class_destroy, section ".discard.addressable", align 8, !dbg !5031
@.str.2 = private unnamed_addr constant [39 x i8] c"\012%s: class %p was not registered yet\0A\00", align 1, !dbg !5033
@__func__.class_dev_iter_init = private unnamed_addr constant [20 x i8] c"class_dev_iter_init\00", align 1, !dbg !5038
@__UNIQUE_ID___addressable_class_dev_iter_init341 = internal global ptr @class_dev_iter_init, section ".discard.addressable", align 8, !dbg !5041
@__UNIQUE_ID___addressable_class_dev_iter_next342 = internal global ptr @class_dev_iter_next, section ".discard.addressable", align 8, !dbg !5043
@__UNIQUE_ID___addressable_class_dev_iter_exit343 = internal global ptr @class_dev_iter_exit, section ".discard.addressable", align 8, !dbg !5045
@.str.3 = private unnamed_addr constant [51 x i8] c"%s called for class '%s' before it was initialized\00", align 1, !dbg !5047
@__func__.class_for_each_device = private unnamed_addr constant [22 x i8] c"class_for_each_device\00", align 1, !dbg !5052
@.str.4 = private unnamed_addr constant [21 x i8] c"drivers/base/class.c\00", align 1, !dbg !5057
@__UNIQUE_ID___addressable_class_for_each_device344 = internal global ptr @class_for_each_device, section ".discard.addressable", align 8, !dbg !5062
@__func__.class_find_device = private unnamed_addr constant [18 x i8] c"class_find_device\00", align 1, !dbg !5064
@__UNIQUE_ID___addressable_class_find_device345 = internal global ptr @class_find_device, section ".discard.addressable", align 8, !dbg !5069
@__UNIQUE_ID___addressable_class_interface_register346 = internal global ptr @class_interface_register, section ".discard.addressable", align 8, !dbg !5071
@__UNIQUE_ID___addressable_class_interface_unregister347 = internal global ptr @class_interface_unregister, section ".discard.addressable", align 8, !dbg !5073
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !5075
@__UNIQUE_ID___addressable_show_class_attr_string348 = internal global ptr @show_class_attr_string, section ".discard.addressable", align 8, !dbg !5078
@__UNIQUE_ID___addressable_class_compat_register349 = internal global ptr @class_compat_register, section ".discard.addressable", align 8, !dbg !5080
@__UNIQUE_ID___addressable_class_compat_unregister350 = internal global ptr @class_compat_unregister, section ".discard.addressable", align 8, !dbg !5082
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1, !dbg !5084
@__UNIQUE_ID___addressable_class_compat_create_link351 = internal global ptr @class_compat_create_link, section ".discard.addressable", align 8, !dbg !5087
@__UNIQUE_ID___addressable_class_compat_remove_link352 = internal global ptr @class_compat_remove_link, section ".discard.addressable", align 8, !dbg !5089
@__UNIQUE_ID___addressable_class_is_registered353 = internal global ptr @class_is_registered, section ".discard.addressable", align 8, !dbg !5091
@.str.7 = private unnamed_addr constant [6 x i8] c"class\00", align 1, !dbg !5093
@class_sysfs_ops = internal constant %struct.sysfs_ops { ptr @class_attr_show, ptr @class_attr_store }, align 8, !dbg !5097
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5099
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID___addressable_class_create_file_ns335, ptr @__UNIQUE_ID___addressable_class_remove_file_ns336, ptr @__UNIQUE_ID___addressable_class_register337, ptr @__UNIQUE_ID___addressable_class_unregister338, ptr @__UNIQUE_ID___addressable_class_create339, ptr @__UNIQUE_ID___addressable_class_destroy340, ptr @__UNIQUE_ID___addressable_class_dev_iter_init341, ptr @__UNIQUE_ID___addressable_class_dev_iter_next342, ptr @__UNIQUE_ID___addressable_class_dev_iter_exit343, ptr @__UNIQUE_ID___addressable_class_for_each_device344, ptr @__UNIQUE_ID___addressable_class_find_device345, ptr @__UNIQUE_ID___addressable_class_interface_register346, ptr @__UNIQUE_ID___addressable_class_interface_unregister347, ptr @__UNIQUE_ID___addressable_show_class_attr_string348, ptr @__UNIQUE_ID___addressable_class_compat_register349, ptr @__UNIQUE_ID___addressable_class_compat_unregister350, ptr @__UNIQUE_ID___addressable_class_compat_create_link351, ptr @__UNIQUE_ID___addressable_class_compat_remove_link352, ptr @__UNIQUE_ID___addressable_class_is_registered353], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @class_to_subsys(ptr noundef %class) #0 align 16 !dbg !5110 {
entry:
  %retval = alloca ptr, align 8
  %class.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %kset = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !5114, metadata !DIExpression()), !dbg !5130
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5131
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5115, metadata !DIExpression()), !dbg !5132
  store ptr null, ptr %sp, align 8, !dbg !5132
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #16, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5116, metadata !DIExpression()), !dbg !5134
  %0 = load ptr, ptr %class.addr, align 8, !dbg !5135
  %tobool = icmp ne ptr %0, null, !dbg !5135
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5137

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @class_kset, align 8, !dbg !5138
  %tobool1 = icmp ne ptr %1, null, !dbg !5138
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5139

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !5140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !5140

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr @class_kset, align 8, !dbg !5141
  %list_lock = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 1, !dbg !5142
  call void @spin_lock(ptr noundef %list_lock) #17, !dbg !5143
  %3 = load ptr, ptr @class_kset, align 8, !dbg !5144
  %list = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 0, !dbg !5146
  %call = call i32 @list_empty(ptr noundef %list) #17, !dbg !5147
  %tobool2 = icmp ne i32 %call, 0, !dbg !5147
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5148

if.then3:                                         ; preds = %if.end
  br label %done, !dbg !5149

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5150
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5117, metadata !DIExpression()), !dbg !5150
  %4 = load ptr, ptr @class_kset, align 8, !dbg !5150
  %list5 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 0, !dbg !5150
  %next = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !5150
  %5 = load ptr, ptr %next, align 8, !dbg !5150
  store ptr %5, ptr %__mptr, align 8, !dbg !5150
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5150
  %add.ptr = getelementptr i8, ptr %6, i64 -8, !dbg !5150
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5150
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5151
  %7 = load ptr, ptr %tmp, align 8, !dbg !5150
  store ptr %7, ptr %kobj, align 8, !dbg !5151
  br label %for.cond, !dbg !5151

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load ptr, ptr %kobj, align 8, !dbg !5152
  %entry6 = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 1, !dbg !5152
  %9 = load ptr, ptr @class_kset, align 8, !dbg !5152
  %list7 = getelementptr inbounds %struct.kset, ptr %9, i32 0, i32 0, !dbg !5152
  %cmp = icmp eq ptr %entry6, %list7, !dbg !5152
  %lnot = xor i1 %cmp, true, !dbg !5152
  br i1 %lnot, label %for.body, label %for.end, !dbg !5151

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %kset) #16, !dbg !5153
  call void @llvm.dbg.declare(metadata ptr %kset, metadata !5120, metadata !DIExpression()), !dbg !5154
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #16, !dbg !5155
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !5123, metadata !DIExpression()), !dbg !5155
  %10 = load ptr, ptr %kobj, align 8, !dbg !5155
  store ptr %10, ptr %__mptr8, align 8, !dbg !5155
  %11 = load ptr, ptr %__mptr8, align 8, !dbg !5155
  %add.ptr10 = getelementptr i8, ptr %11, i64 -24, !dbg !5155
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #16, !dbg !5156
  %12 = load ptr, ptr %tmp9, align 8, !dbg !5155
  store ptr %12, ptr %kset, align 8, !dbg !5154
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #16, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !5125, metadata !DIExpression()), !dbg !5157
  %13 = load ptr, ptr %kset, align 8, !dbg !5157
  store ptr %13, ptr %__mptr11, align 8, !dbg !5157
  %14 = load ptr, ptr %__mptr11, align 8, !dbg !5157
  %add.ptr13 = getelementptr i8, ptr %14, i64 0, !dbg !5157
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #16, !dbg !5158
  %15 = load ptr, ptr %tmp12, align 8, !dbg !5157
  store ptr %15, ptr %sp, align 8, !dbg !5159
  %16 = load ptr, ptr %sp, align 8, !dbg !5160
  %class14 = getelementptr inbounds %struct.subsys_private, ptr %16, i32 0, i32 12, !dbg !5162
  %17 = load ptr, ptr %class14, align 8, !dbg !5162
  %18 = load ptr, ptr %class.addr, align 8, !dbg !5163
  %cmp15 = icmp eq ptr %17, %18, !dbg !5164
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5165

if.then16:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5166

if.end17:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5167
  br label %cleanup, !dbg !5167

cleanup:                                          ; preds = %if.then16, %if.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %kset) #16, !dbg !5167
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5168

for.inc:                                          ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #16, !dbg !5169
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !5127, metadata !DIExpression()), !dbg !5169
  %19 = load ptr, ptr %kobj, align 8, !dbg !5169
  %entry19 = getelementptr inbounds %struct.kobject, ptr %19, i32 0, i32 1, !dbg !5169
  %next20 = getelementptr inbounds %struct.list_head, ptr %entry19, i32 0, i32 0, !dbg !5169
  %20 = load ptr, ptr %next20, align 8, !dbg !5169
  store ptr %20, ptr %__mptr18, align 8, !dbg !5169
  %21 = load ptr, ptr %__mptr18, align 8, !dbg !5169
  %add.ptr22 = getelementptr i8, ptr %21, i64 -8, !dbg !5169
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !5169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #16, !dbg !5152
  %22 = load ptr, ptr %tmp21, align 8, !dbg !5169
  store ptr %22, ptr %kobj, align 8, !dbg !5152
  br label %for.cond, !dbg !5152, !llvm.loop !5170

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %sp, align 8, !dbg !5174
  br label %done, !dbg !5175

done:                                             ; preds = %for.end, %cleanup, %if.then3
  call void @llvm.dbg.label(metadata !5129), !dbg !5176
  %23 = load ptr, ptr %sp, align 8, !dbg !5177
  %call23 = call ptr @subsys_get(ptr noundef %23) #17, !dbg !5178
  store ptr %call23, ptr %sp, align 8, !dbg !5179
  %24 = load ptr, ptr @class_kset, align 8, !dbg !5180
  %list_lock24 = getelementptr inbounds %struct.kset, ptr %24, i32 0, i32 1, !dbg !5181
  call void @spin_unlock(ptr noundef %list_lock24) #17, !dbg !5182
  %25 = load ptr, ptr %sp, align 8, !dbg !5183
  store ptr %25, ptr %retval, align 8, !dbg !5184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !5184

cleanup25:                                        ; preds = %done, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #16, !dbg !5185
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !5185
  %26 = load ptr, ptr %retval, align 8, !dbg !5185
  ret ptr %26, !dbg !5185
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !5186 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5193
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5193
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !5193
  ret void, !dbg !5194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !5195 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  br label %do.body, !dbg !5204

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5206

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5204
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5204
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5204
  store ptr %1, ptr %tmp, align 8, !dbg !5206
  %2 = load ptr, ptr %tmp, align 8, !dbg !5204
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5208
  %cmp = icmp eq ptr %2, %3, !dbg !5209
  %conv = zext i1 %cmp to i32, !dbg !5209
  ret i32 %conv, !dbg !5210
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @subsys_get(ptr noundef %sp) #4 align 16 !dbg !5211 {
entry:
  %sp.addr = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !5215, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %sp.addr, align 8, !dbg !5217
  %tobool = icmp ne ptr %0, null, !dbg !5217
  br i1 %tobool, label %if.then, label %if.end, !dbg !5219

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sp.addr, align 8, !dbg !5220
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %1, i32 0, i32 0, !dbg !5221
  %call = call ptr @kset_get(ptr noundef %subsys) #17, !dbg !5222
  br label %if.end, !dbg !5222

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %sp.addr, align 8, !dbg !5223
  ret ptr %2, !dbg !5224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !5225 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5229
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5229
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !5229
  ret void, !dbg !5230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @class_create_file_ns(ptr noundef %cls, ptr noundef %attr, ptr noundef %ns) #0 align 16 !dbg !5231 {
entry:
  %retval = alloca i32, align 4
  %cls.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !5235, metadata !DIExpression()), !dbg !5240
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5236, metadata !DIExpression()), !dbg !5241
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5237, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5243
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5238, metadata !DIExpression()), !dbg !5244
  %0 = load ptr, ptr %cls.addr, align 8, !dbg !5245
  %call = call ptr @class_to_subsys(ptr noundef %0) #17, !dbg !5246
  store ptr %call, ptr %sp, align 8, !dbg !5244
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5239, metadata !DIExpression()), !dbg !5248
  %1 = load ptr, ptr %sp, align 8, !dbg !5249
  %tobool = icmp ne ptr %1, null, !dbg !5249
  br i1 %tobool, label %if.end, label %if.then, !dbg !5251

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5252

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !5253
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 0, !dbg !5254
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !5255
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !5256
  %attr1 = getelementptr inbounds %struct.class_attribute, ptr %3, i32 0, i32 0, !dbg !5257
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !5258
  %call2 = call i32 @sysfs_create_file_ns(ptr noundef %kobj, ptr noundef %attr1, ptr noundef %4) #17, !dbg !5259
  store i32 %call2, ptr %error, align 4, !dbg !5260
  %5 = load ptr, ptr %sp, align 8, !dbg !5261
  call void @subsys_put(ptr noundef %5) #17, !dbg !5262
  %6 = load i32, ptr %error, align 4, !dbg !5263
  store i32 %6, ptr %retval, align 4, !dbg !5264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5264

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5265
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !5265
  %7 = load i32, ptr %retval, align 4, !dbg !5265
  ret i32 %7, !dbg !5265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5266 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @subsys_put(ptr noundef %sp) #4 align 16 !dbg !5271 {
entry:
  %sp.addr = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  %0 = load ptr, ptr %sp.addr, align 8, !dbg !5277
  %tobool = icmp ne ptr %0, null, !dbg !5277
  br i1 %tobool, label %if.then, label %if.end, !dbg !5279

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sp.addr, align 8, !dbg !5280
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %1, i32 0, i32 0, !dbg !5281
  call void @kset_put(ptr noundef %subsys) #17, !dbg !5282
  br label %if.end, !dbg !5282

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_remove_file_ns(ptr noundef %cls, ptr noundef %attr, ptr noundef %ns) #0 align 16 !dbg !5284 {
entry:
  %cls.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !5288, metadata !DIExpression()), !dbg !5292
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5289, metadata !DIExpression()), !dbg !5293
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5290, metadata !DIExpression()), !dbg !5294
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5295
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5291, metadata !DIExpression()), !dbg !5296
  %0 = load ptr, ptr %cls.addr, align 8, !dbg !5297
  %call = call ptr @class_to_subsys(ptr noundef %0) #17, !dbg !5298
  store ptr %call, ptr %sp, align 8, !dbg !5296
  %1 = load ptr, ptr %sp, align 8, !dbg !5299
  %tobool = icmp ne ptr %1, null, !dbg !5299
  br i1 %tobool, label %if.end, label %if.then, !dbg !5301

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5302

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !5303
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 0, !dbg !5304
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !5305
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !5306
  %attr1 = getelementptr inbounds %struct.class_attribute, ptr %3, i32 0, i32 0, !dbg !5307
  %4 = load ptr, ptr %ns.addr, align 8, !dbg !5308
  call void @sysfs_remove_file_ns(ptr noundef %kobj, ptr noundef %attr1, ptr noundef %4) #17, !dbg !5309
  %5 = load ptr, ptr %sp, align 8, !dbg !5310
  call void @subsys_put(ptr noundef %5) #17, !dbg !5311
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5312
  br label %cleanup, !dbg !5312

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !5312
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5312

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5313 dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @class_register(ptr noundef %cls) #0 align 16 !dbg !5316 {
entry:
  %retval = alloca i32, align 4
  %cls.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %key = alloca ptr, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !5320, metadata !DIExpression()), !dbg !5326
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #16, !dbg !5327
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !5321, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #16, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5322, metadata !DIExpression()), !dbg !5330
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5324, metadata !DIExpression()), !dbg !5332
  store i32 0, ptr %tmp, align 4, !dbg !5333
  %0 = load i32, ptr %tmp, align 4, !dbg !5336
  %call = call noalias ptr @kzalloc(i64 noundef 416, i32 noundef 3264) #18, !dbg !5337
  store ptr %call, ptr %cp, align 8, !dbg !5338
  %1 = load ptr, ptr %cp, align 8, !dbg !5339
  %tobool = icmp ne ptr %1, null, !dbg !5339
  br i1 %tobool, label %if.end, label %if.then, !dbg !5341

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5342

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cp, align 8, !dbg !5343
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 5, !dbg !5344
  call void @klist_init(ptr noundef %klist_devices, ptr noundef @klist_class_dev_get, ptr noundef @klist_class_dev_put) #17, !dbg !5345
  %3 = load ptr, ptr %cp, align 8, !dbg !5346
  %interfaces = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 2, !dbg !5347
  call void @INIT_LIST_HEAD(ptr noundef %interfaces) #17, !dbg !5348
  %4 = load ptr, ptr %cp, align 8, !dbg !5349
  %glue_dirs = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 11, !dbg !5350
  call void @kset_init(ptr noundef %glue_dirs) #17, !dbg !5351
  %5 = load ptr, ptr %cp, align 8, !dbg !5352
  %lock_key = getelementptr inbounds %struct.subsys_private, ptr %5, i32 0, i32 13, !dbg !5353
  store ptr %lock_key, ptr %key, align 8, !dbg !5354
  %6 = load ptr, ptr %key, align 8, !dbg !5355
  call void @lockdep_register_key(ptr noundef %6) #17, !dbg !5356
  %7 = load ptr, ptr %cp, align 8, !dbg !5357
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %7, i32 0, i32 3, !dbg !5358
  %8 = load ptr, ptr %key, align 8, !dbg !5359
  call void @__mutex_init(ptr noundef %mutex, ptr noundef @.str, ptr noundef %8) #17, !dbg !5360
  %9 = load ptr, ptr %cp, align 8, !dbg !5361
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 0, !dbg !5362
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !5363
  %10 = load ptr, ptr %cls.addr, align 8, !dbg !5364
  %name = getelementptr inbounds %struct.class, ptr %10, i32 0, i32 0, !dbg !5365
  %11 = load ptr, ptr %name, align 8, !dbg !5365
  %call1 = call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %kobj, ptr noundef @.str.1, ptr noundef %11) #17, !dbg !5366
  store i32 %call1, ptr %error, align 4, !dbg !5367
  %12 = load i32, ptr %error, align 4, !dbg !5368
  %tobool2 = icmp ne i32 %12, 0, !dbg !5368
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5370

if.then3:                                         ; preds = %if.end
  %13 = load ptr, ptr %cp, align 8, !dbg !5371
  call void @kfree(ptr noundef %13) #17, !dbg !5373
  %14 = load i32, ptr %error, align 4, !dbg !5374
  store i32 %14, ptr %retval, align 4, !dbg !5375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5375

if.end4:                                          ; preds = %if.end
  %15 = load ptr, ptr @class_kset, align 8, !dbg !5376
  %16 = load ptr, ptr %cp, align 8, !dbg !5377
  %subsys5 = getelementptr inbounds %struct.subsys_private, ptr %16, i32 0, i32 0, !dbg !5378
  %kobj6 = getelementptr inbounds %struct.kset, ptr %subsys5, i32 0, i32 2, !dbg !5379
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj6, i32 0, i32 3, !dbg !5380
  store ptr %15, ptr %kset, align 8, !dbg !5381
  %17 = load ptr, ptr %cp, align 8, !dbg !5382
  %subsys7 = getelementptr inbounds %struct.subsys_private, ptr %17, i32 0, i32 0, !dbg !5383
  %kobj8 = getelementptr inbounds %struct.kset, ptr %subsys7, i32 0, i32 2, !dbg !5384
  %ktype = getelementptr inbounds %struct.kobject, ptr %kobj8, i32 0, i32 4, !dbg !5385
  store ptr @class_ktype, ptr %ktype, align 8, !dbg !5386
  %18 = load ptr, ptr %cls.addr, align 8, !dbg !5387
  %19 = load ptr, ptr %cp, align 8, !dbg !5388
  %class = getelementptr inbounds %struct.subsys_private, ptr %19, i32 0, i32 12, !dbg !5389
  store ptr %18, ptr %class, align 8, !dbg !5390
  %20 = load ptr, ptr %cp, align 8, !dbg !5391
  %subsys9 = getelementptr inbounds %struct.subsys_private, ptr %20, i32 0, i32 0, !dbg !5392
  %call10 = call i32 @kset_register(ptr noundef %subsys9) #17, !dbg !5393
  store i32 %call10, ptr %error, align 4, !dbg !5394
  %21 = load i32, ptr %error, align 4, !dbg !5395
  %tobool11 = icmp ne i32 %21, 0, !dbg !5395
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5397

if.then12:                                        ; preds = %if.end4
  br label %err_out, !dbg !5398

if.end13:                                         ; preds = %if.end4
  %22 = load ptr, ptr %cp, align 8, !dbg !5399
  %subsys14 = getelementptr inbounds %struct.subsys_private, ptr %22, i32 0, i32 0, !dbg !5400
  %kobj15 = getelementptr inbounds %struct.kset, ptr %subsys14, i32 0, i32 2, !dbg !5401
  %23 = load ptr, ptr %cls.addr, align 8, !dbg !5402
  %class_groups = getelementptr inbounds %struct.class, ptr %23, i32 0, i32 1, !dbg !5403
  %24 = load ptr, ptr %class_groups, align 8, !dbg !5403
  %call16 = call i32 @sysfs_create_groups(ptr noundef %kobj15, ptr noundef %24) #17, !dbg !5404
  store i32 %call16, ptr %error, align 4, !dbg !5405
  %25 = load i32, ptr %error, align 4, !dbg !5406
  %tobool17 = icmp ne i32 %25, 0, !dbg !5406
  br i1 %tobool17, label %if.then18, label %if.end24, !dbg !5408

if.then18:                                        ; preds = %if.end13
  %26 = load ptr, ptr %cp, align 8, !dbg !5409
  %subsys19 = getelementptr inbounds %struct.subsys_private, ptr %26, i32 0, i32 0, !dbg !5411
  %kobj20 = getelementptr inbounds %struct.kset, ptr %subsys19, i32 0, i32 2, !dbg !5412
  call void @kobject_del(ptr noundef %kobj20) #17, !dbg !5413
  %27 = load ptr, ptr %cp, align 8, !dbg !5414
  %subsys21 = getelementptr inbounds %struct.subsys_private, ptr %27, i32 0, i32 0, !dbg !5415
  %kobj22 = getelementptr inbounds %struct.kset, ptr %subsys21, i32 0, i32 2, !dbg !5416
  %name23 = getelementptr inbounds %struct.kobject, ptr %kobj22, i32 0, i32 0, !dbg !5417
  %28 = load ptr, ptr %name23, align 8, !dbg !5417
  call void @kfree_const(ptr noundef %28) #17, !dbg !5418
  br label %err_out, !dbg !5419

if.end24:                                         ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !5420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5420

err_out:                                          ; preds = %if.then18, %if.then12
  call void @llvm.dbg.label(metadata !5325), !dbg !5421
  %29 = load ptr, ptr %key, align 8, !dbg !5422
  call void @lockdep_unregister_key(ptr noundef %29) #17, !dbg !5423
  %30 = load ptr, ptr %cp, align 8, !dbg !5424
  call void @kfree(ptr noundef %30) #17, !dbg !5425
  %31 = load i32, ptr %error, align 4, !dbg !5426
  store i32 %31, ptr %retval, align 4, !dbg !5427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5427

cleanup:                                          ; preds = %err_out, %if.end24, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5428
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #16, !dbg !5428
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #16, !dbg !5428
  %32 = load i32, ptr %retval, align 4, !dbg !5428
  ret i32 %32, !dbg !5428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5429 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5433, metadata !DIExpression()), !dbg !5435
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5434, metadata !DIExpression()), !dbg !5436
  %0 = load i64, ptr %size.addr, align 8, !dbg !5437
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5438
  %or = or i32 %1, 256, !dbg !5439
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5440
  ret ptr %call, !dbg !5441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5442 dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @klist_class_dev_get(ptr noundef %n) #0 align 16 !dbg !5446 {
entry:
  %n.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5448, metadata !DIExpression()), !dbg !5450
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5449, metadata !DIExpression()), !dbg !5452
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5453
  %call = call ptr @klist_class_to_dev(ptr noundef %0) #17, !dbg !5454
  store ptr %call, ptr %dev, align 8, !dbg !5452
  %1 = load ptr, ptr %dev, align 8, !dbg !5455
  %call1 = call ptr @get_device(ptr noundef %1) #17, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5457
  ret void, !dbg !5457
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @klist_class_dev_put(ptr noundef %n) #0 align 16 !dbg !5458 {
entry:
  %n.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5460, metadata !DIExpression()), !dbg !5462
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5461, metadata !DIExpression()), !dbg !5464
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5465
  %call = call ptr @klist_class_to_dev(ptr noundef %0) #17, !dbg !5466
  store ptr %call, ptr %dev, align 8, !dbg !5464
  %1 = load ptr, ptr %dev, align 8, !dbg !5467
  call void @put_device(ptr noundef %1) #17, !dbg !5468
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5469
  ret void, !dbg !5469
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !5470 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  br label %do.body, !dbg !5476

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5477

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5479

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5477

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5481
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5481
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5481
  store volatile ptr %0, ptr %next, align 8, !dbg !5481
  br label %do.end3, !dbg !5481

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5477

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5483

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5484

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5486

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5484

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5488
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5488
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5488
  store volatile ptr %2, ptr %prev, align 8, !dbg !5488
  br label %do.end9, !dbg !5488

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5484

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5490
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5491 dso_local void @kset_init(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lockdep_register_key(ptr noundef %key) #4 align 16 !dbg !5494 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  ret void, !dbg !5501
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5502 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5506 dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5509 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5512 dso_local i32 @kset_register(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5515 dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5518 dso_local void @kobject_del(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5519 dso_local void @kfree_const(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lockdep_unregister_key(ptr noundef %key) #4 align 16 !dbg !5521 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5523, metadata !DIExpression()), !dbg !5524
  ret void, !dbg !5525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_unregister(ptr noundef %cls) #0 align 16 !dbg !5526 {
entry:
  %cls.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !5528, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5529, metadata !DIExpression()), !dbg !5532
  %0 = load ptr, ptr %cls.addr, align 8, !dbg !5533
  %call = call ptr @class_to_subsys(ptr noundef %0) #17, !dbg !5534
  store ptr %call, ptr %sp, align 8, !dbg !5532
  %1 = load ptr, ptr %sp, align 8, !dbg !5535
  %tobool = icmp ne ptr %1, null, !dbg !5535
  br i1 %tobool, label %if.end, label %if.then, !dbg !5537

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5538

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !5539
  %2 = load i32, ptr %tmp, align 4, !dbg !5542
  %3 = load ptr, ptr %sp, align 8, !dbg !5543
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 0, !dbg !5544
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !5545
  %4 = load ptr, ptr %cls.addr, align 8, !dbg !5546
  %class_groups = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 1, !dbg !5547
  %5 = load ptr, ptr %class_groups, align 8, !dbg !5547
  call void @sysfs_remove_groups(ptr noundef %kobj, ptr noundef %5) #17, !dbg !5548
  %6 = load ptr, ptr %sp, align 8, !dbg !5549
  %subsys1 = getelementptr inbounds %struct.subsys_private, ptr %6, i32 0, i32 0, !dbg !5550
  call void @kset_unregister(ptr noundef %subsys1) #17, !dbg !5551
  %7 = load ptr, ptr %sp, align 8, !dbg !5552
  call void @subsys_put(ptr noundef %7) #17, !dbg !5553
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5554
  br label %cleanup, !dbg !5554

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !5554
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5554

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5555 dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5558 dso_local void @kset_unregister(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @class_create(ptr noundef %name) #0 align 16 !dbg !5559 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cls = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5564, metadata !DIExpression()), !dbg !5568
  call void @llvm.lifetime.start.p0(i64 8, ptr %cls) #16, !dbg !5569
  call void @llvm.dbg.declare(metadata ptr %cls, metadata !5565, metadata !DIExpression()), !dbg !5570
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !5571
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5566, metadata !DIExpression()), !dbg !5572
  %call = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #18, !dbg !5573
  store ptr %call, ptr %cls, align 8, !dbg !5574
  %0 = load ptr, ptr %cls, align 8, !dbg !5575
  %tobool = icmp ne ptr %0, null, !dbg !5575
  br i1 %tobool, label %if.end, label %if.then, !dbg !5577

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval1, align 4, !dbg !5578
  br label %error, !dbg !5580

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5581
  %2 = load ptr, ptr %cls, align 8, !dbg !5582
  %name2 = getelementptr inbounds %struct.class, ptr %2, i32 0, i32 0, !dbg !5583
  store ptr %1, ptr %name2, align 8, !dbg !5584
  %3 = load ptr, ptr %cls, align 8, !dbg !5585
  %class_release = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 5, !dbg !5586
  store ptr @class_create_release, ptr %class_release, align 8, !dbg !5587
  %4 = load ptr, ptr %cls, align 8, !dbg !5588
  %call3 = call i32 @class_register(ptr noundef %4) #17, !dbg !5589
  store i32 %call3, ptr %retval1, align 4, !dbg !5590
  %5 = load i32, ptr %retval1, align 4, !dbg !5591
  %tobool4 = icmp ne i32 %5, 0, !dbg !5591
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5593

if.then5:                                         ; preds = %if.end
  br label %error, !dbg !5594

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %cls, align 8, !dbg !5595
  store ptr %6, ptr %retval, align 8, !dbg !5596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5596

error:                                            ; preds = %if.then5, %if.then
  call void @llvm.dbg.label(metadata !5567), !dbg !5597
  %7 = load ptr, ptr %cls, align 8, !dbg !5598
  call void @kfree(ptr noundef %7) #17, !dbg !5599
  %8 = load i32, ptr %retval1, align 4, !dbg !5600
  %conv = sext i32 %8 to i64, !dbg !5600
  %call7 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !5601
  store ptr %call7, ptr %retval, align 8, !dbg !5602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5602

cleanup:                                          ; preds = %error, %if.end6
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 8, ptr %cls) #16, !dbg !5603
  %9 = load ptr, ptr %retval, align 8, !dbg !5603
  ret ptr %9, !dbg !5603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @class_create_release(ptr noundef %cls) #0 align 16 !dbg !5604 {
entry:
  %cls.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !5606, metadata !DIExpression()), !dbg !5607
  store i32 0, ptr %tmp, align 4, !dbg !5608
  %0 = load i32, ptr %tmp, align 4, !dbg !5611
  %1 = load ptr, ptr %cls.addr, align 8, !dbg !5612
  call void @kfree(ptr noundef %1) #17, !dbg !5613
  ret void, !dbg !5614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !5615 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  %0 = load i64, ptr %error.addr, align 8, !dbg !5622
  %1 = inttoptr i64 %0 to ptr, !dbg !5623
  ret ptr %1, !dbg !5624
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_destroy(ptr noundef %cls) #0 align 16 !dbg !5625 {
entry:
  %cls.addr = alloca ptr, align 8
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !5627, metadata !DIExpression()), !dbg !5628
  %0 = load ptr, ptr %cls.addr, align 8, !dbg !5629
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #17, !dbg !5631
  br i1 %call, label %if.then, label %if.end, !dbg !5632

if.then:                                          ; preds = %entry
  br label %return, !dbg !5633

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cls.addr, align 8, !dbg !5634
  call void @class_unregister(ptr noundef %1) #17, !dbg !5635
  br label %return, !dbg !5636

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5636
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !5637 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5643
  %tobool = icmp ne ptr %0, null, !dbg !5643
  %lnot = xor i1 %tobool, true, !dbg !5643
  %lnot1 = xor i1 %lnot, true, !dbg !5643
  %lnot2 = xor i1 %lnot1, true, !dbg !5643
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5643
  %conv = sext i32 %lnot.ext to i64, !dbg !5643
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5643
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5643
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5644

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5645
  %2 = ptrtoint ptr %1 to i64, !dbg !5645
  %3 = inttoptr i64 %2 to ptr, !dbg !5645
  %4 = ptrtoint ptr %3 to i64, !dbg !5645
  %cmp = icmp uge i64 %4, -4095, !dbg !5645
  %lnot5 = xor i1 %cmp, true, !dbg !5645
  %lnot7 = xor i1 %lnot5, true, !dbg !5645
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5645
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5645
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5645
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !5644
  br label %lor.end, !dbg !5644

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !5646
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_dev_iter_init(ptr noundef %iter, ptr noundef %class, ptr noundef %start, ptr noundef %type) #0 align 16 !dbg !5647 {
entry:
  %iter.addr = alloca ptr, align 8
  %class.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %start_knode = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5661, metadata !DIExpression()), !dbg !5667
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !5662, metadata !DIExpression()), !dbg !5668
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5663, metadata !DIExpression()), !dbg !5669
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5664, metadata !DIExpression()), !dbg !5670
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5671
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5665, metadata !DIExpression()), !dbg !5672
  %0 = load ptr, ptr %class.addr, align 8, !dbg !5673
  %call = call ptr @class_to_subsys(ptr noundef %0) #17, !dbg !5674
  store ptr %call, ptr %sp, align 8, !dbg !5672
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_knode) #16, !dbg !5675
  call void @llvm.dbg.declare(metadata ptr %start_knode, metadata !5666, metadata !DIExpression()), !dbg !5676
  store ptr null, ptr %start_knode, align 8, !dbg !5676
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !5677
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 32, i1 false), !dbg !5678
  %2 = load ptr, ptr %sp, align 8, !dbg !5679
  %tobool = icmp ne ptr %2, null, !dbg !5679
  br i1 %tobool, label %if.end, label %if.then, !dbg !5681

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5682

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5685

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5685

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %class.addr, align 8, !dbg !5682
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef @__func__.class_dev_iter_init, ptr noundef %3) #19, !dbg !5682
  store i32 %call1, ptr %tmp, align 4, !dbg !5685
  %4 = load i32, ptr %tmp, align 4, !dbg !5682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5687

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %start.addr, align 8, !dbg !5688
  %tobool2 = icmp ne ptr %5, null, !dbg !5688
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5690

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %start.addr, align 8, !dbg !5691
  %p = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !5692
  %7 = load ptr, ptr %p, align 8, !dbg !5692
  %knode_class = getelementptr inbounds %struct.device_private, ptr %7, i32 0, i32 4, !dbg !5693
  store ptr %knode_class, ptr %start_knode, align 8, !dbg !5694
  br label %if.end4, !dbg !5695

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %sp, align 8, !dbg !5696
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %8, i32 0, i32 5, !dbg !5697
  %9 = load ptr, ptr %iter.addr, align 8, !dbg !5698
  %ki = getelementptr inbounds %struct.class_dev_iter, ptr %9, i32 0, i32 0, !dbg !5699
  %10 = load ptr, ptr %start_knode, align 8, !dbg !5700
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef %ki, ptr noundef %10) #17, !dbg !5701
  %11 = load ptr, ptr %type.addr, align 8, !dbg !5702
  %12 = load ptr, ptr %iter.addr, align 8, !dbg !5703
  %type5 = getelementptr inbounds %struct.class_dev_iter, ptr %12, i32 0, i32 1, !dbg !5704
  store ptr %11, ptr %type5, align 8, !dbg !5705
  %13 = load ptr, ptr %sp, align 8, !dbg !5706
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !5707
  %sp6 = getelementptr inbounds %struct.class_dev_iter, ptr %14, i32 0, i32 2, !dbg !5708
  store ptr %13, ptr %sp6, align 8, !dbg !5709
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5710
  br label %cleanup, !dbg !5710

cleanup:                                          ; preds = %if.end4, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_knode) #16, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !5710
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5710

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5711 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5715 dso_local void @klist_iter_init_node(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @class_dev_iter_next(ptr noundef %iter) #0 align 16 !dbg !5719 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %knode = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5723, metadata !DIExpression()), !dbg !5726
  call void @llvm.lifetime.start.p0(i64 8, ptr %knode) #16, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %knode, metadata !5724, metadata !DIExpression()), !dbg !5728
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5725, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !5731
  %sp = getelementptr inbounds %struct.class_dev_iter, ptr %0, i32 0, i32 2, !dbg !5733
  %1 = load ptr, ptr %sp, align 8, !dbg !5733
  %tobool = icmp ne ptr %1, null, !dbg !5731
  br i1 %tobool, label %if.end, label %if.then, !dbg !5734

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5735

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5736

while.cond:                                       ; preds = %if.end9, %if.end
  br label %while.body, !dbg !5736

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !5737
  %ki = getelementptr inbounds %struct.class_dev_iter, ptr %2, i32 0, i32 0, !dbg !5739
  %call = call ptr @klist_next(ptr noundef %ki) #17, !dbg !5740
  store ptr %call, ptr %knode, align 8, !dbg !5741
  %3 = load ptr, ptr %knode, align 8, !dbg !5742
  %tobool1 = icmp ne ptr %3, null, !dbg !5742
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5744

if.then2:                                         ; preds = %while.body
  store ptr null, ptr %retval, align 8, !dbg !5745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5745

if.end3:                                          ; preds = %while.body
  %4 = load ptr, ptr %knode, align 8, !dbg !5746
  %call4 = call ptr @klist_class_to_dev(ptr noundef %4) #17, !dbg !5747
  store ptr %call4, ptr %dev, align 8, !dbg !5748
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !5749
  %type = getelementptr inbounds %struct.class_dev_iter, ptr %5, i32 0, i32 1, !dbg !5751
  %6 = load ptr, ptr %type, align 8, !dbg !5751
  %tobool5 = icmp ne ptr %6, null, !dbg !5749
  br i1 %tobool5, label %lor.lhs.false, label %if.then8, !dbg !5752

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !5753
  %type6 = getelementptr inbounds %struct.class_dev_iter, ptr %7, i32 0, i32 1, !dbg !5754
  %8 = load ptr, ptr %type6, align 8, !dbg !5754
  %9 = load ptr, ptr %dev, align 8, !dbg !5755
  %type7 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4, !dbg !5756
  %10 = load ptr, ptr %type7, align 8, !dbg !5756
  %cmp = icmp eq ptr %8, %10, !dbg !5757
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5758

if.then8:                                         ; preds = %lor.lhs.false, %if.end3
  %11 = load ptr, ptr %dev, align 8, !dbg !5759
  store ptr %11, ptr %retval, align 8, !dbg !5760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5760

if.end9:                                          ; preds = %lor.lhs.false
  br label %while.cond, !dbg !5736, !llvm.loop !5761

cleanup:                                          ; preds = %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 8, ptr %knode) #16, !dbg !5763
  %12 = load ptr, ptr %retval, align 8, !dbg !5763
  ret ptr %12, !dbg !5763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5764 dso_local ptr @klist_next(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @klist_class_to_dev(ptr noundef %n) #0 align 16 !dbg !5767 {
entry:
  %n.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5771, metadata !DIExpression()), !dbg !5775
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5776
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5772, metadata !DIExpression()), !dbg !5777
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5778
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5773, metadata !DIExpression()), !dbg !5778
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5778
  store ptr %0, ptr %__mptr, align 8, !dbg !5778
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5778
  %add.ptr = getelementptr i8, ptr %1, i64 -136, !dbg !5778
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5778
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5779
  %2 = load ptr, ptr %tmp, align 8, !dbg !5778
  store ptr %2, ptr %p, align 8, !dbg !5777
  %3 = load ptr, ptr %p, align 8, !dbg !5780
  %device = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 8, !dbg !5781
  %4 = load ptr, ptr %device, align 8, !dbg !5781
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5782
  ret ptr %4, !dbg !5783
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_dev_iter_exit(ptr noundef %iter) #0 align 16 !dbg !5784 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !5790
  %ki = getelementptr inbounds %struct.class_dev_iter, ptr %0, i32 0, i32 0, !dbg !5791
  call void @klist_iter_exit(ptr noundef %ki) #17, !dbg !5792
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !5793
  %sp = getelementptr inbounds %struct.class_dev_iter, ptr %1, i32 0, i32 2, !dbg !5794
  %2 = load ptr, ptr %sp, align 8, !dbg !5794
  call void @subsys_put(ptr noundef %2) #17, !dbg !5795
  ret void, !dbg !5796
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5797 dso_local void @klist_iter_exit(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @class_for_each_device(ptr noundef %class, ptr noundef %start, ptr noundef %data, ptr noundef %fn) #0 align 16 !dbg !5800 {
entry:
  %retval = alloca i32, align 4
  %class.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !5807, metadata !DIExpression()), !dbg !5823
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5808, metadata !DIExpression()), !dbg !5824
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5809, metadata !DIExpression()), !dbg !5825
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !5810, metadata !DIExpression()), !dbg !5826
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5811, metadata !DIExpression()), !dbg !5828
  %0 = load ptr, ptr %class.addr, align 8, !dbg !5829
  %call = call ptr @class_to_subsys(ptr noundef %0) #17, !dbg !5830
  store ptr %call, ptr %sp, align 8, !dbg !5828
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #16, !dbg !5831
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5812, metadata !DIExpression()), !dbg !5832
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5833
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5813, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5814, metadata !DIExpression()), !dbg !5836
  store i32 0, ptr %error, align 4, !dbg !5836
  %1 = load ptr, ptr %class.addr, align 8, !dbg !5837
  %tobool = icmp ne ptr %1, null, !dbg !5837
  br i1 %tobool, label %if.end, label %if.then, !dbg !5839

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5840

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !5841
  %tobool1 = icmp ne ptr %2, null, !dbg !5841
  br i1 %tobool1, label %if.end33, label %if.then2, !dbg !5842

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5815, metadata !DIExpression()), !dbg !5843
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5843
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5844
  %tobool3 = icmp ne i32 %3, 0, !dbg !5844
  %lnot = xor i1 %tobool3, true, !dbg !5844
  %lnot4 = xor i1 %lnot, true, !dbg !5844
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5844
  %conv = sext i32 %lnot.ext to i64, !dbg !5844
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5844
  %tobool5 = icmp ne i64 %expval, 0, !dbg !5844
  br i1 %tobool5, label %if.then6, label %if.end25, !dbg !5843

if.then6:                                         ; preds = %if.then2
  br label %do.body, !dbg !5844

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !5845

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5846

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5846

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %class.addr, align 8, !dbg !5845
  %name = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 0, !dbg !5845
  %5 = load ptr, ptr %name, align 8, !dbg !5845
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef @__func__.class_for_each_device, ptr noundef %5) #17, !dbg !5845
  br label %do.body8, !dbg !5845

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5848
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5819, metadata !DIExpression()), !dbg !5848
  store i32 2313, ptr %__flags, align 4, !dbg !5848
  br label %do.body9, !dbg !5848

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !5849

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5849

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5848

do.body12:                                        ; preds = %do.end11
  %6 = load i32, ptr %__flags, align 4, !dbg !5851
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 407, i32 %6, i64 12) #16, !dbg !5851, !srcloc !5853
  br label %do.cond13, !dbg !5851

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5851

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5848

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !5854

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5854

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5845
  br label %do.cond18, !dbg !5848

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5848

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5845

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !5856

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5856

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !5845

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5845

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !5845

if.end25:                                         ; preds = %do.end24, %if.then2
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5843
  %tobool26 = icmp ne i32 %7, 0, !dbg !5843
  %lnot27 = xor i1 %tobool26, true, !dbg !5843
  %lnot29 = xor i1 %lnot27, true, !dbg !5843
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5843
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !5843
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5843
  store i64 %expval32, ptr %tmp, align 8, !dbg !5844
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5858
  %8 = load i64, ptr %tmp, align 8, !dbg !5843
  store i32 -22, ptr %retval, align 4, !dbg !5859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5859

if.end33:                                         ; preds = %if.end
  %9 = load ptr, ptr %class.addr, align 8, !dbg !5860
  %10 = load ptr, ptr %start.addr, align 8, !dbg !5861
  call void @class_dev_iter_init(ptr noundef %iter, ptr noundef %9, ptr noundef %10, ptr noundef null) #17, !dbg !5862
  br label %while.cond, !dbg !5863

while.cond:                                       ; preds = %if.end39, %if.end33
  %call34 = call ptr @class_dev_iter_next(ptr noundef %iter) #17, !dbg !5864
  store ptr %call34, ptr %dev, align 8, !dbg !5865
  %tobool35 = icmp ne ptr %call34, null, !dbg !5863
  br i1 %tobool35, label %while.body, label %while.end, !dbg !5863

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %fn.addr, align 8, !dbg !5866
  %12 = load ptr, ptr %dev, align 8, !dbg !5868
  %13 = load ptr, ptr %data.addr, align 8, !dbg !5869
  %call36 = call i32 %11(ptr noundef %12, ptr noundef %13) #17, !dbg !5866
  store i32 %call36, ptr %error, align 4, !dbg !5870
  %14 = load i32, ptr %error, align 4, !dbg !5871
  %tobool37 = icmp ne i32 %14, 0, !dbg !5871
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5873

if.then38:                                        ; preds = %while.body
  br label %while.end, !dbg !5874

if.end39:                                         ; preds = %while.body
  br label %while.cond, !dbg !5863, !llvm.loop !5875

while.end:                                        ; preds = %if.then38, %while.cond
  call void @class_dev_iter_exit(ptr noundef %iter) #17, !dbg !5877
  %15 = load ptr, ptr %sp, align 8, !dbg !5878
  call void @subsys_put(ptr noundef %15) #17, !dbg !5879
  %16 = load i32, ptr %error, align 4, !dbg !5880
  store i32 %16, ptr %retval, align 4, !dbg !5881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5881

cleanup:                                          ; preds = %while.end, %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #16, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !5882
  %17 = load i32, ptr %retval, align 4, !dbg !5882
  ret i32 %17, !dbg !5882
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5883 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @class_find_device(ptr noundef %class, ptr noundef %start, ptr noundef %data, ptr noundef %match) #0 align 16 !dbg !5886 {
entry:
  %retval = alloca ptr, align 8
  %class.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !5893, metadata !DIExpression()), !dbg !5908
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5894, metadata !DIExpression()), !dbg !5909
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5895, metadata !DIExpression()), !dbg !5910
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !5896, metadata !DIExpression()), !dbg !5911
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5912
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5897, metadata !DIExpression()), !dbg !5913
  %0 = load ptr, ptr %class.addr, align 8, !dbg !5914
  %call = call ptr @class_to_subsys(ptr noundef %0) #17, !dbg !5915
  store ptr %call, ptr %sp, align 8, !dbg !5913
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #16, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5898, metadata !DIExpression()), !dbg !5917
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5899, metadata !DIExpression()), !dbg !5919
  %1 = load ptr, ptr %class.addr, align 8, !dbg !5920
  %tobool = icmp ne ptr %1, null, !dbg !5920
  br i1 %tobool, label %if.end, label %if.then, !dbg !5922

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5923

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !5924
  %tobool1 = icmp ne ptr %2, null, !dbg !5924
  br i1 %tobool1, label %if.end33, label %if.then2, !dbg !5925

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5900, metadata !DIExpression()), !dbg !5926
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5926
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5927
  %tobool3 = icmp ne i32 %3, 0, !dbg !5927
  %lnot = xor i1 %tobool3, true, !dbg !5927
  %lnot4 = xor i1 %lnot, true, !dbg !5927
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5927
  %conv = sext i32 %lnot.ext to i64, !dbg !5927
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5927
  %tobool5 = icmp ne i64 %expval, 0, !dbg !5927
  br i1 %tobool5, label %if.then6, label %if.end25, !dbg !5926

if.then6:                                         ; preds = %if.then2
  br label %do.body, !dbg !5927

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !5928

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5929

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5929

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %class.addr, align 8, !dbg !5928
  %name = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 0, !dbg !5928
  %5 = load ptr, ptr %name, align 8, !dbg !5928
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef @__func__.class_find_device, ptr noundef %5) #17, !dbg !5928
  br label %do.body8, !dbg !5928

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5931
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5904, metadata !DIExpression()), !dbg !5931
  store i32 2313, ptr %__flags, align 4, !dbg !5931
  br label %do.body9, !dbg !5931

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !5932

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5932

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5931

do.body12:                                        ; preds = %do.end11
  %6 = load i32, ptr %__flags, align 4, !dbg !5934
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 456, i32 %6, i64 12) #16, !dbg !5934, !srcloc !5936
  br label %do.cond13, !dbg !5934

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5934

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5931

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !5937

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5937

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5928
  br label %do.cond18, !dbg !5931

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5931

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5928

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !5939

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5939

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !5928

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5928

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !5928

if.end25:                                         ; preds = %do.end24, %if.then2
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5926
  %tobool26 = icmp ne i32 %7, 0, !dbg !5926
  %lnot27 = xor i1 %tobool26, true, !dbg !5926
  %lnot29 = xor i1 %lnot27, true, !dbg !5926
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5926
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !5926
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5926
  store i64 %expval32, ptr %tmp, align 8, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5941
  %8 = load i64, ptr %tmp, align 8, !dbg !5926
  store ptr null, ptr %retval, align 8, !dbg !5942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5942

if.end33:                                         ; preds = %if.end
  %9 = load ptr, ptr %class.addr, align 8, !dbg !5943
  %10 = load ptr, ptr %start.addr, align 8, !dbg !5944
  call void @class_dev_iter_init(ptr noundef %iter, ptr noundef %9, ptr noundef %10, ptr noundef null) #17, !dbg !5945
  br label %while.cond, !dbg !5946

while.cond:                                       ; preds = %if.end40, %if.end33
  %call34 = call ptr @class_dev_iter_next(ptr noundef %iter) #17, !dbg !5947
  store ptr %call34, ptr %dev, align 8, !dbg !5948
  %tobool35 = icmp ne ptr %call34, null, !dbg !5946
  br i1 %tobool35, label %while.body, label %while.end, !dbg !5946

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %match.addr, align 8, !dbg !5949
  %12 = load ptr, ptr %dev, align 8, !dbg !5952
  %13 = load ptr, ptr %data.addr, align 8, !dbg !5953
  %call36 = call i32 %11(ptr noundef %12, ptr noundef %13) #17, !dbg !5949
  %tobool37 = icmp ne i32 %call36, 0, !dbg !5949
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5954

if.then38:                                        ; preds = %while.body
  %14 = load ptr, ptr %dev, align 8, !dbg !5955
  %call39 = call ptr @get_device(ptr noundef %14) #17, !dbg !5957
  br label %while.end, !dbg !5958

if.end40:                                         ; preds = %while.body
  br label %while.cond, !dbg !5946, !llvm.loop !5959

while.end:                                        ; preds = %if.then38, %while.cond
  call void @class_dev_iter_exit(ptr noundef %iter) #17, !dbg !5961
  %15 = load ptr, ptr %sp, align 8, !dbg !5962
  call void @subsys_put(ptr noundef %15) #17, !dbg !5963
  %16 = load ptr, ptr %dev, align 8, !dbg !5964
  store ptr %16, ptr %retval, align 8, !dbg !5965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5965

cleanup:                                          ; preds = %while.end, %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #16, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !5966
  %17 = load ptr, ptr %retval, align 8, !dbg !5966
  ret ptr %17, !dbg !5966
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5967 dso_local ptr @get_device(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @class_interface_register(ptr noundef %class_intf) #0 align 16 !dbg !5970 {
entry:
  %retval = alloca i32, align 4
  %class_intf.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %class_intf, ptr %class_intf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class_intf.addr, metadata !5981, metadata !DIExpression()), !dbg !5986
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !5982, metadata !DIExpression()), !dbg !5988
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !5989
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5983, metadata !DIExpression()), !dbg !5990
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #16, !dbg !5991
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5984, metadata !DIExpression()), !dbg !5992
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5993
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5985, metadata !DIExpression()), !dbg !5994
  %0 = load ptr, ptr %class_intf.addr, align 8, !dbg !5995
  %tobool = icmp ne ptr %0, null, !dbg !5995
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5997

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %class_intf.addr, align 8, !dbg !5998
  %class = getelementptr inbounds %struct.class_interface, ptr %1, i32 0, i32 1, !dbg !5999
  %2 = load ptr, ptr %class, align 8, !dbg !5999
  %tobool1 = icmp ne ptr %2, null, !dbg !5998
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6000

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !6001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6001

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %class_intf.addr, align 8, !dbg !6002
  %class2 = getelementptr inbounds %struct.class_interface, ptr %3, i32 0, i32 1, !dbg !6003
  %4 = load ptr, ptr %class2, align 8, !dbg !6003
  store ptr %4, ptr %parent, align 8, !dbg !6004
  %5 = load ptr, ptr %parent, align 8, !dbg !6005
  %call = call ptr @class_to_subsys(ptr noundef %5) #17, !dbg !6006
  store ptr %call, ptr %sp, align 8, !dbg !6007
  %6 = load ptr, ptr %sp, align 8, !dbg !6008
  %tobool3 = icmp ne ptr %6, null, !dbg !6008
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6010

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6011

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %sp, align 8, !dbg !6012
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %7, i32 0, i32 3, !dbg !6013
  call void @mutex_lock(ptr noundef %mutex) #17, !dbg !6014
  %8 = load ptr, ptr %class_intf.addr, align 8, !dbg !6015
  %node = getelementptr inbounds %struct.class_interface, ptr %8, i32 0, i32 0, !dbg !6016
  %9 = load ptr, ptr %sp, align 8, !dbg !6017
  %interfaces = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 2, !dbg !6018
  call void @list_add_tail(ptr noundef %node, ptr noundef %interfaces) #17, !dbg !6019
  %10 = load ptr, ptr %class_intf.addr, align 8, !dbg !6020
  %add_dev = getelementptr inbounds %struct.class_interface, ptr %10, i32 0, i32 2, !dbg !6022
  %11 = load ptr, ptr %add_dev, align 8, !dbg !6022
  %tobool6 = icmp ne ptr %11, null, !dbg !6020
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !6023

if.then7:                                         ; preds = %if.end5
  %12 = load ptr, ptr %parent, align 8, !dbg !6024
  call void @class_dev_iter_init(ptr noundef %iter, ptr noundef %12, ptr noundef null, ptr noundef null) #17, !dbg !6026
  br label %while.cond, !dbg !6027

while.cond:                                       ; preds = %while.body, %if.then7
  %call8 = call ptr @class_dev_iter_next(ptr noundef %iter) #17, !dbg !6028
  store ptr %call8, ptr %dev, align 8, !dbg !6029
  %tobool9 = icmp ne ptr %call8, null, !dbg !6027
  br i1 %tobool9, label %while.body, label %while.end, !dbg !6027

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %class_intf.addr, align 8, !dbg !6030
  %add_dev10 = getelementptr inbounds %struct.class_interface, ptr %13, i32 0, i32 2, !dbg !6031
  %14 = load ptr, ptr %add_dev10, align 8, !dbg !6031
  %15 = load ptr, ptr %dev, align 8, !dbg !6032
  %call11 = call i32 %14(ptr noundef %15) #17, !dbg !6030
  br label %while.cond, !dbg !6027, !llvm.loop !6033

while.end:                                        ; preds = %while.cond
  call void @class_dev_iter_exit(ptr noundef %iter) #17, !dbg !6035
  br label %if.end12, !dbg !6036

if.end12:                                         ; preds = %while.end, %if.end5
  %16 = load ptr, ptr %sp, align 8, !dbg !6037
  %mutex13 = getelementptr inbounds %struct.subsys_private, ptr %16, i32 0, i32 3, !dbg !6038
  call void @mutex_unlock(ptr noundef %mutex13) #17, !dbg !6039
  store i32 0, ptr %retval, align 4, !dbg !6040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6040

cleanup:                                          ; preds = %if.end12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !6041
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #16, !dbg !6041
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !6041
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !6041
  %17 = load i32, ptr %retval, align 4, !dbg !6041
  ret i32 %17, !dbg !6041
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6042 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6045 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6049, metadata !DIExpression()), !dbg !6051
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6050, metadata !DIExpression()), !dbg !6052
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6053
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6054
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6055
  %2 = load ptr, ptr %prev, align 8, !dbg !6055
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6056
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !6057
  ret void, !dbg !6058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6059 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_interface_unregister(ptr noundef %class_intf) #0 align 16 !dbg !6060 {
entry:
  %class_intf.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %class_intf, ptr %class_intf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class_intf.addr, metadata !6064, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !6065, metadata !DIExpression()), !dbg !6071
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6066, metadata !DIExpression()), !dbg !6073
  %0 = load ptr, ptr %class_intf.addr, align 8, !dbg !6074
  %class = getelementptr inbounds %struct.class_interface, ptr %0, i32 0, i32 1, !dbg !6075
  %1 = load ptr, ptr %class, align 8, !dbg !6075
  store ptr %1, ptr %parent, align 8, !dbg !6073
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #16, !dbg !6076
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !6067, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6068, metadata !DIExpression()), !dbg !6079
  %2 = load ptr, ptr %parent, align 8, !dbg !6080
  %tobool = icmp ne ptr %2, null, !dbg !6080
  br i1 %tobool, label %if.end, label %if.then, !dbg !6082

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %parent, align 8, !dbg !6084
  %call = call ptr @class_to_subsys(ptr noundef %3) #17, !dbg !6085
  store ptr %call, ptr %sp, align 8, !dbg !6086
  %4 = load ptr, ptr %sp, align 8, !dbg !6087
  %tobool1 = icmp ne ptr %4, null, !dbg !6087
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6089

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %sp, align 8, !dbg !6091
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %5, i32 0, i32 3, !dbg !6092
  call void @mutex_lock(ptr noundef %mutex) #17, !dbg !6093
  %6 = load ptr, ptr %class_intf.addr, align 8, !dbg !6094
  %node = getelementptr inbounds %struct.class_interface, ptr %6, i32 0, i32 0, !dbg !6095
  call void @list_del_init(ptr noundef %node) #17, !dbg !6096
  %7 = load ptr, ptr %class_intf.addr, align 8, !dbg !6097
  %remove_dev = getelementptr inbounds %struct.class_interface, ptr %7, i32 0, i32 3, !dbg !6099
  %8 = load ptr, ptr %remove_dev, align 8, !dbg !6099
  %tobool4 = icmp ne ptr %8, null, !dbg !6097
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !6100

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %parent, align 8, !dbg !6101
  call void @class_dev_iter_init(ptr noundef %iter, ptr noundef %9, ptr noundef null, ptr noundef null) #17, !dbg !6103
  br label %while.cond, !dbg !6104

while.cond:                                       ; preds = %while.body, %if.then5
  %call6 = call ptr @class_dev_iter_next(ptr noundef %iter) #17, !dbg !6105
  store ptr %call6, ptr %dev, align 8, !dbg !6106
  %tobool7 = icmp ne ptr %call6, null, !dbg !6104
  br i1 %tobool7, label %while.body, label %while.end, !dbg !6104

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %class_intf.addr, align 8, !dbg !6107
  %remove_dev8 = getelementptr inbounds %struct.class_interface, ptr %10, i32 0, i32 3, !dbg !6108
  %11 = load ptr, ptr %remove_dev8, align 8, !dbg !6108
  %12 = load ptr, ptr %dev, align 8, !dbg !6109
  call void %11(ptr noundef %12) #17, !dbg !6107
  br label %while.cond, !dbg !6104, !llvm.loop !6110

while.end:                                        ; preds = %while.cond
  call void @class_dev_iter_exit(ptr noundef %iter) #17, !dbg !6112
  br label %if.end9, !dbg !6113

if.end9:                                          ; preds = %while.end, %if.end3
  %13 = load ptr, ptr %sp, align 8, !dbg !6114
  %mutex10 = getelementptr inbounds %struct.subsys_private, ptr %13, i32 0, i32 3, !dbg !6115
  call void @mutex_unlock(ptr noundef %mutex10) #17, !dbg !6116
  %14 = load ptr, ptr %sp, align 8, !dbg !6117
  call void @subsys_put(ptr noundef %14) #17, !dbg !6118
  %15 = load ptr, ptr %sp, align 8, !dbg !6119
  call void @subsys_put(ptr noundef %15) #17, !dbg !6120
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6121
  br label %cleanup, !dbg !6121

cleanup:                                          ; preds = %if.end9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !6121
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #16, !dbg !6121
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !6121
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !6121
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6121

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #4 align 16 !dbg !6122 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6124, metadata !DIExpression()), !dbg !6125
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6126
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6127
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6128
  call void @INIT_LIST_HEAD(ptr noundef %1) #17, !dbg !6129
  ret void, !dbg !6130
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @show_class_attr_string(ptr noundef %class, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6131 {
entry:
  %class.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cs = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !6133, metadata !DIExpression()), !dbg !6139
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6134, metadata !DIExpression()), !dbg !6140
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6135, metadata !DIExpression()), !dbg !6141
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs) #16, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %cs, metadata !6136, metadata !DIExpression()), !dbg !6143
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6137, metadata !DIExpression()), !dbg !6144
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6144
  store ptr %0, ptr %__mptr, align 8, !dbg !6144
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6144
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6144
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6145
  %2 = load ptr, ptr %tmp, align 8, !dbg !6144
  store ptr %2, ptr %cs, align 8, !dbg !6146
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6147
  %4 = load ptr, ptr %cs, align 8, !dbg !6148
  %str = getelementptr inbounds %struct.class_attribute_string, ptr %4, i32 0, i32 1, !dbg !6149
  %5 = load ptr, ptr %str, align 8, !dbg !6149
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.5, ptr noundef %5) #17, !dbg !6150
  %conv = sext i32 %call to i64, !dbg !6150
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs) #16, !dbg !6151
  ret i64 %conv, !dbg !6152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6153 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @class_compat_register(ptr noundef %name) #0 align 16 !dbg !6156 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cls = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6164, metadata !DIExpression()), !dbg !6166
  call void @llvm.lifetime.start.p0(i64 8, ptr %cls) #16, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %cls, metadata !6165, metadata !DIExpression()), !dbg !6168
  %call = call noalias ptr @kmalloc(i64 noundef 8, i32 noundef 3264) #18, !dbg !6169
  store ptr %call, ptr %cls, align 8, !dbg !6170
  %0 = load ptr, ptr %cls, align 8, !dbg !6171
  %tobool = icmp ne ptr %0, null, !dbg !6171
  br i1 %tobool, label %if.end, label %if.then, !dbg !6173

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6174

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6175
  %2 = load ptr, ptr @class_kset, align 8, !dbg !6176
  %kobj = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 2, !dbg !6177
  %call1 = call ptr @kobject_create_and_add(ptr noundef %1, ptr noundef %kobj) #17, !dbg !6178
  %3 = load ptr, ptr %cls, align 8, !dbg !6179
  %kobj2 = getelementptr inbounds %struct.class_compat, ptr %3, i32 0, i32 0, !dbg !6180
  store ptr %call1, ptr %kobj2, align 8, !dbg !6181
  %4 = load ptr, ptr %cls, align 8, !dbg !6182
  %kobj3 = getelementptr inbounds %struct.class_compat, ptr %4, i32 0, i32 0, !dbg !6184
  %5 = load ptr, ptr %kobj3, align 8, !dbg !6184
  %tobool4 = icmp ne ptr %5, null, !dbg !6182
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6185

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %cls, align 8, !dbg !6186
  call void @kfree(ptr noundef %6) #17, !dbg !6188
  store ptr null, ptr %retval, align 8, !dbg !6189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6189

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %cls, align 8, !dbg !6190
  store ptr %7, ptr %retval, align 8, !dbg !6191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6191

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cls) #16, !dbg !6192
  %8 = load ptr, ptr %retval, align 8, !dbg !6192
  ret ptr %8, !dbg !6192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6193 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6195, metadata !DIExpression()), !dbg !6200
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6196, metadata !DIExpression()), !dbg !6201
  %0 = load i64, ptr %size.addr, align 8, !dbg !6202
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6203
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6204

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6205
  %tobool = icmp ne i64 %2, 0, !dbg !6205
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6206

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6207
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6197, metadata !DIExpression()), !dbg !6208
  %3 = load i64, ptr %size.addr, align 8, !dbg !6209
  %cmp = icmp ugt i64 %3, 8192, !dbg !6211
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6212

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6213
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6214
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6215
  store ptr %call, ptr %retval, align 8, !dbg !6216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6216

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6217
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6217
  store i32 %call2, ptr %index, align 4, !dbg !6218
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6219
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6220
  %9 = ptrtoint ptr %8 to i64, !dbg !6220
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6221
  %idxprom = zext i32 %call3 to i64, !dbg !6222
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6222
  %10 = load i32, ptr %index, align 4, !dbg !6223
  %idxprom4 = zext i32 %10 to i64, !dbg !6222
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6222
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6222
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6224
  %13 = load i64, ptr %size.addr, align 8, !dbg !6225
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6226
  store ptr %call6, ptr %retval, align 8, !dbg !6227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6227

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6228
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6229
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6230
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6231
  store ptr %call8, ptr %retval, align 8, !dbg !6232
  br label %return, !dbg !6232

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6233
  ret ptr %16, !dbg !6233
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6234 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_compat_unregister(ptr noundef %cls) #0 align 16 !dbg !6237 {
entry:
  %cls.addr = alloca ptr, align 8
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !6241, metadata !DIExpression()), !dbg !6242
  %0 = load ptr, ptr %cls.addr, align 8, !dbg !6243
  %kobj = getelementptr inbounds %struct.class_compat, ptr %0, i32 0, i32 0, !dbg !6244
  %1 = load ptr, ptr %kobj, align 8, !dbg !6244
  call void @kobject_put(ptr noundef %1) #17, !dbg !6245
  %2 = load ptr, ptr %cls.addr, align 8, !dbg !6246
  call void @kfree(ptr noundef %2) #17, !dbg !6247
  ret void, !dbg !6248
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6249 dso_local void @kobject_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @class_compat_create_link(ptr noundef %cls, ptr noundef %dev, ptr noundef %device_link) #0 align 16 !dbg !6250 {
entry:
  %retval = alloca i32, align 4
  %cls.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %device_link.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !6254, metadata !DIExpression()), !dbg !6258
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6255, metadata !DIExpression()), !dbg !6259
  store ptr %device_link, ptr %device_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_link.addr, metadata !6256, metadata !DIExpression()), !dbg !6260
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6257, metadata !DIExpression()), !dbg !6262
  %0 = load ptr, ptr %cls.addr, align 8, !dbg !6263
  %kobj = getelementptr inbounds %struct.class_compat, ptr %0, i32 0, i32 0, !dbg !6264
  %1 = load ptr, ptr %kobj, align 8, !dbg !6264
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6265
  %kobj1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 0, !dbg !6266
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6267
  %call = call ptr @dev_name(ptr noundef %3) #17, !dbg !6268
  %call2 = call i32 @sysfs_create_link(ptr noundef %1, ptr noundef %kobj1, ptr noundef %call) #17, !dbg !6269
  store i32 %call2, ptr %error, align 4, !dbg !6270
  %4 = load i32, ptr %error, align 4, !dbg !6271
  %tobool = icmp ne i32 %4, 0, !dbg !6271
  br i1 %tobool, label %if.then, label %if.end, !dbg !6273

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %error, align 4, !dbg !6274
  store i32 %5, ptr %retval, align 4, !dbg !6275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6275

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %device_link.addr, align 8, !dbg !6276
  %tobool3 = icmp ne ptr %6, null, !dbg !6276
  br i1 %tobool3, label %if.then4, label %if.end13, !dbg !6278

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6279
  %kobj5 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 0, !dbg !6281
  %8 = load ptr, ptr %device_link.addr, align 8, !dbg !6282
  %kobj6 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 0, !dbg !6283
  %call7 = call i32 @sysfs_create_link(ptr noundef %kobj5, ptr noundef %kobj6, ptr noundef @.str.6) #17, !dbg !6284
  store i32 %call7, ptr %error, align 4, !dbg !6285
  %9 = load i32, ptr %error, align 4, !dbg !6286
  %tobool8 = icmp ne i32 %9, 0, !dbg !6286
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !6288

if.then9:                                         ; preds = %if.then4
  %10 = load ptr, ptr %cls.addr, align 8, !dbg !6289
  %kobj10 = getelementptr inbounds %struct.class_compat, ptr %10, i32 0, i32 0, !dbg !6290
  %11 = load ptr, ptr %kobj10, align 8, !dbg !6290
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !6291
  %call11 = call ptr @dev_name(ptr noundef %12) #17, !dbg !6292
  call void @sysfs_remove_link(ptr noundef %11, ptr noundef %call11) #17, !dbg !6293
  br label %if.end12, !dbg !6293

if.end12:                                         ; preds = %if.then9, %if.then4
  br label %if.end13, !dbg !6294

if.end13:                                         ; preds = %if.end12, %if.end
  %13 = load i32, ptr %error, align 4, !dbg !6295
  store i32 %13, ptr %retval, align 4, !dbg !6296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6296

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !6297
  %14 = load i32, ptr %retval, align 4, !dbg !6297
  ret i32 %14, !dbg !6297
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6298 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !6301 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6305, metadata !DIExpression()), !dbg !6306
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6307
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6309
  %1 = load ptr, ptr %init_name, align 8, !dbg !6309
  %tobool = icmp ne ptr %1, null, !dbg !6307
  br i1 %tobool, label %if.then, label %if.end, !dbg !6310

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6311
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6312
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6312
  store ptr %3, ptr %retval, align 8, !dbg !6313
  br label %return, !dbg !6313

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6314
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6315
  %call = call ptr @kobject_name(ptr noundef %kobj) #17, !dbg !6316
  store ptr %call, ptr %retval, align 8, !dbg !6317
  br label %return, !dbg !6317

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6318
  ret ptr %5, !dbg !6318
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6319 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @class_compat_remove_link(ptr noundef %cls, ptr noundef %dev, ptr noundef %device_link) #0 align 16 !dbg !6322 {
entry:
  %cls.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %device_link.addr = alloca ptr, align 8
  store ptr %cls, ptr %cls.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cls.addr, metadata !6326, metadata !DIExpression()), !dbg !6329
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6327, metadata !DIExpression()), !dbg !6330
  store ptr %device_link, ptr %device_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_link.addr, metadata !6328, metadata !DIExpression()), !dbg !6331
  %0 = load ptr, ptr %device_link.addr, align 8, !dbg !6332
  %tobool = icmp ne ptr %0, null, !dbg !6332
  br i1 %tobool, label %if.then, label %if.end, !dbg !6334

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6335
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !6336
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef @.str.6) #17, !dbg !6337
  br label %if.end, !dbg !6337

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cls.addr, align 8, !dbg !6338
  %kobj1 = getelementptr inbounds %struct.class_compat, ptr %2, i32 0, i32 0, !dbg !6339
  %3 = load ptr, ptr %kobj1, align 8, !dbg !6339
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6340
  %call = call ptr @dev_name(ptr noundef %4) #17, !dbg !6341
  call void @sysfs_remove_link(ptr noundef %3, ptr noundef %call) #17, !dbg !6342
  ret void, !dbg !6343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @class_is_registered(ptr noundef %class) #0 align 16 !dbg !6344 {
entry:
  %class.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %is_initialized = alloca i8, align 1
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !6348, metadata !DIExpression()), !dbg !6351
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #16, !dbg !6352
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !6349, metadata !DIExpression()), !dbg !6353
  %0 = load ptr, ptr %class.addr, align 8, !dbg !6354
  %call = call ptr @class_to_subsys(ptr noundef %0) #17, !dbg !6355
  store ptr %call, ptr %sp, align 8, !dbg !6353
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_initialized) #16, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %is_initialized, metadata !6350, metadata !DIExpression()), !dbg !6357
  store i8 0, ptr %is_initialized, align 1, !dbg !6357
  %1 = load ptr, ptr %sp, align 8, !dbg !6358
  %tobool = icmp ne ptr %1, null, !dbg !6358
  br i1 %tobool, label %if.then, label %if.end, !dbg !6360

if.then:                                          ; preds = %entry
  store i8 1, ptr %is_initialized, align 1, !dbg !6361
  %2 = load ptr, ptr %sp, align 8, !dbg !6363
  call void @subsys_put(ptr noundef %2) #17, !dbg !6364
  br label %if.end, !dbg !6365

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %is_initialized, align 1, !dbg !6366, !range !6367, !noundef !895
  %tobool1 = trunc i8 %3 to i1, !dbg !6366
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_initialized) #16, !dbg !6368
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #16, !dbg !6368
  ret i1 %tobool1, !dbg !6369
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @classes_init() #11 section ".init.text" align 16 !dbg !6370 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kset_create_and_add(ptr noundef @.str.7, ptr noundef null, ptr noundef null) #17, !dbg !6371
  store ptr %call, ptr @class_kset, align 8, !dbg !6372
  %0 = load ptr, ptr @class_kset, align 8, !dbg !6373
  %tobool = icmp ne ptr %0, null, !dbg !6373
  br i1 %tobool, label %if.end, label %if.then, !dbg !6375

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6377
  br label %return, !dbg !6377

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !6378
  ret i32 %1, !dbg !6378
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6379 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kset_get(ptr noundef %k) #4 align 16 !dbg !6387 {
entry:
  %k.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !6391, metadata !DIExpression()), !dbg !6392
  %0 = load ptr, ptr %k.addr, align 8, !dbg !6393
  %tobool = icmp ne ptr %0, null, !dbg !6393
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6393

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %k.addr, align 8, !dbg !6394
  %kobj = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, !dbg !6395
  %call = call ptr @kobject_get(ptr noundef %kobj) #17, !dbg !6396
  %call1 = call ptr @to_kset(ptr noundef %call) #17, !dbg !6397
  br label %cond.end, !dbg !6393

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6393

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ], !dbg !6393
  ret ptr %cond, !dbg !6398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_kset(ptr noundef %kobj) #4 align 16 !dbg !6399 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6403, metadata !DIExpression()), !dbg !6406
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6407
  %tobool = icmp ne ptr %0, null, !dbg !6407
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6407

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6408
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6404, metadata !DIExpression()), !dbg !6408
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !6408
  store ptr %1, ptr %__mptr, align 8, !dbg !6408
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6408
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !6408
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6408
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6409
  %3 = load ptr, ptr %tmp, align 8, !dbg !6408
  br label %cond.end, !dbg !6407

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6407

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !6407
  ret ptr %cond, !dbg !6410
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6411 dso_local ptr @kobject_get(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6414 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kset_put(ptr noundef %k) #4 align 16 !dbg !6415 {
entry:
  %k.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  %0 = load ptr, ptr %k.addr, align 8, !dbg !6419
  %kobj = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, !dbg !6420
  call void @kobject_put(ptr noundef %kobj) #17, !dbg !6421
  ret void, !dbg !6422
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6423 dso_local void @put_device(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @class_release(ptr noundef %kobj) #0 align 16 !dbg !6424 {
entry:
  %kobj.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %class = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6426, metadata !DIExpression()), !dbg !6431
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #16, !dbg !6432
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !6427, metadata !DIExpression()), !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6428, metadata !DIExpression()), !dbg !6434
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6434
  store ptr %0, ptr %__mptr, align 8, !dbg !6434
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6434
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !6434
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6434
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6435
  %2 = load ptr, ptr %tmp, align 8, !dbg !6434
  store ptr %2, ptr %cp, align 8, !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %class) #16, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %class, metadata !6430, metadata !DIExpression()), !dbg !6437
  %3 = load ptr, ptr %cp, align 8, !dbg !6438
  %class1 = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 12, !dbg !6439
  %4 = load ptr, ptr %class1, align 8, !dbg !6439
  store ptr %4, ptr %class, align 8, !dbg !6437
  store i32 0, ptr %tmp2, align 4, !dbg !6440
  %5 = load i32, ptr %tmp2, align 4, !dbg !6443
  %6 = load ptr, ptr %class, align 8, !dbg !6444
  %class_release = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 5, !dbg !6446
  %7 = load ptr, ptr %class_release, align 8, !dbg !6446
  %tobool = icmp ne ptr %7, null, !dbg !6444
  br i1 %tobool, label %if.then, label %if.else, !dbg !6447

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %class, align 8, !dbg !6448
  %class_release3 = getelementptr inbounds %struct.class, ptr %8, i32 0, i32 5, !dbg !6449
  %9 = load ptr, ptr %class_release3, align 8, !dbg !6449
  %10 = load ptr, ptr %class, align 8, !dbg !6450
  call void %9(ptr noundef %10) #17, !dbg !6448
  br label %if.end, !dbg !6448

if.else:                                          ; preds = %entry
  store i32 0, ptr %tmp4, align 4, !dbg !6451
  %11 = load i32, ptr %tmp4, align 4, !dbg !6454
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %cp, align 8, !dbg !6455
  %lock_key = getelementptr inbounds %struct.subsys_private, ptr %12, i32 0, i32 13, !dbg !6456
  call void @lockdep_unregister_key(ptr noundef %lock_key) #17, !dbg !6457
  %13 = load ptr, ptr %cp, align 8, !dbg !6458
  call void @kfree(ptr noundef %13) #17, !dbg !6459
  call void @llvm.lifetime.end.p0(i64 8, ptr %class) #16, !dbg !6460
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #16, !dbg !6460
  ret void, !dbg !6460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_child_ns_type(ptr noundef %kobj) #0 align 16 !dbg !6461 {
entry:
  %kobj.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %class = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6463, metadata !DIExpression()), !dbg !6468
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #16, !dbg !6469
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !6464, metadata !DIExpression()), !dbg !6470
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6471
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6465, metadata !DIExpression()), !dbg !6471
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6471
  store ptr %0, ptr %__mptr, align 8, !dbg !6471
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6471
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !6471
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6472
  %2 = load ptr, ptr %tmp, align 8, !dbg !6471
  store ptr %2, ptr %cp, align 8, !dbg !6470
  call void @llvm.lifetime.start.p0(i64 8, ptr %class) #16, !dbg !6473
  call void @llvm.dbg.declare(metadata ptr %class, metadata !6467, metadata !DIExpression()), !dbg !6474
  %3 = load ptr, ptr %cp, align 8, !dbg !6475
  %class1 = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 12, !dbg !6476
  %4 = load ptr, ptr %class1, align 8, !dbg !6476
  store ptr %4, ptr %class, align 8, !dbg !6474
  %5 = load ptr, ptr %class, align 8, !dbg !6477
  %ns_type = getelementptr inbounds %struct.class, ptr %5, i32 0, i32 8, !dbg !6478
  %6 = load ptr, ptr %ns_type, align 8, !dbg !6478
  call void @llvm.lifetime.end.p0(i64 8, ptr %class) #16, !dbg !6479
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #16, !dbg !6479
  ret ptr %6, !dbg !6480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @class_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6481 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %class_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6483, metadata !DIExpression()), !dbg !6493
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6484, metadata !DIExpression()), !dbg !6494
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6485, metadata !DIExpression()), !dbg !6495
  call void @llvm.lifetime.start.p0(i64 8, ptr %class_attr) #16, !dbg !6496
  call void @llvm.dbg.declare(metadata ptr %class_attr, metadata !6486, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6498
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6487, metadata !DIExpression()), !dbg !6498
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6498
  store ptr %0, ptr %__mptr, align 8, !dbg !6498
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6498
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6498
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6499
  %2 = load ptr, ptr %tmp, align 8, !dbg !6498
  store ptr %2, ptr %class_attr, align 8, !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #16, !dbg !6500
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !6489, metadata !DIExpression()), !dbg !6501
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6490, metadata !DIExpression()), !dbg !6502
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !6502
  store ptr %3, ptr %__mptr1, align 8, !dbg !6502
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6502
  %add.ptr3 = getelementptr i8, ptr %4, i64 -24, !dbg !6502
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !6503
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6502
  store ptr %5, ptr %cp, align 8, !dbg !6501
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !6504
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6492, metadata !DIExpression()), !dbg !6505
  store i64 -5, ptr %ret, align 8, !dbg !6505
  %6 = load ptr, ptr %class_attr, align 8, !dbg !6506
  %show = getelementptr inbounds %struct.class_attribute, ptr %6, i32 0, i32 1, !dbg !6508
  %7 = load ptr, ptr %show, align 8, !dbg !6508
  %tobool = icmp ne ptr %7, null, !dbg !6506
  br i1 %tobool, label %if.then, label %if.end, !dbg !6509

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %class_attr, align 8, !dbg !6510
  %show4 = getelementptr inbounds %struct.class_attribute, ptr %8, i32 0, i32 1, !dbg !6511
  %9 = load ptr, ptr %show4, align 8, !dbg !6511
  %10 = load ptr, ptr %cp, align 8, !dbg !6512
  %class = getelementptr inbounds %struct.subsys_private, ptr %10, i32 0, i32 12, !dbg !6513
  %11 = load ptr, ptr %class, align 8, !dbg !6513
  %12 = load ptr, ptr %class_attr, align 8, !dbg !6514
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !6515
  %call = call i64 %9(ptr noundef %11, ptr noundef %12, ptr noundef %13) #17, !dbg !6510
  store i64 %call, ptr %ret, align 8, !dbg !6516
  br label %if.end, !dbg !6517

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, ptr %ret, align 8, !dbg !6518
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #16, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %class_attr) #16, !dbg !6519
  ret i64 %14, !dbg !6520
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @class_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !6521 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %class_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6523, metadata !DIExpression()), !dbg !6534
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6524, metadata !DIExpression()), !dbg !6535
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6525, metadata !DIExpression()), !dbg !6536
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6526, metadata !DIExpression()), !dbg !6537
  call void @llvm.lifetime.start.p0(i64 8, ptr %class_attr) #16, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %class_attr, metadata !6527, metadata !DIExpression()), !dbg !6539
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6540
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6528, metadata !DIExpression()), !dbg !6540
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6540
  store ptr %0, ptr %__mptr, align 8, !dbg !6540
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6540
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6540
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6541
  %2 = load ptr, ptr %tmp, align 8, !dbg !6540
  store ptr %2, ptr %class_attr, align 8, !dbg !6539
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #16, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !6530, metadata !DIExpression()), !dbg !6543
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !6544
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6531, metadata !DIExpression()), !dbg !6544
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !6544
  store ptr %3, ptr %__mptr1, align 8, !dbg !6544
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6544
  %add.ptr3 = getelementptr i8, ptr %4, i64 -24, !dbg !6544
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6544
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !6545
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6544
  store ptr %5, ptr %cp, align 8, !dbg !6543
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !6546
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6533, metadata !DIExpression()), !dbg !6547
  store i64 -5, ptr %ret, align 8, !dbg !6547
  %6 = load ptr, ptr %class_attr, align 8, !dbg !6548
  %store = getelementptr inbounds %struct.class_attribute, ptr %6, i32 0, i32 2, !dbg !6550
  %7 = load ptr, ptr %store, align 8, !dbg !6550
  %tobool = icmp ne ptr %7, null, !dbg !6548
  br i1 %tobool, label %if.then, label %if.end, !dbg !6551

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %class_attr, align 8, !dbg !6552
  %store4 = getelementptr inbounds %struct.class_attribute, ptr %8, i32 0, i32 2, !dbg !6553
  %9 = load ptr, ptr %store4, align 8, !dbg !6553
  %10 = load ptr, ptr %cp, align 8, !dbg !6554
  %class = getelementptr inbounds %struct.subsys_private, ptr %10, i32 0, i32 12, !dbg !6555
  %11 = load ptr, ptr %class, align 8, !dbg !6555
  %12 = load ptr, ptr %class_attr, align 8, !dbg !6556
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !6557
  %14 = load i64, ptr %count.addr, align 8, !dbg !6558
  %call = call i64 %9(ptr noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14) #17, !dbg !6552
  store i64 %call, ptr %ret, align 8, !dbg !6559
  br label %if.end, !dbg !6560

if.end:                                           ; preds = %if.then, %entry
  %15 = load i64, ptr %ret, align 8, !dbg !6561
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !6562
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #16, !dbg !6562
  call void @llvm.lifetime.end.p0(i64 8, ptr %class_attr) #16, !dbg !6562
  ret i64 %15, !dbg !6563
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6564 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6568, metadata !DIExpression()), !dbg !6571
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6569, metadata !DIExpression()), !dbg !6572
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6570, metadata !DIExpression()), !dbg !6573
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6574
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6576
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6577
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6578
  br i1 %call, label %if.end, label %if.then, !dbg !6579

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6580

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6581
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6582
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6583
  store ptr %3, ptr %prev1, align 8, !dbg !6584
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6585
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6586
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6587
  store ptr %5, ptr %next2, align 8, !dbg !6588
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6589
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6590
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6591
  store ptr %7, ptr %prev3, align 8, !dbg !6592
  br label %do.body, !dbg !6593

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6594

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6596

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6594

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6598
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6598
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6598
  store volatile ptr %9, ptr %next6, align 8, !dbg !6598
  br label %do.end7, !dbg !6598

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6594

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6600
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6601 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6605, metadata !DIExpression()), !dbg !6608
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6606, metadata !DIExpression()), !dbg !6609
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6607, metadata !DIExpression()), !dbg !6610
  ret i1 true, !dbg !6611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6612 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6614, metadata !DIExpression()), !dbg !6615
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6616
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6618
  br i1 %call, label %if.end, label %if.then, !dbg !6619

if.then:                                          ; preds = %entry
  br label %return, !dbg !6620

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6621
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6622
  %2 = load ptr, ptr %prev, align 8, !dbg !6622
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6623
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6624
  %4 = load ptr, ptr %next, align 8, !dbg !6624
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6625
  br label %return, !dbg !6626

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6626
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6627 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6631, metadata !DIExpression()), !dbg !6632
  ret i1 true, !dbg !6633
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6634 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6636, metadata !DIExpression()), !dbg !6638
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6637, metadata !DIExpression()), !dbg !6639
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6640
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6641
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6642
  store ptr %0, ptr %prev1, align 8, !dbg !6643
  br label %do.body, !dbg !6644

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6645

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6647

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6645

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6649
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6649
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6649
  store volatile ptr %2, ptr %next4, align 8, !dbg !6649
  br label %do.end5, !dbg !6649

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6645

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6651
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6652 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !6653 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6657, metadata !DIExpression()), !dbg !6659
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6658, metadata !DIExpression()), !dbg !6660
  %0 = load i64, ptr %size.addr, align 8, !dbg !6661
  %tobool = icmp ne i64 %0, 0, !dbg !6661
  br i1 %tobool, label %if.end, label %if.then, !dbg !6663

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6664
  br label %return, !dbg !6664

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6665
  %cmp = icmp ule i64 %1, 8, !dbg !6667
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6668

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6669
  br label %return, !dbg !6669

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6670
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6672
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6673

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6674
  %cmp4 = icmp ule i64 %3, 96, !dbg !6675
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6676

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6677
  br label %return, !dbg !6677

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6678
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6680
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6681

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6682
  %cmp9 = icmp ule i64 %5, 192, !dbg !6683
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6684

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6685
  br label %return, !dbg !6685

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6686
  %cmp12 = icmp ule i64 %6, 8, !dbg !6688
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6689

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6690
  br label %return, !dbg !6690

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6691
  %cmp15 = icmp ule i64 %7, 16, !dbg !6693
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6694

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6695
  br label %return, !dbg !6695

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6696
  %cmp18 = icmp ule i64 %8, 32, !dbg !6698
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6699

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6700
  br label %return, !dbg !6700

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6701
  %cmp21 = icmp ule i64 %9, 64, !dbg !6703
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6704

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6705
  br label %return, !dbg !6705

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6706
  %cmp24 = icmp ule i64 %10, 128, !dbg !6708
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6709

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6710
  br label %return, !dbg !6710

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6711
  %cmp27 = icmp ule i64 %11, 256, !dbg !6713
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6714

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6715
  br label %return, !dbg !6715

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6716
  %cmp30 = icmp ule i64 %12, 512, !dbg !6718
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6719

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6720
  br label %return, !dbg !6720

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6721
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6723
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6724

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6725
  br label %return, !dbg !6725

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6726
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6728
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6729

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6730
  br label %return, !dbg !6730

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6731
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6733
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6734

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6735
  br label %return, !dbg !6735

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6736
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6738
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6739

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6740
  br label %return, !dbg !6740

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6741
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6743
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6744

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6745
  br label %return, !dbg !6745

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6746
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6748
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6749

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6750
  br label %return, !dbg !6750

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6751
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6753
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6754

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6755
  br label %return, !dbg !6755

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6756
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6758
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6759

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6760
  br label %return, !dbg !6760

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6761
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6763
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6764

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6765
  br label %return, !dbg !6765

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6766
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6768
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6769

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6770
  br label %return, !dbg !6770

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6771
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6773
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6774

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6775
  br label %return, !dbg !6775

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6776
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6778
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6779

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6780
  br label %return, !dbg !6780

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6781, !range !6367, !noundef !895
  %tobool69 = trunc i8 %25 to i1, !dbg !6781
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6783

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6784

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #21, !dbg !6785, !srcloc !6788
  unreachable, !dbg !6785

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6789

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6790

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6791

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6793

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6791

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #16, !dbg !6795, !srcloc !6797
  br label %do.end75, !dbg !6795

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6791

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6798
  br label %return, !dbg !6798

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6799
  ret i32 %26, !dbg !6799
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6800 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !6803 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6807, metadata !DIExpression()), !dbg !6809
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6808, metadata !DIExpression()), !dbg !6810
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6811
  %and = and i32 %0, 17, !dbg !6811
  %cmp = icmp eq i32 %and, 0, !dbg !6811
  %lnot = xor i1 %cmp, true, !dbg !6811
  %lnot1 = xor i1 %lnot, true, !dbg !6811
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6811
  %conv = sext i32 %lnot.ext to i64, !dbg !6811
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6811
  %tobool = icmp ne i64 %expval, 0, !dbg !6811
  br i1 %tobool, label %if.then, label %if.end, !dbg !6813

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6814
  br label %return, !dbg !6814

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6815
  %and2 = and i32 %1, 1, !dbg !6817
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6817
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6818

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6819
  br label %return, !dbg !6819

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6820
  br label %return, !dbg !6820

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6822
  ret i32 %2, !dbg !6822
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6823 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6824 dso_local void @__compiletime_assert_204() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !6825 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6827, metadata !DIExpression()), !dbg !6828
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6829
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6830
  %1 = load ptr, ptr %name, align 8, !dbg !6830
  ret ptr %1, !dbg !6831
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108}
!llvm.ident = !{!5109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "class_kset", scope: !2, file: !3, line: 24, type: !190, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.class.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/class\22 -D KBUILD_BASENAME=\22class\22 -D KBUILD_MODNAME=\22class\22 -D __KBUILD_MODNAME=kmod_class -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/class.ll drivers/base/class.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, globals: !5012, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/class.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4c20e0ffde8b249bd1f1d1fb409fd071")
!4 = !{!5, !13, !18, !24, !32, !40, !56, !62, !68, !75, !80, !88, !96, !102, !111, !116, !121, !127, !131, !136, !142, !149, !156, !161}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !25, line: 68, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!29 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !33, line: 9, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!36 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!37 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!38 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!39 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !41, line: 1325, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!43 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!44 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!45 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!46 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!47 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!48 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!49 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!50 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!51 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!52 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!53 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!54 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!55 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !57, line: 1381, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!60 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!61 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !63, line: 45, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!66 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!67 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !69, line: 487, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!72 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!73 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!74 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !76, line: 65, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!79 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !81, line: 620, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!84 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!85 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!86 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!87 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !81, line: 597, baseType: !89, size: 32, elements: !90)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !{!91, !92, !93, !94, !95}
!91 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!92 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!93 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!94 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!95 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !97, line: 26, baseType: !7, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!100 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!101 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !69, line: 547, baseType: !7, size: 32, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110}
!104 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!105 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!106 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!107 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!108 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!109 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!110 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !69, line: 564, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!114 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!115 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !69, line: 577, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!119 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!120 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !69, line: 503, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126}
!123 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!124 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!125 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!126 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !57, line: 295, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130}
!129 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!130 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !57, line: 285, baseType: !7, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!134 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!135 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !137, line: 16, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "TT_NONE", value: 0)
!140 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!141 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !143, line: 51, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!144 = !{!145, !146, !147, !148}
!145 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!146 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!147 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!148 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !150, line: 15, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!153 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!154 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 10, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!158 = !{!159, !160}
!159 = !DIEnumerator(name: "false", value: 0)
!160 = !DIEnumerator(name: "true", value: 1)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !162, line: 364, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!163 = !{!164, !165, !166, !167, !168, !169, !170}
!164 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!165 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!166 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!167 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!169 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!170 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!171 = !{!172, !173, !190, !4955, !1120, !4987, !5005, !5008, !5009, !5010, !315, !2495}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !175, line: 64, size: 512, elements: !176)
!175 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!176 = !{!177, !181, !188, !189, !278, !4846, !4949, !4950, !4951, !4952, !4953, !4954}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 65, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !174, file: !175, line: 66, baseType: !182, size: 128, offset: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !183, line: 190, size: 128, elements: !184)
!183 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!184 = !{!185, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !183, line: 191, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !183, line: 191, baseType: !186, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !175, line: 67, baseType: !173, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !174, file: !175, line: 68, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !175, line: 168, size: 768, elements: !192)
!192 = !{!193, !194, !237, !238}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !191, file: !175, line: 169, baseType: !182, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !191, file: !175, line: 170, baseType: !195, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !196, line: 29, baseType: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !196, line: 17, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !196, line: 18, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !196, line: 18, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !200, file: !196, line: 19, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !204, line: 14, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !203, file: !204, line: 15, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !208, line: 44, baseType: !209)
!208 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !208, line: 14, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !208, line: 15, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !208, line: 15, size: 32, elements: !213)
!213 = !{!214, !219, !229}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !212, file: !208, line: 16, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !183, line: 174, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 172, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !216, file: !183, line: 173, baseType: !89, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !208, line: 24, baseType: !220, size: 16)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !212, file: !208, line: 24, size: 16, elements: !221)
!221 = !{!222, !228}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !220, file: !208, line: 25, baseType: !223, size: 8)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !224, line: 17, baseType: !225)
!224 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !226, line: 21, baseType: !227)
!226 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !220, file: !208, line: 26, baseType: !223, size: 8, offset: 8)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !208, line: 28, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !212, file: !208, line: 28, size: 32, elements: !231)
!231 = !{!232, !236}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !230, file: !208, line: 29, baseType: !233, size: 16)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !224, line: 19, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !226, line: 24, baseType: !235)
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !230, file: !208, line: 30, baseType: !233, size: 16, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !191, file: !175, line: 171, baseType: !174, size: 512, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !191, file: !175, line: 172, baseType: !239, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !175, line: 133, size: 192, elements: !242)
!242 = !{!243, !250, !255}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !241, file: !175, line: 134, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!89, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !175, line: 135, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!178, !248}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !241, file: !175, line: 136, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!89, !248, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !175, line: 125, size: 20736, elements: !262)
!262 = !{!263, !268, !272, !273, !277}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !261, file: !175, line: 126, baseType: !264, size: 192)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 192, elements: !266)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!266 = !{!267}
!267 = !DISubrange(count: 3)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !261, file: !175, line: 127, baseType: !269, size: 4096, offset: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 4096, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !261, file: !175, line: 128, baseType: !89, size: 32, offset: 4288)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !261, file: !175, line: 129, baseType: !274, size: 16384, offset: 4320)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 16384, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 2048)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !261, file: !175, line: 130, baseType: !89, size: 32, offset: 20704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !174, file: !175, line: 69, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !175, line: 116, size: 384, elements: !282)
!282 = !{!283, !287, !316, !4834, !4838, !4842}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !281, file: !175, line: 117, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !173}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !281, file: !175, line: 118, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !291, line: 254, size: 128, elements: !292)
!291 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!292 = !{!293, !308}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !290, file: !291, line: 255, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !173, !302, !265}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !183, line: 66, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !299, line: 73, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !299, line: 15, baseType: !301)
!301 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !291, line: 30, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !291, line: 31, baseType: !178, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !291, line: 32, baseType: !307, size: 16, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !183, line: 24, baseType: !235)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !290, file: !291, line: 256, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!297, !173, !302, !178, !312}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !183, line: 61, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !299, line: 72, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !299, line: 16, baseType: !315)
!315 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !281, file: !175, line: 119, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !291, line: 84, size: 320, elements: !321)
!321 = !{!322, !323, !327, !4830, !4832}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !291, line: 85, baseType: !178, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !320, file: !291, line: 86, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!307, !173, !302, !89}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !320, file: !291, line: 88, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!307, !173, !331, !89}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !291, line: 175, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !4821, !4825, !4826}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !332, file: !291, line: 176, baseType: !303, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !332, file: !291, line: 177, baseType: !312, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !332, file: !291, line: 178, baseType: !172, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !332, file: !291, line: 179, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !343)
!343 = !{!344, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4815, !4816, !4817, !4818, !4819, !4820}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !342, file: !14, line: 473, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !347)
!347 = !{!348, !349, !350, !358, !359, !366, !367, !370, !371, !4595, !4596, !4597, !4598, !4599, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4639, !4642, !4643, !4644, !4653, !4654, !4655, !4656}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !346, file: !14, line: 642, baseType: !307, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !346, file: !14, line: 643, baseType: !235, size: 16, offset: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !346, file: !14, line: 644, baseType: !351, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !352, line: 23, baseType: !353)
!352 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 21, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !352, line: 22, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !183, line: 37, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !299, line: 49, baseType: !7)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !346, file: !14, line: 645, baseType: !182, size: 128, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !346, file: !14, line: 646, baseType: !360, size: 32, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !352, line: 28, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 26, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !352, line: 27, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !183, line: 38, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !299, line: 50, baseType: !7)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !346, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !346, file: !14, line: 650, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !346, file: !14, line: 651, baseType: !368, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !346, file: !14, line: 654, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !375)
!375 = !{!376, !4429, !4439, !4443, !4447, !4451, !4455, !4459, !4463, !4467, !4471, !4472, !4476, !4480, !4517, !4546, !4550, !4556, !4560, !4564, !4568, !4572, !4576, !4582, !4586}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !374, file: !14, line: 1967, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!380, !345, !380, !7}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !382, line: 82, size: 1536, elements: !383)
!382 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!383 = !{!384, !385, !395, !403, !404, !424, !425, !429, !442, !4412, !4413, !4414, !4415, !4421, !4422, !4423}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !381, file: !382, line: 84, baseType: !7, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !381, file: !382, line: 85, baseType: !386, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !387, line: 275, baseType: !388)
!387 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !387, line: 275, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !388, file: !387, line: 275, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !387, line: 69, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !387, line: 64, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !392, file: !387, line: 65, baseType: !7, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !381, file: !382, line: 86, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !397, line: 38, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !397, line: 39, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !396, file: !397, line: 39, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !381, file: !382, line: 87, baseType: !380, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !381, file: !382, line: 88, baseType: !405, size: 128, offset: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !382, line: 49, size: 128, elements: !406)
!406 = !{!407, !421}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !382, line: 50, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !382, line: 50, size: 64, elements: !409)
!409 = !{!410, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !382, line: 51, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !382, line: 51, size: 64, elements: !412)
!412 = !{!413, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !411, file: !382, line: 52, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !224, line: 21, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !226, line: 27, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !411, file: !382, line: 52, baseType: !414, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !408, file: !382, line: 54, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !224, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !226, line: 31, baseType: !420)
!420 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !382, line: 56, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !381, file: !382, line: 89, baseType: !345, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !381, file: !382, line: 91, baseType: !426, size: 256, offset: 448)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !381, file: !382, line: 94, baseType: !430, size: 64, offset: 704)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !431, line: 25, size: 64, elements: !432)
!431 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 26, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 26, size: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !434, file: !431, line: 28, baseType: !419, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !431, line: 30, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !431, line: 30, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !438, file: !431, line: 31, baseType: !195, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !438, file: !431, line: 32, baseType: !89, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !381, file: !382, line: 95, baseType: !443, size: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !382, line: 128, size: 1024, align: 512, elements: !446)
!446 = !{!447, !451, !452, !459, !465, !469, !473, !477, !478, !482, !486, !4402, !4406}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !445, file: !382, line: 129, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!89, !380, !7}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !445, file: !382, line: 130, baseType: !448, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !445, file: !382, line: 131, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!89, !456, !458}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !445, file: !382, line: 132, baseType: !460, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!89, !456, !7, !178, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !445, file: !382, line: 134, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!89, !456}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !445, file: !382, line: 135, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!89, !380}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !445, file: !382, line: 136, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !380}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !445, file: !382, line: 137, baseType: !474, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !445, file: !382, line: 138, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !380, !345}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !445, file: !382, line: 139, baseType: !483, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!265, !380, !265, !89}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !445, file: !382, line: 140, baseType: !487, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !4401}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !492, line: 70, size: 256, elements: !493)
!492 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!493 = !{!494, !495, !4397, !4398}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !491, file: !492, line: 71, baseType: !380, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !491, file: !492, line: 72, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !498)
!498 = !{!499, !500, !503, !504, !505, !509, !989, !1129, !1169, !1259, !1263, !1264, !1265, !1266, !1267, !1276, !1277, !1278, !1279, !1284, !1288, !1289, !3146, !3152, !3153, !3156, !3157, !3158, !3199, !4331, !4332, !4333, !4334, !4335, !4336, !4339, !4340, !4347, !4348, !4349, !4350, !4351, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !497, file: !14, line: 1191, baseType: !182, size: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !497, file: !14, line: 1192, baseType: !501, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !183, line: 21, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !183, line: 18, baseType: !414)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !497, file: !14, line: 1193, baseType: !227, size: 8, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !497, file: !14, line: 1194, baseType: !315, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !497, file: !14, line: 1195, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !183, line: 52, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !299, line: 88, baseType: !508)
!508 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !497, file: !14, line: 1196, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !512)
!512 = !{!513, !514, !515, !522, !526, !530, !534, !974, !975, !979, !981, !982, !983, !985, !986, !987, !988}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !14, line: 2367, baseType: !178, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !511, file: !14, line: 2368, baseType: !89, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !511, file: !14, line: 2376, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!89, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !521, line: 32, flags: DIFlagFwdDecl)
!521 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!522 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !511, file: !14, line: 2377, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !511, file: !14, line: 2378, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!380, !510, !89, !178, !172}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !511, file: !14, line: 2380, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !496}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !14, line: 2381, baseType: !535, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !537)
!537 = !{!538, !539, !540, !544, !566, !592, !593, !594, !595, !599, !604, !605, !625, !681, !682, !683, !684, !685, !688, !689, !690, !698, !702, !729, !750, !751, !752, !753, !762, !785, !786, !789, !792, !793, !794, !795, !796, !797, !798, !803, !804, !932, !940, !941, !942, !944, !948, !949, !953, !954, !955, !956, !958, !959, !960, !967, !968, !969, !973}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !536, file: !6, line: 403, baseType: !5, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !536, file: !6, line: 406, baseType: !182, size: 128, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !536, file: !6, line: 409, baseType: !541, size: 448, offset: 192)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 448, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 56)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !536, file: !6, line: 417, baseType: !545, size: 768, offset: 640)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !546)
!546 = !{!547, !548, !549, !550, !553}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !545, file: !6, line: 46, baseType: !174, size: 512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !545, file: !6, line: 47, baseType: !535, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !545, file: !6, line: 48, baseType: !173, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !545, file: !6, line: 49, baseType: !551, size: 64, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !545, file: !6, line: 50, baseType: !554, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !556, line: 26, size: 256, elements: !557)
!556 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !555, file: !556, line: 27, baseType: !7, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !555, file: !556, line: 28, baseType: !560, size: 192, offset: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !561, line: 43, size: 192, elements: !562)
!561 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!562 = !{!563, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !561, line: 44, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !204, line: 23, baseType: !203)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !560, file: !561, line: 45, baseType: !182, size: 128, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !536, file: !6, line: 418, baseType: !567, size: 64, offset: 1408)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !569)
!569 = !{!570, !571, !576, !580, !584, !588}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !568, file: !6, line: 54, baseType: !303, size: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !568, file: !6, line: 55, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!297, !567, !575, !265}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !568, file: !6, line: 57, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!297, !567, !575, !178, !312}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !568, file: !6, line: 59, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !535, !178}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !568, file: !6, line: 60, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!89, !535}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !568, file: !6, line: 61, baseType: !589, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !535}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !536, file: !6, line: 419, baseType: !178, size: 64, offset: 1472)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !536, file: !6, line: 420, baseType: !178, size: 64, offset: 1536)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !536, file: !6, line: 421, baseType: !173, size: 64, offset: 1600)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !536, file: !6, line: 424, baseType: !596, size: 64, offset: 1664)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !536, file: !6, line: 425, baseType: !600, size: 64, offset: 1728)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !224, line: 20, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !226, line: 26, baseType: !89)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !536, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !536, file: !6, line: 435, baseType: !606, size: 256, offset: 1856)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !607, line: 66, size: 256, elements: !608)
!607 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!608 = !{!609, !618, !619, !624}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !606, file: !607, line: 67, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !611, line: 13, baseType: !612)
!611 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !183, line: 181, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 179, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !613, file: !183, line: 180, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !224, line: 22, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !226, line: 30, baseType: !508)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !606, file: !607, line: 68, baseType: !564, size: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !606, file: !607, line: 70, baseType: !620, size: 32, offset: 96)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !621, line: 15, size: 32, elements: !622)
!621 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !620, file: !621, line: 20, baseType: !215, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !606, file: !607, line: 72, baseType: !182, size: 128, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !536, file: !6, line: 437, baseType: !626, size: 64, offset: 2112)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !628, line: 69, size: 320, elements: !629)
!628 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!629 = !{!630, !631, !632, !652, !654, !658, !659}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !627, file: !628, line: 70, baseType: !178, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !627, file: !628, line: 71, baseType: !535, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !627, file: !628, line: 72, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !628, line: 47, size: 256, elements: !636)
!636 = !{!637, !638, !644, !648}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !628, line: 49, baseType: !7, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !635, file: !628, line: 51, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!89, !178, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !635, file: !628, line: 53, baseType: !645, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!89, !265, !642}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !635, file: !628, line: 55, baseType: !649, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !172}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !627, file: !628, line: 73, baseType: !653, size: 16, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !627, file: !628, line: 74, baseType: !655, size: 8, offset: 208)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !224, line: 16, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !226, line: 20, baseType: !657)
!657 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !628, line: 75, baseType: !223, size: 8, offset: 216)
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !628, line: 76, baseType: !660, size: 64, offset: 256)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !627, file: !628, line: 76, size: 64, elements: !661)
!661 = !{!662, !663, !670}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !660, file: !628, line: 77, baseType: !172, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !660, file: !628, line: 78, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !628, line: 86, size: 128, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !666, file: !628, line: 87, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !666, file: !628, line: 88, baseType: !265, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !660, file: !628, line: 79, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !628, line: 92, size: 256, elements: !674)
!674 = !{!675, !676, !677, !679, !680}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !673, file: !628, line: 94, baseType: !7, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !673, file: !628, line: 95, baseType: !7, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !673, file: !628, line: 96, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !673, file: !628, line: 97, baseType: !633, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !673, file: !628, line: 98, baseType: !172, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !536, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !536, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !536, file: !6, line: 442, baseType: !596, size: 64, offset: 2240)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !536, file: !6, line: 443, baseType: !600, size: 64, offset: 2304)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !536, file: !6, line: 444, baseType: !686, size: 8, offset: 2368)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !183, line: 35, baseType: !687)
!687 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !536, file: !6, line: 451, baseType: !686, size: 8, offset: 2376)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !536, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !536, file: !6, line: 455, baseType: !691, size: 64, offset: 2432)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !693, line: 23, size: 96, elements: !694)
!693 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!694 = !{!695, !696, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !692, file: !693, line: 24, baseType: !89, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !692, file: !693, line: 24, baseType: !89, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !692, file: !693, line: 24, baseType: !89, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !536, file: !6, line: 458, baseType: !699, size: 64, offset: 2496)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!89}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !536, file: !6, line: 460, baseType: !703, size: 4032, align: 512, offset: 2560)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 4032, elements: !727)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !705)
!705 = !{!706, !707, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !704, file: !6, line: 363, baseType: !172, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !704, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !704, file: !6, line: 367, baseType: !709, size: 448, offset: 128)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !709, file: !6, line: 320, baseType: !535, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 321, baseType: !713, size: 384, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !714, line: 40, size: 384, elements: !715)
!714 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !714, line: 41, baseType: !717, size: 384, align: 64)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 384, align: 64, elements: !725)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !719, line: 5, size: 192, align: 64, elements: !720)
!719 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!720 = !{!721, !722, !724}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !718, file: !719, line: 6, baseType: !315, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !718, file: !719, line: 7, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !718, file: !719, line: 8, baseType: !723, size: 64, offset: 128)
!725 = !{!726}
!726 = !DISubrange(count: 2)
!727 = !{!728}
!728 = !DISubrange(count: 7)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !536, file: !6, line: 463, baseType: !730, size: 192, offset: 6592)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !731, line: 8, size: 192, elements: !732)
!731 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!732 = !{!733, !734, !736}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !730, file: !731, line: 10, baseType: !7, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !730, file: !731, line: 11, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !730, file: !731, line: 12, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !739, line: 59, size: 48, elements: !740)
!739 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!740 = !{!741, !745, !746, !747, !748, !749}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !738, file: !739, line: 60, baseType: !742, size: 16)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !224, line: 18, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !226, line: 23, baseType: !744)
!744 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !738, file: !739, line: 61, baseType: !742, size: 16, offset: 16)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !738, file: !739, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !738, file: !739, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !739, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !738, file: !739, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !536, file: !6, line: 465, baseType: !315, size: 64, offset: 6784)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !536, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !536, file: !6, line: 470, baseType: !182, size: 128, offset: 6912)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !536, file: !6, line: 471, baseType: !754, size: 64, offset: 7040)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !756, line: 33, size: 96, elements: !757)
!756 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!757 = !{!758, !759, !760, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !755, file: !756, line: 37, baseType: !89, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !755, file: !756, line: 43, baseType: !89, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !755, file: !756, line: 45, baseType: !235, size: 16, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !756, line: 47, baseType: !235, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !536, file: !6, line: 476, baseType: !763, size: 64, offset: 7104)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !765)
!765 = !{!766, !782, !783, !784}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !764, file: !6, line: 379, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !769, line: 204, baseType: !770)
!769 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !769, line: 197, size: 192, elements: !771)
!771 = !{!772, !774, !775, !776, !778, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !770, file: !769, line: 198, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !769, line: 21, baseType: !415)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !770, file: !769, line: 199, baseType: !227, size: 8, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !770, file: !769, line: 200, baseType: !227, size: 8, offset: 40)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !770, file: !769, line: 201, baseType: !777, size: 16, offset: 48)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !769, line: 17, baseType: !234)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !770, file: !769, line: 202, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !769, line: 16, baseType: !419)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !770, file: !769, line: 203, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !769, line: 22, baseType: !419)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !764, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !764, file: !6, line: 381, baseType: !265, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !764, file: !6, line: 382, baseType: !265, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !536, file: !6, line: 477, baseType: !764, size: 256, offset: 7168)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !536, file: !6, line: 480, baseType: !787, size: 64, offset: 7424)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !536, file: !6, line: 483, baseType: !790, size: 64, offset: 7488)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !536, file: !6, line: 488, baseType: !265, size: 64, offset: 7552)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !536, file: !6, line: 492, baseType: !172, size: 64, offset: 7616)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !536, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !536, file: !6, line: 495, baseType: !172, size: 64, offset: 7744)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !536, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !536, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !536, file: !6, line: 500, baseType: !799, size: 64, offset: 7872)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !801, line: 45, baseType: !802)
!801 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !536, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !536, file: !6, line: 504, baseType: !805, size: 64, offset: 8000)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !808, line: 96, size: 192, elements: !809)
!808 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!809 = !{!810, !811, !892, !896}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !807, file: !808, line: 97, baseType: !7, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !807, file: !808, line: 98, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !808, line: 24, size: 3072, elements: !814)
!814 = !{!815, !817, !818, !819, !820, !844, !845, !846, !847, !865, !877, !878, !889, !890, !891}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !813, file: !808, line: 26, baseType: !816, size: 128)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !725)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !813, file: !808, line: 27, baseType: !816, size: 128, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !813, file: !808, line: 28, baseType: !89, size: 32, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !813, file: !808, line: 31, baseType: !195, size: 32, align: 512, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !813, file: !808, line: 32, baseType: !821, size: 960, offset: 576)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !822, line: 206, size: 960, elements: !823)
!822 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!823 = !{!824, !833, !838, !840, !841, !843}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !821, file: !822, line: 207, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !183, line: 232, size: 128, align: 64, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !183, line: 233, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !826, file: !183, line: 234, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !825}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !821, file: !822, line: 208, baseType: !834, size: 256, offset: 64)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 256, elements: !836)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!836 = !{!837}
!837 = !DISubrange(count: 4)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !821, file: !822, line: 209, baseType: !839, size: 256, offset: 320)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !836)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !821, file: !822, line: 213, baseType: !301, size: 64, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !821, file: !822, line: 215, baseType: !842, size: 256, offset: 640)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !836)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !822, line: 216, baseType: !223, size: 8, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !813, file: !808, line: 33, baseType: !315, size: 64, offset: 1536)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !813, file: !808, line: 34, baseType: !315, size: 64, offset: 1600)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !813, file: !808, line: 35, baseType: !686, size: 8, offset: 1664)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !813, file: !808, line: 36, baseType: !848, size: 320, offset: 1728)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !849, line: 11, size: 320, elements: !850)
!849 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!850 = !{!851, !858, !859, !864}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !848, file: !849, line: 16, baseType: !852, size: 128)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !183, line: 198, size: 128, elements: !853)
!853 = !{!854, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !183, line: 199, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !852, file: !183, line: 199, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !848, file: !849, line: 17, baseType: !315, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !848, file: !849, line: 18, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !849, line: 19, baseType: !414, size: 32, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !813, file: !808, line: 37, baseType: !866, size: 256, offset: 2048)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !867, line: 98, size: 256, elements: !868)
!867 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !866, file: !867, line: 99, baseType: !610, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !866, file: !867, line: 100, baseType: !182, size: 128, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !866, file: !867, line: 101, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !867, line: 21, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !813, file: !808, line: 38, baseType: !826, size: 128, align: 64, offset: 2304)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !813, file: !808, line: 39, baseType: !879, size: 64, offset: 2432)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !808, line: 49, size: 768, elements: !881)
!881 = !{!882, !883, !884, !885, !886, !887, !888}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !880, file: !808, line: 50, baseType: !195, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !880, file: !808, line: 51, baseType: !839, size: 256, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !880, file: !808, line: 53, baseType: !839, size: 256, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !880, file: !808, line: 54, baseType: !315, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !880, file: !808, line: 55, baseType: !879, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !880, file: !808, line: 56, baseType: !89, size: 32, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !880, file: !808, line: 57, baseType: !89, size: 32, offset: 736)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !813, file: !808, line: 40, baseType: !315, size: 64, offset: 2496)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !813, file: !808, line: 42, baseType: !89, size: 32, offset: 2560)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !813, file: !808, line: 43, baseType: !806, size: 64, offset: 2624)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !807, file: !808, line: 99, baseType: !893, offset: 128)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !894, line: 211, elements: !895)
!894 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!895 = !{}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !807, file: !808, line: 100, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !808, line: 63, size: 3008, elements: !899)
!899 = !{!900, !901, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !931}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !898, file: !808, line: 64, baseType: !879, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !898, file: !808, line: 65, baseType: !902, size: 192, offset: 64)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 192, elements: !266)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !898, file: !808, line: 67, baseType: !89, size: 32, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !898, file: !808, line: 68, baseType: !606, size: 256, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !898, file: !808, line: 69, baseType: !195, size: 32, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !898, file: !808, line: 70, baseType: !606, size: 256, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !898, file: !808, line: 71, baseType: !315, size: 64, offset: 896)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !898, file: !808, line: 72, baseType: !315, size: 64, offset: 960)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !898, file: !808, line: 73, baseType: !315, size: 64, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !898, file: !808, line: 74, baseType: !315, size: 64, offset: 1088)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !898, file: !808, line: 75, baseType: !315, size: 64, offset: 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !898, file: !808, line: 76, baseType: !315, size: 64, offset: 1216)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !898, file: !808, line: 77, baseType: !315, size: 64, offset: 1280)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !898, file: !808, line: 78, baseType: !315, size: 64, offset: 1344)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !898, file: !808, line: 79, baseType: !686, size: 8, offset: 1408)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !898, file: !808, line: 80, baseType: !315, size: 64, offset: 1472)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !898, file: !808, line: 81, baseType: !606, size: 256, offset: 1536)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !898, file: !808, line: 82, baseType: !555, size: 256, offset: 1792)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !898, file: !808, line: 84, baseType: !215, size: 32, offset: 2048)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !898, file: !808, line: 87, baseType: !315, size: 64, offset: 2112)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !898, file: !808, line: 88, baseType: !315, size: 64, offset: 2176)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !898, file: !808, line: 89, baseType: !923, size: 704, offset: 2240)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !867, line: 111, size: 704, elements: !924)
!924 = !{!925, !926, !927, !930}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !923, file: !867, line: 112, baseType: !866, size: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !923, file: !867, line: 113, baseType: !848, size: 320, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !923, file: !867, line: 116, baseType: !928, size: 64, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !867, line: 18, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !923, file: !867, line: 117, baseType: !89, size: 32, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !898, file: !808, line: 90, baseType: !806, size: 64, offset: 2944)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !536, file: !6, line: 515, baseType: !933, size: 64, offset: 8064)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !935, line: 117, size: 128, elements: !936)
!935 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !934, file: !935, line: 118, baseType: !602, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !934, file: !935, line: 119, baseType: !602, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !934, file: !935, line: 120, baseType: !301, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !536, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !536, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !536, file: !6, line: 520, baseType: !943, size: 64, offset: 8192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !536, file: !6, line: 523, baseType: !945, size: 64, offset: 8256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !536, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !536, file: !6, line: 525, baseType: !950, size: 64, offset: 8384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !536, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !536, file: !6, line: 533, baseType: !172, size: 64, offset: 8512)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !536, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !536, file: !6, line: 535, baseType: !957, size: 64, offset: 8640)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !536, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !536, file: !6, line: 539, baseType: !89, size: 32, offset: 8736)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !536, file: !6, line: 540, baseType: !961, size: 64, offset: 8768)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !963, line: 32, size: 64, elements: !964)
!963 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !962, file: !963, line: 33, baseType: !602, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !962, file: !963, line: 34, baseType: !602, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !536, file: !6, line: 563, baseType: !182, size: 128, offset: 8832)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !536, file: !6, line: 565, baseType: !182, size: 128, offset: 8960)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !536, file: !6, line: 568, baseType: !970, size: 64, offset: 9088)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !536, file: !6, line: 570, baseType: !215, size: 32, offset: 9152)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !14, line: 2382, baseType: !510, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !511, file: !14, line: 2383, baseType: !976, size: 64, offset: 512)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !183, line: 194, size: 64, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !976, file: !183, line: 195, baseType: !855, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !511, file: !14, line: 2385, baseType: !980, offset: 576)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !894, line: 206, elements: !895)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !511, file: !14, line: 2386, baseType: !980, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !511, file: !14, line: 2387, baseType: !980, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !511, file: !14, line: 2388, baseType: !984, offset: 576)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, elements: !266)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !511, file: !14, line: 2390, baseType: !980, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !511, file: !14, line: 2391, baseType: !980, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !511, file: !14, line: 2392, baseType: !980, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !511, file: !14, line: 2393, baseType: !980, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !497, file: !14, line: 1197, baseType: !990, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !993)
!993 = !{!994, !998, !1002, !1003, !1007, !1013, !1017, !1018, !1019, !1023, !1027, !1031, !1032, !1033, !1039, !1043, !1044, !1051, !1052, !1053, !1054, !1058, !1062, !1111, !1127, !1128}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !992, file: !14, line: 2058, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!345, !496}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !992, file: !14, line: 2059, baseType: !999, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !345}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !992, file: !14, line: 2060, baseType: !999, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !992, file: !14, line: 2062, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !345, !89}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !992, file: !14, line: 2063, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!89, !345, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !992, file: !14, line: 2064, baseType: !1014, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!89, !345}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !992, file: !14, line: 2065, baseType: !999, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !992, file: !14, line: 2066, baseType: !531, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !992, file: !14, line: 2067, baseType: !1020, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!89, !496, !89}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !992, file: !14, line: 2068, baseType: !1024, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!89, !496, !13}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !992, file: !14, line: 2069, baseType: !1028, size: 64, offset: 640)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!89, !496}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !992, file: !14, line: 2070, baseType: !1024, size: 64, offset: 704)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !992, file: !14, line: 2071, baseType: !1028, size: 64, offset: 768)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !992, file: !14, line: 2072, baseType: !1034, size: 64, offset: 832)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!89, !380, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !992, file: !14, line: 2073, baseType: !1040, size: 64, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!89, !496, !735, !265}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !992, file: !14, line: 2074, baseType: !531, size: 64, offset: 960)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !992, file: !14, line: 2076, baseType: !1045, size: 64, offset: 1024)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!89, !1048, !380}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1050, line: 66, flags: DIFlagFwdDecl)
!1050 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !992, file: !14, line: 2077, baseType: !1045, size: 64, offset: 1088)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !992, file: !14, line: 2078, baseType: !1045, size: 64, offset: 1152)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !992, file: !14, line: 2079, baseType: !1045, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !992, file: !14, line: 2081, baseType: !1055, size: 64, offset: 1280)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!297, !496, !89, !265, !312, !506}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !992, file: !14, line: 2082, baseType: !1059, size: 64, offset: 1344)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!297, !496, !89, !178, !312, !506}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !992, file: !14, line: 2083, baseType: !1063, size: 64, offset: 1408)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1066, !345}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1094, !1095, !1096}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1068, file: !19, line: 297, baseType: !852, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1068, file: !19, line: 298, baseType: !182, size: 128, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1068, file: !19, line: 299, baseType: !182, size: 128, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1068, file: !19, line: 300, baseType: !182, size: 128, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1068, file: !19, line: 301, baseType: !606, size: 256, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1068, file: !19, line: 302, baseType: !195, size: 32, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1068, file: !19, line: 303, baseType: !215, size: 32, offset: 800)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1068, file: !19, line: 304, baseType: !496, size: 64, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1068, file: !19, line: 305, baseType: !1079, size: 64, offset: 896)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1080)
!1080 = !{!1081, !1093}
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !19, line: 69, baseType: !1082, size: 32)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !19, line: 69, size: 32, elements: !1083)
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1082, file: !19, line: 70, baseType: !351, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1082, file: !19, line: 71, baseType: !360, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1082, file: !19, line: 72, baseType: !1087, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1088, line: 24, baseType: !1089)
!1088 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1088, line: 22, size: 32, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1089, file: !1088, line: 23, baseType: !1092, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1088, line: 20, baseType: !357)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1079, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1068, file: !19, line: 306, baseType: !506, size: 64, offset: 960)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1068, file: !19, line: 307, baseType: !315, size: 64, offset: 1024)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1068, file: !19, line: 308, baseType: !1097, size: 576, offset: 1088)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1098)
!1098 = !{!1099, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1110}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1097, file: !19, line: 206, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !508)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1097, file: !19, line: 207, baseType: !1100, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1097, file: !19, line: 208, baseType: !1100, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1097, file: !19, line: 209, baseType: !1100, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1097, file: !19, line: 210, baseType: !1100, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1097, file: !19, line: 211, baseType: !1100, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1097, file: !19, line: 212, baseType: !1100, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1097, file: !19, line: 213, baseType: !1108, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1109, line: 8, baseType: !617)
!1109 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1097, file: !19, line: 214, baseType: !1108, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !992, file: !14, line: 2085, baseType: !1112, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!301, !496, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1117, line: 15, size: 256, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1118 = !{!1119, !1121, !1122, !1123, !1124}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1116, file: !1117, line: 16, baseType: !1120, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !183, line: 154, baseType: !7)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1116, file: !1117, line: 19, baseType: !89, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1116, file: !1117, line: 26, baseType: !315, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1116, file: !1117, line: 33, baseType: !315, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1116, file: !1117, line: 36, baseType: !1125, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !41, line: 33, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !992, file: !14, line: 2087, baseType: !1112, size: 64, offset: 1536)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !992, file: !14, line: 2089, baseType: !531, size: 64, offset: 1600)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !497, file: !14, line: 1198, baseType: !1130, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1133)
!1133 = !{!1134, !1138, !1142, !1146, !1147, !1148, !1149, !1150, !1155, !1160, !1164}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1132, file: !19, line: 325, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!89, !1067}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1132, file: !19, line: 326, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!1067, !496, !89}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1132, file: !19, line: 327, baseType: !1143, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !1067}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1132, file: !19, line: 328, baseType: !1135, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1132, file: !19, line: 329, baseType: !1135, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1132, file: !19, line: 330, baseType: !1135, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1132, file: !19, line: 331, baseType: !1020, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1132, file: !19, line: 334, baseType: !1151, size: 64, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1154, !345}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1132, file: !19, line: 335, baseType: !1156, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!89, !345, !1159}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1132, file: !19, line: 337, baseType: !1161, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!89, !345, !1154}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1132, file: !19, line: 339, baseType: !1165, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!89, !496, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !497, file: !14, line: 1199, baseType: !1170, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1173)
!1173 = !{!1174, !1185, !1186, !1190, !1191, !1192, !1207, !1230, !1234, !1235, !1258}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1172, file: !19, line: 431, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!89, !496, !89, !89, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1181, line: 8, size: 128, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1180, file: !1181, line: 9, baseType: !490, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1180, file: !1181, line: 10, baseType: !380, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1172, file: !19, line: 432, baseType: !1020, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1172, file: !19, line: 433, baseType: !1187, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!89, !496, !7}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1172, file: !19, line: 434, baseType: !1187, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1172, file: !19, line: 435, baseType: !1020, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1172, file: !19, line: 436, baseType: !1193, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!89, !496, !89, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1197, file: !19, line: 418, baseType: !89, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1197, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1197, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1197, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1197, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1197, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1197, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1197, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1172, file: !19, line: 437, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!89, !496, !1079, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1212, file: !19, line: 346, baseType: !89, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1212, file: !19, line: 347, baseType: !418, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1212, file: !19, line: 348, baseType: !418, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1212, file: !19, line: 349, baseType: !418, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1212, file: !19, line: 350, baseType: !418, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1212, file: !19, line: 351, baseType: !418, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1212, file: !19, line: 352, baseType: !418, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1212, file: !19, line: 353, baseType: !616, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1212, file: !19, line: 355, baseType: !616, size: 64, offset: 512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1212, file: !19, line: 356, baseType: !89, size: 32, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1212, file: !19, line: 357, baseType: !89, size: 32, offset: 608)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1212, file: !19, line: 358, baseType: !418, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1212, file: !19, line: 359, baseType: !418, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1212, file: !19, line: 360, baseType: !418, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1212, file: !19, line: 361, baseType: !616, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1212, file: !19, line: 362, baseType: !89, size: 32, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1172, file: !19, line: 438, baseType: !1231, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!89, !496, !1168, !1211}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1172, file: !19, line: 440, baseType: !1208, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1172, file: !19, line: 441, baseType: !1236, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!89, !496, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1240, file: !19, line: 412, baseType: !7, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1240, file: !19, line: 413, baseType: !1244, size: 1344, offset: 64)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 1344, elements: !266)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1257}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !19, line: 398, baseType: !7, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1245, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1245, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1245, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1245, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1245, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1245, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1245, file: !19, line: 406, baseType: !420, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1245, file: !19, line: 407, baseType: !1256, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !183, line: 132, baseType: !418)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1245, file: !19, line: 408, baseType: !1256, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1172, file: !19, line: 442, baseType: !1187, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !497, file: !14, line: 1200, baseType: !1260, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !497, file: !14, line: 1201, baseType: !315, size: 64, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !497, file: !14, line: 1202, baseType: !315, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !497, file: !14, line: 1203, baseType: !315, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !497, file: !14, line: 1204, baseType: !380, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !497, file: !14, line: 1205, baseType: !1268, size: 320, offset: 896)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1269, line: 48, size: 320, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1270 = !{!1271, !1272, !1273, !1274, !1275}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1268, file: !1269, line: 49, baseType: !610, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1268, file: !1269, line: 55, baseType: !610, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1268, file: !1269, line: 57, baseType: !620, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1268, file: !1269, line: 59, baseType: !564, size: 32, offset: 160)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1268, file: !1269, line: 60, baseType: !182, size: 128, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !497, file: !14, line: 1206, baseType: !89, size: 32, offset: 1216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !497, file: !14, line: 1207, baseType: !215, size: 32, offset: 1248)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !497, file: !14, line: 1209, baseType: !172, size: 64, offset: 1280)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !497, file: !14, line: 1211, baseType: !1280, size: 64, offset: 1344)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !497, file: !14, line: 1223, baseType: !1285, size: 64, offset: 1408)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !397, line: 34, size: 64, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1285, file: !397, line: 35, baseType: !400, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !497, file: !14, line: 1224, baseType: !182, size: 128, offset: 1472)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !497, file: !14, line: 1225, baseType: !1290, size: 64, offset: 1600)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1292, line: 40, size: 7424, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!1293 = !{!1294, !1296, !1297, !3100, !3101, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3144, !3145}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !1291, file: !1292, line: 41, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !183, line: 131, baseType: !418)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !1291, file: !1292, line: 42, baseType: !1295, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1291, file: !1292, line: 43, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !57, line: 128, size: 4544, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1306, !1307, !1308, !1315, !1316, !2454, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3066, !3067, !3068, !3069, !3072, !3073, !3076, !3079, !3080, !3083, !3084, !3085, !3086}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1299, file: !57, line: 133, baseType: !89, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !1299, file: !57, line: 134, baseType: !89, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !1299, file: !57, line: 135, baseType: !89, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !1299, file: !57, line: 137, baseType: !1305, size: 256, offset: 96)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !427)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1299, file: !57, line: 139, baseType: !235, size: 16, offset: 352)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1299, file: !57, line: 140, baseType: !235, size: 16, offset: 368)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !1299, file: !57, line: 142, baseType: !1309, size: 128, offset: 384)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1310, line: 296, size: 128, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1311 = !{!1312, !1313, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1309, file: !1310, line: 297, baseType: !195, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1309, file: !1310, line: 299, baseType: !1120, size: 32, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1309, file: !1310, line: 300, baseType: !172, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !1299, file: !57, line: 143, baseType: !1290, size: 64, offset: 512)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !1299, file: !57, line: 145, baseType: !1317, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !57, line: 1388, size: 1152, elements: !1320)
!1320 = !{!1321, !2370, !2374, !2379, !2383, !2387, !2388, !2392, !2393, !2399, !2403, !2404, !2408, !2434, !2439, !2444, !2445, !2449}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !1319, file: !57, line: 1389, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1292, line: 265, size: 960, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1332, !1333, !1334, !1336, !1337, !1345, !1347, !1350, !1351, !1354, !1358, !1359, !1361, !1362, !1363, !1364, !2323, !2368}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !1326, file: !1292, line: 266, baseType: !1325, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !1326, file: !1292, line: 267, baseType: !1290, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !1326, file: !1292, line: 268, baseType: !1331, size: 32, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !1292, line: 256, baseType: !415)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !1326, file: !1292, line: 271, baseType: !235, size: 16, offset: 160)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !1326, file: !1292, line: 272, baseType: !235, size: 16, offset: 176)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !1326, file: !1292, line: 273, baseType: !1335, size: 8, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1292, line: 97, baseType: !223)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !1326, file: !1292, line: 274, baseType: !215, size: 32, offset: 224)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !1326, file: !1292, line: 276, baseType: !1338, size: 160, align: 32, offset: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1339, line: 77, size: 160, align: 32, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !1338, file: !1339, line: 78, baseType: !1295, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !1338, file: !1339, line: 80, baseType: !7, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !1338, file: !1339, line: 82, baseType: !7, size: 32, offset: 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !1338, file: !1339, line: 84, baseType: !7, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !1326, file: !1292, line: 278, baseType: !1346, size: 32, offset: 416)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1292, line: 258, baseType: !7)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !1326, file: !1292, line: 279, baseType: !1348, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1292, line: 20, baseType: !1323)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !1326, file: !1292, line: 280, baseType: !172, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !1326, file: !1292, line: 288, baseType: !1352, size: 64, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !1292, line: 288, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !1326, file: !1292, line: 289, baseType: !1355, size: 64, offset: 640)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !1292, line: 228, size: 64, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1355, file: !1292, line: 229, baseType: !418, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !1326, file: !1292, line: 291, baseType: !418, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1292, line: 299, baseType: !1360, offset: 768)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1292, line: 299, elements: !895)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !1326, file: !1292, line: 305, baseType: !235, size: 16, offset: 768)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !1326, file: !1292, line: 311, baseType: !235, size: 16, offset: 784)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !1326, file: !1292, line: 313, baseType: !215, size: 32, offset: 800)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !1326, file: !1292, line: 315, baseType: !1365, size: 64, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1339, line: 31, size: 128, elements: !1367)
!1367 = !{!1368, !2321, !2322}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1366, file: !1339, line: 32, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !41, line: 74, size: 512, align: 128, elements: !1371)
!1371 = !{!1372, !1373, !2315, !2320}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1370, file: !41, line: 75, baseType: !315, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !41, line: 83, baseType: !1374, size: 320, offset: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !41, line: 83, size: 320, elements: !1375)
!1375 = !{!1376, !1397, !1411, !1415, !2314}
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !41, line: 84, baseType: !1377, size: 320)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !41, line: 84, size: 320, elements: !1378)
!1378 = !{!1379, !1390, !1391, !1396}
!1379 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !41, line: 90, baseType: !1380, size: 128)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !41, line: 90, size: 128, elements: !1381)
!1381 = !{!1382, !1383, !1388, !1389}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1380, file: !41, line: 91, baseType: !182, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !41, line: 94, baseType: !1384, size: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !41, line: 94, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1384, file: !41, line: 96, baseType: !172, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1384, file: !41, line: 98, baseType: !7, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1380, file: !41, line: 102, baseType: !182, size: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1380, file: !41, line: 103, baseType: !182, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1377, file: !41, line: 106, baseType: !341, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !41, line: 107, baseType: !1392, size: 64, offset: 192)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !41, line: 107, size: 64, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1392, file: !41, line: 108, baseType: !315, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1392, file: !41, line: 109, baseType: !315, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1377, file: !41, line: 117, baseType: !315, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !41, line: 119, baseType: !1398, size: 320)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !41, line: 119, size: 320, elements: !1399)
!1399 = !{!1400, !1401, !1404, !1405, !1406}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1398, file: !41, line: 124, baseType: !315, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1398, file: !41, line: 125, baseType: !1402, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !41, line: 125, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1398, file: !41, line: 126, baseType: !315, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1398, file: !41, line: 127, baseType: !315, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !41, line: 128, baseType: !1407, size: 64, offset: 256)
!1407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !41, line: 128, size: 64, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1407, file: !41, line: 133, baseType: !315, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1407, file: !41, line: 138, baseType: !610, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !41, line: 141, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !41, line: 141, size: 64, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1412, file: !41, line: 142, baseType: !315, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !41, line: 144, baseType: !1416, size: 128)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !41, line: 144, size: 128, elements: !1417)
!1417 = !{!1418, !2313}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1416, file: !41, line: 146, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !25, line: 126, size: 1216, elements: !1421)
!1421 = !{!1422, !1432, !1453, !1454, !1455, !1456, !1457, !2295, !2296, !2297}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1420, file: !25, line: 127, baseType: !1423, size: 384)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !25, line: 21, size: 384, elements: !1424)
!1424 = !{!1425, !1426, !1428, !1429, !1430, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1423, file: !25, line: 22, baseType: !315, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1423, file: !25, line: 23, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1423, file: !25, line: 24, baseType: !1427, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1423, file: !25, line: 25, baseType: !315, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1423, file: !25, line: 26, baseType: !315, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1423, file: !25, line: 27, baseType: !315, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1420, file: !25, line: 128, baseType: !1433, size: 128, offset: 384)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1434, line: 105, size: 128, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1433, file: !1434, line: 110, baseType: !315, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1433, file: !1434, line: 118, baseType: !1438, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1434, line: 95, size: 448, elements: !1440)
!1440 = !{!1441, !1442, !1448, !1449, !1450, !1451, !1452}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1439, file: !1434, line: 96, baseType: !610, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1439, file: !1434, line: 97, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1434, line: 60, baseType: !1445)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1439, file: !1434, line: 98, baseType: !1443, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1439, file: !1434, line: 99, baseType: !686, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1439, file: !1434, line: 100, baseType: !686, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1439, file: !1434, line: 101, baseType: !826, size: 128, align: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1439, file: !1434, line: 102, baseType: !1447, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1420, file: !25, line: 129, baseType: !555, size: 256, offset: 512)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1420, file: !25, line: 130, baseType: !24, size: 32, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !25, line: 131, baseType: !7, size: 32, offset: 800)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1420, file: !25, line: 132, baseType: !315, size: 64, offset: 832)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1420, file: !25, line: 133, baseType: !1458, size: 64, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !25, line: 77, size: 192, elements: !1461)
!1461 = !{!1462, !1466, !2291}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1460, file: !25, line: 83, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1369}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1460, file: !25, line: 89, baseType: !1467, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !41, line: 1184, baseType: !7)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1473, line: 512, size: 896, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1474 = !{!1475, !2258, !2259, !2266, !2273, !2283, !2284, !2285, !2287, !2289}
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 513, baseType: !1476, size: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !1473, line: 513, size: 320, elements: !1477)
!1477 = !{!1478, !2254, !2255, !2256, !2257}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1476, file: !1473, line: 514, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !41, line: 625, size: 1344, elements: !1481)
!1481 = !{!1482, !1491, !2159, !2165, !2172, !2173, !2178, !2179, !2184, !2185, !2188, !2247, !2248, !2249, !2250, !2251, !2252}
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !41, line: 628, baseType: !1483, size: 128)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !41, line: 628, size: 128, elements: !1484)
!1484 = !{!1485, !1490}
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !41, line: 629, baseType: !1486, size: 128)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1483, file: !41, line: 629, size: 128, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1486, file: !41, line: 631, baseType: !315, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1486, file: !41, line: 632, baseType: !315, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1483, file: !41, line: 635, baseType: !826, size: 128, align: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1480, file: !41, line: 639, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !41, line: 733, size: 10240, elements: !1494)
!1494 = !{!1495, !2157}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !41, line: 734, baseType: !1496, size: 10240)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !41, line: 734, size: 10240, elements: !1497)
!1497 = !{!1498, !1502, !1515, !2032, !2033, !2034, !2035, !2036, !2037, !2046, !2047, !2048, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2087, !2089, !2092, !2137, !2138, !2139, !2142, !2143, !2144, !2147, !2148, !2149, !2155, !2156}
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !41, line: 739, baseType: !1499, size: 512, align: 512)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1496, file: !41, line: 739, size: 512, align: 512, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1499, file: !41, line: 747, baseType: !215, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1496, file: !41, line: 750, baseType: !1503, size: 128, offset: 512)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1504, line: 218, size: 128, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1505 = !{!1506, !1513, !1514}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !1504, line: 219, baseType: !1507, size: 32)
!1507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1503, file: !1504, line: 219, size: 32, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1507, file: !1504, line: 220, baseType: !195, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1507, file: !1504, line: 221, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1504, line: 197, baseType: !1512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1504, line: 197, elements: !895)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1503, file: !1504, line: 223, baseType: !7, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1503, file: !1504, line: 224, baseType: !172, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1496, file: !41, line: 752, baseType: !1516, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!315, !1519, !315, !315, !315, !315}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1521)
!1521 = !{!1522, !1533, !1534, !1536, !1537, !1538, !1539, !1540, !1601, !1791, !1800, !1801, !1802, !2022, !2023, !2024, !2025, !2027, !2028, !2031}
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !14, line: 995, baseType: !1523, size: 128)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !14, line: 995, size: 128, elements: !1524)
!1524 = !{!1525, !1531, !1532}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1523, file: !14, line: 996, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1527, line: 60, size: 64, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1526, file: !1527, line: 61, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1523, file: !14, line: 997, baseType: !826, size: 128, align: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1523, file: !14, line: 998, baseType: !7, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1520, file: !14, line: 1005, baseType: !195, size: 32, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1520, file: !14, line: 1006, baseType: !1535, size: 32, offset: 160)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !183, line: 156, baseType: !7)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1520, file: !14, line: 1007, baseType: !610, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1520, file: !14, line: 1008, baseType: !606, size: 256, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1520, file: !14, line: 1009, baseType: !506, size: 64, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1520, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1520, file: !14, line: 1011, baseType: !1541, size: 256, offset: 640)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1542)
!1542 = !{!1543, !1564, !1597, !1598, !1599, !1600}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1541, file: !14, line: 949, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1545, line: 34, baseType: !1546)
!1545 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1545, line: 25, size: 64, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1546, file: !1545, line: 26, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1550, line: 27, baseType: !1551)
!1550 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1550, line: 13, size: 64, elements: !1552)
!1552 = !{!1553, !1563}
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !1550, line: 14, baseType: !1554, size: 32)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !1550, line: 14, size: 32, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1554, file: !1550, line: 15, baseType: !215, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !1550, line: 16, baseType: !1558, size: 32)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !1550, line: 16, size: 32, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1558, file: !1550, line: 18, baseType: !223, size: 8)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1558, file: !1550, line: 19, baseType: !1562, size: 24, offset: 8)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 24, elements: !266)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1551, file: !1550, line: 26, baseType: !207, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1541, file: !14, line: 950, baseType: !1565, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !33, line: 59, size: 768, elements: !1567)
!1567 = !{!1568, !1574, !1575, !1576, !1578, !1579, !1586, !1587}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1566, file: !33, line: 61, baseType: !1569, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1570, line: 113, baseType: !1571)
!1570 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1570, line: 111, size: 32, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1571, file: !1570, line: 112, baseType: !215, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1566, file: !33, line: 62, baseType: !7, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1566, file: !33, line: 63, baseType: !195, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1566, file: !33, line: 65, baseType: !1577, size: 256, offset: 128)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 256, elements: !836)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1566, file: !33, line: 66, baseType: !976, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1566, file: !33, line: 68, baseType: !1580, size: 192, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1581, line: 41, baseType: !1582)
!1581 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1581, line: 37, size: 192, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1582, file: !1581, line: 38, baseType: !195, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1582, file: !1581, line: 39, baseType: !182, size: 128, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1566, file: !33, line: 69, baseType: !826, size: 128, align: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1566, file: !33, line: 70, baseType: !1588, offset: 768)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1589, elements: !1595)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !33, line: 54, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1589, file: !33, line: 55, baseType: !89, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1589, file: !33, line: 56, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !33, line: 56, flags: DIFlagFwdDecl)
!1595 = !{!1596}
!1596 = !DISubrange(count: -1)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1541, file: !14, line: 951, baseType: !32, size: 32, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1541, file: !14, line: 952, baseType: !351, size: 32, offset: 160)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1541, file: !14, line: 952, baseType: !351, size: 32, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1541, file: !14, line: 953, baseType: !89, size: 32, offset: 224)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1520, file: !14, line: 1012, baseType: !1602, size: 64, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1605, line: 110, size: 1472, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1623, !1624, !1625, !1626, !1627, !1628, !1736, !1737, !1738, !1739, !1740, !1771, !1774, !1778, !1786}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1605, line: 111, baseType: !610, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1604, file: !1605, line: 112, baseType: !351, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1604, file: !1605, line: 113, baseType: !360, size: 32, offset: 96)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1604, file: !1605, line: 114, baseType: !351, size: 32, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1604, file: !1605, line: 115, baseType: !360, size: 32, offset: 160)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1604, file: !1605, line: 116, baseType: !351, size: 32, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1604, file: !1605, line: 117, baseType: !360, size: 32, offset: 224)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1604, file: !1605, line: 118, baseType: !351, size: 32, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1604, file: !1605, line: 119, baseType: !360, size: 32, offset: 288)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1604, file: !1605, line: 120, baseType: !7, size: 32, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1604, file: !1605, line: 121, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1619, line: 24, baseType: !1620)
!1619 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1619, line: 24, size: 64, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1620, file: !1619, line: 24, baseType: !418, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1604, file: !1605, line: 122, baseType: !1618, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1604, file: !1605, line: 123, baseType: !1618, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1604, file: !1605, line: 124, baseType: !1618, size: 64, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1604, file: !1605, line: 125, baseType: !1618, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1604, file: !1605, line: 127, baseType: !227, size: 8, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1604, file: !1605, line: 129, baseType: !1629, size: 64, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1631, line: 195, size: 1728, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1632 = !{!1633, !1634, !1637, !1642, !1643, !1646, !1647, !1652, !1653, !1654, !1655, !1658, !1659, !1660, !1661, !1662, !1700, !1721}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1630, file: !1631, line: 196, baseType: !1569, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1630, file: !1631, line: 197, baseType: !1635, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1631, line: 28, baseType: !1636)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !183, line: 104, baseType: !602)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 198, baseType: !1638, size: 192, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 198, size: 192, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1638, file: !1631, line: 199, baseType: !182, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1638, file: !1631, line: 200, baseType: !718, size: 192, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1630, file: !1631, line: 205, baseType: !1268, size: 320, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1630, file: !1631, line: 206, baseType: !1644, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1631, line: 206, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1630, file: !1631, line: 207, baseType: !172, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 208, baseType: !1648, size: 64, offset: 704)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 208, size: 64, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1648, file: !1631, line: 209, baseType: !1108, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1648, file: !1631, line: 210, baseType: !1108, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1630, file: !1631, line: 212, baseType: !1108, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1630, file: !1631, line: 213, baseType: !351, size: 32, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1630, file: !1631, line: 214, baseType: !360, size: 32, offset: 864)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1630, file: !1631, line: 215, baseType: !1656, size: 32, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1631, line: 31, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !183, line: 110, baseType: !414)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1630, file: !1631, line: 216, baseType: !235, size: 16, offset: 928)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1630, file: !1631, line: 217, baseType: !235, size: 16, offset: 944)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1630, file: !1631, line: 221, baseType: !744, size: 16, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1631, line: 228, baseType: !315, size: 64, offset: 1024)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 245, baseType: !1663, size: 320, offset: 1088)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 245, size: 320, elements: !1664)
!1664 = !{!1665, !1692}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1663, file: !1631, line: 246, baseType: !1666, size: 320)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1631, line: 114, size: 320, elements: !1667)
!1667 = !{!1668, !1669, !1681, !1684, !1691}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1666, file: !1631, line: 116, baseType: !315, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !1631, line: 117, baseType: !1670, size: 64, offset: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !1631, line: 117, size: 64, elements: !1671)
!1671 = !{!1672, !1680}
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !1631, line: 118, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !1631, line: 118, size: 64, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1673, file: !1631, line: 120, baseType: !233, size: 16)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1673, file: !1631, line: 121, baseType: !1677, size: 48, offset: 16)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 48, elements: !1678)
!1678 = !{!1679}
!1679 = !DISubrange(count: 6)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1670, file: !1631, line: 127, baseType: !315, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1666, file: !1631, line: 129, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1631, line: 102, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1666, file: !1631, line: 130, baseType: !1685, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1631, line: 108, size: 192, elements: !1687)
!1687 = !{!1688, !1689, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1686, file: !1631, line: 109, baseType: !826, size: 128, align: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1686, file: !1631, line: 110, baseType: !1569, size: 32, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1686, file: !1631, line: 111, baseType: !686, size: 8, offset: 160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1666, file: !1631, line: 131, baseType: !178, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !1631, line: 247, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !1631, line: 247, size: 320, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1693, file: !1631, line: 248, baseType: !315, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1693, file: !1631, line: 249, baseType: !315, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1693, file: !1631, line: 250, baseType: !1682, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1693, file: !1631, line: 251, baseType: !1685, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1693, file: !1631, line: 252, baseType: !265, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 260, baseType: !1701, size: 256, offset: 1408)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 260, size: 256, elements: !1702)
!1702 = !{!1703, !1709}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1701, file: !1631, line: 261, baseType: !1704, size: 256)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1631, line: 134, size: 256, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1704, file: !1631, line: 135, baseType: !172, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1704, file: !1631, line: 136, baseType: !1708, size: 256)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !836)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !1631, line: 262, baseType: !1710, size: 256)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !1631, line: 262, size: 256, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1710, file: !1631, line: 264, baseType: !182, size: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1710, file: !1631, line: 265, baseType: !1714, size: 128, offset: 128)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1715, line: 22, size: 128, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1716 = !{!1717, !1720}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1714, file: !1715, line: 23, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1715, line: 23, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1714, file: !1715, line: 24, baseType: !315, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1630, file: !1631, line: 280, baseType: !1722, size: 64, offset: 1664)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1631, line: 176, size: 192, elements: !1724)
!1724 = !{!1725, !1734, !1735}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1723, file: !1631, line: 177, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1631, line: 171, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!89, !1629, !1730, !1732, !1629}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1723, file: !1631, line: 178, baseType: !1629, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1723, file: !1631, line: 179, baseType: !1682, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1604, file: !1605, line: 130, baseType: !1629, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1604, file: !1605, line: 131, baseType: !1629, size: 64, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1604, file: !1605, line: 132, baseType: !1629, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1604, file: !1605, line: 135, baseType: !172, size: 64, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1604, file: !1605, line: 137, baseType: !1741, size: 64, offset: 1088)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1743, line: 14, size: 1088, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1744 = !{!1745, !1746, !1755, !1756, !1757, !1758, !1759, !1760}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1742, file: !1743, line: 15, baseType: !1569, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1742, file: !1743, line: 17, baseType: !1747, size: 320, offset: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1748, line: 22, size: 320, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1749 = !{!1750, !1751, !1752, !1753}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1747, file: !1748, line: 23, baseType: !564, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1747, file: !1748, line: 24, baseType: !616, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1747, file: !1748, line: 26, baseType: !182, size: 128, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1747, file: !1748, line: 28, baseType: !1754, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1742, file: !1743, line: 19, baseType: !315, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1742, file: !1743, line: 20, baseType: !610, size: 64, offset: 448)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1742, file: !1743, line: 23, baseType: !852, size: 128, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1742, file: !1743, line: 24, baseType: !351, size: 32, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1742, file: !1743, line: 29, baseType: !610, size: 64, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1742, file: !1743, line: 36, baseType: !1761, size: 320, offset: 768)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1762, line: 15, size: 320, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1761, file: !1762, line: 16, baseType: !564, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1761, file: !1762, line: 18, baseType: !89, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1761, file: !1762, line: 19, baseType: !89, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1761, file: !1762, line: 20, baseType: !89, size: 32, offset: 96)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1761, file: !1762, line: 21, baseType: !89, size: 32, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1761, file: !1762, line: 22, baseType: !315, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 23, baseType: !315, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1604, file: !1605, line: 138, baseType: !1772, size: 64, offset: 1152)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !41, line: 901, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1604, file: !1605, line: 139, baseType: !1775, size: 64, offset: 1216)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1777, line: 16, flags: DIFlagFwdDecl)
!1777 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1604, file: !1605, line: 140, baseType: !1779, size: 64, offset: 1280)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1605, line: 25, size: 64, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1780, file: !1605, line: 26, baseType: !215, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1780, file: !1605, line: 27, baseType: !89, size: 32, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1780, file: !1605, line: 28, baseType: !1785, offset: 64)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, elements: !1595)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 142, baseType: !1787, size: 128, offset: 1344)
!1787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 142, size: 128, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1787, file: !1605, line: 143, baseType: !89, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1787, file: !1605, line: 144, baseType: !826, size: 128, align: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1520, file: !14, line: 1013, baseType: !1792, size: 256, offset: 960)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1792, file: !14, line: 971, baseType: !315, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1792, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1792, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1792, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1792, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1792, file: !14, line: 976, baseType: !506, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1520, file: !14, line: 1014, baseType: !1180, size: 128, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1520, file: !14, line: 1015, baseType: !345, size: 64, offset: 1344)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1520, file: !14, line: 1016, baseType: !1803, size: 64, offset: 1408)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1806)
!1806 = !{!1807, !1808, !1812, !1817, !1821, !1898, !1899, !1914, !1927, !1935, !1939, !1940, !1944, !1945, !1949, !1954, !1955, !1959, !1963, !1969, !1970, !1974, !1975, !1981, !1985, !1989, !1995, !1999, !2003, !2007, !2011, !2012, !2018}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1805, file: !14, line: 1915, baseType: !535, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1805, file: !14, line: 1916, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!506, !1519, !506, !89}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1805, file: !14, line: 1917, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!297, !1519, !265, !312, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1805, file: !14, line: 1918, baseType: !1818, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!297, !1519, !178, !312, !1816}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1805, file: !14, line: 1919, baseType: !1822, size: 64, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!297, !1825, !1847}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1834, !1835, !1836, !1837}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1826, file: !14, line: 374, baseType: !1519, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1826, file: !14, line: 375, baseType: !506, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1826, file: !14, line: 376, baseType: !1831, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1825, !301}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1826, file: !14, line: 377, baseType: !172, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1826, file: !14, line: 378, baseType: !89, size: 32, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1826, file: !14, line: 379, baseType: !233, size: 16, offset: 288)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !14, line: 380, baseType: !1838, size: 64, offset: 320)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !14, line: 380, size: 64, elements: !1839)
!1839 = !{!1840, !1843}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1838, file: !14, line: 386, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1838, file: !14, line: 395, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!297, !172}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1849, line: 41, size: 320, elements: !1850)
!1849 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1861, !1893}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1848, file: !1849, line: 42, baseType: !223, size: 8)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1848, file: !1849, line: 43, baseType: !686, size: 8, offset: 8)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1848, file: !1849, line: 44, baseType: !686, size: 8, offset: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1848, file: !1849, line: 45, baseType: !686, size: 8, offset: 24)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1848, file: !1849, line: 46, baseType: !686, size: 8, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1849, line: 47, baseType: !1857, size: 64, offset: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1849, line: 47, size: 64, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1857, file: !1849, line: 48, baseType: !312, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1857, file: !1849, line: 49, baseType: !89, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1849, line: 61, baseType: !1862, size: 128, offset: 128)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1849, line: 61, size: 128, elements: !1863)
!1863 = !{!1864, !1870}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1862, file: !1849, line: 67, baseType: !1865, size: 128)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1866, line: 17, size: 128, elements: !1867)
!1866 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1865, file: !1866, line: 19, baseType: !172, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1865, file: !1866, line: 20, baseType: !313, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !1849, line: 68, baseType: !1871, size: 128)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !1849, line: 68, size: 128, elements: !1872)
!1872 = !{!1873, !1892}
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1849, line: 69, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1849, line: 69, size: 64, elements: !1875)
!1875 = !{!1876, !1879, !1886, !1889, !1891}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1874, file: !1849, line: 71, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1874, file: !1849, line: 72, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1849, line: 17, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1882, file: !1849, line: 18, baseType: !172, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1882, file: !1849, line: 19, baseType: !312, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1874, file: !1849, line: 73, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1874, file: !1849, line: 74, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1874, file: !1849, line: 75, baseType: !172, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1871, file: !1849, line: 77, baseType: !312, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1849, line: 80, baseType: !1894, size: 64, offset: 256)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1849, line: 80, size: 64, elements: !1895)
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1894, file: !1849, line: 81, baseType: !315, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1894, file: !1849, line: 82, baseType: !506, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1805, file: !14, line: 1920, baseType: !1822, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1805, file: !14, line: 1921, baseType: !1900, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!89, !1825, !1903, !7}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !57, line: 1559, size: 192, elements: !1905)
!1905 = !{!1906, !1909, !1910}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1904, file: !57, line: 1560, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !57, line: 32, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1904, file: !57, line: 1561, baseType: !686, size: 8, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1904, file: !57, line: 1562, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !1903}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1805, file: !14, line: 1923, baseType: !1915, size: 64, offset: 448)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!89, !1519, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1920)
!1920 = !{!1921, !1926}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1919, file: !14, line: 1859, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!686, !1918, !178, !89, !506, !418, !7}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1919, file: !14, line: 1860, baseType: !506, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1805, file: !14, line: 1924, baseType: !1928, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1931, !1519, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1932, line: 59, baseType: !7)
!1932 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !521, line: 31, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1805, file: !14, line: 1925, baseType: !1936, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!301, !1519, !7, !315}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1805, file: !14, line: 1926, baseType: !1936, size: 64, offset: 640)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1805, file: !14, line: 1927, baseType: !1941, size: 64, offset: 704)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!89, !1519, !1479}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1805, file: !14, line: 1928, baseType: !315, size: 64, offset: 768)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1805, file: !14, line: 1929, baseType: !1946, size: 64, offset: 832)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!89, !345, !1519}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1805, file: !14, line: 1930, baseType: !1950, size: 64, offset: 896)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!89, !1519, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !172)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1805, file: !14, line: 1931, baseType: !1946, size: 64, offset: 960)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1805, file: !14, line: 1932, baseType: !1956, size: 64, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!89, !1519, !506, !506, !89}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1805, file: !14, line: 1933, baseType: !1960, size: 64, offset: 1088)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!89, !89, !1519, !89}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1805, file: !14, line: 1934, baseType: !1964, size: 64, offset: 1152)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!89, !1519, !89, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1805, file: !14, line: 1935, baseType: !1516, size: 64, offset: 1216)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1805, file: !14, line: 1936, baseType: !1971, size: 64, offset: 1280)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!89, !89}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1805, file: !14, line: 1937, baseType: !1964, size: 64, offset: 1344)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1805, file: !14, line: 1938, baseType: !1976, size: 64, offset: 1408)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!297, !1979, !1519, !1816, !312, !7}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1050, line: 59, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1805, file: !14, line: 1939, baseType: !1982, size: 64, offset: 1472)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!297, !1519, !1816, !1979, !312, !7}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1805, file: !14, line: 1940, baseType: !1986, size: 64, offset: 1536)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1519}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1805, file: !14, line: 1941, baseType: !1990, size: 64, offset: 1600)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!89, !1519, !89, !1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1805, file: !14, line: 1942, baseType: !1996, size: 64, offset: 1664)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!301, !1519, !89, !506, !506}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1805, file: !14, line: 1944, baseType: !2000, size: 64, offset: 1728)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1048, !1519}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1805, file: !14, line: 1948, baseType: !2004, size: 64, offset: 1792)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!297, !1519, !506, !1519, !506, !312, !7}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1805, file: !14, line: 1950, baseType: !2008, size: 64, offset: 1856)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!506, !1519, !506, !1519, !506, !506, !7}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1805, file: !14, line: 1953, baseType: !1956, size: 64, offset: 1920)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1805, file: !14, line: 1954, baseType: !2013, size: 64, offset: 1984)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!89, !2016, !7}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1805, file: !14, line: 1955, baseType: !2019, size: 64, offset: 2048)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!89, !2016, !1903, !7}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1520, file: !14, line: 1018, baseType: !418, size: 64, offset: 1472)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1520, file: !14, line: 1020, baseType: !172, size: 64, offset: 1536)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1520, file: !14, line: 1023, baseType: !172, size: 64, offset: 1600)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1520, file: !14, line: 1027, baseType: !2026, size: 64, offset: 1664)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1520, file: !14, line: 1029, baseType: !341, size: 64, offset: 1728)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1520, file: !14, line: 1030, baseType: !2029, size: 32, offset: 1792)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2030, line: 8, baseType: !414)
!2030 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1520, file: !14, line: 1031, baseType: !2029, size: 32, offset: 1824)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1496, file: !41, line: 756, baseType: !315, size: 64, offset: 704)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1496, file: !41, line: 757, baseType: !315, size: 64, offset: 768)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1496, file: !41, line: 760, baseType: !315, size: 64, offset: 832)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1496, file: !41, line: 761, baseType: !315, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1496, file: !41, line: 763, baseType: !315, size: 64, offset: 960)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1496, file: !41, line: 764, baseType: !2038, size: 64, offset: 1024)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2040, line: 299, baseType: !2041)
!2040 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2040, line: 299, size: 64, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2041, file: !2040, line: 299, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2045, line: 18, baseType: !315)
!2045 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1496, file: !41, line: 773, baseType: !215, size: 32, offset: 1088)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1496, file: !41, line: 785, baseType: !215, size: 32, offset: 1120)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1496, file: !41, line: 795, baseType: !2049, size: 64, offset: 1152)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !41, line: 726, size: 128, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2050, file: !41, line: 727, baseType: !418, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2050, file: !41, line: 728, baseType: !89, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1496, file: !41, line: 801, baseType: !315, size: 64, offset: 1216)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1496, file: !41, line: 804, baseType: !610, size: 64, offset: 1280)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1496, file: !41, line: 806, baseType: !89, size: 32, offset: 1344)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1496, file: !41, line: 808, baseType: !195, size: 32, offset: 1376)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1496, file: !41, line: 823, baseType: !1268, size: 320, offset: 1408)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1496, file: !41, line: 825, baseType: !182, size: 128, offset: 1728)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1496, file: !41, line: 845, baseType: !89, size: 32, offset: 1856)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1496, file: !41, line: 849, baseType: !315, size: 64, offset: 1920)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1496, file: !41, line: 850, baseType: !315, size: 64, offset: 1984)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1496, file: !41, line: 852, baseType: !315, size: 64, offset: 2048)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1496, file: !41, line: 853, baseType: !315, size: 64, offset: 2112)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1496, file: !41, line: 854, baseType: !612, size: 64, offset: 2176)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1496, file: !41, line: 855, baseType: !315, size: 64, offset: 2240)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1496, file: !41, line: 856, baseType: !315, size: 64, offset: 2304)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1496, file: !41, line: 857, baseType: !315, size: 64, offset: 2368)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1496, file: !41, line: 858, baseType: !315, size: 64, offset: 2432)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1496, file: !41, line: 865, baseType: !391, size: 32, offset: 2496)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1496, file: !41, line: 867, baseType: !195, size: 32, offset: 2528)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1496, file: !41, line: 869, baseType: !315, size: 64, offset: 2560)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1496, file: !41, line: 869, baseType: !315, size: 64, offset: 2624)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1496, file: !41, line: 869, baseType: !315, size: 64, offset: 2688)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1496, file: !41, line: 869, baseType: !315, size: 64, offset: 2752)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1496, file: !41, line: 870, baseType: !315, size: 64, offset: 2816)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1496, file: !41, line: 870, baseType: !315, size: 64, offset: 2880)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1496, file: !41, line: 870, baseType: !315, size: 64, offset: 2944)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1496, file: !41, line: 871, baseType: !315, size: 64, offset: 3008)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1496, file: !41, line: 871, baseType: !315, size: 64, offset: 3072)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1496, file: !41, line: 871, baseType: !315, size: 64, offset: 3136)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1496, file: !41, line: 871, baseType: !315, size: 64, offset: 3200)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1496, file: !41, line: 873, baseType: !2084, size: 3328, offset: 3264)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 3328, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 52)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1496, file: !41, line: 875, baseType: !2088, size: 1280, offset: 6592)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1747, size: 1280, elements: !836)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1496, file: !41, line: 877, baseType: !2090, size: 64, offset: 7872)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !41, line: 877, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1496, file: !41, line: 880, baseType: !2093, size: 1088, offset: 7936)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2094, line: 72, baseType: !2095)
!2094 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2094, line: 23, size: 1088, elements: !2096)
!2096 = !{!2097, !2098, !2099, !2100, !2101, !2104, !2105, !2106, !2107, !2134, !2135, !2136}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2095, file: !2094, line: 28, baseType: !418, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2095, file: !2094, line: 38, baseType: !612, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2095, file: !2094, line: 40, baseType: !315, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2095, file: !2094, line: 43, baseType: !1268, size: 320, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2095, file: !2094, line: 44, baseType: !2102, size: 64, offset: 512)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2094, line: 44, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !2094, line: 48, baseType: !315, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !2094, line: 59, baseType: !606, size: 256, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2095, file: !2094, line: 60, baseType: !172, size: 64, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2095, file: !2094, line: 61, baseType: !2108, size: 64, offset: 960)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2111, line: 13, size: 1216, elements: !2112)
!2111 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2110, file: !2111, line: 14, baseType: !172, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2110, file: !2111, line: 15, baseType: !315, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2110, file: !2111, line: 17, baseType: !315, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2110, file: !2111, line: 17, baseType: !315, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2110, file: !2111, line: 18, baseType: !315, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2110, file: !2111, line: 18, baseType: !315, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2110, file: !2111, line: 19, baseType: !2120, size: 64, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2110, file: !2111, line: 21, baseType: !301, size: 64, offset: 448)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2110, file: !2111, line: 23, baseType: !301, size: 64, offset: 512)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2110, file: !2111, line: 24, baseType: !301, size: 64, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2110, file: !2111, line: 25, baseType: !301, size: 64, offset: 640)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2110, file: !2111, line: 26, baseType: !301, size: 64, offset: 704)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2110, file: !2111, line: 27, baseType: !301, size: 64, offset: 768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2110, file: !2111, line: 28, baseType: !301, size: 64, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2110, file: !2111, line: 29, baseType: !301, size: 64, offset: 896)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2110, file: !2111, line: 30, baseType: !301, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2110, file: !2111, line: 31, baseType: !301, size: 64, offset: 1024)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2110, file: !2111, line: 32, baseType: !301, size: 64, offset: 1088)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2110, file: !2111, line: 33, baseType: !301, size: 64, offset: 1152)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2095, file: !2094, line: 63, baseType: !215, size: 32, offset: 1024)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2095, file: !2094, line: 69, baseType: !233, size: 16, offset: 1056)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2095, file: !2094, line: 70, baseType: !742, size: 16, offset: 1072)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1496, file: !41, line: 882, baseType: !315, size: 64, offset: 9024)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1496, file: !41, line: 885, baseType: !195, size: 32, offset: 9088)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1496, file: !41, line: 886, baseType: !2140, size: 64, offset: 9152)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !41, line: 732, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1496, file: !41, line: 901, baseType: !1772, size: 64, offset: 9216)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1496, file: !41, line: 904, baseType: !1519, size: 64, offset: 9280)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1496, file: !41, line: 906, baseType: !2145, size: 64, offset: 9344)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !41, line: 906, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1496, file: !41, line: 930, baseType: !215, size: 32, offset: 9408)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1496, file: !41, line: 933, baseType: !215, size: 32, offset: 9440)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1496, file: !41, line: 935, baseType: !2150, size: 64, offset: 9472)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !143, line: 103, size: 64, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2150, file: !143, line: 104, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !143, line: 101, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1496, file: !41, line: 940, baseType: !610, size: 64, offset: 9536)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1496, file: !41, line: 942, baseType: !866, size: 256, offset: 9600)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1493, file: !41, line: 986, baseType: !2158, offset: 10240)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !1595)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1480, file: !41, line: 640, baseType: !2160, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2040, line: 297, baseType: !2161)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2040, line: 297, size: 64, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2161, file: !2040, line: 297, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2045, line: 19, baseType: !315)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !41, line: 646, baseType: !2166, size: 64, offset: 256)
!2166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !41, line: 646, size: 64, elements: !2167)
!2167 = !{!2168, !2171}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2166, file: !41, line: 647, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !41, line: 542, baseType: !315)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2166, file: !41, line: 648, baseType: !2170, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1480, file: !41, line: 666, baseType: !89, size: 32, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1480, file: !41, line: 667, baseType: !2174, size: 64, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !41, line: 579, size: 320, elements: !2176)
!2176 = !{!2177}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2175, file: !41, line: 580, baseType: !1268, size: 320)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1480, file: !41, line: 670, baseType: !686, size: 8, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1480, file: !41, line: 681, baseType: !2180, size: 256, offset: 512)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1480, file: !41, line: 678, size: 256, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2180, file: !41, line: 679, baseType: !718, size: 192, align: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2180, file: !41, line: 680, baseType: !315, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1480, file: !41, line: 689, baseType: !182, size: 128, offset: 768)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1480, file: !41, line: 691, baseType: !2186, size: 64, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !41, line: 691, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1480, file: !41, line: 694, baseType: !2189, size: 64, offset: 960)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2191)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1473, line: 563, size: 1024, elements: !2192)
!2192 = !{!2193, !2197, !2198, !2202, !2206, !2210, !2211, !2215, !2219, !2223, !2224, !2225, !2229, !2233, !2239, !2243}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2191, file: !1473, line: 564, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !1479}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2191, file: !1473, line: 569, baseType: !2194, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2191, file: !1473, line: 571, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!89, !1479, !315}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2191, file: !1473, line: 572, baseType: !2203, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!89, !1479}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2191, file: !1473, line: 578, baseType: !2207, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!89, !1479, !315, !315, !315}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2191, file: !1473, line: 580, baseType: !1467, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2191, file: !1473, line: 581, baseType: !2212, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!1470, !1471, !7}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2191, file: !1473, line: 582, baseType: !2216, size: 64, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!1470, !1471, !315, !315}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2191, file: !1473, line: 584, baseType: !2220, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!315, !1479}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2191, file: !1473, line: 588, baseType: !1467, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2191, file: !1473, line: 591, baseType: !1467, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2191, file: !1473, line: 597, baseType: !2226, size: 64, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!89, !1479, !315, !172, !89, !89}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2191, file: !1473, line: 603, baseType: !2230, size: 64, offset: 768)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!178, !1479}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2191, file: !1473, line: 613, baseType: !2234, size: 64, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!89, !1479, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !41, line: 717, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2191, file: !1473, line: 625, baseType: !2240, size: 64, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2237, !1479, !315}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2191, file: !1473, line: 633, baseType: !2244, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!1369, !1479, !315}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1480, file: !41, line: 697, baseType: !315, size: 64, offset: 1024)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1480, file: !41, line: 699, baseType: !1519, size: 64, offset: 1088)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1480, file: !41, line: 700, baseType: !172, size: 64, offset: 1152)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1480, file: !41, line: 711, baseType: !610, size: 64, offset: 1216)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1480, file: !41, line: 717, baseType: !2237, size: 64, offset: 1280)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1480, file: !41, line: 722, baseType: !2253, offset: 1344)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !41, line: 570, elements: !895)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1476, file: !1473, line: 515, baseType: !1120, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1476, file: !1473, line: 516, baseType: !315, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1476, file: !1473, line: 517, baseType: !315, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1476, file: !1473, line: 518, baseType: !315, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !1473, line: 520, baseType: !40, size: 32, offset: 320)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1472, file: !1473, line: 522, baseType: !2260, size: 64, offset: 384)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2045, line: 22, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2045, line: 22, size: 64, elements: !2263)
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2262, file: !2045, line: 22, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2045, line: 15, baseType: !315)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1472, file: !1473, line: 524, baseType: !2267, size: 64, offset: 448)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2040, line: 372, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2040, line: 372, size: 64, elements: !2270)
!2270 = !{!2271}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2269, file: !2040, line: 372, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2045, line: 16, baseType: !315)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 527, baseType: !2274, size: 64, offset: 512)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !1473, line: 527, size: 64, elements: !2275)
!2275 = !{!2276, !2282}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2274, file: !1473, line: 528, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2045, line: 21, baseType: !2278)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2045, line: 21, size: 64, elements: !2279)
!2279 = !{!2280}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2278, file: !2045, line: 21, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2045, line: 14, baseType: !315)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2274, file: !1473, line: 529, baseType: !2261, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1472, file: !1473, line: 534, baseType: !1369, size: 64, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1472, file: !1473, line: 535, baseType: !1369, size: 64, offset: 640)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1472, file: !1473, line: 541, baseType: !2286, size: 64, offset: 704)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1472, file: !1473, line: 545, baseType: !2288, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1472, file: !1473, line: 549, baseType: !2290, size: 64, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2040, line: 520, baseType: !1369)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1460, file: !25, line: 100, baseType: !2292, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!89, !1419, !315, !315, !89}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1420, file: !25, line: 134, baseType: !172, size: 64, offset: 960)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1420, file: !25, line: 135, baseType: !89, size: 32, offset: 1024)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !25, line: 136, baseType: !2298, size: 128, offset: 1088)
!2298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !25, line: 136, size: 128, elements: !2299)
!2299 = !{!2300, !2306}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2298, file: !25, line: 137, baseType: !2301, size: 128)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2302, line: 6, size: 128, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2301, file: !2302, line: 7, baseType: !418, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2301, file: !2302, line: 8, baseType: !418, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !25, line: 138, baseType: !2307)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !25, line: 138, elements: !2308)
!2308 = !{!2309, !2311}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2307, file: !25, line: 138, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2307, file: !25, line: 138, elements: !895)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2307, file: !25, line: 138, baseType: !2312)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2301, elements: !1595)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1416, file: !41, line: 147, baseType: !172, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1374, file: !41, line: 161, baseType: !826, size: 128, align: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !41, line: 164, baseType: !2316, size: 32, offset: 384)
!2316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !41, line: 164, size: 32, elements: !2317)
!2317 = !{!2318, !2319}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2316, file: !41, line: 169, baseType: !215, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2316, file: !41, line: 177, baseType: !7, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1370, file: !41, line: 181, baseType: !215, size: 32, offset: 416)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1366, file: !1339, line: 33, baseType: !7, size: 32, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1366, file: !1339, line: 34, baseType: !7, size: 32, offset: 96)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !1326, file: !1292, line: 317, baseType: !2324, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2326, line: 678, size: 1984, elements: !2327)
!2326 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2327 = !{!2328, !2332, !2333, !2336, !2357, !2358, !2359, !2360, !2365, !2366, !2367}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2325, file: !2326, line: 679, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2331, line: 11, flags: DIFlagFwdDecl)
!2331 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2325, file: !2326, line: 680, baseType: !7, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2325, file: !2326, line: 685, baseType: !2334, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2326, line: 685, flags: DIFlagFwdDecl)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2325, file: !2326, line: 687, baseType: !2337, size: 576, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2338, line: 26, baseType: !2339)
!2338 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2338, line: 16, size: 576, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2351, !2356}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2339, file: !2338, line: 17, baseType: !195, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2339, file: !2338, line: 18, baseType: !89, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2339, file: !2338, line: 19, baseType: !89, size: 32, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2339, file: !2338, line: 20, baseType: !1994, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2339, file: !2338, line: 22, baseType: !172, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2339, file: !2338, line: 23, baseType: !2347, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2338, line: 13, baseType: !2349)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!172, !1120, !172}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2339, file: !2338, line: 24, baseType: !2352, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2338, line: 14, baseType: !2354)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !172, !172}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2339, file: !2338, line: 25, baseType: !1580, size: 192, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2325, file: !2326, line: 688, baseType: !2337, size: 576, offset: 768)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2325, file: !2326, line: 694, baseType: !7, size: 32, offset: 1344)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2325, file: !2326, line: 699, baseType: !195, size: 32, offset: 1376)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2325, file: !2326, line: 700, baseType: !2361, size: 128, offset: 1408)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2326, line: 550, size: 128, elements: !2362)
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2361, file: !2326, line: 551, baseType: !1325, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2361, file: !2326, line: 552, baseType: !1325, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2325, file: !2326, line: 701, baseType: !866, size: 256, offset: 1536)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2325, file: !2326, line: 702, baseType: !928, size: 64, offset: 1792)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2325, file: !2326, line: 707, baseType: !852, size: 128, offset: 1856)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !1326, file: !1292, line: 324, baseType: !2369, offset: 960)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, elements: !1595)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !1319, file: !57, line: 1390, baseType: !2371, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!89, !1325, !1903, !7}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1319, file: !57, line: 1392, baseType: !2375, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!89, !1298, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !57, line: 115, baseType: !7)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1319, file: !57, line: 1393, baseType: !2380, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !1298}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !1319, file: !57, line: 1394, baseType: !2384, size: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!89, !1290, !2378, !7, !315}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1319, file: !57, line: 1396, baseType: !2384, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !1319, file: !57, line: 1398, baseType: !2389, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!7, !1298, !7}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !1319, file: !57, line: 1400, baseType: !2380, size: 64, offset: 448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !1319, file: !57, line: 1401, baseType: !2394, size: 64, offset: 512)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!89, !1290, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !14, line: 56, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !1319, file: !57, line: 1402, baseType: !2400, size: 64, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!89, !1290, !686}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !1319, file: !57, line: 1403, baseType: !2380, size: 64, offset: 640)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !1319, file: !57, line: 1405, baseType: !2405, size: 64, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !1290, !315}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !1319, file: !57, line: 1406, baseType: !2409, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!89, !1298, !1295, !7, !2412, !172}
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !57, line: 342, baseType: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!89, !2416, !7, !172}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2418, line: 106, size: 512, elements: !2419)
!2418 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2429, !2430}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2417, file: !2418, line: 107, baseType: !419, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2417, file: !2418, line: 108, baseType: !419, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2417, file: !2418, line: 109, baseType: !419, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2417, file: !2418, line: 110, baseType: !225, size: 8, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2417, file: !2418, line: 111, baseType: !225, size: 8, offset: 200)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2417, file: !2418, line: 112, baseType: !225, size: 8, offset: 208)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2417, file: !2418, line: 113, baseType: !225, size: 8, offset: 216)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2417, file: !2418, line: 114, baseType: !2428, size: 32, offset: 224)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 32, elements: !836)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2417, file: !2418, line: 115, baseType: !419, size: 64, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2417, file: !2418, line: 116, baseType: !2431, size: 192, offset: 320)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 192, elements: !2432)
!2432 = !{!2433}
!2433 = !DISubrange(count: 24)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1319, file: !57, line: 1408, baseType: !2435, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!265, !1298, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !1319, file: !57, line: 1410, baseType: !2440, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!89, !1298, !2443, !56}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1319, file: !57, line: 1412, baseType: !535, size: 64, offset: 960)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !1319, file: !57, line: 1413, baseType: !2446, size: 64, offset: 1024)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !57, line: 37, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !1319, file: !57, line: 1420, baseType: !2450, size: 64, offset: 1088)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!89, !1298, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1299, file: !57, line: 146, baseType: !2455, size: 64, offset: 640)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !57, line: 391, size: 7296, elements: !2457)
!2457 = !{!2458, !2459, !2462, !2463, !2466, !2469, !2470, !2474, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2986, !2987, !2991, !2992, !2993, !2994, !3027, !3028, !3029, !3032, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3051, !3052, !3053, !3054, !3055, !3056}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2456, file: !57, line: 392, baseType: !1907, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2456, file: !57, line: 393, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !57, line: 30, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2456, file: !57, line: 395, baseType: !1433, size: 128, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2456, file: !57, line: 397, baseType: !2464, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !57, line: 39, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2456, file: !57, line: 398, baseType: !2467, size: 64, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !57, line: 38, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2456, file: !57, line: 399, baseType: !606, size: 256, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2456, file: !57, line: 401, baseType: !2471, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2473)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !57, line: 401, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2456, file: !57, line: 404, baseType: !2475, size: 64, offset: 704)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !57, line: 404, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2456, file: !57, line: 406, baseType: !7, size: 32, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2456, file: !57, line: 409, baseType: !1309, size: 128, offset: 832)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2456, file: !57, line: 410, baseType: !7, size: 32, offset: 960)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2456, file: !57, line: 416, baseType: !172, size: 64, offset: 1024)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2456, file: !57, line: 421, baseType: !315, size: 64, offset: 1088)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2456, file: !57, line: 426, baseType: !215, size: 32, offset: 1152)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2456, file: !57, line: 432, baseType: !89, size: 32, offset: 1184)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2456, file: !57, line: 434, baseType: !195, size: 32, offset: 1216)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2456, file: !57, line: 436, baseType: !1298, size: 64, offset: 1280)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2456, file: !57, line: 438, baseType: !1569, size: 32, offset: 1344)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2456, file: !57, line: 443, baseType: !173, size: 64, offset: 1408)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2456, file: !57, line: 450, baseType: !2489, size: 64, offset: 1472)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !69, line: 705, size: 5824, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2642, !2643, !2659, !2660, !2661, !2662, !2663, !2664, !2671, !2838, !2851, !2861, !2865, !2867, !2868, !2869, !2873, !2880, !2881, !2884, !2887, !2891, !2894, !2895, !2896, !2897, !2898, !2899, !2953, !2954, !2955, !2958, !2961, !2970, !2971, !2972, !2973, !2974, !2975}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2490, file: !69, line: 706, baseType: !174, size: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2490, file: !69, line: 707, baseType: !2489, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2490, file: !69, line: 709, baseType: !2495, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2497, line: 108, size: 1728, elements: !2498)
!2497 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!2498 = !{!2499, !2520, !2521, !2522, !2523, !2524, !2525, !2639, !2640, !2641}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !2496, file: !2497, line: 109, baseType: !2500, size: 320, align: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !2501, line: 18, size: 320, align: 64, elements: !2502)
!2501 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!2502 = !{!2503, !2504, !2505, !2519}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !2500, file: !2501, line: 19, baseType: !195, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !2500, file: !2501, line: 20, baseType: !182, size: 128, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2500, file: !2501, line: 21, baseType: !2506, size: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !2501, line: 37, size: 256, elements: !2511)
!2511 = !{!2512, !2513, !2514}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !2510, file: !2501, line: 38, baseType: !172, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !2510, file: !2501, line: 39, baseType: !182, size: 128, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !2510, file: !2501, line: 40, baseType: !2515, size: 32, offset: 192)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2516, line: 19, size: 32, elements: !2517)
!2516 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2517 = !{!2518}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2515, file: !2516, line: 20, baseType: !1569, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2500, file: !2501, line: 22, baseType: !2506, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !2496, file: !2497, line: 110, baseType: !2510, size: 256, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !2496, file: !2497, line: 111, baseType: !2510, size: 256, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !2496, file: !2497, line: 112, baseType: !2510, size: 256, offset: 832)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !2496, file: !2497, line: 113, baseType: !2510, size: 256, offset: 1088)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !2496, file: !2497, line: 114, baseType: !182, size: 128, offset: 1344)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !2496, file: !2497, line: 115, baseType: !2526, size: 64, offset: 1472)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !63, line: 96, size: 1152, elements: !2528)
!2528 = !{!2529, !2530, !2608, !2609, !2610, !2611, !2612, !2616, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2527, file: !63, line: 97, baseType: !178, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2527, file: !63, line: 98, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2534, line: 80, size: 1344, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2545, !2551, !2555, !2559, !2560, !2561, !2562, !2563, !2571, !2572, !2573, !2574, !2575, !2603, !2607}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2533, file: !2534, line: 81, baseType: !178, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2533, file: !2534, line: 82, baseType: !178, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2533, file: !2534, line: 83, baseType: !317, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2533, file: !2534, line: 84, baseType: !317, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2533, file: !2534, line: 85, baseType: !317, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2533, file: !2534, line: 87, baseType: !2542, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!89, !2489, !2526}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2533, file: !2534, line: 88, baseType: !2546, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!89, !2549, !260}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2490)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2533, file: !2534, line: 89, baseType: !2552, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!89, !2489}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2533, file: !2534, line: 90, baseType: !2556, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !2489}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2533, file: !2534, line: 91, baseType: !2556, size: 64, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2533, file: !2534, line: 92, baseType: !2556, size: 64, offset: 640)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2533, file: !2534, line: 94, baseType: !2552, size: 64, offset: 704)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2533, file: !2534, line: 95, baseType: !2552, size: 64, offset: 768)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2533, file: !2534, line: 97, baseType: !2564, size: 64, offset: 832)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!89, !2489, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !81, line: 60, baseType: !2568)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !81, line: 58, size: 32, elements: !2569)
!2569 = !{!2570}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2568, file: !81, line: 59, baseType: !89, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2533, file: !2534, line: 98, baseType: !2552, size: 64, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2533, file: !2534, line: 100, baseType: !2552, size: 64, offset: 960)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2533, file: !2534, line: 102, baseType: !2552, size: 64, offset: 1024)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2533, file: !2534, line: 103, baseType: !2556, size: 64, offset: 1088)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2533, file: !2534, line: 105, baseType: !2576, size: 64, offset: 1152)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !81, line: 286, size: 1472, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2578, file: !81, line: 287, baseType: !2552, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2578, file: !81, line: 288, baseType: !2556, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2578, file: !81, line: 289, baseType: !2552, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2578, file: !81, line: 290, baseType: !2552, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2578, file: !81, line: 291, baseType: !2552, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2578, file: !81, line: 292, baseType: !2552, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2578, file: !81, line: 293, baseType: !2552, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2578, file: !81, line: 294, baseType: !2552, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2578, file: !81, line: 295, baseType: !2552, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2578, file: !81, line: 296, baseType: !2552, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2578, file: !81, line: 297, baseType: !2552, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2578, file: !81, line: 298, baseType: !2552, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2578, file: !81, line: 299, baseType: !2552, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2578, file: !81, line: 300, baseType: !2552, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2578, file: !81, line: 301, baseType: !2552, size: 64, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2578, file: !81, line: 302, baseType: !2552, size: 64, offset: 960)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2578, file: !81, line: 303, baseType: !2552, size: 64, offset: 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2578, file: !81, line: 304, baseType: !2552, size: 64, offset: 1088)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2578, file: !81, line: 305, baseType: !2552, size: 64, offset: 1152)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2578, file: !81, line: 306, baseType: !2552, size: 64, offset: 1216)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2578, file: !81, line: 307, baseType: !2552, size: 64, offset: 1280)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2578, file: !81, line: 308, baseType: !2552, size: 64, offset: 1344)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2578, file: !81, line: 309, baseType: !2552, size: 64, offset: 1408)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2533, file: !2534, line: 107, baseType: !2604, size: 64, offset: 1216)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2534, line: 107, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2533, file: !2534, line: 109, baseType: !686, size: 8, offset: 1280)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2527, file: !63, line: 100, baseType: !535, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2527, file: !63, line: 101, baseType: !178, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2527, file: !63, line: 103, baseType: !686, size: 8, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2527, file: !63, line: 104, baseType: !62, size: 32, offset: 288)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2527, file: !63, line: 106, baseType: !2613, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2615)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !63, line: 106, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2527, file: !63, line: 107, baseType: !2617, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2619)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !63, line: 107, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2527, file: !63, line: 109, baseType: !2552, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2527, file: !63, line: 110, baseType: !2556, size: 64, offset: 512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2527, file: !63, line: 111, baseType: !2552, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2527, file: !63, line: 112, baseType: !2556, size: 64, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2527, file: !63, line: 113, baseType: !2564, size: 64, offset: 704)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2527, file: !63, line: 114, baseType: !2552, size: 64, offset: 768)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2527, file: !63, line: 115, baseType: !317, size: 64, offset: 832)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2527, file: !63, line: 116, baseType: !317, size: 64, offset: 896)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2527, file: !63, line: 118, baseType: !2576, size: 64, offset: 960)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2527, file: !63, line: 119, baseType: !2556, size: 64, offset: 1024)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2527, file: !63, line: 121, baseType: !2631, size: 64, offset: 1088)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2497, line: 78, size: 1216, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2632, file: !2497, line: 79, baseType: !174, size: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !2632, file: !2497, line: 80, baseType: !2500, size: 320, align: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !2632, file: !2497, line: 81, baseType: !2510, size: 256, offset: 832)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2632, file: !2497, line: 82, baseType: !575, size: 64, offset: 1088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2632, file: !2497, line: 83, baseType: !2526, size: 64, offset: 1152)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !2496, file: !2497, line: 116, baseType: !265, size: 64, offset: 1536)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2496, file: !2497, line: 117, baseType: !2489, size: 64, offset: 1600)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2496, file: !2497, line: 118, baseType: !223, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2490, file: !69, line: 711, baseType: !178, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2490, file: !69, line: 712, baseType: !2644, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !69, line: 89, size: 384, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2657, !2658}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2646, file: !69, line: 90, baseType: !178, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2646, file: !69, line: 91, baseType: !317, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2646, file: !69, line: 92, baseType: !2546, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2646, file: !69, line: 93, baseType: !2652, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!265, !2549, !2438, !2655, !2656}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2646, file: !69, line: 95, baseType: !2556, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2646, file: !69, line: 97, baseType: !2576, size: 64, offset: 320)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2490, file: !69, line: 714, baseType: !2531, size: 64, offset: 768)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2490, file: !69, line: 715, baseType: !2526, size: 64, offset: 832)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2490, file: !69, line: 717, baseType: !172, size: 64, offset: 896)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2490, file: !69, line: 719, baseType: !172, size: 64, offset: 960)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2490, file: !69, line: 721, baseType: !606, size: 256, offset: 1024)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2490, file: !69, line: 725, baseType: !2665, size: 448, offset: 1280)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !69, line: 517, size: 448, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2665, file: !69, line: 518, baseType: !182, size: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2665, file: !69, line: 519, baseType: !182, size: 128, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2665, file: !69, line: 520, baseType: !182, size: 128, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2665, file: !69, line: 521, baseType: !68, size: 32, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2490, file: !69, line: 726, baseType: !2672, size: 2496, offset: 1728)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !81, line: 663, size: 2496, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2718, !2719, !2720, !2721, !2722, !2723, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2831, !2835}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2672, file: !81, line: 664, baseType: !2567, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2672, file: !81, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2672, file: !81, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2672, file: !81, line: 667, baseType: !686, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2672, file: !81, line: 668, baseType: !686, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2672, file: !81, line: 669, baseType: !686, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2672, file: !81, line: 670, baseType: !686, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2672, file: !81, line: 671, baseType: !686, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2672, file: !81, line: 672, baseType: !686, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2672, file: !81, line: 673, baseType: !686, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2672, file: !81, line: 674, baseType: !686, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2672, file: !81, line: 675, baseType: !414, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2672, file: !81, line: 676, baseType: !195, size: 32, offset: 96)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2672, file: !81, line: 678, baseType: !182, size: 128, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2672, file: !81, line: 679, baseType: !555, size: 256, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2672, file: !81, line: 680, baseType: !2690, size: 64, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2692, line: 43, size: 1536, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2701, !2702, !2703, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2691, file: !2692, line: 44, baseType: !178, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2691, file: !2692, line: 45, baseType: !89, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2691, file: !2692, line: 46, baseType: !182, size: 128, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2691, file: !2692, line: 47, baseType: !195, size: 32, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2691, file: !2692, line: 48, baseType: !2699, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !81, line: 629, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2691, file: !2692, line: 49, baseType: !848, size: 320, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2691, file: !2692, line: 50, baseType: !315, size: 64, offset: 704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2691, file: !2692, line: 51, baseType: !2704, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2705, line: 29, baseType: !616)
!2705 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2691, file: !2692, line: 52, baseType: !2704, size: 64, offset: 832)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2691, file: !2692, line: 53, baseType: !2704, size: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2691, file: !2692, line: 54, baseType: !2704, size: 64, offset: 960)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2691, file: !2692, line: 55, baseType: !2704, size: 64, offset: 1024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2691, file: !2692, line: 56, baseType: !315, size: 64, offset: 1088)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2691, file: !2692, line: 57, baseType: !315, size: 64, offset: 1152)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2691, file: !2692, line: 58, baseType: !315, size: 64, offset: 1216)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2691, file: !2692, line: 59, baseType: !315, size: 64, offset: 1280)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2691, file: !2692, line: 60, baseType: !315, size: 64, offset: 1344)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2691, file: !2692, line: 61, baseType: !2489, size: 64, offset: 1408)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2691, file: !2692, line: 62, baseType: !686, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2691, file: !2692, line: 63, baseType: !686, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2672, file: !81, line: 681, baseType: !686, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2672, file: !81, line: 682, baseType: !686, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2672, file: !81, line: 683, baseType: !686, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2672, file: !81, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2672, file: !81, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2672, file: !81, line: 690, baseType: !2724, size: 512, offset: 640)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !76, line: 118, size: 512, elements: !2725)
!2725 = !{!2726, !2732, !2733, !2738, !2793, !2794, !2795, !2796}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2724, file: !76, line: 119, baseType: !2727, size: 256)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2728, line: 9, size: 256, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2727, file: !2728, line: 10, baseType: !718, size: 192, align: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2727, file: !2728, line: 11, baseType: !2704, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2724, file: !76, line: 120, baseType: !2704, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2724, file: !76, line: 121, baseType: !2734, size: 64, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!75, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2724, file: !76, line: 122, baseType: !2739, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !76, line: 159, size: 512, align: 512, elements: !2741)
!2741 = !{!2742, !2767, !2768, !2771, !2776, !2777, !2788, !2792}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2740, file: !76, line: 160, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !76, line: 215, size: 4608, align: 512, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2744, file: !76, line: 216, baseType: !564, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2744, file: !76, line: 217, baseType: !7, size: 32, offset: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2744, file: !76, line: 218, baseType: !7, size: 32, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2744, file: !76, line: 219, baseType: !7, size: 32, offset: 96)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2744, file: !76, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2744, file: !76, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2744, file: !76, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2744, file: !76, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2744, file: !76, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2744, file: !76, line: 226, baseType: !7, size: 32, offset: 160)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2744, file: !76, line: 227, baseType: !235, size: 16, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2744, file: !76, line: 228, baseType: !235, size: 16, offset: 208)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2744, file: !76, line: 229, baseType: !7, size: 32, offset: 224)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2744, file: !76, line: 235, baseType: !2704, size: 64, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2744, file: !76, line: 236, baseType: !2737, size: 64, offset: 320)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2744, file: !76, line: 237, baseType: !2704, size: 64, offset: 384)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2744, file: !76, line: 238, baseType: !2737, size: 64, offset: 448)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2744, file: !76, line: 239, baseType: !2764, size: 4096, align: 512, offset: 512)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2740, size: 4096, align: 512, elements: !2765)
!2765 = !{!2766}
!2766 = !DISubrange(count: 8)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2740, file: !76, line: 161, baseType: !7, size: 32, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2740, file: !76, line: 162, baseType: !2769, size: 32, offset: 96)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !183, line: 32, baseType: !2770)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !299, line: 96, baseType: !89)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2740, file: !76, line: 163, baseType: !2772, size: 32, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !387, line: 274, baseType: !2773)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !387, line: 274, size: 32, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2773, file: !387, line: 274, baseType: !391, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2740, file: !76, line: 164, baseType: !2737, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2740, file: !76, line: 165, baseType: !2778, size: 128, offset: 256)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2728, line: 14, size: 128, elements: !2779)
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2778, file: !2728, line: 15, baseType: !2781, size: 128)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !719, line: 26, size: 128, elements: !2782)
!2782 = !{!2783, !2787}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2781, file: !719, line: 27, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !719, line: 12, size: 64, elements: !2785)
!2785 = !{!2786}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2784, file: !719, line: 13, baseType: !723, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2781, file: !719, line: 28, baseType: !723, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2740, file: !76, line: 166, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!2704}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2740, file: !76, line: 167, baseType: !2704, size: 64, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2724, file: !76, line: 123, baseType: !223, size: 8, offset: 448)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2724, file: !76, line: 124, baseType: !223, size: 8, offset: 456)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2724, file: !76, line: 125, baseType: !223, size: 8, offset: 464)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2724, file: !76, line: 126, baseType: !223, size: 8, offset: 472)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2672, file: !81, line: 691, baseType: !418, size: 64, offset: 1152)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2672, file: !81, line: 692, baseType: !866, size: 256, offset: 1216)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2672, file: !81, line: 693, baseType: !1580, size: 192, offset: 1472)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2672, file: !81, line: 694, baseType: !2699, size: 64, offset: 1664)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2672, file: !81, line: 695, baseType: !215, size: 32, offset: 1728)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2672, file: !81, line: 696, baseType: !215, size: 32, offset: 1760)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2672, file: !81, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2672, file: !81, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2672, file: !81, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2672, file: !81, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2672, file: !81, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2672, file: !81, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2672, file: !81, line: 703, baseType: !686, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2672, file: !81, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2672, file: !81, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2672, file: !81, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2672, file: !81, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2672, file: !81, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2672, file: !81, line: 709, baseType: !7, size: 32, offset: 1824)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2672, file: !81, line: 710, baseType: !80, size: 32, offset: 1856)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2672, file: !81, line: 711, baseType: !88, size: 32, offset: 1888)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2672, file: !81, line: 712, baseType: !88, size: 32, offset: 1920)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2672, file: !81, line: 713, baseType: !89, size: 32, offset: 1952)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2672, file: !81, line: 714, baseType: !89, size: 32, offset: 1984)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2672, file: !81, line: 715, baseType: !418, size: 64, offset: 2048)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2672, file: !81, line: 716, baseType: !418, size: 64, offset: 2112)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2672, file: !81, line: 717, baseType: !418, size: 64, offset: 2176)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2672, file: !81, line: 718, baseType: !418, size: 64, offset: 2240)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2672, file: !81, line: 720, baseType: !2826, size: 64, offset: 2304)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !81, line: 632, size: 64, elements: !2828)
!2828 = !{!2829, !2830}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2827, file: !81, line: 633, baseType: !195, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2827, file: !81, line: 634, baseType: !7, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2672, file: !81, line: 721, baseType: !2832, size: 64, offset: 2368)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2489, !602}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2672, file: !81, line: 722, baseType: !2836, size: 64, offset: 2432)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !81, line: 722, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2490, file: !69, line: 727, baseType: !2839, size: 64, offset: 4224)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !81, line: 742, size: 1792, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2848, !2849, !2850}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2840, file: !81, line: 743, baseType: !2578, size: 1472)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2840, file: !81, line: 744, baseType: !2552, size: 64, offset: 1472)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2840, file: !81, line: 745, baseType: !2845, size: 64, offset: 1536)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !2489, !686}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2840, file: !81, line: 746, baseType: !2552, size: 64, offset: 1600)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2840, file: !81, line: 747, baseType: !2556, size: 64, offset: 1664)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2840, file: !81, line: 748, baseType: !2556, size: 64, offset: 1728)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2490, file: !69, line: 736, baseType: !2852, size: 128, offset: 4288)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !69, line: 529, size: 128, elements: !2853)
!2853 = !{!2854, !2858}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2852, file: !69, line: 531, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2857, line: 13, flags: DIFlagFwdDecl)
!2857 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2852, file: !69, line: 532, baseType: !2859, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !69, line: 49, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2490, file: !69, line: 738, baseType: !2862, size: 64, offset: 4416)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2864)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !69, line: 738, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2490, file: !69, line: 740, baseType: !2866, size: 64, offset: 4480)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2490, file: !69, line: 741, baseType: !418, size: 64, offset: 4544)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2490, file: !69, line: 746, baseType: !418, size: 64, offset: 4608)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2490, file: !69, line: 747, baseType: !2870, size: 64, offset: 4672)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !69, line: 747, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2490, file: !69, line: 749, baseType: !2874, size: 64, offset: 4736)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !69, line: 428, size: 128, elements: !2876)
!2876 = !{!2877, !2878, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2875, file: !69, line: 433, baseType: !7, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2875, file: !69, line: 434, baseType: !7, size: 32, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2875, file: !69, line: 435, baseType: !315, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2490, file: !69, line: 751, baseType: !182, size: 128, offset: 4800)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2490, file: !69, line: 762, baseType: !2882, size: 64, offset: 4928)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !69, line: 762, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2490, file: !69, line: 770, baseType: !2885, offset: 4992)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2886, line: 5, elements: !895)
!2886 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2490, file: !69, line: 772, baseType: !2888, size: 64, offset: 4992)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2890, line: 18, flags: DIFlagFwdDecl)
!2890 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2490, file: !69, line: 773, baseType: !2892, size: 64, offset: 5056)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2534, line: 22, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2490, file: !69, line: 776, baseType: !89, size: 32, offset: 5120)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2490, file: !69, line: 778, baseType: !501, size: 32, offset: 5152)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2490, file: !69, line: 779, baseType: !414, size: 32, offset: 5184)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2490, file: !69, line: 781, baseType: !195, size: 32, offset: 5216)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2490, file: !69, line: 782, baseType: !182, size: 128, offset: 5248)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2490, file: !69, line: 784, baseType: !2900, size: 64, offset: 5376)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2903, line: 52, size: 768, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2913, !2917, !2918, !2919, !2944, !2948, !2952}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2902, file: !2903, line: 53, baseType: !178, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2902, file: !2903, line: 55, baseType: !317, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2902, file: !2903, line: 56, baseType: !317, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2902, file: !2903, line: 58, baseType: !2546, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2902, file: !2903, line: 59, baseType: !2910, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!265, !2549, !2438}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2902, file: !2903, line: 61, baseType: !2914, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !2900}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2902, file: !2903, line: 62, baseType: !2556, size: 64, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2902, file: !2903, line: 64, baseType: !2552, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2902, file: !2903, line: 66, baseType: !2920, size: 64, offset: 512)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2922)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !97, line: 39, size: 384, elements: !2923)
!2923 = !{!2924, !2925, !2929, !2933, !2939, !2943}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2922, file: !97, line: 40, baseType: !96, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2922, file: !97, line: 41, baseType: !2926, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!686}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2922, file: !97, line: 42, baseType: !2930, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!172}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2922, file: !97, line: 43, baseType: !2934, size: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!2120, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !97, line: 19, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2922, file: !97, line: 44, baseType: !2940, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!2120}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2922, file: !97, line: 45, baseType: !649, size: 64, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2902, file: !2903, line: 67, baseType: !2945, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!2120, !2549}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2902, file: !2903, line: 69, baseType: !2949, size: 64, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2549, !2655, !2656}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2902, file: !2903, line: 71, baseType: !2576, size: 64, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2490, file: !69, line: 785, baseType: !317, size: 64, offset: 5440)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2490, file: !69, line: 787, baseType: !2556, size: 64, offset: 5504)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2490, file: !69, line: 788, baseType: !2956, size: 64, offset: 5568)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !69, line: 46, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2490, file: !69, line: 789, baseType: !2959, size: 64, offset: 5632)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !69, line: 48, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2490, file: !69, line: 791, baseType: !2962, size: 64, offset: 5696)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !69, line: 597, size: 128, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968, !2969}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2963, file: !69, line: 598, baseType: !102, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2963, file: !69, line: 599, baseType: !111, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2963, file: !69, line: 600, baseType: !116, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2963, file: !69, line: 601, baseType: !686, size: 8, offset: 96)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2963, file: !69, line: 602, baseType: !686, size: 8, offset: 104)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2490, file: !69, line: 793, baseType: !121, size: 32, offset: 5760)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2490, file: !69, line: 795, baseType: !686, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2490, file: !69, line: 796, baseType: !686, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2490, file: !69, line: 797, baseType: !686, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2490, file: !69, line: 798, baseType: !686, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2490, file: !69, line: 799, baseType: !686, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2456, file: !57, line: 451, baseType: !88, size: 32, offset: 1536)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2456, file: !57, line: 457, baseType: !315, size: 64, offset: 1600)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2456, file: !57, line: 459, baseType: !7, size: 32, offset: 1664)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2456, file: !57, line: 466, baseType: !7, size: 32, offset: 1696)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2456, file: !57, line: 468, baseType: !848, size: 320, offset: 1728)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2456, file: !57, line: 469, baseType: !866, size: 256, offset: 2048)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2456, file: !57, line: 471, baseType: !215, size: 32, offset: 2304)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2456, file: !57, line: 473, baseType: !2984, size: 64, offset: 2368)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !57, line: 473, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2456, file: !57, line: 475, baseType: !182, size: 128, offset: 2432)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2456, file: !57, line: 477, baseType: !2988, size: 64, offset: 2560)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !2989)
!2989 = !{!2990}
!2990 = !DISubrange(count: 1)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2456, file: !57, line: 478, baseType: !1352, size: 64, offset: 2624)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2456, file: !57, line: 479, baseType: !182, size: 128, offset: 2688)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2456, file: !57, line: 480, baseType: !606, size: 256, offset: 2816)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2456, file: !57, line: 483, baseType: !2995, size: 960, offset: 3072)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !57, line: 300, size: 960, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2995, file: !57, line: 301, baseType: !127, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2995, file: !57, line: 302, baseType: !315, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2995, file: !57, line: 303, baseType: !315, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2995, file: !57, line: 305, baseType: !7, size: 32, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2995, file: !57, line: 306, baseType: !7, size: 32, offset: 224)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2995, file: !57, line: 307, baseType: !7, size: 32, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2995, file: !57, line: 308, baseType: !7, size: 32, offset: 288)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2995, file: !57, line: 309, baseType: !7, size: 32, offset: 320)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2995, file: !57, line: 310, baseType: !7, size: 32, offset: 352)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2995, file: !57, line: 311, baseType: !7, size: 32, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2995, file: !57, line: 312, baseType: !7, size: 32, offset: 416)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2995, file: !57, line: 313, baseType: !7, size: 32, offset: 448)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2995, file: !57, line: 314, baseType: !7, size: 32, offset: 480)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2995, file: !57, line: 315, baseType: !7, size: 32, offset: 512)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2995, file: !57, line: 316, baseType: !7, size: 32, offset: 544)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2995, file: !57, line: 317, baseType: !7, size: 32, offset: 576)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2995, file: !57, line: 318, baseType: !7, size: 32, offset: 608)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2995, file: !57, line: 319, baseType: !7, size: 32, offset: 640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2995, file: !57, line: 320, baseType: !7, size: 32, offset: 672)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2995, file: !57, line: 321, baseType: !7, size: 32, offset: 704)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2995, file: !57, line: 322, baseType: !7, size: 32, offset: 736)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2995, file: !57, line: 323, baseType: !7, size: 32, offset: 768)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2995, file: !57, line: 325, baseType: !235, size: 16, offset: 800)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2995, file: !57, line: 326, baseType: !235, size: 16, offset: 816)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2995, file: !57, line: 327, baseType: !235, size: 16, offset: 832)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2995, file: !57, line: 329, baseType: !227, size: 8, offset: 848)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2995, file: !57, line: 330, baseType: !227, size: 8, offset: 856)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2995, file: !57, line: 331, baseType: !227, size: 8, offset: 864)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2995, file: !57, line: 332, baseType: !131, size: 32, offset: 896)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2995, file: !57, line: 339, baseType: !7, size: 32, offset: 928)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2456, file: !57, line: 485, baseType: !7, size: 32, offset: 4032)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2456, file: !57, line: 487, baseType: !89, size: 32, offset: 4064)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2456, file: !57, line: 489, baseType: !3030, size: 64, offset: 4096)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !57, line: 31, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2456, file: !57, line: 494, baseType: !3033, size: 64, offset: 4160)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !57, line: 35, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2456, file: !57, line: 495, baseType: !182, size: 128, offset: 4224)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2456, file: !57, line: 497, baseType: !182, size: 128, offset: 4352)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2456, file: !57, line: 498, baseType: !195, size: 32, offset: 4480)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2456, file: !57, line: 499, baseType: !923, size: 704, offset: 4544)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2456, file: !57, line: 501, baseType: !606, size: 256, offset: 5248)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2456, file: !57, line: 502, baseType: !606, size: 256, offset: 5504)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2456, file: !57, line: 508, baseType: !182, size: 128, offset: 5760)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2456, file: !57, line: 509, baseType: !195, size: 32, offset: 5888)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2456, file: !57, line: 511, baseType: !89, size: 32, offset: 5920)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2456, file: !57, line: 517, baseType: !826, size: 128, align: 64, offset: 5952)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2456, file: !57, line: 518, baseType: !1580, size: 192, offset: 6080)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2456, file: !57, line: 523, baseType: !606, size: 256, offset: 6272)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2456, file: !57, line: 525, baseType: !89, size: 32, offset: 6528)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2456, file: !57, line: 527, baseType: !3049, size: 64, offset: 6592)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !57, line: 527, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2456, file: !57, line: 528, baseType: !182, size: 128, offset: 6656)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2456, file: !57, line: 530, baseType: !380, size: 64, offset: 6784)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2456, file: !57, line: 531, baseType: !380, size: 64, offset: 6848)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2456, file: !57, line: 532, baseType: !380, size: 64, offset: 6912)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2456, file: !57, line: 536, baseType: !606, size: 256, offset: 6976)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2456, file: !57, line: 538, baseType: !686, size: 8, offset: 7232)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1299, file: !57, line: 147, baseType: !172, size: 64, offset: 704)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !1299, file: !57, line: 149, baseType: !2325, size: 1984, offset: 768)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !57, line: 151, baseType: !89, size: 32, offset: 2752)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1299, file: !57, line: 152, baseType: !315, size: 64, offset: 2816)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !1299, file: !57, line: 161, baseType: !606, size: 256, offset: 2880)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !1299, file: !57, line: 162, baseType: !7, size: 32, offset: 3136)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !1299, file: !57, line: 164, baseType: !3064, size: 64, offset: 3200)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !1299, file: !57, line: 165, baseType: !174, size: 512, offset: 3264)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !1299, file: !57, line: 166, baseType: !173, size: 64, offset: 3776)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !1299, file: !57, line: 168, baseType: !182, size: 128, offset: 3840)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !1299, file: !57, line: 170, baseType: !3070, size: 64, offset: 3968)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !57, line: 170, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !1299, file: !57, line: 171, baseType: !215, size: 32, offset: 4032)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !1299, file: !57, line: 172, baseType: !3074, size: 64, offset: 4096)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !57, line: 104, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !1299, file: !57, line: 197, baseType: !3077, size: 64, offset: 4160)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !57, line: 197, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1299, file: !57, line: 199, baseType: !89, size: 32, offset: 4224)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1299, file: !57, line: 200, baseType: !3081, size: 64, offset: 4288)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !57, line: 105, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !1299, file: !57, line: 201, baseType: !893, offset: 4352)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !1299, file: !57, line: 202, baseType: !418, size: 64, offset: 4352)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !1299, file: !57, line: 203, baseType: !2378, size: 32, offset: 4416)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !1299, file: !57, line: 209, baseType: !3087, size: 64, offset: 4480)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !57, line: 384, size: 576, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3088, file: !57, line: 385, baseType: !174, size: 512)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3088, file: !57, line: 386, baseType: !686, size: 8, offset: 512)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3088, file: !57, line: 387, baseType: !7, size: 32, offset: 544)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3088, file: !57, line: 388, baseType: !3094, offset: 576)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3095, elements: !1595)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !57, line: 378, size: 640, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3095, file: !57, line: 379, baseType: !174, size: 512)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3095, file: !57, line: 380, baseType: !1295, size: 64, offset: 512)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3095, file: !57, line: 381, baseType: !1295, size: 64, offset: 576)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1291, file: !1292, line: 44, baseType: !2455, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !1291, file: !1292, line: 45, baseType: !3102, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1292, line: 45, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !1291, file: !1292, line: 46, baseType: !315, size: 64, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !1291, file: !1292, line: 47, baseType: !686, size: 8, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1291, file: !1292, line: 48, baseType: !223, size: 8, offset: 392)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1291, file: !1292, line: 49, baseType: !686, size: 8, offset: 400)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !1291, file: !1292, line: 50, baseType: !686, size: 8, offset: 408)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1291, file: !1292, line: 51, baseType: !501, size: 32, offset: 416)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1291, file: !1292, line: 52, baseType: !215, size: 32, offset: 448)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1291, file: !1292, line: 53, baseType: !195, size: 32, offset: 480)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1291, file: !1292, line: 54, baseType: !345, size: 64, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1291, file: !1292, line: 55, baseType: !172, size: 64, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1291, file: !1292, line: 56, baseType: !172, size: 64, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !1291, file: !1292, line: 57, baseType: !3116, size: 64, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !57, line: 1477, size: 128, elements: !3119)
!3119 = !{!3120, !3124}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3118, file: !57, line: 1478, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !1290, !686}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3118, file: !57, line: 1483, baseType: !3125, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !1290}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !1291, file: !1292, line: 58, baseType: !606, size: 256, offset: 768)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1291, file: !1292, line: 60, baseType: !89, size: 32, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1291, file: !1292, line: 61, baseType: !89, size: 32, offset: 1056)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !1291, file: !1292, line: 62, baseType: !173, size: 64, offset: 1088)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1291, file: !1292, line: 65, baseType: !606, size: 256, offset: 1152)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !1291, file: !1292, line: 66, baseType: !496, size: 64, offset: 1408)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !1291, file: !1292, line: 68, baseType: !3135, size: 64, offset: 1472)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !57, line: 63, size: 808, elements: !3137)
!3137 = !{!3138, !3142}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3136, file: !57, line: 64, baseType: !3139, size: 296)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 296, elements: !3140)
!3140 = !{!3141}
!3141 = !DISubrange(count: 37)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3136, file: !57, line: 65, baseType: !3143, size: 512, offset: 296)
!3143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 512, elements: !270)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !1291, file: !1292, line: 72, baseType: !686, size: 8, offset: 1536)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !1291, file: !1292, line: 77, baseType: !2490, size: 5824, offset: 1600)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !497, file: !14, line: 1226, baseType: !3147, size: 64, offset: 1664)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !57, line: 1495, size: 128, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3148, file: !57, line: 1496, baseType: !1290, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3148, file: !57, line: 1497, baseType: !172, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !497, file: !14, line: 1227, baseType: !3064, size: 64, offset: 1728)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !497, file: !14, line: 1228, baseType: !3154, size: 64, offset: 1792)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !497, file: !14, line: 1229, baseType: !852, size: 128, offset: 1856)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !497, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !497, file: !14, line: 1231, baseType: !3159, size: 2496, offset: 2048)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3165, !3197}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3159, file: !19, line: 522, baseType: !7, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3159, file: !19, line: 523, baseType: !1268, size: 320, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3159, file: !19, line: 524, baseType: !3164, size: 192, offset: 384)
!3164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !266)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3159, file: !19, line: 525, baseType: !3166, size: 1728, offset: 576)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3167, size: 1728, elements: !266)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !3168)
!3168 = !{!3169, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3167, file: !19, line: 223, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !3172)
!3172 = !{!3173, !3174, !3187, !3188}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3171, file: !19, line: 446, baseType: !89, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3171, file: !19, line: 447, baseType: !3175, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3177, file: !19, line: 313, baseType: !1020, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3177, file: !19, line: 314, baseType: !1020, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3177, file: !19, line: 315, baseType: !1020, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3177, file: !19, line: 316, baseType: !1020, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3177, file: !19, line: 317, baseType: !1135, size: 64, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3177, file: !19, line: 318, baseType: !1135, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3177, file: !19, line: 319, baseType: !1135, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3177, file: !19, line: 320, baseType: !1165, size: 64, offset: 448)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3171, file: !19, line: 448, baseType: !535, size: 64, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3171, file: !19, line: 449, baseType: !3170, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3167, file: !19, line: 224, baseType: !89, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3167, file: !19, line: 226, baseType: !182, size: 128, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3167, file: !19, line: 227, baseType: !315, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3167, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3167, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3167, file: !19, line: 230, baseType: !1100, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3167, file: !19, line: 231, baseType: !1100, size: 64, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3167, file: !19, line: 232, baseType: !172, size: 64, offset: 512)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3159, file: !19, line: 526, baseType: !3198, size: 192, offset: 2304)
!3198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3175, size: 192, elements: !266)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !497, file: !14, line: 1233, baseType: !3200, size: 2368, offset: 4544)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3201)
!3201 = !{!3202, !3203, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3200, file: !14, line: 1185, baseType: !235, size: 16)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3200, file: !14, line: 1186, baseType: !235, size: 16, offset: 16)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3200, file: !14, line: 1187, baseType: !3205, size: 2304, offset: 64)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3206, size: 2304, elements: !266)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3207, line: 12, size: 768, elements: !3208)
!3207 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3208 = !{!3209, !3217, !3218, !4329, !4330}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3206, file: !3207, line: 13, baseType: !3210, size: 384)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3211, line: 17, size: 384, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3212 = !{!3213, !3214, !3215, !3216}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3210, file: !3211, line: 18, baseType: !89, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3210, file: !3211, line: 19, baseType: !89, size: 32, offset: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3210, file: !3211, line: 20, baseType: !1580, size: 192, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3210, file: !3211, line: 22, baseType: !826, size: 128, align: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3206, file: !3207, line: 14, baseType: !678, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3206, file: !3207, line: 15, baseType: !3219, size: 64, offset: 448)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3220, line: 16, size: 64, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3221 = !{!3222}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3219, file: !3220, line: 17, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1050, line: 746, size: 58368, elements: !3225)
!3225 = !{!3226, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3306, !3317, !3337, !3341, !3344, !3375, !3376, !3377, !3378, !3386, !3388, !3389, !3390, !3391, !3392, !3393, !3404, !3405, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3422, !3423, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3511, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3559, !3565, !3566, !3567, !3568, !3569, !3573, !3576, !3583, !3588, !3591, !3594, !3597, !3600, !3738, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3776, !3777, !3778, !3787, !3795, !3796, !3797, !3798, !3799, !3804, !3805, !3806, !3809, !3810, !3812, !3823, !3826, !3834, !3837, !3838, !3924, !3925, !3926, !3927, !3928, !3934, !3935, !3936, !3937, !3940, !3941, !3944, !3947, !3948, !3951, !3952, !3953, !3956, !3957, !3958, !3959, !3960, !3961, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3993, !3994, !4000, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4082, !4084, !4085, !4086, !4087, !4088, !4089, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4106, !4107, !4108}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3224, file: !1050, line: 752, baseType: !3227, size: 192)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3228, line: 56, size: 192, elements: !3229)
!3228 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3227, file: !3228, line: 57, baseType: !315, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3227, file: !3228, line: 58, baseType: !315, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3227, file: !3228, line: 59, baseType: !414, size: 32, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3227, file: !3228, line: 61, baseType: !414, size: 32, offset: 160)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3224, file: !1050, line: 754, baseType: !7, size: 32, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3224, file: !1050, line: 767, baseType: !172, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3224, file: !1050, line: 768, baseType: !1569, size: 32, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3224, file: !1050, line: 770, baseType: !7, size: 32, offset: 352)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3224, file: !1050, line: 771, baseType: !7, size: 32, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3224, file: !1050, line: 774, baseType: !89, size: 32, offset: 416)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3224, file: !1050, line: 775, baseType: !3241, size: 128, offset: 448)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3242, line: 58, size: 128, elements: !3243)
!3242 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3243 = !{!3244, !3245, !3250, !3251}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3241, file: !3242, line: 59, baseType: !1526, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, scope: !3241, file: !3242, line: 60, baseType: !3246, size: 32, offset: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3241, file: !3242, line: 60, size: 32, elements: !3247)
!3247 = !{!3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3246, file: !3242, line: 61, baseType: !7, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3246, file: !3242, line: 62, baseType: !215, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3241, file: !3242, line: 65, baseType: !233, size: 16, offset: 96)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3241, file: !3242, line: 65, baseType: !233, size: 16, offset: 112)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3224, file: !1050, line: 776, baseType: !7, size: 32, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3224, file: !1050, line: 777, baseType: !315, size: 64, offset: 640)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3224, file: !1050, line: 778, baseType: !3223, size: 64, offset: 704)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3224, file: !1050, line: 787, baseType: !89, size: 32, offset: 768)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3224, file: !1050, line: 788, baseType: !89, size: 32, offset: 800)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3224, file: !1050, line: 790, baseType: !89, size: 32, offset: 832)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3224, file: !1050, line: 792, baseType: !89, size: 32, offset: 864)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3224, file: !1050, line: 793, baseType: !89, size: 32, offset: 896)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3224, file: !1050, line: 794, baseType: !89, size: 32, offset: 928)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3224, file: !1050, line: 795, baseType: !7, size: 32, offset: 960)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3224, file: !1050, line: 797, baseType: !3263, size: 2048, offset: 1024)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1050, line: 551, size: 2048, elements: !3264)
!3264 = !{!3265, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3285, !3288, !3289, !3290}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3263, file: !1050, line: 553, baseType: !3266, size: 128)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1050, line: 411, size: 128, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3266, file: !1050, line: 412, baseType: !315, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3266, file: !1050, line: 413, baseType: !414, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3263, file: !1050, line: 554, baseType: !718, size: 192, align: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3263, file: !1050, line: 555, baseType: !418, size: 64, offset: 320)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3263, file: !1050, line: 556, baseType: !418, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3263, file: !1050, line: 558, baseType: !182, size: 128, offset: 448)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3263, file: !1050, line: 559, baseType: !7, size: 32, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3263, file: !1050, line: 561, baseType: !418, size: 64, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3263, file: !1050, line: 562, baseType: !418, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3263, file: !1050, line: 563, baseType: !418, size: 64, offset: 768)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3263, file: !1050, line: 564, baseType: !418, size: 64, offset: 832)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3263, file: !1050, line: 565, baseType: !616, size: 64, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3263, file: !1050, line: 566, baseType: !418, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3263, file: !1050, line: 568, baseType: !418, size: 64, offset: 1024)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3263, file: !1050, line: 571, baseType: !89, size: 32, offset: 1088)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3263, file: !1050, line: 572, baseType: !3284, size: 64, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3263, file: !1050, line: 574, baseType: !3286, size: 64, offset: 1216)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1050, line: 49, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3263, file: !1050, line: 576, baseType: !3286, size: 64, offset: 1280)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3263, file: !1050, line: 578, baseType: !315, size: 64, offset: 1344)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3263, file: !1050, line: 588, baseType: !3291, size: 512, align: 512, offset: 1536)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1050, line: 497, size: 512, align: 512, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3291, file: !1050, line: 498, baseType: !418, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3291, file: !1050, line: 499, baseType: !418, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3291, file: !1050, line: 500, baseType: !418, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3291, file: !1050, line: 501, baseType: !414, size: 32, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3291, file: !1050, line: 502, baseType: !414, size: 32, offset: 224)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3291, file: !1050, line: 503, baseType: !315, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3291, file: !1050, line: 504, baseType: !315, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3291, file: !1050, line: 505, baseType: !315, size: 64, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3291, file: !1050, line: 506, baseType: !3302, size: 64, align: 64, offset: 448)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1050, line: 445, size: 64, align: 64, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3302, file: !1050, line: 446, baseType: !7, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3302, file: !1050, line: 447, baseType: !7, size: 32, offset: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3224, file: !1050, line: 798, baseType: !3307, size: 384, offset: 3072)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1050, line: 592, size: 384, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3307, file: !1050, line: 593, baseType: !182, size: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3307, file: !1050, line: 594, baseType: !315, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3307, file: !1050, line: 595, baseType: !315, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3307, file: !1050, line: 596, baseType: !7, size: 32, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3307, file: !1050, line: 597, baseType: !235, size: 16, offset: 288)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3307, file: !1050, line: 598, baseType: !235, size: 16, offset: 304)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3307, file: !1050, line: 600, baseType: !3316, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3224, file: !1050, line: 799, baseType: !3318, size: 1792, offset: 3456)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1050, line: 610, size: 1792, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3318, file: !1050, line: 611, baseType: !718, size: 192, align: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3318, file: !1050, line: 618, baseType: !418, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3318, file: !1050, line: 619, baseType: !418, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3318, file: !1050, line: 620, baseType: !418, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3318, file: !1050, line: 621, baseType: !418, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3318, file: !1050, line: 622, baseType: !418, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3318, file: !1050, line: 629, baseType: !616, size: 64, offset: 512)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3318, file: !1050, line: 630, baseType: !418, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3318, file: !1050, line: 631, baseType: !7, size: 32, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3318, file: !1050, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3318, file: !1050, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3318, file: !1050, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3318, file: !1050, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3318, file: !1050, line: 662, baseType: !2724, size: 512, offset: 704)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3318, file: !1050, line: 671, baseType: !2724, size: 512, offset: 1216)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3318, file: !1050, line: 679, baseType: !3336, size: 64, offset: 1728)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3224, file: !1050, line: 800, baseType: !3338, size: 64, offset: 5248)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1050, line: 800, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3224, file: !1050, line: 809, baseType: !3342, size: 64, offset: 5312)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1050, line: 70, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3224, file: !1050, line: 825, baseType: !3345, size: 2048, align: 512, offset: 5632)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1050, line: 509, size: 2048, align: 512, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3345, file: !1050, line: 511, baseType: !418, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3345, file: !1050, line: 512, baseType: !418, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3345, file: !1050, line: 513, baseType: !418, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3345, file: !1050, line: 514, baseType: !418, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3345, file: !1050, line: 515, baseType: !418, size: 64, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3345, file: !1050, line: 516, baseType: !418, size: 64, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3345, file: !1050, line: 518, baseType: !418, size: 64, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3345, file: !1050, line: 519, baseType: !418, size: 64, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3345, file: !1050, line: 520, baseType: !616, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3345, file: !1050, line: 522, baseType: !418, size: 64, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3345, file: !1050, line: 523, baseType: !418, size: 64, offset: 640)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3345, file: !1050, line: 524, baseType: !616, size: 64, offset: 704)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3345, file: !1050, line: 526, baseType: !616, size: 64, offset: 768)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3345, file: !1050, line: 527, baseType: !418, size: 64, offset: 832)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3345, file: !1050, line: 529, baseType: !418, size: 64, offset: 896)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3345, file: !1050, line: 530, baseType: !418, size: 64, offset: 960)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3345, file: !1050, line: 531, baseType: !418, size: 64, offset: 1024)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3345, file: !1050, line: 532, baseType: !418, size: 64, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3345, file: !1050, line: 533, baseType: !418, size: 64, offset: 1152)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3345, file: !1050, line: 535, baseType: !418, size: 64, offset: 1216)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3345, file: !1050, line: 536, baseType: !418, size: 64, offset: 1280)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3345, file: !1050, line: 537, baseType: !418, size: 64, offset: 1344)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3345, file: !1050, line: 538, baseType: !418, size: 64, offset: 1408)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3345, file: !1050, line: 539, baseType: !418, size: 64, offset: 1472)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3345, file: !1050, line: 540, baseType: !418, size: 64, offset: 1536)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3345, file: !1050, line: 541, baseType: !418, size: 64, offset: 1600)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3345, file: !1050, line: 542, baseType: !418, size: 64, offset: 1664)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3345, file: !1050, line: 543, baseType: !418, size: 64, offset: 1728)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3224, file: !1050, line: 833, baseType: !7, size: 32, offset: 7680)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3224, file: !1050, line: 836, baseType: !7, size: 32, offset: 7712)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3224, file: !1050, line: 837, baseType: !89, size: 32, offset: 7744)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3224, file: !1050, line: 838, baseType: !3379, size: 64, offset: 7808)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3382, line: 19, baseType: !3383)
!3382 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3382, line: 19, size: 64, elements: !3384)
!3384 = !{!3385}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3383, file: !3382, line: 19, baseType: !2988, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3224, file: !1050, line: 839, baseType: !3387, size: 64, offset: 7872)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3224, file: !1050, line: 840, baseType: !3381, size: 64, offset: 7936)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3224, file: !1050, line: 841, baseType: !172, size: 64, offset: 8000)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3224, file: !1050, line: 843, baseType: !235, size: 16, offset: 8064)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3224, file: !1050, line: 845, baseType: !235, size: 16, offset: 8080)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3224, file: !1050, line: 848, baseType: !89, size: 32, offset: 8096)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3224, file: !1050, line: 849, baseType: !3394, size: 32, offset: 8128)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1050, line: 718, size: 32, elements: !3395)
!3395 = !{!3396, !3403}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3394, file: !1050, line: 724, baseType: !3397, size: 32)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3394, file: !1050, line: 719, size: 32, elements: !3398)
!3398 = !{!3399, !3400, !3401, !3402}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3397, file: !1050, line: 720, baseType: !223, size: 8)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3397, file: !1050, line: 721, baseType: !223, size: 8, offset: 8)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3397, file: !1050, line: 722, baseType: !223, size: 8, offset: 16)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3397, file: !1050, line: 723, baseType: !223, size: 8, offset: 24)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3394, file: !1050, line: 725, baseType: !414, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3224, file: !1050, line: 850, baseType: !182, size: 128, offset: 8192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3224, file: !1050, line: 851, baseType: !3406, size: 64, offset: 8320)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1050, line: 60, flags: DIFlagFwdDecl)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3224, file: !1050, line: 855, baseType: !315, size: 64, offset: 8384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3224, file: !1050, line: 856, baseType: !223, size: 8, offset: 8448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3224, file: !1050, line: 857, baseType: !223, size: 8, offset: 8456)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3224, file: !1050, line: 858, baseType: !89, size: 32, offset: 8480)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3224, file: !1050, line: 859, baseType: !182, size: 128, offset: 8512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3224, file: !1050, line: 860, baseType: !89, size: 32, offset: 8640)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3224, file: !1050, line: 861, baseType: !182, size: 128, offset: 8704)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3224, file: !1050, line: 873, baseType: !3416, size: 256, offset: 8832)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1050, line: 376, size: 256, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3416, file: !1050, line: 381, baseType: !315, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3416, file: !1050, line: 384, baseType: !420, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3416, file: !1050, line: 389, baseType: !420, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3416, file: !1050, line: 392, baseType: !420, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3224, file: !1050, line: 875, baseType: !182, size: 128, offset: 9088)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3224, file: !1050, line: 877, baseType: !3424, size: 320, offset: 9216)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3425, line: 86, size: 320, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3424, file: !3425, line: 87, baseType: !89, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3424, file: !3425, line: 88, baseType: !182, size: 128, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3424, file: !3425, line: 89, baseType: !182, size: 128, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3224, file: !1050, line: 878, baseType: !718, size: 192, align: 64, offset: 9536)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3224, file: !1050, line: 881, baseType: !1492, size: 64, offset: 9728)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3224, file: !1050, line: 882, baseType: !1492, size: 64, offset: 9792)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3224, file: !1050, line: 884, baseType: !89, size: 32, offset: 9856)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3224, file: !1050, line: 885, baseType: !89, size: 32, offset: 9888)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3224, file: !1050, line: 886, baseType: !89, size: 32, offset: 9920)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3224, file: !1050, line: 888, baseType: !89, size: 32, offset: 9952)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3224, file: !1050, line: 890, baseType: !315, size: 64, offset: 9984)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3224, file: !1050, line: 893, baseType: !7, size: 32, offset: 10048)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3224, file: !1050, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3224, file: !1050, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3224, file: !1050, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3224, file: !1050, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3224, file: !1050, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3224, file: !1050, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3224, file: !1050, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3224, file: !1050, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3224, file: !1050, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3224, file: !1050, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3224, file: !1050, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3224, file: !1050, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3224, file: !1050, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3224, file: !1050, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3224, file: !1050, line: 969, baseType: !315, size: 64, offset: 10176)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3224, file: !1050, line: 971, baseType: !3455, size: 448, offset: 10240)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !137, line: 25, size: 448, elements: !3456)
!3456 = !{!3457, !3458, !3463}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3455, file: !137, line: 26, baseType: !315, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3455, file: !137, line: 27, baseType: !3459, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!301, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !137, line: 28, baseType: !3464, size: 320, offset: 128)
!3464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3455, file: !137, line: 28, size: 320, elements: !3465)
!3465 = !{!3466, !3476, !3501}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3464, file: !137, line: 37, baseType: !3467, size: 320)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3464, file: !137, line: 30, size: 320, elements: !3468)
!3468 = !{!3469, !3471, !3472, !3473, !3474, !3475}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3467, file: !137, line: 31, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3467, file: !137, line: 32, baseType: !414, size: 32, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3467, file: !137, line: 33, baseType: !414, size: 32, offset: 96)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3467, file: !137, line: 34, baseType: !414, size: 32, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3467, file: !137, line: 35, baseType: !418, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3467, file: !137, line: 36, baseType: !3470, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3464, file: !137, line: 47, baseType: !3477, size: 192)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3464, file: !137, line: 39, size: 192, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3500}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3477, file: !137, line: 40, baseType: !2769, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3477, file: !137, line: 41, baseType: !136, size: 32, offset: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !137, line: 42, baseType: !3482, size: 64, offset: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3477, file: !137, line: 42, size: 64, elements: !3483)
!3483 = !{!3484, !3492}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3482, file: !137, line: 43, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3487, line: 7, size: 128, elements: !3488)
!3487 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3488 = !{!3489, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3486, file: !3487, line: 8, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !299, line: 93, baseType: !508)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3486, file: !3487, line: 9, baseType: !508, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3482, file: !137, line: 44, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3495, line: 7, size: 64, elements: !3496)
!3495 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3496 = !{!3497, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3494, file: !3495, line: 8, baseType: !3498, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3495, line: 5, baseType: !602)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3494, file: !3495, line: 9, baseType: !602, size: 32, offset: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3477, file: !137, line: 46, baseType: !418, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3464, file: !137, line: 55, baseType: !3502, size: 256)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3464, file: !137, line: 49, size: 256, elements: !3503)
!3503 = !{!3504, !3507, !3508, !3509, !3510}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3502, file: !137, line: 50, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !137, line: 14, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3502, file: !137, line: 51, baseType: !89, size: 32, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3502, file: !137, line: 52, baseType: !89, size: 32, offset: 96)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3502, file: !137, line: 53, baseType: !315, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3502, file: !137, line: 54, baseType: !315, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3224, file: !1050, line: 973, baseType: !3512, size: 32, offset: 10688)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !183, line: 27, baseType: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !299, line: 28, baseType: !89)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3224, file: !1050, line: 974, baseType: !3512, size: 32, offset: 10720)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3224, file: !1050, line: 978, baseType: !315, size: 64, offset: 10752)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3224, file: !1050, line: 987, baseType: !3223, size: 64, offset: 10816)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3224, file: !1050, line: 990, baseType: !3223, size: 64, offset: 10880)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3224, file: !1050, line: 995, baseType: !182, size: 128, offset: 10944)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3224, file: !1050, line: 996, baseType: !182, size: 128, offset: 11072)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3224, file: !1050, line: 997, baseType: !3223, size: 64, offset: 11200)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3224, file: !1050, line: 1005, baseType: !182, size: 128, offset: 11264)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3224, file: !1050, line: 1006, baseType: !182, size: 128, offset: 11392)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3224, file: !1050, line: 1009, baseType: !1565, size: 64, offset: 11520)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3224, file: !1050, line: 1010, baseType: !3525, size: 512, offset: 11584)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 512, elements: !836)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3224, file: !1050, line: 1011, baseType: !182, size: 128, offset: 12096)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3224, file: !1050, line: 1012, baseType: !182, size: 128, offset: 12224)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3224, file: !1050, line: 1014, baseType: !554, size: 64, offset: 12352)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3224, file: !1050, line: 1017, baseType: !735, size: 64, offset: 12416)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3224, file: !1050, line: 1020, baseType: !735, size: 64, offset: 12480)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3224, file: !1050, line: 1023, baseType: !172, size: 64, offset: 12544)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3224, file: !1050, line: 1025, baseType: !418, size: 64, offset: 12608)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3224, file: !1050, line: 1026, baseType: !418, size: 64, offset: 12672)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3224, file: !1050, line: 1031, baseType: !418, size: 64, offset: 12736)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3224, file: !1050, line: 1032, baseType: !3536, size: 192, offset: 12800)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1050, line: 324, size: 192, elements: !3537)
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3536, file: !1050, line: 326, baseType: !418, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3536, file: !1050, line: 327, baseType: !418, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3536, file: !1050, line: 328, baseType: !564, size: 32, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3224, file: !1050, line: 1041, baseType: !315, size: 64, offset: 12992)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3224, file: !1050, line: 1042, baseType: !315, size: 64, offset: 13056)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3224, file: !1050, line: 1045, baseType: !418, size: 64, offset: 13120)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3224, file: !1050, line: 1048, baseType: !418, size: 64, offset: 13184)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3224, file: !1050, line: 1051, baseType: !315, size: 64, offset: 13248)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3224, file: !1050, line: 1052, baseType: !315, size: 64, offset: 13312)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3224, file: !1050, line: 1055, baseType: !3548, size: 640, offset: 13376)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3549, line: 132, size: 640, elements: !3550)
!3549 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3550 = !{!3551, !3557, !3558}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3548, file: !3549, line: 133, baseType: !3552, size: 576)
!3552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3553, size: 576, elements: !266)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3549, line: 117, size: 192, elements: !3554)
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3553, file: !3549, line: 118, baseType: !418, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3553, file: !3549, line: 119, baseType: !2778, size: 128, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3548, file: !3549, line: 134, baseType: !7, size: 32, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3548, file: !3549, line: 135, baseType: !7, size: 32, offset: 608)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3224, file: !1050, line: 1058, baseType: !3560, size: 448, offset: 14016)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3549, line: 144, size: 448, elements: !3561)
!3561 = !{!3562, !3563, !3564}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3560, file: !3549, line: 145, baseType: !826, size: 128, align: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3560, file: !3549, line: 146, baseType: !606, size: 256, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3560, file: !3549, line: 147, baseType: !7, size: 32, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3224, file: !1050, line: 1064, baseType: !1602, size: 64, offset: 14464)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3224, file: !1050, line: 1067, baseType: !1602, size: 64, offset: 14528)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3224, file: !1050, line: 1070, baseType: !1602, size: 64, offset: 14592)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3224, file: !1050, line: 1074, baseType: !1629, size: 64, offset: 14656)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3224, file: !1050, line: 1084, baseType: !3570, size: 128, offset: 14720)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 16)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3224, file: !1050, line: 1086, baseType: !3574, size: 64, offset: 14848)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1050, line: 55, flags: DIFlagFwdDecl)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3224, file: !1050, line: 1089, baseType: !3577, size: 64, offset: 14912)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3578, line: 12, size: 64, elements: !3579)
!3578 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3579 = !{!3580}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3577, file: !3578, line: 13, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3578, line: 8, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3224, file: !1050, line: 1090, baseType: !3584, size: 128, offset: 14976)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3585, line: 13, size: 128, elements: !3586)
!3585 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3586 = !{!3587}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3584, file: !3585, line: 14, baseType: !182, size: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3224, file: !1050, line: 1097, baseType: !3589, size: 64, offset: 15104)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1050, line: 50, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3224, file: !1050, line: 1100, baseType: !3592, size: 64, offset: 15168)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1050, line: 1100, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3224, file: !1050, line: 1103, baseType: !3595, size: 64, offset: 15232)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1050, line: 53, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3224, file: !1050, line: 1107, baseType: !3598, size: 64, offset: 15296)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1050, line: 56, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3224, file: !1050, line: 1110, baseType: !3601, size: 64, offset: 15360)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3603, line: 93, size: 8768, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3652, !3661, !3662, !3664, !3665, !3666, !3669, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3707, !3708, !3715, !3725, !3728, !3729, !3732, !3733, !3734, !3735, !3736, !3737}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3602, file: !3603, line: 94, baseType: !1569, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3602, file: !3603, line: 95, baseType: !215, size: 32, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3602, file: !3603, line: 96, baseType: !89, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3602, file: !3603, line: 97, baseType: !89, size: 32, offset: 96)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3602, file: !3603, line: 98, baseType: !182, size: 128, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3602, file: !3603, line: 100, baseType: !1580, size: 192, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3602, file: !3603, line: 103, baseType: !3223, size: 64, offset: 448)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3602, file: !3603, line: 106, baseType: !3613, size: 192, offset: 512)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1777, line: 32, size: 192, elements: !3614)
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3613, file: !1777, line: 33, baseType: !182, size: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3613, file: !1777, line: 34, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3618, line: 25, baseType: !3619)
!3618 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3618, line: 23, size: 64, elements: !3620)
!3620 = !{!3621}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3619, file: !3618, line: 24, baseType: !2988, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3602, file: !3603, line: 109, baseType: !976, size: 64, offset: 704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3602, file: !3603, line: 112, baseType: !89, size: 32, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3602, file: !3603, line: 114, baseType: !89, size: 32, offset: 800)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3602, file: !3603, line: 115, baseType: !3223, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3602, file: !3603, line: 118, baseType: !89, size: 32, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3602, file: !3603, line: 119, baseType: !7, size: 32, offset: 928)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3602, file: !3603, line: 121, baseType: !3629, size: 64, offset: 960)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3603, line: 80, size: 448, elements: !3631)
!3631 = !{!3632, !3633, !3639}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3630, file: !3603, line: 81, baseType: !215, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3630, file: !3603, line: 82, baseType: !3634, size: 128, offset: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3603, line: 75, size: 128, elements: !3635)
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3634, file: !3603, line: 76, baseType: !3223, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3634, file: !3603, line: 77, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3630, file: !3603, line: 83, baseType: !555, size: 256, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3602, file: !3603, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3602, file: !3603, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3602, file: !3603, line: 138, baseType: !7, size: 32, offset: 1056)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3602, file: !3603, line: 139, baseType: !182, size: 128, offset: 1088)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3602, file: !3603, line: 142, baseType: !2724, size: 512, offset: 1216)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3602, file: !3603, line: 143, baseType: !2704, size: 64, offset: 1728)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3602, file: !3603, line: 150, baseType: !3647, size: 256, offset: 1792)
!3647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3648, size: 256, elements: !725)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3603, line: 38, size: 128, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3648, file: !3603, line: 39, baseType: !418, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3648, file: !3603, line: 40, baseType: !418, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3602, file: !3603, line: 156, baseType: !3653, size: 192, offset: 2048)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3603, line: 66, size: 192, elements: !3654)
!3654 = !{!3655}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3653, file: !3603, line: 67, baseType: !3656, size: 192)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3603, line: 47, size: 192, elements: !3657)
!3657 = !{!3658, !3659, !3660}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3656, file: !3603, line: 48, baseType: !612, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3656, file: !3603, line: 49, baseType: !612, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3656, file: !3603, line: 50, baseType: !612, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3602, file: !3603, line: 160, baseType: !3548, size: 640, offset: 2240)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3602, file: !3603, line: 163, baseType: !3663, size: 256, offset: 2880)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, size: 256, elements: !836)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3602, file: !3603, line: 169, baseType: !1565, size: 64, offset: 3136)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3602, file: !3603, line: 172, baseType: !89, size: 32, offset: 3200)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3602, file: !3603, line: 174, baseType: !3667, size: 64, offset: 3264)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3603, line: 174, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3602, file: !3603, line: 185, baseType: !3670, size: 64, offset: 3328)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !387, line: 860, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 853, size: 64, elements: !3672)
!3672 = !{!3673, !3674}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3671, file: !387, line: 858, baseType: !386, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3671, file: !387, line: 859, baseType: !195, size: 32, offset: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3602, file: !3603, line: 186, baseType: !418, size: 64, offset: 3392)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3602, file: !3603, line: 186, baseType: !418, size: 64, offset: 3456)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3602, file: !3603, line: 186, baseType: !418, size: 64, offset: 3520)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3602, file: !3603, line: 186, baseType: !418, size: 64, offset: 3584)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3602, file: !3603, line: 187, baseType: !418, size: 64, offset: 3648)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3602, file: !3603, line: 188, baseType: !418, size: 64, offset: 3712)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3602, file: !3603, line: 189, baseType: !3536, size: 192, offset: 3776)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3602, file: !3603, line: 190, baseType: !315, size: 64, offset: 3968)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3602, file: !3603, line: 190, baseType: !315, size: 64, offset: 4032)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3602, file: !3603, line: 190, baseType: !315, size: 64, offset: 4096)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3602, file: !3603, line: 190, baseType: !315, size: 64, offset: 4160)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3602, file: !3603, line: 191, baseType: !315, size: 64, offset: 4224)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3602, file: !3603, line: 191, baseType: !315, size: 64, offset: 4288)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3602, file: !3603, line: 191, baseType: !315, size: 64, offset: 4352)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3602, file: !3603, line: 191, baseType: !315, size: 64, offset: 4416)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3602, file: !3603, line: 192, baseType: !315, size: 64, offset: 4480)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3602, file: !3603, line: 192, baseType: !315, size: 64, offset: 4544)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3602, file: !3603, line: 192, baseType: !315, size: 64, offset: 4608)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3602, file: !3603, line: 192, baseType: !315, size: 64, offset: 4672)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3602, file: !3603, line: 193, baseType: !315, size: 64, offset: 4736)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3602, file: !3603, line: 193, baseType: !315, size: 64, offset: 4800)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3602, file: !3603, line: 194, baseType: !3697, size: 448, offset: 4864)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3698, line: 12, size: 448, elements: !3699)
!3698 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3697, file: !3698, line: 15, baseType: !418, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3697, file: !3698, line: 17, baseType: !418, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3697, file: !3698, line: 19, baseType: !418, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3697, file: !3698, line: 21, baseType: !418, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3697, file: !3698, line: 29, baseType: !418, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3697, file: !3698, line: 35, baseType: !418, size: 64, offset: 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3697, file: !3698, line: 44, baseType: !418, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3602, file: !3603, line: 202, baseType: !420, size: 64, offset: 5312)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3602, file: !3603, line: 213, baseType: !3709, size: 2048, offset: 5376)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3710, size: 2048, elements: !3571)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3711, line: 43, size: 128, elements: !3712)
!3711 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3712 = !{!3713, !3714}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3710, file: !3711, line: 44, baseType: !314, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3710, file: !3711, line: 45, baseType: !314, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3602, file: !3603, line: 216, baseType: !3716, size: 448, offset: 7424)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3603, line: 30, size: 448, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3716, file: !3603, line: 31, baseType: !89, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3716, file: !3603, line: 32, baseType: !301, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3716, file: !3603, line: 33, baseType: !315, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3716, file: !3603, line: 34, baseType: !418, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3716, file: !3603, line: 34, baseType: !418, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3716, file: !3603, line: 35, baseType: !315, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3716, file: !3603, line: 35, baseType: !315, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3602, file: !3603, line: 219, baseType: !3726, size: 64, offset: 7872)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3603, line: 219, flags: DIFlagFwdDecl)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3602, file: !3603, line: 222, baseType: !7, size: 32, offset: 7936)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3602, file: !3603, line: 223, baseType: !3730, size: 64, offset: 8000)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3603, line: 223, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3602, file: !3603, line: 230, baseType: !686, size: 8, offset: 8064)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3602, file: !3603, line: 231, baseType: !744, size: 16, offset: 8080)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3602, file: !3603, line: 232, baseType: !744, size: 16, offset: 8096)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3602, file: !3603, line: 234, baseType: !1492, size: 64, offset: 8128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3602, file: !3603, line: 237, baseType: !606, size: 256, offset: 8192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3602, file: !3603, line: 243, baseType: !1268, size: 320, offset: 8448)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3224, file: !1050, line: 1111, baseType: !3739, size: 64, offset: 15424)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3603, line: 20, size: 16640, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3740, file: !3603, line: 21, baseType: !195, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3740, file: !3603, line: 22, baseType: !1569, size: 32, offset: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3740, file: !3603, line: 23, baseType: !1580, size: 192, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3740, file: !3603, line: 24, baseType: !3746, size: 16384, offset: 256)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3747, size: 16384, elements: !270)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1777, line: 51, size: 256, elements: !3748)
!3748 = !{!3749}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3747, file: !1777, line: 52, baseType: !3750, size: 256)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1777, line: 37, size: 256, elements: !3751)
!3751 = !{!3752, !3759, !3760, !3764}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3750, file: !1777, line: 39, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3754, line: 83, baseType: !3755)
!3754 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3754, line: 82, baseType: !3757)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !89}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3750, file: !1777, line: 40, baseType: !315, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3750, file: !1777, line: 46, baseType: !3761, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3754, line: 86, baseType: !3762)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3754, line: 85, baseType: !971)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3750, file: !1777, line: 48, baseType: !3617, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3224, file: !1050, line: 1112, baseType: !3617, size: 64, offset: 15488)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3224, file: !1050, line: 1113, baseType: !3617, size: 64, offset: 15552)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3224, file: !1050, line: 1115, baseType: !3617, size: 64, offset: 15616)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3224, file: !1050, line: 1116, baseType: !3613, size: 192, offset: 15680)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3224, file: !1050, line: 1117, baseType: !315, size: 64, offset: 15872)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3224, file: !1050, line: 1118, baseType: !312, size: 64, offset: 15936)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3224, file: !1050, line: 1119, baseType: !7, size: 32, offset: 16000)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3224, file: !1050, line: 1121, baseType: !825, size: 64, offset: 16064)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3224, file: !1050, line: 1125, baseType: !3774, size: 64, offset: 16128)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1050, line: 43, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3224, file: !1050, line: 1127, baseType: !351, size: 32, offset: 16192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3224, file: !1050, line: 1128, baseType: !7, size: 32, offset: 16224)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3224, file: !1050, line: 1130, baseType: !3779, size: 128, offset: 16256)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3780, line: 37, size: 128, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3779, file: !3780, line: 38, baseType: !89, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3779, file: !3780, line: 39, baseType: !215, size: 32, offset: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3779, file: !3780, line: 40, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3780, line: 24, flags: DIFlagFwdDecl)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3224, file: !1050, line: 1131, baseType: !3788, size: 256, offset: 16384)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3789, line: 12, size: 256, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3790 = !{!3791, !3792, !3793, !3794}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3788, file: !3789, line: 13, baseType: !265, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3788, file: !3789, line: 14, baseType: !315, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3788, file: !3789, line: 15, baseType: !315, size: 64, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3788, file: !3789, line: 16, baseType: !686, size: 8, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3224, file: !1050, line: 1134, baseType: !418, size: 64, offset: 16640)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3224, file: !1050, line: 1135, baseType: !418, size: 64, offset: 16704)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3224, file: !1050, line: 1138, baseType: !195, size: 32, offset: 16768)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3224, file: !1050, line: 1141, baseType: !564, size: 32, offset: 16800)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3224, file: !1050, line: 1143, baseType: !3800, size: 64, offset: 16832)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1050, line: 735, size: 64, elements: !3801)
!3801 = !{!3802}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3800, file: !1050, line: 736, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3224, file: !1050, line: 1147, baseType: !2781, size: 128, offset: 16896)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3224, file: !1050, line: 1149, baseType: !3223, size: 64, offset: 17024)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3224, file: !1050, line: 1151, baseType: !3807, size: 64, offset: 17088)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1050, line: 1151, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3224, file: !1050, line: 1188, baseType: !172, size: 64, offset: 17152)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3224, file: !1050, line: 1191, baseType: !3811, size: 64, offset: 17216)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3224, file: !1050, line: 1194, baseType: !3813, size: 64, offset: 17280)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !57, line: 976, size: 320, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821, !3822}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3814, file: !57, line: 977, baseType: !1907, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3814, file: !57, line: 980, baseType: !1907, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3814, file: !57, line: 981, baseType: !235, size: 16, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3814, file: !57, line: 983, baseType: !235, size: 16, offset: 144)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3814, file: !57, line: 985, baseType: !686, size: 8, offset: 160)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3814, file: !57, line: 986, baseType: !686, size: 8, offset: 168)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3814, file: !57, line: 988, baseType: !182, size: 128, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3224, file: !1050, line: 1197, baseType: !3824, size: 64, offset: 17344)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1050, line: 61, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3224, file: !1050, line: 1199, baseType: !3827, size: 64, offset: 17408)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3829, line: 99, size: 128, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3830 = !{!3831, !3832, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3828, file: !3829, line: 100, baseType: !610, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3828, file: !3829, line: 101, baseType: !215, size: 32, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3828, file: !3829, line: 103, baseType: !235, size: 16, offset: 96)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3224, file: !1050, line: 1202, baseType: !3835, size: 64, offset: 17472)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1050, line: 48, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3224, file: !1050, line: 1205, baseType: !315, size: 64, offset: 17536)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3224, file: !1050, line: 1206, baseType: !3839, size: 64, offset: 17600)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1777, line: 14, baseType: !3841)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1777, line: 12, size: 384, elements: !3842)
!3842 = !{!3843}
!3843 = !DIDerivedType(tag: DW_TAG_member, scope: !3841, file: !1777, line: 13, baseType: !3844, size: 384)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3841, file: !1777, line: 13, size: 384, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3844, file: !1777, line: 13, baseType: !89, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3844, file: !1777, line: 13, baseType: !89, size: 32, offset: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3844, file: !1777, line: 13, baseType: !89, size: 32, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3844, file: !1777, line: 13, baseType: !3850, size: 256, offset: 128)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3851, line: 37, size: 256, elements: !3852)
!3851 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3852 = !{!3853, !3858, !3871, !3877, !3886, !3913, !3918}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3850, file: !3851, line: 42, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3851, line: 39, size: 64, elements: !3855)
!3855 = !{!3856, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3854, file: !3851, line: 40, baseType: !3513, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3854, file: !3851, line: 41, baseType: !357, size: 32, offset: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3850, file: !3851, line: 50, baseType: !3859, size: 192)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3851, line: 45, size: 192, elements: !3860)
!3860 = !{!3861, !3863, !3864, !3870}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3859, file: !3851, line: 46, baseType: !3862, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !299, line: 95, baseType: !89)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3859, file: !3851, line: 47, baseType: !89, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3859, file: !3851, line: 48, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3851, line: 11, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3851, line: 8, size: 64, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3866, file: !3851, line: 9, baseType: !89, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3866, file: !3851, line: 10, baseType: !172, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3859, file: !3851, line: 49, baseType: !89, size: 32, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3850, file: !3851, line: 57, baseType: !3872, size: 128)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3851, line: 53, size: 128, elements: !3873)
!3873 = !{!3874, !3875, !3876}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3872, file: !3851, line: 54, baseType: !3513, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3872, file: !3851, line: 55, baseType: !357, size: 32, offset: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3872, file: !3851, line: 56, baseType: !3865, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3850, file: !3851, line: 66, baseType: !3878, size: 256)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3851, line: 60, size: 256, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3885}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3878, file: !3851, line: 61, baseType: !3513, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3878, file: !3851, line: 62, baseType: !357, size: 32, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3878, file: !3851, line: 63, baseType: !89, size: 32, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3878, file: !3851, line: 64, baseType: !3884, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !299, line: 94, baseType: !300)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3878, file: !3851, line: 65, baseType: !3884, size: 64, offset: 192)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3850, file: !3851, line: 105, baseType: !3887, size: 256)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3851, line: 69, size: 256, elements: !3888)
!3888 = !{!3889, !3890}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3887, file: !3851, line: 70, baseType: !172, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !3887, file: !3851, line: 79, baseType: !3891, size: 192, offset: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3887, file: !3851, line: 79, size: 192, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3902, !3907}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3891, file: !3851, line: 81, baseType: !89, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3891, file: !3851, line: 86, baseType: !744, size: 16)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3891, file: !3851, line: 92, baseType: !3896, size: 192)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3891, file: !3851, line: 88, size: 192, elements: !3897)
!3897 = !{!3898, !3900, !3901}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3896, file: !3851, line: 89, baseType: !3899, size: 64)
!3899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !2765)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3896, file: !3851, line: 90, baseType: !172, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3896, file: !3851, line: 91, baseType: !172, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3891, file: !3851, line: 97, baseType: !3903, size: 96)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3891, file: !3851, line: 94, size: 96, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3903, file: !3851, line: 95, baseType: !3899, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3903, file: !3851, line: 96, baseType: !415, size: 32, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3891, file: !3851, line: 103, baseType: !3908, size: 128)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3891, file: !3851, line: 99, size: 128, elements: !3909)
!3909 = !{!3910, !3911, !3912}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3908, file: !3851, line: 100, baseType: !315, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3908, file: !3851, line: 101, baseType: !415, size: 32, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3908, file: !3851, line: 102, baseType: !415, size: 32, offset: 96)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3850, file: !3851, line: 111, baseType: !3914, size: 128)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3851, line: 108, size: 128, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3914, file: !3851, line: 109, baseType: !301, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3914, file: !3851, line: 110, baseType: !89, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3850, file: !3851, line: 118, baseType: !3919, size: 128)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3851, line: 114, size: 128, elements: !3920)
!3920 = !{!3921, !3922, !3923}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3919, file: !3851, line: 115, baseType: !172, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3919, file: !3851, line: 116, baseType: !89, size: 32, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3919, file: !3851, line: 117, baseType: !7, size: 32, offset: 96)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3224, file: !1050, line: 1208, baseType: !3697, size: 448, offset: 17664)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3224, file: !1050, line: 1215, baseType: !418, size: 64, offset: 18112)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3224, file: !1050, line: 1217, baseType: !418, size: 64, offset: 18176)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3224, file: !1050, line: 1219, baseType: !418, size: 64, offset: 18240)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3224, file: !1050, line: 1223, baseType: !3929, size: 64, offset: 18304)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3930, line: 99, baseType: !3931)
!3930 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3930, line: 99, size: 64, elements: !3932)
!3932 = !{!3933}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3931, file: !3930, line: 99, baseType: !2988, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3224, file: !1050, line: 1225, baseType: !386, size: 32, offset: 18368)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3224, file: !1050, line: 1226, baseType: !89, size: 32, offset: 18400)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3224, file: !1050, line: 1227, baseType: !89, size: 32, offset: 18432)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3224, file: !1050, line: 1231, baseType: !3938, size: 64, offset: 18496)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1050, line: 1231, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3224, file: !1050, line: 1233, baseType: !182, size: 128, offset: 18560)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3224, file: !1050, line: 1240, baseType: !3942, size: 64, offset: 18688)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1050, line: 62, flags: DIFlagFwdDecl)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3224, file: !1050, line: 1242, baseType: !3945, size: 64, offset: 18752)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1050, line: 1242, flags: DIFlagFwdDecl)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3224, file: !1050, line: 1244, baseType: !182, size: 128, offset: 18816)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3224, file: !1050, line: 1245, baseType: !3949, size: 64, offset: 18944)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1050, line: 51, flags: DIFlagFwdDecl)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3224, file: !1050, line: 1246, baseType: !606, size: 256, offset: 19008)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3224, file: !1050, line: 1247, baseType: !7, size: 32, offset: 19264)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3224, file: !1050, line: 1250, baseType: !3954, size: 64, offset: 19328)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1050, line: 57, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3224, file: !1050, line: 1251, baseType: !606, size: 256, offset: 19392)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3224, file: !1050, line: 1252, baseType: !182, size: 128, offset: 19648)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3224, file: !1050, line: 1259, baseType: !2237, size: 64, offset: 19776)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3224, file: !1050, line: 1260, baseType: !744, size: 16, offset: 19840)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3224, file: !1050, line: 1261, baseType: !744, size: 16, offset: 19856)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3224, file: !1050, line: 1314, baseType: !3962, size: 64, offset: 19904)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3964, line: 62, size: 256, align: 256, elements: !3965)
!3964 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3963, file: !3964, line: 75, baseType: !415, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3963, file: !3964, line: 90, baseType: !415, size: 32, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3963, file: !3964, line: 112, baseType: !419, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3963, file: !3964, line: 132, baseType: !415, size: 32, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3963, file: !3964, line: 140, baseType: !415, size: 32, offset: 160)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3963, file: !3964, line: 149, baseType: !415, size: 32, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3963, file: !3964, line: 154, baseType: !3973, offset: 224)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !1595)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3224, file: !1050, line: 1315, baseType: !414, size: 32, offset: 19968)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3224, file: !1050, line: 1316, baseType: !414, size: 32, offset: 20000)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3224, file: !1050, line: 1321, baseType: !315, size: 64, offset: 20032)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3224, file: !1050, line: 1325, baseType: !89, size: 32, offset: 20096)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3224, file: !1050, line: 1326, baseType: !89, size: 32, offset: 20128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3224, file: !1050, line: 1327, baseType: !89, size: 32, offset: 20160)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3224, file: !1050, line: 1328, baseType: !89, size: 32, offset: 20192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3224, file: !1050, line: 1329, baseType: !826, size: 128, align: 64, offset: 20224)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3224, file: !1050, line: 1332, baseType: !3983, size: 128, offset: 20352)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3984, line: 51, size: 128, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3985 = !{!3986, !3991, !3992}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3983, file: !3984, line: 60, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3988, line: 7, size: 64, elements: !3989)
!3988 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3989 = !{!3990}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3987, file: !3988, line: 12, baseType: !3383, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3983, file: !3984, line: 63, baseType: !686, size: 8, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3983, file: !3984, line: 70, baseType: !686, size: 8, offset: 72)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3224, file: !1050, line: 1335, baseType: !1979, size: 64, offset: 20480)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3224, file: !1050, line: 1337, baseType: !3995, size: 128, offset: 20544)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3984, line: 39, size: 128, elements: !3996)
!3996 = !{!3997, !3998, !3999}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3995, file: !3984, line: 40, baseType: !1369, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3995, file: !3984, line: 42, baseType: !415, size: 32, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3995, file: !3984, line: 43, baseType: !415, size: 32, offset: 96)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3224, file: !1050, line: 1340, baseType: !4001, size: 64, offset: 20672)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1050, line: 69, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3224, file: !1050, line: 1351, baseType: !89, size: 32, offset: 20736)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3224, file: !1050, line: 1352, baseType: !89, size: 32, offset: 20768)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3224, file: !1050, line: 1354, baseType: !315, size: 64, offset: 20800)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3224, file: !1050, line: 1364, baseType: !418, size: 64, offset: 20864)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3224, file: !1050, line: 1365, baseType: !418, size: 64, offset: 20928)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3224, file: !1050, line: 1412, baseType: !315, size: 64, offset: 20992)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3224, file: !1050, line: 1453, baseType: !1298, size: 64, offset: 21056)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3224, file: !1050, line: 1457, baseType: !4011, size: 64, offset: 21120)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !143, line: 61, size: 576, elements: !4013)
!4013 = !{!4014, !4015, !4034, !4037, !4038, !4071, !4081}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4012, file: !143, line: 62, baseType: !142, size: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, scope: !4012, file: !143, line: 64, baseType: !4016, size: 192, offset: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4012, file: !143, line: 64, size: 192, elements: !4017)
!4017 = !{!4018, !4029}
!4018 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !143, line: 65, baseType: !4019, size: 192)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !143, line: 65, size: 192, elements: !4020)
!4020 = !{!4021, !4028}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4019, file: !143, line: 66, baseType: !4022, size: 128)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4023, line: 50, size: 128, elements: !4024)
!4023 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4024 = !{!4025, !4026, !4027}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4022, file: !4023, line: 52, baseType: !315, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4022, file: !4023, line: 54, baseType: !7, size: 32, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4022, file: !4023, line: 55, baseType: !7, size: 32, offset: 96)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4019, file: !143, line: 67, baseType: !315, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !4016, file: !143, line: 70, baseType: !4030, size: 192)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4016, file: !143, line: 70, size: 192, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4030, file: !143, line: 71, baseType: !826, size: 128, align: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4030, file: !143, line: 72, baseType: !315, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4012, file: !143, line: 76, baseType: !4035, size: 64, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !143, line: 76, flags: DIFlagFwdDecl)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4012, file: !143, line: 77, baseType: !315, size: 64, offset: 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4012, file: !143, line: 79, baseType: !4039, size: 64, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4023, line: 25, size: 256, elements: !4041)
!4041 = !{!4042, !4048, !4052}
!4042 = !DIDerivedType(tag: DW_TAG_member, scope: !4040, file: !4023, line: 26, baseType: !4043, size: 128)
!4043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4040, file: !4023, line: 26, size: 128, elements: !4044)
!4044 = !{!4045, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4043, file: !4023, line: 27, baseType: !4046, size: 128)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !3571)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4043, file: !4023, line: 28, baseType: !4046, size: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4040, file: !4023, line: 31, baseType: !4049, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4051)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4023, line: 23, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !4040, file: !4023, line: 33, baseType: !4053, size: 64, offset: 192)
!4053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4040, file: !4023, line: 33, size: 64, elements: !4054)
!4054 = !{!4055, !4061, !4066}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4053, file: !4023, line: 38, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4053, file: !4023, line: 34, size: 64, elements: !4057)
!4057 = !{!4058, !4059, !4060}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4056, file: !4023, line: 35, baseType: !602, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4056, file: !4023, line: 36, baseType: !223, size: 8, offset: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4056, file: !4023, line: 37, baseType: !223, size: 8, offset: 40)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4053, file: !4023, line: 42, baseType: !4062, size: 16)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4053, file: !4023, line: 39, size: 16, elements: !4063)
!4063 = !{!4064, !4065}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4062, file: !4023, line: 40, baseType: !223, size: 8)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4062, file: !4023, line: 41, baseType: !223, size: 8, offset: 8)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4053, file: !4023, line: 46, baseType: !4067, size: 16)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4053, file: !4023, line: 43, size: 16, elements: !4068)
!4068 = !{!4069, !4070}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4067, file: !4023, line: 44, baseType: !223, size: 8)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4067, file: !4023, line: 45, baseType: !223, size: 8, offset: 8)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4012, file: !143, line: 81, baseType: !4072, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !143, line: 85, size: 384, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4073, file: !143, line: 86, baseType: !4035, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4073, file: !143, line: 87, baseType: !315, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4073, file: !143, line: 88, baseType: !315, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4073, file: !143, line: 89, baseType: !315, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4073, file: !143, line: 90, baseType: !686, size: 8, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4073, file: !143, line: 92, baseType: !4072, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4012, file: !143, line: 82, baseType: !7, size: 32, offset: 512)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3224, file: !1050, line: 1463, baseType: !4083, offset: 21184)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1050, line: 739, elements: !895)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3224, file: !1050, line: 1470, baseType: !826, size: 128, align: 64, offset: 21184)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3224, file: !1050, line: 1471, baseType: !1569, size: 32, offset: 21312)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3224, file: !1050, line: 1472, baseType: !89, size: 32, offset: 21344)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3224, file: !1050, line: 1474, baseType: !3223, size: 64, offset: 21376)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3224, file: !1050, line: 1475, baseType: !848, size: 320, offset: 21440)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3224, file: !1050, line: 1478, baseType: !4090, size: 64, offset: 21760)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1050, line: 1478, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3224, file: !1050, line: 1482, baseType: !1569, size: 32, offset: 21824)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3224, file: !1050, line: 1489, baseType: !172, size: 64, offset: 21888)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3224, file: !1050, line: 1504, baseType: !172, size: 64, offset: 21952)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3224, file: !1050, line: 1505, baseType: !419, size: 64, offset: 22016)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3224, file: !1050, line: 1506, baseType: !418, size: 64, offset: 22080)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3224, file: !1050, line: 1507, baseType: !419, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3224, file: !1050, line: 1508, baseType: !419, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3224, file: !1050, line: 1509, baseType: !419, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3224, file: !1050, line: 1510, baseType: !826, size: 128, align: 64, offset: 22208)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3224, file: !1050, line: 1511, baseType: !89, size: 32, offset: 22336)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3224, file: !1050, line: 1515, baseType: !4103, size: 64, offset: 22400)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1527, line: 56, size: 64, elements: !4104)
!4104 = !{!4105}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4103, file: !1527, line: 57, baseType: !1530, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3224, file: !1050, line: 1518, baseType: !4103, size: 64, offset: 22464)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3224, file: !1050, line: 1528, baseType: !826, size: 128, align: 64, offset: 22528)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3224, file: !1050, line: 1552, baseType: !4109, size: 35328, offset: 23040)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4110, line: 430, size: 35328, elements: !4111)
!4110 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4111 = !{!4112, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4141, !4142, !4143, !4144, !4145, !4146, !4149, !4150, !4151, !4152}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4109, file: !4110, line: 432, baseType: !4113, size: 192)
!4113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4114, size: 192, elements: !266)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4115, line: 16, size: 64, elements: !4116)
!4115 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4116 = !{!4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4114, file: !4115, line: 17, baseType: !233, size: 16)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4114, file: !4115, line: 18, baseType: !233, size: 16, offset: 16)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4114, file: !4115, line: 19, baseType: !233, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4114, file: !4115, line: 19, baseType: !233, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4114, file: !4115, line: 19, baseType: !233, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4114, file: !4115, line: 19, baseType: !233, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4114, file: !4115, line: 19, baseType: !233, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4114, file: !4115, line: 20, baseType: !233, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4114, file: !4115, line: 20, baseType: !233, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4114, file: !4115, line: 20, baseType: !233, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4114, file: !4115, line: 20, baseType: !233, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4114, file: !4115, line: 20, baseType: !233, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4114, file: !4115, line: 20, baseType: !233, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4109, file: !4110, line: 436, baseType: !315, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4109, file: !4110, line: 440, baseType: !235, size: 16, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4109, file: !4110, line: 441, baseType: !235, size: 16, offset: 272)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4109, file: !4110, line: 442, baseType: !235, size: 16, offset: 288)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4109, file: !4110, line: 443, baseType: !235, size: 16, offset: 304)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4109, file: !4110, line: 447, baseType: !315, size: 64, offset: 320)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4109, file: !4110, line: 448, baseType: !315, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4109, file: !4110, line: 459, baseType: !4138, size: 256, offset: 448)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4139, size: 256, elements: !836)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4110, line: 428, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4109, file: !4110, line: 461, baseType: !315, size: 64, offset: 704)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4109, file: !4110, line: 463, baseType: !315, size: 64, offset: 768)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4109, file: !4110, line: 465, baseType: !315, size: 64, offset: 832)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4109, file: !4110, line: 466, baseType: !315, size: 64, offset: 896)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4109, file: !4110, line: 467, baseType: !315, size: 64, offset: 960)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4109, file: !4110, line: 473, baseType: !4147, size: 64, offset: 1024)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4110, line: 10, flags: DIFlagFwdDecl)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4109, file: !4110, line: 480, baseType: !315, size: 64, offset: 1088)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4109, file: !4110, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4109, file: !4110, line: 491, baseType: !414, size: 32, offset: 1184)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4109, file: !4110, line: 501, baseType: !4153, size: 33792, offset: 1536)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4154, line: 448, size: 33792, elements: !4155)
!4154 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4155 = !{!4156, !4157, !4158, !4320, !4321, !4327, !4328}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4153, file: !4154, line: 461, baseType: !7, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4153, file: !4154, line: 468, baseType: !315, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4153, file: !4154, line: 476, baseType: !4159, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4154, line: 356, size: 33280, align: 512, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4160, file: !4154, line: 358, baseType: !7, size: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4160, file: !4154, line: 361, baseType: !7, size: 32, offset: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4160, file: !4154, line: 364, baseType: !418, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4160, file: !4154, line: 367, baseType: !418, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4160, file: !4154, line: 370, baseType: !418, size: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4160, file: !4154, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4160, file: !4154, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4160, file: !4154, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4160, file: !4154, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4160, file: !4154, line: 397, baseType: !4172, size: 32768, offset: 512)
!4172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4154, line: 348, size: 32768, elements: !4173)
!4173 = !{!4174, !4189, !4226, !4303, !4316}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4172, file: !4154, line: 349, baseType: !4175, size: 896)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4154, line: 12, size: 896, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4188}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4175, file: !4154, line: 13, baseType: !414, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4175, file: !4154, line: 14, baseType: !414, size: 32, offset: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4175, file: !4154, line: 15, baseType: !414, size: 32, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4175, file: !4154, line: 16, baseType: !414, size: 32, offset: 96)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4175, file: !4154, line: 17, baseType: !414, size: 32, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4175, file: !4154, line: 18, baseType: !414, size: 32, offset: 160)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4175, file: !4154, line: 19, baseType: !414, size: 32, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4175, file: !4154, line: 22, baseType: !4185, size: 640, offset: 224)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 640, elements: !4186)
!4186 = !{!4187}
!4187 = !DISubrange(count: 20)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4175, file: !4154, line: 25, baseType: !414, size: 32, offset: 864)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4172, file: !4154, line: 350, baseType: !4190, size: 4096, align: 128)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4154, line: 34, size: 4096, align: 128, elements: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4211, !4212, !4213, !4215, !4217, !4221}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4190, file: !4154, line: 35, baseType: !233, size: 16)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4190, file: !4154, line: 36, baseType: !233, size: 16, offset: 16)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4190, file: !4154, line: 37, baseType: !233, size: 16, offset: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4190, file: !4154, line: 38, baseType: !233, size: 16, offset: 48)
!4196 = !DIDerivedType(tag: DW_TAG_member, scope: !4190, file: !4154, line: 39, baseType: !4197, size: 128, offset: 64)
!4197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4190, file: !4154, line: 39, size: 128, elements: !4198)
!4198 = !{!4199, !4204}
!4199 = !DIDerivedType(tag: DW_TAG_member, scope: !4197, file: !4154, line: 40, baseType: !4200, size: 128)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4197, file: !4154, line: 40, size: 128, elements: !4201)
!4201 = !{!4202, !4203}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4200, file: !4154, line: 41, baseType: !418, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4200, file: !4154, line: 42, baseType: !418, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, scope: !4197, file: !4154, line: 44, baseType: !4205, size: 128)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4197, file: !4154, line: 44, size: 128, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4210}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4205, file: !4154, line: 45, baseType: !414, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4205, file: !4154, line: 46, baseType: !414, size: 32, offset: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4205, file: !4154, line: 47, baseType: !414, size: 32, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4205, file: !4154, line: 48, baseType: !414, size: 32, offset: 96)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4190, file: !4154, line: 51, baseType: !414, size: 32, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4190, file: !4154, line: 52, baseType: !414, size: 32, offset: 224)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4190, file: !4154, line: 55, baseType: !4214, size: 1024, offset: 256)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !427)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4190, file: !4154, line: 58, baseType: !4216, size: 2048, offset: 1280)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 2048, elements: !270)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4190, file: !4154, line: 60, baseType: !4218, size: 384, offset: 3328)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, elements: !4219)
!4219 = !{!4220}
!4220 = !DISubrange(count: 12)
!4221 = !DIDerivedType(tag: DW_TAG_member, scope: !4190, file: !4154, line: 62, baseType: !4222, size: 384, offset: 3712)
!4222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4190, file: !4154, line: 62, size: 384, elements: !4223)
!4223 = !{!4224, !4225}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4222, file: !4154, line: 63, baseType: !4218, size: 384)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4222, file: !4154, line: 64, baseType: !4218, size: 384)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4172, file: !4154, line: 351, baseType: !4227, size: 1088)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4154, line: 79, size: 1088, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4302}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4227, file: !4154, line: 80, baseType: !414, size: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4227, file: !4154, line: 81, baseType: !414, size: 32, offset: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4227, file: !4154, line: 82, baseType: !414, size: 32, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4227, file: !4154, line: 83, baseType: !414, size: 32, offset: 96)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4227, file: !4154, line: 84, baseType: !414, size: 32, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4227, file: !4154, line: 85, baseType: !414, size: 32, offset: 160)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4227, file: !4154, line: 86, baseType: !414, size: 32, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4227, file: !4154, line: 88, baseType: !4185, size: 640, offset: 224)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4227, file: !4154, line: 89, baseType: !223, size: 8, offset: 864)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4227, file: !4154, line: 90, baseType: !223, size: 8, offset: 872)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4227, file: !4154, line: 91, baseType: !223, size: 8, offset: 880)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4227, file: !4154, line: 92, baseType: !223, size: 8, offset: 888)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4227, file: !4154, line: 93, baseType: !223, size: 8, offset: 896)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4227, file: !4154, line: 94, baseType: !223, size: 8, offset: 904)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4227, file: !4154, line: 95, baseType: !4244, size: 64, offset: 960)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4246, line: 11, size: 128, elements: !4247)
!4246 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4247 = !{!4248, !4249}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4245, file: !4246, line: 12, baseType: !301, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4245, file: !4246, line: 13, baseType: !4250, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4252, line: 103, size: 1344, elements: !4253)
!4252 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4282, !4283, !4284}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4251, file: !4252, line: 109, baseType: !315, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4251, file: !4252, line: 110, baseType: !315, size: 64, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4251, file: !4252, line: 111, baseType: !315, size: 64, offset: 128)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4251, file: !4252, line: 112, baseType: !315, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4251, file: !4252, line: 113, baseType: !315, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4251, file: !4252, line: 114, baseType: !315, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4251, file: !4252, line: 117, baseType: !315, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4251, file: !4252, line: 118, baseType: !315, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4251, file: !4252, line: 119, baseType: !315, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4251, file: !4252, line: 120, baseType: !315, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4251, file: !4252, line: 121, baseType: !315, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4251, file: !4252, line: 122, baseType: !315, size: 64, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4251, file: !4252, line: 123, baseType: !315, size: 64, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4251, file: !4252, line: 124, baseType: !315, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4251, file: !4252, line: 125, baseType: !315, size: 64, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4251, file: !4252, line: 139, baseType: !315, size: 64, offset: 960)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4251, file: !4252, line: 142, baseType: !315, size: 64, offset: 1024)
!4271 = !DIDerivedType(tag: DW_TAG_member, scope: !4251, file: !4252, line: 144, baseType: !4272, size: 64, offset: 1088)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4251, file: !4252, line: 144, size: 64, elements: !4273)
!4273 = !{!4274, !4275, !4276}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4272, file: !4252, line: 146, baseType: !233, size: 16)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4272, file: !4252, line: 148, baseType: !418, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4272, file: !4252, line: 150, baseType: !4277, size: 64)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4252, line: 59, size: 64, elements: !4278)
!4278 = !{!4279, !4280, !4281}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4277, file: !4252, line: 61, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4277, file: !4252, line: 63, baseType: !418, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4277, file: !4252, line: 65, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4251, file: !4252, line: 153, baseType: !315, size: 64, offset: 1152)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4251, file: !4252, line: 154, baseType: !315, size: 64, offset: 1216)
!4284 = !DIDerivedType(tag: DW_TAG_member, scope: !4251, file: !4252, line: 156, baseType: !4285, size: 64, offset: 1280)
!4285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4251, file: !4252, line: 156, size: 64, elements: !4286)
!4286 = !{!4287, !4288, !4289}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4285, file: !4252, line: 158, baseType: !233, size: 16)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4285, file: !4252, line: 160, baseType: !418, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4285, file: !4252, line: 162, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4252, line: 69, size: 64, elements: !4291)
!4291 = !{!4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4290, file: !4252, line: 71, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4290, file: !4252, line: 73, baseType: !418, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4290, file: !4252, line: 75, baseType: !418, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4290, file: !4252, line: 77, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4290, file: !4252, line: 80, baseType: !418, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4290, file: !4252, line: 83, baseType: !418, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4290, file: !4252, line: 86, baseType: !418, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4290, file: !4252, line: 88, baseType: !418, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4290, file: !4252, line: 93, baseType: !418, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4290, file: !4252, line: 100, baseType: !418, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4227, file: !4154, line: 96, baseType: !414, size: 32, offset: 1024)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4172, file: !4154, line: 352, baseType: !4304, size: 4608, align: 512)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4154, line: 333, size: 4608, align: 512, elements: !4305)
!4305 = !{!4306, !4307, !4314}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4304, file: !4154, line: 334, baseType: !4190, size: 4096, align: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4304, file: !4154, line: 335, baseType: !4308, size: 512, offset: 4096)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4154, line: 312, size: 512, elements: !4309)
!4309 = !{!4310, !4311, !4312}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4308, file: !4154, line: 313, baseType: !418, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4308, file: !4154, line: 314, baseType: !418, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4308, file: !4154, line: 315, baseType: !4313, size: 384, offset: 128)
!4313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !1678)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4304, file: !4154, line: 336, baseType: !4315, offset: 4608)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !1595)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4172, file: !4154, line: 353, baseType: !4317, size: 32768)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 32768, elements: !4318)
!4318 = !{!4319}
!4319 = !DISubrange(count: 4096)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4153, file: !4154, line: 484, baseType: !4159, size: 64, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4153, file: !4154, line: 491, baseType: !4322, size: 128, offset: 256)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4154, line: 404, size: 128, elements: !4323)
!4323 = !{!4324, !4325, !4326}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4322, file: !4154, line: 424, baseType: !418, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4322, file: !4154, line: 432, baseType: !7, size: 32, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4322, file: !4154, line: 440, baseType: !7, size: 32, offset: 96)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4153, file: !4154, line: 498, baseType: !4322, size: 128, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4153, file: !4154, line: 508, baseType: !4160, size: 33280, align: 512, offset: 512)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3206, file: !3207, line: 16, baseType: !1580, size: 192, offset: 512)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3206, file: !3207, line: 17, baseType: !215, size: 32, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !497, file: !14, line: 1240, baseType: !172, size: 64, offset: 6912)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !497, file: !14, line: 1243, baseType: !414, size: 32, offset: 6976)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !497, file: !14, line: 1245, baseType: !1108, size: 64, offset: 7040)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !497, file: !14, line: 1246, baseType: !1108, size: 64, offset: 7104)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !497, file: !14, line: 1248, baseType: !415, size: 32, offset: 7168)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !497, file: !14, line: 1249, baseType: !4337, size: 64, offset: 7232)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !497, file: !14, line: 1252, baseType: !1305, size: 256, offset: 7296)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !497, file: !14, line: 1253, baseType: !4341, size: 128, offset: 7552)
!4341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4342, line: 21, baseType: !4343)
!4342 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4342, line: 19, size: 128, elements: !4344)
!4344 = !{!4345}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4343, file: !4342, line: 20, baseType: !4346, size: 128)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !3571)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !497, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !497, file: !14, line: 1261, baseType: !606, size: 256, offset: 7744)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !497, file: !14, line: 1267, baseType: !178, size: 64, offset: 8000)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !497, file: !14, line: 1269, baseType: !443, size: 64, offset: 8064)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !497, file: !14, line: 1271, baseType: !4352, size: 448, offset: 8128)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1117, line: 63, size: 448, elements: !4353)
!4353 = !{!4354, !4359, !4360, !4361, !4362, !4363, !4364}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4352, file: !1117, line: 64, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!315, !4358, !1115}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4352, file: !1117, line: 66, baseType: !4355, size: 64, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4352, file: !1117, line: 69, baseType: !301, size: 64, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4352, file: !1117, line: 70, baseType: !89, size: 32, offset: 192)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4352, file: !1117, line: 71, baseType: !7, size: 32, offset: 224)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4352, file: !1117, line: 74, baseType: !182, size: 128, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4352, file: !1117, line: 85, baseType: !4365, size: 64, offset: 384)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !497, file: !14, line: 1274, baseType: !610, size: 64, offset: 8576)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !497, file: !14, line: 1280, baseType: !610, size: 64, offset: 8640)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !497, file: !14, line: 1283, baseType: !89, size: 32, offset: 8704)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !497, file: !14, line: 1286, baseType: !2029, size: 32, offset: 8736)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !497, file: !14, line: 1289, baseType: !928, size: 64, offset: 8768)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !497, file: !14, line: 1290, baseType: !976, size: 64, offset: 8832)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !497, file: !14, line: 1297, baseType: !1772, size: 64, offset: 8896)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !497, file: !14, line: 1304, baseType: !4374, size: 64, offset: 8960)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4375, line: 49, size: 64, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4376 = !{!4377}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4374, file: !4375, line: 50, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4375, line: 41, size: 512, align: 512, elements: !4380)
!4380 = !{!4381, !4382, !4387}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4379, file: !4375, line: 43, baseType: !195, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4379, file: !4375, line: 45, baseType: !4383, size: 192, offset: 64)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4375, line: 29, size: 192, elements: !4384)
!4384 = !{!4385, !4386}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4383, file: !4375, line: 30, baseType: !182, size: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4383, file: !4375, line: 32, baseType: !301, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4379, file: !4375, line: 46, baseType: !301, size: 64, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !497, file: !14, line: 1305, baseType: !4374, size: 64, offset: 9024)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !497, file: !14, line: 1306, baseType: !826, size: 128, align: 64, offset: 9088)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !497, file: !14, line: 1307, baseType: !866, size: 256, offset: 9216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !497, file: !14, line: 1309, baseType: !606, size: 256, offset: 9472)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !497, file: !14, line: 1314, baseType: !89, size: 32, offset: 9728)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !497, file: !14, line: 1317, baseType: !195, size: 32, align: 512, offset: 10240)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !497, file: !14, line: 1318, baseType: !182, size: 128, offset: 10304)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !497, file: !14, line: 1320, baseType: !195, size: 32, offset: 10432)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !497, file: !14, line: 1321, baseType: !182, size: 128, offset: 10496)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !491, file: !492, line: 73, baseType: !89, size: 32, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !491, file: !492, line: 74, baseType: !4399, size: 64, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1619, line: 42, flags: DIFlagFwdDecl)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !445, file: !382, line: 141, baseType: !4403, size: 64, offset: 704)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!89, !1178, !686}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !445, file: !382, line: 142, baseType: !4407, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!380, !380, !4410}
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !381, file: !382, line: 96, baseType: !496, size: 64, offset: 832)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !381, file: !382, line: 97, baseType: !315, size: 64, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !381, file: !382, line: 98, baseType: !172, size: 64, offset: 960)
!4415 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !382, line: 100, baseType: !4416, size: 128, offset: 1024)
!4416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 100, size: 128, elements: !4417)
!4417 = !{!4418, !4419}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4416, file: !382, line: 101, baseType: !182, size: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4416, file: !382, line: 102, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !381, file: !382, line: 104, baseType: !182, size: 128, offset: 1152)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !381, file: !382, line: 105, baseType: !182, size: 128, offset: 1280)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !381, file: !382, line: 113, baseType: !4424, size: 128, offset: 1408)
!4424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 109, size: 128, elements: !4425)
!4425 = !{!4426, !4427, !4428}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4424, file: !382, line: 110, baseType: !852, size: 128)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4424, file: !382, line: 111, baseType: !396, size: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4424, file: !382, line: 112, baseType: !826, size: 128, align: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !374, file: !14, line: 1968, baseType: !4430, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!178, !380, !345, !4433}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4435, line: 10, size: 128, elements: !4436)
!4435 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4436 = !{!4437, !4438}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4434, file: !4435, line: 11, baseType: !649, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4434, file: !4435, line: 12, baseType: !172, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !374, file: !14, line: 1969, baseType: !4440, size: 64, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!89, !4399, !345, !89}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !374, file: !14, line: 1970, baseType: !4444, size: 64, offset: 192)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!368, !345, !89, !686}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !374, file: !14, line: 1972, baseType: !4448, size: 64, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!89, !380, !265, !89}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !374, file: !14, line: 1974, baseType: !4452, size: 64, offset: 320)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!89, !4399, !345, !380, !307, !686}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !374, file: !14, line: 1976, baseType: !4456, size: 64, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!89, !380, !345, !380}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !374, file: !14, line: 1977, baseType: !4460, size: 64, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!89, !345, !380}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !374, file: !14, line: 1978, baseType: !4464, size: 64, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!89, !4399, !345, !380, !178}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !374, file: !14, line: 1980, baseType: !4468, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!89, !4399, !345, !380, !307}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !374, file: !14, line: 1982, baseType: !4460, size: 64, offset: 640)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !374, file: !14, line: 1983, baseType: !4473, size: 64, offset: 704)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!89, !4399, !345, !380, !307, !501}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !374, file: !14, line: 1985, baseType: !4477, size: 64, offset: 768)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!89, !4399, !345, !380, !345, !380, !7}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !374, file: !14, line: 1987, baseType: !4481, size: 64, offset: 832)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!89, !4399, !380, !4484}
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4486)
!4486 = !{!4487, !4488, !4489, !4499, !4508, !4509, !4514, !4515, !4516}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4485, file: !14, line: 227, baseType: !7, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4485, file: !14, line: 228, baseType: !307, size: 16, offset: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, scope: !4485, file: !14, line: 241, baseType: !4490, size: 32, offset: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4485, file: !14, line: 241, size: 32, elements: !4491)
!4491 = !{!4492, !4493}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4490, file: !14, line: 242, baseType: !351, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4490, file: !14, line: 243, baseType: !4494, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4495, line: 16, baseType: !4496)
!4495 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4495, line: 14, size: 32, elements: !4497)
!4497 = !{!4498}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4496, file: !4495, line: 15, baseType: !356, size: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, scope: !4485, file: !14, line: 245, baseType: !4500, size: 32, offset: 96)
!4500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4485, file: !14, line: 245, size: 32, elements: !4501)
!4501 = !{!4502, !4503}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4500, file: !14, line: 246, baseType: !360, size: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4500, file: !14, line: 247, baseType: !4504, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4495, line: 20, baseType: !4505)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4495, line: 18, size: 32, elements: !4506)
!4506 = !{!4507}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4505, file: !4495, line: 19, baseType: !364, size: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4485, file: !14, line: 249, baseType: !506, size: 64, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4485, file: !14, line: 250, baseType: !4510, size: 128, offset: 192)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1109, line: 13, size: 128, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4510, file: !1109, line: 14, baseType: !1108, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4510, file: !1109, line: 15, baseType: !301, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4485, file: !14, line: 251, baseType: !4510, size: 128, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4485, file: !14, line: 252, baseType: !4510, size: 128, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4485, file: !14, line: 259, baseType: !1519, size: 64, offset: 576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !374, file: !14, line: 1988, baseType: !4518, size: 64, offset: 896)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!89, !4399, !1178, !4521, !414, !7}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4523, line: 22, size: 1280, elements: !4524)
!4523 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4524 = !{!4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4522, file: !4523, line: 23, baseType: !414, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4522, file: !4523, line: 24, baseType: !307, size: 16, offset: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4522, file: !4523, line: 25, baseType: !7, size: 32, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4522, file: !4523, line: 26, baseType: !1657, size: 32, offset: 96)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4522, file: !4523, line: 27, baseType: !418, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4522, file: !4523, line: 28, baseType: !418, size: 64, offset: 192)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4522, file: !4523, line: 41, baseType: !418, size: 64, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4522, file: !4523, line: 42, baseType: !501, size: 32, offset: 320)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4522, file: !4523, line: 43, baseType: !501, size: 32, offset: 352)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4522, file: !4523, line: 44, baseType: !351, size: 32, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4522, file: !4523, line: 45, baseType: !360, size: 32, offset: 416)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4522, file: !4523, line: 46, baseType: !506, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4522, file: !4523, line: 47, baseType: !4510, size: 128, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4522, file: !4523, line: 48, baseType: !4510, size: 128, offset: 640)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4522, file: !4523, line: 49, baseType: !4510, size: 128, offset: 768)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4522, file: !4523, line: 50, baseType: !4510, size: 128, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4522, file: !4523, line: 51, baseType: !418, size: 64, offset: 1024)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4522, file: !4523, line: 52, baseType: !418, size: 64, offset: 1088)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4522, file: !4523, line: 53, baseType: !414, size: 32, offset: 1152)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4522, file: !4523, line: 54, baseType: !414, size: 32, offset: 1184)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4522, file: !4523, line: 55, baseType: !418, size: 64, offset: 1216)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !374, file: !14, line: 1990, baseType: !4547, size: 64, offset: 960)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!297, !380, !265, !312}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !374, file: !14, line: 1991, baseType: !4551, size: 64, offset: 1024)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!89, !345, !4554, !418, !418}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !374, file: !14, line: 1993, baseType: !4557, size: 64, offset: 1088)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!89, !345, !89}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !374, file: !14, line: 1994, baseType: !4561, size: 64, offset: 1152)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!89, !345, !380, !1519, !7, !307}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !374, file: !14, line: 1997, baseType: !4565, size: 64, offset: 1216)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!89, !4399, !345, !1519, !307}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !374, file: !14, line: 1999, baseType: !4569, size: 64, offset: 1280)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!368, !4399, !380, !89}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !374, file: !14, line: 2001, baseType: !4573, size: 64, offset: 1344)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!89, !4399, !380, !368, !89}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !374, file: !14, line: 2003, baseType: !4577, size: 64, offset: 1408)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!89, !4399, !380, !4580}
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !374, file: !14, line: 2005, baseType: !4583, size: 64, offset: 1472)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!89, !380, !4580}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !374, file: !14, line: 2006, baseType: !4587, size: 64, offset: 1536)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!4590, !345}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4592)
!4592 = !{!4593, !4594}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4591, file: !14, line: 3193, baseType: !1309, size: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4591, file: !14, line: 3194, baseType: !414, size: 32, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !346, file: !14, line: 655, baseType: !496, size: 64, offset: 448)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !346, file: !14, line: 656, baseType: !341, size: 64, offset: 512)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !346, file: !14, line: 659, baseType: !172, size: 64, offset: 576)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !346, file: !14, line: 663, baseType: !315, size: 64, offset: 640)
!4599 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 671, baseType: !4600, size: 32, offset: 704)
!4600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 671, size: 32, elements: !4601)
!4601 = !{!4602, !4604}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4600, file: !14, line: 672, baseType: !4603, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4600, file: !14, line: 673, baseType: !7, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !346, file: !14, line: 675, baseType: !501, size: 32, offset: 736)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !346, file: !14, line: 676, baseType: !506, size: 64, offset: 768)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !346, file: !14, line: 677, baseType: !4510, size: 128, offset: 832)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !346, file: !14, line: 678, baseType: !4510, size: 128, offset: 960)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !346, file: !14, line: 679, baseType: !4510, size: 128, offset: 1088)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !346, file: !14, line: 680, baseType: !195, size: 32, offset: 1216)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !346, file: !14, line: 681, baseType: !235, size: 16, offset: 1248)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !346, file: !14, line: 682, baseType: !223, size: 8, offset: 1264)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !346, file: !14, line: 683, baseType: !223, size: 8, offset: 1272)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !346, file: !14, line: 684, baseType: !1256, size: 64, offset: 1280)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !346, file: !14, line: 691, baseType: !315, size: 64, offset: 1344)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !346, file: !14, line: 692, baseType: !1268, size: 320, offset: 1408)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !346, file: !14, line: 694, baseType: !315, size: 64, offset: 1728)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !346, file: !14, line: 695, baseType: !315, size: 64, offset: 1792)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !346, file: !14, line: 697, baseType: !852, size: 128, offset: 1856)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !346, file: !14, line: 698, baseType: !182, size: 128, offset: 1984)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !346, file: !14, line: 707, baseType: !182, size: 128, offset: 2112)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !346, file: !14, line: 708, baseType: !182, size: 128, offset: 2240)
!4623 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 709, baseType: !4624, size: 128, offset: 2368)
!4624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 709, size: 128, elements: !4625)
!4625 = !{!4626, !4627}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4624, file: !14, line: 710, baseType: !976, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4624, file: !14, line: 711, baseType: !826, size: 128, align: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !346, file: !14, line: 713, baseType: !612, size: 64, offset: 2496)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !346, file: !14, line: 714, baseType: !612, size: 64, offset: 2560)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !346, file: !14, line: 715, baseType: !215, size: 32, offset: 2624)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !346, file: !14, line: 716, baseType: !215, size: 32, offset: 2656)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !346, file: !14, line: 717, baseType: !215, size: 32, offset: 2688)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !346, file: !14, line: 719, baseType: !215, size: 32, offset: 2720)
!4634 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 721, baseType: !4635, size: 64, offset: 2752)
!4635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 721, size: 64, elements: !4636)
!4636 = !{!4637, !4638}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4635, file: !14, line: 722, baseType: !1803, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4635, file: !14, line: 723, baseType: !999, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !346, file: !14, line: 725, baseType: !4640, size: 64, offset: 2816)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !346, file: !14, line: 726, baseType: !342, size: 1536, align: 64, offset: 2880)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !346, file: !14, line: 727, baseType: !182, size: 128, offset: 4416)
!4644 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 728, baseType: !4645, size: 64, offset: 4544)
!4645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 728, size: 64, elements: !4646)
!4646 = !{!4647, !4648, !4651, !4652}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4645, file: !14, line: 729, baseType: !1979, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4645, file: !14, line: 730, baseType: !4649, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4645, file: !14, line: 731, baseType: !265, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4645, file: !14, line: 732, baseType: !7, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !346, file: !14, line: 735, baseType: !415, size: 32, offset: 4608)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !346, file: !14, line: 738, baseType: !415, size: 32, offset: 4640)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !346, file: !14, line: 739, baseType: !4337, size: 64, offset: 4672)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !346, file: !14, line: 750, baseType: !172, size: 64, offset: 4736)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !342, file: !14, line: 474, baseType: !1309, size: 128, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !342, file: !14, line: 475, baseType: !1268, size: 320, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !342, file: !14, line: 476, baseType: !1120, size: 32, offset: 512)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !342, file: !14, line: 477, baseType: !215, size: 32, offset: 544)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !342, file: !14, line: 482, baseType: !2781, size: 128, offset: 576)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !342, file: !14, line: 483, baseType: !315, size: 64, offset: 704)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !342, file: !14, line: 484, baseType: !315, size: 64, offset: 768)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !342, file: !14, line: 485, baseType: !4665, size: 64, offset: 832)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4667)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4668)
!4668 = !{!4669, !4673, !4743, !4747, !4751, !4757, !4762, !4766, !4770, !4774, !4778, !4782, !4783, !4787, !4791, !4795, !4800, !4804, !4810, !4811}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4667, file: !14, line: 405, baseType: !4670, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!89, !1369, !1011}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4667, file: !14, line: 406, baseType: !4674, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!89, !1519, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !41, line: 293, size: 1536, elements: !4679)
!4679 = !{!4680, !4710, !4724}
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !4678, file: !41, line: 295, baseType: !4681, size: 512)
!4681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4678, file: !41, line: 295, size: 512, elements: !4682)
!4682 = !{!4683, !4709}
!4683 = !DIDerivedType(tag: DW_TAG_member, scope: !4681, file: !41, line: 296, baseType: !4684, size: 448)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4681, file: !41, line: 296, size: 448, elements: !4685)
!4685 = !{!4686, !4687, !4696, !4697, !4698, !4707, !4708}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4684, file: !41, line: 298, baseType: !315, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, scope: !4684, file: !41, line: 299, baseType: !4688, size: 128, offset: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4684, file: !41, line: 299, size: 128, elements: !4689)
!4689 = !{!4690, !4691}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4688, file: !41, line: 300, baseType: !182, size: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, scope: !4688, file: !41, line: 302, baseType: !4692, size: 128)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4688, file: !41, line: 302, size: 128, elements: !4693)
!4693 = !{!4694, !4695}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4692, file: !41, line: 303, baseType: !172, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4692, file: !41, line: 305, baseType: !7, size: 32, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4684, file: !41, line: 310, baseType: !341, size: 64, offset: 192)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4684, file: !41, line: 311, baseType: !315, size: 64, offset: 256)
!4698 = !DIDerivedType(tag: DW_TAG_member, scope: !4684, file: !41, line: 312, baseType: !4699, size: 64, offset: 320)
!4699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4684, file: !41, line: 312, size: 64, elements: !4700)
!4700 = !{!4701, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4699, file: !41, line: 313, baseType: !172, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4699, file: !41, line: 314, baseType: !4703, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !41, line: 257, baseType: !4704)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 255, size: 64, elements: !4705)
!4705 = !{!4706}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4704, file: !41, line: 256, baseType: !315, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4684, file: !41, line: 316, baseType: !215, size: 32, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4684, file: !41, line: 317, baseType: !215, size: 32, offset: 416)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4681, file: !41, line: 323, baseType: !1370, size: 512, align: 128)
!4710 = !DIDerivedType(tag: DW_TAG_member, scope: !4678, file: !41, line: 325, baseType: !4711, size: 512, offset: 512)
!4711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4678, file: !41, line: 325, size: 512, elements: !4712)
!4712 = !{!4713, !4723}
!4713 = !DIDerivedType(tag: DW_TAG_member, scope: !4711, file: !41, line: 326, baseType: !4714, size: 320)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4711, file: !41, line: 326, size: 320, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4719, !4720, !4721, !4722}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4714, file: !41, line: 327, baseType: !315, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4714, file: !41, line: 328, baseType: !315, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4714, file: !41, line: 329, baseType: !315, size: 64, offset: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4714, file: !41, line: 331, baseType: !215, size: 32, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4714, file: !41, line: 332, baseType: !215, size: 32, offset: 224)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4714, file: !41, line: 333, baseType: !215, size: 32, offset: 256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4714, file: !41, line: 335, baseType: !7, size: 32, offset: 288)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4711, file: !41, line: 339, baseType: !1370, size: 512, align: 128)
!4724 = !DIDerivedType(tag: DW_TAG_member, scope: !4678, file: !41, line: 341, baseType: !4725, size: 512, offset: 1024)
!4725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4678, file: !41, line: 341, size: 512, elements: !4726)
!4726 = !{!4727, !4736, !4742}
!4727 = !DIDerivedType(tag: DW_TAG_member, scope: !4725, file: !41, line: 342, baseType: !4728, size: 384)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !41, line: 342, size: 384, elements: !4729)
!4729 = !{!4730, !4731, !4732, !4733, !4734, !4735}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4728, file: !41, line: 343, baseType: !315, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4728, file: !41, line: 344, baseType: !315, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4728, file: !41, line: 346, baseType: !172, size: 64, offset: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4728, file: !41, line: 347, baseType: !172, size: 64, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4728, file: !41, line: 348, baseType: !172, size: 64, offset: 256)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4728, file: !41, line: 349, baseType: !172, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_member, scope: !4725, file: !41, line: 352, baseType: !4737, size: 256)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4725, file: !41, line: 352, size: 256, elements: !4738)
!4738 = !{!4739, !4740, !4741}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4737, file: !41, line: 353, baseType: !315, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4737, file: !41, line: 354, baseType: !315, size: 64, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4737, file: !41, line: 356, baseType: !182, size: 128, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4725, file: !41, line: 359, baseType: !1370, size: 512, align: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4667, file: !14, line: 409, baseType: !4744, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!89, !341, !1011}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4667, file: !14, line: 412, baseType: !4748, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!686, !341, !4677}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4667, file: !14, line: 414, baseType: !4752, size: 64, offset: 256)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{null, !4755}
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4667, file: !14, line: 416, baseType: !4758, size: 64, offset: 320)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!89, !1519, !341, !506, !7, !4761, !1994}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4667, file: !14, line: 419, baseType: !4763, size: 64, offset: 384)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!89, !1519, !341, !506, !7, !7, !1369, !172}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4667, file: !14, line: 424, baseType: !4767, size: 64, offset: 448)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!1295, !341, !1295}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4667, file: !14, line: 425, baseType: !4771, size: 64, offset: 512)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{null, !4677, !312, !312}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4667, file: !14, line: 426, baseType: !4775, size: 64, offset: 576)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!686, !4677, !1120}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4667, file: !14, line: 427, baseType: !4779, size: 64, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !4677}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4667, file: !14, line: 428, baseType: !1822, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4667, file: !14, line: 433, baseType: !4784, size: 64, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!89, !341, !4677, !4677, !149}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4667, file: !14, line: 435, baseType: !4788, size: 64, offset: 832)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!89, !4677}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4667, file: !14, line: 436, baseType: !4792, size: 64, offset: 896)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!686, !4677, !312, !312}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4667, file: !14, line: 438, baseType: !4796, size: 64, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{null, !4677, !4799, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4667, file: !14, line: 439, baseType: !4801, size: 64, offset: 1024)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!89, !341, !1369}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4667, file: !14, line: 442, baseType: !4805, size: 64, offset: 1088)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!89, !4808, !1519, !2453}
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4667, file: !14, line: 444, baseType: !1986, size: 64, offset: 1152)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4667, file: !14, line: 445, baseType: !4812, size: 64, offset: 1216)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!89, !1825, !1847}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !14, line: 486, baseType: !315, size: 64, offset: 896)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !342, file: !14, line: 487, baseType: !1268, size: 320, offset: 960)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !342, file: !14, line: 488, baseType: !2029, size: 32, offset: 1280)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !342, file: !14, line: 489, baseType: !195, size: 32, offset: 1312)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !342, file: !14, line: 490, baseType: !182, size: 128, offset: 1344)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !342, file: !14, line: 491, baseType: !172, size: 64, offset: 1472)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !332, file: !291, line: 180, baseType: !4822, size: 64, offset: 320)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!297, !1519, !173, !331, !265, !506, !312}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !332, file: !291, line: 182, baseType: !4822, size: 64, offset: 384)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !332, file: !291, line: 184, baseType: !4827, size: 64, offset: 448)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!89, !1519, !173, !331, !1479}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !320, file: !291, line: 90, baseType: !4831, size: 64, offset: 192)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !320, file: !291, line: 91, baseType: !4833, size: 64, offset: 256)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !281, file: !175, line: 120, baseType: !4835, size: 64, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!2920, !248}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !281, file: !175, line: 121, baseType: !4839, size: 64, offset: 256)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!2120, !248}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !281, file: !175, line: 122, baseType: !4843, size: 64, offset: 320)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{null, !248, !2655, !2656}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !174, file: !175, line: 70, baseType: !4847, size: 64, offset: 384)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !521, line: 190, size: 1152, elements: !4849)
!4849 = !{!4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4941, !4942, !4943, !4944, !4945, !4948}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4848, file: !521, line: 191, baseType: !215, size: 32)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4848, file: !521, line: 192, baseType: !215, size: 32, offset: 32)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4848, file: !521, line: 202, baseType: !4847, size: 64, offset: 64)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4848, file: !521, line: 203, baseType: !178, size: 64, offset: 128)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4848, file: !521, line: 205, baseType: !718, size: 192, align: 64, offset: 192)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4848, file: !521, line: 207, baseType: !2120, size: 64, offset: 384)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4848, file: !521, line: 208, baseType: !7, size: 32, offset: 448)
!4857 = !DIDerivedType(tag: DW_TAG_member, scope: !4848, file: !521, line: 209, baseType: !4858, size: 256, offset: 512)
!4858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4848, file: !521, line: 209, size: 256, elements: !4859)
!4859 = !{!4860, !4869, !4873}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4858, file: !521, line: 210, baseType: !4861, size: 256)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !521, line: 153, size: 256, elements: !4862)
!4862 = !{!4863, !4864, !4865, !4868}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4861, file: !521, line: 154, baseType: !315, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4861, file: !521, line: 156, baseType: !2784, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4861, file: !521, line: 162, baseType: !4866, size: 64, offset: 128)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !521, line: 162, flags: DIFlagFwdDecl)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4861, file: !521, line: 167, baseType: !315, size: 64, offset: 192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4858, file: !521, line: 211, baseType: !4870, size: 64)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !521, line: 170, size: 64, elements: !4871)
!4871 = !{!4872}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4870, file: !521, line: 171, baseType: !4847, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4858, file: !521, line: 212, baseType: !4874, size: 256)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !521, line: 174, size: 256, elements: !4875)
!4875 = !{!4876, !4936, !4939, !4940}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4874, file: !521, line: 175, baseType: !4877, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4879)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !521, line: 271, size: 768, elements: !4880)
!4880 = !{!4881, !4901, !4905, !4909, !4913, !4917, !4921, !4925, !4926, !4927, !4928, !4932}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4879, file: !521, line: 276, baseType: !4882, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!89, !4885}
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !521, line: 251, size: 1216, elements: !4887)
!4887 = !{!4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4886, file: !521, line: 253, baseType: !4847, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4886, file: !521, line: 254, baseType: !1519, size: 64, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4886, file: !521, line: 255, baseType: !1048, size: 64, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4886, file: !521, line: 256, baseType: !172, size: 64, offset: 192)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4886, file: !521, line: 259, baseType: !606, size: 256, offset: 256)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4886, file: !521, line: 260, baseType: !606, size: 256, offset: 512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4886, file: !521, line: 261, baseType: !89, size: 32, offset: 768)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4886, file: !521, line: 262, baseType: !182, size: 128, offset: 832)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4886, file: !521, line: 263, baseType: !265, size: 64, offset: 960)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4886, file: !521, line: 265, baseType: !312, size: 64, offset: 1024)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4886, file: !521, line: 266, baseType: !686, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4886, file: !521, line: 267, baseType: !686, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4886, file: !521, line: 268, baseType: !2189, size: 64, offset: 1152)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4879, file: !521, line: 277, baseType: !4902, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{null, !4885}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4879, file: !521, line: 290, baseType: !4906, size: 64, offset: 128)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!89, !1048, !172}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4879, file: !521, line: 292, baseType: !4910, size: 64, offset: 192)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!172, !1048, !1816}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4879, file: !521, line: 293, baseType: !4914, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!172, !1048, !172, !1816}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4879, file: !521, line: 294, baseType: !4918, size: 64, offset: 320)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{null, !1048, !172}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4879, file: !521, line: 296, baseType: !4922, size: 64, offset: 384)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!297, !4885, !265, !312, !506}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4879, file: !521, line: 306, baseType: !312, size: 64, offset: 448)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4879, file: !521, line: 313, baseType: !686, size: 8, offset: 512)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4879, file: !521, line: 314, baseType: !4922, size: 64, offset: 576)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4879, file: !521, line: 317, baseType: !4929, size: 64, offset: 640)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!1931, !4885, !1933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4879, file: !521, line: 320, baseType: !4933, size: 64, offset: 704)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!89, !4885, !1479}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4874, file: !521, line: 176, baseType: !4937, size: 64, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !521, line: 35, flags: DIFlagFwdDecl)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4874, file: !521, line: 177, baseType: !506, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4874, file: !521, line: 178, baseType: !4847, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4848, file: !521, line: 215, baseType: !172, size: 64, offset: 768)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4848, file: !521, line: 221, baseType: !418, size: 64, offset: 832)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4848, file: !521, line: 223, baseType: !235, size: 16, offset: 896)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4848, file: !521, line: 224, baseType: !307, size: 16, offset: 912)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4848, file: !521, line: 225, baseType: !4946, size: 64, offset: 960)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !521, line: 36, flags: DIFlagFwdDecl)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4848, file: !521, line: 227, baseType: !826, size: 128, align: 64, offset: 1024)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !174, file: !175, line: 71, baseType: !2515, size: 32, offset: 448)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !174, file: !175, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !174, file: !175, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !174, file: !175, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !174, file: !175, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !174, file: !175, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2497, line: 42, size: 3328, elements: !4957)
!4957 = !{!4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4981, !4982, !4983, !4984, !4985, !4986}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4956, file: !2497, line: 43, baseType: !191, size: 768)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "devices_kset", scope: !4956, file: !2497, line: 44, baseType: !190, size: 64, offset: 768)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !4956, file: !2497, line: 45, baseType: !182, size: 128, offset: 832)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4956, file: !2497, line: 46, baseType: !606, size: 256, offset: 960)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_kset", scope: !4956, file: !2497, line: 48, baseType: !190, size: 64, offset: 1216)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !4956, file: !2497, line: 49, baseType: !2500, size: 320, align: 64, offset: 1280)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "klist_drivers", scope: !4956, file: !2497, line: 50, baseType: !2500, size: 320, align: 64, offset: 1600)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "bus_notifier", scope: !4956, file: !2497, line: 51, baseType: !4966, size: 384, offset: 1920)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4967, line: 65, size: 384, elements: !4968)
!4967 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4968 = !{!4969, !4970}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4966, file: !4967, line: 66, baseType: !1268, size: 320)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4966, file: !4967, line: 67, baseType: !4971, size: 64, offset: 320)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4967, line: 54, size: 192, elements: !4973)
!4973 = !{!4974, !4979, !4980}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4972, file: !4967, line: 55, baseType: !4975, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4967, line: 51, baseType: !4976)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!89, !4971, !315, !172}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4972, file: !4967, line: 56, baseType: !4971, size: 64, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4972, file: !4967, line: 57, baseType: !89, size: 32, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4956, file: !2497, line: 52, baseType: !7, size: 1, offset: 2304, flags: DIFlagBitField, extraData: i64 2304)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4956, file: !2497, line: 53, baseType: !2531, size: 64, offset: 2368)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !4956, file: !2497, line: 54, baseType: !2489, size: 64, offset: 2432)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "glue_dirs", scope: !4956, file: !2497, line: 56, baseType: !191, size: 768, offset: 2496)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4956, file: !2497, line: 57, baseType: !2900, size: 64, offset: 3264)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4956, file: !2497, line: 59, baseType: !980, offset: 3328)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_attribute_string", file: !2903, line: 204, size: 320, elements: !4989)
!4989 = !{!4990, !5004}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4988, file: !2903, line: 205, baseType: !4991, size: 256)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_attribute", file: !2903, line: 171, size: 256, elements: !4992)
!4992 = !{!4993, !4994, !5000}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4991, file: !2903, line: 172, baseType: !303, size: 128)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4991, file: !2903, line: 173, baseType: !4995, size: 64, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!297, !2900, !4998, !265}
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4991)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4991, file: !2903, line: 175, baseType: !5001, size: 64, offset: 192)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!297, !2900, !4998, !178, !312}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4988, file: !2903, line: 206, baseType: !265, size: 64, offset: 256)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5007)
!5007 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !186)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4956)
!5012 = !{!5013, !5015, !5017, !5022, !5025, !5027, !5029, !5031, !5033, !5038, !5041, !5043, !5045, !5047, !5052, !5057, !5062, !5064, !5069, !5071, !5073, !5075, !5078, !5080, !5082, !5084, !5087, !5089, !5091, !5093, !0, !5095, !5097, !5099}
!5013 = !DIGlobalVariableExpression(var: !5014, expr: !DIExpression())
!5014 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_create_file_ns335", scope: !2, file: !3, line: 143, type: !172, isLocal: true, isDefinition: true)
!5015 = !DIGlobalVariableExpression(var: !5016, expr: !DIExpression())
!5016 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_remove_file_ns336", scope: !2, file: !3, line: 156, type: !172, isLocal: true, isDefinition: true)
!5017 = !DIGlobalVariableExpression(var: !5018, expr: !DIExpression())
!5018 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !5019, isLocal: true, isDefinition: true)
!5019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 104, elements: !5020)
!5020 = !{!5021}
!5021 = !DISubrange(count: 13)
!5022 = !DIGlobalVariableExpression(var: !5023, expr: !DIExpression())
!5023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !5024, isLocal: true, isDefinition: true)
!5024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 24, elements: !266)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_register337", scope: !2, file: !3, line: 222, type: !172, isLocal: true, isDefinition: true)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_unregister338", scope: !2, file: !3, line: 237, type: !172, isLocal: true, isDefinition: true)
!5029 = !DIGlobalVariableExpression(var: !5030, expr: !DIExpression())
!5030 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_create339", scope: !2, file: !3, line: 281, type: !172, isLocal: true, isDefinition: true)
!5031 = !DIGlobalVariableExpression(var: !5032, expr: !DIExpression())
!5032 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_destroy340", scope: !2, file: !3, line: 297, type: !172, isLocal: true, isDefinition: true)
!5033 = !DIGlobalVariableExpression(var: !5034, expr: !DIExpression())
!5034 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !5035, isLocal: true, isDefinition: true)
!5035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 312, elements: !5036)
!5036 = !{!5037}
!5037 = !DISubrange(count: 39)
!5038 = !DIGlobalVariableExpression(var: !5039, expr: !DIExpression())
!5039 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !5040, isLocal: true, isDefinition: true)
!5040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 160, elements: !4186)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_dev_iter_init341", scope: !2, file: !3, line: 330, type: !172, isLocal: true, isDefinition: true)
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_dev_iter_next342", scope: !2, file: !3, line: 361, type: !172, isLocal: true, isDefinition: true)
!5045 = !DIGlobalVariableExpression(var: !5046, expr: !DIExpression())
!5046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_dev_iter_exit343", scope: !2, file: !3, line: 375, type: !172, isLocal: true, isDefinition: true)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !5049, isLocal: true, isDefinition: true)
!5049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 408, elements: !5050)
!5050 = !{!5051}
!5051 = !DISubrange(count: 51)
!5052 = !DIGlobalVariableExpression(var: !5053, expr: !DIExpression())
!5053 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !5054, isLocal: true, isDefinition: true)
!5054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 176, elements: !5055)
!5055 = !{!5056}
!5056 = !DISubrange(count: 22)
!5057 = !DIGlobalVariableExpression(var: !5058, expr: !DIExpression())
!5058 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !5059, isLocal: true, isDefinition: true)
!5059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 168, elements: !5060)
!5060 = !{!5061}
!5061 = !DISubrange(count: 21)
!5062 = !DIGlobalVariableExpression(var: !5063, expr: !DIExpression())
!5063 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_for_each_device344", scope: !2, file: !3, line: 422, type: !172, isLocal: true, isDefinition: true)
!5064 = !DIGlobalVariableExpression(var: !5065, expr: !DIExpression())
!5065 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !5066, isLocal: true, isDefinition: true)
!5066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 144, elements: !5067)
!5067 = !{!5068}
!5068 = !DISubrange(count: 18)
!5069 = !DIGlobalVariableExpression(var: !5070, expr: !DIExpression())
!5070 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_find_device345", scope: !2, file: !3, line: 472, type: !172, isLocal: true, isDefinition: true)
!5071 = !DIGlobalVariableExpression(var: !5072, expr: !DIExpression())
!5072 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_interface_register346", scope: !2, file: !3, line: 506, type: !172, isLocal: true, isDefinition: true)
!5073 = !DIGlobalVariableExpression(var: !5074, expr: !DIExpression())
!5074 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_interface_unregister347", scope: !2, file: !3, line: 540, type: !172, isLocal: true, isDefinition: true)
!5075 = !DIGlobalVariableExpression(var: !5076, expr: !DIExpression())
!5076 = distinct !DIGlobalVariable(scope: null, file: !3, line: 548, type: !5077, isLocal: true, isDefinition: true)
!5077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 32, elements: !836)
!5078 = !DIGlobalVariableExpression(var: !5079, expr: !DIExpression())
!5079 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_show_class_attr_string348", scope: !2, file: !3, line: 551, type: !172, isLocal: true, isDefinition: true)
!5080 = !DIGlobalVariableExpression(var: !5081, expr: !DIExpression())
!5081 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_compat_register349", scope: !2, file: !3, line: 578, type: !172, isLocal: true, isDefinition: true)
!5082 = !DIGlobalVariableExpression(var: !5083, expr: !DIExpression())
!5083 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_compat_unregister350", scope: !2, file: !3, line: 589, type: !172, isLocal: true, isDefinition: true)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(scope: null, file: !3, line: 614, type: !5086, isLocal: true, isDefinition: true)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 56, elements: !727)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_compat_create_link351", scope: !2, file: !3, line: 621, type: !172, isLocal: true, isDefinition: true)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_compat_remove_link352", scope: !2, file: !3, line: 638, type: !172, isLocal: true, isDefinition: true)
!5091 = !DIGlobalVariableExpression(var: !5092, expr: !DIExpression())
!5092 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_class_is_registered353", scope: !2, file: !3, line: 663, type: !172, isLocal: true, isDefinition: true)
!5093 = !DIGlobalVariableExpression(var: !5094, expr: !DIExpression())
!5094 = distinct !DIGlobalVariable(scope: null, file: !3, line: 667, type: !1677, isLocal: true, isDefinition: true)
!5095 = !DIGlobalVariableExpression(var: !5096, expr: !DIExpression())
!5096 = distinct !DIGlobalVariable(name: "class_ktype", scope: !2, file: !3, line: 123, type: !280, isLocal: true, isDefinition: true)
!5097 = !DIGlobalVariableExpression(var: !5098, expr: !DIExpression())
!5098 = distinct !DIGlobalVariable(name: "class_sysfs_ops", scope: !2, file: !3, line: 118, type: !289, isLocal: true, isDefinition: true)
!5099 = !DIGlobalVariableExpression(var: !5100, expr: !DIExpression())
!5100 = distinct !DIGlobalVariable(scope: null, file: !162, line: 480, type: !5059, isLocal: true, isDefinition: true)
!5101 = !{i32 7, !"Dwarf Version", i32 5}
!5102 = !{i32 2, !"Debug Info Version", i32 3}
!5103 = !{i32 1, !"wchar_size", i32 2}
!5104 = !{i32 8, !"cf-protection-branch", i32 1}
!5105 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5106 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5107 = !{i32 1, !"Code Model", i32 2}
!5108 = !{i32 1, !"override-stack-alignment", i32 8}
!5109 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5110 = distinct !DISubprogram(name: "class_to_subsys", scope: !3, file: !3, line: 42, type: !5111, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5113)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!4955, !2900}
!5113 = !{!5114, !5115, !5116, !5117, !5120, !5123, !5125, !5127, !5129}
!5114 = !DILocalVariable(name: "class", arg: 1, scope: !5110, file: !3, line: 42, type: !2900)
!5115 = !DILocalVariable(name: "sp", scope: !5110, file: !3, line: 44, type: !4955)
!5116 = !DILocalVariable(name: "kobj", scope: !5110, file: !3, line: 45, type: !173)
!5117 = !DILocalVariable(name: "__mptr", scope: !5118, file: !3, line: 55, type: !172)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 55, column: 2)
!5119 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 55, column: 2)
!5120 = !DILocalVariable(name: "kset", scope: !5121, file: !3, line: 56, type: !190)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 55, column: 54)
!5122 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 55, column: 2)
!5123 = !DILocalVariable(name: "__mptr", scope: !5124, file: !3, line: 56, type: !172)
!5124 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 56, column: 23)
!5125 = !DILocalVariable(name: "__mptr", scope: !5126, file: !3, line: 58, type: !172)
!5126 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 58, column: 8)
!5127 = !DILocalVariable(name: "__mptr", scope: !5128, file: !3, line: 55, type: !172)
!5128 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 55, column: 2)
!5129 = !DILabel(scope: !5110, name: "done", file: !3, line: 63)
!5130 = !DILocation(line: 42, column: 60, scope: !5110)
!5131 = !DILocation(line: 44, column: 2, scope: !5110)
!5132 = !DILocation(line: 44, column: 25, scope: !5110)
!5133 = !DILocation(line: 45, column: 2, scope: !5110)
!5134 = !DILocation(line: 45, column: 18, scope: !5110)
!5135 = !DILocation(line: 47, column: 7, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 47, column: 6)
!5137 = !DILocation(line: 47, column: 13, scope: !5136)
!5138 = !DILocation(line: 47, column: 17, scope: !5136)
!5139 = !DILocation(line: 47, column: 6, scope: !5110)
!5140 = !DILocation(line: 48, column: 3, scope: !5136)
!5141 = !DILocation(line: 50, column: 13, scope: !5110)
!5142 = !DILocation(line: 50, column: 25, scope: !5110)
!5143 = !DILocation(line: 50, column: 2, scope: !5110)
!5144 = !DILocation(line: 52, column: 18, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 52, column: 6)
!5146 = !DILocation(line: 52, column: 30, scope: !5145)
!5147 = !DILocation(line: 52, column: 6, scope: !5145)
!5148 = !DILocation(line: 52, column: 6, scope: !5110)
!5149 = !DILocation(line: 53, column: 3, scope: !5145)
!5150 = !DILocation(line: 55, column: 2, scope: !5118)
!5151 = !DILocation(line: 55, column: 2, scope: !5119)
!5152 = !DILocation(line: 55, column: 2, scope: !5122)
!5153 = !DILocation(line: 56, column: 3, scope: !5121)
!5154 = !DILocation(line: 56, column: 16, scope: !5121)
!5155 = !DILocation(line: 56, column: 23, scope: !5124)
!5156 = !DILocation(line: 56, column: 23, scope: !5121)
!5157 = !DILocation(line: 58, column: 8, scope: !5126)
!5158 = !DILocation(line: 58, column: 8, scope: !5121)
!5159 = !DILocation(line: 58, column: 6, scope: !5121)
!5160 = !DILocation(line: 59, column: 7, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 59, column: 7)
!5162 = !DILocation(line: 59, column: 11, scope: !5161)
!5163 = !DILocation(line: 59, column: 20, scope: !5161)
!5164 = !DILocation(line: 59, column: 17, scope: !5161)
!5165 = !DILocation(line: 59, column: 7, scope: !5121)
!5166 = !DILocation(line: 60, column: 4, scope: !5161)
!5167 = !DILocation(line: 61, column: 2, scope: !5122)
!5168 = !DILocation(line: 61, column: 2, scope: !5121)
!5169 = !DILocation(line: 55, column: 2, scope: !5128)
!5170 = distinct !{!5170, !5151, !5171, !5172, !5173}
!5171 = !DILocation(line: 61, column: 2, scope: !5119)
!5172 = !{!"llvm.loop.mustprogress"}
!5173 = !{!"llvm.loop.unroll.disable"}
!5174 = !DILocation(line: 62, column: 5, scope: !5110)
!5175 = !DILocation(line: 62, column: 2, scope: !5110)
!5176 = !DILocation(line: 63, column: 1, scope: !5110)
!5177 = !DILocation(line: 64, column: 18, scope: !5110)
!5178 = !DILocation(line: 64, column: 7, scope: !5110)
!5179 = !DILocation(line: 64, column: 5, scope: !5110)
!5180 = !DILocation(line: 65, column: 15, scope: !5110)
!5181 = !DILocation(line: 65, column: 27, scope: !5110)
!5182 = !DILocation(line: 65, column: 2, scope: !5110)
!5183 = !DILocation(line: 66, column: 9, scope: !5110)
!5184 = !DILocation(line: 66, column: 2, scope: !5110)
!5185 = !DILocation(line: 67, column: 1, scope: !5110)
!5186 = distinct !DISubprogram(name: "spin_lock", scope: !5187, file: !5187, line: 349, type: !5188, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5190)
!5187 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5188 = !DISubroutineType(types: !5189)
!5189 = !{null, !2288}
!5190 = !{!5191}
!5191 = !DILocalVariable(name: "lock", arg: 1, scope: !5186, file: !5187, line: 349, type: !2288)
!5192 = !DILocation(line: 349, column: 51, scope: !5186)
!5193 = !DILocation(line: 351, column: 2, scope: !5186)
!5194 = !DILocation(line: 352, column: 1, scope: !5186)
!5195 = distinct !DISubprogram(name: "list_empty", scope: !5196, file: !5196, line: 371, type: !5197, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5201)
!5196 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!89, !5199}
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!5201 = !{!5202}
!5202 = !DILocalVariable(name: "head", arg: 1, scope: !5195, file: !5196, line: 371, type: !5199)
!5203 = !DILocation(line: 371, column: 54, scope: !5195)
!5204 = !DILocation(line: 373, column: 9, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5195, file: !5196, line: 373, column: 9)
!5206 = !DILocation(line: 373, column: 9, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5205, file: !5196, line: 373, column: 9)
!5208 = !DILocation(line: 373, column: 34, scope: !5195)
!5209 = !DILocation(line: 373, column: 31, scope: !5195)
!5210 = !DILocation(line: 373, column: 2, scope: !5195)
!5211 = distinct !DISubprogram(name: "subsys_get", scope: !2497, file: !2497, line: 63, type: !5212, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!4955, !4955}
!5214 = !{!5215}
!5215 = !DILocalVariable(name: "sp", arg: 1, scope: !5211, file: !2497, line: 63, type: !4955)
!5216 = !DILocation(line: 63, column: 72, scope: !5211)
!5217 = !DILocation(line: 65, column: 6, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5211, file: !2497, line: 65, column: 6)
!5219 = !DILocation(line: 65, column: 6, scope: !5211)
!5220 = !DILocation(line: 66, column: 13, scope: !5218)
!5221 = !DILocation(line: 66, column: 17, scope: !5218)
!5222 = !DILocation(line: 66, column: 3, scope: !5218)
!5223 = !DILocation(line: 67, column: 9, scope: !5211)
!5224 = !DILocation(line: 67, column: 2, scope: !5211)
!5225 = distinct !DISubprogram(name: "spin_unlock", scope: !5187, file: !5187, line: 389, type: !5188, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5226)
!5226 = !{!5227}
!5227 = !DILocalVariable(name: "lock", arg: 1, scope: !5225, file: !5187, line: 389, type: !2288)
!5228 = !DILocation(line: 389, column: 53, scope: !5225)
!5229 = !DILocation(line: 391, column: 2, scope: !5225)
!5230 = !DILocation(line: 392, column: 1, scope: !5225)
!5231 = distinct !DISubprogram(name: "class_create_file_ns", scope: !3, file: !3, line: 129, type: !5232, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5234)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!89, !2900, !4998, !2120}
!5234 = !{!5235, !5236, !5237, !5238, !5239}
!5235 = !DILocalVariable(name: "cls", arg: 1, scope: !5231, file: !3, line: 129, type: !2900)
!5236 = !DILocalVariable(name: "attr", arg: 2, scope: !5231, file: !3, line: 129, type: !4998)
!5237 = !DILocalVariable(name: "ns", arg: 3, scope: !5231, file: !3, line: 130, type: !2120)
!5238 = !DILocalVariable(name: "sp", scope: !5231, file: !3, line: 132, type: !4955)
!5239 = !DILocalVariable(name: "error", scope: !5231, file: !3, line: 133, type: !89)
!5240 = !DILocation(line: 129, column: 46, scope: !5231)
!5241 = !DILocation(line: 129, column: 81, scope: !5231)
!5242 = !DILocation(line: 130, column: 17, scope: !5231)
!5243 = !DILocation(line: 132, column: 2, scope: !5231)
!5244 = !DILocation(line: 132, column: 25, scope: !5231)
!5245 = !DILocation(line: 132, column: 46, scope: !5231)
!5246 = !DILocation(line: 132, column: 30, scope: !5231)
!5247 = !DILocation(line: 133, column: 2, scope: !5231)
!5248 = !DILocation(line: 133, column: 6, scope: !5231)
!5249 = !DILocation(line: 135, column: 7, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 135, column: 6)
!5251 = !DILocation(line: 135, column: 6, scope: !5231)
!5252 = !DILocation(line: 136, column: 3, scope: !5250)
!5253 = !DILocation(line: 138, column: 32, scope: !5231)
!5254 = !DILocation(line: 138, column: 36, scope: !5231)
!5255 = !DILocation(line: 138, column: 43, scope: !5231)
!5256 = !DILocation(line: 138, column: 50, scope: !5231)
!5257 = !DILocation(line: 138, column: 56, scope: !5231)
!5258 = !DILocation(line: 138, column: 62, scope: !5231)
!5259 = !DILocation(line: 138, column: 10, scope: !5231)
!5260 = !DILocation(line: 138, column: 8, scope: !5231)
!5261 = !DILocation(line: 139, column: 13, scope: !5231)
!5262 = !DILocation(line: 139, column: 2, scope: !5231)
!5263 = !DILocation(line: 141, column: 9, scope: !5231)
!5264 = !DILocation(line: 141, column: 2, scope: !5231)
!5265 = !DILocation(line: 142, column: 1, scope: !5231)
!5266 = !DISubprogram(name: "sysfs_create_file_ns", scope: !291, file: !291, line: 273, type: !5267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!89, !173, !5269, !2120}
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!5271 = distinct !DISubprogram(name: "subsys_put", scope: !2497, file: !2497, line: 70, type: !5272, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5274)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{null, !4955}
!5274 = !{!5275}
!5275 = !DILocalVariable(name: "sp", arg: 1, scope: !5271, file: !2497, line: 70, type: !4955)
!5276 = !DILocation(line: 70, column: 54, scope: !5271)
!5277 = !DILocation(line: 72, column: 6, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5271, file: !2497, line: 72, column: 6)
!5279 = !DILocation(line: 72, column: 6, scope: !5271)
!5280 = !DILocation(line: 73, column: 13, scope: !5278)
!5281 = !DILocation(line: 73, column: 17, scope: !5278)
!5282 = !DILocation(line: 73, column: 3, scope: !5278)
!5283 = !DILocation(line: 74, column: 1, scope: !5271)
!5284 = distinct !DISubprogram(name: "class_remove_file_ns", scope: !3, file: !3, line: 145, type: !5285, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5287)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{null, !2900, !4998, !2120}
!5287 = !{!5288, !5289, !5290, !5291}
!5288 = !DILocalVariable(name: "cls", arg: 1, scope: !5284, file: !3, line: 145, type: !2900)
!5289 = !DILocalVariable(name: "attr", arg: 2, scope: !5284, file: !3, line: 145, type: !4998)
!5290 = !DILocalVariable(name: "ns", arg: 3, scope: !5284, file: !3, line: 146, type: !2120)
!5291 = !DILocalVariable(name: "sp", scope: !5284, file: !3, line: 148, type: !4955)
!5292 = !DILocation(line: 145, column: 47, scope: !5284)
!5293 = !DILocation(line: 145, column: 82, scope: !5284)
!5294 = !DILocation(line: 146, column: 18, scope: !5284)
!5295 = !DILocation(line: 148, column: 2, scope: !5284)
!5296 = !DILocation(line: 148, column: 25, scope: !5284)
!5297 = !DILocation(line: 148, column: 46, scope: !5284)
!5298 = !DILocation(line: 148, column: 30, scope: !5284)
!5299 = !DILocation(line: 150, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 150, column: 6)
!5301 = !DILocation(line: 150, column: 6, scope: !5284)
!5302 = !DILocation(line: 151, column: 3, scope: !5300)
!5303 = !DILocation(line: 153, column: 24, scope: !5284)
!5304 = !DILocation(line: 153, column: 28, scope: !5284)
!5305 = !DILocation(line: 153, column: 35, scope: !5284)
!5306 = !DILocation(line: 153, column: 42, scope: !5284)
!5307 = !DILocation(line: 153, column: 48, scope: !5284)
!5308 = !DILocation(line: 153, column: 54, scope: !5284)
!5309 = !DILocation(line: 153, column: 2, scope: !5284)
!5310 = !DILocation(line: 154, column: 13, scope: !5284)
!5311 = !DILocation(line: 154, column: 2, scope: !5284)
!5312 = !DILocation(line: 155, column: 1, scope: !5284)
!5313 = !DISubprogram(name: "sysfs_remove_file_ns", scope: !291, file: !291, line: 283, type: !5314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{null, !173, !5269, !2120}
!5316 = distinct !DISubprogram(name: "class_register", scope: !3, file: !3, line: 178, type: !5317, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!89, !2900}
!5319 = !{!5320, !5321, !5322, !5324, !5325}
!5320 = !DILocalVariable(name: "cls", arg: 1, scope: !5316, file: !3, line: 178, type: !2900)
!5321 = !DILocalVariable(name: "cp", scope: !5316, file: !3, line: 180, type: !4955)
!5322 = !DILocalVariable(name: "key", scope: !5316, file: !3, line: 181, type: !5323)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!5324 = !DILocalVariable(name: "error", scope: !5316, file: !3, line: 182, type: !89)
!5325 = !DILabel(scope: !5316, name: "err_out", file: !3, line: 217)
!5326 = !DILocation(line: 178, column: 40, scope: !5316)
!5327 = !DILocation(line: 180, column: 2, scope: !5316)
!5328 = !DILocation(line: 180, column: 25, scope: !5316)
!5329 = !DILocation(line: 181, column: 2, scope: !5316)
!5330 = !DILocation(line: 181, column: 25, scope: !5316)
!5331 = !DILocation(line: 182, column: 2, scope: !5316)
!5332 = !DILocation(line: 182, column: 6, scope: !5316)
!5333 = !DILocation(line: 184, column: 2, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 184, column: 2)
!5335 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 184, column: 2)
!5336 = !DILocation(line: 184, column: 2, scope: !5335)
!5337 = !DILocation(line: 186, column: 7, scope: !5316)
!5338 = !DILocation(line: 186, column: 5, scope: !5316)
!5339 = !DILocation(line: 187, column: 7, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 187, column: 6)
!5341 = !DILocation(line: 187, column: 6, scope: !5316)
!5342 = !DILocation(line: 188, column: 3, scope: !5340)
!5343 = !DILocation(line: 189, column: 14, scope: !5316)
!5344 = !DILocation(line: 189, column: 18, scope: !5316)
!5345 = !DILocation(line: 189, column: 2, scope: !5316)
!5346 = !DILocation(line: 190, column: 18, scope: !5316)
!5347 = !DILocation(line: 190, column: 22, scope: !5316)
!5348 = !DILocation(line: 190, column: 2, scope: !5316)
!5349 = !DILocation(line: 191, column: 13, scope: !5316)
!5350 = !DILocation(line: 191, column: 17, scope: !5316)
!5351 = !DILocation(line: 191, column: 2, scope: !5316)
!5352 = !DILocation(line: 192, column: 9, scope: !5316)
!5353 = !DILocation(line: 192, column: 13, scope: !5316)
!5354 = !DILocation(line: 192, column: 6, scope: !5316)
!5355 = !DILocation(line: 193, column: 23, scope: !5316)
!5356 = !DILocation(line: 193, column: 2, scope: !5316)
!5357 = !DILocation(line: 194, column: 16, scope: !5316)
!5358 = !DILocation(line: 194, column: 20, scope: !5316)
!5359 = !DILocation(line: 194, column: 43, scope: !5316)
!5360 = !DILocation(line: 194, column: 2, scope: !5316)
!5361 = !DILocation(line: 195, column: 28, scope: !5316)
!5362 = !DILocation(line: 195, column: 32, scope: !5316)
!5363 = !DILocation(line: 195, column: 39, scope: !5316)
!5364 = !DILocation(line: 195, column: 51, scope: !5316)
!5365 = !DILocation(line: 195, column: 56, scope: !5316)
!5366 = !DILocation(line: 195, column: 10, scope: !5316)
!5367 = !DILocation(line: 195, column: 8, scope: !5316)
!5368 = !DILocation(line: 196, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 196, column: 6)
!5370 = !DILocation(line: 196, column: 6, scope: !5316)
!5371 = !DILocation(line: 197, column: 9, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 196, column: 13)
!5373 = !DILocation(line: 197, column: 3, scope: !5372)
!5374 = !DILocation(line: 198, column: 10, scope: !5372)
!5375 = !DILocation(line: 198, column: 3, scope: !5372)
!5376 = !DILocation(line: 201, column: 25, scope: !5316)
!5377 = !DILocation(line: 201, column: 2, scope: !5316)
!5378 = !DILocation(line: 201, column: 6, scope: !5316)
!5379 = !DILocation(line: 201, column: 13, scope: !5316)
!5380 = !DILocation(line: 201, column: 18, scope: !5316)
!5381 = !DILocation(line: 201, column: 23, scope: !5316)
!5382 = !DILocation(line: 202, column: 2, scope: !5316)
!5383 = !DILocation(line: 202, column: 6, scope: !5316)
!5384 = !DILocation(line: 202, column: 13, scope: !5316)
!5385 = !DILocation(line: 202, column: 18, scope: !5316)
!5386 = !DILocation(line: 202, column: 24, scope: !5316)
!5387 = !DILocation(line: 203, column: 14, scope: !5316)
!5388 = !DILocation(line: 203, column: 2, scope: !5316)
!5389 = !DILocation(line: 203, column: 6, scope: !5316)
!5390 = !DILocation(line: 203, column: 12, scope: !5316)
!5391 = !DILocation(line: 205, column: 25, scope: !5316)
!5392 = !DILocation(line: 205, column: 29, scope: !5316)
!5393 = !DILocation(line: 205, column: 10, scope: !5316)
!5394 = !DILocation(line: 205, column: 8, scope: !5316)
!5395 = !DILocation(line: 206, column: 6, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 206, column: 6)
!5397 = !DILocation(line: 206, column: 6, scope: !5316)
!5398 = !DILocation(line: 207, column: 3, scope: !5396)
!5399 = !DILocation(line: 209, column: 31, scope: !5316)
!5400 = !DILocation(line: 209, column: 35, scope: !5316)
!5401 = !DILocation(line: 209, column: 42, scope: !5316)
!5402 = !DILocation(line: 209, column: 48, scope: !5316)
!5403 = !DILocation(line: 209, column: 53, scope: !5316)
!5404 = !DILocation(line: 209, column: 10, scope: !5316)
!5405 = !DILocation(line: 209, column: 8, scope: !5316)
!5406 = !DILocation(line: 210, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 210, column: 6)
!5408 = !DILocation(line: 210, column: 6, scope: !5316)
!5409 = !DILocation(line: 211, column: 16, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 210, column: 13)
!5411 = !DILocation(line: 211, column: 20, scope: !5410)
!5412 = !DILocation(line: 211, column: 27, scope: !5410)
!5413 = !DILocation(line: 211, column: 3, scope: !5410)
!5414 = !DILocation(line: 212, column: 15, scope: !5410)
!5415 = !DILocation(line: 212, column: 19, scope: !5410)
!5416 = !DILocation(line: 212, column: 26, scope: !5410)
!5417 = !DILocation(line: 212, column: 31, scope: !5410)
!5418 = !DILocation(line: 212, column: 3, scope: !5410)
!5419 = !DILocation(line: 213, column: 3, scope: !5410)
!5420 = !DILocation(line: 215, column: 2, scope: !5316)
!5421 = !DILocation(line: 217, column: 1, scope: !5316)
!5422 = !DILocation(line: 218, column: 25, scope: !5316)
!5423 = !DILocation(line: 218, column: 2, scope: !5316)
!5424 = !DILocation(line: 219, column: 8, scope: !5316)
!5425 = !DILocation(line: 219, column: 2, scope: !5316)
!5426 = !DILocation(line: 220, column: 9, scope: !5316)
!5427 = !DILocation(line: 220, column: 2, scope: !5316)
!5428 = !DILocation(line: 221, column: 1, scope: !5316)
!5429 = distinct !DISubprogram(name: "kzalloc", scope: !162, file: !162, line: 719, type: !5430, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5432)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!172, !312, !1120}
!5432 = !{!5433, !5434}
!5433 = !DILocalVariable(name: "size", arg: 1, scope: !5429, file: !162, line: 719, type: !312)
!5434 = !DILocalVariable(name: "flags", arg: 2, scope: !5429, file: !162, line: 719, type: !1120)
!5435 = !DILocation(line: 719, column: 52, scope: !5429)
!5436 = !DILocation(line: 719, column: 64, scope: !5429)
!5437 = !DILocation(line: 721, column: 17, scope: !5429)
!5438 = !DILocation(line: 721, column: 23, scope: !5429)
!5439 = !DILocation(line: 721, column: 29, scope: !5429)
!5440 = !DILocation(line: 721, column: 9, scope: !5429)
!5441 = !DILocation(line: 721, column: 2, scope: !5429)
!5442 = !DISubprogram(name: "klist_init", scope: !2501, file: !2501, line: 34, type: !5443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{null, !5445, !2506, !2506}
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!5446 = distinct !DISubprogram(name: "klist_class_dev_get", scope: !3, file: !3, line: 164, type: !2507, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5447 = !{!5448, !5449}
!5448 = !DILocalVariable(name: "n", arg: 1, scope: !5446, file: !3, line: 164, type: !2509)
!5449 = !DILocalVariable(name: "dev", scope: !5446, file: !3, line: 166, type: !2489)
!5450 = !DILocation(line: 164, column: 52, scope: !5446)
!5451 = !DILocation(line: 166, column: 2, scope: !5446)
!5452 = !DILocation(line: 166, column: 17, scope: !5446)
!5453 = !DILocation(line: 166, column: 42, scope: !5446)
!5454 = !DILocation(line: 166, column: 23, scope: !5446)
!5455 = !DILocation(line: 168, column: 13, scope: !5446)
!5456 = !DILocation(line: 168, column: 2, scope: !5446)
!5457 = !DILocation(line: 169, column: 1, scope: !5446)
!5458 = distinct !DISubprogram(name: "klist_class_dev_put", scope: !3, file: !3, line: 171, type: !2507, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5459 = !{!5460, !5461}
!5460 = !DILocalVariable(name: "n", arg: 1, scope: !5458, file: !3, line: 171, type: !2509)
!5461 = !DILocalVariable(name: "dev", scope: !5458, file: !3, line: 173, type: !2489)
!5462 = !DILocation(line: 171, column: 52, scope: !5458)
!5463 = !DILocation(line: 173, column: 2, scope: !5458)
!5464 = !DILocation(line: 173, column: 17, scope: !5458)
!5465 = !DILocation(line: 173, column: 42, scope: !5458)
!5466 = !DILocation(line: 173, column: 23, scope: !5458)
!5467 = !DILocation(line: 175, column: 13, scope: !5458)
!5468 = !DILocation(line: 175, column: 2, scope: !5458)
!5469 = !DILocation(line: 176, column: 1, scope: !5458)
!5470 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5196, file: !5196, line: 35, type: !5471, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5473)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{null, !186}
!5473 = !{!5474}
!5474 = !DILocalVariable(name: "list", arg: 1, scope: !5470, file: !5196, line: 35, type: !186)
!5475 = !DILocation(line: 35, column: 53, scope: !5470)
!5476 = !DILocation(line: 37, column: 2, scope: !5470)
!5477 = !DILocation(line: 37, column: 2, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5470, file: !5196, line: 37, column: 2)
!5479 = !DILocation(line: 37, column: 2, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5478, file: !5196, line: 37, column: 2)
!5481 = !DILocation(line: 37, column: 2, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5478, file: !5196, line: 37, column: 2)
!5483 = !DILocation(line: 38, column: 2, scope: !5470)
!5484 = !DILocation(line: 38, column: 2, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5470, file: !5196, line: 38, column: 2)
!5486 = !DILocation(line: 38, column: 2, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5485, file: !5196, line: 38, column: 2)
!5488 = !DILocation(line: 38, column: 2, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5485, file: !5196, line: 38, column: 2)
!5490 = !DILocation(line: 39, column: 1, scope: !5470)
!5491 = !DISubprogram(name: "kset_init", scope: !175, file: !175, line: 175, type: !5492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{null, !190}
!5494 = distinct !DISubprogram(name: "lockdep_register_key", scope: !5495, file: !5495, line: 409, type: !5496, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5495 = !DIFile(filename: "./include/linux/lockdep.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f59f80522afecdf25b67841b74f6b28f")
!5496 = !DISubroutineType(types: !5497)
!5497 = !{null, !5323}
!5498 = !{!5499}
!5499 = !DILocalVariable(name: "key", arg: 1, scope: !5494, file: !5495, line: 409, type: !5323)
!5500 = !DILocation(line: 409, column: 64, scope: !5494)
!5501 = !DILocation(line: 411, column: 1, scope: !5494)
!5502 = !DISubprogram(name: "__mutex_init", scope: !607, file: !607, line: 121, type: !5503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{null, !5505, !178, !5323}
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!5506 = !DISubprogram(name: "kobject_set_name", scope: !175, file: !175, line: 84, type: !5507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!89, !173, !178, null}
!5509 = !DISubprogram(name: "kfree", scope: !162, file: !162, line: 227, type: !5510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{null, !2120}
!5512 = !DISubprogram(name: "kset_register", scope: !175, file: !175, line: 176, type: !5513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!89, !190}
!5515 = !DISubprogram(name: "sysfs_create_groups", scope: !291, file: !291, line: 309, type: !5516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!89, !173, !317}
!5518 = !DISubprogram(name: "kobject_del", scope: !175, file: !175, line: 101, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5519 = !DISubprogram(name: "kfree_const", scope: !5520, file: !5520, line: 214, type: !5510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5520 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5521 = distinct !DISubprogram(name: "lockdep_unregister_key", scope: !5495, file: !5495, line: 413, type: !5496, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5522)
!5522 = !{!5523}
!5523 = !DILocalVariable(name: "key", arg: 1, scope: !5521, file: !5495, line: 413, type: !5323)
!5524 = !DILocation(line: 413, column: 66, scope: !5521)
!5525 = !DILocation(line: 415, column: 1, scope: !5521)
!5526 = distinct !DISubprogram(name: "class_unregister", scope: !3, file: !3, line: 224, type: !2915, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5527)
!5527 = !{!5528, !5529}
!5528 = !DILocalVariable(name: "cls", arg: 1, scope: !5526, file: !3, line: 224, type: !2900)
!5529 = !DILocalVariable(name: "sp", scope: !5526, file: !3, line: 226, type: !4955)
!5530 = !DILocation(line: 224, column: 43, scope: !5526)
!5531 = !DILocation(line: 226, column: 2, scope: !5526)
!5532 = !DILocation(line: 226, column: 25, scope: !5526)
!5533 = !DILocation(line: 226, column: 46, scope: !5526)
!5534 = !DILocation(line: 226, column: 30, scope: !5526)
!5535 = !DILocation(line: 228, column: 7, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 228, column: 6)
!5537 = !DILocation(line: 228, column: 6, scope: !5526)
!5538 = !DILocation(line: 229, column: 3, scope: !5536)
!5539 = !DILocation(line: 231, column: 2, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 231, column: 2)
!5541 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 231, column: 2)
!5542 = !DILocation(line: 231, column: 2, scope: !5541)
!5543 = !DILocation(line: 233, column: 23, scope: !5526)
!5544 = !DILocation(line: 233, column: 27, scope: !5526)
!5545 = !DILocation(line: 233, column: 34, scope: !5526)
!5546 = !DILocation(line: 233, column: 40, scope: !5526)
!5547 = !DILocation(line: 233, column: 45, scope: !5526)
!5548 = !DILocation(line: 233, column: 2, scope: !5526)
!5549 = !DILocation(line: 234, column: 19, scope: !5526)
!5550 = !DILocation(line: 234, column: 23, scope: !5526)
!5551 = !DILocation(line: 234, column: 2, scope: !5526)
!5552 = !DILocation(line: 235, column: 13, scope: !5526)
!5553 = !DILocation(line: 235, column: 2, scope: !5526)
!5554 = !DILocation(line: 236, column: 1, scope: !5526)
!5555 = !DISubprogram(name: "sysfs_remove_groups", scope: !291, file: !291, line: 317, type: !5556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{null, !173, !317}
!5558 = !DISubprogram(name: "kset_unregister", scope: !175, file: !175, line: 177, type: !5492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5559 = distinct !DISubprogram(name: "class_create", scope: !3, file: !3, line: 257, type: !5560, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5563)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{!5562, !178}
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!5563 = !{!5564, !5565, !5566, !5567}
!5564 = !DILocalVariable(name: "name", arg: 1, scope: !5559, file: !3, line: 257, type: !178)
!5565 = !DILocalVariable(name: "cls", scope: !5559, file: !3, line: 259, type: !5562)
!5566 = !DILocalVariable(name: "retval", scope: !5559, file: !3, line: 260, type: !89)
!5567 = !DILabel(scope: !5559, name: "error", file: !3, line: 277)
!5568 = !DILocation(line: 257, column: 40, scope: !5559)
!5569 = !DILocation(line: 259, column: 2, scope: !5559)
!5570 = !DILocation(line: 259, column: 16, scope: !5559)
!5571 = !DILocation(line: 260, column: 2, scope: !5559)
!5572 = !DILocation(line: 260, column: 6, scope: !5559)
!5573 = !DILocation(line: 262, column: 8, scope: !5559)
!5574 = !DILocation(line: 262, column: 6, scope: !5559)
!5575 = !DILocation(line: 263, column: 7, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 263, column: 6)
!5577 = !DILocation(line: 263, column: 6, scope: !5559)
!5578 = !DILocation(line: 264, column: 10, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 263, column: 12)
!5580 = !DILocation(line: 265, column: 3, scope: !5579)
!5581 = !DILocation(line: 268, column: 14, scope: !5559)
!5582 = !DILocation(line: 268, column: 2, scope: !5559)
!5583 = !DILocation(line: 268, column: 7, scope: !5559)
!5584 = !DILocation(line: 268, column: 12, scope: !5559)
!5585 = !DILocation(line: 269, column: 2, scope: !5559)
!5586 = !DILocation(line: 269, column: 7, scope: !5559)
!5587 = !DILocation(line: 269, column: 21, scope: !5559)
!5588 = !DILocation(line: 271, column: 26, scope: !5559)
!5589 = !DILocation(line: 271, column: 11, scope: !5559)
!5590 = !DILocation(line: 271, column: 9, scope: !5559)
!5591 = !DILocation(line: 272, column: 6, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 272, column: 6)
!5593 = !DILocation(line: 272, column: 6, scope: !5559)
!5594 = !DILocation(line: 273, column: 3, scope: !5592)
!5595 = !DILocation(line: 275, column: 9, scope: !5559)
!5596 = !DILocation(line: 275, column: 2, scope: !5559)
!5597 = !DILocation(line: 277, column: 1, scope: !5559)
!5598 = !DILocation(line: 278, column: 8, scope: !5559)
!5599 = !DILocation(line: 278, column: 2, scope: !5559)
!5600 = !DILocation(line: 279, column: 17, scope: !5559)
!5601 = !DILocation(line: 279, column: 9, scope: !5559)
!5602 = !DILocation(line: 279, column: 2, scope: !5559)
!5603 = !DILocation(line: 280, column: 1, scope: !5559)
!5604 = distinct !DISubprogram(name: "class_create_release", scope: !3, file: !3, line: 239, type: !2915, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5605)
!5605 = !{!5606}
!5606 = !DILocalVariable(name: "cls", arg: 1, scope: !5604, file: !3, line: 239, type: !2900)
!5607 = !DILocation(line: 239, column: 54, scope: !5604)
!5608 = !DILocation(line: 241, column: 2, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 241, column: 2)
!5610 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 241, column: 2)
!5611 = !DILocation(line: 241, column: 2, scope: !5610)
!5612 = !DILocation(line: 242, column: 8, scope: !5604)
!5613 = !DILocation(line: 242, column: 2, scope: !5604)
!5614 = !DILocation(line: 243, column: 1, scope: !5604)
!5615 = distinct !DISubprogram(name: "ERR_PTR", scope: !5616, file: !5616, line: 39, type: !5617, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5619)
!5616 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!172, !301}
!5619 = !{!5620}
!5620 = !DILocalVariable(name: "error", arg: 1, scope: !5615, file: !5616, line: 39, type: !301)
!5621 = !DILocation(line: 39, column: 48, scope: !5615)
!5622 = !DILocation(line: 41, column: 18, scope: !5615)
!5623 = !DILocation(line: 41, column: 9, scope: !5615)
!5624 = !DILocation(line: 41, column: 2, scope: !5615)
!5625 = distinct !DISubprogram(name: "class_destroy", scope: !3, file: !3, line: 290, type: !2915, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5626)
!5626 = !{!5627}
!5627 = !DILocalVariable(name: "cls", arg: 1, scope: !5625, file: !3, line: 290, type: !2900)
!5628 = !DILocation(line: 290, column: 40, scope: !5625)
!5629 = !DILocation(line: 292, column: 21, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 292, column: 6)
!5631 = !DILocation(line: 292, column: 6, scope: !5630)
!5632 = !DILocation(line: 292, column: 6, scope: !5625)
!5633 = !DILocation(line: 293, column: 3, scope: !5630)
!5634 = !DILocation(line: 295, column: 19, scope: !5625)
!5635 = !DILocation(line: 295, column: 2, scope: !5625)
!5636 = !DILocation(line: 296, column: 1, scope: !5625)
!5637 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5616, file: !5616, line: 70, type: !5638, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5640)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!686, !2120}
!5640 = !{!5641}
!5641 = !DILocalVariable(name: "ptr", arg: 1, scope: !5637, file: !5616, line: 70, type: !2120)
!5642 = !DILocation(line: 70, column: 68, scope: !5637)
!5643 = !DILocation(line: 72, column: 9, scope: !5637)
!5644 = !DILocation(line: 72, column: 24, scope: !5637)
!5645 = !DILocation(line: 72, column: 27, scope: !5637)
!5646 = !DILocation(line: 72, column: 2, scope: !5637)
!5647 = distinct !DISubprogram(name: "class_dev_iter_init", scope: !3, file: !3, line: 311, type: !5648, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5660)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !5650, !2900, !2549, !2644}
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_dev_iter", file: !2903, line: 74, size: 256, elements: !5652)
!5652 = !{!5653, !5658, !5659}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "ki", scope: !5651, file: !2903, line: 75, baseType: !5654, size: 128)
!5654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !2501, line: 54, size: 128, elements: !5655)
!5655 = !{!5656, !5657}
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !5654, file: !2501, line: 55, baseType: !5445, size: 64)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !5654, file: !2501, line: 56, baseType: !2509, size: 64, offset: 64)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5651, file: !2903, line: 76, baseType: !2644, size: 64, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5651, file: !2903, line: 77, baseType: !4955, size: 64, offset: 192)
!5660 = !{!5661, !5662, !5663, !5664, !5665, !5666}
!5661 = !DILocalVariable(name: "iter", arg: 1, scope: !5647, file: !3, line: 311, type: !5650)
!5662 = !DILocalVariable(name: "class", arg: 2, scope: !5647, file: !3, line: 311, type: !2900)
!5663 = !DILocalVariable(name: "start", arg: 3, scope: !5647, file: !3, line: 312, type: !2549)
!5664 = !DILocalVariable(name: "type", arg: 4, scope: !5647, file: !3, line: 312, type: !2644)
!5665 = !DILocalVariable(name: "sp", scope: !5647, file: !3, line: 314, type: !4955)
!5666 = !DILocalVariable(name: "start_knode", scope: !5647, file: !3, line: 315, type: !2509)
!5667 = !DILocation(line: 311, column: 49, scope: !5647)
!5668 = !DILocation(line: 311, column: 75, scope: !5647)
!5669 = !DILocation(line: 312, column: 26, scope: !5647)
!5670 = !DILocation(line: 312, column: 59, scope: !5647)
!5671 = !DILocation(line: 314, column: 2, scope: !5647)
!5672 = !DILocation(line: 314, column: 25, scope: !5647)
!5673 = !DILocation(line: 314, column: 46, scope: !5647)
!5674 = !DILocation(line: 314, column: 30, scope: !5647)
!5675 = !DILocation(line: 315, column: 2, scope: !5647)
!5676 = !DILocation(line: 315, column: 21, scope: !5647)
!5677 = !DILocation(line: 317, column: 9, scope: !5647)
!5678 = !DILocation(line: 317, column: 2, scope: !5647)
!5679 = !DILocation(line: 318, column: 7, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 318, column: 6)
!5681 = !DILocation(line: 318, column: 6, scope: !5647)
!5682 = !DILocation(line: 319, column: 3, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 319, column: 3)
!5684 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 318, column: 11)
!5685 = !DILocation(line: 319, column: 3, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 319, column: 3)
!5687 = !DILocation(line: 321, column: 3, scope: !5684)
!5688 = !DILocation(line: 324, column: 6, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 324, column: 6)
!5690 = !DILocation(line: 324, column: 6, scope: !5647)
!5691 = !DILocation(line: 325, column: 18, scope: !5689)
!5692 = !DILocation(line: 325, column: 25, scope: !5689)
!5693 = !DILocation(line: 325, column: 28, scope: !5689)
!5694 = !DILocation(line: 325, column: 15, scope: !5689)
!5695 = !DILocation(line: 325, column: 3, scope: !5689)
!5696 = !DILocation(line: 326, column: 24, scope: !5647)
!5697 = !DILocation(line: 326, column: 28, scope: !5647)
!5698 = !DILocation(line: 326, column: 44, scope: !5647)
!5699 = !DILocation(line: 326, column: 50, scope: !5647)
!5700 = !DILocation(line: 326, column: 54, scope: !5647)
!5701 = !DILocation(line: 326, column: 2, scope: !5647)
!5702 = !DILocation(line: 327, column: 15, scope: !5647)
!5703 = !DILocation(line: 327, column: 2, scope: !5647)
!5704 = !DILocation(line: 327, column: 8, scope: !5647)
!5705 = !DILocation(line: 327, column: 13, scope: !5647)
!5706 = !DILocation(line: 328, column: 13, scope: !5647)
!5707 = !DILocation(line: 328, column: 2, scope: !5647)
!5708 = !DILocation(line: 328, column: 8, scope: !5647)
!5709 = !DILocation(line: 328, column: 11, scope: !5647)
!5710 = !DILocation(line: 329, column: 1, scope: !5647)
!5711 = !DISubprogram(name: "_printk", scope: !5712, file: !5712, line: 153, type: !5713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5712 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!89, !178, null}
!5715 = !DISubprogram(name: "klist_iter_init_node", scope: !2501, file: !2501, line: 61, type: !5716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{null, !5445, !5718, !2509}
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5719 = distinct !DISubprogram(name: "class_dev_iter_next", scope: !3, file: !3, line: 344, type: !5720, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5722)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!2489, !5650}
!5722 = !{!5723, !5724, !5725}
!5723 = !DILocalVariable(name: "iter", arg: 1, scope: !5719, file: !3, line: 344, type: !5650)
!5724 = !DILocalVariable(name: "knode", scope: !5719, file: !3, line: 346, type: !2509)
!5725 = !DILocalVariable(name: "dev", scope: !5719, file: !3, line: 347, type: !2489)
!5726 = !DILocation(line: 344, column: 59, scope: !5719)
!5727 = !DILocation(line: 346, column: 2, scope: !5719)
!5728 = !DILocation(line: 346, column: 21, scope: !5719)
!5729 = !DILocation(line: 347, column: 2, scope: !5719)
!5730 = !DILocation(line: 347, column: 17, scope: !5719)
!5731 = !DILocation(line: 349, column: 7, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 349, column: 6)
!5733 = !DILocation(line: 349, column: 13, scope: !5732)
!5734 = !DILocation(line: 349, column: 6, scope: !5719)
!5735 = !DILocation(line: 350, column: 3, scope: !5732)
!5736 = !DILocation(line: 352, column: 2, scope: !5719)
!5737 = !DILocation(line: 353, column: 23, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 352, column: 12)
!5739 = !DILocation(line: 353, column: 29, scope: !5738)
!5740 = !DILocation(line: 353, column: 11, scope: !5738)
!5741 = !DILocation(line: 353, column: 9, scope: !5738)
!5742 = !DILocation(line: 354, column: 8, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 354, column: 7)
!5744 = !DILocation(line: 354, column: 7, scope: !5738)
!5745 = !DILocation(line: 355, column: 4, scope: !5743)
!5746 = !DILocation(line: 356, column: 28, scope: !5738)
!5747 = !DILocation(line: 356, column: 9, scope: !5738)
!5748 = !DILocation(line: 356, column: 7, scope: !5738)
!5749 = !DILocation(line: 357, column: 8, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 357, column: 7)
!5751 = !DILocation(line: 357, column: 14, scope: !5750)
!5752 = !DILocation(line: 357, column: 19, scope: !5750)
!5753 = !DILocation(line: 357, column: 22, scope: !5750)
!5754 = !DILocation(line: 357, column: 28, scope: !5750)
!5755 = !DILocation(line: 357, column: 36, scope: !5750)
!5756 = !DILocation(line: 357, column: 41, scope: !5750)
!5757 = !DILocation(line: 357, column: 33, scope: !5750)
!5758 = !DILocation(line: 357, column: 7, scope: !5738)
!5759 = !DILocation(line: 358, column: 11, scope: !5750)
!5760 = !DILocation(line: 358, column: 4, scope: !5750)
!5761 = distinct !{!5761, !5736, !5762, !5173}
!5762 = !DILocation(line: 359, column: 2, scope: !5719)
!5763 = !DILocation(line: 360, column: 1, scope: !5719)
!5764 = !DISubprogram(name: "klist_next", scope: !2501, file: !2501, line: 65, type: !5765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{!2509, !5718}
!5767 = distinct !DISubprogram(name: "klist_class_to_dev", scope: !3, file: !3, line: 158, type: !5768, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5770)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!2489, !2509}
!5770 = !{!5771, !5772, !5773}
!5771 = !DILocalVariable(name: "n", arg: 1, scope: !5767, file: !3, line: 158, type: !2509)
!5772 = !DILocalVariable(name: "p", scope: !5767, file: !3, line: 160, type: !2495)
!5773 = !DILocalVariable(name: "__mptr", scope: !5774, file: !3, line: 160, type: !172)
!5774 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 160, column: 29)
!5775 = !DILocation(line: 158, column: 61, scope: !5767)
!5776 = !DILocation(line: 160, column: 2, scope: !5767)
!5777 = !DILocation(line: 160, column: 25, scope: !5767)
!5778 = !DILocation(line: 160, column: 29, scope: !5774)
!5779 = !DILocation(line: 160, column: 29, scope: !5767)
!5780 = !DILocation(line: 161, column: 9, scope: !5767)
!5781 = !DILocation(line: 161, column: 12, scope: !5767)
!5782 = !DILocation(line: 162, column: 1, scope: !5767)
!5783 = !DILocation(line: 161, column: 2, scope: !5767)
!5784 = distinct !DISubprogram(name: "class_dev_iter_exit", scope: !3, file: !3, line: 370, type: !5785, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5787)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{null, !5650}
!5787 = !{!5788}
!5788 = !DILocalVariable(name: "iter", arg: 1, scope: !5784, file: !3, line: 370, type: !5650)
!5789 = !DILocation(line: 370, column: 49, scope: !5784)
!5790 = !DILocation(line: 372, column: 19, scope: !5784)
!5791 = !DILocation(line: 372, column: 25, scope: !5784)
!5792 = !DILocation(line: 372, column: 2, scope: !5784)
!5793 = !DILocation(line: 373, column: 13, scope: !5784)
!5794 = !DILocation(line: 373, column: 19, scope: !5784)
!5795 = !DILocation(line: 373, column: 2, scope: !5784)
!5796 = !DILocation(line: 374, column: 1, scope: !5784)
!5797 = !DISubprogram(name: "klist_iter_exit", scope: !2501, file: !2501, line: 63, type: !5798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{null, !5718}
!5800 = distinct !DISubprogram(name: "class_for_each_device", scope: !3, file: !3, line: 395, type: !5801, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5806)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!89, !2900, !2549, !172, !5803}
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{!89, !2489, !172}
!5806 = !{!5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5819}
!5807 = !DILocalVariable(name: "class", arg: 1, scope: !5800, file: !3, line: 395, type: !2900)
!5808 = !DILocalVariable(name: "start", arg: 2, scope: !5800, file: !3, line: 395, type: !2549)
!5809 = !DILocalVariable(name: "data", arg: 3, scope: !5800, file: !3, line: 396, type: !172)
!5810 = !DILocalVariable(name: "fn", arg: 4, scope: !5800, file: !3, line: 396, type: !5803)
!5811 = !DILocalVariable(name: "sp", scope: !5800, file: !3, line: 398, type: !4955)
!5812 = !DILocalVariable(name: "iter", scope: !5800, file: !3, line: 399, type: !5651)
!5813 = !DILocalVariable(name: "dev", scope: !5800, file: !3, line: 400, type: !2489)
!5814 = !DILocalVariable(name: "error", scope: !5800, file: !3, line: 401, type: !89)
!5815 = !DILocalVariable(name: "__ret_warn_on", scope: !5816, file: !3, line: 406, type: !89)
!5816 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 406, column: 3)
!5817 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 405, column: 11)
!5818 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 405, column: 6)
!5819 = !DILocalVariable(name: "__flags", scope: !5820, file: !3, line: 406, type: !89)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 406, column: 3)
!5821 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 406, column: 3)
!5822 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 406, column: 3)
!5823 = !DILocation(line: 395, column: 47, scope: !5800)
!5824 = !DILocation(line: 395, column: 75, scope: !5800)
!5825 = !DILocation(line: 396, column: 12, scope: !5800)
!5826 = !DILocation(line: 396, column: 24, scope: !5800)
!5827 = !DILocation(line: 398, column: 2, scope: !5800)
!5828 = !DILocation(line: 398, column: 25, scope: !5800)
!5829 = !DILocation(line: 398, column: 46, scope: !5800)
!5830 = !DILocation(line: 398, column: 30, scope: !5800)
!5831 = !DILocation(line: 399, column: 2, scope: !5800)
!5832 = !DILocation(line: 399, column: 24, scope: !5800)
!5833 = !DILocation(line: 400, column: 2, scope: !5800)
!5834 = !DILocation(line: 400, column: 17, scope: !5800)
!5835 = !DILocation(line: 401, column: 2, scope: !5800)
!5836 = !DILocation(line: 401, column: 6, scope: !5800)
!5837 = !DILocation(line: 403, column: 7, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 403, column: 6)
!5839 = !DILocation(line: 403, column: 6, scope: !5800)
!5840 = !DILocation(line: 404, column: 3, scope: !5838)
!5841 = !DILocation(line: 405, column: 7, scope: !5818)
!5842 = !DILocation(line: 405, column: 6, scope: !5800)
!5843 = !DILocation(line: 406, column: 3, scope: !5816)
!5844 = !DILocation(line: 406, column: 3, scope: !5822)
!5845 = !DILocation(line: 406, column: 3, scope: !5821)
!5846 = !DILocation(line: 406, column: 3, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 406, column: 3)
!5848 = !DILocation(line: 406, column: 3, scope: !5820)
!5849 = !DILocation(line: 406, column: 3, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 406, column: 3)
!5851 = !DILocation(line: 406, column: 3, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 406, column: 3)
!5853 = !{i64 2155277599, i64 2155277628, i64 2155277674, i64 2155277732, i64 2155277786, i64 2155277840, i64 2155277895, i64 2155277926, i64 2155278234, i64 2155278240, i64 2155278287, i64 2155278310, i64 2155278336}
!5854 = !DILocation(line: 406, column: 3, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 406, column: 3)
!5856 = !DILocation(line: 406, column: 3, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 406, column: 3)
!5858 = !DILocation(line: 406, column: 3, scope: !5817)
!5859 = !DILocation(line: 408, column: 3, scope: !5817)
!5860 = !DILocation(line: 411, column: 29, scope: !5800)
!5861 = !DILocation(line: 411, column: 36, scope: !5800)
!5862 = !DILocation(line: 411, column: 2, scope: !5800)
!5863 = !DILocation(line: 412, column: 2, scope: !5800)
!5864 = !DILocation(line: 412, column: 16, scope: !5800)
!5865 = !DILocation(line: 412, column: 14, scope: !5800)
!5866 = !DILocation(line: 413, column: 11, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 412, column: 45)
!5868 = !DILocation(line: 413, column: 14, scope: !5867)
!5869 = !DILocation(line: 413, column: 19, scope: !5867)
!5870 = !DILocation(line: 413, column: 9, scope: !5867)
!5871 = !DILocation(line: 414, column: 7, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 414, column: 7)
!5873 = !DILocation(line: 414, column: 7, scope: !5867)
!5874 = !DILocation(line: 415, column: 4, scope: !5872)
!5875 = distinct !{!5875, !5863, !5876, !5172, !5173}
!5876 = !DILocation(line: 416, column: 2, scope: !5800)
!5877 = !DILocation(line: 417, column: 2, scope: !5800)
!5878 = !DILocation(line: 418, column: 13, scope: !5800)
!5879 = !DILocation(line: 418, column: 2, scope: !5800)
!5880 = !DILocation(line: 420, column: 9, scope: !5800)
!5881 = !DILocation(line: 420, column: 2, scope: !5800)
!5882 = !DILocation(line: 421, column: 1, scope: !5800)
!5883 = !DISubprogram(name: "__warn_printk", scope: !756, file: !756, line: 93, type: !5884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{null, !178, null}
!5886 = distinct !DISubprogram(name: "class_find_device", scope: !3, file: !3, line: 444, type: !5887, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5892)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!2489, !2900, !2549, !2120, !5889}
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5890, size: 64)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!89, !2489, !2120}
!5892 = !{!5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5904}
!5893 = !DILocalVariable(name: "class", arg: 1, scope: !5886, file: !3, line: 444, type: !2900)
!5894 = !DILocalVariable(name: "start", arg: 2, scope: !5886, file: !3, line: 444, type: !2549)
!5895 = !DILocalVariable(name: "data", arg: 3, scope: !5886, file: !3, line: 445, type: !2120)
!5896 = !DILocalVariable(name: "match", arg: 4, scope: !5886, file: !3, line: 446, type: !5889)
!5897 = !DILocalVariable(name: "sp", scope: !5886, file: !3, line: 448, type: !4955)
!5898 = !DILocalVariable(name: "iter", scope: !5886, file: !3, line: 449, type: !5651)
!5899 = !DILocalVariable(name: "dev", scope: !5886, file: !3, line: 450, type: !2489)
!5900 = !DILocalVariable(name: "__ret_warn_on", scope: !5901, file: !3, line: 455, type: !89)
!5901 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 455, column: 3)
!5902 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 454, column: 11)
!5903 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 454, column: 6)
!5904 = !DILocalVariable(name: "__flags", scope: !5905, file: !3, line: 455, type: !89)
!5905 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 455, column: 3)
!5906 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 455, column: 3)
!5907 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 455, column: 3)
!5908 = !DILocation(line: 444, column: 54, scope: !5886)
!5909 = !DILocation(line: 444, column: 82, scope: !5886)
!5910 = !DILocation(line: 445, column: 18, scope: !5886)
!5911 = !DILocation(line: 446, column: 12, scope: !5886)
!5912 = !DILocation(line: 448, column: 2, scope: !5886)
!5913 = !DILocation(line: 448, column: 25, scope: !5886)
!5914 = !DILocation(line: 448, column: 46, scope: !5886)
!5915 = !DILocation(line: 448, column: 30, scope: !5886)
!5916 = !DILocation(line: 449, column: 2, scope: !5886)
!5917 = !DILocation(line: 449, column: 24, scope: !5886)
!5918 = !DILocation(line: 450, column: 2, scope: !5886)
!5919 = !DILocation(line: 450, column: 17, scope: !5886)
!5920 = !DILocation(line: 452, column: 7, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 452, column: 6)
!5922 = !DILocation(line: 452, column: 6, scope: !5886)
!5923 = !DILocation(line: 453, column: 3, scope: !5921)
!5924 = !DILocation(line: 454, column: 7, scope: !5903)
!5925 = !DILocation(line: 454, column: 6, scope: !5886)
!5926 = !DILocation(line: 455, column: 3, scope: !5901)
!5927 = !DILocation(line: 455, column: 3, scope: !5907)
!5928 = !DILocation(line: 455, column: 3, scope: !5906)
!5929 = !DILocation(line: 455, column: 3, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 455, column: 3)
!5931 = !DILocation(line: 455, column: 3, scope: !5905)
!5932 = !DILocation(line: 455, column: 3, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 455, column: 3)
!5934 = !DILocation(line: 455, column: 3, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 455, column: 3)
!5936 = !{i64 2155281391, i64 2155281420, i64 2155281466, i64 2155281524, i64 2155281578, i64 2155281632, i64 2155281687, i64 2155281718, i64 2155282026, i64 2155282032, i64 2155282079, i64 2155282102, i64 2155282128}
!5937 = !DILocation(line: 455, column: 3, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 455, column: 3)
!5939 = !DILocation(line: 455, column: 3, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 455, column: 3)
!5941 = !DILocation(line: 455, column: 3, scope: !5902)
!5942 = !DILocation(line: 457, column: 3, scope: !5902)
!5943 = !DILocation(line: 460, column: 29, scope: !5886)
!5944 = !DILocation(line: 460, column: 36, scope: !5886)
!5945 = !DILocation(line: 460, column: 2, scope: !5886)
!5946 = !DILocation(line: 461, column: 2, scope: !5886)
!5947 = !DILocation(line: 461, column: 16, scope: !5886)
!5948 = !DILocation(line: 461, column: 14, scope: !5886)
!5949 = !DILocation(line: 462, column: 7, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5951, file: !3, line: 462, column: 7)
!5951 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 461, column: 45)
!5952 = !DILocation(line: 462, column: 13, scope: !5950)
!5953 = !DILocation(line: 462, column: 18, scope: !5950)
!5954 = !DILocation(line: 462, column: 7, scope: !5951)
!5955 = !DILocation(line: 463, column: 15, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 462, column: 25)
!5957 = !DILocation(line: 463, column: 4, scope: !5956)
!5958 = !DILocation(line: 464, column: 4, scope: !5956)
!5959 = distinct !{!5959, !5946, !5960, !5172, !5173}
!5960 = !DILocation(line: 466, column: 2, scope: !5886)
!5961 = !DILocation(line: 467, column: 2, scope: !5886)
!5962 = !DILocation(line: 468, column: 13, scope: !5886)
!5963 = !DILocation(line: 468, column: 2, scope: !5886)
!5964 = !DILocation(line: 470, column: 9, scope: !5886)
!5965 = !DILocation(line: 470, column: 2, scope: !5886)
!5966 = !DILocation(line: 471, column: 1, scope: !5886)
!5967 = !DISubprogram(name: "get_device", scope: !69, file: !69, line: 1230, type: !5968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!2489, !2489}
!5970 = distinct !DISubprogram(name: "class_interface_register", scope: !3, file: !3, line: 474, type: !5971, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5980)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!89, !5973}
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5974, size: 64)
!5974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_interface", file: !2903, line: 219, size: 320, elements: !5975)
!5975 = !{!5976, !5977, !5978, !5979}
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5974, file: !2903, line: 220, baseType: !182, size: 128)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5974, file: !2903, line: 221, baseType: !2900, size: 64, offset: 128)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "add_dev", scope: !5974, file: !2903, line: 223, baseType: !2552, size: 64, offset: 192)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev", scope: !5974, file: !2903, line: 224, baseType: !2556, size: 64, offset: 256)
!5980 = !{!5981, !5982, !5983, !5984, !5985}
!5981 = !DILocalVariable(name: "class_intf", arg: 1, scope: !5970, file: !3, line: 474, type: !5973)
!5982 = !DILocalVariable(name: "sp", scope: !5970, file: !3, line: 476, type: !4955)
!5983 = !DILocalVariable(name: "parent", scope: !5970, file: !3, line: 477, type: !2900)
!5984 = !DILocalVariable(name: "iter", scope: !5970, file: !3, line: 478, type: !5651)
!5985 = !DILocalVariable(name: "dev", scope: !5970, file: !3, line: 479, type: !2489)
!5986 = !DILocation(line: 474, column: 54, scope: !5970)
!5987 = !DILocation(line: 476, column: 2, scope: !5970)
!5988 = !DILocation(line: 476, column: 25, scope: !5970)
!5989 = !DILocation(line: 477, column: 2, scope: !5970)
!5990 = !DILocation(line: 477, column: 22, scope: !5970)
!5991 = !DILocation(line: 478, column: 2, scope: !5970)
!5992 = !DILocation(line: 478, column: 24, scope: !5970)
!5993 = !DILocation(line: 479, column: 2, scope: !5970)
!5994 = !DILocation(line: 479, column: 17, scope: !5970)
!5995 = !DILocation(line: 481, column: 7, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 481, column: 6)
!5997 = !DILocation(line: 481, column: 18, scope: !5996)
!5998 = !DILocation(line: 481, column: 22, scope: !5996)
!5999 = !DILocation(line: 481, column: 34, scope: !5996)
!6000 = !DILocation(line: 481, column: 6, scope: !5970)
!6001 = !DILocation(line: 482, column: 3, scope: !5996)
!6002 = !DILocation(line: 484, column: 11, scope: !5970)
!6003 = !DILocation(line: 484, column: 23, scope: !5970)
!6004 = !DILocation(line: 484, column: 9, scope: !5970)
!6005 = !DILocation(line: 485, column: 23, scope: !5970)
!6006 = !DILocation(line: 485, column: 7, scope: !5970)
!6007 = !DILocation(line: 485, column: 5, scope: !5970)
!6008 = !DILocation(line: 486, column: 7, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 486, column: 6)
!6010 = !DILocation(line: 486, column: 6, scope: !5970)
!6011 = !DILocation(line: 487, column: 3, scope: !6009)
!6012 = !DILocation(line: 494, column: 14, scope: !5970)
!6013 = !DILocation(line: 494, column: 18, scope: !5970)
!6014 = !DILocation(line: 494, column: 2, scope: !5970)
!6015 = !DILocation(line: 495, column: 17, scope: !5970)
!6016 = !DILocation(line: 495, column: 29, scope: !5970)
!6017 = !DILocation(line: 495, column: 36, scope: !5970)
!6018 = !DILocation(line: 495, column: 40, scope: !5970)
!6019 = !DILocation(line: 495, column: 2, scope: !5970)
!6020 = !DILocation(line: 496, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 496, column: 6)
!6022 = !DILocation(line: 496, column: 18, scope: !6021)
!6023 = !DILocation(line: 496, column: 6, scope: !5970)
!6024 = !DILocation(line: 497, column: 30, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 496, column: 27)
!6026 = !DILocation(line: 497, column: 3, scope: !6025)
!6027 = !DILocation(line: 498, column: 3, scope: !6025)
!6028 = !DILocation(line: 498, column: 17, scope: !6025)
!6029 = !DILocation(line: 498, column: 15, scope: !6025)
!6030 = !DILocation(line: 499, column: 4, scope: !6025)
!6031 = !DILocation(line: 499, column: 16, scope: !6025)
!6032 = !DILocation(line: 499, column: 24, scope: !6025)
!6033 = distinct !{!6033, !6027, !6034, !5172, !5173}
!6034 = !DILocation(line: 499, column: 27, scope: !6025)
!6035 = !DILocation(line: 500, column: 3, scope: !6025)
!6036 = !DILocation(line: 501, column: 2, scope: !6025)
!6037 = !DILocation(line: 502, column: 16, scope: !5970)
!6038 = !DILocation(line: 502, column: 20, scope: !5970)
!6039 = !DILocation(line: 502, column: 2, scope: !5970)
!6040 = !DILocation(line: 504, column: 2, scope: !5970)
!6041 = !DILocation(line: 505, column: 1, scope: !5970)
!6042 = !DISubprogram(name: "mutex_lock", scope: !607, file: !607, line: 227, type: !6043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{null, !5505}
!6045 = distinct !DISubprogram(name: "list_add_tail", scope: !5196, file: !5196, line: 181, type: !6046, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6048)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !186, !186}
!6048 = !{!6049, !6050}
!6049 = !DILocalVariable(name: "new", arg: 1, scope: !6045, file: !5196, line: 181, type: !186)
!6050 = !DILocalVariable(name: "head", arg: 2, scope: !6045, file: !5196, line: 181, type: !186)
!6051 = !DILocation(line: 181, column: 52, scope: !6045)
!6052 = !DILocation(line: 181, column: 75, scope: !6045)
!6053 = !DILocation(line: 183, column: 13, scope: !6045)
!6054 = !DILocation(line: 183, column: 18, scope: !6045)
!6055 = !DILocation(line: 183, column: 24, scope: !6045)
!6056 = !DILocation(line: 183, column: 30, scope: !6045)
!6057 = !DILocation(line: 183, column: 2, scope: !6045)
!6058 = !DILocation(line: 184, column: 1, scope: !6045)
!6059 = !DISubprogram(name: "mutex_unlock", scope: !607, file: !607, line: 246, type: !6043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6060 = distinct !DISubprogram(name: "class_interface_unregister", scope: !3, file: !3, line: 508, type: !6061, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6061 = !DISubroutineType(types: !6062)
!6062 = !{null, !5973}
!6063 = !{!6064, !6065, !6066, !6067, !6068}
!6064 = !DILocalVariable(name: "class_intf", arg: 1, scope: !6060, file: !3, line: 508, type: !5973)
!6065 = !DILocalVariable(name: "sp", scope: !6060, file: !3, line: 510, type: !4955)
!6066 = !DILocalVariable(name: "parent", scope: !6060, file: !3, line: 511, type: !2900)
!6067 = !DILocalVariable(name: "iter", scope: !6060, file: !3, line: 512, type: !5651)
!6068 = !DILocalVariable(name: "dev", scope: !6060, file: !3, line: 513, type: !2489)
!6069 = !DILocation(line: 508, column: 57, scope: !6060)
!6070 = !DILocation(line: 510, column: 2, scope: !6060)
!6071 = !DILocation(line: 510, column: 25, scope: !6060)
!6072 = !DILocation(line: 511, column: 2, scope: !6060)
!6073 = !DILocation(line: 511, column: 22, scope: !6060)
!6074 = !DILocation(line: 511, column: 31, scope: !6060)
!6075 = !DILocation(line: 511, column: 43, scope: !6060)
!6076 = !DILocation(line: 512, column: 2, scope: !6060)
!6077 = !DILocation(line: 512, column: 24, scope: !6060)
!6078 = !DILocation(line: 513, column: 2, scope: !6060)
!6079 = !DILocation(line: 513, column: 17, scope: !6060)
!6080 = !DILocation(line: 515, column: 7, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 515, column: 6)
!6082 = !DILocation(line: 515, column: 6, scope: !6060)
!6083 = !DILocation(line: 516, column: 3, scope: !6081)
!6084 = !DILocation(line: 518, column: 23, scope: !6060)
!6085 = !DILocation(line: 518, column: 7, scope: !6060)
!6086 = !DILocation(line: 518, column: 5, scope: !6060)
!6087 = !DILocation(line: 519, column: 7, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 519, column: 6)
!6089 = !DILocation(line: 519, column: 6, scope: !6060)
!6090 = !DILocation(line: 520, column: 3, scope: !6088)
!6091 = !DILocation(line: 522, column: 14, scope: !6060)
!6092 = !DILocation(line: 522, column: 18, scope: !6060)
!6093 = !DILocation(line: 522, column: 2, scope: !6060)
!6094 = !DILocation(line: 523, column: 17, scope: !6060)
!6095 = !DILocation(line: 523, column: 29, scope: !6060)
!6096 = !DILocation(line: 523, column: 2, scope: !6060)
!6097 = !DILocation(line: 524, column: 6, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 524, column: 6)
!6099 = !DILocation(line: 524, column: 18, scope: !6098)
!6100 = !DILocation(line: 524, column: 6, scope: !6060)
!6101 = !DILocation(line: 525, column: 30, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 524, column: 30)
!6103 = !DILocation(line: 525, column: 3, scope: !6102)
!6104 = !DILocation(line: 526, column: 3, scope: !6102)
!6105 = !DILocation(line: 526, column: 17, scope: !6102)
!6106 = !DILocation(line: 526, column: 15, scope: !6102)
!6107 = !DILocation(line: 527, column: 4, scope: !6102)
!6108 = !DILocation(line: 527, column: 16, scope: !6102)
!6109 = !DILocation(line: 527, column: 27, scope: !6102)
!6110 = distinct !{!6110, !6104, !6111, !5172, !5173}
!6111 = !DILocation(line: 527, column: 30, scope: !6102)
!6112 = !DILocation(line: 528, column: 3, scope: !6102)
!6113 = !DILocation(line: 529, column: 2, scope: !6102)
!6114 = !DILocation(line: 530, column: 16, scope: !6060)
!6115 = !DILocation(line: 530, column: 20, scope: !6060)
!6116 = !DILocation(line: 530, column: 2, scope: !6060)
!6117 = !DILocation(line: 537, column: 13, scope: !6060)
!6118 = !DILocation(line: 537, column: 2, scope: !6060)
!6119 = !DILocation(line: 538, column: 13, scope: !6060)
!6120 = !DILocation(line: 538, column: 2, scope: !6060)
!6121 = !DILocation(line: 539, column: 1, scope: !6060)
!6122 = distinct !DISubprogram(name: "list_del_init", scope: !5196, file: !5196, line: 285, type: !5471, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6123)
!6123 = !{!6124}
!6124 = !DILocalVariable(name: "entry", arg: 1, scope: !6122, file: !5196, line: 285, type: !186)
!6125 = !DILocation(line: 285, column: 52, scope: !6122)
!6126 = !DILocation(line: 287, column: 19, scope: !6122)
!6127 = !DILocation(line: 287, column: 2, scope: !6122)
!6128 = !DILocation(line: 288, column: 17, scope: !6122)
!6129 = !DILocation(line: 288, column: 2, scope: !6122)
!6130 = !DILocation(line: 289, column: 1, scope: !6122)
!6131 = distinct !DISubprogram(name: "show_class_attr_string", scope: !3, file: !3, line: 542, type: !4996, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6132)
!6132 = !{!6133, !6134, !6135, !6136, !6137}
!6133 = !DILocalVariable(name: "class", arg: 1, scope: !6131, file: !3, line: 542, type: !2900)
!6134 = !DILocalVariable(name: "attr", arg: 2, scope: !6131, file: !3, line: 543, type: !4998)
!6135 = !DILocalVariable(name: "buf", arg: 3, scope: !6131, file: !3, line: 543, type: !265)
!6136 = !DILocalVariable(name: "cs", scope: !6131, file: !3, line: 545, type: !4987)
!6137 = !DILocalVariable(name: "__mptr", scope: !6138, file: !3, line: 547, type: !172)
!6138 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 547, column: 7)
!6139 = !DILocation(line: 542, column: 52, scope: !6131)
!6140 = !DILocation(line: 543, column: 41, scope: !6131)
!6141 = !DILocation(line: 543, column: 53, scope: !6131)
!6142 = !DILocation(line: 545, column: 2, scope: !6131)
!6143 = !DILocation(line: 545, column: 33, scope: !6131)
!6144 = !DILocation(line: 547, column: 7, scope: !6138)
!6145 = !DILocation(line: 547, column: 7, scope: !6131)
!6146 = !DILocation(line: 547, column: 5, scope: !6131)
!6147 = !DILocation(line: 548, column: 20, scope: !6131)
!6148 = !DILocation(line: 548, column: 33, scope: !6131)
!6149 = !DILocation(line: 548, column: 37, scope: !6131)
!6150 = !DILocation(line: 548, column: 9, scope: !6131)
!6151 = !DILocation(line: 549, column: 1, scope: !6131)
!6152 = !DILocation(line: 548, column: 2, scope: !6131)
!6153 = !DISubprogram(name: "sysfs_emit", scope: !291, file: !291, line: 357, type: !6154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!89, !265, !178, null}
!6156 = distinct !DISubprogram(name: "class_compat_register", scope: !3, file: !3, line: 564, type: !6157, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!6159, !178}
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6160, size: 64)
!6160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_compat", file: !3, line: 553, size: 64, elements: !6161)
!6161 = !{!6162}
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !6160, file: !3, line: 554, baseType: !173, size: 64)
!6163 = !{!6164, !6165}
!6164 = !DILocalVariable(name: "name", arg: 1, scope: !6156, file: !3, line: 564, type: !178)
!6165 = !DILocalVariable(name: "cls", scope: !6156, file: !3, line: 566, type: !6159)
!6166 = !DILocation(line: 564, column: 56, scope: !6156)
!6167 = !DILocation(line: 566, column: 2, scope: !6156)
!6168 = !DILocation(line: 566, column: 23, scope: !6156)
!6169 = !DILocation(line: 568, column: 8, scope: !6156)
!6170 = !DILocation(line: 568, column: 6, scope: !6156)
!6171 = !DILocation(line: 569, column: 7, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 569, column: 6)
!6173 = !DILocation(line: 569, column: 6, scope: !6156)
!6174 = !DILocation(line: 570, column: 3, scope: !6172)
!6175 = !DILocation(line: 571, column: 37, scope: !6156)
!6176 = !DILocation(line: 571, column: 44, scope: !6156)
!6177 = !DILocation(line: 571, column: 56, scope: !6156)
!6178 = !DILocation(line: 571, column: 14, scope: !6156)
!6179 = !DILocation(line: 571, column: 2, scope: !6156)
!6180 = !DILocation(line: 571, column: 7, scope: !6156)
!6181 = !DILocation(line: 571, column: 12, scope: !6156)
!6182 = !DILocation(line: 572, column: 7, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 572, column: 6)
!6184 = !DILocation(line: 572, column: 12, scope: !6183)
!6185 = !DILocation(line: 572, column: 6, scope: !6156)
!6186 = !DILocation(line: 573, column: 9, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 572, column: 18)
!6188 = !DILocation(line: 573, column: 3, scope: !6187)
!6189 = !DILocation(line: 574, column: 3, scope: !6187)
!6190 = !DILocation(line: 576, column: 9, scope: !6156)
!6191 = !DILocation(line: 576, column: 2, scope: !6156)
!6192 = !DILocation(line: 577, column: 1, scope: !6156)
!6193 = distinct !DISubprogram(name: "kmalloc", scope: !162, file: !162, line: 591, type: !5430, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6194)
!6194 = !{!6195, !6196, !6197}
!6195 = !DILocalVariable(name: "size", arg: 1, scope: !6193, file: !162, line: 591, type: !312)
!6196 = !DILocalVariable(name: "flags", arg: 2, scope: !6193, file: !162, line: 591, type: !1120)
!6197 = !DILocalVariable(name: "index", scope: !6198, file: !162, line: 594, type: !7)
!6198 = distinct !DILexicalBlock(scope: !6199, file: !162, line: 593, column: 42)
!6199 = distinct !DILexicalBlock(scope: !6193, file: !162, line: 593, column: 6)
!6200 = !DILocation(line: 591, column: 61, scope: !6193)
!6201 = !DILocation(line: 591, column: 73, scope: !6193)
!6202 = !DILocation(line: 593, column: 27, scope: !6199)
!6203 = !DILocation(line: 593, column: 6, scope: !6199)
!6204 = !DILocation(line: 593, column: 33, scope: !6199)
!6205 = !DILocation(line: 593, column: 36, scope: !6199)
!6206 = !DILocation(line: 593, column: 6, scope: !6193)
!6207 = !DILocation(line: 594, column: 3, scope: !6198)
!6208 = !DILocation(line: 594, column: 16, scope: !6198)
!6209 = !DILocation(line: 596, column: 7, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6198, file: !162, line: 596, column: 7)
!6211 = !DILocation(line: 596, column: 12, scope: !6210)
!6212 = !DILocation(line: 596, column: 7, scope: !6198)
!6213 = !DILocation(line: 597, column: 25, scope: !6210)
!6214 = !DILocation(line: 597, column: 31, scope: !6210)
!6215 = !DILocation(line: 597, column: 11, scope: !6210)
!6216 = !DILocation(line: 597, column: 4, scope: !6210)
!6217 = !DILocation(line: 599, column: 11, scope: !6198)
!6218 = !DILocation(line: 599, column: 9, scope: !6198)
!6219 = !DILocation(line: 601, column: 33, scope: !6198)
!6220 = !DILocation(line: 601, column: 40, scope: !6198)
!6221 = !DILocation(line: 601, column: 20, scope: !6198)
!6222 = !DILocation(line: 601, column: 5, scope: !6198)
!6223 = !DILocation(line: 601, column: 51, scope: !6198)
!6224 = !DILocation(line: 602, column: 5, scope: !6198)
!6225 = !DILocation(line: 602, column: 12, scope: !6198)
!6226 = !DILocation(line: 600, column: 10, scope: !6198)
!6227 = !DILocation(line: 600, column: 3, scope: !6198)
!6228 = !DILocation(line: 603, column: 2, scope: !6199)
!6229 = !DILocation(line: 604, column: 19, scope: !6193)
!6230 = !DILocation(line: 604, column: 25, scope: !6193)
!6231 = !DILocation(line: 604, column: 9, scope: !6193)
!6232 = !DILocation(line: 604, column: 2, scope: !6193)
!6233 = !DILocation(line: 605, column: 1, scope: !6193)
!6234 = !DISubprogram(name: "kobject_create_and_add", scope: !175, file: !175, line: 103, type: !6235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{!173, !178, !173}
!6237 = distinct !DISubprogram(name: "class_compat_unregister", scope: !3, file: !3, line: 584, type: !6238, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6240)
!6238 = !DISubroutineType(types: !6239)
!6239 = !{null, !6159}
!6240 = !{!6241}
!6241 = !DILocalVariable(name: "cls", arg: 1, scope: !6237, file: !3, line: 584, type: !6159)
!6242 = !DILocation(line: 584, column: 51, scope: !6237)
!6243 = !DILocation(line: 586, column: 14, scope: !6237)
!6244 = !DILocation(line: 586, column: 19, scope: !6237)
!6245 = !DILocation(line: 586, column: 2, scope: !6237)
!6246 = !DILocation(line: 587, column: 8, scope: !6237)
!6247 = !DILocation(line: 587, column: 2, scope: !6237)
!6248 = !DILocation(line: 588, column: 1, scope: !6237)
!6249 = !DISubprogram(name: "kobject_put", scope: !175, file: !175, line: 110, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6250 = distinct !DISubprogram(name: "class_compat_create_link", scope: !3, file: !3, line: 598, type: !6251, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!89, !6159, !2489, !2489}
!6253 = !{!6254, !6255, !6256, !6257}
!6254 = !DILocalVariable(name: "cls", arg: 1, scope: !6250, file: !3, line: 598, type: !6159)
!6255 = !DILocalVariable(name: "dev", arg: 2, scope: !6250, file: !3, line: 598, type: !2489)
!6256 = !DILocalVariable(name: "device_link", arg: 3, scope: !6250, file: !3, line: 599, type: !2489)
!6257 = !DILocalVariable(name: "error", scope: !6250, file: !3, line: 601, type: !89)
!6258 = !DILocation(line: 598, column: 51, scope: !6250)
!6259 = !DILocation(line: 598, column: 71, scope: !6250)
!6260 = !DILocation(line: 599, column: 24, scope: !6250)
!6261 = !DILocation(line: 601, column: 2, scope: !6250)
!6262 = !DILocation(line: 601, column: 6, scope: !6250)
!6263 = !DILocation(line: 603, column: 28, scope: !6250)
!6264 = !DILocation(line: 603, column: 33, scope: !6250)
!6265 = !DILocation(line: 603, column: 40, scope: !6250)
!6266 = !DILocation(line: 603, column: 45, scope: !6250)
!6267 = !DILocation(line: 603, column: 60, scope: !6250)
!6268 = !DILocation(line: 603, column: 51, scope: !6250)
!6269 = !DILocation(line: 603, column: 10, scope: !6250)
!6270 = !DILocation(line: 603, column: 8, scope: !6250)
!6271 = !DILocation(line: 604, column: 6, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 604, column: 6)
!6273 = !DILocation(line: 604, column: 6, scope: !6250)
!6274 = !DILocation(line: 605, column: 10, scope: !6272)
!6275 = !DILocation(line: 605, column: 3, scope: !6272)
!6276 = !DILocation(line: 612, column: 6, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 612, column: 6)
!6278 = !DILocation(line: 612, column: 6, scope: !6250)
!6279 = !DILocation(line: 613, column: 30, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 612, column: 19)
!6281 = !DILocation(line: 613, column: 35, scope: !6280)
!6282 = !DILocation(line: 613, column: 42, scope: !6280)
!6283 = !DILocation(line: 613, column: 55, scope: !6280)
!6284 = !DILocation(line: 613, column: 11, scope: !6280)
!6285 = !DILocation(line: 613, column: 9, scope: !6280)
!6286 = !DILocation(line: 615, column: 7, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 615, column: 7)
!6288 = !DILocation(line: 615, column: 7, scope: !6280)
!6289 = !DILocation(line: 616, column: 22, scope: !6287)
!6290 = !DILocation(line: 616, column: 27, scope: !6287)
!6291 = !DILocation(line: 616, column: 42, scope: !6287)
!6292 = !DILocation(line: 616, column: 33, scope: !6287)
!6293 = !DILocation(line: 616, column: 4, scope: !6287)
!6294 = !DILocation(line: 617, column: 2, scope: !6280)
!6295 = !DILocation(line: 619, column: 9, scope: !6250)
!6296 = !DILocation(line: 619, column: 2, scope: !6250)
!6297 = !DILocation(line: 620, column: 1, scope: !6250)
!6298 = !DISubprogram(name: "sysfs_create_link", scope: !291, file: !291, line: 293, type: !6299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6299 = !DISubroutineType(types: !6300)
!6300 = !{!89, !173, !173, !178}
!6301 = distinct !DISubprogram(name: "dev_name", scope: !69, file: !69, line: 858, type: !6302, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6304)
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!178, !2549}
!6304 = !{!6305}
!6305 = !DILocalVariable(name: "dev", arg: 1, scope: !6301, file: !69, line: 858, type: !2549)
!6306 = !DILocation(line: 858, column: 57, scope: !6301)
!6307 = !DILocation(line: 861, column: 6, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6301, file: !69, line: 861, column: 6)
!6309 = !DILocation(line: 861, column: 11, scope: !6308)
!6310 = !DILocation(line: 861, column: 6, scope: !6301)
!6311 = !DILocation(line: 862, column: 10, scope: !6308)
!6312 = !DILocation(line: 862, column: 15, scope: !6308)
!6313 = !DILocation(line: 862, column: 3, scope: !6308)
!6314 = !DILocation(line: 864, column: 23, scope: !6301)
!6315 = !DILocation(line: 864, column: 28, scope: !6301)
!6316 = !DILocation(line: 864, column: 9, scope: !6301)
!6317 = !DILocation(line: 864, column: 2, scope: !6301)
!6318 = !DILocation(line: 865, column: 1, scope: !6301)
!6319 = !DISubprogram(name: "sysfs_remove_link", scope: !291, file: !291, line: 298, type: !6320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6320 = !DISubroutineType(types: !6321)
!6321 = !{null, !173, !178}
!6322 = distinct !DISubprogram(name: "class_compat_remove_link", scope: !3, file: !3, line: 631, type: !6323, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6325)
!6323 = !DISubroutineType(types: !6324)
!6324 = !{null, !6159, !2489, !2489}
!6325 = !{!6326, !6327, !6328}
!6326 = !DILocalVariable(name: "cls", arg: 1, scope: !6322, file: !3, line: 631, type: !6159)
!6327 = !DILocalVariable(name: "dev", arg: 2, scope: !6322, file: !3, line: 631, type: !2489)
!6328 = !DILocalVariable(name: "device_link", arg: 3, scope: !6322, file: !3, line: 632, type: !2489)
!6329 = !DILocation(line: 631, column: 52, scope: !6322)
!6330 = !DILocation(line: 631, column: 72, scope: !6322)
!6331 = !DILocation(line: 632, column: 25, scope: !6322)
!6332 = !DILocation(line: 634, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 634, column: 6)
!6334 = !DILocation(line: 634, column: 6, scope: !6322)
!6335 = !DILocation(line: 635, column: 22, scope: !6333)
!6336 = !DILocation(line: 635, column: 27, scope: !6333)
!6337 = !DILocation(line: 635, column: 3, scope: !6333)
!6338 = !DILocation(line: 636, column: 20, scope: !6322)
!6339 = !DILocation(line: 636, column: 25, scope: !6322)
!6340 = !DILocation(line: 636, column: 40, scope: !6322)
!6341 = !DILocation(line: 636, column: 31, scope: !6322)
!6342 = !DILocation(line: 636, column: 2, scope: !6322)
!6343 = !DILocation(line: 637, column: 1, scope: !6322)
!6344 = distinct !DISubprogram(name: "class_is_registered", scope: !3, file: !3, line: 652, type: !6345, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6347)
!6345 = !DISubroutineType(types: !6346)
!6346 = !{!686, !2900}
!6347 = !{!6348, !6349, !6350}
!6348 = !DILocalVariable(name: "class", arg: 1, scope: !6344, file: !3, line: 652, type: !2900)
!6349 = !DILocalVariable(name: "sp", scope: !6344, file: !3, line: 654, type: !4955)
!6350 = !DILocalVariable(name: "is_initialized", scope: !6344, file: !3, line: 655, type: !686)
!6351 = !DILocation(line: 652, column: 46, scope: !6344)
!6352 = !DILocation(line: 654, column: 2, scope: !6344)
!6353 = !DILocation(line: 654, column: 25, scope: !6344)
!6354 = !DILocation(line: 654, column: 46, scope: !6344)
!6355 = !DILocation(line: 654, column: 30, scope: !6344)
!6356 = !DILocation(line: 655, column: 2, scope: !6344)
!6357 = !DILocation(line: 655, column: 7, scope: !6344)
!6358 = !DILocation(line: 657, column: 6, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 657, column: 6)
!6360 = !DILocation(line: 657, column: 6, scope: !6344)
!6361 = !DILocation(line: 658, column: 18, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 657, column: 10)
!6363 = !DILocation(line: 659, column: 14, scope: !6362)
!6364 = !DILocation(line: 659, column: 3, scope: !6362)
!6365 = !DILocation(line: 660, column: 2, scope: !6362)
!6366 = !DILocation(line: 661, column: 9, scope: !6344)
!6367 = !{i8 0, i8 2}
!6368 = !DILocation(line: 662, column: 1, scope: !6344)
!6369 = !DILocation(line: 661, column: 2, scope: !6344)
!6370 = distinct !DISubprogram(name: "classes_init", scope: !3, file: !3, line: 665, type: !700, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6371 = !DILocation(line: 667, column: 15, scope: !6370)
!6372 = !DILocation(line: 667, column: 13, scope: !6370)
!6373 = !DILocation(line: 668, column: 7, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 668, column: 6)
!6375 = !DILocation(line: 668, column: 6, scope: !6370)
!6376 = !DILocation(line: 669, column: 3, scope: !6374)
!6377 = !DILocation(line: 670, column: 2, scope: !6370)
!6378 = !DILocation(line: 671, column: 1, scope: !6370)
!6379 = !DISubprogram(name: "kset_create_and_add", scope: !175, file: !175, line: 178, type: !6380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!190, !178, !239, !173}
!6382 = !DISubprogram(name: "_raw_spin_lock", scope: !6383, file: !6383, line: 22, type: !6384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6384 = !DISubroutineType(types: !6385)
!6385 = !{null, !6386}
!6386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!6387 = distinct !DISubprogram(name: "kset_get", scope: !175, file: !175, line: 186, type: !6388, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6390)
!6388 = !DISubroutineType(types: !6389)
!6389 = !{!190, !190}
!6390 = !{!6391}
!6391 = !DILocalVariable(name: "k", arg: 1, scope: !6387, file: !175, line: 186, type: !190)
!6392 = !DILocation(line: 186, column: 50, scope: !6387)
!6393 = !DILocation(line: 188, column: 9, scope: !6387)
!6394 = !DILocation(line: 188, column: 34, scope: !6387)
!6395 = !DILocation(line: 188, column: 37, scope: !6387)
!6396 = !DILocation(line: 188, column: 21, scope: !6387)
!6397 = !DILocation(line: 188, column: 13, scope: !6387)
!6398 = !DILocation(line: 188, column: 2, scope: !6387)
!6399 = distinct !DISubprogram(name: "to_kset", scope: !175, file: !175, line: 181, type: !6400, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6402)
!6400 = !DISubroutineType(types: !6401)
!6401 = !{!190, !173}
!6402 = !{!6403, !6404}
!6403 = !DILocalVariable(name: "kobj", arg: 1, scope: !6399, file: !175, line: 181, type: !173)
!6404 = !DILocalVariable(name: "__mptr", scope: !6405, file: !175, line: 183, type: !172)
!6405 = distinct !DILexicalBlock(scope: !6399, file: !175, line: 183, column: 16)
!6406 = !DILocation(line: 181, column: 52, scope: !6399)
!6407 = !DILocation(line: 183, column: 9, scope: !6399)
!6408 = !DILocation(line: 183, column: 16, scope: !6405)
!6409 = !DILocation(line: 183, column: 16, scope: !6399)
!6410 = !DILocation(line: 183, column: 2, scope: !6399)
!6411 = !DISubprogram(name: "kobject_get", scope: !175, file: !175, line: 108, type: !6412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{!173, !173}
!6414 = !DISubprogram(name: "_raw_spin_unlock", scope: !6383, file: !6383, line: 39, type: !6384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6415 = distinct !DISubprogram(name: "kset_put", scope: !175, file: !175, line: 191, type: !5492, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6416)
!6416 = !{!6417}
!6417 = !DILocalVariable(name: "k", arg: 1, scope: !6415, file: !175, line: 191, type: !190)
!6418 = !DILocation(line: 191, column: 42, scope: !6415)
!6419 = !DILocation(line: 193, column: 15, scope: !6415)
!6420 = !DILocation(line: 193, column: 18, scope: !6415)
!6421 = !DILocation(line: 193, column: 2, scope: !6415)
!6422 = !DILocation(line: 194, column: 1, scope: !6415)
!6423 = !DISubprogram(name: "put_device", scope: !69, file: !69, line: 1231, type: !2557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6424 = distinct !DISubprogram(name: "class_release", scope: !3, file: !3, line: 93, type: !285, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6425)
!6425 = !{!6426, !6427, !6428, !6430}
!6426 = !DILocalVariable(name: "kobj", arg: 1, scope: !6424, file: !3, line: 93, type: !173)
!6427 = !DILocalVariable(name: "cp", scope: !6424, file: !3, line: 95, type: !4955)
!6428 = !DILocalVariable(name: "__mptr", scope: !6429, file: !3, line: 95, type: !172)
!6429 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 95, column: 30)
!6430 = !DILocalVariable(name: "class", scope: !6424, file: !3, line: 96, type: !2900)
!6431 = !DILocation(line: 93, column: 43, scope: !6424)
!6432 = !DILocation(line: 95, column: 2, scope: !6424)
!6433 = !DILocation(line: 95, column: 25, scope: !6424)
!6434 = !DILocation(line: 95, column: 30, scope: !6429)
!6435 = !DILocation(line: 95, column: 30, scope: !6424)
!6436 = !DILocation(line: 96, column: 2, scope: !6424)
!6437 = !DILocation(line: 96, column: 22, scope: !6424)
!6438 = !DILocation(line: 96, column: 30, scope: !6424)
!6439 = !DILocation(line: 96, column: 34, scope: !6424)
!6440 = !DILocation(line: 98, column: 2, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !3, line: 98, column: 2)
!6442 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 98, column: 2)
!6443 = !DILocation(line: 98, column: 2, scope: !6442)
!6444 = !DILocation(line: 100, column: 6, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 100, column: 6)
!6446 = !DILocation(line: 100, column: 13, scope: !6445)
!6447 = !DILocation(line: 100, column: 6, scope: !6424)
!6448 = !DILocation(line: 101, column: 3, scope: !6445)
!6449 = !DILocation(line: 101, column: 10, scope: !6445)
!6450 = !DILocation(line: 101, column: 24, scope: !6445)
!6451 = !DILocation(line: 103, column: 3, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 103, column: 3)
!6453 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 103, column: 3)
!6454 = !DILocation(line: 103, column: 3, scope: !6453)
!6455 = !DILocation(line: 106, column: 26, scope: !6424)
!6456 = !DILocation(line: 106, column: 30, scope: !6424)
!6457 = !DILocation(line: 106, column: 2, scope: !6424)
!6458 = !DILocation(line: 107, column: 8, scope: !6424)
!6459 = !DILocation(line: 107, column: 2, scope: !6424)
!6460 = !DILocation(line: 108, column: 1, scope: !6424)
!6461 = distinct !DISubprogram(name: "class_child_ns_type", scope: !3, file: !3, line: 110, type: !4836, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6462)
!6462 = !{!6463, !6464, !6465, !6467}
!6463 = !DILocalVariable(name: "kobj", arg: 1, scope: !6461, file: !3, line: 110, type: !248)
!6464 = !DILocalVariable(name: "cp", scope: !6461, file: !3, line: 112, type: !5010)
!6465 = !DILocalVariable(name: "__mptr", scope: !6466, file: !3, line: 112, type: !172)
!6466 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 112, column: 36)
!6467 = !DILocalVariable(name: "class", scope: !6461, file: !3, line: 113, type: !2900)
!6468 = !DILocation(line: 110, column: 88, scope: !6461)
!6469 = !DILocation(line: 112, column: 2, scope: !6461)
!6470 = !DILocation(line: 112, column: 31, scope: !6461)
!6471 = !DILocation(line: 112, column: 36, scope: !6466)
!6472 = !DILocation(line: 112, column: 36, scope: !6461)
!6473 = !DILocation(line: 113, column: 2, scope: !6461)
!6474 = !DILocation(line: 113, column: 22, scope: !6461)
!6475 = !DILocation(line: 113, column: 30, scope: !6461)
!6476 = !DILocation(line: 113, column: 34, scope: !6461)
!6477 = !DILocation(line: 115, column: 9, scope: !6461)
!6478 = !DILocation(line: 115, column: 16, scope: !6461)
!6479 = !DILocation(line: 116, column: 1, scope: !6461)
!6480 = !DILocation(line: 115, column: 2, scope: !6461)
!6481 = distinct !DISubprogram(name: "class_attr_show", scope: !3, file: !3, line: 69, type: !295, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6482)
!6482 = !{!6483, !6484, !6485, !6486, !6487, !6489, !6490, !6492}
!6483 = !DILocalVariable(name: "kobj", arg: 1, scope: !6481, file: !3, line: 69, type: !173)
!6484 = !DILocalVariable(name: "attr", arg: 2, scope: !6481, file: !3, line: 69, type: !302)
!6485 = !DILocalVariable(name: "buf", arg: 3, scope: !6481, file: !3, line: 70, type: !265)
!6486 = !DILocalVariable(name: "class_attr", scope: !6481, file: !3, line: 72, type: !5009)
!6487 = !DILocalVariable(name: "__mptr", scope: !6488, file: !3, line: 72, type: !172)
!6488 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 72, column: 39)
!6489 = !DILocalVariable(name: "cp", scope: !6481, file: !3, line: 73, type: !4955)
!6490 = !DILocalVariable(name: "__mptr", scope: !6491, file: !3, line: 73, type: !172)
!6491 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 73, column: 30)
!6492 = !DILocalVariable(name: "ret", scope: !6481, file: !3, line: 74, type: !297)
!6493 = !DILocation(line: 69, column: 48, scope: !6481)
!6494 = !DILocation(line: 69, column: 72, scope: !6481)
!6495 = !DILocation(line: 70, column: 17, scope: !6481)
!6496 = !DILocation(line: 72, column: 2, scope: !6481)
!6497 = !DILocation(line: 72, column: 26, scope: !6481)
!6498 = !DILocation(line: 72, column: 39, scope: !6488)
!6499 = !DILocation(line: 72, column: 39, scope: !6481)
!6500 = !DILocation(line: 73, column: 2, scope: !6481)
!6501 = !DILocation(line: 73, column: 25, scope: !6481)
!6502 = !DILocation(line: 73, column: 30, scope: !6491)
!6503 = !DILocation(line: 73, column: 30, scope: !6481)
!6504 = !DILocation(line: 74, column: 2, scope: !6481)
!6505 = !DILocation(line: 74, column: 10, scope: !6481)
!6506 = !DILocation(line: 76, column: 6, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6481, file: !3, line: 76, column: 6)
!6508 = !DILocation(line: 76, column: 18, scope: !6507)
!6509 = !DILocation(line: 76, column: 6, scope: !6481)
!6510 = !DILocation(line: 77, column: 9, scope: !6507)
!6511 = !DILocation(line: 77, column: 21, scope: !6507)
!6512 = !DILocation(line: 77, column: 26, scope: !6507)
!6513 = !DILocation(line: 77, column: 30, scope: !6507)
!6514 = !DILocation(line: 77, column: 37, scope: !6507)
!6515 = !DILocation(line: 77, column: 49, scope: !6507)
!6516 = !DILocation(line: 77, column: 7, scope: !6507)
!6517 = !DILocation(line: 77, column: 3, scope: !6507)
!6518 = !DILocation(line: 78, column: 9, scope: !6481)
!6519 = !DILocation(line: 79, column: 1, scope: !6481)
!6520 = !DILocation(line: 78, column: 2, scope: !6481)
!6521 = distinct !DISubprogram(name: "class_attr_store", scope: !3, file: !3, line: 81, type: !310, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6522)
!6522 = !{!6523, !6524, !6525, !6526, !6527, !6528, !6530, !6531, !6533}
!6523 = !DILocalVariable(name: "kobj", arg: 1, scope: !6521, file: !3, line: 81, type: !173)
!6524 = !DILocalVariable(name: "attr", arg: 2, scope: !6521, file: !3, line: 81, type: !302)
!6525 = !DILocalVariable(name: "buf", arg: 3, scope: !6521, file: !3, line: 82, type: !178)
!6526 = !DILocalVariable(name: "count", arg: 4, scope: !6521, file: !3, line: 82, type: !312)
!6527 = !DILocalVariable(name: "class_attr", scope: !6521, file: !3, line: 84, type: !5009)
!6528 = !DILocalVariable(name: "__mptr", scope: !6529, file: !3, line: 84, type: !172)
!6529 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 84, column: 39)
!6530 = !DILocalVariable(name: "cp", scope: !6521, file: !3, line: 85, type: !4955)
!6531 = !DILocalVariable(name: "__mptr", scope: !6532, file: !3, line: 85, type: !172)
!6532 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 85, column: 30)
!6533 = !DILocalVariable(name: "ret", scope: !6521, file: !3, line: 86, type: !297)
!6534 = !DILocation(line: 81, column: 49, scope: !6521)
!6535 = !DILocation(line: 81, column: 73, scope: !6521)
!6536 = !DILocation(line: 82, column: 17, scope: !6521)
!6537 = !DILocation(line: 82, column: 29, scope: !6521)
!6538 = !DILocation(line: 84, column: 2, scope: !6521)
!6539 = !DILocation(line: 84, column: 26, scope: !6521)
!6540 = !DILocation(line: 84, column: 39, scope: !6529)
!6541 = !DILocation(line: 84, column: 39, scope: !6521)
!6542 = !DILocation(line: 85, column: 2, scope: !6521)
!6543 = !DILocation(line: 85, column: 25, scope: !6521)
!6544 = !DILocation(line: 85, column: 30, scope: !6532)
!6545 = !DILocation(line: 85, column: 30, scope: !6521)
!6546 = !DILocation(line: 86, column: 2, scope: !6521)
!6547 = !DILocation(line: 86, column: 10, scope: !6521)
!6548 = !DILocation(line: 88, column: 6, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 88, column: 6)
!6550 = !DILocation(line: 88, column: 18, scope: !6549)
!6551 = !DILocation(line: 88, column: 6, scope: !6521)
!6552 = !DILocation(line: 89, column: 9, scope: !6549)
!6553 = !DILocation(line: 89, column: 21, scope: !6549)
!6554 = !DILocation(line: 89, column: 27, scope: !6549)
!6555 = !DILocation(line: 89, column: 31, scope: !6549)
!6556 = !DILocation(line: 89, column: 38, scope: !6549)
!6557 = !DILocation(line: 89, column: 50, scope: !6549)
!6558 = !DILocation(line: 89, column: 55, scope: !6549)
!6559 = !DILocation(line: 89, column: 7, scope: !6549)
!6560 = !DILocation(line: 89, column: 3, scope: !6549)
!6561 = !DILocation(line: 90, column: 9, scope: !6521)
!6562 = !DILocation(line: 91, column: 1, scope: !6521)
!6563 = !DILocation(line: 90, column: 2, scope: !6521)
!6564 = distinct !DISubprogram(name: "__list_add", scope: !5196, file: !5196, line: 146, type: !6565, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6567)
!6565 = !DISubroutineType(types: !6566)
!6566 = !{null, !186, !186, !186}
!6567 = !{!6568, !6569, !6570}
!6568 = !DILocalVariable(name: "new", arg: 1, scope: !6564, file: !5196, line: 146, type: !186)
!6569 = !DILocalVariable(name: "prev", arg: 2, scope: !6564, file: !5196, line: 147, type: !186)
!6570 = !DILocalVariable(name: "next", arg: 3, scope: !6564, file: !5196, line: 148, type: !186)
!6571 = !DILocation(line: 146, column: 49, scope: !6564)
!6572 = !DILocation(line: 147, column: 28, scope: !6564)
!6573 = !DILocation(line: 148, column: 28, scope: !6564)
!6574 = !DILocation(line: 150, column: 24, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6564, file: !5196, line: 150, column: 6)
!6576 = !DILocation(line: 150, column: 29, scope: !6575)
!6577 = !DILocation(line: 150, column: 35, scope: !6575)
!6578 = !DILocation(line: 150, column: 7, scope: !6575)
!6579 = !DILocation(line: 150, column: 6, scope: !6564)
!6580 = !DILocation(line: 151, column: 3, scope: !6575)
!6581 = !DILocation(line: 153, column: 15, scope: !6564)
!6582 = !DILocation(line: 153, column: 2, scope: !6564)
!6583 = !DILocation(line: 153, column: 8, scope: !6564)
!6584 = !DILocation(line: 153, column: 13, scope: !6564)
!6585 = !DILocation(line: 154, column: 14, scope: !6564)
!6586 = !DILocation(line: 154, column: 2, scope: !6564)
!6587 = !DILocation(line: 154, column: 7, scope: !6564)
!6588 = !DILocation(line: 154, column: 12, scope: !6564)
!6589 = !DILocation(line: 155, column: 14, scope: !6564)
!6590 = !DILocation(line: 155, column: 2, scope: !6564)
!6591 = !DILocation(line: 155, column: 7, scope: !6564)
!6592 = !DILocation(line: 155, column: 12, scope: !6564)
!6593 = !DILocation(line: 156, column: 2, scope: !6564)
!6594 = !DILocation(line: 156, column: 2, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6564, file: !5196, line: 156, column: 2)
!6596 = !DILocation(line: 156, column: 2, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6595, file: !5196, line: 156, column: 2)
!6598 = !DILocation(line: 156, column: 2, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6595, file: !5196, line: 156, column: 2)
!6600 = !DILocation(line: 157, column: 1, scope: !6564)
!6601 = distinct !DISubprogram(name: "__list_add_valid", scope: !5196, file: !5196, line: 128, type: !6602, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6604)
!6602 = !DISubroutineType(types: !6603)
!6603 = !{!686, !186, !186, !186}
!6604 = !{!6605, !6606, !6607}
!6605 = !DILocalVariable(name: "new", arg: 1, scope: !6601, file: !5196, line: 128, type: !186)
!6606 = !DILocalVariable(name: "prev", arg: 2, scope: !6601, file: !5196, line: 129, type: !186)
!6607 = !DILocalVariable(name: "next", arg: 3, scope: !6601, file: !5196, line: 130, type: !186)
!6608 = !DILocation(line: 128, column: 55, scope: !6601)
!6609 = !DILocation(line: 129, column: 23, scope: !6601)
!6610 = !DILocation(line: 130, column: 23, scope: !6601)
!6611 = !DILocation(line: 132, column: 2, scope: !6601)
!6612 = distinct !DISubprogram(name: "__list_del_entry", scope: !5196, file: !5196, line: 213, type: !5471, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6613)
!6613 = !{!6614}
!6614 = !DILocalVariable(name: "entry", arg: 1, scope: !6612, file: !5196, line: 213, type: !186)
!6615 = !DILocation(line: 213, column: 55, scope: !6612)
!6616 = !DILocation(line: 215, column: 30, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6612, file: !5196, line: 215, column: 6)
!6618 = !DILocation(line: 215, column: 7, scope: !6617)
!6619 = !DILocation(line: 215, column: 6, scope: !6612)
!6620 = !DILocation(line: 216, column: 3, scope: !6617)
!6621 = !DILocation(line: 218, column: 13, scope: !6612)
!6622 = !DILocation(line: 218, column: 20, scope: !6612)
!6623 = !DILocation(line: 218, column: 26, scope: !6612)
!6624 = !DILocation(line: 218, column: 33, scope: !6612)
!6625 = !DILocation(line: 218, column: 2, scope: !6612)
!6626 = !DILocation(line: 219, column: 1, scope: !6612)
!6627 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5196, file: !5196, line: 134, type: !6628, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6630)
!6628 = !DISubroutineType(types: !6629)
!6629 = !{!686, !186}
!6630 = !{!6631}
!6631 = !DILocalVariable(name: "entry", arg: 1, scope: !6627, file: !5196, line: 134, type: !186)
!6632 = !DILocation(line: 134, column: 61, scope: !6627)
!6633 = !DILocation(line: 136, column: 2, scope: !6627)
!6634 = distinct !DISubprogram(name: "__list_del", scope: !5196, file: !5196, line: 193, type: !6046, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6635)
!6635 = !{!6636, !6637}
!6636 = !DILocalVariable(name: "prev", arg: 1, scope: !6634, file: !5196, line: 193, type: !186)
!6637 = !DILocalVariable(name: "next", arg: 2, scope: !6634, file: !5196, line: 193, type: !186)
!6638 = !DILocation(line: 193, column: 50, scope: !6634)
!6639 = !DILocation(line: 193, column: 75, scope: !6634)
!6640 = !DILocation(line: 195, column: 15, scope: !6634)
!6641 = !DILocation(line: 195, column: 2, scope: !6634)
!6642 = !DILocation(line: 195, column: 8, scope: !6634)
!6643 = !DILocation(line: 195, column: 13, scope: !6634)
!6644 = !DILocation(line: 196, column: 2, scope: !6634)
!6645 = !DILocation(line: 196, column: 2, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6634, file: !5196, line: 196, column: 2)
!6647 = !DILocation(line: 196, column: 2, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6646, file: !5196, line: 196, column: 2)
!6649 = !DILocation(line: 196, column: 2, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6646, file: !5196, line: 196, column: 2)
!6651 = !DILocation(line: 197, column: 1, scope: !6634)
!6652 = !DISubprogram(name: "kmalloc_large", scope: !162, file: !162, line: 531, type: !5430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6653 = distinct !DISubprogram(name: "__kmalloc_index", scope: !162, file: !162, line: 444, type: !6654, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6656)
!6654 = !DISubroutineType(types: !6655)
!6655 = !{!7, !312, !686}
!6656 = !{!6657, !6658}
!6657 = !DILocalVariable(name: "size", arg: 1, scope: !6653, file: !162, line: 444, type: !312)
!6658 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6653, file: !162, line: 445, type: !686)
!6659 = !DILocation(line: 444, column: 60, scope: !6653)
!6660 = !DILocation(line: 445, column: 16, scope: !6653)
!6661 = !DILocation(line: 447, column: 7, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 447, column: 6)
!6663 = !DILocation(line: 447, column: 6, scope: !6653)
!6664 = !DILocation(line: 448, column: 3, scope: !6662)
!6665 = !DILocation(line: 450, column: 6, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 450, column: 6)
!6667 = !DILocation(line: 450, column: 11, scope: !6666)
!6668 = !DILocation(line: 450, column: 6, scope: !6653)
!6669 = !DILocation(line: 451, column: 3, scope: !6666)
!6670 = !DILocation(line: 453, column: 32, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 453, column: 6)
!6672 = !DILocation(line: 453, column: 37, scope: !6671)
!6673 = !DILocation(line: 453, column: 42, scope: !6671)
!6674 = !DILocation(line: 453, column: 45, scope: !6671)
!6675 = !DILocation(line: 453, column: 50, scope: !6671)
!6676 = !DILocation(line: 453, column: 6, scope: !6653)
!6677 = !DILocation(line: 454, column: 3, scope: !6671)
!6678 = !DILocation(line: 455, column: 32, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 455, column: 6)
!6680 = !DILocation(line: 455, column: 37, scope: !6679)
!6681 = !DILocation(line: 455, column: 43, scope: !6679)
!6682 = !DILocation(line: 455, column: 46, scope: !6679)
!6683 = !DILocation(line: 455, column: 51, scope: !6679)
!6684 = !DILocation(line: 455, column: 6, scope: !6653)
!6685 = !DILocation(line: 456, column: 3, scope: !6679)
!6686 = !DILocation(line: 457, column: 6, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 457, column: 6)
!6688 = !DILocation(line: 457, column: 11, scope: !6687)
!6689 = !DILocation(line: 457, column: 6, scope: !6653)
!6690 = !DILocation(line: 457, column: 26, scope: !6687)
!6691 = !DILocation(line: 458, column: 6, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 458, column: 6)
!6693 = !DILocation(line: 458, column: 11, scope: !6692)
!6694 = !DILocation(line: 458, column: 6, scope: !6653)
!6695 = !DILocation(line: 458, column: 26, scope: !6692)
!6696 = !DILocation(line: 459, column: 6, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 459, column: 6)
!6698 = !DILocation(line: 459, column: 11, scope: !6697)
!6699 = !DILocation(line: 459, column: 6, scope: !6653)
!6700 = !DILocation(line: 459, column: 26, scope: !6697)
!6701 = !DILocation(line: 460, column: 6, scope: !6702)
!6702 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 460, column: 6)
!6703 = !DILocation(line: 460, column: 11, scope: !6702)
!6704 = !DILocation(line: 460, column: 6, scope: !6653)
!6705 = !DILocation(line: 460, column: 26, scope: !6702)
!6706 = !DILocation(line: 461, column: 6, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 461, column: 6)
!6708 = !DILocation(line: 461, column: 11, scope: !6707)
!6709 = !DILocation(line: 461, column: 6, scope: !6653)
!6710 = !DILocation(line: 461, column: 26, scope: !6707)
!6711 = !DILocation(line: 462, column: 6, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 462, column: 6)
!6713 = !DILocation(line: 462, column: 11, scope: !6712)
!6714 = !DILocation(line: 462, column: 6, scope: !6653)
!6715 = !DILocation(line: 462, column: 26, scope: !6712)
!6716 = !DILocation(line: 463, column: 6, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 463, column: 6)
!6718 = !DILocation(line: 463, column: 11, scope: !6717)
!6719 = !DILocation(line: 463, column: 6, scope: !6653)
!6720 = !DILocation(line: 463, column: 26, scope: !6717)
!6721 = !DILocation(line: 464, column: 6, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 464, column: 6)
!6723 = !DILocation(line: 464, column: 11, scope: !6722)
!6724 = !DILocation(line: 464, column: 6, scope: !6653)
!6725 = !DILocation(line: 464, column: 26, scope: !6722)
!6726 = !DILocation(line: 465, column: 6, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 465, column: 6)
!6728 = !DILocation(line: 465, column: 11, scope: !6727)
!6729 = !DILocation(line: 465, column: 6, scope: !6653)
!6730 = !DILocation(line: 465, column: 26, scope: !6727)
!6731 = !DILocation(line: 466, column: 6, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 466, column: 6)
!6733 = !DILocation(line: 466, column: 11, scope: !6732)
!6734 = !DILocation(line: 466, column: 6, scope: !6653)
!6735 = !DILocation(line: 466, column: 26, scope: !6732)
!6736 = !DILocation(line: 467, column: 6, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 467, column: 6)
!6738 = !DILocation(line: 467, column: 11, scope: !6737)
!6739 = !DILocation(line: 467, column: 6, scope: !6653)
!6740 = !DILocation(line: 467, column: 26, scope: !6737)
!6741 = !DILocation(line: 468, column: 6, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 468, column: 6)
!6743 = !DILocation(line: 468, column: 11, scope: !6742)
!6744 = !DILocation(line: 468, column: 6, scope: !6653)
!6745 = !DILocation(line: 468, column: 26, scope: !6742)
!6746 = !DILocation(line: 469, column: 6, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 469, column: 6)
!6748 = !DILocation(line: 469, column: 11, scope: !6747)
!6749 = !DILocation(line: 469, column: 6, scope: !6653)
!6750 = !DILocation(line: 469, column: 26, scope: !6747)
!6751 = !DILocation(line: 470, column: 6, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 470, column: 6)
!6753 = !DILocation(line: 470, column: 11, scope: !6752)
!6754 = !DILocation(line: 470, column: 6, scope: !6653)
!6755 = !DILocation(line: 470, column: 26, scope: !6752)
!6756 = !DILocation(line: 471, column: 6, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 471, column: 6)
!6758 = !DILocation(line: 471, column: 11, scope: !6757)
!6759 = !DILocation(line: 471, column: 6, scope: !6653)
!6760 = !DILocation(line: 471, column: 26, scope: !6757)
!6761 = !DILocation(line: 472, column: 6, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 472, column: 6)
!6763 = !DILocation(line: 472, column: 11, scope: !6762)
!6764 = !DILocation(line: 472, column: 6, scope: !6653)
!6765 = !DILocation(line: 472, column: 26, scope: !6762)
!6766 = !DILocation(line: 473, column: 6, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 473, column: 6)
!6768 = !DILocation(line: 473, column: 11, scope: !6767)
!6769 = !DILocation(line: 473, column: 6, scope: !6653)
!6770 = !DILocation(line: 473, column: 26, scope: !6767)
!6771 = !DILocation(line: 474, column: 6, scope: !6772)
!6772 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 474, column: 6)
!6773 = !DILocation(line: 474, column: 11, scope: !6772)
!6774 = !DILocation(line: 474, column: 6, scope: !6653)
!6775 = !DILocation(line: 474, column: 27, scope: !6772)
!6776 = !DILocation(line: 475, column: 6, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 475, column: 6)
!6778 = !DILocation(line: 475, column: 11, scope: !6777)
!6779 = !DILocation(line: 475, column: 6, scope: !6653)
!6780 = !DILocation(line: 475, column: 32, scope: !6777)
!6781 = !DILocation(line: 477, column: 50, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6653, file: !162, line: 477, column: 6)
!6783 = !DILocation(line: 477, column: 6, scope: !6653)
!6784 = !DILocation(line: 478, column: 3, scope: !6782)
!6785 = !DILocation(line: 478, column: 3, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6787, file: !162, line: 478, column: 3)
!6787 = distinct !DILexicalBlock(scope: !6782, file: !162, line: 478, column: 3)
!6788 = !{i32 -2142304253}
!6789 = !DILocation(line: 478, column: 3, scope: !6787)
!6790 = !DILocation(line: 480, column: 3, scope: !6782)
!6791 = !DILocation(line: 480, column: 3, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6782, file: !162, line: 480, column: 3)
!6793 = !DILocation(line: 480, column: 3, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6792, file: !162, line: 480, column: 3)
!6795 = !DILocation(line: 480, column: 3, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6792, file: !162, line: 480, column: 3)
!6797 = !{i64 2152663246, i64 2152663275, i64 2152663321, i64 2152663379, i64 2152663433, i64 2152663487, i64 2152663542, i64 2152663573}
!6798 = !DILocation(line: 483, column: 2, scope: !6653)
!6799 = !DILocation(line: 484, column: 1, scope: !6653)
!6800 = !DISubprogram(name: "kmalloc_trace", scope: !162, file: !162, line: 525, type: !6801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{!172, !2329, !1120, !312}
!6803 = distinct !DISubprogram(name: "kmalloc_type", scope: !162, file: !162, line: 401, type: !6804, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6806)
!6804 = !DISubroutineType(types: !6805)
!6805 = !{!161, !1120, !315}
!6806 = !{!6807, !6808}
!6807 = !DILocalVariable(name: "flags", arg: 1, scope: !6803, file: !162, line: 401, type: !1120)
!6808 = !DILocalVariable(name: "caller", arg: 2, scope: !6803, file: !162, line: 401, type: !315)
!6809 = !DILocation(line: 401, column: 67, scope: !6803)
!6810 = !DILocation(line: 401, column: 88, scope: !6803)
!6811 = !DILocation(line: 407, column: 6, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6803, file: !162, line: 407, column: 6)
!6813 = !DILocation(line: 407, column: 6, scope: !6803)
!6814 = !DILocation(line: 413, column: 3, scope: !6812)
!6815 = !DILocation(line: 423, column: 38, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6803, file: !162, line: 423, column: 6)
!6817 = !DILocation(line: 423, column: 44, scope: !6816)
!6818 = !DILocation(line: 423, column: 6, scope: !6803)
!6819 = !DILocation(line: 424, column: 3, scope: !6816)
!6820 = !DILocation(line: 426, column: 3, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6803, file: !162, line: 425, column: 6)
!6822 = !DILocation(line: 429, column: 1, scope: !6803)
!6823 = !DISubprogram(name: "__kmalloc", scope: !162, file: !162, line: 488, type: !5430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6824 = !DISubprogram(name: "__compiletime_assert_204", scope: !162, file: !162, line: 478, type: !971, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6825 = distinct !DISubprogram(name: "kobject_name", scope: !175, file: !175, line: 87, type: !253, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6826)
!6826 = !{!6827}
!6827 = !DILocalVariable(name: "kobj", arg: 1, scope: !6825, file: !175, line: 87, type: !248)
!6828 = !DILocation(line: 87, column: 62, scope: !6825)
!6829 = !DILocation(line: 89, column: 9, scope: !6825)
!6830 = !DILocation(line: 89, column: 15, scope: !6825)
!6831 = !DILocation(line: 89, column: 2, scope: !6825)
