; ModuleID = 'drivers/input/serio/serio.c'
source_filename = "drivers/input/serio/serio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_rescan: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_rescan ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_reconnect: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_reconnect ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___serio_register_port: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __serio_register_port ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_unregister_port: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_unregister_port ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_unregister_child_port: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_unregister_child_port ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___serio_register_driver: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __serio_register_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_unregister_driver: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_unregister_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_open: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_open ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_close: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_close ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_interrupt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_interrupt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_serio_bus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad serio_bus ; .previous"
module asm ".section\09\22.initcall4.init..kmod_serio__220_1048_serio_init\22, \22a\22\09\09"
module asm "__initcall__kmod_serio__220_1048_serio_init4:\09\09\09"
module asm ".long\09__initstub__kmod_serio__220_1048_serio_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.serio_event = type { i32, ptr, ptr, %struct.list_head }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author205 = internal constant [45 x i8] c"serio.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description206 = internal constant [41 x i8] c"serio.description=Serio abstraction core\00", section ".modinfo", align 1, !dbg !1709
@__UNIQUE_ID_file207 = internal constant [37 x i8] c"serio.file=drivers/input/serio/serio\00", section ".modinfo", align 1, !dbg !1714
@__UNIQUE_ID_license208 = internal constant [18 x i8] c"serio.license=GPL\00", section ".modinfo", align 1, !dbg !1719
@__UNIQUE_ID___addressable_serio_rescan209 = internal global ptr @serio_rescan, section ".discard.addressable", align 8, !dbg !1724
@__UNIQUE_ID___addressable_serio_reconnect210 = internal global ptr @serio_reconnect, section ".discard.addressable", align 8, !dbg !1726
@__UNIQUE_ID___addressable___serio_register_port211 = internal global ptr @__serio_register_port, section ".discard.addressable", align 8, !dbg !1728
@serio_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @serio_mutex, i64 16), ptr getelementptr (i8, ptr @serio_mutex, i64 16) } }, align 8, !dbg !1890
@__UNIQUE_ID___addressable_serio_unregister_port212 = internal global ptr @serio_unregister_port, section ".discard.addressable", align 8, !dbg !1730
@__UNIQUE_ID___addressable_serio_unregister_child_port213 = internal global ptr @serio_unregister_child_port, section ".discard.addressable", align 8, !dbg !1732
@serio_bus = hidden global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr @serio_driver_groups, ptr @serio_bus_match, ptr @serio_uevent, ptr @serio_driver_probe, ptr null, ptr @serio_driver_remove, ptr @serio_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serio_pm_ops, ptr null, i8 0 }, align 8, !dbg !1754
@.str = private unnamed_addr constant [53 x i8] c"\013serio: driver_register() failed for %s, error: %d\0A\00", align 1, !dbg !1734
@__UNIQUE_ID___addressable___serio_register_driver214 = internal global ptr @__serio_register_driver, section ".discard.addressable", align 8, !dbg !1739
@serio_list = internal global %struct.list_head { ptr @serio_list, ptr @serio_list }, align 8, !dbg !1892
@__UNIQUE_ID___addressable_serio_unregister_driver215 = internal global ptr @serio_unregister_driver, section ".discard.addressable", align 8, !dbg !1741
@__UNIQUE_ID___addressable_serio_open216 = internal global ptr @serio_open, section ".discard.addressable", align 8, !dbg !1743
@__UNIQUE_ID___addressable_serio_close217 = internal global ptr @serio_close, section ".discard.addressable", align 8, !dbg !1745
@__UNIQUE_ID___addressable_serio_interrupt218 = internal global ptr @serio_interrupt, section ".discard.addressable", align 8, !dbg !1747
@.str.1 = private unnamed_addr constant [6 x i8] c"serio\00", align 1, !dbg !1749
@serio_driver_groups = internal global [2 x ptr] [ptr @serio_driver_group, ptr null], align 16, !dbg !1899
@serio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @serio_suspend, ptr @serio_resume, ptr null, ptr null, ptr @serio_suspend, ptr @serio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1946
@__UNIQUE_ID___addressable_serio_bus219 = internal global ptr @serio_bus, section ".discard.addressable", align 8, !dbg !1756
@serio_event_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @serio_event_work, i64 8), ptr getelementptr (i8, ptr @serio_event_work, i64 8) }, ptr @serio_handle_event }, align 8, !dbg !1951
@__UNIQUE_ID___addressable___initstub__kmod_serio__220_1048_serio_init4221 = internal global ptr @__initstub__kmod_serio__220_1048_serio_init4, section ".discard.addressable", align 8, !dbg !1758
@__exitcall_serio_exit = internal global ptr @serio_exit, section ".exitcall.exit", align 8, !dbg !1760
@serio_event_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !1771
@serio_event_list = internal global %struct.list_head { ptr @serio_event_list, ptr @serio_event_list }, align 8, !dbg !1773
@.str.2 = private unnamed_addr constant [46 x i8] c"\013serio: Not enough memory to queue event %d\0A\00", align 1, !dbg !1764
@.str.3 = private unnamed_addr constant [56 x i8] c"\014serio: Can't get module reference, dropping event %d\0A\00", align 1, !dbg !1769
@system_long_wq = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1775
@serio_init_port.serio_no = internal global %struct.atomic_t { i32 -1 }, align 4, !dbg !1780
@serio_init_port.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1785
@.str.5 = private unnamed_addr constant [18 x i8] c"&serio->drv_mutex\00", align 1, !dbg !1788
@.str.6 = private unnamed_addr constant [9 x i8] c"serio%lu\00", align 1, !dbg !1791
@serio_device_attr_groups = internal global [3 x ptr] [ptr @serio_id_attr_group, ptr @serio_device_attr_group, ptr null], align 16, !dbg !1796
@serio_id_attr_group = internal constant %struct.attribute_group { ptr @.str.7, ptr null, ptr null, ptr @serio_device_id_attrs, ptr null }, align 8, !dbg !1802
@serio_device_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serio_device_attrs, ptr null }, align 8, !dbg !1838
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !1799
@serio_device_id_attrs = internal global [5 x ptr] [ptr @dev_attr_type, ptr @dev_attr_proto, ptr @dev_attr_id, ptr @dev_attr_extra, ptr null], align 16, !dbg !1804
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !1812
@dev_attr_proto = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @proto_show, ptr null }, align 8, !dbg !1830
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @id_show, ptr null }, align 8, !dbg !1832
@dev_attr_extra = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @extra_show, ptr null }, align 8, !dbg !1836
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !1809
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1, !dbg !1826
@.str.10 = private unnamed_addr constant [6 x i8] c"proto\00", align 1, !dbg !1828
@.str.11 = private unnamed_addr constant [6 x i8] c"extra\00", align 1, !dbg !1834
@serio_device_attrs = internal global [6 x ptr] [ptr @dev_attr_modalias, ptr @dev_attr_description, ptr @dev_attr_drvctl, ptr @dev_attr_bind_mode, ptr @dev_attr_firmware_id, ptr null], align 16, !dbg !1840
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @modalias_show, ptr null }, align 8, !dbg !1845
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @serio_show_description, ptr null }, align 8, !dbg !1854
@dev_attr_drvctl = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 128 }, ptr null, ptr @drvctl_store }, align 8, !dbg !1862
@dev_attr_bind_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @serio_show_bind_mode, ptr @serio_set_bind_mode }, align 8, !dbg !1880
@dev_attr_firmware_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @firmware_id_show, ptr null }, align 8, !dbg !1888
@.str.12 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1, !dbg !1843
@.str.13 = private unnamed_addr constant [32 x i8] c"serio:ty%02Xpr%02Xid%02Xex%02X\0A\00", align 1, !dbg !1847
@.str.14 = private unnamed_addr constant [12 x i8] c"description\00", align 1, !dbg !1849
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1856
@.str.16 = private unnamed_addr constant [7 x i8] c"drvctl\00", align 1, !dbg !1859
@.str.17 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !1864
@.str.18 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1, !dbg !1866
@.str.19 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1, !dbg !1871
@.str.20 = private unnamed_addr constant [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", align 1, !dbg !1873
@.str.21 = private unnamed_addr constant [10 x i8] c"bind_mode\00", align 1, !dbg !1878
@.str.22 = private unnamed_addr constant [7 x i8] c"manual\00", align 1, !dbg !1882
@.str.23 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !1884
@.str.24 = private unnamed_addr constant [12 x i8] c"firmware_id\00", align 1, !dbg !1886
@.str.25 = private unnamed_addr constant [47 x i8] c"device_attach() failed for %s (%s), error: %d\0A\00", align 1, !dbg !1894
@serio_driver_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @serio_driver_attrs, ptr null }, align 8, !dbg !1902
@serio_driver_attrs = internal global [3 x ptr] [ptr @driver_attr_description, ptr @driver_attr_bind_mode, ptr null], align 16, !dbg !1904
@driver_attr_description = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @description_show, ptr null }, align 8, !dbg !1907
@driver_attr_bind_mode = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @bind_mode_show, ptr @bind_mode_store }, align 8, !dbg !1922
@.str.26 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1, !dbg !1920
@.str.27 = private unnamed_addr constant [16 x i8] c"SERIO_TYPE=%02x\00", align 1, !dbg !1924
@.str.28 = private unnamed_addr constant [17 x i8] c"SERIO_PROTO=%02x\00", align 1, !dbg !1927
@.str.29 = private unnamed_addr constant [14 x i8] c"SERIO_ID=%02x\00", align 1, !dbg !1932
@.str.30 = private unnamed_addr constant [17 x i8] c"SERIO_EXTRA=%02x\00", align 1, !dbg !1937
@.str.31 = private unnamed_addr constant [40 x i8] c"MODALIAS=serio:ty%02Xpr%02Xid%02Xex%02X\00", align 1, !dbg !1939
@.str.32 = private unnamed_addr constant [21 x i8] c"SERIO_FIRMWARE_ID=%s\00", align 1, !dbg !1944
@.str.33 = private unnamed_addr constant [37 x i8] c"fast reconnect failed with error %d\0A\00", align 1, !dbg !1948
@.str.34 = private unnamed_addr constant [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", align 1, !dbg !1953
@.str.35 = private unnamed_addr constant [54 x i8] c"\014serio: driver_attach() failed for %s with error %d\0A\00", align 1, !dbg !1958
@.str.36 = private unnamed_addr constant [50 x i8] c"\013serio: Failed to register serio bus, error: %d\0A\00", align 1, !dbg !1963
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author205, ptr @__UNIQUE_ID_description206, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__UNIQUE_ID___addressable_serio_rescan209, ptr @__UNIQUE_ID___addressable_serio_reconnect210, ptr @__UNIQUE_ID___addressable___serio_register_port211, ptr @__UNIQUE_ID___addressable_serio_unregister_port212, ptr @__UNIQUE_ID___addressable_serio_unregister_child_port213, ptr @__UNIQUE_ID___addressable___serio_register_driver214, ptr @__UNIQUE_ID___addressable_serio_unregister_driver215, ptr @__UNIQUE_ID___addressable_serio_open216, ptr @__UNIQUE_ID___addressable_serio_close217, ptr @__UNIQUE_ID___addressable_serio_interrupt218, ptr @__UNIQUE_ID___addressable_serio_bus219, ptr @serio_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_serio__220_1048_serio_init4221, ptr @__exitcall_serio_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serio_rescan(ptr noundef %serio) #0 align 16 !dbg !1980 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !1982, metadata !DIExpression()), !dbg !1983
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !1984
  %call = call i32 @serio_queue_event(ptr noundef %0, ptr noundef null, i32 noundef 0) #15, !dbg !1985
  ret void, !dbg !1986
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_queue_event(ptr noundef %object, ptr noundef %owner, i32 noundef %event_type) #0 align 16 !dbg !1987 {
entry:
  %object.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %event_type.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %event = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %tmp25 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1991, metadata !DIExpression()), !dbg !2009
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !1992, metadata !DIExpression()), !dbg !2010
  store i32 %event_type, ptr %event_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event_type.addr, metadata !1993, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1994, metadata !DIExpression()), !dbg !2013
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #16, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %event, metadata !1995, metadata !DIExpression()), !dbg !2015
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1996, metadata !DIExpression()), !dbg !2017
  store i32 0, ptr %retval1, align 4, !dbg !2017
  br label %do.body, !dbg !2018

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2019

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !2020
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1997, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !2020
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2001, metadata !DIExpression()), !dbg !2020
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2020
  %conv = zext i1 %cmp to i32, !dbg !2020
  store i32 1, ptr %tmp, align 4, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !2021
  %0 = load i32, ptr %tmp, align 4, !dbg !2020
  %call = call ptr @spinlock_check(ptr noundef @serio_event_lock) #15, !dbg !2021
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !2021
  store i64 %call3, ptr %flags, align 8, !dbg !2021
  br label %do.cond, !dbg !2021

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2021

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !2019

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2019

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2002, metadata !DIExpression()), !dbg !2022
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @serio_event_list, i32 0, i32 1), align 8, !dbg !2022
  store ptr %1, ptr %__mptr, align 8, !dbg !2022
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2022
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !2022
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !2022
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2023
  %3 = load ptr, ptr %tmp6, align 8, !dbg !2022
  store ptr %3, ptr %event, align 8, !dbg !2023
  br label %for.cond, !dbg !2023

for.cond:                                         ; preds = %for.inc, %do.end5
  %4 = load ptr, ptr %event, align 8, !dbg !2024
  %node = getelementptr inbounds %struct.serio_event, ptr %4, i32 0, i32 3, !dbg !2024
  %cmp7 = icmp eq ptr %node, @serio_event_list, !dbg !2024
  %lnot = xor i1 %cmp7, true, !dbg !2024
  br i1 %lnot, label %for.body, label %for.end, !dbg !2023

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %event, align 8, !dbg !2025
  %object9 = getelementptr inbounds %struct.serio_event, ptr %5, i32 0, i32 1, !dbg !2028
  %6 = load ptr, ptr %object9, align 8, !dbg !2028
  %7 = load ptr, ptr %object.addr, align 8, !dbg !2029
  %cmp10 = icmp eq ptr %6, %7, !dbg !2030
  br i1 %cmp10, label %if.then, label %if.end15, !dbg !2031

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %event, align 8, !dbg !2032
  %type = getelementptr inbounds %struct.serio_event, ptr %8, i32 0, i32 0, !dbg !2035
  %9 = load i32, ptr %type, align 8, !dbg !2035
  %10 = load i32, ptr %event_type.addr, align 4, !dbg !2036
  %cmp12 = icmp eq i32 %9, %10, !dbg !2037
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !2038

if.then14:                                        ; preds = %if.then
  br label %out, !dbg !2039

if.end:                                           ; preds = %if.then
  br label %for.end, !dbg !2040

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !2041

for.inc:                                          ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #16, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !2005, metadata !DIExpression()), !dbg !2042
  %11 = load ptr, ptr %event, align 8, !dbg !2042
  %node17 = getelementptr inbounds %struct.serio_event, ptr %11, i32 0, i32 3, !dbg !2042
  %prev = getelementptr inbounds %struct.list_head, ptr %node17, i32 0, i32 1, !dbg !2042
  %12 = load ptr, ptr %prev, align 8, !dbg !2042
  store ptr %12, ptr %__mptr16, align 8, !dbg !2042
  %13 = load ptr, ptr %__mptr16, align 8, !dbg !2042
  %add.ptr19 = getelementptr i8, ptr %13, i64 -24, !dbg !2042
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !2042
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #16, !dbg !2024
  %14 = load ptr, ptr %tmp18, align 8, !dbg !2042
  store ptr %14, ptr %event, align 8, !dbg !2024
  br label %for.cond, !dbg !2024, !llvm.loop !2043

for.end:                                          ; preds = %if.end, %for.cond
  %call20 = call noalias ptr @kmalloc(i64 noundef 40, i32 noundef 2080) #17, !dbg !2047
  store ptr %call20, ptr %event, align 8, !dbg !2048
  %15 = load ptr, ptr %event, align 8, !dbg !2049
  %tobool = icmp ne ptr %15, null, !dbg !2049
  br i1 %tobool, label %if.end27, label %if.then21, !dbg !2051

if.then21:                                        ; preds = %for.end
  br label %do.body22, !dbg !2052

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !2055

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2055

do.end24:                                         ; preds = %do.cond23
  %16 = load i32, ptr %event_type.addr, align 4, !dbg !2052
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %16) #18, !dbg !2052
  store i32 %call26, ptr %tmp25, align 4, !dbg !2055
  %17 = load i32, ptr %tmp25, align 4, !dbg !2052
  store i32 -12, ptr %retval1, align 4, !dbg !2057
  br label %out, !dbg !2058

if.end27:                                         ; preds = %for.end
  %18 = load ptr, ptr %owner.addr, align 8, !dbg !2059
  %call28 = call zeroext i1 @try_module_get(ptr noundef %18) #15, !dbg !2061
  br i1 %call28, label %if.end35, label %if.then29, !dbg !2062

if.then29:                                        ; preds = %if.end27
  br label %do.body30, !dbg !2063

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !2066

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !2066

do.end32:                                         ; preds = %do.cond31
  %19 = load i32, ptr %event_type.addr, align 4, !dbg !2063
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %19) #18, !dbg !2063
  store i32 %call34, ptr %tmp33, align 4, !dbg !2066
  %20 = load i32, ptr %tmp33, align 4, !dbg !2063
  %21 = load ptr, ptr %event, align 8, !dbg !2068
  call void @kfree(ptr noundef %21) #15, !dbg !2069
  store i32 -22, ptr %retval1, align 4, !dbg !2070
  br label %out, !dbg !2071

if.end35:                                         ; preds = %if.end27
  %22 = load i32, ptr %event_type.addr, align 4, !dbg !2072
  %23 = load ptr, ptr %event, align 8, !dbg !2073
  %type36 = getelementptr inbounds %struct.serio_event, ptr %23, i32 0, i32 0, !dbg !2074
  store i32 %22, ptr %type36, align 8, !dbg !2075
  %24 = load ptr, ptr %object.addr, align 8, !dbg !2076
  %25 = load ptr, ptr %event, align 8, !dbg !2077
  %object37 = getelementptr inbounds %struct.serio_event, ptr %25, i32 0, i32 1, !dbg !2078
  store ptr %24, ptr %object37, align 8, !dbg !2079
  %26 = load ptr, ptr %owner.addr, align 8, !dbg !2080
  %27 = load ptr, ptr %event, align 8, !dbg !2081
  %owner38 = getelementptr inbounds %struct.serio_event, ptr %27, i32 0, i32 2, !dbg !2082
  store ptr %26, ptr %owner38, align 8, !dbg !2083
  %28 = load ptr, ptr %event, align 8, !dbg !2084
  %node39 = getelementptr inbounds %struct.serio_event, ptr %28, i32 0, i32 3, !dbg !2085
  call void @list_add_tail(ptr noundef %node39, ptr noundef @serio_event_list) #15, !dbg !2086
  %29 = load ptr, ptr @system_long_wq, align 8, !dbg !2087
  %call40 = call zeroext i1 @queue_work(ptr noundef %29, ptr noundef @serio_event_work) #15, !dbg !2088
  br label %out, !dbg !2088

out:                                              ; preds = %if.end35, %do.end32, %do.end24, %if.then14
  call void @llvm.dbg.label(metadata !2008), !dbg !2089
  %30 = load i64, ptr %flags, align 8, !dbg !2090
  call void @spin_unlock_irqrestore(ptr noundef @serio_event_lock, i64 noundef %30) #15, !dbg !2091
  %31 = load i32, ptr %retval1, align 4, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #16, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !2093
  ret i32 %31, !dbg !2094
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serio_reconnect(ptr noundef %serio) #0 align 16 !dbg !2095 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2097, metadata !DIExpression()), !dbg !2098
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2099
  %call = call i32 @serio_queue_event(ptr noundef %0, ptr noundef null, i32 noundef 2) #15, !dbg !2100
  ret void, !dbg !2101
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__serio_register_port(ptr noundef %serio, ptr noundef %owner) #0 align 16 !dbg !2102 {
entry:
  %serio.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2106, metadata !DIExpression()), !dbg !2108
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !2107, metadata !DIExpression()), !dbg !2109
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2110
  call void @serio_init_port(ptr noundef %0) #15, !dbg !2111
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !2112
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !2113
  %call = call i32 @serio_queue_event(ptr noundef %1, ptr noundef %2, i32 noundef 3) #15, !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_init_port(ptr noundef %serio) #0 align 16 !dbg !1782 {
entry:
  %serio.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !1784, metadata !DIExpression()), !dbg !2116
  call void @__module_get(ptr noundef null) #15, !dbg !2117
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2118
  %node = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 19, !dbg !2119
  call void @INIT_LIST_HEAD(ptr noundef %node) #15, !dbg !2120
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !2121
  %child_node = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 13, !dbg !2122
  call void @INIT_LIST_HEAD(ptr noundef %child_node) #15, !dbg !2123
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !2124
  %children = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 14, !dbg !2125
  call void @INIT_LIST_HEAD(ptr noundef %children) #15, !dbg !2126
  br label %do.body, !dbg !2127

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !2128
  %lock = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6, !dbg !2128
  %call = call ptr @spinlock_check(ptr noundef %lock) #15, !dbg !2128
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !2128
  %lock1 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 6, !dbg !2128
  %5 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2128
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %5, i32 0, i32 0, !dbg !2128
  %6 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2128
  %counter = getelementptr inbounds %struct.atomic_t, ptr %6, i32 0, i32 0, !dbg !2128
  store i32 0, ptr %counter, align 4, !dbg !2128
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2128
  br label %do.end, !dbg !2128

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !2130

do.body2:                                         ; preds = %do.end
  %7 = load ptr, ptr %serio.addr, align 8, !dbg !2131
  %drv_mutex = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 17, !dbg !2131
  call void @__mutex_init(ptr noundef %drv_mutex, ptr noundef @.str.5, ptr noundef @serio_init_port.__key) #15, !dbg !2131
  br label %do.end3, !dbg !2131

do.end3:                                          ; preds = %do.body2
  %8 = load ptr, ptr %serio.addr, align 8, !dbg !2133
  %dev = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18, !dbg !2134
  call void @device_initialize(ptr noundef %dev) #15, !dbg !2135
  %9 = load ptr, ptr %serio.addr, align 8, !dbg !2136
  %dev4 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18, !dbg !2137
  %call5 = call i32 @atomic_inc_return(ptr noundef @serio_init_port.serio_no) #15, !dbg !2138
  %conv = sext i32 %call5 to i64, !dbg !2139
  %call6 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev4, ptr noundef @.str.6, i64 noundef %conv) #15, !dbg !2140
  %10 = load ptr, ptr %serio.addr, align 8, !dbg !2141
  %dev7 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, !dbg !2142
  %bus = getelementptr inbounds %struct.device, ptr %dev7, i32 0, i32 5, !dbg !2143
  store ptr @serio_bus, ptr %bus, align 8, !dbg !2144
  %11 = load ptr, ptr %serio.addr, align 8, !dbg !2145
  %dev8 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18, !dbg !2146
  %release = getelementptr inbounds %struct.device, ptr %dev8, i32 0, i32 32, !dbg !2147
  store ptr @serio_release_port, ptr %release, align 8, !dbg !2148
  %12 = load ptr, ptr %serio.addr, align 8, !dbg !2149
  %dev9 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18, !dbg !2150
  %groups = getelementptr inbounds %struct.device, ptr %dev9, i32 0, i32 31, !dbg !2151
  store ptr @serio_device_attr_groups, ptr %groups, align 8, !dbg !2152
  %13 = load ptr, ptr %serio.addr, align 8, !dbg !2153
  %parent = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 12, !dbg !2155
  %14 = load ptr, ptr %parent, align 8, !dbg !2155
  %tobool = icmp ne ptr %14, null, !dbg !2153
  br i1 %tobool, label %if.then, label %if.else, !dbg !2156

if.then:                                          ; preds = %do.end3
  %15 = load ptr, ptr %serio.addr, align 8, !dbg !2157
  %parent10 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 12, !dbg !2159
  %16 = load ptr, ptr %parent10, align 8, !dbg !2159
  %dev11 = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 18, !dbg !2160
  %17 = load ptr, ptr %serio.addr, align 8, !dbg !2161
  %dev12 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18, !dbg !2162
  %parent13 = getelementptr inbounds %struct.device, ptr %dev12, i32 0, i32 1, !dbg !2163
  store ptr %dev11, ptr %parent13, align 8, !dbg !2164
  %18 = load ptr, ptr %serio.addr, align 8, !dbg !2165
  %parent14 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 12, !dbg !2166
  %19 = load ptr, ptr %parent14, align 8, !dbg !2166
  %depth = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 15, !dbg !2167
  %20 = load i32, ptr %depth, align 8, !dbg !2167
  %add = add i32 %20, 1, !dbg !2168
  %21 = load ptr, ptr %serio.addr, align 8, !dbg !2169
  %depth15 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 15, !dbg !2170
  store i32 %add, ptr %depth15, align 8, !dbg !2171
  br label %if.end, !dbg !2172

if.else:                                          ; preds = %do.end3
  %22 = load ptr, ptr %serio.addr, align 8, !dbg !2173
  %depth16 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 15, !dbg !2174
  store i32 0, ptr %depth16, align 8, !dbg !2175
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body17, !dbg !2176

do.body17:                                        ; preds = %if.end
  br label %do.end18, !dbg !2177

do.end18:                                         ; preds = %do.body17
  ret void, !dbg !2179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serio_unregister_port(ptr noundef %serio) #0 align 16 !dbg !2180 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @mutex_lock(ptr noundef @serio_mutex) #15, !dbg !2184
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2185
  call void @serio_disconnect_port(ptr noundef %0) #15, !dbg !2186
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !2187
  call void @serio_destroy_port(ptr noundef %1) #15, !dbg !2188
  call void @mutex_unlock(ptr noundef @serio_mutex) #15, !dbg !2189
  ret void, !dbg !2190
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2191 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_disconnect_port(ptr noundef %serio) #0 align 16 !dbg !2194 {
entry:
  %serio.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2196, metadata !DIExpression()), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %s, metadata !2197, metadata !DIExpression()), !dbg !2206
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2207
  store ptr %0, ptr %s, align 8, !dbg !2206
  br label %while.cond, !dbg !2208

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !2209
  %children = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 14, !dbg !2210
  %call = call i32 @list_empty(ptr noundef %children) #15, !dbg !2211
  %tobool = icmp ne i32 %call, 0, !dbg !2212
  %lnot = xor i1 %tobool, true, !dbg !2212
  br i1 %lnot, label %while.body, label %while.end9, !dbg !2208

while.body:                                       ; preds = %while.cond
  br label %while.cond1, !dbg !2213

while.cond1:                                      ; preds = %while.body6, %while.body
  %2 = load ptr, ptr %s, align 8, !dbg !2214
  %children2 = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 14, !dbg !2215
  %call3 = call i32 @list_empty(ptr noundef %children2) #15, !dbg !2216
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2217
  %lnot5 = xor i1 %tobool4, true, !dbg !2217
  br i1 %lnot5, label %while.body6, label %while.end, !dbg !2213

while.body6:                                      ; preds = %while.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2218
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2198, metadata !DIExpression()), !dbg !2218
  %3 = load ptr, ptr %s, align 8, !dbg !2218
  %children7 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 14, !dbg !2218
  %next = getelementptr inbounds %struct.list_head, ptr %children7, i32 0, i32 0, !dbg !2218
  %4 = load ptr, ptr %next, align 8, !dbg !2218
  store ptr %4, ptr %__mptr, align 8, !dbg !2218
  %5 = load ptr, ptr %__mptr, align 8, !dbg !2218
  %add.ptr = getelementptr i8, ptr %5, i64 -264, !dbg !2218
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2218
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2219
  %6 = load ptr, ptr %tmp, align 8, !dbg !2218
  store ptr %6, ptr %s, align 8, !dbg !2220
  br label %while.cond1, !dbg !2213, !llvm.loop !2221

while.end:                                        ; preds = %while.cond1
  %7 = load ptr, ptr %s, align 8, !dbg !2222
  %8 = load ptr, ptr %serio.addr, align 8, !dbg !2223
  %cmp = icmp ne ptr %7, %8, !dbg !2224
  br i1 %cmp, label %if.then, label %if.end, !dbg !2225

if.then:                                          ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2201, metadata !DIExpression()), !dbg !2227
  %9 = load ptr, ptr %s, align 8, !dbg !2228
  %parent8 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 12, !dbg !2229
  %10 = load ptr, ptr %parent8, align 8, !dbg !2229
  store ptr %10, ptr %parent, align 8, !dbg !2227
  %11 = load ptr, ptr %s, align 8, !dbg !2230
  %dev = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18, !dbg !2231
  call void @device_release_driver(ptr noundef %dev) #15, !dbg !2232
  %12 = load ptr, ptr %s, align 8, !dbg !2233
  call void @serio_destroy_port(ptr noundef %12) #15, !dbg !2234
  %13 = load ptr, ptr %parent, align 8, !dbg !2235
  store ptr %13, ptr %s, align 8, !dbg !2236
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !2237
  br label %if.end, !dbg !2238

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond, !dbg !2208, !llvm.loop !2239

while.end9:                                       ; preds = %while.cond
  %14 = load ptr, ptr %serio.addr, align 8, !dbg !2241
  %dev10 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 18, !dbg !2242
  call void @device_release_driver(ptr noundef %dev10) #15, !dbg !2243
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !2244
  ret void, !dbg !2244
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_destroy_port(ptr noundef %serio) #0 align 16 !dbg !2245 {
entry:
  %serio.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #16, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %child, metadata !2248, metadata !DIExpression()), !dbg !2251
  br label %while.cond, !dbg !2252

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2253
  %call = call ptr @serio_get_pending_child(ptr noundef %0) #15, !dbg !2254
  store ptr %call, ptr %child, align 8, !dbg !2255
  %cmp = icmp ne ptr %call, null, !dbg !2256
  br i1 %cmp, label %while.body, label %while.end, !dbg !2252

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %child, align 8, !dbg !2257
  call void @serio_remove_pending_events(ptr noundef %1) #15, !dbg !2259
  %2 = load ptr, ptr %child, align 8, !dbg !2260
  %dev = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18, !dbg !2261
  call void @put_device(ptr noundef %dev) #15, !dbg !2262
  br label %while.cond, !dbg !2252, !llvm.loop !2263

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !2265
  %stop = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 11, !dbg !2267
  %4 = load ptr, ptr %stop, align 8, !dbg !2267
  %tobool = icmp ne ptr %4, null, !dbg !2265
  br i1 %tobool, label %if.then, label %if.end, !dbg !2268

if.then:                                          ; preds = %while.end
  %5 = load ptr, ptr %serio.addr, align 8, !dbg !2269
  %stop1 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 11, !dbg !2270
  %6 = load ptr, ptr %stop1, align 8, !dbg !2270
  %7 = load ptr, ptr %serio.addr, align 8, !dbg !2271
  call void %6(ptr noundef %7) #15, !dbg !2269
  br label %if.end, !dbg !2269

if.end:                                           ; preds = %if.then, %while.end
  %8 = load ptr, ptr %serio.addr, align 8, !dbg !2272
  %parent = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 12, !dbg !2274
  %9 = load ptr, ptr %parent, align 8, !dbg !2274
  %tobool2 = icmp ne ptr %9, null, !dbg !2272
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !2275

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %serio.addr, align 8, !dbg !2276
  %parent4 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 12, !dbg !2278
  %11 = load ptr, ptr %parent4, align 8, !dbg !2278
  call void @serio_pause_rx(ptr noundef %11) #15, !dbg !2279
  %12 = load ptr, ptr %serio.addr, align 8, !dbg !2280
  %child_node = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 13, !dbg !2281
  call void @list_del_init(ptr noundef %child_node) #15, !dbg !2282
  %13 = load ptr, ptr %serio.addr, align 8, !dbg !2283
  %parent5 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 12, !dbg !2284
  %14 = load ptr, ptr %parent5, align 8, !dbg !2284
  call void @serio_continue_rx(ptr noundef %14) #15, !dbg !2285
  %15 = load ptr, ptr %serio.addr, align 8, !dbg !2286
  %parent6 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 12, !dbg !2287
  store ptr null, ptr %parent6, align 8, !dbg !2288
  br label %if.end7, !dbg !2289

if.end7:                                          ; preds = %if.then3, %if.end
  %16 = load ptr, ptr %serio.addr, align 8, !dbg !2290
  %dev8 = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 18, !dbg !2292
  %call9 = call i32 @device_is_registered(ptr noundef %dev8) #15, !dbg !2293
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2293
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2294

if.then11:                                        ; preds = %if.end7
  %17 = load ptr, ptr %serio.addr, align 8, !dbg !2295
  %dev12 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18, !dbg !2296
  call void @device_del(ptr noundef %dev12) #15, !dbg !2297
  br label %if.end13, !dbg !2297

if.end13:                                         ; preds = %if.then11, %if.end7
  %18 = load ptr, ptr %serio.addr, align 8, !dbg !2298
  %node = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 19, !dbg !2299
  call void @list_del_init(ptr noundef %node) #15, !dbg !2300
  %19 = load ptr, ptr %serio.addr, align 8, !dbg !2301
  call void @serio_remove_pending_events(ptr noundef %19) #15, !dbg !2302
  %20 = load ptr, ptr %serio.addr, align 8, !dbg !2303
  %dev14 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18, !dbg !2304
  call void @put_device(ptr noundef %dev14) #15, !dbg !2305
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #16, !dbg !2306
  ret void, !dbg !2306
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2307 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serio_unregister_child_port(ptr noundef %serio) #0 align 16 !dbg !2308 {
entry:
  %serio.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2310, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %s, metadata !2311, metadata !DIExpression()), !dbg !2323
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2312, metadata !DIExpression()), !dbg !2324
  call void @mutex_lock(ptr noundef @serio_mutex) #15, !dbg !2325
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2313, metadata !DIExpression()), !dbg !2326
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2326
  %children = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 14, !dbg !2326
  %next1 = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !2326
  %1 = load ptr, ptr %next1, align 8, !dbg !2326
  store ptr %1, ptr %__mptr, align 8, !dbg !2326
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2326
  %add.ptr = getelementptr i8, ptr %2, i64 -264, !dbg !2326
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2327
  %3 = load ptr, ptr %tmp, align 8, !dbg !2326
  store ptr %3, ptr %s, align 8, !dbg !2327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2316, metadata !DIExpression()), !dbg !2328
  %4 = load ptr, ptr %s, align 8, !dbg !2328
  %child_node = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 13, !dbg !2328
  %next3 = getelementptr inbounds %struct.list_head, ptr %child_node, i32 0, i32 0, !dbg !2328
  %5 = load ptr, ptr %next3, align 8, !dbg !2328
  store ptr %5, ptr %__mptr2, align 8, !dbg !2328
  %6 = load ptr, ptr %__mptr2, align 8, !dbg !2328
  %add.ptr5 = getelementptr i8, ptr %6, i64 -264, !dbg !2328
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !2327
  %7 = load ptr, ptr %tmp4, align 8, !dbg !2328
  store ptr %7, ptr %next, align 8, !dbg !2327
  br label %for.cond, !dbg !2327

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %s, align 8, !dbg !2329
  %child_node6 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 13, !dbg !2329
  %9 = load ptr, ptr %serio.addr, align 8, !dbg !2329
  %children7 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 14, !dbg !2329
  %cmp = icmp eq ptr %child_node6, %children7, !dbg !2329
  %lnot = xor i1 %cmp, true, !dbg !2329
  br i1 %lnot, label %for.body, label %for.end, !dbg !2327

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %s, align 8, !dbg !2330
  call void @serio_disconnect_port(ptr noundef %10) #15, !dbg !2332
  %11 = load ptr, ptr %s, align 8, !dbg !2333
  call void @serio_destroy_port(ptr noundef %11) #15, !dbg !2334
  br label %for.inc, !dbg !2335

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %next, align 8, !dbg !2329
  store ptr %12, ptr %s, align 8, !dbg !2329
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #16, !dbg !2336
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !2318, metadata !DIExpression()), !dbg !2336
  %13 = load ptr, ptr %next, align 8, !dbg !2336
  %child_node9 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 13, !dbg !2336
  %next10 = getelementptr inbounds %struct.list_head, ptr %child_node9, i32 0, i32 0, !dbg !2336
  %14 = load ptr, ptr %next10, align 8, !dbg !2336
  store ptr %14, ptr %__mptr8, align 8, !dbg !2336
  %15 = load ptr, ptr %__mptr8, align 8, !dbg !2336
  %add.ptr12 = getelementptr i8, ptr %15, i64 -264, !dbg !2336
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !2336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #16, !dbg !2329
  %16 = load ptr, ptr %tmp11, align 8, !dbg !2336
  store ptr %16, ptr %next, align 8, !dbg !2329
  br label %for.cond, !dbg !2329, !llvm.loop !2337

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @serio_mutex) #15, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !2340
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !2340
  ret void, !dbg !2340
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__serio_register_driver(ptr noundef %drv, ptr noundef %owner, ptr noundef %mod_name) #0 align 16 !dbg !2341 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %mod_name.addr = alloca ptr, align 8
  %manual_bind = alloca i8, align 1
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2345, metadata !DIExpression()), !dbg !2350
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !2346, metadata !DIExpression()), !dbg !2351
  store ptr %mod_name, ptr %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod_name.addr, metadata !2347, metadata !DIExpression()), !dbg !2352
  call void @llvm.lifetime.start.p0(i64 1, ptr %manual_bind) #16, !dbg !2353
  call void @llvm.dbg.declare(metadata ptr %manual_bind, metadata !2348, metadata !DIExpression()), !dbg !2354
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2355
  %manual_bind1 = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 2, !dbg !2356
  %1 = load i8, ptr %manual_bind1, align 8, !dbg !2356, !range !2357, !noundef !605
  %tobool = trunc i8 %1 to i1, !dbg !2356
  %frombool = zext i1 %tobool to i8, !dbg !2354
  store i8 %frombool, ptr %manual_bind, align 1, !dbg !2354
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2349, metadata !DIExpression()), !dbg !2359
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !2360
  %driver = getelementptr inbounds %struct.serio_driver, ptr %2, i32 0, i32 10, !dbg !2361
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 1, !dbg !2362
  store ptr @serio_bus, ptr %bus, align 8, !dbg !2363
  %3 = load ptr, ptr %owner.addr, align 8, !dbg !2364
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !2365
  %driver2 = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 10, !dbg !2366
  %owner3 = getelementptr inbounds %struct.device_driver, ptr %driver2, i32 0, i32 2, !dbg !2367
  store ptr %3, ptr %owner3, align 8, !dbg !2368
  %5 = load ptr, ptr %mod_name.addr, align 8, !dbg !2369
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !2370
  %driver4 = getelementptr inbounds %struct.serio_driver, ptr %6, i32 0, i32 10, !dbg !2371
  %mod_name5 = getelementptr inbounds %struct.device_driver, ptr %driver4, i32 0, i32 3, !dbg !2372
  store ptr %5, ptr %mod_name5, align 8, !dbg !2373
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !2374
  %manual_bind6 = getelementptr inbounds %struct.serio_driver, ptr %7, i32 0, i32 2, !dbg !2375
  store i8 1, ptr %manual_bind6, align 8, !dbg !2376
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !2377
  %driver7 = getelementptr inbounds %struct.serio_driver, ptr %8, i32 0, i32 10, !dbg !2378
  %call = call i32 @driver_register(ptr noundef %driver7) #15, !dbg !2379
  store i32 %call, ptr %error, align 4, !dbg !2380
  %9 = load i32, ptr %error, align 4, !dbg !2381
  %tobool8 = icmp ne i32 %9, 0, !dbg !2381
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2383

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2384

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2387

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2387

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %drv.addr, align 8, !dbg !2384
  %driver9 = getelementptr inbounds %struct.serio_driver, ptr %10, i32 0, i32 10, !dbg !2384
  %name = getelementptr inbounds %struct.device_driver, ptr %driver9, i32 0, i32 0, !dbg !2384
  %11 = load ptr, ptr %name, align 8, !dbg !2384
  %12 = load i32, ptr %error, align 4, !dbg !2384
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %11, i32 noundef %12) #18, !dbg !2384
  store i32 %call10, ptr %tmp, align 4, !dbg !2387
  %13 = load i32, ptr %tmp, align 4, !dbg !2384
  %14 = load i32, ptr %error, align 4, !dbg !2389
  store i32 %14, ptr %retval, align 4, !dbg !2390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2390

if.end:                                           ; preds = %entry
  %15 = load i8, ptr %manual_bind, align 1, !dbg !2391, !range !2357, !noundef !605
  %tobool11 = trunc i8 %15 to i1, !dbg !2391
  br i1 %tobool11, label %if.end19, label %if.then12, !dbg !2393

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %drv.addr, align 8, !dbg !2394
  %manual_bind13 = getelementptr inbounds %struct.serio_driver, ptr %16, i32 0, i32 2, !dbg !2396
  store i8 0, ptr %manual_bind13, align 8, !dbg !2397
  %17 = load ptr, ptr %drv.addr, align 8, !dbg !2398
  %call14 = call i32 @serio_queue_event(ptr noundef %17, ptr noundef null, i32 noundef 4) #15, !dbg !2399
  store i32 %call14, ptr %error, align 4, !dbg !2400
  %18 = load i32, ptr %error, align 4, !dbg !2401
  %tobool15 = icmp ne i32 %18, 0, !dbg !2401
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2403

if.then16:                                        ; preds = %if.then12
  %19 = load ptr, ptr %drv.addr, align 8, !dbg !2404
  %driver17 = getelementptr inbounds %struct.serio_driver, ptr %19, i32 0, i32 10, !dbg !2406
  call void @driver_unregister(ptr noundef %driver17) #15, !dbg !2407
  %20 = load i32, ptr %error, align 4, !dbg !2408
  store i32 %20, ptr %retval, align 4, !dbg !2409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2409

if.end18:                                         ; preds = %if.then12
  br label %if.end19, !dbg !2410

if.end19:                                         ; preds = %if.end18, %if.end
  store i32 0, ptr %retval, align 4, !dbg !2411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2411

cleanup:                                          ; preds = %if.end19, %if.then16, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !2412
  call void @llvm.lifetime.end.p0(i64 1, ptr %manual_bind) #16, !dbg !2412
  %21 = load i32, ptr %retval, align 4, !dbg !2412
  ret i32 %21, !dbg !2412
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2413 dso_local i32 @driver_register(ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2416 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2420 dso_local void @driver_unregister(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serio_unregister_driver(ptr noundef %drv) #0 align 16 !dbg !2423 {
entry:
  %drv.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2427, metadata !DIExpression()), !dbg !2436
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !2428, metadata !DIExpression()), !dbg !2438
  call void @mutex_lock(ptr noundef @serio_mutex) #15, !dbg !2439
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2440
  %manual_bind = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 2, !dbg !2441
  store i8 1, ptr %manual_bind, align 8, !dbg !2442
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !2443
  call void @serio_remove_pending_events(ptr noundef %1) #15, !dbg !2444
  br label %start_over, !dbg !2444

start_over:                                       ; preds = %if.then, %entry
  call void @llvm.dbg.label(metadata !2429), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2446
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2430, metadata !DIExpression()), !dbg !2446
  %2 = load ptr, ptr @serio_list, align 8, !dbg !2446
  store ptr %2, ptr %__mptr, align 8, !dbg !2446
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2446
  %add.ptr = getelementptr i8, ptr %3, i64 -1072, !dbg !2446
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2447
  %4 = load ptr, ptr %tmp, align 8, !dbg !2446
  store ptr %4, ptr %serio, align 8, !dbg !2447
  br label %for.cond, !dbg !2447

for.cond:                                         ; preds = %for.inc, %start_over
  %5 = load ptr, ptr %serio, align 8, !dbg !2448
  %node = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 19, !dbg !2448
  %cmp = icmp eq ptr %node, @serio_list, !dbg !2448
  %lnot = xor i1 %cmp, true, !dbg !2448
  br i1 %lnot, label %for.body, label %for.end, !dbg !2447

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %serio, align 8, !dbg !2449
  %drv1 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 16, !dbg !2452
  %7 = load ptr, ptr %drv1, align 8, !dbg !2452
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !2453
  %cmp2 = icmp eq ptr %7, %8, !dbg !2454
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2455

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %serio, align 8, !dbg !2456
  call void @serio_disconnect_port(ptr noundef %9) #15, !dbg !2458
  %10 = load ptr, ptr %serio, align 8, !dbg !2459
  call void @serio_find_driver(ptr noundef %10) #15, !dbg !2460
  br label %start_over, !dbg !2461

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2462

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #16, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !2433, metadata !DIExpression()), !dbg !2463
  %11 = load ptr, ptr %serio, align 8, !dbg !2463
  %node4 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 19, !dbg !2463
  %next = getelementptr inbounds %struct.list_head, ptr %node4, i32 0, i32 0, !dbg !2463
  %12 = load ptr, ptr %next, align 8, !dbg !2463
  store ptr %12, ptr %__mptr3, align 8, !dbg !2463
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !2463
  %add.ptr6 = getelementptr i8, ptr %13, i64 -1072, !dbg !2463
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !2463
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #16, !dbg !2448
  %14 = load ptr, ptr %tmp5, align 8, !dbg !2463
  store ptr %14, ptr %serio, align 8, !dbg !2448
  br label %for.cond, !dbg !2448, !llvm.loop !2464

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %drv.addr, align 8, !dbg !2466
  %driver = getelementptr inbounds %struct.serio_driver, ptr %15, i32 0, i32 10, !dbg !2467
  call void @driver_unregister(ptr noundef %driver) #15, !dbg !2468
  call void @mutex_unlock(ptr noundef @serio_mutex) #15, !dbg !2469
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !2470
  ret void, !dbg !2470
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_remove_pending_events(ptr noundef %object) #0 align 16 !dbg !2471 {
entry:
  %object.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %next = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !2473, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #16, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %event, metadata !2474, metadata !DIExpression()), !dbg !2492
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2475, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2476, metadata !DIExpression()), !dbg !2495
  br label %do.body, !dbg !2496

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2497

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !2498
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2477, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !2498
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2481, metadata !DIExpression()), !dbg !2498
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2498
  %conv = zext i1 %cmp to i32, !dbg !2498
  store i32 1, ptr %tmp, align 4, !dbg !2498
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !2499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !2499
  %0 = load i32, ptr %tmp, align 4, !dbg !2498
  %call = call ptr @spinlock_check(ptr noundef @serio_event_lock) #15, !dbg !2499
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !2499
  store i64 %call2, ptr %flags, align 8, !dbg !2499
  br label %do.cond, !dbg !2499

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2499

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !2497

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2497

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2482, metadata !DIExpression()), !dbg !2500
  %1 = load ptr, ptr @serio_event_list, align 8, !dbg !2500
  store ptr %1, ptr %__mptr, align 8, !dbg !2500
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2500
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !2500
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2501
  %3 = load ptr, ptr %tmp5, align 8, !dbg !2500
  store ptr %3, ptr %event, align 8, !dbg !2501
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !2485, metadata !DIExpression()), !dbg !2502
  %4 = load ptr, ptr %event, align 8, !dbg !2502
  %node = getelementptr inbounds %struct.serio_event, ptr %4, i32 0, i32 3, !dbg !2502
  %next7 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !2502
  %5 = load ptr, ptr %next7, align 8, !dbg !2502
  store ptr %5, ptr %__mptr6, align 8, !dbg !2502
  %6 = load ptr, ptr %__mptr6, align 8, !dbg !2502
  %add.ptr9 = getelementptr i8, ptr %6, i64 -24, !dbg !2502
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !2502
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !2501
  %7 = load ptr, ptr %tmp8, align 8, !dbg !2502
  store ptr %7, ptr %next, align 8, !dbg !2501
  br label %for.cond, !dbg !2501

for.cond:                                         ; preds = %for.inc, %do.end4
  %8 = load ptr, ptr %event, align 8, !dbg !2503
  %node10 = getelementptr inbounds %struct.serio_event, ptr %8, i32 0, i32 3, !dbg !2503
  %cmp11 = icmp eq ptr %node10, @serio_event_list, !dbg !2503
  %lnot = xor i1 %cmp11, true, !dbg !2503
  br i1 %lnot, label %for.body, label %for.end, !dbg !2501

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %event, align 8, !dbg !2504
  %object13 = getelementptr inbounds %struct.serio_event, ptr %9, i32 0, i32 1, !dbg !2507
  %10 = load ptr, ptr %object13, align 8, !dbg !2507
  %11 = load ptr, ptr %object.addr, align 8, !dbg !2508
  %cmp14 = icmp eq ptr %10, %11, !dbg !2509
  br i1 %cmp14, label %if.then, label %if.end, !dbg !2510

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %event, align 8, !dbg !2511
  %node16 = getelementptr inbounds %struct.serio_event, ptr %12, i32 0, i32 3, !dbg !2513
  call void @list_del_init(ptr noundef %node16) #15, !dbg !2514
  %13 = load ptr, ptr %event, align 8, !dbg !2515
  call void @serio_free_event(ptr noundef %13) #15, !dbg !2516
  br label %if.end, !dbg !2517

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2518

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %next, align 8, !dbg !2503
  store ptr %14, ptr %event, align 8, !dbg !2503
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #16, !dbg !2519
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !2487, metadata !DIExpression()), !dbg !2519
  %15 = load ptr, ptr %next, align 8, !dbg !2519
  %node18 = getelementptr inbounds %struct.serio_event, ptr %15, i32 0, i32 3, !dbg !2519
  %next19 = getelementptr inbounds %struct.list_head, ptr %node18, i32 0, i32 0, !dbg !2519
  %16 = load ptr, ptr %next19, align 8, !dbg !2519
  store ptr %16, ptr %__mptr17, align 8, !dbg !2519
  %17 = load ptr, ptr %__mptr17, align 8, !dbg !2519
  %add.ptr21 = getelementptr i8, ptr %17, i64 -24, !dbg !2519
  store ptr %add.ptr21, ptr %tmp20, align 8, !dbg !2519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #16, !dbg !2503
  %18 = load ptr, ptr %tmp20, align 8, !dbg !2519
  store ptr %18, ptr %next, align 8, !dbg !2503
  br label %for.cond, !dbg !2503, !llvm.loop !2520

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %flags, align 8, !dbg !2522
  call void @spin_unlock_irqrestore(ptr noundef @serio_event_lock, i64 noundef %19) #15, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #16, !dbg !2524
  ret void, !dbg !2524
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_find_driver(ptr noundef %serio) #0 align 16 !dbg !2525 {
entry:
  %serio.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !2530
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2528, metadata !DIExpression()), !dbg !2531
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2532
  %dev = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, !dbg !2533
  %call = call i32 @device_attach(ptr noundef %dev) #15, !dbg !2534
  store i32 %call, ptr %error, align 4, !dbg !2535
  %1 = load i32, ptr %error, align 4, !dbg !2536
  %cmp = icmp slt i32 %1, 0, !dbg !2538
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2539

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !2540
  %cmp1 = icmp ne i32 %2, -517, !dbg !2541
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2542

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !2543

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2545

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2545

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !2543
  %dev2 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18, !dbg !2543
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !2543
  %phys = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 2, !dbg !2543
  %arraydecay = getelementptr inbounds [32 x i8], ptr %phys, i64 0, i64 0, !dbg !2543
  %5 = load ptr, ptr %serio.addr, align 8, !dbg !2543
  %name = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 1, !dbg !2543
  %arraydecay3 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !2543
  %6 = load i32, ptr %error, align 4, !dbg !2543
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef @.str.25, ptr noundef %arraydecay, ptr noundef %arraydecay3, i32 noundef %6) #18, !dbg !2543
  br label %if.end, !dbg !2547

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !2548
  ret void, !dbg !2548
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #0 align 16 !dbg !2549 {
entry:
  %retval = alloca i32, align 4
  %serio.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2551, metadata !DIExpression()), !dbg !2553
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2552, metadata !DIExpression()), !dbg !2554
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2555
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !2556
  call void @serio_set_drv(ptr noundef %0, ptr noundef %1) #15, !dbg !2557
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !2558
  %open = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 8, !dbg !2560
  %3 = load ptr, ptr %open, align 8, !dbg !2560
  %tobool = icmp ne ptr %3, null, !dbg !2558
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2561

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !2562
  %open1 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 8, !dbg !2563
  %5 = load ptr, ptr %open1, align 8, !dbg !2563
  %6 = load ptr, ptr %serio.addr, align 8, !dbg !2564
  %call = call i32 %5(ptr noundef %6) #15, !dbg !2562
  %tobool2 = icmp ne i32 %call, 0, !dbg !2562
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2565

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %serio.addr, align 8, !dbg !2566
  call void @serio_set_drv(ptr noundef %7, ptr noundef null) #15, !dbg !2568
  store i32 -1, ptr %retval, align 4, !dbg !2569
  br label %return, !dbg !2569

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !2570
  br label %return, !dbg !2570

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !2571
  ret i32 %8, !dbg !2571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_set_drv(ptr noundef %serio, ptr noundef %drv) #0 align 16 !dbg !2572 {
entry:
  %serio.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2576, metadata !DIExpression()), !dbg !2578
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2577, metadata !DIExpression()), !dbg !2579
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2580
  call void @serio_pause_rx(ptr noundef %0) #15, !dbg !2581
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !2582
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !2583
  %drv1 = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 16, !dbg !2584
  store ptr %1, ptr %drv1, align 8, !dbg !2585
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !2586
  call void @serio_continue_rx(ptr noundef %3) #15, !dbg !2587
  ret void, !dbg !2588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serio_close(ptr noundef %serio) #0 align 16 !dbg !2589 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !2593
  %close = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 9, !dbg !2595
  %1 = load ptr, ptr %close, align 8, !dbg !2595
  %tobool = icmp ne ptr %1, null, !dbg !2593
  br i1 %tobool, label %if.then, label %if.end, !dbg !2596

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !2597
  %close1 = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 9, !dbg !2598
  %3 = load ptr, ptr %close1, align 8, !dbg !2598
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !2599
  call void %3(ptr noundef %4) #15, !dbg !2597
  br label %if.end, !dbg !2597

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %serio.addr, align 8, !dbg !2600
  call void @serio_set_drv(ptr noundef %5, ptr noundef null) #15, !dbg !2601
  ret void, !dbg !2602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @serio_interrupt(ptr noundef %serio, i8 noundef zeroext %data, i32 noundef %dfl) #0 align 16 !dbg !2603 {
entry:
  %serio.addr = alloca ptr, align 8
  %data.addr = alloca i8, align 1
  %dfl.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !2605, metadata !DIExpression()), !dbg !2615
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2606, metadata !DIExpression()), !dbg !2616
  store i32 %dfl, ptr %dfl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dfl.addr, metadata !2607, metadata !DIExpression()), !dbg !2617
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !2618
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2608, metadata !DIExpression()), !dbg !2619
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2609, metadata !DIExpression()), !dbg !2621
  store i32 0, ptr %ret, align 4, !dbg !2621
  br label %do.body, !dbg !2622

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2623

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2610, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2614, metadata !DIExpression()), !dbg !2624
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2624
  %conv = zext i1 %cmp to i32, !dbg !2624
  store i32 1, ptr %tmp, align 4, !dbg !2624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !2625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !2625
  %0 = load i32, ptr %tmp, align 4, !dbg !2624
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !2625
  %lock = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 6, !dbg !2625
  %call = call ptr @spinlock_check(ptr noundef %lock) #15, !dbg !2625
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !2625
  store i64 %call2, ptr %flags, align 8, !dbg !2625
  br label %do.cond, !dbg !2625

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2625

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !2623

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2623

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !2626
  %drv = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 16, !dbg !2626
  %3 = load ptr, ptr %drv, align 8, !dbg !2626
  %tobool = icmp ne ptr %3, null, !dbg !2626
  %lnot = xor i1 %tobool, true, !dbg !2626
  %lnot5 = xor i1 %lnot, true, !dbg !2626
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2626
  %conv6 = sext i32 %lnot.ext to i64, !dbg !2626
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 1), !dbg !2626
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2626
  br i1 %tobool7, label %if.then, label %if.else, !dbg !2628

if.then:                                          ; preds = %do.end4
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !2629
  %drv8 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 16, !dbg !2631
  %5 = load ptr, ptr %drv8, align 8, !dbg !2631
  %interrupt = getelementptr inbounds %struct.serio_driver, ptr %5, i32 0, i32 4, !dbg !2632
  %6 = load ptr, ptr %interrupt, align 8, !dbg !2632
  %7 = load ptr, ptr %serio.addr, align 8, !dbg !2633
  %8 = load i8, ptr %data.addr, align 1, !dbg !2634
  %9 = load i32, ptr %dfl.addr, align 4, !dbg !2635
  %call9 = call i32 %6(ptr noundef %7, i8 noundef zeroext %8, i32 noundef %9) #15, !dbg !2629
  store i32 %call9, ptr %ret, align 4, !dbg !2636
  br label %if.end14, !dbg !2637

if.else:                                          ; preds = %do.end4
  %10 = load i32, ptr %dfl.addr, align 4, !dbg !2638
  %tobool10 = icmp ne i32 %10, 0, !dbg !2638
  br i1 %tobool10, label %if.end, label %land.lhs.true, !dbg !2640

land.lhs.true:                                    ; preds = %if.else
  %11 = load ptr, ptr %serio.addr, align 8, !dbg !2641
  %dev = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18, !dbg !2642
  %call11 = call i32 @device_is_registered(ptr noundef %dev) #15, !dbg !2643
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2643
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !2644

if.then13:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %serio.addr, align 8, !dbg !2645
  call void @serio_rescan(ptr noundef %12) #15, !dbg !2647
  store i32 1, ptr %ret, align 4, !dbg !2648
  br label %if.end, !dbg !2649

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %13 = load ptr, ptr %serio.addr, align 8, !dbg !2650
  %lock15 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 6, !dbg !2651
  %14 = load i64, ptr %flags, align 8, !dbg !2652
  call void @spin_unlock_irqrestore(ptr noundef %lock15, i64 noundef %14) #15, !dbg !2653
  %15 = load i32, ptr %ret, align 4, !dbg !2654
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !2655
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !2655
  ret i32 %15, !dbg !2656
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2657 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !2662 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2668, metadata !DIExpression()), !dbg !2669
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2670
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2671
  ret ptr %1, !dbg !2672
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_is_registered(ptr noundef %dev) #7 align 16 !dbg !2673 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2675, metadata !DIExpression()), !dbg !2676
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2677
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2678
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !2679
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !2679
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !2679
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2679
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2679
  ret i32 %bf.cast, !dbg !2680
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !2681 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2685, metadata !DIExpression()), !dbg !2691
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2686, metadata !DIExpression()), !dbg !2692
  br label %do.body, !dbg !2693

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2687, metadata !DIExpression()), !dbg !2694
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2690, metadata !DIExpression()), !dbg !2694
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2694
  %conv = zext i1 %cmp to i32, !dbg !2694
  store i32 1, ptr %tmp, align 4, !dbg !2694
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !2695
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !2695
  %0 = load i32, ptr %tmp, align 4, !dbg !2694
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2695
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !2695
  %3 = load i64, ptr %flags.addr, align 8, !dbg !2695
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #15, !dbg !2695
  br label %do.end, !dbg !2695

do.end:                                           ; preds = %do.body
  ret void, !dbg !2696
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_bus_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !2697 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %serio_drv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2699, metadata !DIExpression()), !dbg !2707
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2700, metadata !DIExpression()), !dbg !2708
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !2709
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !2701, metadata !DIExpression()), !dbg !2710
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2711
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2702, metadata !DIExpression()), !dbg !2711
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2711
  store ptr %0, ptr %__mptr, align 8, !dbg !2711
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2711
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !2711
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2711
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2712
  %2 = load ptr, ptr %tmp, align 8, !dbg !2711
  store ptr %2, ptr %serio, align 8, !dbg !2710
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio_drv) #16, !dbg !2713
  call void @llvm.dbg.declare(metadata ptr %serio_drv, metadata !2704, metadata !DIExpression()), !dbg !2714
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2705, metadata !DIExpression()), !dbg !2715
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !2715
  store ptr %3, ptr %__mptr1, align 8, !dbg !2715
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !2715
  %add.ptr3 = getelementptr i8, ptr %4, i64 -80, !dbg !2715
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !2716
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2715
  store ptr %5, ptr %serio_drv, align 8, !dbg !2714
  %6 = load ptr, ptr %serio, align 8, !dbg !2717
  %manual_bind = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 4, !dbg !2719
  %7 = load i8, ptr %manual_bind, align 8, !dbg !2719, !range !2357, !noundef !605
  %tobool = trunc i8 %7 to i1, !dbg !2719
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2720

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %serio_drv, align 8, !dbg !2721
  %manual_bind4 = getelementptr inbounds %struct.serio_driver, ptr %8, i32 0, i32 2, !dbg !2722
  %9 = load i8, ptr %manual_bind4, align 8, !dbg !2722, !range !2357, !noundef !605
  %tobool5 = trunc i8 %9 to i1, !dbg !2722
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2723

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2724

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %serio_drv, align 8, !dbg !2725
  %id_table = getelementptr inbounds %struct.serio_driver, ptr %10, i32 0, i32 1, !dbg !2726
  %11 = load ptr, ptr %id_table, align 8, !dbg !2726
  %12 = load ptr, ptr %serio, align 8, !dbg !2727
  %call = call i32 @serio_match_port(ptr noundef %11, ptr noundef %12) #15, !dbg !2728
  store i32 %call, ptr %retval, align 4, !dbg !2729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2729

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio_drv) #16, !dbg !2730
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !2730
  %13 = load i32, ptr %retval, align 4, !dbg !2730
  ret i32 %13, !dbg !2730
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_uevent(ptr noundef %dev, ptr noundef %env) #0 align 16 !dbg !2731 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %err = alloca i32, align 4
  %err5 = alloca i32, align 4
  %err18 = alloca i32, align 4
  %err32 = alloca i32, align 4
  %err45 = alloca i32, align 4
  %err70 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2733, metadata !DIExpression()), !dbg !2753
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !2734, metadata !DIExpression()), !dbg !2754
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !2755
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !2735, metadata !DIExpression()), !dbg !2756
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2757
  %tobool = icmp ne ptr %0, null, !dbg !2757
  br i1 %tobool, label %if.end, label %if.then, !dbg !2759

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !2760

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2761
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2738, metadata !DIExpression()), !dbg !2761
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2761
  store ptr %1, ptr %__mptr, align 8, !dbg !2761
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2761
  %add.ptr = getelementptr i8, ptr %2, i64 -344, !dbg !2761
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2762
  %3 = load ptr, ptr %tmp, align 8, !dbg !2761
  store ptr %3, ptr %serio, align 8, !dbg !2763
  br label %do.body, !dbg !2764

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !2765
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2740, metadata !DIExpression()), !dbg !2765
  %4 = load ptr, ptr %env.addr, align 8, !dbg !2765
  %5 = load ptr, ptr %serio, align 8, !dbg !2765
  %id = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 5, !dbg !2765
  %type = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 0, !dbg !2765
  %6 = load i8, ptr %type, align 1, !dbg !2765
  %conv = zext i8 %6 to i32, !dbg !2765
  %call = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %4, ptr noundef @.str.27, i32 noundef %conv) #15, !dbg !2765
  store i32 %call, ptr %err, align 4, !dbg !2765
  %7 = load i32, ptr %err, align 4, !dbg !2766
  %tobool1 = icmp ne i32 %7, 0, !dbg !2766
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2765

if.then2:                                         ; preds = %do.body
  %8 = load i32, ptr %err, align 4, !dbg !2766
  store i32 %8, ptr %retval, align 4, !dbg !2766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2766

if.end3:                                          ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2764
  br label %cleanup, !dbg !2764

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !2764
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup82 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond, !dbg !2765

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end, !dbg !2765

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !2768

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err5) #16, !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %err5, metadata !2742, metadata !DIExpression()), !dbg !2769
  %9 = load ptr, ptr %env.addr, align 8, !dbg !2769
  %10 = load ptr, ptr %serio, align 8, !dbg !2769
  %id6 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 5, !dbg !2769
  %proto = getelementptr inbounds %struct.serio_device_id, ptr %id6, i32 0, i32 3, !dbg !2769
  %11 = load i8, ptr %proto, align 1, !dbg !2769
  %conv7 = zext i8 %11 to i32, !dbg !2769
  %call8 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %9, ptr noundef @.str.28, i32 noundef %conv7) #15, !dbg !2769
  store i32 %call8, ptr %err5, align 4, !dbg !2769
  %12 = load i32, ptr %err5, align 4, !dbg !2770
  %tobool9 = icmp ne i32 %12, 0, !dbg !2770
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2769

if.then10:                                        ; preds = %do.body4
  %13 = load i32, ptr %err5, align 4, !dbg !2770
  store i32 %13, ptr %retval, align 4, !dbg !2770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !2770

if.end11:                                         ; preds = %do.body4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2768
  br label %cleanup12, !dbg !2768

cleanup12:                                        ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %err5) #16, !dbg !2768
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %cleanup82 [
    i32 0, label %cleanup.cont14
  ]

cleanup.cont14:                                   ; preds = %cleanup12
  br label %do.cond15, !dbg !2769

do.cond15:                                        ; preds = %cleanup.cont14
  br label %do.end16, !dbg !2769

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2772

do.body17:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr %err18) #16, !dbg !2773
  call void @llvm.dbg.declare(metadata ptr %err18, metadata !2744, metadata !DIExpression()), !dbg !2773
  %14 = load ptr, ptr %env.addr, align 8, !dbg !2773
  %15 = load ptr, ptr %serio, align 8, !dbg !2773
  %id19 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 5, !dbg !2773
  %id20 = getelementptr inbounds %struct.serio_device_id, ptr %id19, i32 0, i32 2, !dbg !2773
  %16 = load i8, ptr %id20, align 1, !dbg !2773
  %conv21 = zext i8 %16 to i32, !dbg !2773
  %call22 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %14, ptr noundef @.str.29, i32 noundef %conv21) #15, !dbg !2773
  store i32 %call22, ptr %err18, align 4, !dbg !2773
  %17 = load i32, ptr %err18, align 4, !dbg !2774
  %tobool23 = icmp ne i32 %17, 0, !dbg !2774
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2773

if.then24:                                        ; preds = %do.body17
  %18 = load i32, ptr %err18, align 4, !dbg !2774
  store i32 %18, ptr %retval, align 4, !dbg !2774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !2774

if.end25:                                         ; preds = %do.body17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2772
  br label %cleanup26, !dbg !2772

cleanup26:                                        ; preds = %if.end25, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %err18) #16, !dbg !2772
  %cleanup.dest27 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest27, label %cleanup82 [
    i32 0, label %cleanup.cont28
  ]

cleanup.cont28:                                   ; preds = %cleanup26
  br label %do.cond29, !dbg !2773

do.cond29:                                        ; preds = %cleanup.cont28
  br label %do.end30, !dbg !2773

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !2776

do.body31:                                        ; preds = %do.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr %err32) #16, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %err32, metadata !2746, metadata !DIExpression()), !dbg !2777
  %19 = load ptr, ptr %env.addr, align 8, !dbg !2777
  %20 = load ptr, ptr %serio, align 8, !dbg !2777
  %id33 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 5, !dbg !2777
  %extra = getelementptr inbounds %struct.serio_device_id, ptr %id33, i32 0, i32 1, !dbg !2777
  %21 = load i8, ptr %extra, align 1, !dbg !2777
  %conv34 = zext i8 %21 to i32, !dbg !2777
  %call35 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %19, ptr noundef @.str.30, i32 noundef %conv34) #15, !dbg !2777
  store i32 %call35, ptr %err32, align 4, !dbg !2777
  %22 = load i32, ptr %err32, align 4, !dbg !2778
  %tobool36 = icmp ne i32 %22, 0, !dbg !2778
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !2777

if.then37:                                        ; preds = %do.body31
  %23 = load i32, ptr %err32, align 4, !dbg !2778
  store i32 %23, ptr %retval, align 4, !dbg !2778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !2778

if.end38:                                         ; preds = %do.body31
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2776
  br label %cleanup39, !dbg !2776

cleanup39:                                        ; preds = %if.end38, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr %err32) #16, !dbg !2776
  %cleanup.dest40 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest40, label %cleanup82 [
    i32 0, label %cleanup.cont41
  ]

cleanup.cont41:                                   ; preds = %cleanup39
  br label %do.cond42, !dbg !2777

do.cond42:                                        ; preds = %cleanup.cont41
  br label %do.end43, !dbg !2777

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !2780

do.body44:                                        ; preds = %do.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr %err45) #16, !dbg !2781
  call void @llvm.dbg.declare(metadata ptr %err45, metadata !2748, metadata !DIExpression()), !dbg !2781
  %24 = load ptr, ptr %env.addr, align 8, !dbg !2781
  %25 = load ptr, ptr %serio, align 8, !dbg !2781
  %id46 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 5, !dbg !2781
  %type47 = getelementptr inbounds %struct.serio_device_id, ptr %id46, i32 0, i32 0, !dbg !2781
  %26 = load i8, ptr %type47, align 1, !dbg !2781
  %conv48 = zext i8 %26 to i32, !dbg !2781
  %27 = load ptr, ptr %serio, align 8, !dbg !2781
  %id49 = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 5, !dbg !2781
  %proto50 = getelementptr inbounds %struct.serio_device_id, ptr %id49, i32 0, i32 3, !dbg !2781
  %28 = load i8, ptr %proto50, align 1, !dbg !2781
  %conv51 = zext i8 %28 to i32, !dbg !2781
  %29 = load ptr, ptr %serio, align 8, !dbg !2781
  %id52 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 5, !dbg !2781
  %id53 = getelementptr inbounds %struct.serio_device_id, ptr %id52, i32 0, i32 2, !dbg !2781
  %30 = load i8, ptr %id53, align 1, !dbg !2781
  %conv54 = zext i8 %30 to i32, !dbg !2781
  %31 = load ptr, ptr %serio, align 8, !dbg !2781
  %id55 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 5, !dbg !2781
  %extra56 = getelementptr inbounds %struct.serio_device_id, ptr %id55, i32 0, i32 1, !dbg !2781
  %32 = load i8, ptr %extra56, align 1, !dbg !2781
  %conv57 = zext i8 %32 to i32, !dbg !2781
  %call58 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %24, ptr noundef @.str.31, i32 noundef %conv48, i32 noundef %conv51, i32 noundef %conv54, i32 noundef %conv57) #15, !dbg !2781
  store i32 %call58, ptr %err45, align 4, !dbg !2781
  %33 = load i32, ptr %err45, align 4, !dbg !2782
  %tobool59 = icmp ne i32 %33, 0, !dbg !2782
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !2781

if.then60:                                        ; preds = %do.body44
  %34 = load i32, ptr %err45, align 4, !dbg !2782
  store i32 %34, ptr %retval, align 4, !dbg !2782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62, !dbg !2782

if.end61:                                         ; preds = %do.body44
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2780
  br label %cleanup62, !dbg !2780

cleanup62:                                        ; preds = %if.end61, %if.then60
  call void @llvm.lifetime.end.p0(i64 4, ptr %err45) #16, !dbg !2780
  %cleanup.dest63 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest63, label %cleanup82 [
    i32 0, label %cleanup.cont64
  ]

cleanup.cont64:                                   ; preds = %cleanup62
  br label %do.cond65, !dbg !2781

do.cond65:                                        ; preds = %cleanup.cont64
  br label %do.end66, !dbg !2781

do.end66:                                         ; preds = %do.cond65
  %35 = load ptr, ptr %serio, align 8, !dbg !2784
  %firmware_id = getelementptr inbounds %struct.serio, ptr %35, i32 0, i32 3, !dbg !2785
  %arrayidx = getelementptr [128 x i8], ptr %firmware_id, i64 0, i64 0, !dbg !2784
  %36 = load i8, ptr %arrayidx, align 8, !dbg !2784
  %tobool67 = icmp ne i8 %36, 0, !dbg !2784
  br i1 %tobool67, label %if.then68, label %if.end81, !dbg !2786

if.then68:                                        ; preds = %do.end66
  br label %do.body69, !dbg !2787

do.body69:                                        ; preds = %if.then68
  call void @llvm.lifetime.start.p0(i64 4, ptr %err70) #16, !dbg !2788
  call void @llvm.dbg.declare(metadata ptr %err70, metadata !2750, metadata !DIExpression()), !dbg !2788
  %37 = load ptr, ptr %env.addr, align 8, !dbg !2788
  %38 = load ptr, ptr %serio, align 8, !dbg !2788
  %firmware_id71 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 3, !dbg !2788
  %arraydecay = getelementptr inbounds [128 x i8], ptr %firmware_id71, i64 0, i64 0, !dbg !2788
  %call72 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %37, ptr noundef @.str.32, ptr noundef %arraydecay) #15, !dbg !2788
  store i32 %call72, ptr %err70, align 4, !dbg !2788
  %39 = load i32, ptr %err70, align 4, !dbg !2789
  %tobool73 = icmp ne i32 %39, 0, !dbg !2789
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !2788

if.then74:                                        ; preds = %do.body69
  %40 = load i32, ptr %err70, align 4, !dbg !2789
  store i32 %40, ptr %retval, align 4, !dbg !2789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !2789

if.end75:                                         ; preds = %do.body69
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2787
  br label %cleanup76, !dbg !2787

cleanup76:                                        ; preds = %if.end75, %if.then74
  call void @llvm.lifetime.end.p0(i64 4, ptr %err70) #16, !dbg !2787
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %cleanup82 [
    i32 0, label %cleanup.cont78
  ]

cleanup.cont78:                                   ; preds = %cleanup76
  br label %do.cond79, !dbg !2788

do.cond79:                                        ; preds = %cleanup.cont78
  br label %do.end80, !dbg !2788

do.end80:                                         ; preds = %do.cond79
  br label %if.end81, !dbg !2788

if.end81:                                         ; preds = %do.end80, %do.end66
  store i32 0, ptr %retval, align 4, !dbg !2791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82, !dbg !2791

cleanup82:                                        ; preds = %if.end81, %cleanup76, %cleanup62, %cleanup39, %cleanup26, %cleanup12, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !2792
  %41 = load i32, ptr %retval, align 4, !dbg !2792
  ret i32 %41, !dbg !2792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_driver_probe(ptr noundef %dev) #0 align 16 !dbg !2793 {
entry:
  %dev.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2795, metadata !DIExpression()), !dbg !2802
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !2803
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !2796, metadata !DIExpression()), !dbg !2804
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2805
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2797, metadata !DIExpression()), !dbg !2805
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2805
  store ptr %0, ptr %__mptr, align 8, !dbg !2805
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2805
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !2805
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2805
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2806
  %2 = load ptr, ptr %tmp, align 8, !dbg !2805
  store ptr %2, ptr %serio, align 8, !dbg !2804
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #16, !dbg !2807
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2799, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !2809
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2800, metadata !DIExpression()), !dbg !2809
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2809
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !2809
  %4 = load ptr, ptr %driver, align 8, !dbg !2809
  store ptr %4, ptr %__mptr1, align 8, !dbg !2809
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !2809
  %add.ptr3 = getelementptr i8, ptr %5, i64 -80, !dbg !2809
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !2810
  %6 = load ptr, ptr %tmp2, align 8, !dbg !2809
  store ptr %6, ptr %drv, align 8, !dbg !2808
  %7 = load ptr, ptr %serio, align 8, !dbg !2811
  %8 = load ptr, ptr %drv, align 8, !dbg !2812
  %call = call i32 @serio_connect_driver(ptr noundef %7, ptr noundef %8) #15, !dbg !2813
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #16, !dbg !2814
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !2814
  ret i32 %call, !dbg !2815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_driver_remove(ptr noundef %dev) #0 align 16 !dbg !2816 {
entry:
  %dev.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2818, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !2823
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !2819, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2820, metadata !DIExpression()), !dbg !2825
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2825
  store ptr %0, ptr %__mptr, align 8, !dbg !2825
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2825
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !2825
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2826
  %2 = load ptr, ptr %tmp, align 8, !dbg !2825
  store ptr %2, ptr %serio, align 8, !dbg !2824
  %3 = load ptr, ptr %serio, align 8, !dbg !2827
  call void @serio_disconnect_driver(ptr noundef %3) #15, !dbg !2828
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !2829
  ret void, !dbg !2829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_shutdown(ptr noundef %dev) #0 align 16 !dbg !2830 {
entry:
  %dev.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2832, metadata !DIExpression()), !dbg !2836
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !2837
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !2833, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2834, metadata !DIExpression()), !dbg !2839
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2839
  store ptr %0, ptr %__mptr, align 8, !dbg !2839
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2839
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !2839
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2840
  %2 = load ptr, ptr %tmp, align 8, !dbg !2839
  store ptr %2, ptr %serio, align 8, !dbg !2838
  %3 = load ptr, ptr %serio, align 8, !dbg !2841
  call void @serio_cleanup(ptr noundef %3) #15, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !2843
  ret void, !dbg !2843
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @serio_exit() #8 section ".exit.text" align 16 !dbg !2844 {
entry:
  call void @bus_unregister(ptr noundef @serio_bus) #15, !dbg !2845
  %call = call zeroext i1 @cancel_work_sync(ptr noundef @serio_event_work) #15, !dbg !2846
  ret void, !dbg !2847
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2848 dso_local void @bus_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2851 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_serio__220_1048_serio_init4() #8 section ".init.text" align 16 !dbg !2854 {
entry:
  %call = call i32 @serio_init() #18, !dbg !2855
  ret i32 %call, !dbg !2855
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @serio_init() #8 section ".init.text" align 16 !dbg !2856 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !2859
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2858, metadata !DIExpression()), !dbg !2860
  %call = call i32 @bus_register(ptr noundef @serio_bus) #15, !dbg !2861
  store i32 %call, ptr %error, align 4, !dbg !2862
  %0 = load i32, ptr %error, align 4, !dbg !2863
  %tobool = icmp ne i32 %0, 0, !dbg !2863
  br i1 %tobool, label %if.then, label %if.end, !dbg !2865

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2866

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2869

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2869

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %error, align 4, !dbg !2866
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.36, i32 noundef %1) #18, !dbg !2866
  store i32 %call1, ptr %tmp, align 4, !dbg !2869
  %2 = load i32, ptr %tmp, align 4, !dbg !2866
  %3 = load i32, ptr %error, align 4, !dbg !2871
  store i32 %3, ptr %retval, align 4, !dbg !2872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2872

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2873

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !2874
  %4 = load i32, ptr %retval, align 4, !dbg !2874
  ret i32 %4, !dbg !2874
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2875 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2879, metadata !DIExpression()), !dbg !2884
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2880, metadata !DIExpression()), !dbg !2885
  %0 = load i64, ptr %size.addr, align 8, !dbg !2886
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2887
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2888

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2889
  %tobool = icmp ne i64 %2, 0, !dbg !2889
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2890

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2881, metadata !DIExpression()), !dbg !2892
  %3 = load i64, ptr %size.addr, align 8, !dbg !2893
  %cmp = icmp ugt i64 %3, 8192, !dbg !2895
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2896

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2897
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2898
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !2899
  store ptr %call, ptr %retval, align 8, !dbg !2900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2900

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2901
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2901
  store i32 %call2, ptr %index, align 4, !dbg !2902
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2903
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2904
  %9 = ptrtoint ptr %8 to i64, !dbg !2904
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2905
  %idxprom = zext i32 %call3 to i64, !dbg !2906
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2906
  %10 = load i32, ptr %index, align 4, !dbg !2907
  %idxprom4 = zext i32 %10 to i64, !dbg !2906
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2906
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2906
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2908
  %13 = load i64, ptr %size.addr, align 8, !dbg !2909
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !2910
  store ptr %call6, ptr %retval, align 8, !dbg !2911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2911

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !2912
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2913
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2914
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !2915
  store ptr %call8, ptr %retval, align 8, !dbg !2916
  br label %return, !dbg !2916

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2917
  ret ptr %16, !dbg !2917
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2918 dso_local zeroext i1 @try_module_get(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2921 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !2924 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2929, metadata !DIExpression()), !dbg !2931
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2930, metadata !DIExpression()), !dbg !2932
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2933
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2934
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2935
  %2 = load ptr, ptr %prev, align 8, !dbg !2935
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2936
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #15, !dbg !2937
  ret void, !dbg !2938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #7 align 16 !dbg !2939 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !2943, metadata !DIExpression()), !dbg !2945
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2944, metadata !DIExpression()), !dbg !2946
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !2947
  %1 = load ptr, ptr %work.addr, align 8, !dbg !2948
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #15, !dbg !2949
  ret i1 %call, !dbg !2950
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2951 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !2952 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2956, metadata !DIExpression()), !dbg !2958
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2957, metadata !DIExpression()), !dbg !2959
  %0 = load i64, ptr %size.addr, align 8, !dbg !2960
  %tobool = icmp ne i64 %0, 0, !dbg !2960
  br i1 %tobool, label %if.end, label %if.then, !dbg !2962

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2963
  br label %return, !dbg !2963

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2964
  %cmp = icmp ule i64 %1, 8, !dbg !2966
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2967

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2968
  br label %return, !dbg !2968

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2969
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2971
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2972

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2973
  %cmp4 = icmp ule i64 %3, 96, !dbg !2974
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2975

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2976
  br label %return, !dbg !2976

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2977
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2979
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2980

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2981
  %cmp9 = icmp ule i64 %5, 192, !dbg !2982
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2983

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2984
  br label %return, !dbg !2984

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2985
  %cmp12 = icmp ule i64 %6, 8, !dbg !2987
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2988

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2989
  br label %return, !dbg !2989

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2990
  %cmp15 = icmp ule i64 %7, 16, !dbg !2992
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2993

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2994
  br label %return, !dbg !2994

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2995
  %cmp18 = icmp ule i64 %8, 32, !dbg !2997
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2998

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2999
  br label %return, !dbg !2999

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3000
  %cmp21 = icmp ule i64 %9, 64, !dbg !3002
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3003

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3004
  br label %return, !dbg !3004

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3005
  %cmp24 = icmp ule i64 %10, 128, !dbg !3007
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3008

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3009
  br label %return, !dbg !3009

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3010
  %cmp27 = icmp ule i64 %11, 256, !dbg !3012
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3013

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3014
  br label %return, !dbg !3014

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3015
  %cmp30 = icmp ule i64 %12, 512, !dbg !3017
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3018

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3019
  br label %return, !dbg !3019

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3020
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3022
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3023

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3024
  br label %return, !dbg !3024

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3025
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3027
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3028

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3029
  br label %return, !dbg !3029

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3030
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3032
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3033

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3034
  br label %return, !dbg !3034

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3035
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3037
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3038

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3039
  br label %return, !dbg !3039

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3040
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3042
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3043

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3044
  br label %return, !dbg !3044

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3045
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3047
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3048

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3049
  br label %return, !dbg !3049

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3050
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3052
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3053

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3054
  br label %return, !dbg !3054

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3055
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3057
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3058

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3059
  br label %return, !dbg !3059

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3060
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3062
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3063

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3064
  br label %return, !dbg !3064

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3065
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3067
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3068

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3069
  br label %return, !dbg !3069

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3070
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3072
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3073

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3074
  br label %return, !dbg !3074

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3075
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3077
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3078

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3079
  br label %return, !dbg !3079

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3080, !range !2357, !noundef !605
  %tobool69 = trunc i8 %25 to i1, !dbg !3080
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3082

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3083

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !3084, !srcloc !3087
  unreachable, !dbg !3084

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3088

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3089

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3090

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3092

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3090

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #16, !dbg !3094, !srcloc !3096
  br label %do.end75, !dbg !3094

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3090

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3097
  br label %return, !dbg !3097

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3098
  ret i32 %26, !dbg !3098
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3099 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !3105 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3109, metadata !DIExpression()), !dbg !3111
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3110, metadata !DIExpression()), !dbg !3112
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3113
  %and = and i32 %0, 17, !dbg !3113
  %cmp = icmp eq i32 %and, 0, !dbg !3113
  %lnot = xor i1 %cmp, true, !dbg !3113
  %lnot1 = xor i1 %lnot, true, !dbg !3113
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3113
  %conv = sext i32 %lnot.ext to i64, !dbg !3113
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3113
  %tobool = icmp ne i64 %expval, 0, !dbg !3113
  br i1 %tobool, label %if.then, label %if.end, !dbg !3115

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3116
  br label %return, !dbg !3116

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3117
  %and2 = and i32 %1, 1, !dbg !3119
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3119
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3120

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3121
  br label %return, !dbg !3121

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3122
  br label %return, !dbg !3122

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3124
  ret i32 %2, !dbg !3124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3125 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3126 dso_local void @__compiletime_assert_204() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !3127 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3131, metadata !DIExpression()), !dbg !3134
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3132, metadata !DIExpression()), !dbg !3135
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3133, metadata !DIExpression()), !dbg !3136
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3137
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3139
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3140
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !dbg !3141
  br i1 %call, label %if.end, label %if.then, !dbg !3142

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3143

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3144
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3145
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3146
  store ptr %3, ptr %prev1, align 8, !dbg !3147
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3148
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3149
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3150
  store ptr %5, ptr %next2, align 8, !dbg !3151
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3152
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3153
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3154
  store ptr %7, ptr %prev3, align 8, !dbg !3155
  br label %do.body, !dbg !3156

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3157

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3159

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3157

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3161
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3161
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3161
  store volatile ptr %9, ptr %next6, align 8, !dbg !3161
  br label %do.end7, !dbg !3161

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3157

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !3164 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3168, metadata !DIExpression()), !dbg !3171
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3169, metadata !DIExpression()), !dbg !3172
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3170, metadata !DIExpression()), !dbg !3173
  ret i1 true, !dbg !3174
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3175 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3178 dso_local void @__module_get(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #7 align 16 !dbg !3179 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3183, metadata !DIExpression()), !dbg !3184
  br label %do.body, !dbg !3185

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3186

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3188

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3186

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3190
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3190
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3190
  store volatile ptr %0, ptr %next, align 8, !dbg !3190
  br label %do.end3, !dbg !3190

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3186

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3192

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3193

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3195

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3193

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3197
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3197
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3197
  store volatile ptr %2, ptr %prev, align 8, !dbg !3197
  br label %do.end9, !dbg !3197

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3193

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3199
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3200 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3204 dso_local void @device_initialize(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3205 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #5 align 16 !dbg !3208 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3214, metadata !DIExpression()), !dbg !3215
  br label %do.body, !dbg !3216

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3217

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3219
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !3220
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3221
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #15, !dbg !3222
  ret i32 %call, !dbg !3223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_release_port(ptr noundef %dev) #0 align 16 !dbg !3224 {
entry:
  %dev.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3226, metadata !DIExpression()), !dbg !3230
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3227, metadata !DIExpression()), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3228, metadata !DIExpression()), !dbg !3233
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3233
  store ptr %0, ptr %__mptr, align 8, !dbg !3233
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3233
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3233
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3234
  %2 = load ptr, ptr %tmp, align 8, !dbg !3233
  store ptr %2, ptr %serio, align 8, !dbg !3232
  %3 = load ptr, ptr %serio, align 8, !dbg !3235
  call void @kfree(ptr noundef %3) #15, !dbg !3236
  call void @module_put(ptr noundef null) #15, !dbg !3237
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3238
  ret void, !dbg !3238
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3239 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3247, metadata !DIExpression()), !dbg !3249
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3248, metadata !DIExpression()), !dbg !3250
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3251
  %1 = load i64, ptr %size.addr, align 8, !dbg !3252
  %conv = trunc i64 %1 to i32, !dbg !3252
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !3253
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3254
  %3 = load i64, ptr %size.addr, align 8, !dbg !3254
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !3254
  ret void, !dbg !3255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #5 align 16 !dbg !3256 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3261
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #15, !dbg !3262
  ret i32 %call, !dbg !3263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !3264 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3269, metadata !DIExpression()), !dbg !3271
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3270, metadata !DIExpression()), !dbg !3272
  ret i1 true, !dbg !3273
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !3274 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3279, metadata !DIExpression()), !dbg !3282
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3280, metadata !DIExpression()), !dbg !3283
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3281, metadata !DIExpression()), !dbg !3284
  ret void, !dbg !3285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !3286 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3290, metadata !DIExpression()), !dbg !3292
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3291, metadata !DIExpression()), !dbg !3293
  %0 = load i32, ptr %i.addr, align 4, !dbg !3294
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3295
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #15, !dbg !3296
  ret i32 %call, !dbg !3297
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !3298 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3301, metadata !DIExpression()), !dbg !3305
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3302, metadata !DIExpression()), !dbg !3306
  %0 = load i32, ptr %i.addr, align 4, !dbg !3307
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !3308
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3303, metadata !DIExpression()), !dbg !3308
  %1 = load i32, ptr %i.addr, align 4, !dbg !3308
  store i32 %1, ptr %__ret, align 4, !dbg !3308
  %2 = load i32, ptr %__ret, align 4, !dbg !3308
  %3 = load ptr, ptr %v.addr, align 8, !dbg !3308
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !3308
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #16, !dbg !3308, !srcloc !3309
  store i32 %4, ptr %__ret, align 4, !dbg !3308
  %5 = load i32, ptr %__ret, align 4, !dbg !3308
  store i32 %5, ptr %tmp, align 4, !dbg !3308
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !3310
  %6 = load i32, ptr %tmp, align 4, !dbg !3308
  %add = add i32 %0, %6, !dbg !3311
  ret i32 %add, !dbg !3312
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3313 dso_local void @module_put(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3314 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3316, metadata !DIExpression()), !dbg !3322
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3317, metadata !DIExpression()), !dbg !3323
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3318, metadata !DIExpression()), !dbg !3324
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3325
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3319, metadata !DIExpression()), !dbg !3326
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3327
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3320, metadata !DIExpression()), !dbg !3327
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3327
  store ptr %0, ptr %__mptr, align 8, !dbg !3327
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3327
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3327
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3327
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3328
  %2 = load ptr, ptr %tmp, align 8, !dbg !3327
  store ptr %2, ptr %serio, align 8, !dbg !3326
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3329
  %4 = load ptr, ptr %serio, align 8, !dbg !3330
  %id = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 5, !dbg !3331
  %type = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 0, !dbg !3332
  %5 = load i8, ptr %type, align 1, !dbg !3332
  %conv = zext i8 %5 to i32, !dbg !3330
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.9, i32 noundef %conv) #15, !dbg !3333
  %conv1 = sext i32 %call to i64, !dbg !3333
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3334
  ret i64 %conv1, !dbg !3335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3336 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proto_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3340 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3342, metadata !DIExpression()), !dbg !3348
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3343, metadata !DIExpression()), !dbg !3349
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3344, metadata !DIExpression()), !dbg !3350
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3351
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3345, metadata !DIExpression()), !dbg !3352
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3353
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3346, metadata !DIExpression()), !dbg !3353
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3353
  store ptr %0, ptr %__mptr, align 8, !dbg !3353
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3353
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3353
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3353
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3354
  %2 = load ptr, ptr %tmp, align 8, !dbg !3353
  store ptr %2, ptr %serio, align 8, !dbg !3352
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3355
  %4 = load ptr, ptr %serio, align 8, !dbg !3356
  %id = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 5, !dbg !3357
  %proto = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 3, !dbg !3358
  %5 = load i8, ptr %proto, align 1, !dbg !3358
  %conv = zext i8 %5 to i32, !dbg !3356
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.9, i32 noundef %conv) #15, !dbg !3359
  %conv1 = sext i32 %call to i64, !dbg !3359
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3360
  ret i64 %conv1, !dbg !3361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3362 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3364, metadata !DIExpression()), !dbg !3370
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3365, metadata !DIExpression()), !dbg !3371
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3366, metadata !DIExpression()), !dbg !3372
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3373
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3367, metadata !DIExpression()), !dbg !3374
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3375
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3368, metadata !DIExpression()), !dbg !3375
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3375
  store ptr %0, ptr %__mptr, align 8, !dbg !3375
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3375
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3375
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3375
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3376
  %2 = load ptr, ptr %tmp, align 8, !dbg !3375
  store ptr %2, ptr %serio, align 8, !dbg !3374
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3377
  %4 = load ptr, ptr %serio, align 8, !dbg !3378
  %id = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 5, !dbg !3379
  %id1 = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 2, !dbg !3380
  %5 = load i8, ptr %id1, align 1, !dbg !3380
  %conv = zext i8 %5 to i32, !dbg !3378
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.9, i32 noundef %conv) #15, !dbg !3381
  %conv2 = sext i32 %call to i64, !dbg !3381
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3382
  ret i64 %conv2, !dbg !3383
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @extra_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3384 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3386, metadata !DIExpression()), !dbg !3392
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3387, metadata !DIExpression()), !dbg !3393
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3388, metadata !DIExpression()), !dbg !3394
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3395
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3389, metadata !DIExpression()), !dbg !3396
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3397
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3390, metadata !DIExpression()), !dbg !3397
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3397
  store ptr %0, ptr %__mptr, align 8, !dbg !3397
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3397
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3397
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3397
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3398
  %2 = load ptr, ptr %tmp, align 8, !dbg !3397
  store ptr %2, ptr %serio, align 8, !dbg !3396
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3399
  %4 = load ptr, ptr %serio, align 8, !dbg !3400
  %id = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 5, !dbg !3401
  %extra = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 1, !dbg !3402
  %5 = load i8, ptr %extra, align 1, !dbg !3402
  %conv = zext i8 %5 to i32, !dbg !3400
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.9, i32 noundef %conv) #15, !dbg !3403
  %conv1 = sext i32 %call to i64, !dbg !3403
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3404
  ret i64 %conv1, !dbg !3405
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @modalias_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3406 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3408, metadata !DIExpression()), !dbg !3414
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3409, metadata !DIExpression()), !dbg !3415
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3410, metadata !DIExpression()), !dbg !3416
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3417
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3411, metadata !DIExpression()), !dbg !3418
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3419
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3412, metadata !DIExpression()), !dbg !3419
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3419
  store ptr %0, ptr %__mptr, align 8, !dbg !3419
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3419
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3419
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3419
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3420
  %2 = load ptr, ptr %tmp, align 8, !dbg !3419
  store ptr %2, ptr %serio, align 8, !dbg !3418
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3421
  %4 = load ptr, ptr %serio, align 8, !dbg !3422
  %id = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 5, !dbg !3423
  %type = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 0, !dbg !3424
  %5 = load i8, ptr %type, align 1, !dbg !3424
  %conv = zext i8 %5 to i32, !dbg !3422
  %6 = load ptr, ptr %serio, align 8, !dbg !3425
  %id1 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 5, !dbg !3426
  %proto = getelementptr inbounds %struct.serio_device_id, ptr %id1, i32 0, i32 3, !dbg !3427
  %7 = load i8, ptr %proto, align 1, !dbg !3427
  %conv2 = zext i8 %7 to i32, !dbg !3425
  %8 = load ptr, ptr %serio, align 8, !dbg !3428
  %id3 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 5, !dbg !3429
  %id4 = getelementptr inbounds %struct.serio_device_id, ptr %id3, i32 0, i32 2, !dbg !3430
  %9 = load i8, ptr %id4, align 1, !dbg !3430
  %conv5 = zext i8 %9 to i32, !dbg !3428
  %10 = load ptr, ptr %serio, align 8, !dbg !3431
  %id6 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 5, !dbg !3432
  %extra = getelementptr inbounds %struct.serio_device_id, ptr %id6, i32 0, i32 1, !dbg !3433
  %11 = load i8, ptr %extra, align 1, !dbg !3433
  %conv7 = zext i8 %11 to i32, !dbg !3431
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.13, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv5, i32 noundef %conv7) #15, !dbg !3434
  %conv8 = sext i32 %call to i64, !dbg !3434
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3435
  ret i64 %conv8, !dbg !3436
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @serio_show_description(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3437 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3439, metadata !DIExpression()), !dbg !3445
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3440, metadata !DIExpression()), !dbg !3446
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3441, metadata !DIExpression()), !dbg !3447
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3448
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3450
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3443, metadata !DIExpression()), !dbg !3450
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3450
  store ptr %0, ptr %__mptr, align 8, !dbg !3450
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3450
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3450
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3451
  %2 = load ptr, ptr %tmp, align 8, !dbg !3450
  store ptr %2, ptr %serio, align 8, !dbg !3449
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3452
  %4 = load ptr, ptr %serio, align 8, !dbg !3453
  %name = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 1, !dbg !3454
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !3453
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.15, ptr noundef %arraydecay) #15, !dbg !3455
  %conv = sext i32 %call to i64, !dbg !3455
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3456
  ret i64 %conv, !dbg !3457
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drvctl_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3458 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr15 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3460, metadata !DIExpression()), !dbg !3476
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3461, metadata !DIExpression()), !dbg !3477
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3462, metadata !DIExpression()), !dbg !3478
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3463, metadata !DIExpression()), !dbg !3479
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !3480
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !3464, metadata !DIExpression()), !dbg !3481
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3465, metadata !DIExpression()), !dbg !3482
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3482
  store ptr %0, ptr %__mptr, align 8, !dbg !3482
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3482
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !3482
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3483
  %2 = load ptr, ptr %tmp, align 8, !dbg !3482
  store ptr %2, ptr %serio, align 8, !dbg !3481
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #16, !dbg !3484
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !3467, metadata !DIExpression()), !dbg !3485
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3486
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3468, metadata !DIExpression()), !dbg !3487
  %call = call i32 @mutex_lock_interruptible(ptr noundef @serio_mutex) #15, !dbg !3488
  store i32 %call, ptr %error, align 4, !dbg !3489
  %3 = load i32, ptr %error, align 4, !dbg !3490
  %tobool = icmp ne i32 %3, 0, !dbg !3490
  br i1 %tobool, label %if.then, label %if.end, !dbg !3492

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %error, align 4, !dbg !3493
  %conv = sext i32 %4 to i64, !dbg !3493
  store i64 %conv, ptr %retval, align 8, !dbg !3494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3494

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3495
  %6 = load i64, ptr %count.addr, align 8, !dbg !3496
  %call1 = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.17, i64 noundef %6) #15, !dbg !3497
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3497
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3498

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %serio, align 8, !dbg !3499
  call void @serio_disconnect_port(ptr noundef %7) #15, !dbg !3501
  br label %if.end23, !dbg !3502

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !3503
  %9 = load i64, ptr %count.addr, align 8, !dbg !3504
  %call4 = call i32 @strncmp(ptr noundef %8, ptr noundef @.str.18, i64 noundef %9) #15, !dbg !3505
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3505
  br i1 %tobool5, label %if.else7, label %if.then6, !dbg !3506

if.then6:                                         ; preds = %if.else
  %10 = load ptr, ptr %serio, align 8, !dbg !3507
  call void @serio_reconnect_subtree(ptr noundef %10) #15, !dbg !3509
  br label %if.end22, !dbg !3510

if.else7:                                         ; preds = %if.else
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !3511
  %12 = load i64, ptr %count.addr, align 8, !dbg !3512
  %call8 = call i32 @strncmp(ptr noundef %11, ptr noundef @.str.19, i64 noundef %12) #15, !dbg !3513
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3513
  br i1 %tobool9, label %if.else11, label %if.then10, !dbg !3514

if.then10:                                        ; preds = %if.else7
  %13 = load ptr, ptr %serio, align 8, !dbg !3515
  call void @serio_disconnect_port(ptr noundef %13) #15, !dbg !3517
  %14 = load ptr, ptr %serio, align 8, !dbg !3518
  call void @serio_find_driver(ptr noundef %14) #15, !dbg !3519
  %15 = load ptr, ptr %serio, align 8, !dbg !3520
  call void @serio_remove_duplicate_events(ptr noundef %15, i32 noundef 0) #15, !dbg !3521
  br label %if.end21, !dbg !3522

if.else11:                                        ; preds = %if.else7
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !3523
  %call12 = call ptr @driver_find(ptr noundef %16, ptr noundef @serio_bus) #15, !dbg !3524
  store ptr %call12, ptr %drv, align 8, !dbg !3525
  %cmp = icmp ne ptr %call12, null, !dbg !3526
  br i1 %cmp, label %if.then14, label %if.else19, !dbg !3527

if.then14:                                        ; preds = %if.else11
  %17 = load ptr, ptr %serio, align 8, !dbg !3528
  call void @serio_disconnect_port(ptr noundef %17) #15, !dbg !3529
  %18 = load ptr, ptr %serio, align 8, !dbg !3530
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #16, !dbg !3531
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !3469, metadata !DIExpression()), !dbg !3531
  %19 = load ptr, ptr %drv, align 8, !dbg !3531
  store ptr %19, ptr %__mptr15, align 8, !dbg !3531
  %20 = load ptr, ptr %__mptr15, align 8, !dbg !3531
  %add.ptr17 = getelementptr i8, ptr %20, i64 -80, !dbg !3531
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !3531
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #16, !dbg !3532
  %21 = load ptr, ptr %tmp16, align 8, !dbg !3531
  %call18 = call i32 @serio_bind_driver(ptr noundef %18, ptr noundef %21) #15, !dbg !3533
  store i32 %call18, ptr %error, align 4, !dbg !3534
  %22 = load ptr, ptr %serio, align 8, !dbg !3535
  call void @serio_remove_duplicate_events(ptr noundef %22, i32 noundef 0) #15, !dbg !3536
  br label %if.end20, !dbg !3537

if.else19:                                        ; preds = %if.else11
  store i32 -22, ptr %error, align 4, !dbg !3538
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then10
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then6
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then3
  call void @mutex_unlock(ptr noundef @serio_mutex) #15, !dbg !3540
  %23 = load i32, ptr %error, align 4, !dbg !3541
  %tobool24 = icmp ne i32 %23, 0, !dbg !3541
  br i1 %tobool24, label %cond.true, label %cond.false, !dbg !3541

cond.true:                                        ; preds = %if.end23
  %24 = load i32, ptr %error, align 4, !dbg !3542
  %conv25 = sext i32 %24 to i64, !dbg !3542
  br label %cond.end, !dbg !3541

cond.false:                                       ; preds = %if.end23
  %25 = load i64, ptr %count.addr, align 8, !dbg !3543
  br label %cond.end, !dbg !3541

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv25, %cond.true ], [ %25, %cond.false ], !dbg !3541
  store i64 %cond, ptr %retval, align 8, !dbg !3544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3544

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3545
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #16, !dbg !3545
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !3545
  %26 = load i64, ptr %retval, align 8, !dbg !3545
  ret i64 %26, !dbg !3545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3546 dso_local i32 @mutex_lock_interruptible(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3549 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_reconnect_subtree(ptr noundef %root) #0 align 16 !dbg !3553 {
entry:
  %root.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %error = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3555, metadata !DIExpression()), !dbg !3571
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !3572
  call void @llvm.dbg.declare(metadata ptr %s, metadata !3556, metadata !DIExpression()), !dbg !3573
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3574
  store ptr %0, ptr %s, align 8, !dbg !3573
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3575
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3557, metadata !DIExpression()), !dbg !3576
  br label %do.body, !dbg !3577

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %s, align 8, !dbg !3578
  %call = call i32 @serio_reconnect_port(ptr noundef %1) #15, !dbg !3579
  store i32 %call, ptr %error, align 4, !dbg !3580
  %2 = load i32, ptr %error, align 4, !dbg !3581
  %tobool = icmp ne i32 %2, 0, !dbg !3581
  br i1 %tobool, label %if.end5, label %if.then, !dbg !3582

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %s, align 8, !dbg !3583
  %children = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 14, !dbg !3584
  %call1 = call i32 @list_empty(ptr noundef %children) #15, !dbg !3585
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3585
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !3586

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3587
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3558, metadata !DIExpression()), !dbg !3587
  %4 = load ptr, ptr %s, align 8, !dbg !3587
  %children4 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 14, !dbg !3587
  %next = getelementptr inbounds %struct.list_head, ptr %children4, i32 0, i32 0, !dbg !3587
  %5 = load ptr, ptr %next, align 8, !dbg !3587
  store ptr %5, ptr %__mptr, align 8, !dbg !3587
  %6 = load ptr, ptr %__mptr, align 8, !dbg !3587
  %add.ptr = getelementptr i8, ptr %6, i64 -264, !dbg !3587
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3588
  %7 = load ptr, ptr %tmp, align 8, !dbg !3587
  store ptr %7, ptr %s, align 8, !dbg !3589
  br label %do.cond, !dbg !3590

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !3591

if.end5:                                          ; preds = %if.end, %do.body
  br label %while.cond, !dbg !3592

while.cond:                                       ; preds = %cleanup.cont, %if.end5
  %8 = load ptr, ptr %s, align 8, !dbg !3593
  %9 = load ptr, ptr %root.addr, align 8, !dbg !3594
  %cmp = icmp ne ptr %8, %9, !dbg !3595
  br i1 %cmp, label %while.body, label %while.end, !dbg !3592

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3565, metadata !DIExpression()), !dbg !3597
  %10 = load ptr, ptr %s, align 8, !dbg !3598
  %parent6 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 12, !dbg !3599
  %11 = load ptr, ptr %parent6, align 8, !dbg !3599
  store ptr %11, ptr %parent, align 8, !dbg !3597
  %12 = load ptr, ptr %s, align 8, !dbg !3600
  %child_node = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 13, !dbg !3601
  %13 = load ptr, ptr %parent, align 8, !dbg !3602
  %children7 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 14, !dbg !3603
  %call8 = call i32 @list_is_last(ptr noundef %child_node, ptr noundef %children7) #15, !dbg !3604
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3604
  br i1 %tobool9, label %if.end16, label %if.then10, !dbg !3605

if.then10:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #16, !dbg !3606
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !3567, metadata !DIExpression()), !dbg !3606
  %14 = load ptr, ptr %s, align 8, !dbg !3606
  %child_node12 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 13, !dbg !3606
  %next13 = getelementptr inbounds %struct.list_head, ptr %child_node12, i32 0, i32 0, !dbg !3606
  %15 = load ptr, ptr %next13, align 8, !dbg !3606
  store ptr %15, ptr %__mptr11, align 8, !dbg !3606
  %16 = load ptr, ptr %__mptr11, align 8, !dbg !3606
  %add.ptr15 = getelementptr i8, ptr %16, i64 -264, !dbg !3606
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !3606
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #16, !dbg !3607
  %17 = load ptr, ptr %tmp14, align 8, !dbg !3606
  store ptr %17, ptr %s, align 8, !dbg !3608
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3609

if.end16:                                         ; preds = %while.body
  %18 = load ptr, ptr %parent, align 8, !dbg !3610
  store ptr %18, ptr %s, align 8, !dbg !3611
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3612
  br label %cleanup, !dbg !3612

cleanup:                                          ; preds = %if.end16, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !3612
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !3592, !llvm.loop !3613

while.end:                                        ; preds = %cleanup, %while.cond
  br label %do.cond, !dbg !3614

do.cond:                                          ; preds = %while.end, %if.then3
  %19 = load ptr, ptr %s, align 8, !dbg !3615
  %20 = load ptr, ptr %root.addr, align 8, !dbg !3616
  %cmp17 = icmp ne ptr %19, %20, !dbg !3617
  br i1 %cmp17, label %do.body, label %do.end, !dbg !3614, !llvm.loop !3618

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3620
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !3620
  ret void, !dbg !3620

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_remove_duplicate_events(ptr noundef %object, i32 noundef %type) #0 align 16 !dbg !3621 {
entry:
  %object.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %e = alloca ptr, align 8
  %next = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !3625, metadata !DIExpression()), !dbg !3643
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3626, metadata !DIExpression()), !dbg !3644
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #16, !dbg !3645
  call void @llvm.dbg.declare(metadata ptr %e, metadata !3627, metadata !DIExpression()), !dbg !3646
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !3645
  call void @llvm.dbg.declare(metadata ptr %next, metadata !3628, metadata !DIExpression()), !dbg !3647
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !3648
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3629, metadata !DIExpression()), !dbg !3649
  br label %do.body, !dbg !3650

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3651

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !3652
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3630, metadata !DIExpression()), !dbg !3652
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !3652
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3634, metadata !DIExpression()), !dbg !3652
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3652
  %conv = zext i1 %cmp to i32, !dbg !3652
  store i32 1, ptr %tmp, align 4, !dbg !3652
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !3653
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !3653
  %0 = load i32, ptr %tmp, align 4, !dbg !3652
  %call = call ptr @spinlock_check(ptr noundef @serio_event_lock) #15, !dbg !3653
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !3653
  store i64 %call2, ptr %flags, align 8, !dbg !3653
  br label %do.cond, !dbg !3653

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3653

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !3651

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3651

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3635, metadata !DIExpression()), !dbg !3654
  %1 = load ptr, ptr @serio_event_list, align 8, !dbg !3654
  store ptr %1, ptr %__mptr, align 8, !dbg !3654
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3654
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !3654
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !3654
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !3655
  %3 = load ptr, ptr %tmp5, align 8, !dbg !3654
  store ptr %3, ptr %e, align 8, !dbg !3655
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !3638, metadata !DIExpression()), !dbg !3656
  %4 = load ptr, ptr %e, align 8, !dbg !3656
  %node = getelementptr inbounds %struct.serio_event, ptr %4, i32 0, i32 3, !dbg !3656
  %next7 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !3656
  %5 = load ptr, ptr %next7, align 8, !dbg !3656
  store ptr %5, ptr %__mptr6, align 8, !dbg !3656
  %6 = load ptr, ptr %__mptr6, align 8, !dbg !3656
  %add.ptr9 = getelementptr i8, ptr %6, i64 -24, !dbg !3656
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !3656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !3655
  %7 = load ptr, ptr %tmp8, align 8, !dbg !3656
  store ptr %7, ptr %next, align 8, !dbg !3655
  br label %for.cond, !dbg !3655

for.cond:                                         ; preds = %for.inc, %do.end4
  %8 = load ptr, ptr %e, align 8, !dbg !3657
  %node10 = getelementptr inbounds %struct.serio_event, ptr %8, i32 0, i32 3, !dbg !3657
  %cmp11 = icmp eq ptr %node10, @serio_event_list, !dbg !3657
  %lnot = xor i1 %cmp11, true, !dbg !3657
  br i1 %lnot, label %for.body, label %for.end, !dbg !3655

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %object.addr, align 8, !dbg !3658
  %10 = load ptr, ptr %e, align 8, !dbg !3661
  %object13 = getelementptr inbounds %struct.serio_event, ptr %10, i32 0, i32 1, !dbg !3662
  %11 = load ptr, ptr %object13, align 8, !dbg !3662
  %cmp14 = icmp eq ptr %9, %11, !dbg !3663
  br i1 %cmp14, label %if.then, label %if.end21, !dbg !3664

if.then:                                          ; preds = %for.body
  %12 = load i32, ptr %type.addr, align 4, !dbg !3665
  %13 = load ptr, ptr %e, align 8, !dbg !3668
  %type16 = getelementptr inbounds %struct.serio_event, ptr %13, i32 0, i32 0, !dbg !3669
  %14 = load i32, ptr %type16, align 8, !dbg !3669
  %cmp17 = icmp ne i32 %12, %14, !dbg !3670
  br i1 %cmp17, label %if.then19, label %if.end, !dbg !3671

if.then19:                                        ; preds = %if.then
  br label %for.end, !dbg !3672

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %e, align 8, !dbg !3673
  %node20 = getelementptr inbounds %struct.serio_event, ptr %15, i32 0, i32 3, !dbg !3674
  call void @list_del_init(ptr noundef %node20) #15, !dbg !3675
  %16 = load ptr, ptr %e, align 8, !dbg !3676
  call void @serio_free_event(ptr noundef %16) #15, !dbg !3677
  br label %if.end21, !dbg !3678

if.end21:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !3679

for.inc:                                          ; preds = %if.end21
  %17 = load ptr, ptr %next, align 8, !dbg !3657
  store ptr %17, ptr %e, align 8, !dbg !3657
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #16, !dbg !3680
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !3640, metadata !DIExpression()), !dbg !3680
  %18 = load ptr, ptr %next, align 8, !dbg !3680
  %node23 = getelementptr inbounds %struct.serio_event, ptr %18, i32 0, i32 3, !dbg !3680
  %next24 = getelementptr inbounds %struct.list_head, ptr %node23, i32 0, i32 0, !dbg !3680
  %19 = load ptr, ptr %next24, align 8, !dbg !3680
  store ptr %19, ptr %__mptr22, align 8, !dbg !3680
  %20 = load ptr, ptr %__mptr22, align 8, !dbg !3680
  %add.ptr26 = getelementptr i8, ptr %20, i64 -24, !dbg !3680
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #16, !dbg !3657
  %21 = load ptr, ptr %tmp25, align 8, !dbg !3680
  store ptr %21, ptr %next, align 8, !dbg !3657
  br label %for.cond, !dbg !3657, !llvm.loop !3681

for.end:                                          ; preds = %if.then19, %for.cond
  %22 = load i64, ptr %flags, align 8, !dbg !3683
  call void @spin_unlock_irqrestore(ptr noundef @serio_event_lock, i64 noundef %22) #15, !dbg !3684
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !3685
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #16, !dbg !3685
  ret void, !dbg !3685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3686 dso_local ptr @driver_find(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_bind_driver(ptr noundef %serio, ptr noundef %drv) #0 align 16 !dbg !3689 {
entry:
  %retval = alloca i32, align 4
  %serio.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !3691, metadata !DIExpression()), !dbg !3694
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !3692, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3693, metadata !DIExpression()), !dbg !3697
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !3698
  %id_table = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 1, !dbg !3700
  %1 = load ptr, ptr %id_table, align 8, !dbg !3700
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !3701
  %call = call i32 @serio_match_port(ptr noundef %1, ptr noundef %2) #15, !dbg !3702
  %tobool = icmp ne i32 %call, 0, !dbg !3702
  br i1 %tobool, label %if.then, label %if.end16, !dbg !3703

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !3704
  %driver = getelementptr inbounds %struct.serio_driver, ptr %3, i32 0, i32 10, !dbg !3706
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !3707
  %dev = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 18, !dbg !3708
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6, !dbg !3709
  store ptr %driver, ptr %driver1, align 8, !dbg !3710
  %5 = load ptr, ptr %serio.addr, align 8, !dbg !3711
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !3713
  %call2 = call i32 @serio_connect_driver(ptr noundef %5, ptr noundef %6) #15, !dbg !3714
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3714
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !3715

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %serio.addr, align 8, !dbg !3716
  %dev5 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18, !dbg !3718
  %driver6 = getelementptr inbounds %struct.device, ptr %dev5, i32 0, i32 6, !dbg !3719
  store ptr null, ptr %driver6, align 8, !dbg !3720
  store i32 -19, ptr %retval, align 4, !dbg !3721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3721

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %serio.addr, align 8, !dbg !3722
  %dev7 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18, !dbg !3723
  %call8 = call i32 @device_bind_driver(ptr noundef %dev7) #15, !dbg !3724
  store i32 %call8, ptr %error, align 4, !dbg !3725
  %9 = load i32, ptr %error, align 4, !dbg !3726
  %tobool9 = icmp ne i32 %9, 0, !dbg !3726
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !3728

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !3729

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !3732

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3732

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %serio.addr, align 8, !dbg !3729
  %dev11 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, !dbg !3729
  %11 = load ptr, ptr %serio.addr, align 8, !dbg !3729
  %phys = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 2, !dbg !3729
  %arraydecay = getelementptr inbounds [32 x i8], ptr %phys, i64 0, i64 0, !dbg !3729
  %12 = load ptr, ptr %serio.addr, align 8, !dbg !3729
  %name = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 1, !dbg !3729
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !3729
  %13 = load ptr, ptr %drv.addr, align 8, !dbg !3729
  %description = getelementptr inbounds %struct.serio_driver, ptr %13, i32 0, i32 0, !dbg !3729
  %14 = load ptr, ptr %description, align 8, !dbg !3729
  %15 = load i32, ptr %error, align 4, !dbg !3729
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef @.str.20, ptr noundef %arraydecay, ptr noundef %arraydecay12, ptr noundef %14, i32 noundef %15) #18, !dbg !3729
  %16 = load ptr, ptr %serio.addr, align 8, !dbg !3734
  call void @serio_disconnect_driver(ptr noundef %16) #15, !dbg !3735
  %17 = load ptr, ptr %serio.addr, align 8, !dbg !3736
  %dev13 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18, !dbg !3737
  %driver14 = getelementptr inbounds %struct.device, ptr %dev13, i32 0, i32 6, !dbg !3738
  store ptr null, ptr %driver14, align 8, !dbg !3739
  %18 = load i32, ptr %error, align 4, !dbg !3740
  store i32 %18, ptr %retval, align 4, !dbg !3741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3741

if.end15:                                         ; preds = %if.end
  br label %if.end16, !dbg !3742

if.end16:                                         ; preds = %if.end15, %entry
  store i32 0, ptr %retval, align 4, !dbg !3743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3743

cleanup:                                          ; preds = %if.end16, %do.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3744
  %19 = load i32, ptr %retval, align 4, !dbg !3744
  ret i32 %19, !dbg !3744
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_reconnect_port(ptr noundef %serio) #0 align 16 !dbg !3745 {
entry:
  %serio.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !3750
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3748, metadata !DIExpression()), !dbg !3751
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !3752
  %call = call i32 @serio_reconnect_driver(ptr noundef %0) #15, !dbg !3753
  store i32 %call, ptr %error, align 4, !dbg !3751
  %1 = load i32, ptr %error, align 4, !dbg !3754
  %tobool = icmp ne i32 %1, 0, !dbg !3754
  br i1 %tobool, label %if.then, label %if.end, !dbg !3756

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !3757
  call void @serio_disconnect_port(ptr noundef %2) #15, !dbg !3759
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !3760
  call void @serio_find_driver(ptr noundef %3) #15, !dbg !3761
  br label %if.end, !dbg !3762

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %error, align 4, !dbg !3763
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !3764
  ret i32 %4, !dbg !3765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #7 align 16 !dbg !3766 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3772, metadata !DIExpression()), !dbg !3773
  br label %do.body, !dbg !3774

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3776

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3774
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3774
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3774
  store ptr %1, ptr %tmp, align 8, !dbg !3776
  %2 = load ptr, ptr %tmp, align 8, !dbg !3774
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3778
  %cmp = icmp eq ptr %2, %3, !dbg !3779
  %conv = zext i1 %cmp to i32, !dbg !3779
  ret i32 %conv, !dbg !3780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_last(ptr noundef %list, ptr noundef %head) #7 align 16 !dbg !3781 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3785, metadata !DIExpression()), !dbg !3787
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3786, metadata !DIExpression()), !dbg !3788
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3789
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3790
  %1 = load ptr, ptr %next, align 8, !dbg !3790
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3791
  %cmp = icmp eq ptr %1, %2, !dbg !3792
  %conv = zext i1 %cmp to i32, !dbg !3792
  ret i32 %conv, !dbg !3793
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_reconnect_driver(ptr noundef %serio) #0 align 16 !dbg !3794 {
entry:
  %serio.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !3796, metadata !DIExpression()), !dbg !3798
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !3799
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3797, metadata !DIExpression()), !dbg !3800
  store i32 -1, ptr %retval1, align 4, !dbg !3800
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !3801
  %drv_mutex = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 17, !dbg !3802
  call void @mutex_lock(ptr noundef %drv_mutex) #15, !dbg !3803
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !3804
  %drv = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 16, !dbg !3806
  %2 = load ptr, ptr %drv, align 8, !dbg !3806
  %tobool = icmp ne ptr %2, null, !dbg !3804
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3807

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !3808
  %drv2 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 16, !dbg !3809
  %4 = load ptr, ptr %drv2, align 8, !dbg !3809
  %reconnect = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 6, !dbg !3810
  %5 = load ptr, ptr %reconnect, align 8, !dbg !3810
  %tobool3 = icmp ne ptr %5, null, !dbg !3808
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3811

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %serio.addr, align 8, !dbg !3812
  %drv4 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 16, !dbg !3813
  %7 = load ptr, ptr %drv4, align 8, !dbg !3813
  %reconnect5 = getelementptr inbounds %struct.serio_driver, ptr %7, i32 0, i32 6, !dbg !3814
  %8 = load ptr, ptr %reconnect5, align 8, !dbg !3814
  %9 = load ptr, ptr %serio.addr, align 8, !dbg !3815
  %call = call i32 %8(ptr noundef %9) #15, !dbg !3812
  store i32 %call, ptr %retval1, align 4, !dbg !3816
  br label %if.end, !dbg !3817

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %serio.addr, align 8, !dbg !3818
  %drv_mutex6 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 17, !dbg !3819
  call void @mutex_unlock(ptr noundef %drv_mutex6) #15, !dbg !3820
  %11 = load i32, ptr %retval1, align 4, !dbg !3821
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !3822
  ret i32 %11, !dbg !3823
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #7 align 16 !dbg !3824 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3826, metadata !DIExpression()), !dbg !3827
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3828
  call void @__list_del_entry(ptr noundef %0) #15, !dbg !3829
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3830
  call void @INIT_LIST_HEAD(ptr noundef %1) #15, !dbg !3831
  ret void, !dbg !3832
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_free_event(ptr noundef %event) #0 align 16 !dbg !3833 {
entry:
  %event.addr = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3837, metadata !DIExpression()), !dbg !3838
  %0 = load ptr, ptr %event.addr, align 8, !dbg !3839
  %owner = getelementptr inbounds %struct.serio_event, ptr %0, i32 0, i32 2, !dbg !3840
  %1 = load ptr, ptr %owner, align 8, !dbg !3840
  call void @module_put(ptr noundef %1) #15, !dbg !3841
  %2 = load ptr, ptr %event.addr, align 8, !dbg !3842
  call void @kfree(ptr noundef %2) #15, !dbg !3843
  ret void, !dbg !3844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #7 align 16 !dbg !3845 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3847, metadata !DIExpression()), !dbg !3848
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3849
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #15, !dbg !3851
  br i1 %call, label %if.end, label %if.then, !dbg !3852

if.then:                                          ; preds = %entry
  br label %return, !dbg !3853

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3854
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3855
  %2 = load ptr, ptr %prev, align 8, !dbg !3855
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3856
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3857
  %4 = load ptr, ptr %next, align 8, !dbg !3857
  call void @__list_del(ptr noundef %2, ptr noundef %4) #15, !dbg !3858
  br label %return, !dbg !3859

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3859
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #7 align 16 !dbg !3860 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3864, metadata !DIExpression()), !dbg !3865
  ret i1 true, !dbg !3866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !3867 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3869, metadata !DIExpression()), !dbg !3871
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3870, metadata !DIExpression()), !dbg !3872
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3873
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3874
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3875
  store ptr %0, ptr %prev1, align 8, !dbg !3876
  br label %do.body, !dbg !3877

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3878

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3880

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3878

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3882
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3882
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3882
  store volatile ptr %2, ptr %next4, align 8, !dbg !3882
  br label %do.end5, !dbg !3882

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3878

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_match_port(ptr noundef %ids, ptr noundef %serio) #0 align 16 !dbg !3885 {
entry:
  %retval = alloca i32, align 4
  %ids.addr = alloca ptr, align 8
  %serio.addr = alloca ptr, align 8
  store ptr %ids, ptr %ids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ids.addr, metadata !3889, metadata !DIExpression()), !dbg !3891
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !3890, metadata !DIExpression()), !dbg !3892
  br label %while.cond, !dbg !3893

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %ids.addr, align 8, !dbg !3894
  %type = getelementptr inbounds %struct.serio_device_id, ptr %0, i32 0, i32 0, !dbg !3895
  %1 = load i8, ptr %type, align 1, !dbg !3895
  %conv = zext i8 %1 to i32, !dbg !3894
  %tobool = icmp ne i32 %conv, 0, !dbg !3894
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !3896

lor.rhs:                                          ; preds = %while.cond
  %2 = load ptr, ptr %ids.addr, align 8, !dbg !3897
  %proto = getelementptr inbounds %struct.serio_device_id, ptr %2, i32 0, i32 3, !dbg !3898
  %3 = load i8, ptr %proto, align 1, !dbg !3898
  %conv1 = zext i8 %3 to i32, !dbg !3897
  %tobool2 = icmp ne i32 %conv1, 0, !dbg !3896
  br label %lor.end, !dbg !3896

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %tobool2, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end, !dbg !3893

while.body:                                       ; preds = %lor.end
  %5 = load ptr, ptr %ids.addr, align 8, !dbg !3899
  %type3 = getelementptr inbounds %struct.serio_device_id, ptr %5, i32 0, i32 0, !dbg !3902
  %6 = load i8, ptr %type3, align 1, !dbg !3902
  %conv4 = zext i8 %6 to i32, !dbg !3899
  %cmp = icmp eq i32 %conv4, 255, !dbg !3903
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3904

lor.lhs.false:                                    ; preds = %while.body
  %7 = load ptr, ptr %ids.addr, align 8, !dbg !3905
  %type6 = getelementptr inbounds %struct.serio_device_id, ptr %7, i32 0, i32 0, !dbg !3906
  %8 = load i8, ptr %type6, align 1, !dbg !3906
  %conv7 = zext i8 %8 to i32, !dbg !3905
  %9 = load ptr, ptr %serio.addr, align 8, !dbg !3907
  %id = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 5, !dbg !3908
  %type8 = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 0, !dbg !3909
  %10 = load i8, ptr %type8, align 1, !dbg !3909
  %conv9 = zext i8 %10 to i32, !dbg !3907
  %cmp10 = icmp eq i32 %conv7, %conv9, !dbg !3910
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !3911

land.lhs.true:                                    ; preds = %lor.lhs.false, %while.body
  %11 = load ptr, ptr %ids.addr, align 8, !dbg !3912
  %proto12 = getelementptr inbounds %struct.serio_device_id, ptr %11, i32 0, i32 3, !dbg !3913
  %12 = load i8, ptr %proto12, align 1, !dbg !3913
  %conv13 = zext i8 %12 to i32, !dbg !3912
  %cmp14 = icmp eq i32 %conv13, 255, !dbg !3914
  br i1 %cmp14, label %land.lhs.true24, label %lor.lhs.false16, !dbg !3915

lor.lhs.false16:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %ids.addr, align 8, !dbg !3916
  %proto17 = getelementptr inbounds %struct.serio_device_id, ptr %13, i32 0, i32 3, !dbg !3917
  %14 = load i8, ptr %proto17, align 1, !dbg !3917
  %conv18 = zext i8 %14 to i32, !dbg !3916
  %15 = load ptr, ptr %serio.addr, align 8, !dbg !3918
  %id19 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 5, !dbg !3919
  %proto20 = getelementptr inbounds %struct.serio_device_id, ptr %id19, i32 0, i32 3, !dbg !3920
  %16 = load i8, ptr %proto20, align 1, !dbg !3920
  %conv21 = zext i8 %16 to i32, !dbg !3918
  %cmp22 = icmp eq i32 %conv18, %conv21, !dbg !3921
  br i1 %cmp22, label %land.lhs.true24, label %if.end, !dbg !3922

land.lhs.true24:                                  ; preds = %lor.lhs.false16, %land.lhs.true
  %17 = load ptr, ptr %ids.addr, align 8, !dbg !3923
  %extra = getelementptr inbounds %struct.serio_device_id, ptr %17, i32 0, i32 1, !dbg !3924
  %18 = load i8, ptr %extra, align 1, !dbg !3924
  %conv25 = zext i8 %18 to i32, !dbg !3923
  %cmp26 = icmp eq i32 %conv25, 255, !dbg !3925
  br i1 %cmp26, label %land.lhs.true36, label %lor.lhs.false28, !dbg !3926

lor.lhs.false28:                                  ; preds = %land.lhs.true24
  %19 = load ptr, ptr %ids.addr, align 8, !dbg !3927
  %extra29 = getelementptr inbounds %struct.serio_device_id, ptr %19, i32 0, i32 1, !dbg !3928
  %20 = load i8, ptr %extra29, align 1, !dbg !3928
  %conv30 = zext i8 %20 to i32, !dbg !3927
  %21 = load ptr, ptr %serio.addr, align 8, !dbg !3929
  %id31 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 5, !dbg !3930
  %extra32 = getelementptr inbounds %struct.serio_device_id, ptr %id31, i32 0, i32 1, !dbg !3931
  %22 = load i8, ptr %extra32, align 1, !dbg !3931
  %conv33 = zext i8 %22 to i32, !dbg !3929
  %cmp34 = icmp eq i32 %conv30, %conv33, !dbg !3932
  br i1 %cmp34, label %land.lhs.true36, label %if.end, !dbg !3933

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %land.lhs.true24
  %23 = load ptr, ptr %ids.addr, align 8, !dbg !3934
  %id37 = getelementptr inbounds %struct.serio_device_id, ptr %23, i32 0, i32 2, !dbg !3935
  %24 = load i8, ptr %id37, align 1, !dbg !3935
  %conv38 = zext i8 %24 to i32, !dbg !3934
  %cmp39 = icmp eq i32 %conv38, 255, !dbg !3936
  br i1 %cmp39, label %if.then, label %lor.lhs.false41, !dbg !3937

lor.lhs.false41:                                  ; preds = %land.lhs.true36
  %25 = load ptr, ptr %ids.addr, align 8, !dbg !3938
  %id42 = getelementptr inbounds %struct.serio_device_id, ptr %25, i32 0, i32 2, !dbg !3939
  %26 = load i8, ptr %id42, align 1, !dbg !3939
  %conv43 = zext i8 %26 to i32, !dbg !3938
  %27 = load ptr, ptr %serio.addr, align 8, !dbg !3940
  %id44 = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 5, !dbg !3941
  %id45 = getelementptr inbounds %struct.serio_device_id, ptr %id44, i32 0, i32 2, !dbg !3942
  %28 = load i8, ptr %id45, align 1, !dbg !3942
  %conv46 = zext i8 %28 to i32, !dbg !3940
  %cmp47 = icmp eq i32 %conv43, %conv46, !dbg !3943
  br i1 %cmp47, label %if.then, label %if.end, !dbg !3944

if.then:                                          ; preds = %lor.lhs.false41, %land.lhs.true36
  store i32 1, ptr %retval, align 4, !dbg !3945
  br label %return, !dbg !3945

if.end:                                           ; preds = %lor.lhs.false41, %lor.lhs.false28, %lor.lhs.false16, %lor.lhs.false
  %29 = load ptr, ptr %ids.addr, align 8, !dbg !3946
  %incdec.ptr = getelementptr %struct.serio_device_id, ptr %29, i32 1, !dbg !3946
  store ptr %incdec.ptr, ptr %ids.addr, align 8, !dbg !3946
  br label %while.cond, !dbg !3893, !llvm.loop !3947

while.end:                                        ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !3949
  br label %return, !dbg !3949

return:                                           ; preds = %while.end, %if.then
  %30 = load i32, ptr %retval, align 4, !dbg !3950
  ret i32 %30, !dbg !3950
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_connect_driver(ptr noundef %serio, ptr noundef %drv) #0 align 16 !dbg !3951 {
entry:
  %serio.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !3953, metadata !DIExpression()), !dbg !3956
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !3958
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3955, metadata !DIExpression()), !dbg !3959
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !3960
  %drv_mutex = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 17, !dbg !3961
  call void @mutex_lock(ptr noundef %drv_mutex) #15, !dbg !3962
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !3963
  %connect = getelementptr inbounds %struct.serio_driver, ptr %1, i32 0, i32 5, !dbg !3964
  %2 = load ptr, ptr %connect, align 8, !dbg !3964
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !3965
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !3966
  %call = call i32 %2(ptr noundef %3, ptr noundef %4) #15, !dbg !3963
  store i32 %call, ptr %retval1, align 4, !dbg !3967
  %5 = load ptr, ptr %serio.addr, align 8, !dbg !3968
  %drv_mutex2 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 17, !dbg !3969
  call void @mutex_unlock(ptr noundef %drv_mutex2) #15, !dbg !3970
  %6 = load i32, ptr %retval1, align 4, !dbg !3971
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !3972
  ret i32 %6, !dbg !3973
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3974 dso_local i32 @device_bind_driver(ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3975 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_disconnect_driver(ptr noundef %serio) #0 align 16 !dbg !3979 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !3981, metadata !DIExpression()), !dbg !3982
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !3983
  %drv_mutex = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 17, !dbg !3984
  call void @mutex_lock(ptr noundef %drv_mutex) #15, !dbg !3985
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !3986
  %drv = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 16, !dbg !3988
  %2 = load ptr, ptr %drv, align 8, !dbg !3988
  %tobool = icmp ne ptr %2, null, !dbg !3986
  br i1 %tobool, label %if.then, label %if.end, !dbg !3989

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !3990
  %drv1 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 16, !dbg !3991
  %4 = load ptr, ptr %drv1, align 8, !dbg !3991
  %disconnect = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 8, !dbg !3992
  %5 = load ptr, ptr %disconnect, align 8, !dbg !3992
  %6 = load ptr, ptr %serio.addr, align 8, !dbg !3993
  call void %5(ptr noundef %6) #15, !dbg !3990
  br label %if.end, !dbg !3990

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %serio.addr, align 8, !dbg !3994
  %drv_mutex2 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 17, !dbg !3995
  call void @mutex_unlock(ptr noundef %drv_mutex2) #15, !dbg !3996
  ret void, !dbg !3997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @serio_show_bind_mode(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3998 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4000, metadata !DIExpression()), !dbg !4006
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4001, metadata !DIExpression()), !dbg !4007
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4002, metadata !DIExpression()), !dbg !4008
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !4009
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !4003, metadata !DIExpression()), !dbg !4010
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4011
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4004, metadata !DIExpression()), !dbg !4011
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4011
  store ptr %0, ptr %__mptr, align 8, !dbg !4011
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4011
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !4011
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4012
  %2 = load ptr, ptr %tmp, align 8, !dbg !4011
  store ptr %2, ptr %serio, align 8, !dbg !4010
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4013
  %4 = load ptr, ptr %serio, align 8, !dbg !4014
  %manual_bind = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 4, !dbg !4015
  %5 = load i8, ptr %manual_bind, align 8, !dbg !4015, !range !2357, !noundef !605
  %tobool = trunc i8 %5 to i1, !dbg !4015
  %6 = zext i1 %tobool to i64, !dbg !4014
  %cond = select i1 %tobool, ptr @.str.22, ptr @.str.23, !dbg !4014
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.15, ptr noundef %cond) #15, !dbg !4016
  %conv = sext i32 %call to i64, !dbg !4016
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !4017
  ret i64 %conv, !dbg !4018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @serio_set_bind_mode(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4019 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4021, metadata !DIExpression()), !dbg !4029
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4022, metadata !DIExpression()), !dbg !4030
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4023, metadata !DIExpression()), !dbg !4031
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4024, metadata !DIExpression()), !dbg !4032
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !4033
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !4025, metadata !DIExpression()), !dbg !4034
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4035
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4026, metadata !DIExpression()), !dbg !4035
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4035
  store ptr %0, ptr %__mptr, align 8, !dbg !4035
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4035
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !4035
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4036
  %2 = load ptr, ptr %tmp, align 8, !dbg !4035
  store ptr %2, ptr %serio, align 8, !dbg !4034
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4028, metadata !DIExpression()), !dbg !4038
  %3 = load i64, ptr %count.addr, align 8, !dbg !4039
  %conv = trunc i64 %3 to i32, !dbg !4039
  store i32 %conv, ptr %retval1, align 4, !dbg !4040
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !4041
  %5 = load i64, ptr %count.addr, align 8, !dbg !4043
  %call = call i32 @strncmp(ptr noundef %4, ptr noundef @.str.22, i64 noundef %5) #15, !dbg !4044
  %tobool = icmp ne i32 %call, 0, !dbg !4044
  br i1 %tobool, label %if.else, label %if.then, !dbg !4045

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %serio, align 8, !dbg !4046
  %manual_bind = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 4, !dbg !4048
  store i8 1, ptr %manual_bind, align 8, !dbg !4049
  br label %if.end7, !dbg !4050

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !4051
  %8 = load i64, ptr %count.addr, align 8, !dbg !4053
  %call2 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.23, i64 noundef %8) #15, !dbg !4054
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4054
  br i1 %tobool3, label %if.else6, label %if.then4, !dbg !4055

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %serio, align 8, !dbg !4056
  %manual_bind5 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 4, !dbg !4058
  store i8 0, ptr %manual_bind5, align 8, !dbg !4059
  br label %if.end, !dbg !4060

if.else6:                                         ; preds = %if.else
  store i32 -22, ptr %retval1, align 4, !dbg !4061
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval1, align 4, !dbg !4063
  %conv8 = sext i32 %10 to i64, !dbg !4063
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !4064
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !4064
  ret i64 %conv8, !dbg !4065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @firmware_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4066 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4068, metadata !DIExpression()), !dbg !4074
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4069, metadata !DIExpression()), !dbg !4075
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4070, metadata !DIExpression()), !dbg !4076
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !4071, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4072, metadata !DIExpression()), !dbg !4079
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4079
  store ptr %0, ptr %__mptr, align 8, !dbg !4079
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4079
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !4079
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4080
  %2 = load ptr, ptr %tmp, align 8, !dbg !4079
  store ptr %2, ptr %serio, align 8, !dbg !4078
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4081
  %4 = load ptr, ptr %serio, align 8, !dbg !4082
  %firmware_id = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 3, !dbg !4083
  %arraydecay = getelementptr inbounds [128 x i8], ptr %firmware_id, i64 0, i64 0, !dbg !4082
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.15, ptr noundef %arraydecay) #15, !dbg !4084
  %conv = sext i32 %call to i64, !dbg !4084
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !4085
  ret i64 %conv, !dbg !4086
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4087 dso_local void @device_release_driver(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @serio_get_pending_child(ptr noundef %parent) #0 align 16 !dbg !4088 {
entry:
  %parent.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %child = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr15 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4092, metadata !DIExpression()), !dbg !4108
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #16, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %event, metadata !4093, metadata !DIExpression()), !dbg !4110
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !4111
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !4094, metadata !DIExpression()), !dbg !4112
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #16, !dbg !4111
  call void @llvm.dbg.declare(metadata ptr %child, metadata !4095, metadata !DIExpression()), !dbg !4113
  store ptr null, ptr %child, align 8, !dbg !4113
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4114
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4096, metadata !DIExpression()), !dbg !4115
  br label %do.body, !dbg !4116

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4117

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4118
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4097, metadata !DIExpression()), !dbg !4118
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4118
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4101, metadata !DIExpression()), !dbg !4118
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4118
  %conv = zext i1 %cmp to i32, !dbg !4118
  store i32 1, ptr %tmp, align 4, !dbg !4118
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4119
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4119
  %0 = load i32, ptr %tmp, align 4, !dbg !4118
  %call = call ptr @spinlock_check(ptr noundef @serio_event_lock) #15, !dbg !4119
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !4119
  store i64 %call2, ptr %flags, align 8, !dbg !4119
  br label %do.cond, !dbg !4119

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4119

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4117

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4117

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4120
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4102, metadata !DIExpression()), !dbg !4120
  %1 = load ptr, ptr @serio_event_list, align 8, !dbg !4120
  store ptr %1, ptr %__mptr, align 8, !dbg !4120
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4120
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !4120
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !4120
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4121
  %3 = load ptr, ptr %tmp5, align 8, !dbg !4120
  store ptr %3, ptr %event, align 8, !dbg !4121
  br label %for.cond, !dbg !4121

for.cond:                                         ; preds = %for.inc, %do.end4
  %4 = load ptr, ptr %event, align 8, !dbg !4122
  %node = getelementptr inbounds %struct.serio_event, ptr %4, i32 0, i32 3, !dbg !4122
  %cmp6 = icmp eq ptr %node, @serio_event_list, !dbg !4122
  %lnot = xor i1 %cmp6, true, !dbg !4122
  br i1 %lnot, label %for.body, label %for.end, !dbg !4121

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %event, align 8, !dbg !4123
  %type = getelementptr inbounds %struct.serio_event, ptr %5, i32 0, i32 0, !dbg !4126
  %6 = load i32, ptr %type, align 8, !dbg !4126
  %cmp8 = icmp eq i32 %6, 3, !dbg !4127
  br i1 %cmp8, label %if.then, label %if.end14, !dbg !4128

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %event, align 8, !dbg !4129
  %object = getelementptr inbounds %struct.serio_event, ptr %7, i32 0, i32 1, !dbg !4131
  %8 = load ptr, ptr %object, align 8, !dbg !4131
  store ptr %8, ptr %serio, align 8, !dbg !4132
  %9 = load ptr, ptr %serio, align 8, !dbg !4133
  %parent10 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 12, !dbg !4135
  %10 = load ptr, ptr %parent10, align 8, !dbg !4135
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !4136
  %cmp11 = icmp eq ptr %10, %11, !dbg !4137
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !4138

if.then13:                                        ; preds = %if.then
  %12 = load ptr, ptr %serio, align 8, !dbg !4139
  store ptr %12, ptr %child, align 8, !dbg !4141
  br label %for.end, !dbg !4142

if.end:                                           ; preds = %if.then
  br label %if.end14, !dbg !4143

if.end14:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !4144

for.inc:                                          ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #16, !dbg !4145
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !4105, metadata !DIExpression()), !dbg !4145
  %13 = load ptr, ptr %event, align 8, !dbg !4145
  %node16 = getelementptr inbounds %struct.serio_event, ptr %13, i32 0, i32 3, !dbg !4145
  %next = getelementptr inbounds %struct.list_head, ptr %node16, i32 0, i32 0, !dbg !4145
  %14 = load ptr, ptr %next, align 8, !dbg !4145
  store ptr %14, ptr %__mptr15, align 8, !dbg !4145
  %15 = load ptr, ptr %__mptr15, align 8, !dbg !4145
  %add.ptr18 = getelementptr i8, ptr %15, i64 -24, !dbg !4145
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !4145
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #16, !dbg !4122
  %16 = load ptr, ptr %tmp17, align 8, !dbg !4145
  store ptr %16, ptr %event, align 8, !dbg !4122
  br label %for.cond, !dbg !4122, !llvm.loop !4146

for.end:                                          ; preds = %if.then13, %for.cond
  %17 = load i64, ptr %flags, align 8, !dbg !4148
  call void @spin_unlock_irqrestore(ptr noundef @serio_event_lock, i64 noundef %17) #15, !dbg !4149
  %18 = load ptr, ptr %child, align 8, !dbg !4150
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4151
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #16, !dbg !4151
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !4151
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #16, !dbg !4151
  ret ptr %18, !dbg !4152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4153 dso_local void @put_device(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_pause_rx(ptr noundef %serio) #7 align 16 !dbg !4154 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !4158
  %lock = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6, !dbg !4159
  call void @spin_lock_irq(ptr noundef %lock) #15, !dbg !4160
  ret void, !dbg !4161
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_continue_rx(ptr noundef %serio) #7 align 16 !dbg !4162 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !4164, metadata !DIExpression()), !dbg !4165
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !4166
  %lock = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6, !dbg !4167
  call void @spin_unlock_irq(ptr noundef %lock) #15, !dbg !4168
  ret void, !dbg !4169
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4170 dso_local void @device_del(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !4171 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4175, metadata !DIExpression()), !dbg !4176
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4177
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4177
  call void @_raw_spin_lock_irq(ptr noundef %1) #15, !dbg !4177
  ret void, !dbg !4178
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4179 dso_local void @_raw_spin_lock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !4182 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4186
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4186
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15, !dbg !4186
  ret void, !dbg !4187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4188 dso_local void @_raw_spin_unlock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4189 dso_local i32 @device_attach(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4190 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @description_show(ptr noundef %drv, ptr noundef %buf) #0 align 16 !dbg !4193 {
entry:
  %drv.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %driver = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4195, metadata !DIExpression()), !dbg !4200
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4196, metadata !DIExpression()), !dbg !4201
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver) #16, !dbg !4202
  call void @llvm.dbg.declare(metadata ptr %driver, metadata !4197, metadata !DIExpression()), !dbg !4203
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4204
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4198, metadata !DIExpression()), !dbg !4204
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4204
  store ptr %0, ptr %__mptr, align 8, !dbg !4204
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4204
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !4204
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4205
  %2 = load ptr, ptr %tmp, align 8, !dbg !4204
  store ptr %2, ptr %driver, align 8, !dbg !4203
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4206
  %4 = load ptr, ptr %driver, align 8, !dbg !4207
  %description = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 0, !dbg !4208
  %5 = load ptr, ptr %description, align 8, !dbg !4208
  %tobool = icmp ne ptr %5, null, !dbg !4207
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4207

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %driver, align 8, !dbg !4209
  %description1 = getelementptr inbounds %struct.serio_driver, ptr %6, i32 0, i32 0, !dbg !4210
  %7 = load ptr, ptr %description1, align 8, !dbg !4210
  br label %cond.end, !dbg !4207

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4207

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ @.str.26, %cond.false ], !dbg !4207
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.15, ptr noundef %cond) #15, !dbg !4211
  %conv = sext i32 %call to i64, !dbg !4211
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver) #16, !dbg !4212
  ret i64 %conv, !dbg !4213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bind_mode_show(ptr noundef %drv, ptr noundef %buf) #0 align 16 !dbg !4214 {
entry:
  %drv.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %serio_drv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4216, metadata !DIExpression()), !dbg !4221
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4217, metadata !DIExpression()), !dbg !4222
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio_drv) #16, !dbg !4223
  call void @llvm.dbg.declare(metadata ptr %serio_drv, metadata !4218, metadata !DIExpression()), !dbg !4224
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4225
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4219, metadata !DIExpression()), !dbg !4225
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4225
  store ptr %0, ptr %__mptr, align 8, !dbg !4225
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4225
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !4225
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4226
  %2 = load ptr, ptr %tmp, align 8, !dbg !4225
  store ptr %2, ptr %serio_drv, align 8, !dbg !4224
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4227
  %4 = load ptr, ptr %serio_drv, align 8, !dbg !4228
  %manual_bind = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 2, !dbg !4229
  %5 = load i8, ptr %manual_bind, align 8, !dbg !4229, !range !2357, !noundef !605
  %tobool = trunc i8 %5 to i1, !dbg !4229
  %6 = zext i1 %tobool to i64, !dbg !4228
  %cond = select i1 %tobool, ptr @.str.22, ptr @.str.23, !dbg !4228
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.15, ptr noundef %cond) #15, !dbg !4230
  %conv = sext i32 %call to i64, !dbg !4230
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio_drv) #16, !dbg !4231
  ret i64 %conv, !dbg !4232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bind_mode_store(ptr noundef %drv, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4233 {
entry:
  %drv.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %serio_drv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4235, metadata !DIExpression()), !dbg !4242
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4236, metadata !DIExpression()), !dbg !4243
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4237, metadata !DIExpression()), !dbg !4244
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio_drv) #16, !dbg !4245
  call void @llvm.dbg.declare(metadata ptr %serio_drv, metadata !4238, metadata !DIExpression()), !dbg !4246
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4239, metadata !DIExpression()), !dbg !4247
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4247
  store ptr %0, ptr %__mptr, align 8, !dbg !4247
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4247
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !4247
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4247
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4248
  %2 = load ptr, ptr %tmp, align 8, !dbg !4247
  store ptr %2, ptr %serio_drv, align 8, !dbg !4246
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4241, metadata !DIExpression()), !dbg !4250
  %3 = load i64, ptr %count.addr, align 8, !dbg !4251
  %conv = trunc i64 %3 to i32, !dbg !4251
  store i32 %conv, ptr %retval1, align 4, !dbg !4252
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !4253
  %5 = load i64, ptr %count.addr, align 8, !dbg !4255
  %call = call i32 @strncmp(ptr noundef %4, ptr noundef @.str.22, i64 noundef %5) #15, !dbg !4256
  %tobool = icmp ne i32 %call, 0, !dbg !4256
  br i1 %tobool, label %if.else, label %if.then, !dbg !4257

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %serio_drv, align 8, !dbg !4258
  %manual_bind = getelementptr inbounds %struct.serio_driver, ptr %6, i32 0, i32 2, !dbg !4260
  store i8 1, ptr %manual_bind, align 8, !dbg !4261
  br label %if.end7, !dbg !4262

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !4263
  %8 = load i64, ptr %count.addr, align 8, !dbg !4265
  %call2 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.23, i64 noundef %8) #15, !dbg !4266
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4266
  br i1 %tobool3, label %if.else6, label %if.then4, !dbg !4267

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %serio_drv, align 8, !dbg !4268
  %manual_bind5 = getelementptr inbounds %struct.serio_driver, ptr %9, i32 0, i32 2, !dbg !4270
  store i8 0, ptr %manual_bind5, align 8, !dbg !4271
  br label %if.end, !dbg !4272

if.else6:                                         ; preds = %if.else
  store i32 -22, ptr %retval1, align 4, !dbg !4273
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval1, align 4, !dbg !4275
  %conv8 = sext i32 %10 to i64, !dbg !4275
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !4276
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio_drv) #16, !dbg !4276
  ret i64 %conv8, !dbg !4277
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4278 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_cleanup(ptr noundef %serio) #0 align 16 !dbg !4281 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !4285
  %drv_mutex = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 17, !dbg !4286
  call void @mutex_lock(ptr noundef %drv_mutex) #15, !dbg !4287
  %1 = load ptr, ptr %serio.addr, align 8, !dbg !4288
  %drv = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 16, !dbg !4290
  %2 = load ptr, ptr %drv, align 8, !dbg !4290
  %tobool = icmp ne ptr %2, null, !dbg !4288
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4291

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %serio.addr, align 8, !dbg !4292
  %drv1 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 16, !dbg !4293
  %4 = load ptr, ptr %drv1, align 8, !dbg !4293
  %cleanup = getelementptr inbounds %struct.serio_driver, ptr %4, i32 0, i32 9, !dbg !4294
  %5 = load ptr, ptr %cleanup, align 8, !dbg !4294
  %tobool2 = icmp ne ptr %5, null, !dbg !4292
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4295

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %serio.addr, align 8, !dbg !4296
  %drv3 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 16, !dbg !4297
  %7 = load ptr, ptr %drv3, align 8, !dbg !4297
  %cleanup4 = getelementptr inbounds %struct.serio_driver, ptr %7, i32 0, i32 9, !dbg !4298
  %8 = load ptr, ptr %cleanup4, align 8, !dbg !4298
  %9 = load ptr, ptr %serio.addr, align 8, !dbg !4299
  call void %8(ptr noundef %9) #15, !dbg !4296
  br label %if.end, !dbg !4296

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %serio.addr, align 8, !dbg !4300
  %drv_mutex5 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 17, !dbg !4301
  call void @mutex_unlock(ptr noundef %drv_mutex5) #15, !dbg !4302
  ret void, !dbg !4303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_suspend(ptr noundef %dev) #0 align 16 !dbg !4304 {
entry:
  %dev.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4306, metadata !DIExpression()), !dbg !4310
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !4311
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !4307, metadata !DIExpression()), !dbg !4312
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4313
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4308, metadata !DIExpression()), !dbg !4313
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4313
  store ptr %0, ptr %__mptr, align 8, !dbg !4313
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4313
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !4313
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4313
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4314
  %2 = load ptr, ptr %tmp, align 8, !dbg !4313
  store ptr %2, ptr %serio, align 8, !dbg !4312
  %3 = load ptr, ptr %serio, align 8, !dbg !4315
  call void @serio_cleanup(ptr noundef %3) #15, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !4317
  ret i32 0, !dbg !4318
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serio_resume(ptr noundef %dev) #0 align 16 !dbg !4319 {
entry:
  %dev.addr = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %error = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4321, metadata !DIExpression()), !dbg !4326
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #16, !dbg !4327
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !4322, metadata !DIExpression()), !dbg !4328
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4329
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4323, metadata !DIExpression()), !dbg !4329
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4329
  store ptr %0, ptr %__mptr, align 8, !dbg !4329
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4329
  %add.ptr = getelementptr i8, ptr %1, i64 -344, !dbg !4329
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4329
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4330
  %2 = load ptr, ptr %tmp, align 8, !dbg !4329
  store ptr %2, ptr %serio, align 8, !dbg !4328
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4325, metadata !DIExpression()), !dbg !4332
  store i32 -2, ptr %error, align 4, !dbg !4332
  %3 = load ptr, ptr %serio, align 8, !dbg !4333
  %drv_mutex = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 17, !dbg !4334
  call void @mutex_lock(ptr noundef %drv_mutex) #15, !dbg !4335
  %4 = load ptr, ptr %serio, align 8, !dbg !4336
  %drv = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 16, !dbg !4338
  %5 = load ptr, ptr %drv, align 8, !dbg !4338
  %tobool = icmp ne ptr %5, null, !dbg !4336
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !4339

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %serio, align 8, !dbg !4340
  %drv1 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 16, !dbg !4341
  %7 = load ptr, ptr %drv1, align 8, !dbg !4341
  %fast_reconnect = getelementptr inbounds %struct.serio_driver, ptr %7, i32 0, i32 7, !dbg !4342
  %8 = load ptr, ptr %fast_reconnect, align 8, !dbg !4342
  %tobool2 = icmp ne ptr %8, null, !dbg !4340
  br i1 %tobool2, label %if.then, label %if.end8, !dbg !4343

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %serio, align 8, !dbg !4344
  %drv3 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 16, !dbg !4346
  %10 = load ptr, ptr %drv3, align 8, !dbg !4346
  %fast_reconnect4 = getelementptr inbounds %struct.serio_driver, ptr %10, i32 0, i32 7, !dbg !4347
  %11 = load ptr, ptr %fast_reconnect4, align 8, !dbg !4347
  %12 = load ptr, ptr %serio, align 8, !dbg !4348
  %call = call i32 %11(ptr noundef %12) #15, !dbg !4344
  store i32 %call, ptr %error, align 4, !dbg !4349
  %13 = load i32, ptr %error, align 4, !dbg !4350
  %tobool5 = icmp ne i32 %13, 0, !dbg !4350
  br i1 %tobool5, label %land.lhs.true6, label %if.end, !dbg !4352

land.lhs.true6:                                   ; preds = %if.then
  %14 = load i32, ptr %error, align 4, !dbg !4353
  %cmp = icmp ne i32 %14, -2, !dbg !4354
  br i1 %cmp, label %if.then7, label %if.end, !dbg !4355

if.then7:                                         ; preds = %land.lhs.true6
  br label %do.body, !dbg !4356

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !4358

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4358

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !4356
  %16 = load i32, ptr %error, align 4, !dbg !4356
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef @.str.33, i32 noundef %16) #18, !dbg !4356
  br label %if.end, !dbg !4360

if.end:                                           ; preds = %do.end, %land.lhs.true6, %if.then
  br label %if.end8, !dbg !4361

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  %17 = load ptr, ptr %serio, align 8, !dbg !4362
  %drv_mutex9 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 17, !dbg !4363
  call void @mutex_unlock(ptr noundef %drv_mutex9) #15, !dbg !4364
  %18 = load i32, ptr %error, align 4, !dbg !4365
  %tobool10 = icmp ne i32 %18, 0, !dbg !4365
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4367

if.then11:                                        ; preds = %if.end8
  %19 = load ptr, ptr %serio, align 8, !dbg !4368
  %call12 = call i32 @serio_queue_event(ptr noundef %19, ptr noundef null, i32 noundef 1) #15, !dbg !4370
  br label %if.end13, !dbg !4371

if.end13:                                         ; preds = %if.then11, %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !4372
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #16, !dbg !4372
  ret i32 0, !dbg !4373
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_handle_event(ptr noundef %work) #0 align 16 !dbg !4374 {
entry:
  %work.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4376, metadata !DIExpression()), !dbg !4378
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #16, !dbg !4379
  call void @llvm.dbg.declare(metadata ptr %event, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @mutex_lock(ptr noundef @serio_mutex) #15, !dbg !4381
  br label %while.cond, !dbg !4382

while.cond:                                       ; preds = %sw.epilog, %entry
  %call = call ptr @serio_get_event() #15, !dbg !4383
  store ptr %call, ptr %event, align 8, !dbg !4384
  %tobool = icmp ne ptr %call, null, !dbg !4382
  br i1 %tobool, label %while.body, label %while.end, !dbg !4382

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %event, align 8, !dbg !4385
  %type = getelementptr inbounds %struct.serio_event, ptr %0, i32 0, i32 0, !dbg !4387
  %1 = load i32, ptr %type, align 8, !dbg !4387
  switch i32 %1, label %sw.epilog [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb4
    i32 2, label %sw.bb7
    i32 4, label %sw.bb9
  ], !dbg !4388

sw.bb:                                            ; preds = %while.body
  %2 = load ptr, ptr %event, align 8, !dbg !4389
  %object = getelementptr inbounds %struct.serio_event, ptr %2, i32 0, i32 1, !dbg !4391
  %3 = load ptr, ptr %object, align 8, !dbg !4391
  call void @serio_add_port(ptr noundef %3) #15, !dbg !4392
  br label %sw.epilog, !dbg !4393

sw.bb1:                                           ; preds = %while.body
  %4 = load ptr, ptr %event, align 8, !dbg !4394
  %object2 = getelementptr inbounds %struct.serio_event, ptr %4, i32 0, i32 1, !dbg !4395
  %5 = load ptr, ptr %object2, align 8, !dbg !4395
  %call3 = call i32 @serio_reconnect_port(ptr noundef %5) #15, !dbg !4396
  br label %sw.epilog, !dbg !4397

sw.bb4:                                           ; preds = %while.body
  %6 = load ptr, ptr %event, align 8, !dbg !4398
  %object5 = getelementptr inbounds %struct.serio_event, ptr %6, i32 0, i32 1, !dbg !4399
  %7 = load ptr, ptr %object5, align 8, !dbg !4399
  call void @serio_disconnect_port(ptr noundef %7) #15, !dbg !4400
  %8 = load ptr, ptr %event, align 8, !dbg !4401
  %object6 = getelementptr inbounds %struct.serio_event, ptr %8, i32 0, i32 1, !dbg !4402
  %9 = load ptr, ptr %object6, align 8, !dbg !4402
  call void @serio_find_driver(ptr noundef %9) #15, !dbg !4403
  br label %sw.epilog, !dbg !4404

sw.bb7:                                           ; preds = %while.body
  %10 = load ptr, ptr %event, align 8, !dbg !4405
  %object8 = getelementptr inbounds %struct.serio_event, ptr %10, i32 0, i32 1, !dbg !4406
  %11 = load ptr, ptr %object8, align 8, !dbg !4406
  call void @serio_reconnect_subtree(ptr noundef %11) #15, !dbg !4407
  br label %sw.epilog, !dbg !4408

sw.bb9:                                           ; preds = %while.body
  %12 = load ptr, ptr %event, align 8, !dbg !4409
  %object10 = getelementptr inbounds %struct.serio_event, ptr %12, i32 0, i32 1, !dbg !4410
  %13 = load ptr, ptr %object10, align 8, !dbg !4410
  call void @serio_attach_driver(ptr noundef %13) #15, !dbg !4411
  br label %sw.epilog, !dbg !4412

sw.epilog:                                        ; preds = %while.body, %sw.bb9, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %14 = load ptr, ptr %event, align 8, !dbg !4413
  %object11 = getelementptr inbounds %struct.serio_event, ptr %14, i32 0, i32 1, !dbg !4414
  %15 = load ptr, ptr %object11, align 8, !dbg !4414
  %16 = load ptr, ptr %event, align 8, !dbg !4415
  %type12 = getelementptr inbounds %struct.serio_event, ptr %16, i32 0, i32 0, !dbg !4416
  %17 = load i32, ptr %type12, align 8, !dbg !4416
  call void @serio_remove_duplicate_events(ptr noundef %15, i32 noundef %17) #15, !dbg !4417
  %18 = load ptr, ptr %event, align 8, !dbg !4418
  call void @serio_free_event(ptr noundef %18) #15, !dbg !4419
  br label %while.cond, !dbg !4382, !llvm.loop !4420

while.end:                                        ; preds = %while.cond
  call void @mutex_unlock(ptr noundef @serio_mutex) #15, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #16, !dbg !4423
  ret void, !dbg !4423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @serio_get_event() #0 align 16 !dbg !4424 {
entry:
  %event = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #16, !dbg !4439
  call void @llvm.dbg.declare(metadata ptr %event, metadata !4428, metadata !DIExpression()), !dbg !4440
  store ptr null, ptr %event, align 8, !dbg !4440
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4441
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4429, metadata !DIExpression()), !dbg !4442
  br label %do.body, !dbg !4443

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4444

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4445
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4430, metadata !DIExpression()), !dbg !4445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4445
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4434, metadata !DIExpression()), !dbg !4445
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4445
  %conv = zext i1 %cmp to i32, !dbg !4445
  store i32 1, ptr %tmp, align 4, !dbg !4445
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4446
  %0 = load i32, ptr %tmp, align 4, !dbg !4445
  %call = call ptr @spinlock_check(ptr noundef @serio_event_lock) #15, !dbg !4446
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !4446
  store i64 %call2, ptr %flags, align 8, !dbg !4446
  br label %do.cond, !dbg !4446

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4446

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4444

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4444

do.end4:                                          ; preds = %do.cond3
  %call5 = call i32 @list_empty(ptr noundef @serio_event_list) #15, !dbg !4447
  %tobool = icmp ne i32 %call5, 0, !dbg !4447
  br i1 %tobool, label %if.end, label %if.then, !dbg !4448

if.then:                                          ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4449
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4435, metadata !DIExpression()), !dbg !4449
  %1 = load ptr, ptr @serio_event_list, align 8, !dbg !4449
  store ptr %1, ptr %__mptr, align 8, !dbg !4449
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4449
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !4449
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !4449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4450
  %3 = load ptr, ptr %tmp6, align 8, !dbg !4449
  store ptr %3, ptr %event, align 8, !dbg !4451
  %4 = load ptr, ptr %event, align 8, !dbg !4452
  %node = getelementptr inbounds %struct.serio_event, ptr %4, i32 0, i32 3, !dbg !4453
  call void @list_del_init(ptr noundef %node) #15, !dbg !4454
  br label %if.end, !dbg !4455

if.end:                                           ; preds = %if.then, %do.end4
  %5 = load i64, ptr %flags, align 8, !dbg !4456
  call void @spin_unlock_irqrestore(ptr noundef @serio_event_lock, i64 noundef %5) #15, !dbg !4457
  %6 = load ptr, ptr %event, align 8, !dbg !4458
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4459
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #16, !dbg !4459
  ret ptr %6, !dbg !4460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_add_port(ptr noundef %serio) #0 align 16 !dbg !4461 {
entry:
  %serio.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %error = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !4463, metadata !DIExpression()), !dbg !4466
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !4467
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4464, metadata !DIExpression()), !dbg !4468
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !4469
  %parent1 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12, !dbg !4470
  %1 = load ptr, ptr %parent1, align 8, !dbg !4470
  store ptr %1, ptr %parent, align 8, !dbg !4468
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4471
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4465, metadata !DIExpression()), !dbg !4472
  %2 = load ptr, ptr %parent, align 8, !dbg !4473
  %tobool = icmp ne ptr %2, null, !dbg !4473
  br i1 %tobool, label %if.then, label %if.end, !dbg !4475

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %parent, align 8, !dbg !4476
  call void @serio_pause_rx(ptr noundef %3) #15, !dbg !4478
  %4 = load ptr, ptr %serio.addr, align 8, !dbg !4479
  %child_node = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 13, !dbg !4480
  %5 = load ptr, ptr %parent, align 8, !dbg !4481
  %children = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 14, !dbg !4482
  call void @list_add_tail(ptr noundef %child_node, ptr noundef %children) #15, !dbg !4483
  %6 = load ptr, ptr %parent, align 8, !dbg !4484
  call void @serio_continue_rx(ptr noundef %6) #15, !dbg !4485
  br label %if.end, !dbg !4486

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %serio.addr, align 8, !dbg !4487
  %node = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 19, !dbg !4488
  call void @list_add_tail(ptr noundef %node, ptr noundef @serio_list) #15, !dbg !4489
  %8 = load ptr, ptr %serio.addr, align 8, !dbg !4490
  %start = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 10, !dbg !4492
  %9 = load ptr, ptr %start, align 8, !dbg !4492
  %tobool2 = icmp ne ptr %9, null, !dbg !4490
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4493

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %serio.addr, align 8, !dbg !4494
  %start4 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 10, !dbg !4495
  %11 = load ptr, ptr %start4, align 8, !dbg !4495
  %12 = load ptr, ptr %serio.addr, align 8, !dbg !4496
  %call = call i32 %11(ptr noundef %12) #15, !dbg !4494
  br label %if.end5, !dbg !4494

if.end5:                                          ; preds = %if.then3, %if.end
  %13 = load ptr, ptr %serio.addr, align 8, !dbg !4497
  %dev = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18, !dbg !4498
  %call6 = call i32 @device_add(ptr noundef %dev) #15, !dbg !4499
  store i32 %call6, ptr %error, align 4, !dbg !4500
  %14 = load i32, ptr %error, align 4, !dbg !4501
  %tobool7 = icmp ne i32 %14, 0, !dbg !4501
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !4503

if.then8:                                         ; preds = %if.end5
  br label %do.body, !dbg !4504

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !4506

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4506

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %serio.addr, align 8, !dbg !4504
  %dev9 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18, !dbg !4504
  %16 = load ptr, ptr %serio.addr, align 8, !dbg !4504
  %phys = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 2, !dbg !4504
  %arraydecay = getelementptr inbounds [32 x i8], ptr %phys, i64 0, i64 0, !dbg !4504
  %17 = load ptr, ptr %serio.addr, align 8, !dbg !4504
  %name = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 1, !dbg !4504
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !4504
  %18 = load i32, ptr %error, align 4, !dbg !4504
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef @.str.34, ptr noundef %arraydecay, ptr noundef %arraydecay10, i32 noundef %18) #18, !dbg !4504
  br label %if.end11, !dbg !4508

if.end11:                                         ; preds = %do.end, %if.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !4509
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !4509
  ret void, !dbg !4509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_attach_driver(ptr noundef %drv) #0 align 16 !dbg !4510 {
entry:
  %drv.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4512, metadata !DIExpression()), !dbg !4514
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4515
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4513, metadata !DIExpression()), !dbg !4516
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4517
  %driver = getelementptr inbounds %struct.serio_driver, ptr %0, i32 0, i32 10, !dbg !4518
  %call = call i32 @driver_attach(ptr noundef %driver) #15, !dbg !4519
  store i32 %call, ptr %error, align 4, !dbg !4520
  %1 = load i32, ptr %error, align 4, !dbg !4521
  %tobool = icmp ne i32 %1, 0, !dbg !4521
  br i1 %tobool, label %if.then, label %if.end, !dbg !4523

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4524

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4526

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4526

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !4524
  %driver1 = getelementptr inbounds %struct.serio_driver, ptr %2, i32 0, i32 10, !dbg !4524
  %name = getelementptr inbounds %struct.device_driver, ptr %driver1, i32 0, i32 0, !dbg !4524
  %3 = load ptr, ptr %name, align 8, !dbg !4524
  %4 = load i32, ptr %error, align 4, !dbg !4524
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.35, ptr noundef %3, i32 noundef %4) #18, !dbg !4524
  store i32 %call2, ptr %tmp, align 4, !dbg !4526
  %5 = load i32, ptr %tmp, align 4, !dbg !4524
  br label %if.end, !dbg !4528

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !4529
  ret void, !dbg !4529
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4530 dso_local i32 @device_add(ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4531 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4532 dso_local i32 @driver_attach(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4533 dso_local i32 @bus_register(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978}
!llvm.ident = !{!1979}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author205", scope: !2, file: !3, line: 21, type: !1968, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/serio/.serio.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/serio/serio\22 -D KBUILD_BASENAME=\22serio\22 -D KBUILD_MODNAME=\22serio\22 -D __KBUILD_MODNAME=kmod_serio -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/serio/serio.ll drivers/input/serio/serio.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !1708, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/serio/serio.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90ee948fe0af00169a6b5240d7f2b7a9")
!4 = !{!5, !12, !18, !25, !30, !38, !46, !55, !60, !65, !71, !78, !84, !91, !96, !106}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !13, line: 26, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !19, line: 487, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!22 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!23 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!24 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !31, line: 620, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!34 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!35 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!36 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!37 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !31, line: 597, baseType: !39, size: 32, elements: !40)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!42 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!43 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!44 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!45 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !19, line: 547, baseType: !7, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54}
!48 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!49 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!50 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!51 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!52 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!53 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!54 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !19, line: 564, baseType: !7, size: 32, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!58 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!59 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !19, line: 577, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!63 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!64 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !19, line: 503, baseType: !7, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!68 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!69 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!70 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !72, line: 312, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!75 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!76 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!77 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !79, line: 45, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!82 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!83 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "serio_event_type", file: !3, line: 129, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90}
!86 = !DIEnumerator(name: "SERIO_RESCAN_PORT", value: 0)
!87 = !DIEnumerator(name: "SERIO_RECONNECT_PORT", value: 1)
!88 = !DIEnumerator(name: "SERIO_RECONNECT_SUBTREE", value: 2)
!89 = !DIEnumerator(name: "SERIO_REGISTER_PORT", value: 3)
!90 = !DIEnumerator(name: "SERIO_ATTACH_DRIVER", value: 4)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 10, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!93 = !{!94, !95}
!94 = !DIEnumerator(name: "false", value: 0)
!95 = !DIEnumerator(name: "true", value: 1)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !97, line: 364, baseType: !7, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!98 = !{!99, !100, !101, !102, !103, !104, !105}
!99 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!104 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!105 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 30, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!109 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!110 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!111 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!112 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!113 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!114 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!115 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!116 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!117 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!118 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!119 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!120 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!121 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!122 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!123 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!124 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!125 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!126 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!127 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!128 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!129 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!130 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!131 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!132 = !{!133, !134, !1696, !1703, !366, !1704, !1300, !228, !1706}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !136, line: 21, size: 8768, elements: !137)
!136 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!137 = !{!138, !139, !144, !145, !149, !153, !164, !204, !208, !212, !216, !217, !218, !219, !225, !226, !227, !1691, !1692, !1693, !1694}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !135, file: !136, line: 22, baseType: !133, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !136, line: 24, baseType: !140, size: 256, offset: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !142)
!141 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !{!143}
!143 = !DISubrange(count: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !135, file: !136, line: 25, baseType: !140, size: 256, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !135, file: !136, line: 26, baseType: !146, size: 1024, offset: 576)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1024, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !135, file: !136, line: 28, baseType: !150, size: 8, offset: 1600)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !151, line: 35, baseType: !152)
!151 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !135, file: !136, line: 30, baseType: !154, size: 32, offset: 1608)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !155, line: 256, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!156 = !{!157, !161, !162, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !155, line: 257, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !159, line: 21, baseType: !160)
!159 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!160 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !154, file: !155, line: 258, baseType: !158, size: 8, offset: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !154, file: !155, line: 259, baseType: !158, size: 8, offset: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !154, file: !155, line: 260, baseType: !158, size: 8, offset: 24)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !135, file: !136, line: 33, baseType: !165, size: 32, offset: 1664)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !166, line: 29, baseType: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !166, line: 17, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !166, line: 18, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !166, line: 18, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !170, file: !166, line: 19, baseType: !173, size: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !174, line: 14, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !173, file: !174, line: 15, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !178, line: 44, baseType: !179)
!178 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !178, line: 14, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 15, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 15, size: 32, elements: !183)
!183 = !{!184, !189, !196}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !182, file: !178, line: 16, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !151, line: 174, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 172, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !186, file: !151, line: 173, baseType: !39, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !178, line: 24, baseType: !190, size: 16)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !178, line: 24, size: 16, elements: !191)
!191 = !{!192, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !190, file: !178, line: 25, baseType: !193, size: 8)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !194, line: 17, baseType: !158)
!194 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !190, file: !178, line: 26, baseType: !193, size: 8, offset: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !178, line: 28, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !178, line: 28, size: 32, elements: !198)
!198 = !{!199, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !197, file: !178, line: 29, baseType: !200, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !194, line: 19, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !159, line: 24, baseType: !202)
!202 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !197, file: !178, line: 30, baseType: !200, size: 16, offset: 16)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !135, file: !136, line: 35, baseType: !205, size: 64, offset: 1728)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!39, !134, !160}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !135, file: !136, line: 36, baseType: !209, size: 64, offset: 1792)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!39, !134}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !135, file: !136, line: 37, baseType: !213, size: 64, offset: 1856)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !134}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !135, file: !136, line: 38, baseType: !209, size: 64, offset: 1920)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !135, file: !136, line: 39, baseType: !213, size: 64, offset: 1984)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !136, line: 41, baseType: !134, size: 64, offset: 2048)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !135, file: !136, line: 43, baseType: !220, size: 128, offset: 2112)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !151, line: 190, size: 128, elements: !221)
!221 = !{!222, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !151, line: 191, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !220, file: !151, line: 191, baseType: !223, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !135, file: !136, line: 44, baseType: !220, size: 128, offset: 2240)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !135, file: !136, line: 46, baseType: !7, size: 32, offset: 2368)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !135, file: !136, line: 52, baseType: !228, size: 64, offset: 2432)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !136, line: 68, size: 1792, elements: !230)
!230 = !{!231, !234, !237, !238, !239, !244, !248, !249, !250, !251, !252}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !229, file: !136, line: 69, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !229, file: !136, line: 71, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !229, file: !136, line: 72, baseType: !150, size: 8, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !229, file: !136, line: 74, baseType: !213, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !229, file: !136, line: 75, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !134, !160, !7}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !229, file: !136, line: 76, baseType: !245, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!39, !134, !228}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !229, file: !136, line: 77, baseType: !209, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !229, file: !136, line: 78, baseType: !209, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !229, file: !136, line: 79, baseType: !213, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !229, file: !136, line: 80, baseType: !213, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !229, file: !136, line: 82, baseType: !253, size: 1152, offset: 640)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 96, size: 1152, elements: !254)
!254 = !{!255, !256, !1299, !1653, !1654, !1655, !1656, !1665, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !79, line: 97, baseType: !232, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !253, file: !79, line: 98, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !260, line: 80, size: 1344, elements: !261)
!260 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!261 = !{!262, !263, !264, !878, !879, !880, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1289, !1290, !1291, !1292, !1293, !1294, !1298}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !260, line: 81, baseType: !232, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !259, file: !260, line: 82, baseType: !232, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !259, file: !260, line: 83, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !269, line: 84, size: 320, elements: !270)
!269 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!270 = !{!271, !272, !849, !874, !876}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !269, line: 85, baseType: !232, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !268, file: !269, line: 86, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !277, !354, !39}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !151, line: 24, baseType: !202)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !279, line: 64, size: 512, elements: !280)
!279 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!280 = !{!281, !282, !283, !284, !331, !424, !834, !844, !845, !846, !847, !848}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !279, line: 65, baseType: !232, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !278, file: !279, line: 66, baseType: !220, size: 128, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !278, file: !279, line: 67, baseType: !277, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !278, file: !279, line: 68, baseType: !285, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !279, line: 168, size: 768, elements: !287)
!287 = !{!288, !289, !290, !291}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !286, file: !279, line: 169, baseType: !220, size: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !286, file: !279, line: 170, baseType: !165, size: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !286, file: !279, line: 171, baseType: !278, size: 512, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !286, file: !279, line: 172, baseType: !292, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !279, line: 133, size: 192, elements: !295)
!295 = !{!296, !303, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !294, file: !279, line: 134, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!39, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !279, line: 135, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!232, !301}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !294, file: !279, line: 136, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!39, !301, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !279, line: 125, size: 20736, elements: !315)
!315 = !{!316, !321, !325, !326, !330}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !314, file: !279, line: 126, baseType: !317, size: 192)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 192, elements: !319)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!319 = !{!320}
!320 = !DISubrange(count: 3)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !314, file: !279, line: 127, baseType: !322, size: 4096, offset: 192)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 4096, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !314, file: !279, line: 128, baseType: !39, size: 32, offset: 4288)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !314, file: !279, line: 129, baseType: !327, size: 16384, offset: 4320)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 16384, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 2048)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !314, file: !279, line: 130, baseType: !39, size: 32, offset: 20704)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !278, file: !279, line: 69, baseType: !332, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !279, line: 116, size: 384, elements: !335)
!335 = !{!336, !340, !367, !368, !401, !405}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !334, file: !279, line: 117, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !277}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !334, file: !279, line: 118, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !269, line: 254, size: 128, elements: !344)
!344 = !{!345, !359}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !343, file: !269, line: 255, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !277, !354, !318}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !151, line: 66, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !351, line: 73, baseType: !352)
!351 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !351, line: 15, baseType: !353)
!353 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !269, line: 30, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !269, line: 31, baseType: !232, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !355, file: !269, line: 32, baseType: !276, size: 16, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !343, file: !269, line: 256, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!349, !277, !354, !232, !363}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 61, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !351, line: 72, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !351, line: 16, baseType: !366)
!366 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !334, file: !279, line: 119, baseType: !265, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !334, file: !279, line: 120, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !301}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !13, line: 39, size: 384, elements: !375)
!375 = !{!376, !377, !381, !385, !393, !397}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !374, file: !13, line: 40, baseType: !12, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !374, file: !13, line: 41, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!150}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !374, file: !13, line: 42, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!133}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !374, file: !13, line: 43, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !391}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !13, line: 19, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !374, file: !13, line: 44, baseType: !394, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!389}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !374, file: !13, line: 45, baseType: !398, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !133}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !334, file: !279, line: 121, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!389, !301}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !334, file: !279, line: 122, baseType: !406, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !301, !409, !417}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !411, line: 23, baseType: !412)
!411 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 21, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !412, file: !411, line: 22, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !151, line: 37, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !351, line: 49, baseType: !7)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !411, line: 28, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 26, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !419, file: !411, line: 27, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !151, line: 38, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !351, line: 50, baseType: !7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !278, file: !279, line: 70, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !427, line: 190, size: 1152, elements: !428)
!427 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!428 = !{!429, !430, !431, !432, !433, !441, !442, !443, !826, !827, !828, !829, !830, !833}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !426, file: !427, line: 191, baseType: !185, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !426, file: !427, line: 192, baseType: !185, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !426, file: !427, line: 202, baseType: !425, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !427, line: 203, baseType: !232, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !426, file: !427, line: 205, baseType: !434, size: 192, align: 64, offset: 192)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !435, line: 5, size: 192, align: 64, elements: !436)
!435 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!436 = !{!437, !438, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !434, file: !435, line: 6, baseType: !366, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !434, file: !435, line: 7, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !434, file: !435, line: 8, baseType: !439, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !426, file: !427, line: 207, baseType: !389, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !426, file: !427, line: 208, baseType: !7, size: 32, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 209, baseType: !444, size: 256, offset: 512)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 209, size: 256, elements: !445)
!445 = !{!446, !458, !462}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !444, file: !427, line: 210, baseType: !447, size: 256)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !427, line: 153, size: 256, elements: !448)
!448 = !{!449, !450, !454, !457}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !447, file: !427, line: 154, baseType: !366, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !447, file: !427, line: 156, baseType: !451, size: 64, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !435, line: 12, size: 64, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !451, file: !435, line: 13, baseType: !439, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !447, file: !427, line: 162, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !427, line: 162, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !447, file: !427, line: 167, baseType: !366, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !444, file: !427, line: 211, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !427, line: 170, size: 64, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !459, file: !427, line: 171, baseType: !425, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !444, file: !427, line: 212, baseType: !463, size: 256)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !427, line: 174, size: 256, elements: !464)
!464 = !{!465, !821, !824, !825}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !463, file: !427, line: 175, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !427, line: 271, size: 768, elements: !469)
!469 = !{!470, !521, !525, !529, !536, !540, !544, !548, !549, !550, !551, !559}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !468, file: !427, line: 276, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!39, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !427, line: 251, size: 1216, elements: !476)
!476 = !{!477, !478, !482, !486, !487, !509, !510, !511, !512, !513, !514, !515, !516}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !475, file: !427, line: 253, baseType: !425, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !475, file: !427, line: 254, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !481, line: 537, flags: DIFlagFwdDecl)
!481 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !475, file: !427, line: 255, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !485, line: 66, flags: DIFlagFwdDecl)
!485 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!486 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !475, file: !427, line: 256, baseType: !133, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !475, file: !427, line: 259, baseType: !488, size: 256, offset: 256)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !489, line: 66, size: 256, elements: !490)
!489 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!490 = !{!491, !501, !503, !508}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !488, file: !489, line: 67, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !493, line: 13, baseType: !494)
!493 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !151, line: 181, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 179, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !495, file: !151, line: 180, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !194, line: 22, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !159, line: 30, baseType: !500)
!500 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !488, file: !489, line: 68, baseType: !502, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !174, line: 23, baseType: !173)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !488, file: !489, line: 70, baseType: !504, size: 32, offset: 96)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !505, line: 15, size: 32, elements: !506)
!505 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !504, file: !505, line: 20, baseType: !185, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !488, file: !489, line: 72, baseType: !220, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !475, file: !427, line: 260, baseType: !488, size: 256, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !475, file: !427, line: 261, baseType: !39, size: 32, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !427, line: 262, baseType: !220, size: 128, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !475, file: !427, line: 263, baseType: !318, size: 64, offset: 960)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !475, file: !427, line: 265, baseType: !363, size: 64, offset: 1024)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !475, file: !427, line: 266, baseType: !150, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !475, file: !427, line: 267, baseType: !150, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !475, file: !427, line: 268, baseType: !517, size: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !520, line: 694, flags: DIFlagFwdDecl)
!520 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!521 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !468, file: !427, line: 277, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !474}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !468, file: !427, line: 290, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!39, !483, !133}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !468, file: !427, line: 292, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!133, !483, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !151, line: 52, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !351, line: 88, baseType: !500)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !468, file: !427, line: 293, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!133, !483, !133, !533}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !468, file: !427, line: 294, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !483, !133}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !468, file: !427, line: 296, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!349, !474, !318, !363, !534}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !468, file: !427, line: 306, baseType: !363, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !468, file: !427, line: 313, baseType: !150, size: 8, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !468, file: !427, line: 314, baseType: !545, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !468, file: !427, line: 317, baseType: !552, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!555, !474, !557}
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !556, line: 59, baseType: !7)
!556 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !427, line: 31, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !468, file: !427, line: 320, baseType: !560, size: 64, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!39, !474, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !520, line: 625, size: 1344, elements: !565)
!565 = !{!566, !583, !782, !788, !795, !796, !801, !802, !807, !808, !811, !812, !813, !814, !815, !816, !819}
!566 = !DIDerivedType(tag: DW_TAG_member, scope: !564, file: !520, line: 628, baseType: !567, size: 128)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !520, line: 628, size: 128, elements: !568)
!568 = !{!569, !574}
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !520, line: 629, baseType: !570, size: 128)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !567, file: !520, line: 629, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !570, file: !520, line: 631, baseType: !366, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !570, file: !520, line: 632, baseType: !366, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !567, file: !520, line: 635, baseType: !575, size: 128, align: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !151, line: 232, size: 128, align: 64, elements: !576)
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !151, line: 233, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !575, file: !151, line: 234, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !578}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !564, file: !520, line: 639, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !520, line: 733, size: 10240, elements: !586)
!586 = !{!587, !778}
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !520, line: 734, baseType: !588, size: 10240)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !585, file: !520, line: 734, size: 10240, elements: !589)
!589 = !{!590, !594, !608, !612, !613, !614, !615, !616, !617, !625, !626, !627, !636, !637, !638, !639, !640, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !682, !696, !699, !745, !746, !747, !750, !753, !754, !757, !758, !759, !766, !767}
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !520, line: 739, baseType: !591, size: 512, align: 512)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !520, line: 739, size: 512, align: 512, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !591, file: !520, line: 747, baseType: !185, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !588, file: !520, line: 750, baseType: !595, size: 128, offset: 512)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !596, line: 218, size: 128, elements: !597)
!596 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!597 = !{!598, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !596, line: 219, baseType: !599, size: 32)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !596, line: 219, size: 32, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !599, file: !596, line: 220, baseType: !165, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !599, file: !596, line: 221, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !596, line: 197, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 197, elements: !605)
!605 = !{}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !595, file: !596, line: 223, baseType: !7, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !595, file: !596, line: 224, baseType: !133, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !588, file: !520, line: 752, baseType: !609, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!366, !479, !366, !366, !366, !366}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !588, file: !520, line: 756, baseType: !366, size: 64, offset: 704)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !588, file: !520, line: 757, baseType: !366, size: 64, offset: 768)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !588, file: !520, line: 760, baseType: !366, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !588, file: !520, line: 761, baseType: !366, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !588, file: !520, line: 763, baseType: !366, size: 64, offset: 960)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !588, file: !520, line: 764, baseType: !618, size: 64, offset: 1024)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !481, line: 299, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 299, size: 64, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !620, file: !481, line: 299, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !624, line: 18, baseType: !366)
!624 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !588, file: !520, line: 773, baseType: !185, size: 32, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !588, file: !520, line: 785, baseType: !185, size: 32, offset: 1120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !588, file: !520, line: 795, baseType: !628, size: 64, offset: 1152)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !520, line: 726, size: 128, elements: !630)
!630 = !{!631, !635}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !629, file: !520, line: 727, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !194, line: 23, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !159, line: 31, baseType: !634)
!634 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !629, file: !520, line: 728, baseType: !39, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !588, file: !520, line: 801, baseType: !366, size: 64, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !588, file: !520, line: 804, baseType: !492, size: 64, offset: 1280)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !588, file: !520, line: 806, baseType: !39, size: 32, offset: 1344)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !588, file: !520, line: 808, baseType: !165, size: 32, offset: 1376)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !588, file: !520, line: 823, baseType: !641, size: 320, offset: 1408)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !642, line: 48, size: 320, elements: !643)
!642 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!643 = !{!644, !645, !646, !647, !648}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !641, file: !642, line: 49, baseType: !492, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !641, file: !642, line: 55, baseType: !492, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !641, file: !642, line: 57, baseType: !504, size: 32, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !641, file: !642, line: 59, baseType: !502, size: 32, offset: 160)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !641, file: !642, line: 60, baseType: !220, size: 128, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !588, file: !520, line: 825, baseType: !220, size: 128, offset: 1728)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !588, file: !520, line: 845, baseType: !39, size: 32, offset: 1856)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !588, file: !520, line: 849, baseType: !366, size: 64, offset: 1920)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !588, file: !520, line: 850, baseType: !366, size: 64, offset: 1984)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !588, file: !520, line: 852, baseType: !366, size: 64, offset: 2048)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !588, file: !520, line: 853, baseType: !366, size: 64, offset: 2112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !588, file: !520, line: 854, baseType: !494, size: 64, offset: 2176)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !588, file: !520, line: 855, baseType: !366, size: 64, offset: 2240)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !588, file: !520, line: 856, baseType: !366, size: 64, offset: 2304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !588, file: !520, line: 857, baseType: !366, size: 64, offset: 2368)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !588, file: !520, line: 858, baseType: !366, size: 64, offset: 2432)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !588, file: !520, line: 865, baseType: !661, size: 32, offset: 2496)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !662, line: 69, baseType: !663)
!662 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !662, line: 64, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !663, file: !662, line: 65, baseType: !7, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !588, file: !520, line: 867, baseType: !165, size: 32, offset: 2528)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !588, file: !520, line: 869, baseType: !366, size: 64, offset: 2560)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !588, file: !520, line: 869, baseType: !366, size: 64, offset: 2624)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !588, file: !520, line: 869, baseType: !366, size: 64, offset: 2688)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !588, file: !520, line: 869, baseType: !366, size: 64, offset: 2752)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !588, file: !520, line: 870, baseType: !366, size: 64, offset: 2816)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !588, file: !520, line: 870, baseType: !366, size: 64, offset: 2880)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !588, file: !520, line: 870, baseType: !366, size: 64, offset: 2944)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !588, file: !520, line: 871, baseType: !366, size: 64, offset: 3008)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !588, file: !520, line: 871, baseType: !366, size: 64, offset: 3072)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !588, file: !520, line: 871, baseType: !366, size: 64, offset: 3136)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !588, file: !520, line: 871, baseType: !366, size: 64, offset: 3200)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !588, file: !520, line: 873, baseType: !679, size: 3328, offset: 3264)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 3328, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 52)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !588, file: !520, line: 875, baseType: !683, size: 1280, offset: 6592)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 1280, elements: !694)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !685, line: 22, size: 320, elements: !686)
!685 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!686 = !{!687, !688, !689, !690}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !684, file: !685, line: 23, baseType: !502, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !684, file: !685, line: 24, baseType: !498, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !684, file: !685, line: 26, baseType: !220, size: 128, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !684, file: !685, line: 28, baseType: !691, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !194, line: 20, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !159, line: 26, baseType: !39)
!694 = !{!695}
!695 = !DISubrange(count: 4)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !588, file: !520, line: 877, baseType: !697, size: 64, offset: 7872)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !520, line: 877, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !588, file: !520, line: 880, baseType: !700, size: 1088, offset: 7936)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !701, line: 72, baseType: !702)
!701 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 23, size: 1088, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !711, !712, !713, !714, !739, !740, !741}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !702, file: !701, line: 28, baseType: !632, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !702, file: !701, line: 38, baseType: !494, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !702, file: !701, line: 40, baseType: !366, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !702, file: !701, line: 43, baseType: !641, size: 320, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !702, file: !701, line: 44, baseType: !709, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !701, line: 44, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !701, line: 48, baseType: !366, size: 64, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !702, file: !701, line: 59, baseType: !488, size: 256, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !702, file: !701, line: 60, baseType: !133, size: 64, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !702, file: !701, line: 61, baseType: !715, size: 64, offset: 960)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !718, line: 13, size: 1216, elements: !719)
!718 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !717, file: !718, line: 14, baseType: !133, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !717, file: !718, line: 15, baseType: !366, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !717, file: !718, line: 17, baseType: !366, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !717, file: !718, line: 17, baseType: !366, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !717, file: !718, line: 18, baseType: !366, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !717, file: !718, line: 18, baseType: !366, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !717, file: !718, line: 19, baseType: !389, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !717, file: !718, line: 21, baseType: !353, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !717, file: !718, line: 23, baseType: !353, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !717, file: !718, line: 24, baseType: !353, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !717, file: !718, line: 25, baseType: !353, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !717, file: !718, line: 26, baseType: !353, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !717, file: !718, line: 27, baseType: !353, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !717, file: !718, line: 28, baseType: !353, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !717, file: !718, line: 29, baseType: !353, size: 64, offset: 896)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !717, file: !718, line: 30, baseType: !353, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !717, file: !718, line: 31, baseType: !353, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !717, file: !718, line: 32, baseType: !353, size: 64, offset: 1088)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !717, file: !718, line: 33, baseType: !353, size: 64, offset: 1152)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !702, file: !701, line: 63, baseType: !185, size: 32, offset: 1024)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !702, file: !701, line: 69, baseType: !200, size: 16, offset: 1056)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !702, file: !701, line: 70, baseType: !742, size: 16, offset: 1072)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !194, line: 18, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !159, line: 23, baseType: !744)
!744 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !520, line: 882, baseType: !366, size: 64, offset: 9024)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !588, file: !520, line: 885, baseType: !165, size: 32, offset: 9088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !588, file: !520, line: 886, baseType: !748, size: 64, offset: 9152)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !520, line: 732, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !588, file: !520, line: 901, baseType: !751, size: 64, offset: 9216)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !411, line: 18, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !588, file: !520, line: 904, baseType: !479, size: 64, offset: 9280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !588, file: !520, line: 906, baseType: !755, size: 64, offset: 9344)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !520, line: 906, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !588, file: !520, line: 930, baseType: !185, size: 32, offset: 9408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !588, file: !520, line: 933, baseType: !185, size: 32, offset: 9440)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !588, file: !520, line: 935, baseType: !760, size: 64, offset: 9472)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !761, line: 103, size: 64, elements: !762)
!761 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !760, file: !761, line: 104, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !761, line: 101, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !588, file: !520, line: 940, baseType: !492, size: 64, offset: 9536)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !588, file: !520, line: 942, baseType: !768, size: 256, offset: 9600)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !107, line: 98, size: 256, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !768, file: !107, line: 99, baseType: !492, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !768, file: !107, line: 100, baseType: !220, size: 128, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !768, file: !107, line: 101, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !107, line: 21, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !585, file: !520, line: 986, baseType: !779, offset: 10240)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: -1)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !564, file: !520, line: 640, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !481, line: 297, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !481, line: 297, size: 64, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !784, file: !481, line: 297, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !624, line: 19, baseType: !366)
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !564, file: !520, line: 646, baseType: !789, size: 64, offset: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !520, line: 646, size: 64, elements: !790)
!790 = !{!791, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !789, file: !520, line: 647, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !520, line: 542, baseType: !366)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !789, file: !520, line: 648, baseType: !793, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !564, file: !520, line: 666, baseType: !39, size: 32, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !564, file: !520, line: 667, baseType: !797, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !520, line: 579, size: 320, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !520, line: 580, baseType: !641, size: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !564, file: !520, line: 670, baseType: !150, size: 8, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !564, file: !520, line: 681, baseType: !803, size: 256, offset: 512)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !564, file: !520, line: 678, size: 256, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !803, file: !520, line: 679, baseType: !434, size: 192, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !803, file: !520, line: 680, baseType: !366, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !564, file: !520, line: 689, baseType: !220, size: 128, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !564, file: !520, line: 691, baseType: !809, size: 64, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !520, line: 691, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !564, file: !520, line: 694, baseType: !517, size: 64, offset: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !564, file: !520, line: 697, baseType: !366, size: 64, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !564, file: !520, line: 699, baseType: !479, size: 64, offset: 1088)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !564, file: !520, line: 700, baseType: !133, size: 64, offset: 1152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !564, file: !520, line: 711, baseType: !492, size: 64, offset: 1216)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !564, file: !520, line: 717, baseType: !817, size: 64, offset: 1280)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !520, line: 717, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !564, file: !520, line: 722, baseType: !820, offset: 1344)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !520, line: 570, elements: !605)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !463, file: !427, line: 176, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !427, line: 35, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !463, file: !427, line: 177, baseType: !534, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !463, file: !427, line: 178, baseType: !425, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !426, file: !427, line: 215, baseType: !133, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !426, file: !427, line: 221, baseType: !632, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !427, line: 223, baseType: !202, size: 16, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !426, file: !427, line: 224, baseType: !276, size: 16, offset: 912)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !426, file: !427, line: 225, baseType: !831, size: 64, offset: 960)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !427, line: 36, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !426, file: !427, line: 227, baseType: !575, size: 128, align: 64, offset: 1024)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !278, file: !279, line: 71, baseType: !835, size: 32, offset: 448)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !836, line: 19, size: 32, elements: !837)
!836 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !835, file: !836, line: 20, baseType: !839, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !840, line: 113, baseType: !841)
!840 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !840, line: 111, size: 32, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !841, file: !840, line: 112, baseType: !185, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !278, file: !279, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !278, file: !279, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !278, file: !279, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !278, file: !279, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !278, file: !279, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !268, file: !269, line: 88, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!276, !277, !853, !39}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !269, line: 175, size: 512, elements: !855)
!855 = !{!856, !857, !858, !859, !865, !869, !870}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !854, file: !269, line: 176, baseType: !355, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !269, line: 177, baseType: !363, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !854, file: !269, line: 178, baseType: !133, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !854, file: !269, line: 179, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !520, line: 32, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !854, file: !269, line: 180, baseType: !866, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!349, !479, !277, !853, !318, !534, !363}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !854, file: !269, line: 182, baseType: !866, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !854, file: !269, line: 184, baseType: !871, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!39, !479, !277, !853, !563}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !268, file: !269, line: 90, baseType: !875, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !268, file: !269, line: 91, baseType: !877, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !259, file: !260, line: 84, baseType: !265, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !259, file: !260, line: 85, baseType: !265, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !259, file: !260, line: 87, baseType: !881, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!39, !884, !948}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !19, line: 705, size: 5824, elements: !886)
!886 = !{!887, !888, !889, !892, !893, !946, !947, !949, !950, !951, !952, !959, !1162, !1175, !1185, !1189, !1191, !1192, !1193, !1197, !1204, !1205, !1208, !1211, !1215, !1218, !1219, !1222, !1223, !1224, !1225, !1255, !1256, !1257, !1260, !1263, !1272, !1273, !1274, !1275, !1276, !1277}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !885, file: !19, line: 706, baseType: !278, size: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !885, file: !19, line: 707, baseType: !884, size: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !885, file: !19, line: 709, baseType: !890, size: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !19, line: 37, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !885, file: !19, line: 711, baseType: !232, size: 64, offset: 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !19, line: 712, baseType: !894, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !19, line: 89, size: 384, elements: !897)
!897 = !{!898, !899, !900, !906, !911, !915}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !896, file: !19, line: 90, baseType: !232, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !896, file: !19, line: 91, baseType: !265, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !896, file: !19, line: 92, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!39, !904, !313}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !896, file: !19, line: 93, baseType: !907, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!318, !904, !910, !409, !417}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !896, file: !19, line: 95, baseType: !912, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !884}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !896, file: !19, line: 97, baseType: !916, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !31, line: 286, size: 1472, elements: !919)
!919 = !{!920, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !918, file: !31, line: 287, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!39, !884}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !918, file: !31, line: 288, baseType: !912, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !918, file: !31, line: 289, baseType: !921, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !918, file: !31, line: 290, baseType: !921, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !918, file: !31, line: 291, baseType: !921, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !918, file: !31, line: 292, baseType: !921, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !918, file: !31, line: 293, baseType: !921, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !918, file: !31, line: 294, baseType: !921, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !918, file: !31, line: 295, baseType: !921, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !918, file: !31, line: 296, baseType: !921, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !918, file: !31, line: 297, baseType: !921, size: 64, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !918, file: !31, line: 298, baseType: !921, size: 64, offset: 704)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !918, file: !31, line: 299, baseType: !921, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !918, file: !31, line: 300, baseType: !921, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !918, file: !31, line: 301, baseType: !921, size: 64, offset: 896)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !918, file: !31, line: 302, baseType: !921, size: 64, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !918, file: !31, line: 303, baseType: !921, size: 64, offset: 1024)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !918, file: !31, line: 304, baseType: !921, size: 64, offset: 1088)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !918, file: !31, line: 305, baseType: !921, size: 64, offset: 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !918, file: !31, line: 306, baseType: !921, size: 64, offset: 1216)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !918, file: !31, line: 307, baseType: !921, size: 64, offset: 1280)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !918, file: !31, line: 308, baseType: !921, size: 64, offset: 1344)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !918, file: !31, line: 309, baseType: !921, size: 64, offset: 1408)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !885, file: !19, line: 714, baseType: !257, size: 64, offset: 768)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !885, file: !19, line: 715, baseType: !948, size: 64, offset: 832)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !885, file: !19, line: 717, baseType: !133, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !885, file: !19, line: 719, baseType: !133, size: 64, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !885, file: !19, line: 721, baseType: !488, size: 256, offset: 1024)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !885, file: !19, line: 725, baseType: !953, size: 448, offset: 1280)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !19, line: 517, size: 448, elements: !954)
!954 = !{!955, !956, !957, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !953, file: !19, line: 518, baseType: !220, size: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !953, file: !19, line: 519, baseType: !220, size: 128, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !953, file: !19, line: 520, baseType: !220, size: 128, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !953, file: !19, line: 521, baseType: !18, size: 32, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !885, file: !19, line: 726, baseType: !960, size: 2496, offset: 1728)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !31, line: 663, size: 2496, elements: !961)
!961 = !{!962, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !980, !981, !982, !993, !1039, !1040, !1041, !1042, !1043, !1044, !1115, !1116, !1117, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1155, !1159}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !960, file: !31, line: 664, baseType: !963, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !31, line: 60, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !31, line: 58, size: 32, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !964, file: !31, line: 59, baseType: !39, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !960, file: !31, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !960, file: !31, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !960, file: !31, line: 667, baseType: !150, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !960, file: !31, line: 668, baseType: !150, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !960, file: !31, line: 669, baseType: !150, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !960, file: !31, line: 670, baseType: !150, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !960, file: !31, line: 671, baseType: !150, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !960, file: !31, line: 672, baseType: !150, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !960, file: !31, line: 673, baseType: !150, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !960, file: !31, line: 674, baseType: !150, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !960, file: !31, line: 675, baseType: !978, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !194, line: 21, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !159, line: 27, baseType: !7)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !960, file: !31, line: 676, baseType: !165, size: 32, offset: 96)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !960, file: !31, line: 678, baseType: !220, size: 128, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !960, file: !31, line: 679, baseType: !983, size: 256, offset: 256)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !984, line: 26, size: 256, elements: !985)
!984 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !983, file: !984, line: 27, baseType: !7, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !983, file: !984, line: 28, baseType: !988, size: 192, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !989, line: 43, size: 192, elements: !990)
!989 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !988, file: !989, line: 44, baseType: !502, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !988, file: !989, line: 45, baseType: !220, size: 128, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !960, file: !31, line: 680, baseType: !994, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !996, line: 43, size: 1536, elements: !997)
!996 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!997 = !{!998, !999, !1000, !1001, !1002, !1005, !1023, !1024, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !995, file: !996, line: 44, baseType: !232, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !995, file: !996, line: 45, baseType: !39, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !995, file: !996, line: 46, baseType: !220, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !996, line: 47, baseType: !165, size: 32, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !995, file: !996, line: 48, baseType: !1003, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !31, line: 629, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !995, file: !996, line: 49, baseType: !1006, size: 320, offset: 384)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1007, line: 11, size: 320, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1008 = !{!1009, !1016, !1017, !1022}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1006, file: !1007, line: 16, baseType: !1010, size: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !151, line: 198, size: 128, elements: !1011)
!1011 = !{!1012, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1010, file: !151, line: 199, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1010, file: !151, line: 199, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1006, file: !1007, line: 17, baseType: !366, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1006, file: !1007, line: 18, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1021}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1006, file: !1007, line: 19, baseType: !978, size: 32, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !995, file: !996, line: 50, baseType: !366, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !995, file: !996, line: 51, baseType: !1025, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1026, line: 29, baseType: !498)
!1026 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !995, file: !996, line: 52, baseType: !1025, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !995, file: !996, line: 53, baseType: !1025, size: 64, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !995, file: !996, line: 54, baseType: !1025, size: 64, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !995, file: !996, line: 55, baseType: !1025, size: 64, offset: 1024)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !995, file: !996, line: 56, baseType: !366, size: 64, offset: 1088)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !995, file: !996, line: 57, baseType: !366, size: 64, offset: 1152)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !995, file: !996, line: 58, baseType: !366, size: 64, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !995, file: !996, line: 59, baseType: !366, size: 64, offset: 1280)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !995, file: !996, line: 60, baseType: !366, size: 64, offset: 1344)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !995, file: !996, line: 61, baseType: !884, size: 64, offset: 1408)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !995, file: !996, line: 62, baseType: !150, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !995, file: !996, line: 63, baseType: !150, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !960, file: !31, line: 681, baseType: !150, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !960, file: !31, line: 682, baseType: !150, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !960, file: !31, line: 683, baseType: !150, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !960, file: !31, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !960, file: !31, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !960, file: !31, line: 690, baseType: !1045, size: 512, offset: 640)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1046)
!1046 = !{!1047, !1053, !1054, !1059, !1111, !1112, !1113, !1114}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1045, file: !26, line: 119, baseType: !1048, size: 256)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1049, line: 9, size: 256, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1048, file: !1049, line: 10, baseType: !434, size: 192, align: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1048, file: !1049, line: 11, baseType: !1025, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1045, file: !26, line: 120, baseType: !1025, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1045, file: !26, line: 121, baseType: !1055, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!25, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1045, file: !26, line: 122, baseType: !1060, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1062)
!1062 = !{!1063, !1088, !1089, !1092, !1097, !1098, !1106, !1110}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1061, file: !26, line: 160, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1065, file: !26, line: 216, baseType: !502, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1065, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1065, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1065, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1065, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1065, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1065, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1065, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1065, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1065, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1065, file: !26, line: 227, baseType: !202, size: 16, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1065, file: !26, line: 228, baseType: !202, size: 16, offset: 208)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1065, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1065, file: !26, line: 235, baseType: !1025, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1065, file: !26, line: 236, baseType: !1058, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1065, file: !26, line: 237, baseType: !1025, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1065, file: !26, line: 238, baseType: !1058, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1065, file: !26, line: 239, baseType: !1085, size: 4096, align: 512, offset: 512)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 4096, align: 512, elements: !1086)
!1086 = !{!1087}
!1087 = !DISubrange(count: 8)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1061, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1061, file: !26, line: 162, baseType: !1090, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !151, line: 32, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !351, line: 96, baseType: !39)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1061, file: !26, line: 163, baseType: !1093, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !662, line: 274, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !662, line: 274, size: 32, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1094, file: !662, line: 274, baseType: !661, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1061, file: !26, line: 164, baseType: !1058, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1061, file: !26, line: 165, baseType: !1099, size: 128, offset: 256)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1049, line: 14, size: 128, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1099, file: !1049, line: 15, baseType: !1102, size: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !435, line: 26, size: 128, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1102, file: !435, line: 27, baseType: !451, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1102, file: !435, line: 28, baseType: !439, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1061, file: !26, line: 166, baseType: !1107, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1025}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1061, file: !26, line: 167, baseType: !1025, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1045, file: !26, line: 123, baseType: !193, size: 8, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1045, file: !26, line: 124, baseType: !193, size: 8, offset: 456)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1045, file: !26, line: 125, baseType: !193, size: 8, offset: 464)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1045, file: !26, line: 126, baseType: !193, size: 8, offset: 472)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !960, file: !31, line: 691, baseType: !632, size: 64, offset: 1152)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !960, file: !31, line: 692, baseType: !768, size: 256, offset: 1216)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !960, file: !31, line: 693, baseType: !1118, size: 192, offset: 1472)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1119, line: 41, baseType: !1120)
!1119 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1119, line: 37, size: 192, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1120, file: !1119, line: 38, baseType: !165, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1120, file: !1119, line: 39, baseType: !220, size: 128, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !960, file: !31, line: 694, baseType: !1003, size: 64, offset: 1664)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !960, file: !31, line: 695, baseType: !185, size: 32, offset: 1728)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !960, file: !31, line: 696, baseType: !185, size: 32, offset: 1760)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !960, file: !31, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !960, file: !31, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !960, file: !31, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !960, file: !31, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !960, file: !31, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !960, file: !31, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !960, file: !31, line: 703, baseType: !150, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !960, file: !31, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !960, file: !31, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !960, file: !31, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !960, file: !31, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !960, file: !31, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !960, file: !31, line: 709, baseType: !7, size: 32, offset: 1824)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !960, file: !31, line: 710, baseType: !30, size: 32, offset: 1856)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !960, file: !31, line: 711, baseType: !38, size: 32, offset: 1888)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !960, file: !31, line: 712, baseType: !38, size: 32, offset: 1920)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !960, file: !31, line: 713, baseType: !39, size: 32, offset: 1952)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !960, file: !31, line: 714, baseType: !39, size: 32, offset: 1984)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !960, file: !31, line: 715, baseType: !632, size: 64, offset: 2048)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !960, file: !31, line: 716, baseType: !632, size: 64, offset: 2112)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !960, file: !31, line: 717, baseType: !632, size: 64, offset: 2176)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !960, file: !31, line: 718, baseType: !632, size: 64, offset: 2240)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !960, file: !31, line: 720, baseType: !1150, size: 64, offset: 2304)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !31, line: 632, size: 64, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1151, file: !31, line: 633, baseType: !165, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1151, file: !31, line: 634, baseType: !7, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !960, file: !31, line: 721, baseType: !1156, size: 64, offset: 2368)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !884, !692}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !960, file: !31, line: 722, baseType: !1160, size: 64, offset: 2432)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !31, line: 722, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !885, file: !19, line: 727, baseType: !1163, size: 64, offset: 4224)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !31, line: 742, size: 1792, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1172, !1173, !1174}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1164, file: !31, line: 743, baseType: !918, size: 1472)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1164, file: !31, line: 744, baseType: !921, size: 64, offset: 1472)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1164, file: !31, line: 745, baseType: !1169, size: 64, offset: 1536)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !884, !150}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1164, file: !31, line: 746, baseType: !921, size: 64, offset: 1600)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1164, file: !31, line: 747, baseType: !912, size: 64, offset: 1664)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1164, file: !31, line: 748, baseType: !912, size: 64, offset: 1728)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !885, file: !19, line: 736, baseType: !1176, size: 128, offset: 4288)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !19, line: 529, size: 128, elements: !1177)
!1177 = !{!1178, !1182}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1176, file: !19, line: 531, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1181, line: 13, flags: DIFlagFwdDecl)
!1181 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1176, file: !19, line: 532, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !19, line: 49, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !885, file: !19, line: 738, baseType: !1186, size: 64, offset: 4416)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !19, line: 738, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !885, file: !19, line: 740, baseType: !1190, size: 64, offset: 4480)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !885, file: !19, line: 741, baseType: !632, size: 64, offset: 4544)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !885, file: !19, line: 746, baseType: !632, size: 64, offset: 4608)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !885, file: !19, line: 747, baseType: !1194, size: 64, offset: 4672)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !19, line: 747, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !885, file: !19, line: 749, baseType: !1198, size: 64, offset: 4736)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !19, line: 428, size: 128, elements: !1200)
!1200 = !{!1201, !1202, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1199, file: !19, line: 433, baseType: !7, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1199, file: !19, line: 434, baseType: !7, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1199, file: !19, line: 435, baseType: !366, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !885, file: !19, line: 751, baseType: !220, size: 128, offset: 4800)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !885, file: !19, line: 762, baseType: !1206, size: 64, offset: 4928)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !19, line: 762, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !885, file: !19, line: 770, baseType: !1209, offset: 4992)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1210, line: 5, elements: !605)
!1210 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !885, file: !19, line: 772, baseType: !1212, size: 64, offset: 4992)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1214, line: 18, flags: DIFlagFwdDecl)
!1214 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !885, file: !19, line: 773, baseType: !1216, size: 64, offset: 5056)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !260, line: 22, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !885, file: !19, line: 776, baseType: !39, size: 32, offset: 5120)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !885, file: !19, line: 778, baseType: !1220, size: 32, offset: 5152)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !151, line: 21, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !151, line: 18, baseType: !978)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !885, file: !19, line: 779, baseType: !978, size: 32, offset: 5184)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !885, file: !19, line: 781, baseType: !165, size: 32, offset: 5216)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !885, file: !19, line: 782, baseType: !220, size: 128, offset: 5248)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !885, file: !19, line: 784, baseType: !1226, size: 64, offset: 5376)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1229, line: 52, size: 768, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1239, !1243, !1244, !1245, !1246, !1250, !1254}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1228, file: !1229, line: 53, baseType: !232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1228, file: !1229, line: 55, baseType: !265, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1228, file: !1229, line: 56, baseType: !265, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1228, file: !1229, line: 58, baseType: !901, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1228, file: !1229, line: 59, baseType: !1236, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!318, !904, !910}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1228, file: !1229, line: 61, baseType: !1240, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !1226}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1228, file: !1229, line: 62, baseType: !912, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1228, file: !1229, line: 64, baseType: !921, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1228, file: !1229, line: 66, baseType: !372, size: 64, offset: 512)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1228, file: !1229, line: 67, baseType: !1247, size: 64, offset: 576)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!389, !904}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1228, file: !1229, line: 69, baseType: !1251, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !904, !409, !417}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1228, file: !1229, line: 71, baseType: !916, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !885, file: !19, line: 785, baseType: !265, size: 64, offset: 5440)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !885, file: !19, line: 787, baseType: !912, size: 64, offset: 5504)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !885, file: !19, line: 788, baseType: !1258, size: 64, offset: 5568)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !19, line: 46, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !885, file: !19, line: 789, baseType: !1261, size: 64, offset: 5632)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !19, line: 48, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !885, file: !19, line: 791, baseType: !1264, size: 64, offset: 5696)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !19, line: 597, size: 128, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1265, file: !19, line: 598, baseType: !46, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1265, file: !19, line: 599, baseType: !55, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1265, file: !19, line: 600, baseType: !60, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1265, file: !19, line: 601, baseType: !150, size: 8, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1265, file: !19, line: 602, baseType: !150, size: 8, offset: 104)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !885, file: !19, line: 793, baseType: !65, size: 32, offset: 5760)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !885, file: !19, line: 795, baseType: !150, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !885, file: !19, line: 796, baseType: !150, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !885, file: !19, line: 797, baseType: !150, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !885, file: !19, line: 798, baseType: !150, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !885, file: !19, line: 799, baseType: !150, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !259, file: !260, line: 88, baseType: !901, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !259, file: !260, line: 89, baseType: !921, size: 64, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !259, file: !260, line: 90, baseType: !912, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !259, file: !260, line: 91, baseType: !912, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !259, file: !260, line: 92, baseType: !912, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !259, file: !260, line: 94, baseType: !921, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !259, file: !260, line: 95, baseType: !921, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !259, file: !260, line: 97, baseType: !1286, size: 64, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!39, !884, !963}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !259, file: !260, line: 98, baseType: !921, size: 64, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !259, file: !260, line: 100, baseType: !921, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !259, file: !260, line: 102, baseType: !921, size: 64, offset: 1024)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !259, file: !260, line: 103, baseType: !912, size: 64, offset: 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !259, file: !260, line: 105, baseType: !916, size: 64, offset: 1152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !259, file: !260, line: 107, baseType: !1295, size: 64, offset: 1216)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1297)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !260, line: 107, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !259, file: !260, line: 109, baseType: !150, size: 8, offset: 1280)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !253, file: !79, line: 100, baseType: !1300, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !72, line: 402, size: 9216, align: 512, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1309, !1320, !1346, !1347, !1348, !1349, !1353, !1356, !1357, !1358, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1426, !1430, !1450, !1468, !1469, !1470, !1471, !1480, !1503, !1504, !1507, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1521, !1522, !1611, !1619, !1620, !1621, !1623, !1627, !1628, !1632, !1633, !1634, !1635, !1637, !1638, !1639, !1646, !1647, !1648, !1652}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1301, file: !72, line: 403, baseType: !71, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1301, file: !72, line: 406, baseType: !220, size: 128, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1301, file: !72, line: 409, baseType: !1306, size: 448, offset: 192)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 448, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 56)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1301, file: !72, line: 417, baseType: !1310, size: 768, offset: 640)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !72, line: 45, size: 768, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1318}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1310, file: !72, line: 46, baseType: !278, size: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1310, file: !72, line: 47, baseType: !1300, size: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1310, file: !72, line: 48, baseType: !277, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1310, file: !72, line: 49, baseType: !1316, size: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !72, line: 49, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1310, file: !72, line: 50, baseType: !1319, size: 64, offset: 704)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1301, file: !72, line: 418, baseType: !1321, size: 64, offset: 1408)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !72, line: 53, size: 448, elements: !1323)
!1323 = !{!1324, !1325, !1330, !1334, !1338, !1342}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1322, file: !72, line: 54, baseType: !355, size: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1322, file: !72, line: 55, baseType: !1326, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!349, !1321, !1329, !318}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1322, file: !72, line: 57, baseType: !1331, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!349, !1321, !1329, !232, !363}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1322, file: !72, line: 59, baseType: !1335, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1300, !232}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1322, file: !72, line: 60, baseType: !1339, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!39, !1300}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1322, file: !72, line: 61, baseType: !1343, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1300}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1301, file: !72, line: 419, baseType: !232, size: 64, offset: 1472)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1301, file: !72, line: 420, baseType: !232, size: 64, offset: 1536)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1301, file: !72, line: 421, baseType: !277, size: 64, offset: 1600)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1301, file: !72, line: 424, baseType: !1350, size: 64, offset: 1664)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !72, line: 424, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1301, file: !72, line: 425, baseType: !1354, size: 64, offset: 1728)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1301, file: !72, line: 426, baseType: !7, size: 32, offset: 1792)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1301, file: !72, line: 435, baseType: !488, size: 256, offset: 1856)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1301, file: !72, line: 437, baseType: !1359, size: 64, offset: 2112)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1361, line: 69, size: 320, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1362 = !{!1363, !1364, !1365, !1382, !1384, !1388, !1389}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1360, file: !1361, line: 70, baseType: !232, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1360, file: !1361, line: 71, baseType: !1300, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1360, file: !1361, line: 72, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1361, line: 47, size: 256, elements: !1369)
!1369 = !{!1370, !1371, !1377, !1381}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !1361, line: 49, baseType: !7, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1368, file: !1361, line: 51, baseType: !1372, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!39, !232, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1368, file: !1361, line: 53, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!39, !318, !1375}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1368, file: !1361, line: 55, baseType: !398, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1360, file: !1361, line: 73, baseType: !1383, size: 16, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1360, file: !1361, line: 74, baseType: !1385, size: 8, offset: 208)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !194, line: 16, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !159, line: 20, baseType: !1387)
!1387 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1360, file: !1361, line: 75, baseType: !193, size: 8, offset: 216)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1361, line: 76, baseType: !1390, size: 64, offset: 256)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1361, line: 76, size: 64, elements: !1391)
!1391 = !{!1392, !1393, !1400}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1390, file: !1361, line: 77, baseType: !133, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1390, file: !1361, line: 78, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1361, line: 86, size: 128, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1396, file: !1361, line: 87, baseType: !7, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1396, file: !1361, line: 88, baseType: !318, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1390, file: !1361, line: 79, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1361, line: 92, size: 256, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1409, !1410}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1403, file: !1361, line: 94, baseType: !7, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1403, file: !1361, line: 95, baseType: !7, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1403, file: !1361, line: 96, baseType: !1408, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1403, file: !1361, line: 97, baseType: !1366, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1403, file: !1361, line: 98, baseType: !133, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1301, file: !72, line: 438, baseType: !7, size: 32, offset: 2176)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1301, file: !72, line: 441, baseType: !7, size: 32, offset: 2208)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1301, file: !72, line: 442, baseType: !1350, size: 64, offset: 2240)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1301, file: !72, line: 443, baseType: !1354, size: 64, offset: 2304)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1301, file: !72, line: 444, baseType: !150, size: 8, offset: 2368)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1301, file: !72, line: 451, baseType: !150, size: 8, offset: 2376)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1301, file: !72, line: 454, baseType: !7, size: 32, offset: 2400)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1301, file: !72, line: 455, baseType: !1419, size: 64, offset: 2432)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1421, line: 23, size: 96, elements: !1422)
!1421 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1420, file: !1421, line: 24, baseType: !39, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1420, file: !1421, line: 24, baseType: !39, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1420, file: !1421, line: 24, baseType: !39, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1301, file: !72, line: 458, baseType: !1427, size: 64, offset: 2496)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!39}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1301, file: !72, line: 460, baseType: !1431, size: 4032, align: 512, offset: 2560)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1432, size: 4032, elements: !1448)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !72, line: 362, size: 576, elements: !1433)
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1432, file: !72, line: 363, baseType: !133, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1432, file: !72, line: 364, baseType: !7, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1432, file: !72, line: 367, baseType: !1437, size: 448, offset: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !72, line: 319, size: 448, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1437, file: !72, line: 320, baseType: !1300, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1437, file: !72, line: 321, baseType: !1441, size: 384, offset: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1442, line: 40, size: 384, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1441, file: !1442, line: 41, baseType: !1445, size: 384, align: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 384, align: 64, elements: !1446)
!1446 = !{!1447}
!1447 = !DISubrange(count: 2)
!1448 = !{!1449}
!1449 = !DISubrange(count: 7)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1301, file: !72, line: 463, baseType: !1451, size: 192, offset: 6592)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1452, line: 8, size: 192, elements: !1453)
!1452 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1453 = !{!1454, !1455, !1457}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1451, file: !1452, line: 10, baseType: !7, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1451, file: !1452, line: 11, baseType: !1456, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1451, file: !1452, line: 12, baseType: !1458, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1460, line: 59, size: 48, elements: !1461)
!1460 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1459, file: !1460, line: 60, baseType: !742, size: 16)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1459, file: !1460, line: 61, baseType: !742, size: 16, offset: 16)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1459, file: !1460, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1459, file: !1460, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1459, file: !1460, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1459, file: !1460, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1301, file: !72, line: 465, baseType: !366, size: 64, offset: 6784)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1301, file: !72, line: 469, baseType: !7, size: 32, offset: 6848)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1301, file: !72, line: 470, baseType: !220, size: 128, offset: 6912)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1301, file: !72, line: 471, baseType: !1472, size: 64, offset: 7040)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1474, line: 33, size: 96, elements: !1475)
!1474 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1475 = !{!1476, !1477, !1478, !1479}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1473, file: !1474, line: 37, baseType: !39, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1473, file: !1474, line: 43, baseType: !39, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1473, file: !1474, line: 45, baseType: !202, size: 16, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1473, file: !1474, line: 47, baseType: !202, size: 16, offset: 80)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1301, file: !72, line: 476, baseType: !1481, size: 64, offset: 7104)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !72, line: 378, size: 256, elements: !1483)
!1483 = !{!1484, !1500, !1501, !1502}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1482, file: !72, line: 379, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1487, line: 204, baseType: !1488)
!1487 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1487, line: 197, size: 192, elements: !1489)
!1489 = !{!1490, !1492, !1493, !1494, !1496, !1498}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1488, file: !1487, line: 198, baseType: !1491, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1487, line: 21, baseType: !979)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1488, file: !1487, line: 199, baseType: !160, size: 8, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1488, file: !1487, line: 200, baseType: !160, size: 8, offset: 40)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1488, file: !1487, line: 201, baseType: !1495, size: 16, offset: 48)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1487, line: 17, baseType: !201)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1488, file: !1487, line: 202, baseType: !1497, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1487, line: 16, baseType: !633)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1488, file: !1487, line: 203, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1487, line: 22, baseType: !633)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1482, file: !72, line: 380, baseType: !7, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1482, file: !72, line: 381, baseType: !318, size: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1482, file: !72, line: 382, baseType: !318, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1301, file: !72, line: 477, baseType: !1482, size: 256, offset: 7168)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1301, file: !72, line: 480, baseType: !1505, size: 64, offset: 7424)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !72, line: 480, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1301, file: !72, line: 483, baseType: !1508, size: 64, offset: 7488)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !72, line: 483, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1301, file: !72, line: 488, baseType: !318, size: 64, offset: 7552)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1301, file: !72, line: 492, baseType: !133, size: 64, offset: 7616)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1301, file: !72, line: 493, baseType: !7, size: 32, offset: 7680)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1301, file: !72, line: 495, baseType: !133, size: 64, offset: 7744)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1301, file: !72, line: 496, baseType: !7, size: 32, offset: 7808)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1301, file: !72, line: 499, baseType: !7, size: 32, offset: 7840)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1301, file: !72, line: 500, baseType: !1517, size: 64, offset: 7872)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1519, line: 45, baseType: !1520)
!1519 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1301, file: !72, line: 503, baseType: !7, size: 32, offset: 7936)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1301, file: !72, line: 504, baseType: !1523, size: 64, offset: 8000)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1526, line: 96, size: 192, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1527 = !{!1528, !1529, !1572, !1575}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1525, file: !1526, line: 97, baseType: !7, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1525, file: !1526, line: 98, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1526, line: 24, size: 3072, elements: !1532)
!1532 = !{!1533, !1535, !1536, !1537, !1538, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1569, !1570, !1571}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1531, file: !1526, line: 26, baseType: !1534, size: 128)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 128, elements: !1446)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1531, file: !1526, line: 27, baseType: !1534, size: 128, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1531, file: !1526, line: 28, baseType: !39, size: 32, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1531, file: !1526, line: 31, baseType: !165, size: 32, align: 512, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1531, file: !1526, line: 32, baseType: !1539, size: 960, offset: 576)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1540, line: 206, size: 960, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1541 = !{!1542, !1543, !1546, !1548, !1549, !1551}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1539, file: !1540, line: 207, baseType: !578, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1539, file: !1540, line: 208, baseType: !1544, size: 256, offset: 64)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1545, size: 256, elements: !694)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1539, file: !1540, line: 209, baseType: !1547, size: 256, offset: 320)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !694)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1539, file: !1540, line: 213, baseType: !353, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1539, file: !1540, line: 215, baseType: !1550, size: 256, offset: 640)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 256, elements: !694)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !1540, line: 216, baseType: !193, size: 8, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1531, file: !1526, line: 33, baseType: !366, size: 64, offset: 1536)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1531, file: !1526, line: 34, baseType: !366, size: 64, offset: 1600)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1531, file: !1526, line: 35, baseType: !150, size: 8, offset: 1664)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1531, file: !1526, line: 36, baseType: !1006, size: 320, offset: 1728)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1531, file: !1526, line: 37, baseType: !768, size: 256, offset: 2048)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1531, file: !1526, line: 38, baseType: !575, size: 128, align: 64, offset: 2304)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1531, file: !1526, line: 39, baseType: !1559, size: 64, offset: 2432)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1526, line: 49, size: 768, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1560, file: !1526, line: 50, baseType: !165, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1560, file: !1526, line: 51, baseType: !1547, size: 256, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1560, file: !1526, line: 53, baseType: !1547, size: 256, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1560, file: !1526, line: 54, baseType: !366, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1560, file: !1526, line: 55, baseType: !1559, size: 64, offset: 640)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1560, file: !1526, line: 56, baseType: !39, size: 32, offset: 704)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1560, file: !1526, line: 57, baseType: !39, size: 32, offset: 736)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1531, file: !1526, line: 40, baseType: !366, size: 64, offset: 2496)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1531, file: !1526, line: 42, baseType: !39, size: 32, offset: 2560)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1531, file: !1526, line: 43, baseType: !1524, size: 64, offset: 2624)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1525, file: !1526, line: 99, baseType: !1573, offset: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1574, line: 211, elements: !605)
!1574 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1525, file: !1526, line: 100, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1526, line: 63, size: 3008, elements: !1578)
!1578 = !{!1579, !1580, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1610}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1577, file: !1526, line: 64, baseType: !1559, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1577, file: !1526, line: 65, baseType: !1581, size: 192, offset: 64)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1559, size: 192, elements: !319)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1577, file: !1526, line: 67, baseType: !39, size: 32, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1577, file: !1526, line: 68, baseType: !488, size: 256, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !1526, line: 69, baseType: !165, size: 32, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1577, file: !1526, line: 70, baseType: !488, size: 256, offset: 640)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1577, file: !1526, line: 71, baseType: !366, size: 64, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1577, file: !1526, line: 72, baseType: !366, size: 64, offset: 960)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1577, file: !1526, line: 73, baseType: !366, size: 64, offset: 1024)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1577, file: !1526, line: 74, baseType: !366, size: 64, offset: 1088)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1577, file: !1526, line: 75, baseType: !366, size: 64, offset: 1152)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1577, file: !1526, line: 76, baseType: !366, size: 64, offset: 1216)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1577, file: !1526, line: 77, baseType: !366, size: 64, offset: 1280)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1577, file: !1526, line: 78, baseType: !366, size: 64, offset: 1344)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1577, file: !1526, line: 79, baseType: !150, size: 8, offset: 1408)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1577, file: !1526, line: 80, baseType: !366, size: 64, offset: 1472)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1577, file: !1526, line: 81, baseType: !488, size: 256, offset: 1536)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1577, file: !1526, line: 82, baseType: !983, size: 256, offset: 1792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1577, file: !1526, line: 84, baseType: !185, size: 32, offset: 2048)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1577, file: !1526, line: 87, baseType: !366, size: 64, offset: 2112)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1577, file: !1526, line: 88, baseType: !366, size: 64, offset: 2176)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1577, file: !1526, line: 89, baseType: !1602, size: 704, offset: 2240)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !107, line: 111, size: 704, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1609}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1602, file: !107, line: 112, baseType: !768, size: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1602, file: !107, line: 113, baseType: !1006, size: 320, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1602, file: !107, line: 116, baseType: !1607, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !107, line: 18, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1602, file: !107, line: 117, baseType: !39, size: 32, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1577, file: !1526, line: 90, baseType: !1524, size: 64, offset: 2944)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1301, file: !72, line: 515, baseType: !1612, size: 64, offset: 8064)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1614, line: 117, size: 128, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1615 = !{!1616, !1617, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1613, file: !1614, line: 118, baseType: !692, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1613, file: !1614, line: 119, baseType: !692, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1613, file: !1614, line: 120, baseType: !353, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1301, file: !72, line: 516, baseType: !7, size: 32, offset: 8128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1301, file: !72, line: 519, baseType: !7, size: 32, offset: 8160)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1301, file: !72, line: 520, baseType: !1622, size: 64, offset: 8192)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1301, file: !72, line: 523, baseType: !1624, size: 64, offset: 8256)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !72, line: 523, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1301, file: !72, line: 524, baseType: !7, size: 32, offset: 8320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1301, file: !72, line: 525, baseType: !1629, size: 64, offset: 8384)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !72, line: 525, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1301, file: !72, line: 526, baseType: !7, size: 32, offset: 8448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1301, file: !72, line: 533, baseType: !133, size: 64, offset: 8512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1301, file: !72, line: 534, baseType: !7, size: 32, offset: 8576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1301, file: !72, line: 535, baseType: !1636, size: 64, offset: 8640)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1301, file: !72, line: 536, baseType: !7, size: 32, offset: 8704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1301, file: !72, line: 539, baseType: !39, size: 32, offset: 8736)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1301, file: !72, line: 540, baseType: !1640, size: 64, offset: 8768)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1642, line: 32, size: 64, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1641, file: !1642, line: 33, baseType: !692, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1641, file: !1642, line: 34, baseType: !692, size: 32, offset: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1301, file: !72, line: 563, baseType: !220, size: 128, offset: 8832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1301, file: !72, line: 565, baseType: !220, size: 128, offset: 8960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1301, file: !72, line: 568, baseType: !1649, size: 64, offset: 9088)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1301, file: !72, line: 570, baseType: !185, size: 32, offset: 9152)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !253, file: !79, line: 101, baseType: !232, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !253, file: !79, line: 103, baseType: !150, size: 8, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !253, file: !79, line: 104, baseType: !78, size: 32, offset: 288)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !253, file: !79, line: 106, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !155, line: 282, size: 1600, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !155, line: 283, baseType: !140, size: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1659, file: !155, line: 284, baseType: !140, size: 256, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1659, file: !155, line: 285, baseType: !146, size: 1024, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1659, file: !155, line: 286, baseType: !389, size: 64, offset: 1536)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !253, file: !79, line: 107, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !155, line: 217, size: 256, elements: !1669)
!1669 = !{!1670, !1674, !1676, !1677}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1668, file: !155, line: 218, baseType: !1671, size: 128)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, elements: !1672)
!1672 = !{!1673}
!1673 = !DISubrange(count: 16)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1668, file: !155, line: 219, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !155, line: 15, baseType: !366)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1668, file: !155, line: 220, baseType: !979, size: 32, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1668, file: !155, line: 221, baseType: !979, size: 32, offset: 224)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !253, file: !79, line: 109, baseType: !921, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !253, file: !79, line: 110, baseType: !912, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !253, file: !79, line: 111, baseType: !921, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !253, file: !79, line: 112, baseType: !912, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !253, file: !79, line: 113, baseType: !1286, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !253, file: !79, line: 114, baseType: !921, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !253, file: !79, line: 115, baseType: !265, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !253, file: !79, line: 116, baseType: !265, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !253, file: !79, line: 118, baseType: !916, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !253, file: !79, line: 119, baseType: !912, size: 64, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !253, file: !79, line: 121, baseType: !1689, size: 64, offset: 1088)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 121, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !135, file: !136, line: 54, baseType: !488, size: 256, offset: 2496)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !135, file: !136, line: 56, baseType: !885, size: 5824, offset: 2752)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !135, file: !136, line: 58, baseType: !220, size: 128, offset: 8576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !135, file: !136, line: 64, baseType: !1695, size: 64, offset: 8704)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_event", file: !3, line: 137, size: 320, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1697, file: !3, line: 138, baseType: !84, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1697, file: !3, line: 139, baseType: !133, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1697, file: !3, line: 140, baseType: !1300, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1697, file: !3, line: 141, baseType: !220, size: 128, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !151, line: 154, baseType: !7)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !223)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1708 = !{!0, !1709, !1714, !1719, !1724, !1726, !1728, !1730, !1732, !1734, !1739, !1741, !1743, !1745, !1747, !1749, !1754, !1756, !1758, !1760, !1764, !1769, !1771, !1773, !1775, !1780, !1785, !1788, !1791, !1796, !1799, !1802, !1804, !1809, !1812, !1826, !1828, !1830, !1832, !1834, !1836, !1838, !1840, !1843, !1845, !1847, !1849, !1854, !1856, !1859, !1862, !1864, !1866, !1871, !1873, !1878, !1880, !1882, !1884, !1886, !1888, !1890, !1892, !1894, !1899, !1902, !1904, !1907, !1920, !1922, !1924, !1927, !1932, !1937, !1939, !1944, !1946, !1948, !1951, !1953, !1958, !1963}
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description206", scope: !2, file: !3, line: 22, type: !1711, isLocal: true, isDefinition: true, align: 8)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 328, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 41)
!1714 = !DIGlobalVariableExpression(var: !1715, expr: !DIExpression())
!1715 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file207", scope: !2, file: !3, line: 23, type: !1716, isLocal: true, isDefinition: true, align: 8)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 296, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 37)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license208", scope: !2, file: !3, line: 23, type: !1721, isLocal: true, isDefinition: true, align: 8)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 144, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 18)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_rescan209", scope: !2, file: !3, line: 680, type: !133, isLocal: true, isDefinition: true)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_reconnect210", scope: !2, file: !3, line: 686, type: !133, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___serio_register_port211", scope: !2, file: !3, line: 697, type: !133, isLocal: true, isDefinition: true)
!1730 = !DIGlobalVariableExpression(var: !1731, expr: !DIExpression())
!1731 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_unregister_port212", scope: !2, file: !3, line: 709, type: !133, isLocal: true, isDefinition: true)
!1732 = !DIGlobalVariableExpression(var: !1733, expr: !DIExpression())
!1733 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_unregister_child_port213", scope: !2, file: !3, line: 725, type: !133, isLocal: true, isDefinition: true)
!1734 = !DIGlobalVariableExpression(var: !1735, expr: !DIExpression())
!1735 = distinct !DIGlobalVariable(scope: null, file: !3, line: 827, type: !1736, isLocal: true, isDefinition: true)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 424, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 53)
!1739 = !DIGlobalVariableExpression(var: !1740, expr: !DIExpression())
!1740 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___serio_register_driver214", scope: !2, file: !3, line: 847, type: !133, isLocal: true, isDefinition: true)
!1741 = !DIGlobalVariableExpression(var: !1742, expr: !DIExpression())
!1742 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_unregister_driver215", scope: !2, file: !3, line: 871, type: !133, isLocal: true, isDefinition: true)
!1743 = !DIGlobalVariableExpression(var: !1744, expr: !DIExpression())
!1744 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_open216", scope: !2, file: !3, line: 977, type: !133, isLocal: true, isDefinition: true)
!1745 = !DIGlobalVariableExpression(var: !1746, expr: !DIExpression())
!1746 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_close217", scope: !2, file: !3, line: 987, type: !133, isLocal: true, isDefinition: true)
!1747 = !DIGlobalVariableExpression(var: !1748, expr: !DIExpression())
!1748 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_interrupt218", scope: !2, file: !3, line: 1008, type: !133, isLocal: true, isDefinition: true)
!1749 = !DIGlobalVariableExpression(var: !1750, expr: !DIExpression())
!1750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1011, type: !1751, isLocal: true, isDefinition: true)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 48, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: 6)
!1754 = !DIGlobalVariableExpression(var: !1755, expr: !DIExpression())
!1755 = distinct !DIGlobalVariable(name: "serio_bus", scope: !2, file: !3, line: 1010, type: !259, isLocal: false, isDefinition: true)
!1756 = !DIGlobalVariableExpression(var: !1757, expr: !DIExpression())
!1757 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_serio_bus219", scope: !2, file: !3, line: 1022, type: !133, isLocal: true, isDefinition: true)
!1758 = !DIGlobalVariableExpression(var: !1759, expr: !DIExpression())
!1759 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_serio__220_1048_serio_init4221", scope: !2, file: !3, line: 1048, type: !133, isLocal: true, isDefinition: true)
!1760 = !DIGlobalVariableExpression(var: !1761, expr: !DIExpression())
!1761 = distinct !DIGlobalVariable(name: "__exitcall_serio_exit", scope: !2, file: !3, line: 1049, type: !1762, isLocal: true, isDefinition: true)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1763, line: 120, baseType: !1649)
!1763 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1764 = !DIGlobalVariableExpression(var: !1765, expr: !DIExpression())
!1765 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !1766, isLocal: true, isDefinition: true)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 368, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 46)
!1769 = !DIGlobalVariableExpression(var: !1770, expr: !DIExpression())
!1770 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !1306, isLocal: true, isDefinition: true)
!1771 = !DIGlobalVariableExpression(var: !1772, expr: !DIExpression())
!1772 = distinct !DIGlobalVariable(name: "serio_event_lock", scope: !2, file: !3, line: 144, type: !165, isLocal: true, isDefinition: true)
!1773 = !DIGlobalVariableExpression(var: !1774, expr: !DIExpression())
!1774 = distinct !DIGlobalVariable(name: "serio_event_list", scope: !2, file: !3, line: 145, type: !220, isLocal: true, isDefinition: true)
!1775 = !DIGlobalVariableExpression(var: !1776, expr: !DIExpression())
!1776 = distinct !DIGlobalVariable(scope: null, file: !97, line: 480, type: !1777, isLocal: true, isDefinition: true)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 168, elements: !1778)
!1778 = !{!1779}
!1779 = !DISubrange(count: 21)
!1780 = !DIGlobalVariableExpression(var: !1781, expr: !DIExpression())
!1781 = distinct !DIGlobalVariable(name: "serio_no", scope: !1782, file: !3, line: 496, type: !185, isLocal: true, isDefinition: true)
!1782 = distinct !DISubprogram(name: "serio_init_port", scope: !3, file: !3, line: 494, type: !214, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1783 = !{!1784}
!1784 = !DILocalVariable(name: "serio", arg: 1, scope: !1782, file: !3, line: 494, type: !134)
!1785 = !DIGlobalVariableExpression(var: !1786, expr: !DIExpression())
!1786 = distinct !DIGlobalVariable(name: "__key", scope: !1782, file: !3, line: 504, type: !1787, isLocal: true, isDefinition: true)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1574, line: 206, elements: !605)
!1788 = !DIGlobalVariableExpression(var: !1789, expr: !DIExpression())
!1789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 504, type: !1790, isLocal: true, isDefinition: true)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 144, elements: !1722)
!1791 = !DIGlobalVariableExpression(var: !1792, expr: !DIExpression())
!1792 = distinct !DIGlobalVariable(scope: null, file: !3, line: 506, type: !1793, isLocal: true, isDefinition: true)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 72, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 9)
!1796 = !DIGlobalVariableExpression(var: !1797, expr: !DIExpression())
!1797 = distinct !DIGlobalVariable(name: "serio_device_attr_groups", scope: !2, file: !3, line: 477, type: !1798, isLocal: true, isDefinition: true)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 192, elements: !319)
!1799 = !DIGlobalVariableExpression(var: !1800, expr: !DIExpression())
!1800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !1801, isLocal: true, isDefinition: true)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 24, elements: !319)
!1802 = !DIGlobalVariableExpression(var: !1803, expr: !DIExpression())
!1803 = distinct !DIGlobalVariable(name: "serio_id_attr_group", scope: !2, file: !3, line: 453, type: !267, isLocal: true, isDefinition: true)
!1804 = !DIGlobalVariableExpression(var: !1805, expr: !DIExpression())
!1805 = distinct !DIGlobalVariable(name: "serio_device_id_attrs", scope: !2, file: !3, line: 445, type: !1806, isLocal: true, isDefinition: true)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 320, elements: !1807)
!1807 = !{!1808}
!1808 = !DISubrange(count: 5)
!1809 = !DIGlobalVariableExpression(var: !1810, expr: !DIExpression())
!1810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !1811, isLocal: true, isDefinition: true)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 40, elements: !1807)
!1812 = !DIGlobalVariableExpression(var: !1813, expr: !DIExpression())
!1813 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 440, type: !1814, isLocal: true, isDefinition: true)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !19, line: 106, size: 256, elements: !1815)
!1815 = !{!1816, !1817, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1814, file: !19, line: 107, baseType: !355, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1814, file: !19, line: 108, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!349, !884, !1821, !318}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1814, file: !19, line: 110, baseType: !1823, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!349, !884, !1821, !232, !363}
!1826 = !DIGlobalVariableExpression(var: !1827, expr: !DIExpression())
!1827 = distinct !DIGlobalVariable(scope: null, file: !3, line: 358, type: !1751, isLocal: true, isDefinition: true)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !1751, isLocal: true, isDefinition: true)
!1830 = !DIGlobalVariableExpression(var: !1831, expr: !DIExpression())
!1831 = distinct !DIGlobalVariable(name: "dev_attr_proto", scope: !2, file: !3, line: 441, type: !1814, isLocal: true, isDefinition: true)
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(name: "dev_attr_id", scope: !2, file: !3, line: 442, type: !1814, isLocal: true, isDefinition: true)
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !1751, isLocal: true, isDefinition: true)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(name: "dev_attr_extra", scope: !2, file: !3, line: 443, type: !1814, isLocal: true, isDefinition: true)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(name: "serio_device_attr_group", scope: !2, file: !3, line: 473, type: !267, isLocal: true, isDefinition: true)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(name: "serio_device_attrs", scope: !2, file: !3, line: 464, type: !1842, isLocal: true, isDefinition: true)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 384, elements: !1752)
!1843 = !DIGlobalVariableExpression(var: !1844, expr: !DIExpression())
!1844 = distinct !DIGlobalVariable(scope: null, file: !3, line: 458, type: !1793, isLocal: true, isDefinition: true)
!1845 = !DIGlobalVariableExpression(var: !1846, expr: !DIExpression())
!1846 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 458, type: !1814, isLocal: true, isDefinition: true)
!1847 = !DIGlobalVariableExpression(var: !1848, expr: !DIExpression())
!1848 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !140, isLocal: true, isDefinition: true)
!1849 = !DIGlobalVariableExpression(var: !1850, expr: !DIExpression())
!1850 = distinct !DIGlobalVariable(scope: null, file: !3, line: 460, type: !1851, isLocal: true, isDefinition: true)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 96, elements: !1852)
!1852 = !{!1853}
!1853 = !DISubrange(count: 12)
!1854 = !DIGlobalVariableExpression(var: !1855, expr: !DIExpression())
!1855 = distinct !DIGlobalVariable(name: "dev_attr_description", scope: !2, file: !3, line: 460, type: !1814, isLocal: true, isDefinition: true)
!1856 = !DIGlobalVariableExpression(var: !1857, expr: !DIExpression())
!1857 = distinct !DIGlobalVariable(scope: null, file: !3, line: 344, type: !1858, isLocal: true, isDefinition: true)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 32, elements: !694)
!1859 = !DIGlobalVariableExpression(var: !1860, expr: !DIExpression())
!1860 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !1861, isLocal: true, isDefinition: true)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 56, elements: !1448)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(name: "dev_attr_drvctl", scope: !2, file: !3, line: 459, type: !1814, isLocal: true, isDefinition: true)
!1864 = !DIGlobalVariableExpression(var: !1865, expr: !DIExpression())
!1865 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !1811, isLocal: true, isDefinition: true)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !1868, isLocal: true, isDefinition: true)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 80, elements: !1869)
!1869 = !{!1870}
!1870 = !DISubrange(count: 10)
!1871 = !DIGlobalVariableExpression(var: !1872, expr: !DIExpression())
!1872 = distinct !DIGlobalVariable(scope: null, file: !3, line: 393, type: !1861, isLocal: true, isDefinition: true)
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !1875, isLocal: true, isDefinition: true)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 472, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 59)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !1868, isLocal: true, isDefinition: true)
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(name: "dev_attr_bind_mode", scope: !2, file: !3, line: 461, type: !1814, isLocal: true, isDefinition: true)
!1882 = !DIGlobalVariableExpression(var: !1883, expr: !DIExpression())
!1883 = distinct !DIGlobalVariable(scope: null, file: !3, line: 413, type: !1861, isLocal: true, isDefinition: true)
!1884 = !DIGlobalVariableExpression(var: !1885, expr: !DIExpression())
!1885 = distinct !DIGlobalVariable(scope: null, file: !3, line: 413, type: !1811, isLocal: true, isDefinition: true)
!1886 = !DIGlobalVariableExpression(var: !1887, expr: !DIExpression())
!1887 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !1851, isLocal: true, isDefinition: true)
!1888 = !DIGlobalVariableExpression(var: !1889, expr: !DIExpression())
!1889 = distinct !DIGlobalVariable(name: "dev_attr_firmware_id", scope: !2, file: !3, line: 462, type: !1814, isLocal: true, isDefinition: true)
!1890 = !DIGlobalVariableExpression(var: !1891, expr: !DIExpression())
!1891 = distinct !DIGlobalVariable(name: "serio_mutex", scope: !2, file: !3, line: 29, type: !488, isLocal: true, isDefinition: true)
!1892 = !DIGlobalVariableExpression(var: !1893, expr: !DIExpression())
!1893 = distinct !DIGlobalVariable(name: "serio_list", scope: !2, file: !3, line: 31, type: !220, isLocal: true, isDefinition: true)
!1894 = !DIGlobalVariableExpression(var: !1895, expr: !DIExpression())
!1895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !1896, isLocal: true, isDefinition: true)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 376, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 47)
!1899 = !DIGlobalVariableExpression(var: !1900, expr: !DIExpression())
!1900 = distinct !DIGlobalVariable(name: "serio_driver_groups", scope: !2, file: !3, line: 768, type: !1901, isLocal: true, isDefinition: true)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 128, elements: !1446)
!1902 = !DIGlobalVariableExpression(var: !1903, expr: !DIExpression())
!1903 = distinct !DIGlobalVariable(name: "serio_driver_group", scope: !2, file: !3, line: 768, type: !267, isLocal: true, isDefinition: true)
!1904 = !DIGlobalVariableExpression(var: !1905, expr: !DIExpression())
!1905 = distinct !DIGlobalVariable(name: "serio_driver_attrs", scope: !2, file: !3, line: 763, type: !1906, isLocal: true, isDefinition: true)
!1906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, elements: !319)
!1907 = !DIGlobalVariableExpression(var: !1908, expr: !DIExpression())
!1908 = distinct !DIGlobalVariable(name: "driver_attr_description", scope: !2, file: !3, line: 737, type: !1909, isLocal: true, isDefinition: true)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_attribute", file: !79, line: 135, size: 256, elements: !1910)
!1910 = !{!1911, !1912, !1916}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1909, file: !79, line: 136, baseType: !355, size: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1909, file: !79, line: 137, baseType: !1913, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!349, !948, !318}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1909, file: !79, line: 138, baseType: !1917, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!349, !948, !232, !363}
!1920 = !DIGlobalVariableExpression(var: !1921, expr: !DIExpression())
!1921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 735, type: !1861, isLocal: true, isDefinition: true)
!1922 = !DIGlobalVariableExpression(var: !1923, expr: !DIExpression())
!1923 = distinct !DIGlobalVariable(name: "driver_attr_bind_mode", scope: !2, file: !3, line: 761, type: !1909, isLocal: true, isDefinition: true)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 907, type: !1926, isLocal: true, isDefinition: true)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, elements: !1672)
!1927 = !DIGlobalVariableExpression(var: !1928, expr: !DIExpression())
!1928 = distinct !DIGlobalVariable(scope: null, file: !3, line: 908, type: !1929, isLocal: true, isDefinition: true)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 136, elements: !1930)
!1930 = !{!1931}
!1931 = !DISubrange(count: 17)
!1932 = !DIGlobalVariableExpression(var: !1933, expr: !DIExpression())
!1933 = distinct !DIGlobalVariable(scope: null, file: !3, line: 909, type: !1934, isLocal: true, isDefinition: true)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 112, elements: !1935)
!1935 = !{!1936}
!1936 = !DISubrange(count: 14)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(scope: null, file: !3, line: 910, type: !1929, isLocal: true, isDefinition: true)
!1939 = !DIGlobalVariableExpression(var: !1940, expr: !DIExpression())
!1940 = distinct !DIGlobalVariable(scope: null, file: !3, line: 912, type: !1941, isLocal: true, isDefinition: true)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 320, elements: !1942)
!1942 = !{!1943}
!1943 = !DISubrange(count: 40)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(scope: null, file: !3, line: 916, type: !1777, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "serio_pm_ops", scope: !2, file: !3, line: 958, type: !917, isLocal: true, isDefinition: true)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 942, type: !1950, isLocal: true, isDefinition: true)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 296, elements: !1717)
!1951 = !DIGlobalVariableExpression(var: !1952, expr: !DIExpression())
!1952 = distinct !DIGlobalVariable(name: "serio_event_work", scope: !2, file: !3, line: 235, type: !768, isLocal: true, isDefinition: true)
!1953 = !DIGlobalVariableExpression(var: !1954, expr: !DIExpression())
!1954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 541, type: !1955, isLocal: true, isDefinition: true)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 352, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 44)
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(scope: null, file: !3, line: 806, type: !1960, isLocal: true, isDefinition: true)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 432, elements: !1961)
!1961 = !{!1962}
!1962 = !DISubrange(count: 54)
!1963 = !DIGlobalVariableExpression(var: !1964, expr: !DIExpression())
!1964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1030, type: !1965, isLocal: true, isDefinition: true)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 400, elements: !1966)
!1966 = !{!1967}
!1967 = !DISubrange(count: 50)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 360, elements: !1969)
!1969 = !{!1970}
!1970 = !DISubrange(count: 45)
!1971 = !{i32 7, !"Dwarf Version", i32 5}
!1972 = !{i32 2, !"Debug Info Version", i32 3}
!1973 = !{i32 1, !"wchar_size", i32 2}
!1974 = !{i32 8, !"cf-protection-branch", i32 1}
!1975 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1976 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1977 = !{i32 1, !"Code Model", i32 2}
!1978 = !{i32 1, !"override-stack-alignment", i32 8}
!1979 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1980 = distinct !DISubprogram(name: "serio_rescan", scope: !3, file: !3, line: 676, type: !214, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1981)
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "serio", arg: 1, scope: !1980, file: !3, line: 676, type: !134)
!1983 = !DILocation(line: 676, column: 33, scope: !1980)
!1984 = !DILocation(line: 678, column: 20, scope: !1980)
!1985 = !DILocation(line: 678, column: 2, scope: !1980)
!1986 = !DILocation(line: 679, column: 1, scope: !1980)
!1987 = distinct !DISubprogram(name: "serio_queue_event", scope: !3, file: !3, line: 237, type: !1988, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!39, !133, !1300, !84}
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !2001, !2002, !2005, !2008}
!1991 = !DILocalVariable(name: "object", arg: 1, scope: !1987, file: !3, line: 237, type: !133)
!1992 = !DILocalVariable(name: "owner", arg: 2, scope: !1987, file: !3, line: 237, type: !1300)
!1993 = !DILocalVariable(name: "event_type", arg: 3, scope: !1987, file: !3, line: 238, type: !84)
!1994 = !DILocalVariable(name: "flags", scope: !1987, file: !3, line: 240, type: !366)
!1995 = !DILocalVariable(name: "event", scope: !1987, file: !3, line: 241, type: !1696)
!1996 = !DILocalVariable(name: "retval", scope: !1987, file: !3, line: 242, type: !39)
!1997 = !DILocalVariable(name: "__dummy", scope: !1998, file: !3, line: 244, type: !366)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 244, column: 2)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 244, column: 2)
!2000 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 244, column: 2)
!2001 = !DILocalVariable(name: "__dummy2", scope: !1998, file: !3, line: 244, type: !366)
!2002 = !DILocalVariable(name: "__mptr", scope: !2003, file: !3, line: 253, type: !133)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 253, column: 2)
!2004 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 253, column: 2)
!2005 = !DILocalVariable(name: "__mptr", scope: !2006, file: !3, line: 253, type: !133)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 253, column: 2)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 253, column: 2)
!2008 = !DILabel(scope: !1987, name: "out", file: !3, line: 283)
!2009 = !DILocation(line: 237, column: 36, scope: !1987)
!2010 = !DILocation(line: 237, column: 59, scope: !1987)
!2011 = !DILocation(line: 238, column: 31, scope: !1987)
!2012 = !DILocation(line: 240, column: 2, scope: !1987)
!2013 = !DILocation(line: 240, column: 16, scope: !1987)
!2014 = !DILocation(line: 241, column: 2, scope: !1987)
!2015 = !DILocation(line: 241, column: 22, scope: !1987)
!2016 = !DILocation(line: 242, column: 2, scope: !1987)
!2017 = !DILocation(line: 242, column: 6, scope: !1987)
!2018 = !DILocation(line: 244, column: 2, scope: !1987)
!2019 = !DILocation(line: 244, column: 2, scope: !2000)
!2020 = !DILocation(line: 244, column: 2, scope: !1998)
!2021 = !DILocation(line: 244, column: 2, scope: !1999)
!2022 = !DILocation(line: 253, column: 2, scope: !2003)
!2023 = !DILocation(line: 253, column: 2, scope: !2004)
!2024 = !DILocation(line: 253, column: 2, scope: !2007)
!2025 = !DILocation(line: 254, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 254, column: 7)
!2027 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 253, column: 62)
!2028 = !DILocation(line: 254, column: 14, scope: !2026)
!2029 = !DILocation(line: 254, column: 24, scope: !2026)
!2030 = !DILocation(line: 254, column: 21, scope: !2026)
!2031 = !DILocation(line: 254, column: 7, scope: !2027)
!2032 = !DILocation(line: 255, column: 8, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 255, column: 8)
!2034 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 254, column: 32)
!2035 = !DILocation(line: 255, column: 15, scope: !2033)
!2036 = !DILocation(line: 255, column: 23, scope: !2033)
!2037 = !DILocation(line: 255, column: 20, scope: !2033)
!2038 = !DILocation(line: 255, column: 8, scope: !2034)
!2039 = !DILocation(line: 256, column: 5, scope: !2033)
!2040 = !DILocation(line: 257, column: 4, scope: !2034)
!2041 = !DILocation(line: 259, column: 2, scope: !2027)
!2042 = !DILocation(line: 253, column: 2, scope: !2006)
!2043 = distinct !{!2043, !2023, !2044, !2045, !2046}
!2044 = !DILocation(line: 259, column: 2, scope: !2004)
!2045 = !{!"llvm.loop.mustprogress"}
!2046 = !{!"llvm.loop.unroll.disable"}
!2047 = !DILocation(line: 261, column: 10, scope: !1987)
!2048 = !DILocation(line: 261, column: 8, scope: !1987)
!2049 = !DILocation(line: 262, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 262, column: 6)
!2051 = !DILocation(line: 262, column: 6, scope: !1987)
!2052 = !DILocation(line: 263, column: 3, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 263, column: 3)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 262, column: 14)
!2055 = !DILocation(line: 263, column: 3, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 263, column: 3)
!2057 = !DILocation(line: 264, column: 10, scope: !2054)
!2058 = !DILocation(line: 265, column: 3, scope: !2054)
!2059 = !DILocation(line: 268, column: 22, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 268, column: 6)
!2061 = !DILocation(line: 268, column: 7, scope: !2060)
!2062 = !DILocation(line: 268, column: 6, scope: !1987)
!2063 = !DILocation(line: 269, column: 3, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 269, column: 3)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 268, column: 30)
!2066 = !DILocation(line: 269, column: 3, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 269, column: 3)
!2068 = !DILocation(line: 271, column: 9, scope: !2065)
!2069 = !DILocation(line: 271, column: 3, scope: !2065)
!2070 = !DILocation(line: 272, column: 10, scope: !2065)
!2071 = !DILocation(line: 273, column: 3, scope: !2065)
!2072 = !DILocation(line: 276, column: 16, scope: !1987)
!2073 = !DILocation(line: 276, column: 2, scope: !1987)
!2074 = !DILocation(line: 276, column: 9, scope: !1987)
!2075 = !DILocation(line: 276, column: 14, scope: !1987)
!2076 = !DILocation(line: 277, column: 18, scope: !1987)
!2077 = !DILocation(line: 277, column: 2, scope: !1987)
!2078 = !DILocation(line: 277, column: 9, scope: !1987)
!2079 = !DILocation(line: 277, column: 16, scope: !1987)
!2080 = !DILocation(line: 278, column: 17, scope: !1987)
!2081 = !DILocation(line: 278, column: 2, scope: !1987)
!2082 = !DILocation(line: 278, column: 9, scope: !1987)
!2083 = !DILocation(line: 278, column: 15, scope: !1987)
!2084 = !DILocation(line: 280, column: 17, scope: !1987)
!2085 = !DILocation(line: 280, column: 24, scope: !1987)
!2086 = !DILocation(line: 280, column: 2, scope: !1987)
!2087 = !DILocation(line: 281, column: 13, scope: !1987)
!2088 = !DILocation(line: 281, column: 2, scope: !1987)
!2089 = !DILocation(line: 283, column: 1, scope: !1987)
!2090 = !DILocation(line: 284, column: 44, scope: !1987)
!2091 = !DILocation(line: 284, column: 2, scope: !1987)
!2092 = !DILocation(line: 285, column: 9, scope: !1987)
!2093 = !DILocation(line: 286, column: 1, scope: !1987)
!2094 = !DILocation(line: 285, column: 2, scope: !1987)
!2095 = distinct !DISubprogram(name: "serio_reconnect", scope: !3, file: !3, line: 682, type: !214, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "serio", arg: 1, scope: !2095, file: !3, line: 682, type: !134)
!2098 = !DILocation(line: 682, column: 36, scope: !2095)
!2099 = !DILocation(line: 684, column: 20, scope: !2095)
!2100 = !DILocation(line: 684, column: 2, scope: !2095)
!2101 = !DILocation(line: 685, column: 1, scope: !2095)
!2102 = distinct !DISubprogram(name: "__serio_register_port", scope: !3, file: !3, line: 692, type: !2103, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !134, !1300}
!2105 = !{!2106, !2107}
!2106 = !DILocalVariable(name: "serio", arg: 1, scope: !2102, file: !3, line: 692, type: !134)
!2107 = !DILocalVariable(name: "owner", arg: 2, scope: !2102, file: !3, line: 692, type: !1300)
!2108 = !DILocation(line: 692, column: 42, scope: !2102)
!2109 = !DILocation(line: 692, column: 64, scope: !2102)
!2110 = !DILocation(line: 694, column: 18, scope: !2102)
!2111 = !DILocation(line: 694, column: 2, scope: !2102)
!2112 = !DILocation(line: 695, column: 20, scope: !2102)
!2113 = !DILocation(line: 695, column: 27, scope: !2102)
!2114 = !DILocation(line: 695, column: 2, scope: !2102)
!2115 = !DILocation(line: 696, column: 1, scope: !2102)
!2116 = !DILocation(line: 494, column: 43, scope: !1782)
!2117 = !DILocation(line: 498, column: 2, scope: !1782)
!2118 = !DILocation(line: 500, column: 18, scope: !1782)
!2119 = !DILocation(line: 500, column: 25, scope: !1782)
!2120 = !DILocation(line: 500, column: 2, scope: !1782)
!2121 = !DILocation(line: 501, column: 18, scope: !1782)
!2122 = !DILocation(line: 501, column: 25, scope: !1782)
!2123 = !DILocation(line: 501, column: 2, scope: !1782)
!2124 = !DILocation(line: 502, column: 18, scope: !1782)
!2125 = !DILocation(line: 502, column: 25, scope: !1782)
!2126 = !DILocation(line: 502, column: 2, scope: !1782)
!2127 = !DILocation(line: 503, column: 2, scope: !1782)
!2128 = !DILocation(line: 503, column: 2, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 503, column: 2)
!2130 = !DILocation(line: 504, column: 2, scope: !1782)
!2131 = !DILocation(line: 504, column: 2, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 504, column: 2)
!2133 = !DILocation(line: 505, column: 21, scope: !1782)
!2134 = !DILocation(line: 505, column: 28, scope: !1782)
!2135 = !DILocation(line: 505, column: 2, scope: !1782)
!2136 = !DILocation(line: 506, column: 16, scope: !1782)
!2137 = !DILocation(line: 506, column: 23, scope: !1782)
!2138 = !DILocation(line: 507, column: 23, scope: !1782)
!2139 = !DILocation(line: 507, column: 8, scope: !1782)
!2140 = !DILocation(line: 506, column: 2, scope: !1782)
!2141 = !DILocation(line: 508, column: 2, scope: !1782)
!2142 = !DILocation(line: 508, column: 9, scope: !1782)
!2143 = !DILocation(line: 508, column: 13, scope: !1782)
!2144 = !DILocation(line: 508, column: 17, scope: !1782)
!2145 = !DILocation(line: 509, column: 2, scope: !1782)
!2146 = !DILocation(line: 509, column: 9, scope: !1782)
!2147 = !DILocation(line: 509, column: 13, scope: !1782)
!2148 = !DILocation(line: 509, column: 21, scope: !1782)
!2149 = !DILocation(line: 510, column: 2, scope: !1782)
!2150 = !DILocation(line: 510, column: 9, scope: !1782)
!2151 = !DILocation(line: 510, column: 13, scope: !1782)
!2152 = !DILocation(line: 510, column: 20, scope: !1782)
!2153 = !DILocation(line: 511, column: 6, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 511, column: 6)
!2155 = !DILocation(line: 511, column: 13, scope: !2154)
!2156 = !DILocation(line: 511, column: 6, scope: !1782)
!2157 = !DILocation(line: 512, column: 24, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 511, column: 21)
!2159 = !DILocation(line: 512, column: 31, scope: !2158)
!2160 = !DILocation(line: 512, column: 39, scope: !2158)
!2161 = !DILocation(line: 512, column: 3, scope: !2158)
!2162 = !DILocation(line: 512, column: 10, scope: !2158)
!2163 = !DILocation(line: 512, column: 14, scope: !2158)
!2164 = !DILocation(line: 512, column: 21, scope: !2158)
!2165 = !DILocation(line: 513, column: 18, scope: !2158)
!2166 = !DILocation(line: 513, column: 25, scope: !2158)
!2167 = !DILocation(line: 513, column: 33, scope: !2158)
!2168 = !DILocation(line: 513, column: 39, scope: !2158)
!2169 = !DILocation(line: 513, column: 3, scope: !2158)
!2170 = !DILocation(line: 513, column: 10, scope: !2158)
!2171 = !DILocation(line: 513, column: 16, scope: !2158)
!2172 = !DILocation(line: 514, column: 2, scope: !2158)
!2173 = !DILocation(line: 515, column: 3, scope: !2154)
!2174 = !DILocation(line: 515, column: 10, scope: !2154)
!2175 = !DILocation(line: 515, column: 16, scope: !2154)
!2176 = !DILocation(line: 516, column: 2, scope: !1782)
!2177 = !DILocation(line: 516, column: 2, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 516, column: 2)
!2179 = !DILocation(line: 517, column: 1, scope: !1782)
!2180 = distinct !DISubprogram(name: "serio_unregister_port", scope: !3, file: !3, line: 702, type: !214, scopeLine: 703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2181 = !{!2182}
!2182 = !DILocalVariable(name: "serio", arg: 1, scope: !2180, file: !3, line: 702, type: !134)
!2183 = !DILocation(line: 702, column: 42, scope: !2180)
!2184 = !DILocation(line: 704, column: 2, scope: !2180)
!2185 = !DILocation(line: 705, column: 24, scope: !2180)
!2186 = !DILocation(line: 705, column: 2, scope: !2180)
!2187 = !DILocation(line: 706, column: 21, scope: !2180)
!2188 = !DILocation(line: 706, column: 2, scope: !2180)
!2189 = !DILocation(line: 707, column: 2, scope: !2180)
!2190 = !DILocation(line: 708, column: 1, scope: !2180)
!2191 = !DISubprogram(name: "mutex_lock", scope: !489, file: !489, line: 227, type: !2192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !1695}
!2194 = distinct !DISubprogram(name: "serio_disconnect_port", scope: !3, file: !3, line: 641, type: !214, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2195 = !{!2196, !2197, !2198, !2201}
!2196 = !DILocalVariable(name: "serio", arg: 1, scope: !2194, file: !3, line: 641, type: !134)
!2197 = !DILocalVariable(name: "s", scope: !2194, file: !3, line: 643, type: !134)
!2198 = !DILocalVariable(name: "__mptr", scope: !2199, file: !3, line: 653, type: !133)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 653, column: 8)
!2200 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 649, column: 40)
!2201 = !DILocalVariable(name: "parent", scope: !2202, file: !3, line: 661, type: !134)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 660, column: 19)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 660, column: 7)
!2204 = !DILocation(line: 641, column: 49, scope: !2194)
!2205 = !DILocation(line: 643, column: 2, scope: !2194)
!2206 = !DILocation(line: 643, column: 16, scope: !2194)
!2207 = !DILocation(line: 643, column: 20, scope: !2194)
!2208 = !DILocation(line: 649, column: 2, scope: !2194)
!2209 = !DILocation(line: 649, column: 22, scope: !2194)
!2210 = !DILocation(line: 649, column: 29, scope: !2194)
!2211 = !DILocation(line: 649, column: 10, scope: !2194)
!2212 = !DILocation(line: 649, column: 9, scope: !2194)
!2213 = !DILocation(line: 652, column: 3, scope: !2200)
!2214 = !DILocation(line: 652, column: 23, scope: !2200)
!2215 = !DILocation(line: 652, column: 26, scope: !2200)
!2216 = !DILocation(line: 652, column: 11, scope: !2200)
!2217 = !DILocation(line: 652, column: 10, scope: !2200)
!2218 = !DILocation(line: 653, column: 8, scope: !2199)
!2219 = !DILocation(line: 653, column: 8, scope: !2200)
!2220 = !DILocation(line: 653, column: 6, scope: !2200)
!2221 = distinct !{!2221, !2213, !2219, !2045, !2046}
!2222 = !DILocation(line: 660, column: 7, scope: !2203)
!2223 = !DILocation(line: 660, column: 12, scope: !2203)
!2224 = !DILocation(line: 660, column: 9, scope: !2203)
!2225 = !DILocation(line: 660, column: 7, scope: !2200)
!2226 = !DILocation(line: 661, column: 4, scope: !2202)
!2227 = !DILocation(line: 661, column: 18, scope: !2202)
!2228 = !DILocation(line: 661, column: 27, scope: !2202)
!2229 = !DILocation(line: 661, column: 30, scope: !2202)
!2230 = !DILocation(line: 663, column: 27, scope: !2202)
!2231 = !DILocation(line: 663, column: 30, scope: !2202)
!2232 = !DILocation(line: 663, column: 4, scope: !2202)
!2233 = !DILocation(line: 664, column: 23, scope: !2202)
!2234 = !DILocation(line: 664, column: 4, scope: !2202)
!2235 = !DILocation(line: 666, column: 8, scope: !2202)
!2236 = !DILocation(line: 666, column: 6, scope: !2202)
!2237 = !DILocation(line: 667, column: 3, scope: !2203)
!2238 = !DILocation(line: 667, column: 3, scope: !2202)
!2239 = distinct !{!2239, !2208, !2240, !2045, !2046}
!2240 = !DILocation(line: 668, column: 2, scope: !2194)
!2241 = !DILocation(line: 673, column: 25, scope: !2194)
!2242 = !DILocation(line: 673, column: 32, scope: !2194)
!2243 = !DILocation(line: 673, column: 2, scope: !2194)
!2244 = !DILocation(line: 674, column: 1, scope: !2194)
!2245 = distinct !DISubprogram(name: "serio_destroy_port", scope: !3, file: !3, line: 550, type: !214, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2246)
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "serio", arg: 1, scope: !2245, file: !3, line: 550, type: !134)
!2248 = !DILocalVariable(name: "child", scope: !2245, file: !3, line: 552, type: !134)
!2249 = !DILocation(line: 550, column: 46, scope: !2245)
!2250 = !DILocation(line: 552, column: 2, scope: !2245)
!2251 = !DILocation(line: 552, column: 16, scope: !2245)
!2252 = !DILocation(line: 554, column: 2, scope: !2245)
!2253 = !DILocation(line: 554, column: 42, scope: !2245)
!2254 = !DILocation(line: 554, column: 18, scope: !2245)
!2255 = !DILocation(line: 554, column: 16, scope: !2245)
!2256 = !DILocation(line: 554, column: 50, scope: !2245)
!2257 = !DILocation(line: 555, column: 31, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 554, column: 59)
!2259 = !DILocation(line: 555, column: 3, scope: !2258)
!2260 = !DILocation(line: 556, column: 15, scope: !2258)
!2261 = !DILocation(line: 556, column: 22, scope: !2258)
!2262 = !DILocation(line: 556, column: 3, scope: !2258)
!2263 = distinct !{!2263, !2252, !2264, !2045, !2046}
!2264 = !DILocation(line: 557, column: 2, scope: !2245)
!2265 = !DILocation(line: 559, column: 6, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 559, column: 6)
!2267 = !DILocation(line: 559, column: 13, scope: !2266)
!2268 = !DILocation(line: 559, column: 6, scope: !2245)
!2269 = !DILocation(line: 560, column: 3, scope: !2266)
!2270 = !DILocation(line: 560, column: 10, scope: !2266)
!2271 = !DILocation(line: 560, column: 15, scope: !2266)
!2272 = !DILocation(line: 562, column: 6, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 562, column: 6)
!2274 = !DILocation(line: 562, column: 13, scope: !2273)
!2275 = !DILocation(line: 562, column: 6, scope: !2245)
!2276 = !DILocation(line: 563, column: 18, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 562, column: 21)
!2278 = !DILocation(line: 563, column: 25, scope: !2277)
!2279 = !DILocation(line: 563, column: 3, scope: !2277)
!2280 = !DILocation(line: 564, column: 18, scope: !2277)
!2281 = !DILocation(line: 564, column: 25, scope: !2277)
!2282 = !DILocation(line: 564, column: 3, scope: !2277)
!2283 = !DILocation(line: 565, column: 21, scope: !2277)
!2284 = !DILocation(line: 565, column: 28, scope: !2277)
!2285 = !DILocation(line: 565, column: 3, scope: !2277)
!2286 = !DILocation(line: 566, column: 3, scope: !2277)
!2287 = !DILocation(line: 566, column: 10, scope: !2277)
!2288 = !DILocation(line: 566, column: 17, scope: !2277)
!2289 = !DILocation(line: 567, column: 2, scope: !2277)
!2290 = !DILocation(line: 569, column: 28, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 569, column: 6)
!2292 = !DILocation(line: 569, column: 35, scope: !2291)
!2293 = !DILocation(line: 569, column: 6, scope: !2291)
!2294 = !DILocation(line: 569, column: 6, scope: !2245)
!2295 = !DILocation(line: 570, column: 15, scope: !2291)
!2296 = !DILocation(line: 570, column: 22, scope: !2291)
!2297 = !DILocation(line: 570, column: 3, scope: !2291)
!2298 = !DILocation(line: 572, column: 17, scope: !2245)
!2299 = !DILocation(line: 572, column: 24, scope: !2245)
!2300 = !DILocation(line: 572, column: 2, scope: !2245)
!2301 = !DILocation(line: 573, column: 30, scope: !2245)
!2302 = !DILocation(line: 573, column: 2, scope: !2245)
!2303 = !DILocation(line: 574, column: 14, scope: !2245)
!2304 = !DILocation(line: 574, column: 21, scope: !2245)
!2305 = !DILocation(line: 574, column: 2, scope: !2245)
!2306 = !DILocation(line: 575, column: 1, scope: !2245)
!2307 = !DISubprogram(name: "mutex_unlock", scope: !489, file: !489, line: 246, type: !2192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2308 = distinct !DISubprogram(name: "serio_unregister_child_port", scope: !3, file: !3, line: 714, type: !214, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2316, !2318}
!2310 = !DILocalVariable(name: "serio", arg: 1, scope: !2308, file: !3, line: 714, type: !134)
!2311 = !DILocalVariable(name: "s", scope: !2308, file: !3, line: 716, type: !134)
!2312 = !DILocalVariable(name: "next", scope: !2308, file: !3, line: 716, type: !134)
!2313 = !DILocalVariable(name: "__mptr", scope: !2314, file: !3, line: 719, type: !133)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 719, column: 2)
!2315 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 719, column: 2)
!2316 = !DILocalVariable(name: "__mptr", scope: !2317, file: !3, line: 719, type: !133)
!2317 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 719, column: 2)
!2318 = !DILocalVariable(name: "__mptr", scope: !2319, file: !3, line: 719, type: !133)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 719, column: 2)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 719, column: 2)
!2321 = !DILocation(line: 714, column: 48, scope: !2308)
!2322 = !DILocation(line: 716, column: 2, scope: !2308)
!2323 = !DILocation(line: 716, column: 16, scope: !2308)
!2324 = !DILocation(line: 716, column: 20, scope: !2308)
!2325 = !DILocation(line: 718, column: 2, scope: !2308)
!2326 = !DILocation(line: 719, column: 2, scope: !2314)
!2327 = !DILocation(line: 719, column: 2, scope: !2315)
!2328 = !DILocation(line: 719, column: 2, scope: !2317)
!2329 = !DILocation(line: 719, column: 2, scope: !2320)
!2330 = !DILocation(line: 720, column: 25, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 719, column: 66)
!2332 = !DILocation(line: 720, column: 3, scope: !2331)
!2333 = !DILocation(line: 721, column: 22, scope: !2331)
!2334 = !DILocation(line: 721, column: 3, scope: !2331)
!2335 = !DILocation(line: 722, column: 2, scope: !2331)
!2336 = !DILocation(line: 719, column: 2, scope: !2319)
!2337 = distinct !{!2337, !2327, !2338, !2045, !2046}
!2338 = !DILocation(line: 722, column: 2, scope: !2315)
!2339 = !DILocation(line: 723, column: 2, scope: !2308)
!2340 = !DILocation(line: 724, column: 1, scope: !2308)
!2341 = distinct !DISubprogram(name: "__serio_register_driver", scope: !3, file: !3, line: 810, type: !2342, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!39, !228, !1300, !232}
!2344 = !{!2345, !2346, !2347, !2348, !2349}
!2345 = !DILocalVariable(name: "drv", arg: 1, scope: !2341, file: !3, line: 810, type: !228)
!2346 = !DILocalVariable(name: "owner", arg: 2, scope: !2341, file: !3, line: 810, type: !1300)
!2347 = !DILocalVariable(name: "mod_name", arg: 3, scope: !2341, file: !3, line: 810, type: !232)
!2348 = !DILocalVariable(name: "manual_bind", scope: !2341, file: !3, line: 812, type: !150)
!2349 = !DILocalVariable(name: "error", scope: !2341, file: !3, line: 813, type: !39)
!2350 = !DILocation(line: 810, column: 50, scope: !2341)
!2351 = !DILocation(line: 810, column: 70, scope: !2341)
!2352 = !DILocation(line: 810, column: 89, scope: !2341)
!2353 = !DILocation(line: 812, column: 2, scope: !2341)
!2354 = !DILocation(line: 812, column: 7, scope: !2341)
!2355 = !DILocation(line: 812, column: 21, scope: !2341)
!2356 = !DILocation(line: 812, column: 26, scope: !2341)
!2357 = !{i8 0, i8 2}
!2358 = !DILocation(line: 813, column: 2, scope: !2341)
!2359 = !DILocation(line: 813, column: 6, scope: !2341)
!2360 = !DILocation(line: 815, column: 2, scope: !2341)
!2361 = !DILocation(line: 815, column: 7, scope: !2341)
!2362 = !DILocation(line: 815, column: 14, scope: !2341)
!2363 = !DILocation(line: 815, column: 18, scope: !2341)
!2364 = !DILocation(line: 816, column: 22, scope: !2341)
!2365 = !DILocation(line: 816, column: 2, scope: !2341)
!2366 = !DILocation(line: 816, column: 7, scope: !2341)
!2367 = !DILocation(line: 816, column: 14, scope: !2341)
!2368 = !DILocation(line: 816, column: 20, scope: !2341)
!2369 = !DILocation(line: 817, column: 25, scope: !2341)
!2370 = !DILocation(line: 817, column: 2, scope: !2341)
!2371 = !DILocation(line: 817, column: 7, scope: !2341)
!2372 = !DILocation(line: 817, column: 14, scope: !2341)
!2373 = !DILocation(line: 817, column: 23, scope: !2341)
!2374 = !DILocation(line: 823, column: 2, scope: !2341)
!2375 = !DILocation(line: 823, column: 7, scope: !2341)
!2376 = !DILocation(line: 823, column: 19, scope: !2341)
!2377 = !DILocation(line: 825, column: 27, scope: !2341)
!2378 = !DILocation(line: 825, column: 32, scope: !2341)
!2379 = !DILocation(line: 825, column: 10, scope: !2341)
!2380 = !DILocation(line: 825, column: 8, scope: !2341)
!2381 = !DILocation(line: 826, column: 6, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 826, column: 6)
!2383 = !DILocation(line: 826, column: 6, scope: !2341)
!2384 = !DILocation(line: 827, column: 3, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 827, column: 3)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 826, column: 13)
!2387 = !DILocation(line: 827, column: 3, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 827, column: 3)
!2389 = !DILocation(line: 829, column: 10, scope: !2386)
!2390 = !DILocation(line: 829, column: 3, scope: !2386)
!2391 = !DILocation(line: 836, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 836, column: 6)
!2393 = !DILocation(line: 836, column: 6, scope: !2341)
!2394 = !DILocation(line: 837, column: 3, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 836, column: 20)
!2396 = !DILocation(line: 837, column: 8, scope: !2395)
!2397 = !DILocation(line: 837, column: 20, scope: !2395)
!2398 = !DILocation(line: 838, column: 29, scope: !2395)
!2399 = !DILocation(line: 838, column: 11, scope: !2395)
!2400 = !DILocation(line: 838, column: 9, scope: !2395)
!2401 = !DILocation(line: 839, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 839, column: 7)
!2403 = !DILocation(line: 839, column: 7, scope: !2395)
!2404 = !DILocation(line: 840, column: 23, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 839, column: 14)
!2406 = !DILocation(line: 840, column: 28, scope: !2405)
!2407 = !DILocation(line: 840, column: 4, scope: !2405)
!2408 = !DILocation(line: 841, column: 11, scope: !2405)
!2409 = !DILocation(line: 841, column: 4, scope: !2405)
!2410 = !DILocation(line: 843, column: 2, scope: !2395)
!2411 = !DILocation(line: 845, column: 2, scope: !2341)
!2412 = !DILocation(line: 846, column: 1, scope: !2341)
!2413 = !DISubprogram(name: "driver_register", scope: !79, file: !79, line: 125, type: !2414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!39, !948}
!2416 = !DISubprogram(name: "_printk", scope: !2417, file: !2417, line: 153, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2417 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!39, !232, null}
!2420 = !DISubprogram(name: "driver_unregister", scope: !79, file: !79, line: 126, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !948}
!2423 = distinct !DISubprogram(name: "serio_unregister_driver", scope: !3, file: !3, line: 849, type: !2424, scopeLine: 850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !228}
!2426 = !{!2427, !2428, !2429, !2430, !2433}
!2427 = !DILocalVariable(name: "drv", arg: 1, scope: !2423, file: !3, line: 849, type: !228)
!2428 = !DILocalVariable(name: "serio", scope: !2423, file: !3, line: 851, type: !134)
!2429 = !DILabel(scope: !2423, name: "start_over", file: !3, line: 858)
!2430 = !DILocalVariable(name: "__mptr", scope: !2431, file: !3, line: 859, type: !133)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 859, column: 2)
!2432 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 859, column: 2)
!2433 = !DILocalVariable(name: "__mptr", scope: !2434, file: !3, line: 859, type: !133)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 859, column: 2)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 859, column: 2)
!2436 = !DILocation(line: 849, column: 51, scope: !2423)
!2437 = !DILocation(line: 851, column: 2, scope: !2423)
!2438 = !DILocation(line: 851, column: 16, scope: !2423)
!2439 = !DILocation(line: 853, column: 2, scope: !2423)
!2440 = !DILocation(line: 855, column: 2, scope: !2423)
!2441 = !DILocation(line: 855, column: 7, scope: !2423)
!2442 = !DILocation(line: 855, column: 19, scope: !2423)
!2443 = !DILocation(line: 856, column: 30, scope: !2423)
!2444 = !DILocation(line: 856, column: 2, scope: !2423)
!2445 = !DILocation(line: 858, column: 1, scope: !2423)
!2446 = !DILocation(line: 859, column: 2, scope: !2431)
!2447 = !DILocation(line: 859, column: 2, scope: !2432)
!2448 = !DILocation(line: 859, column: 2, scope: !2435)
!2449 = !DILocation(line: 860, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 860, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 859, column: 48)
!2452 = !DILocation(line: 860, column: 14, scope: !2450)
!2453 = !DILocation(line: 860, column: 21, scope: !2450)
!2454 = !DILocation(line: 860, column: 18, scope: !2450)
!2455 = !DILocation(line: 860, column: 7, scope: !2451)
!2456 = !DILocation(line: 861, column: 26, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 860, column: 26)
!2458 = !DILocation(line: 861, column: 4, scope: !2457)
!2459 = !DILocation(line: 862, column: 22, scope: !2457)
!2460 = !DILocation(line: 862, column: 4, scope: !2457)
!2461 = !DILocation(line: 864, column: 4, scope: !2457)
!2462 = !DILocation(line: 866, column: 2, scope: !2451)
!2463 = !DILocation(line: 859, column: 2, scope: !2434)
!2464 = distinct !{!2464, !2447, !2465, !2045, !2046}
!2465 = !DILocation(line: 866, column: 2, scope: !2432)
!2466 = !DILocation(line: 868, column: 21, scope: !2423)
!2467 = !DILocation(line: 868, column: 26, scope: !2423)
!2468 = !DILocation(line: 868, column: 2, scope: !2423)
!2469 = !DILocation(line: 869, column: 2, scope: !2423)
!2470 = !DILocation(line: 870, column: 1, scope: !2423)
!2471 = distinct !DISubprogram(name: "serio_remove_pending_events", scope: !3, file: !3, line: 292, type: !399, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2472)
!2472 = !{!2473, !2474, !2475, !2476, !2477, !2481, !2482, !2485, !2487}
!2473 = !DILocalVariable(name: "object", arg: 1, scope: !2471, file: !3, line: 292, type: !133)
!2474 = !DILocalVariable(name: "event", scope: !2471, file: !3, line: 294, type: !1696)
!2475 = !DILocalVariable(name: "next", scope: !2471, file: !3, line: 294, type: !1696)
!2476 = !DILocalVariable(name: "flags", scope: !2471, file: !3, line: 295, type: !366)
!2477 = !DILocalVariable(name: "__dummy", scope: !2478, file: !3, line: 297, type: !366)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 297, column: 2)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 297, column: 2)
!2480 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 297, column: 2)
!2481 = !DILocalVariable(name: "__dummy2", scope: !2478, file: !3, line: 297, type: !366)
!2482 = !DILocalVariable(name: "__mptr", scope: !2483, file: !3, line: 299, type: !133)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 299, column: 2)
!2484 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 299, column: 2)
!2485 = !DILocalVariable(name: "__mptr", scope: !2486, file: !3, line: 299, type: !133)
!2486 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 299, column: 2)
!2487 = !DILocalVariable(name: "__mptr", scope: !2488, file: !3, line: 299, type: !133)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 299, column: 2)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 299, column: 2)
!2490 = !DILocation(line: 292, column: 47, scope: !2471)
!2491 = !DILocation(line: 294, column: 2, scope: !2471)
!2492 = !DILocation(line: 294, column: 22, scope: !2471)
!2493 = !DILocation(line: 294, column: 30, scope: !2471)
!2494 = !DILocation(line: 295, column: 2, scope: !2471)
!2495 = !DILocation(line: 295, column: 16, scope: !2471)
!2496 = !DILocation(line: 297, column: 2, scope: !2471)
!2497 = !DILocation(line: 297, column: 2, scope: !2480)
!2498 = !DILocation(line: 297, column: 2, scope: !2478)
!2499 = !DILocation(line: 297, column: 2, scope: !2479)
!2500 = !DILocation(line: 299, column: 2, scope: !2483)
!2501 = !DILocation(line: 299, column: 2, scope: !2484)
!2502 = !DILocation(line: 299, column: 2, scope: !2486)
!2503 = !DILocation(line: 299, column: 2, scope: !2489)
!2504 = !DILocation(line: 300, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 300, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 299, column: 65)
!2507 = !DILocation(line: 300, column: 14, scope: !2505)
!2508 = !DILocation(line: 300, column: 24, scope: !2505)
!2509 = !DILocation(line: 300, column: 21, scope: !2505)
!2510 = !DILocation(line: 300, column: 7, scope: !2506)
!2511 = !DILocation(line: 301, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 300, column: 32)
!2513 = !DILocation(line: 301, column: 26, scope: !2512)
!2514 = !DILocation(line: 301, column: 4, scope: !2512)
!2515 = !DILocation(line: 302, column: 21, scope: !2512)
!2516 = !DILocation(line: 302, column: 4, scope: !2512)
!2517 = !DILocation(line: 303, column: 3, scope: !2512)
!2518 = !DILocation(line: 304, column: 2, scope: !2506)
!2519 = !DILocation(line: 299, column: 2, scope: !2488)
!2520 = distinct !{!2520, !2501, !2521, !2045, !2046}
!2521 = !DILocation(line: 304, column: 2, scope: !2484)
!2522 = !DILocation(line: 306, column: 44, scope: !2471)
!2523 = !DILocation(line: 306, column: 2, scope: !2471)
!2524 = !DILocation(line: 307, column: 1, scope: !2471)
!2525 = distinct !DISubprogram(name: "serio_find_driver", scope: !3, file: !3, line: 113, type: !214, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2526)
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "serio", arg: 1, scope: !2525, file: !3, line: 113, type: !134)
!2528 = !DILocalVariable(name: "error", scope: !2525, file: !3, line: 115, type: !39)
!2529 = !DILocation(line: 113, column: 45, scope: !2525)
!2530 = !DILocation(line: 115, column: 2, scope: !2525)
!2531 = !DILocation(line: 115, column: 6, scope: !2525)
!2532 = !DILocation(line: 117, column: 25, scope: !2525)
!2533 = !DILocation(line: 117, column: 32, scope: !2525)
!2534 = !DILocation(line: 117, column: 10, scope: !2525)
!2535 = !DILocation(line: 117, column: 8, scope: !2525)
!2536 = !DILocation(line: 118, column: 6, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 118, column: 6)
!2538 = !DILocation(line: 118, column: 12, scope: !2537)
!2539 = !DILocation(line: 118, column: 16, scope: !2537)
!2540 = !DILocation(line: 118, column: 19, scope: !2537)
!2541 = !DILocation(line: 118, column: 25, scope: !2537)
!2542 = !DILocation(line: 118, column: 6, scope: !2525)
!2543 = !DILocation(line: 119, column: 3, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 119, column: 3)
!2545 = !DILocation(line: 119, column: 3, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 119, column: 3)
!2547 = !DILocation(line: 119, column: 3, scope: !2537)
!2548 = !DILocation(line: 122, column: 1, scope: !2525)
!2549 = distinct !DISubprogram(name: "serio_open", scope: !3, file: !3, line: 967, type: !246, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "serio", arg: 1, scope: !2549, file: !3, line: 967, type: !134)
!2552 = !DILocalVariable(name: "drv", arg: 2, scope: !2549, file: !3, line: 967, type: !228)
!2553 = !DILocation(line: 967, column: 30, scope: !2549)
!2554 = !DILocation(line: 967, column: 58, scope: !2549)
!2555 = !DILocation(line: 969, column: 16, scope: !2549)
!2556 = !DILocation(line: 969, column: 23, scope: !2549)
!2557 = !DILocation(line: 969, column: 2, scope: !2549)
!2558 = !DILocation(line: 971, column: 6, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 971, column: 6)
!2560 = !DILocation(line: 971, column: 13, scope: !2559)
!2561 = !DILocation(line: 971, column: 18, scope: !2559)
!2562 = !DILocation(line: 971, column: 21, scope: !2559)
!2563 = !DILocation(line: 971, column: 28, scope: !2559)
!2564 = !DILocation(line: 971, column: 33, scope: !2559)
!2565 = !DILocation(line: 971, column: 6, scope: !2549)
!2566 = !DILocation(line: 972, column: 17, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 971, column: 41)
!2568 = !DILocation(line: 972, column: 3, scope: !2567)
!2569 = !DILocation(line: 973, column: 3, scope: !2567)
!2570 = !DILocation(line: 975, column: 2, scope: !2549)
!2571 = !DILocation(line: 976, column: 1, scope: !2549)
!2572 = distinct !DISubprogram(name: "serio_set_drv", scope: !3, file: !3, line: 873, type: !2573, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !134, !228}
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "serio", arg: 1, scope: !2572, file: !3, line: 873, type: !134)
!2577 = !DILocalVariable(name: "drv", arg: 2, scope: !2572, file: !3, line: 873, type: !228)
!2578 = !DILocation(line: 873, column: 41, scope: !2572)
!2579 = !DILocation(line: 873, column: 69, scope: !2572)
!2580 = !DILocation(line: 875, column: 17, scope: !2572)
!2581 = !DILocation(line: 875, column: 2, scope: !2572)
!2582 = !DILocation(line: 876, column: 15, scope: !2572)
!2583 = !DILocation(line: 876, column: 2, scope: !2572)
!2584 = !DILocation(line: 876, column: 9, scope: !2572)
!2585 = !DILocation(line: 876, column: 13, scope: !2572)
!2586 = !DILocation(line: 877, column: 20, scope: !2572)
!2587 = !DILocation(line: 877, column: 2, scope: !2572)
!2588 = !DILocation(line: 878, column: 1, scope: !2572)
!2589 = distinct !DISubprogram(name: "serio_close", scope: !3, file: !3, line: 980, type: !214, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2590 = !{!2591}
!2591 = !DILocalVariable(name: "serio", arg: 1, scope: !2589, file: !3, line: 980, type: !134)
!2592 = !DILocation(line: 980, column: 32, scope: !2589)
!2593 = !DILocation(line: 982, column: 6, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 982, column: 6)
!2595 = !DILocation(line: 982, column: 13, scope: !2594)
!2596 = !DILocation(line: 982, column: 6, scope: !2589)
!2597 = !DILocation(line: 983, column: 3, scope: !2594)
!2598 = !DILocation(line: 983, column: 10, scope: !2594)
!2599 = !DILocation(line: 983, column: 16, scope: !2594)
!2600 = !DILocation(line: 985, column: 16, scope: !2589)
!2601 = !DILocation(line: 985, column: 2, scope: !2589)
!2602 = !DILocation(line: 986, column: 1, scope: !2589)
!2603 = distinct !DISubprogram(name: "serio_interrupt", scope: !3, file: !3, line: 989, type: !241, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2614}
!2605 = !DILocalVariable(name: "serio", arg: 1, scope: !2603, file: !3, line: 989, type: !134)
!2606 = !DILocalVariable(name: "data", arg: 2, scope: !2603, file: !3, line: 990, type: !160)
!2607 = !DILocalVariable(name: "dfl", arg: 3, scope: !2603, file: !3, line: 990, type: !7)
!2608 = !DILocalVariable(name: "flags", scope: !2603, file: !3, line: 992, type: !366)
!2609 = !DILocalVariable(name: "ret", scope: !2603, file: !3, line: 993, type: !243)
!2610 = !DILocalVariable(name: "__dummy", scope: !2611, file: !3, line: 995, type: !366)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 995, column: 2)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 995, column: 2)
!2613 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 995, column: 2)
!2614 = !DILocalVariable(name: "__dummy2", scope: !2611, file: !3, line: 995, type: !366)
!2615 = !DILocation(line: 989, column: 43, scope: !2603)
!2616 = !DILocation(line: 990, column: 17, scope: !2603)
!2617 = !DILocation(line: 990, column: 36, scope: !2603)
!2618 = !DILocation(line: 992, column: 2, scope: !2603)
!2619 = !DILocation(line: 992, column: 16, scope: !2603)
!2620 = !DILocation(line: 993, column: 2, scope: !2603)
!2621 = !DILocation(line: 993, column: 14, scope: !2603)
!2622 = !DILocation(line: 995, column: 2, scope: !2603)
!2623 = !DILocation(line: 995, column: 2, scope: !2613)
!2624 = !DILocation(line: 995, column: 2, scope: !2611)
!2625 = !DILocation(line: 995, column: 2, scope: !2612)
!2626 = !DILocation(line: 997, column: 13, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 997, column: 13)
!2628 = !DILocation(line: 997, column: 13, scope: !2603)
!2629 = !DILocation(line: 998, column: 23, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 997, column: 33)
!2631 = !DILocation(line: 998, column: 30, scope: !2630)
!2632 = !DILocation(line: 998, column: 35, scope: !2630)
!2633 = !DILocation(line: 998, column: 45, scope: !2630)
!2634 = !DILocation(line: 998, column: 52, scope: !2630)
!2635 = !DILocation(line: 998, column: 58, scope: !2630)
!2636 = !DILocation(line: 998, column: 21, scope: !2630)
!2637 = !DILocation(line: 999, column: 2, scope: !2630)
!2638 = !DILocation(line: 999, column: 14, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 999, column: 13)
!2640 = !DILocation(line: 999, column: 18, scope: !2639)
!2641 = !DILocation(line: 999, column: 43, scope: !2639)
!2642 = !DILocation(line: 999, column: 50, scope: !2639)
!2643 = !DILocation(line: 999, column: 21, scope: !2639)
!2644 = !DILocation(line: 999, column: 13, scope: !2627)
!2645 = !DILocation(line: 1000, column: 16, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 999, column: 56)
!2647 = !DILocation(line: 1000, column: 3, scope: !2646)
!2648 = !DILocation(line: 1001, column: 7, scope: !2646)
!2649 = !DILocation(line: 1002, column: 2, scope: !2646)
!2650 = !DILocation(line: 1004, column: 26, scope: !2603)
!2651 = !DILocation(line: 1004, column: 33, scope: !2603)
!2652 = !DILocation(line: 1004, column: 39, scope: !2603)
!2653 = !DILocation(line: 1004, column: 2, scope: !2603)
!2654 = !DILocation(line: 1006, column: 9, scope: !2603)
!2655 = !DILocation(line: 1007, column: 1, scope: !2603)
!2656 = !DILocation(line: 1006, column: 2, scope: !2603)
!2657 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2658, file: !2658, line: 32, type: !2659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2658 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!366, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!2662 = distinct !DISubprogram(name: "spinlock_check", scope: !2663, file: !2663, line: 324, type: !2664, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2667)
!2663 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!2661, !2666}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!2667 = !{!2668}
!2668 = !DILocalVariable(name: "lock", arg: 1, scope: !2662, file: !2663, line: 324, type: !2666)
!2669 = !DILocation(line: 324, column: 67, scope: !2662)
!2670 = !DILocation(line: 326, column: 10, scope: !2662)
!2671 = !DILocation(line: 326, column: 16, scope: !2662)
!2672 = !DILocation(line: 326, column: 2, scope: !2662)
!2673 = distinct !DISubprogram(name: "device_is_registered", scope: !19, file: !19, line: 941, type: !922, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2674)
!2674 = !{!2675}
!2675 = !DILocalVariable(name: "dev", arg: 1, scope: !2673, file: !19, line: 941, type: !884)
!2676 = !DILocation(line: 941, column: 55, scope: !2673)
!2677 = !DILocation(line: 943, column: 9, scope: !2673)
!2678 = !DILocation(line: 943, column: 14, scope: !2673)
!2679 = !DILocation(line: 943, column: 19, scope: !2673)
!2680 = !DILocation(line: 943, column: 2, scope: !2673)
!2681 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2663, file: !2663, line: 404, type: !2682, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !2666, !366}
!2684 = !{!2685, !2686, !2687, !2690}
!2685 = !DILocalVariable(name: "lock", arg: 1, scope: !2681, file: !2663, line: 404, type: !2666)
!2686 = !DILocalVariable(name: "flags", arg: 2, scope: !2681, file: !2663, line: 404, type: !366)
!2687 = !DILocalVariable(name: "__dummy", scope: !2688, file: !2663, line: 406, type: !366)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !2663, line: 406, column: 2)
!2689 = distinct !DILexicalBlock(scope: !2681, file: !2663, line: 406, column: 2)
!2690 = !DILocalVariable(name: "__dummy2", scope: !2688, file: !2663, line: 406, type: !366)
!2691 = !DILocation(line: 404, column: 64, scope: !2681)
!2692 = !DILocation(line: 404, column: 84, scope: !2681)
!2693 = !DILocation(line: 406, column: 2, scope: !2681)
!2694 = !DILocation(line: 406, column: 2, scope: !2688)
!2695 = !DILocation(line: 406, column: 2, scope: !2689)
!2696 = !DILocation(line: 407, column: 1, scope: !2681)
!2697 = distinct !DISubprogram(name: "serio_bus_match", scope: !3, file: !3, line: 880, type: !882, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2698)
!2698 = !{!2699, !2700, !2701, !2702, !2704, !2705}
!2699 = !DILocalVariable(name: "dev", arg: 1, scope: !2697, file: !3, line: 880, type: !884)
!2700 = !DILocalVariable(name: "drv", arg: 2, scope: !2697, file: !3, line: 880, type: !948)
!2701 = !DILocalVariable(name: "serio", scope: !2697, file: !3, line: 882, type: !134)
!2702 = !DILocalVariable(name: "__mptr", scope: !2703, file: !3, line: 882, type: !133)
!2703 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 882, column: 24)
!2704 = !DILocalVariable(name: "serio_drv", scope: !2697, file: !3, line: 883, type: !228)
!2705 = !DILocalVariable(name: "__mptr", scope: !2706, file: !3, line: 883, type: !133)
!2706 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 883, column: 35)
!2707 = !DILocation(line: 880, column: 43, scope: !2697)
!2708 = !DILocation(line: 880, column: 70, scope: !2697)
!2709 = !DILocation(line: 882, column: 2, scope: !2697)
!2710 = !DILocation(line: 882, column: 16, scope: !2697)
!2711 = !DILocation(line: 882, column: 24, scope: !2703)
!2712 = !DILocation(line: 882, column: 24, scope: !2697)
!2713 = !DILocation(line: 883, column: 2, scope: !2697)
!2714 = !DILocation(line: 883, column: 23, scope: !2697)
!2715 = !DILocation(line: 883, column: 35, scope: !2706)
!2716 = !DILocation(line: 883, column: 35, scope: !2697)
!2717 = !DILocation(line: 885, column: 6, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 885, column: 6)
!2719 = !DILocation(line: 885, column: 13, scope: !2718)
!2720 = !DILocation(line: 885, column: 25, scope: !2718)
!2721 = !DILocation(line: 885, column: 28, scope: !2718)
!2722 = !DILocation(line: 885, column: 39, scope: !2718)
!2723 = !DILocation(line: 885, column: 6, scope: !2697)
!2724 = !DILocation(line: 886, column: 3, scope: !2718)
!2725 = !DILocation(line: 888, column: 26, scope: !2697)
!2726 = !DILocation(line: 888, column: 37, scope: !2697)
!2727 = !DILocation(line: 888, column: 47, scope: !2697)
!2728 = !DILocation(line: 888, column: 9, scope: !2697)
!2729 = !DILocation(line: 888, column: 2, scope: !2697)
!2730 = !DILocation(line: 889, column: 1, scope: !2697)
!2731 = distinct !DISubprogram(name: "serio_uevent", scope: !3, file: !3, line: 898, type: !902, scopeLine: 899, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2732)
!2732 = !{!2733, !2734, !2735, !2738, !2740, !2742, !2744, !2746, !2748, !2750}
!2733 = !DILocalVariable(name: "dev", arg: 1, scope: !2731, file: !3, line: 898, type: !904)
!2734 = !DILocalVariable(name: "env", arg: 2, scope: !2731, file: !3, line: 898, type: !313)
!2735 = !DILocalVariable(name: "serio", scope: !2731, file: !3, line: 900, type: !2736)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!2738 = !DILocalVariable(name: "__mptr", scope: !2739, file: !3, line: 905, type: !133)
!2739 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 905, column: 10)
!2740 = !DILocalVariable(name: "err", scope: !2741, file: !3, line: 907, type: !39)
!2741 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 907, column: 2)
!2742 = !DILocalVariable(name: "err", scope: !2743, file: !3, line: 908, type: !39)
!2743 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 908, column: 2)
!2744 = !DILocalVariable(name: "err", scope: !2745, file: !3, line: 909, type: !39)
!2745 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 909, column: 2)
!2746 = !DILocalVariable(name: "err", scope: !2747, file: !3, line: 910, type: !39)
!2747 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 910, column: 2)
!2748 = !DILocalVariable(name: "err", scope: !2749, file: !3, line: 912, type: !39)
!2749 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 912, column: 2)
!2750 = !DILocalVariable(name: "err", scope: !2751, file: !3, line: 916, type: !39)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 916, column: 3)
!2752 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 915, column: 6)
!2753 = !DILocation(line: 898, column: 46, scope: !2731)
!2754 = !DILocation(line: 898, column: 75, scope: !2731)
!2755 = !DILocation(line: 900, column: 2, scope: !2731)
!2756 = !DILocation(line: 900, column: 22, scope: !2731)
!2757 = !DILocation(line: 902, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 902, column: 6)
!2759 = !DILocation(line: 902, column: 6, scope: !2731)
!2760 = !DILocation(line: 903, column: 3, scope: !2758)
!2761 = !DILocation(line: 905, column: 10, scope: !2739)
!2762 = !DILocation(line: 905, column: 10, scope: !2731)
!2763 = !DILocation(line: 905, column: 8, scope: !2731)
!2764 = !DILocation(line: 907, column: 2, scope: !2731)
!2765 = !DILocation(line: 907, column: 2, scope: !2741)
!2766 = !DILocation(line: 907, column: 2, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 907, column: 2)
!2768 = !DILocation(line: 908, column: 2, scope: !2731)
!2769 = !DILocation(line: 908, column: 2, scope: !2743)
!2770 = !DILocation(line: 908, column: 2, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 908, column: 2)
!2772 = !DILocation(line: 909, column: 2, scope: !2731)
!2773 = !DILocation(line: 909, column: 2, scope: !2745)
!2774 = !DILocation(line: 909, column: 2, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 909, column: 2)
!2776 = !DILocation(line: 910, column: 2, scope: !2731)
!2777 = !DILocation(line: 910, column: 2, scope: !2747)
!2778 = !DILocation(line: 910, column: 2, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 910, column: 2)
!2780 = !DILocation(line: 912, column: 2, scope: !2731)
!2781 = !DILocation(line: 912, column: 2, scope: !2749)
!2782 = !DILocation(line: 912, column: 2, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 912, column: 2)
!2784 = !DILocation(line: 915, column: 6, scope: !2752)
!2785 = !DILocation(line: 915, column: 13, scope: !2752)
!2786 = !DILocation(line: 915, column: 6, scope: !2731)
!2787 = !DILocation(line: 916, column: 3, scope: !2752)
!2788 = !DILocation(line: 916, column: 3, scope: !2751)
!2789 = !DILocation(line: 916, column: 3, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 916, column: 3)
!2791 = !DILocation(line: 919, column: 2, scope: !2731)
!2792 = !DILocation(line: 920, column: 1, scope: !2731)
!2793 = distinct !DISubprogram(name: "serio_driver_probe", scope: !3, file: !3, line: 770, type: !922, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2794)
!2794 = !{!2795, !2796, !2797, !2799, !2800}
!2795 = !DILocalVariable(name: "dev", arg: 1, scope: !2793, file: !3, line: 770, type: !884)
!2796 = !DILocalVariable(name: "serio", scope: !2793, file: !3, line: 772, type: !134)
!2797 = !DILocalVariable(name: "__mptr", scope: !2798, file: !3, line: 772, type: !133)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 772, column: 24)
!2799 = !DILocalVariable(name: "drv", scope: !2793, file: !3, line: 773, type: !228)
!2800 = !DILocalVariable(name: "__mptr", scope: !2801, file: !3, line: 773, type: !133)
!2801 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 773, column: 29)
!2802 = !DILocation(line: 770, column: 46, scope: !2793)
!2803 = !DILocation(line: 772, column: 2, scope: !2793)
!2804 = !DILocation(line: 772, column: 16, scope: !2793)
!2805 = !DILocation(line: 772, column: 24, scope: !2798)
!2806 = !DILocation(line: 772, column: 24, scope: !2793)
!2807 = !DILocation(line: 773, column: 2, scope: !2793)
!2808 = !DILocation(line: 773, column: 23, scope: !2793)
!2809 = !DILocation(line: 773, column: 29, scope: !2801)
!2810 = !DILocation(line: 773, column: 29, scope: !2793)
!2811 = !DILocation(line: 775, column: 30, scope: !2793)
!2812 = !DILocation(line: 775, column: 37, scope: !2793)
!2813 = !DILocation(line: 775, column: 9, scope: !2793)
!2814 = !DILocation(line: 776, column: 1, scope: !2793)
!2815 = !DILocation(line: 775, column: 2, scope: !2793)
!2816 = distinct !DISubprogram(name: "serio_driver_remove", scope: !3, file: !3, line: 778, type: !913, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2817)
!2817 = !{!2818, !2819, !2820}
!2818 = !DILocalVariable(name: "dev", arg: 1, scope: !2816, file: !3, line: 778, type: !884)
!2819 = !DILocalVariable(name: "serio", scope: !2816, file: !3, line: 780, type: !134)
!2820 = !DILocalVariable(name: "__mptr", scope: !2821, file: !3, line: 780, type: !133)
!2821 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 780, column: 24)
!2822 = !DILocation(line: 778, column: 48, scope: !2816)
!2823 = !DILocation(line: 780, column: 2, scope: !2816)
!2824 = !DILocation(line: 780, column: 16, scope: !2816)
!2825 = !DILocation(line: 780, column: 24, scope: !2821)
!2826 = !DILocation(line: 780, column: 24, scope: !2816)
!2827 = !DILocation(line: 782, column: 26, scope: !2816)
!2828 = !DILocation(line: 782, column: 2, scope: !2816)
!2829 = !DILocation(line: 783, column: 1, scope: !2816)
!2830 = distinct !DISubprogram(name: "serio_shutdown", scope: !3, file: !3, line: 793, type: !913, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2831 = !{!2832, !2833, !2834}
!2832 = !DILocalVariable(name: "dev", arg: 1, scope: !2830, file: !3, line: 793, type: !884)
!2833 = !DILocalVariable(name: "serio", scope: !2830, file: !3, line: 795, type: !134)
!2834 = !DILocalVariable(name: "__mptr", scope: !2835, file: !3, line: 795, type: !133)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 795, column: 24)
!2836 = !DILocation(line: 793, column: 43, scope: !2830)
!2837 = !DILocation(line: 795, column: 2, scope: !2830)
!2838 = !DILocation(line: 795, column: 16, scope: !2830)
!2839 = !DILocation(line: 795, column: 24, scope: !2835)
!2840 = !DILocation(line: 795, column: 24, scope: !2830)
!2841 = !DILocation(line: 797, column: 16, scope: !2830)
!2842 = !DILocation(line: 797, column: 2, scope: !2830)
!2843 = !DILocation(line: 798, column: 1, scope: !2830)
!2844 = distinct !DISubprogram(name: "serio_exit", scope: !3, file: !3, line: 1037, type: !1650, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2845 = !DILocation(line: 1039, column: 2, scope: !2844)
!2846 = !DILocation(line: 1045, column: 2, scope: !2844)
!2847 = !DILocation(line: 1046, column: 1, scope: !2844)
!2848 = !DISubprogram(name: "bus_unregister", scope: !260, file: !260, line: 114, type: !2849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !257}
!2851 = !DISubprogram(name: "cancel_work_sync", scope: !107, file: !107, line: 515, type: !2852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!150, !777}
!2854 = distinct !DISubprogram(name: "__initstub__kmod_serio__220_1048_serio_init4", scope: !3, file: !3, line: 1048, type: !1428, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2855 = !DILocation(line: 1048, column: 1, scope: !2854)
!2856 = distinct !DISubprogram(name: "serio_init", scope: !3, file: !3, line: 1024, type: !1428, scopeLine: 1025, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2857)
!2857 = !{!2858}
!2858 = !DILocalVariable(name: "error", scope: !2856, file: !3, line: 1026, type: !39)
!2859 = !DILocation(line: 1026, column: 2, scope: !2856)
!2860 = !DILocation(line: 1026, column: 6, scope: !2856)
!2861 = !DILocation(line: 1028, column: 10, scope: !2856)
!2862 = !DILocation(line: 1028, column: 8, scope: !2856)
!2863 = !DILocation(line: 1029, column: 6, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1029, column: 6)
!2865 = !DILocation(line: 1029, column: 6, scope: !2856)
!2866 = !DILocation(line: 1030, column: 3, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 1030, column: 3)
!2868 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1029, column: 13)
!2869 = !DILocation(line: 1030, column: 3, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1030, column: 3)
!2871 = !DILocation(line: 1031, column: 10, scope: !2868)
!2872 = !DILocation(line: 1031, column: 3, scope: !2868)
!2873 = !DILocation(line: 1034, column: 2, scope: !2856)
!2874 = !DILocation(line: 1035, column: 1, scope: !2856)
!2875 = distinct !DISubprogram(name: "kmalloc", scope: !97, file: !97, line: 591, type: !2876, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!133, !363, !1703}
!2878 = !{!2879, !2880, !2881}
!2879 = !DILocalVariable(name: "size", arg: 1, scope: !2875, file: !97, line: 591, type: !363)
!2880 = !DILocalVariable(name: "flags", arg: 2, scope: !2875, file: !97, line: 591, type: !1703)
!2881 = !DILocalVariable(name: "index", scope: !2882, file: !97, line: 594, type: !7)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !97, line: 593, column: 42)
!2883 = distinct !DILexicalBlock(scope: !2875, file: !97, line: 593, column: 6)
!2884 = !DILocation(line: 591, column: 61, scope: !2875)
!2885 = !DILocation(line: 591, column: 73, scope: !2875)
!2886 = !DILocation(line: 593, column: 27, scope: !2883)
!2887 = !DILocation(line: 593, column: 6, scope: !2883)
!2888 = !DILocation(line: 593, column: 33, scope: !2883)
!2889 = !DILocation(line: 593, column: 36, scope: !2883)
!2890 = !DILocation(line: 593, column: 6, scope: !2875)
!2891 = !DILocation(line: 594, column: 3, scope: !2882)
!2892 = !DILocation(line: 594, column: 16, scope: !2882)
!2893 = !DILocation(line: 596, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2882, file: !97, line: 596, column: 7)
!2895 = !DILocation(line: 596, column: 12, scope: !2894)
!2896 = !DILocation(line: 596, column: 7, scope: !2882)
!2897 = !DILocation(line: 597, column: 25, scope: !2894)
!2898 = !DILocation(line: 597, column: 31, scope: !2894)
!2899 = !DILocation(line: 597, column: 11, scope: !2894)
!2900 = !DILocation(line: 597, column: 4, scope: !2894)
!2901 = !DILocation(line: 599, column: 11, scope: !2882)
!2902 = !DILocation(line: 599, column: 9, scope: !2882)
!2903 = !DILocation(line: 601, column: 33, scope: !2882)
!2904 = !DILocation(line: 601, column: 40, scope: !2882)
!2905 = !DILocation(line: 601, column: 20, scope: !2882)
!2906 = !DILocation(line: 601, column: 5, scope: !2882)
!2907 = !DILocation(line: 601, column: 51, scope: !2882)
!2908 = !DILocation(line: 602, column: 5, scope: !2882)
!2909 = !DILocation(line: 602, column: 12, scope: !2882)
!2910 = !DILocation(line: 600, column: 10, scope: !2882)
!2911 = !DILocation(line: 600, column: 3, scope: !2882)
!2912 = !DILocation(line: 603, column: 2, scope: !2883)
!2913 = !DILocation(line: 604, column: 19, scope: !2875)
!2914 = !DILocation(line: 604, column: 25, scope: !2875)
!2915 = !DILocation(line: 604, column: 9, scope: !2875)
!2916 = !DILocation(line: 604, column: 2, scope: !2875)
!2917 = !DILocation(line: 605, column: 1, scope: !2875)
!2918 = !DISubprogram(name: "try_module_get", scope: !72, file: !72, line: 696, type: !2919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!150, !1300}
!2921 = !DISubprogram(name: "kfree", scope: !97, file: !97, line: 227, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{null, !389}
!2924 = distinct !DISubprogram(name: "list_add_tail", scope: !2925, file: !2925, line: 181, type: !2926, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2925 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !223, !223}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "new", arg: 1, scope: !2924, file: !2925, line: 181, type: !223)
!2930 = !DILocalVariable(name: "head", arg: 2, scope: !2924, file: !2925, line: 181, type: !223)
!2931 = !DILocation(line: 181, column: 52, scope: !2924)
!2932 = !DILocation(line: 181, column: 75, scope: !2924)
!2933 = !DILocation(line: 183, column: 13, scope: !2924)
!2934 = !DILocation(line: 183, column: 18, scope: !2924)
!2935 = !DILocation(line: 183, column: 24, scope: !2924)
!2936 = !DILocation(line: 183, column: 30, scope: !2924)
!2937 = !DILocation(line: 183, column: 2, scope: !2924)
!2938 = !DILocation(line: 184, column: 1, scope: !2924)
!2939 = distinct !DISubprogram(name: "queue_work", scope: !107, file: !107, line: 559, type: !2940, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!150, !1607, !777}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "wq", arg: 1, scope: !2939, file: !107, line: 559, type: !1607)
!2944 = !DILocalVariable(name: "work", arg: 2, scope: !2939, file: !107, line: 560, type: !777)
!2945 = !DILocation(line: 559, column: 56, scope: !2939)
!2946 = !DILocation(line: 560, column: 30, scope: !2939)
!2947 = !DILocation(line: 562, column: 41, scope: !2939)
!2948 = !DILocation(line: 562, column: 45, scope: !2939)
!2949 = !DILocation(line: 562, column: 9, scope: !2939)
!2950 = !DILocation(line: 562, column: 2, scope: !2939)
!2951 = !DISubprogram(name: "kmalloc_large", scope: !97, file: !97, line: 531, type: !2876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2952 = distinct !DISubprogram(name: "__kmalloc_index", scope: !97, file: !97, line: 444, type: !2953, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!7, !363, !150}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "size", arg: 1, scope: !2952, file: !97, line: 444, type: !363)
!2957 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2952, file: !97, line: 445, type: !150)
!2958 = !DILocation(line: 444, column: 60, scope: !2952)
!2959 = !DILocation(line: 445, column: 16, scope: !2952)
!2960 = !DILocation(line: 447, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 447, column: 6)
!2962 = !DILocation(line: 447, column: 6, scope: !2952)
!2963 = !DILocation(line: 448, column: 3, scope: !2961)
!2964 = !DILocation(line: 450, column: 6, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 450, column: 6)
!2966 = !DILocation(line: 450, column: 11, scope: !2965)
!2967 = !DILocation(line: 450, column: 6, scope: !2952)
!2968 = !DILocation(line: 451, column: 3, scope: !2965)
!2969 = !DILocation(line: 453, column: 32, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 453, column: 6)
!2971 = !DILocation(line: 453, column: 37, scope: !2970)
!2972 = !DILocation(line: 453, column: 42, scope: !2970)
!2973 = !DILocation(line: 453, column: 45, scope: !2970)
!2974 = !DILocation(line: 453, column: 50, scope: !2970)
!2975 = !DILocation(line: 453, column: 6, scope: !2952)
!2976 = !DILocation(line: 454, column: 3, scope: !2970)
!2977 = !DILocation(line: 455, column: 32, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 455, column: 6)
!2979 = !DILocation(line: 455, column: 37, scope: !2978)
!2980 = !DILocation(line: 455, column: 43, scope: !2978)
!2981 = !DILocation(line: 455, column: 46, scope: !2978)
!2982 = !DILocation(line: 455, column: 51, scope: !2978)
!2983 = !DILocation(line: 455, column: 6, scope: !2952)
!2984 = !DILocation(line: 456, column: 3, scope: !2978)
!2985 = !DILocation(line: 457, column: 6, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 457, column: 6)
!2987 = !DILocation(line: 457, column: 11, scope: !2986)
!2988 = !DILocation(line: 457, column: 6, scope: !2952)
!2989 = !DILocation(line: 457, column: 26, scope: !2986)
!2990 = !DILocation(line: 458, column: 6, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 458, column: 6)
!2992 = !DILocation(line: 458, column: 11, scope: !2991)
!2993 = !DILocation(line: 458, column: 6, scope: !2952)
!2994 = !DILocation(line: 458, column: 26, scope: !2991)
!2995 = !DILocation(line: 459, column: 6, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 459, column: 6)
!2997 = !DILocation(line: 459, column: 11, scope: !2996)
!2998 = !DILocation(line: 459, column: 6, scope: !2952)
!2999 = !DILocation(line: 459, column: 26, scope: !2996)
!3000 = !DILocation(line: 460, column: 6, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 460, column: 6)
!3002 = !DILocation(line: 460, column: 11, scope: !3001)
!3003 = !DILocation(line: 460, column: 6, scope: !2952)
!3004 = !DILocation(line: 460, column: 26, scope: !3001)
!3005 = !DILocation(line: 461, column: 6, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 461, column: 6)
!3007 = !DILocation(line: 461, column: 11, scope: !3006)
!3008 = !DILocation(line: 461, column: 6, scope: !2952)
!3009 = !DILocation(line: 461, column: 26, scope: !3006)
!3010 = !DILocation(line: 462, column: 6, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 462, column: 6)
!3012 = !DILocation(line: 462, column: 11, scope: !3011)
!3013 = !DILocation(line: 462, column: 6, scope: !2952)
!3014 = !DILocation(line: 462, column: 26, scope: !3011)
!3015 = !DILocation(line: 463, column: 6, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 463, column: 6)
!3017 = !DILocation(line: 463, column: 11, scope: !3016)
!3018 = !DILocation(line: 463, column: 6, scope: !2952)
!3019 = !DILocation(line: 463, column: 26, scope: !3016)
!3020 = !DILocation(line: 464, column: 6, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 464, column: 6)
!3022 = !DILocation(line: 464, column: 11, scope: !3021)
!3023 = !DILocation(line: 464, column: 6, scope: !2952)
!3024 = !DILocation(line: 464, column: 26, scope: !3021)
!3025 = !DILocation(line: 465, column: 6, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 465, column: 6)
!3027 = !DILocation(line: 465, column: 11, scope: !3026)
!3028 = !DILocation(line: 465, column: 6, scope: !2952)
!3029 = !DILocation(line: 465, column: 26, scope: !3026)
!3030 = !DILocation(line: 466, column: 6, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 466, column: 6)
!3032 = !DILocation(line: 466, column: 11, scope: !3031)
!3033 = !DILocation(line: 466, column: 6, scope: !2952)
!3034 = !DILocation(line: 466, column: 26, scope: !3031)
!3035 = !DILocation(line: 467, column: 6, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 467, column: 6)
!3037 = !DILocation(line: 467, column: 11, scope: !3036)
!3038 = !DILocation(line: 467, column: 6, scope: !2952)
!3039 = !DILocation(line: 467, column: 26, scope: !3036)
!3040 = !DILocation(line: 468, column: 6, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 468, column: 6)
!3042 = !DILocation(line: 468, column: 11, scope: !3041)
!3043 = !DILocation(line: 468, column: 6, scope: !2952)
!3044 = !DILocation(line: 468, column: 26, scope: !3041)
!3045 = !DILocation(line: 469, column: 6, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 469, column: 6)
!3047 = !DILocation(line: 469, column: 11, scope: !3046)
!3048 = !DILocation(line: 469, column: 6, scope: !2952)
!3049 = !DILocation(line: 469, column: 26, scope: !3046)
!3050 = !DILocation(line: 470, column: 6, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 470, column: 6)
!3052 = !DILocation(line: 470, column: 11, scope: !3051)
!3053 = !DILocation(line: 470, column: 6, scope: !2952)
!3054 = !DILocation(line: 470, column: 26, scope: !3051)
!3055 = !DILocation(line: 471, column: 6, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 471, column: 6)
!3057 = !DILocation(line: 471, column: 11, scope: !3056)
!3058 = !DILocation(line: 471, column: 6, scope: !2952)
!3059 = !DILocation(line: 471, column: 26, scope: !3056)
!3060 = !DILocation(line: 472, column: 6, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 472, column: 6)
!3062 = !DILocation(line: 472, column: 11, scope: !3061)
!3063 = !DILocation(line: 472, column: 6, scope: !2952)
!3064 = !DILocation(line: 472, column: 26, scope: !3061)
!3065 = !DILocation(line: 473, column: 6, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 473, column: 6)
!3067 = !DILocation(line: 473, column: 11, scope: !3066)
!3068 = !DILocation(line: 473, column: 6, scope: !2952)
!3069 = !DILocation(line: 473, column: 26, scope: !3066)
!3070 = !DILocation(line: 474, column: 6, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 474, column: 6)
!3072 = !DILocation(line: 474, column: 11, scope: !3071)
!3073 = !DILocation(line: 474, column: 6, scope: !2952)
!3074 = !DILocation(line: 474, column: 27, scope: !3071)
!3075 = !DILocation(line: 475, column: 6, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 475, column: 6)
!3077 = !DILocation(line: 475, column: 11, scope: !3076)
!3078 = !DILocation(line: 475, column: 6, scope: !2952)
!3079 = !DILocation(line: 475, column: 32, scope: !3076)
!3080 = !DILocation(line: 477, column: 50, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !2952, file: !97, line: 477, column: 6)
!3082 = !DILocation(line: 477, column: 6, scope: !2952)
!3083 = !DILocation(line: 478, column: 3, scope: !3081)
!3084 = !DILocation(line: 478, column: 3, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !97, line: 478, column: 3)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !97, line: 478, column: 3)
!3087 = !{i32 -2142164941}
!3088 = !DILocation(line: 478, column: 3, scope: !3086)
!3089 = !DILocation(line: 480, column: 3, scope: !3081)
!3090 = !DILocation(line: 480, column: 3, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3081, file: !97, line: 480, column: 3)
!3092 = !DILocation(line: 480, column: 3, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3091, file: !97, line: 480, column: 3)
!3094 = !DILocation(line: 480, column: 3, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !97, line: 480, column: 3)
!3096 = !{i64 2152802558, i64 2152802587, i64 2152802633, i64 2152802691, i64 2152802745, i64 2152802799, i64 2152802854, i64 2152802885}
!3097 = !DILocation(line: 483, column: 2, scope: !2952)
!3098 = !DILocation(line: 484, column: 1, scope: !2952)
!3099 = !DISubprogram(name: "kmalloc_trace", scope: !97, file: !97, line: 525, type: !3100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!133, !3102, !1703, !363}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3104, line: 11, flags: DIFlagFwdDecl)
!3104 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3105 = distinct !DISubprogram(name: "kmalloc_type", scope: !97, file: !97, line: 401, type: !3106, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!96, !1703, !366}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "flags", arg: 1, scope: !3105, file: !97, line: 401, type: !1703)
!3110 = !DILocalVariable(name: "caller", arg: 2, scope: !3105, file: !97, line: 401, type: !366)
!3111 = !DILocation(line: 401, column: 67, scope: !3105)
!3112 = !DILocation(line: 401, column: 88, scope: !3105)
!3113 = !DILocation(line: 407, column: 6, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3105, file: !97, line: 407, column: 6)
!3115 = !DILocation(line: 407, column: 6, scope: !3105)
!3116 = !DILocation(line: 413, column: 3, scope: !3114)
!3117 = !DILocation(line: 423, column: 38, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3105, file: !97, line: 423, column: 6)
!3119 = !DILocation(line: 423, column: 44, scope: !3118)
!3120 = !DILocation(line: 423, column: 6, scope: !3105)
!3121 = !DILocation(line: 424, column: 3, scope: !3118)
!3122 = !DILocation(line: 426, column: 3, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3105, file: !97, line: 425, column: 6)
!3124 = !DILocation(line: 429, column: 1, scope: !3105)
!3125 = !DISubprogram(name: "__kmalloc", scope: !97, file: !97, line: 488, type: !2876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3126 = !DISubprogram(name: "__compiletime_assert_204", scope: !97, file: !97, line: 478, type: !1650, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3127 = distinct !DISubprogram(name: "__list_add", scope: !2925, file: !2925, line: 146, type: !3128, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !223, !223, !223}
!3130 = !{!3131, !3132, !3133}
!3131 = !DILocalVariable(name: "new", arg: 1, scope: !3127, file: !2925, line: 146, type: !223)
!3132 = !DILocalVariable(name: "prev", arg: 2, scope: !3127, file: !2925, line: 147, type: !223)
!3133 = !DILocalVariable(name: "next", arg: 3, scope: !3127, file: !2925, line: 148, type: !223)
!3134 = !DILocation(line: 146, column: 49, scope: !3127)
!3135 = !DILocation(line: 147, column: 28, scope: !3127)
!3136 = !DILocation(line: 148, column: 28, scope: !3127)
!3137 = !DILocation(line: 150, column: 24, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3127, file: !2925, line: 150, column: 6)
!3139 = !DILocation(line: 150, column: 29, scope: !3138)
!3140 = !DILocation(line: 150, column: 35, scope: !3138)
!3141 = !DILocation(line: 150, column: 7, scope: !3138)
!3142 = !DILocation(line: 150, column: 6, scope: !3127)
!3143 = !DILocation(line: 151, column: 3, scope: !3138)
!3144 = !DILocation(line: 153, column: 15, scope: !3127)
!3145 = !DILocation(line: 153, column: 2, scope: !3127)
!3146 = !DILocation(line: 153, column: 8, scope: !3127)
!3147 = !DILocation(line: 153, column: 13, scope: !3127)
!3148 = !DILocation(line: 154, column: 14, scope: !3127)
!3149 = !DILocation(line: 154, column: 2, scope: !3127)
!3150 = !DILocation(line: 154, column: 7, scope: !3127)
!3151 = !DILocation(line: 154, column: 12, scope: !3127)
!3152 = !DILocation(line: 155, column: 14, scope: !3127)
!3153 = !DILocation(line: 155, column: 2, scope: !3127)
!3154 = !DILocation(line: 155, column: 7, scope: !3127)
!3155 = !DILocation(line: 155, column: 12, scope: !3127)
!3156 = !DILocation(line: 156, column: 2, scope: !3127)
!3157 = !DILocation(line: 156, column: 2, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3127, file: !2925, line: 156, column: 2)
!3159 = !DILocation(line: 156, column: 2, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3158, file: !2925, line: 156, column: 2)
!3161 = !DILocation(line: 156, column: 2, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3158, file: !2925, line: 156, column: 2)
!3163 = !DILocation(line: 157, column: 1, scope: !3127)
!3164 = distinct !DISubprogram(name: "__list_add_valid", scope: !2925, file: !2925, line: 128, type: !3165, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!150, !223, !223, !223}
!3167 = !{!3168, !3169, !3170}
!3168 = !DILocalVariable(name: "new", arg: 1, scope: !3164, file: !2925, line: 128, type: !223)
!3169 = !DILocalVariable(name: "prev", arg: 2, scope: !3164, file: !2925, line: 129, type: !223)
!3170 = !DILocalVariable(name: "next", arg: 3, scope: !3164, file: !2925, line: 130, type: !223)
!3171 = !DILocation(line: 128, column: 55, scope: !3164)
!3172 = !DILocation(line: 129, column: 23, scope: !3164)
!3173 = !DILocation(line: 130, column: 23, scope: !3164)
!3174 = !DILocation(line: 132, column: 2, scope: !3164)
!3175 = !DISubprogram(name: "queue_work_on", scope: !107, file: !107, line: 496, type: !3176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!150, !39, !1607, !777}
!3178 = !DISubprogram(name: "__module_get", scope: !72, file: !72, line: 664, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3179 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2925, file: !2925, line: 35, type: !3180, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !223}
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "list", arg: 1, scope: !3179, file: !2925, line: 35, type: !223)
!3184 = !DILocation(line: 35, column: 53, scope: !3179)
!3185 = !DILocation(line: 37, column: 2, scope: !3179)
!3186 = !DILocation(line: 37, column: 2, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3179, file: !2925, line: 37, column: 2)
!3188 = !DILocation(line: 37, column: 2, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !2925, line: 37, column: 2)
!3190 = !DILocation(line: 37, column: 2, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !2925, line: 37, column: 2)
!3192 = !DILocation(line: 38, column: 2, scope: !3179)
!3193 = !DILocation(line: 38, column: 2, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3179, file: !2925, line: 38, column: 2)
!3195 = !DILocation(line: 38, column: 2, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3194, file: !2925, line: 38, column: 2)
!3197 = !DILocation(line: 38, column: 2, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !2925, line: 38, column: 2)
!3199 = !DILocation(line: 39, column: 1, scope: !3179)
!3200 = !DISubprogram(name: "__mutex_init", scope: !489, file: !489, line: 121, type: !3201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !1695, !232, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!3204 = !DISubprogram(name: "device_initialize", scope: !19, file: !19, line: 1056, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3205 = !DISubprogram(name: "dev_set_name", scope: !19, file: !19, line: 879, type: !3206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!39, !884, !232, null}
!3208 = distinct !DISubprogram(name: "atomic_inc_return", scope: !3209, file: !3209, line: 450, type: !3210, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3213)
!3209 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!39, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3213 = !{!3214}
!3214 = !DILocalVariable(name: "v", arg: 1, scope: !3208, file: !3209, line: 450, type: !3212)
!3215 = !DILocation(line: 450, column: 29, scope: !3208)
!3216 = !DILocation(line: 452, column: 2, scope: !3208)
!3217 = !DILocation(line: 452, column: 2, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3208, file: !3209, line: 452, column: 2)
!3219 = !DILocation(line: 453, column: 31, scope: !3208)
!3220 = !DILocation(line: 453, column: 2, scope: !3208)
!3221 = !DILocation(line: 454, column: 31, scope: !3208)
!3222 = !DILocation(line: 454, column: 9, scope: !3208)
!3223 = !DILocation(line: 454, column: 2, scope: !3208)
!3224 = distinct !DISubprogram(name: "serio_release_port", scope: !3, file: !3, line: 483, type: !913, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DILocalVariable(name: "dev", arg: 1, scope: !3224, file: !3, line: 483, type: !884)
!3227 = !DILocalVariable(name: "serio", scope: !3224, file: !3, line: 485, type: !134)
!3228 = !DILocalVariable(name: "__mptr", scope: !3229, file: !3, line: 485, type: !133)
!3229 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 485, column: 24)
!3230 = !DILocation(line: 483, column: 47, scope: !3224)
!3231 = !DILocation(line: 485, column: 2, scope: !3224)
!3232 = !DILocation(line: 485, column: 16, scope: !3224)
!3233 = !DILocation(line: 485, column: 24, scope: !3229)
!3234 = !DILocation(line: 485, column: 24, scope: !3224)
!3235 = !DILocation(line: 487, column: 8, scope: !3224)
!3236 = !DILocation(line: 487, column: 2, scope: !3224)
!3237 = !DILocation(line: 488, column: 2, scope: !3224)
!3238 = !DILocation(line: 489, column: 1, scope: !3224)
!3239 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3240, file: !3240, line: 94, type: !3241, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3246)
!3240 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !3243, !363}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3246 = !{!3247, !3248}
!3247 = !DILocalVariable(name: "v", arg: 1, scope: !3239, file: !3240, line: 94, type: !3243)
!3248 = !DILocalVariable(name: "size", arg: 2, scope: !3239, file: !3240, line: 94, type: !363)
!3249 = !DILocation(line: 94, column: 79, scope: !3239)
!3250 = !DILocation(line: 94, column: 89, scope: !3239)
!3251 = !DILocation(line: 96, column: 20, scope: !3239)
!3252 = !DILocation(line: 96, column: 23, scope: !3239)
!3253 = !DILocation(line: 96, column: 2, scope: !3239)
!3254 = !DILocation(line: 97, column: 2, scope: !3239)
!3255 = !DILocation(line: 98, column: 1, scope: !3239)
!3256 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !3257, file: !3257, line: 996, type: !3210, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3258)
!3257 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3258 = !{!3259}
!3259 = !DILocalVariable(name: "v", arg: 1, scope: !3256, file: !3257, line: 996, type: !3212)
!3260 = !DILocation(line: 996, column: 33, scope: !3256)
!3261 = !DILocation(line: 1007, column: 34, scope: !3256)
!3262 = !DILocation(line: 1007, column: 9, scope: !3256)
!3263 = !DILocation(line: 1007, column: 2, scope: !3256)
!3264 = distinct !DISubprogram(name: "kasan_check_write", scope: !3265, file: !3265, line: 44, type: !3266, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3268)
!3265 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!150, !3243, !7}
!3268 = !{!3269, !3270}
!3269 = !DILocalVariable(name: "p", arg: 1, scope: !3264, file: !3265, line: 44, type: !3243)
!3270 = !DILocalVariable(name: "size", arg: 2, scope: !3264, file: !3265, line: 44, type: !7)
!3271 = !DILocation(line: 44, column: 59, scope: !3264)
!3272 = !DILocation(line: 44, column: 75, scope: !3264)
!3273 = !DILocation(line: 46, column: 2, scope: !3264)
!3274 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3275, file: !3275, line: 229, type: !3276, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3275 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3243, !363, !39}
!3278 = !{!3279, !3280, !3281}
!3279 = !DILocalVariable(name: "ptr", arg: 1, scope: !3274, file: !3275, line: 229, type: !3243)
!3280 = !DILocalVariable(name: "size", arg: 2, scope: !3274, file: !3275, line: 229, type: !363)
!3281 = !DILocalVariable(name: "type", arg: 3, scope: !3274, file: !3275, line: 230, type: !39)
!3282 = !DILocation(line: 229, column: 60, scope: !3274)
!3283 = !DILocation(line: 229, column: 72, scope: !3274)
!3284 = !DILocation(line: 230, column: 15, scope: !3274)
!3285 = !DILocation(line: 230, column: 23, scope: !3274)
!3286 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !3257, file: !3257, line: 548, type: !3287, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!39, !39, !3212}
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "i", arg: 1, scope: !3286, file: !3257, line: 548, type: !39)
!3291 = !DILocalVariable(name: "v", arg: 2, scope: !3286, file: !3257, line: 548, type: !3212)
!3292 = !DILocation(line: 548, column: 27, scope: !3286)
!3293 = !DILocation(line: 548, column: 40, scope: !3286)
!3294 = !DILocation(line: 551, column: 32, scope: !3286)
!3295 = !DILocation(line: 551, column: 35, scope: !3286)
!3296 = !DILocation(line: 551, column: 9, scope: !3286)
!3297 = !DILocation(line: 551, column: 2, scope: !3286)
!3298 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !3299, file: !3299, line: 83, type: !3287, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3300)
!3299 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3300 = !{!3301, !3302, !3303}
!3301 = !DILocalVariable(name: "i", arg: 1, scope: !3298, file: !3299, line: 83, type: !39)
!3302 = !DILocalVariable(name: "v", arg: 2, scope: !3298, file: !3299, line: 83, type: !3212)
!3303 = !DILocalVariable(name: "__ret", scope: !3304, file: !3299, line: 85, type: !39)
!3304 = distinct !DILexicalBlock(scope: !3298, file: !3299, line: 85, column: 13)
!3305 = !DILocation(line: 83, column: 55, scope: !3298)
!3306 = !DILocation(line: 83, column: 68, scope: !3298)
!3307 = !DILocation(line: 85, column: 9, scope: !3298)
!3308 = !DILocation(line: 85, column: 13, scope: !3304)
!3309 = !{i64 2148812837, i64 2148812876, i64 2148812897, i64 2148812934, i64 2148812957, i64 2148812966}
!3310 = !DILocation(line: 85, column: 13, scope: !3298)
!3311 = !DILocation(line: 85, column: 11, scope: !3298)
!3312 = !DILocation(line: 85, column: 2, scope: !3298)
!3313 = !DISubprogram(name: "module_put", scope: !72, file: !72, line: 706, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3314 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 355, type: !1819, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320}
!3316 = !DILocalVariable(name: "dev", arg: 1, scope: !3314, file: !3, line: 355, type: !884)
!3317 = !DILocalVariable(name: "attr", arg: 2, scope: !3314, file: !3, line: 355, type: !1821)
!3318 = !DILocalVariable(name: "buf", arg: 3, scope: !3314, file: !3, line: 355, type: !318)
!3319 = !DILocalVariable(name: "serio", scope: !3314, file: !3, line: 357, type: !134)
!3320 = !DILocalVariable(name: "__mptr", scope: !3321, file: !3, line: 357, type: !133)
!3321 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 357, column: 24)
!3322 = !DILocation(line: 355, column: 41, scope: !3314)
!3323 = !DILocation(line: 355, column: 71, scope: !3314)
!3324 = !DILocation(line: 355, column: 83, scope: !3314)
!3325 = !DILocation(line: 357, column: 2, scope: !3314)
!3326 = !DILocation(line: 357, column: 16, scope: !3314)
!3327 = !DILocation(line: 357, column: 24, scope: !3321)
!3328 = !DILocation(line: 357, column: 24, scope: !3314)
!3329 = !DILocation(line: 358, column: 17, scope: !3314)
!3330 = !DILocation(line: 358, column: 32, scope: !3314)
!3331 = !DILocation(line: 358, column: 39, scope: !3314)
!3332 = !DILocation(line: 358, column: 42, scope: !3314)
!3333 = !DILocation(line: 358, column: 9, scope: !3314)
!3334 = !DILocation(line: 359, column: 1, scope: !3314)
!3335 = !DILocation(line: 358, column: 2, scope: !3314)
!3336 = !DISubprogram(name: "sprintf", scope: !3337, file: !3337, line: 10, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3337 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!39, !318, !232, null}
!3340 = distinct !DISubprogram(name: "proto_show", scope: !3, file: !3, line: 361, type: !1819, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346}
!3342 = !DILocalVariable(name: "dev", arg: 1, scope: !3340, file: !3, line: 361, type: !884)
!3343 = !DILocalVariable(name: "attr", arg: 2, scope: !3340, file: !3, line: 361, type: !1821)
!3344 = !DILocalVariable(name: "buf", arg: 3, scope: !3340, file: !3, line: 361, type: !318)
!3345 = !DILocalVariable(name: "serio", scope: !3340, file: !3, line: 363, type: !134)
!3346 = !DILocalVariable(name: "__mptr", scope: !3347, file: !3, line: 363, type: !133)
!3347 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 363, column: 24)
!3348 = !DILocation(line: 361, column: 42, scope: !3340)
!3349 = !DILocation(line: 361, column: 72, scope: !3340)
!3350 = !DILocation(line: 361, column: 84, scope: !3340)
!3351 = !DILocation(line: 363, column: 2, scope: !3340)
!3352 = !DILocation(line: 363, column: 16, scope: !3340)
!3353 = !DILocation(line: 363, column: 24, scope: !3347)
!3354 = !DILocation(line: 363, column: 24, scope: !3340)
!3355 = !DILocation(line: 364, column: 17, scope: !3340)
!3356 = !DILocation(line: 364, column: 32, scope: !3340)
!3357 = !DILocation(line: 364, column: 39, scope: !3340)
!3358 = !DILocation(line: 364, column: 42, scope: !3340)
!3359 = !DILocation(line: 364, column: 9, scope: !3340)
!3360 = !DILocation(line: 365, column: 1, scope: !3340)
!3361 = !DILocation(line: 364, column: 2, scope: !3340)
!3362 = distinct !DISubprogram(name: "id_show", scope: !3, file: !3, line: 367, type: !1819, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368}
!3364 = !DILocalVariable(name: "dev", arg: 1, scope: !3362, file: !3, line: 367, type: !884)
!3365 = !DILocalVariable(name: "attr", arg: 2, scope: !3362, file: !3, line: 367, type: !1821)
!3366 = !DILocalVariable(name: "buf", arg: 3, scope: !3362, file: !3, line: 367, type: !318)
!3367 = !DILocalVariable(name: "serio", scope: !3362, file: !3, line: 369, type: !134)
!3368 = !DILocalVariable(name: "__mptr", scope: !3369, file: !3, line: 369, type: !133)
!3369 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 369, column: 24)
!3370 = !DILocation(line: 367, column: 39, scope: !3362)
!3371 = !DILocation(line: 367, column: 69, scope: !3362)
!3372 = !DILocation(line: 367, column: 81, scope: !3362)
!3373 = !DILocation(line: 369, column: 2, scope: !3362)
!3374 = !DILocation(line: 369, column: 16, scope: !3362)
!3375 = !DILocation(line: 369, column: 24, scope: !3369)
!3376 = !DILocation(line: 369, column: 24, scope: !3362)
!3377 = !DILocation(line: 370, column: 17, scope: !3362)
!3378 = !DILocation(line: 370, column: 32, scope: !3362)
!3379 = !DILocation(line: 370, column: 39, scope: !3362)
!3380 = !DILocation(line: 370, column: 42, scope: !3362)
!3381 = !DILocation(line: 370, column: 9, scope: !3362)
!3382 = !DILocation(line: 371, column: 1, scope: !3362)
!3383 = !DILocation(line: 370, column: 2, scope: !3362)
!3384 = distinct !DISubprogram(name: "extra_show", scope: !3, file: !3, line: 373, type: !1819, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390}
!3386 = !DILocalVariable(name: "dev", arg: 1, scope: !3384, file: !3, line: 373, type: !884)
!3387 = !DILocalVariable(name: "attr", arg: 2, scope: !3384, file: !3, line: 373, type: !1821)
!3388 = !DILocalVariable(name: "buf", arg: 3, scope: !3384, file: !3, line: 373, type: !318)
!3389 = !DILocalVariable(name: "serio", scope: !3384, file: !3, line: 375, type: !134)
!3390 = !DILocalVariable(name: "__mptr", scope: !3391, file: !3, line: 375, type: !133)
!3391 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 375, column: 24)
!3392 = !DILocation(line: 373, column: 42, scope: !3384)
!3393 = !DILocation(line: 373, column: 72, scope: !3384)
!3394 = !DILocation(line: 373, column: 84, scope: !3384)
!3395 = !DILocation(line: 375, column: 2, scope: !3384)
!3396 = !DILocation(line: 375, column: 16, scope: !3384)
!3397 = !DILocation(line: 375, column: 24, scope: !3391)
!3398 = !DILocation(line: 375, column: 24, scope: !3384)
!3399 = !DILocation(line: 376, column: 17, scope: !3384)
!3400 = !DILocation(line: 376, column: 32, scope: !3384)
!3401 = !DILocation(line: 376, column: 39, scope: !3384)
!3402 = !DILocation(line: 376, column: 42, scope: !3384)
!3403 = !DILocation(line: 376, column: 9, scope: !3384)
!3404 = !DILocation(line: 377, column: 1, scope: !3384)
!3405 = !DILocation(line: 376, column: 2, scope: !3384)
!3406 = distinct !DISubprogram(name: "modalias_show", scope: !3, file: !3, line: 347, type: !1819, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412}
!3408 = !DILocalVariable(name: "dev", arg: 1, scope: !3406, file: !3, line: 347, type: !884)
!3409 = !DILocalVariable(name: "attr", arg: 2, scope: !3406, file: !3, line: 347, type: !1821)
!3410 = !DILocalVariable(name: "buf", arg: 3, scope: !3406, file: !3, line: 347, type: !318)
!3411 = !DILocalVariable(name: "serio", scope: !3406, file: !3, line: 349, type: !134)
!3412 = !DILocalVariable(name: "__mptr", scope: !3413, file: !3, line: 349, type: !133)
!3413 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 349, column: 24)
!3414 = !DILocation(line: 347, column: 45, scope: !3406)
!3415 = !DILocation(line: 347, column: 75, scope: !3406)
!3416 = !DILocation(line: 347, column: 87, scope: !3406)
!3417 = !DILocation(line: 349, column: 2, scope: !3406)
!3418 = !DILocation(line: 349, column: 16, scope: !3406)
!3419 = !DILocation(line: 349, column: 24, scope: !3413)
!3420 = !DILocation(line: 349, column: 24, scope: !3406)
!3421 = !DILocation(line: 351, column: 17, scope: !3406)
!3422 = !DILocation(line: 352, column: 4, scope: !3406)
!3423 = !DILocation(line: 352, column: 11, scope: !3406)
!3424 = !DILocation(line: 352, column: 14, scope: !3406)
!3425 = !DILocation(line: 352, column: 20, scope: !3406)
!3426 = !DILocation(line: 352, column: 27, scope: !3406)
!3427 = !DILocation(line: 352, column: 30, scope: !3406)
!3428 = !DILocation(line: 352, column: 37, scope: !3406)
!3429 = !DILocation(line: 352, column: 44, scope: !3406)
!3430 = !DILocation(line: 352, column: 47, scope: !3406)
!3431 = !DILocation(line: 352, column: 51, scope: !3406)
!3432 = !DILocation(line: 352, column: 58, scope: !3406)
!3433 = !DILocation(line: 352, column: 61, scope: !3406)
!3434 = !DILocation(line: 351, column: 9, scope: !3406)
!3435 = !DILocation(line: 353, column: 1, scope: !3406)
!3436 = !DILocation(line: 351, column: 2, scope: !3406)
!3437 = distinct !DISubprogram(name: "serio_show_description", scope: !3, file: !3, line: 341, type: !1819, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443}
!3439 = !DILocalVariable(name: "dev", arg: 1, scope: !3437, file: !3, line: 341, type: !884)
!3440 = !DILocalVariable(name: "attr", arg: 2, scope: !3437, file: !3, line: 341, type: !1821)
!3441 = !DILocalVariable(name: "buf", arg: 3, scope: !3437, file: !3, line: 341, type: !318)
!3442 = !DILocalVariable(name: "serio", scope: !3437, file: !3, line: 343, type: !134)
!3443 = !DILocalVariable(name: "__mptr", scope: !3444, file: !3, line: 343, type: !133)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 343, column: 24)
!3445 = !DILocation(line: 341, column: 54, scope: !3437)
!3446 = !DILocation(line: 341, column: 84, scope: !3437)
!3447 = !DILocation(line: 341, column: 96, scope: !3437)
!3448 = !DILocation(line: 343, column: 2, scope: !3437)
!3449 = !DILocation(line: 343, column: 16, scope: !3437)
!3450 = !DILocation(line: 343, column: 24, scope: !3444)
!3451 = !DILocation(line: 343, column: 24, scope: !3437)
!3452 = !DILocation(line: 344, column: 17, scope: !3437)
!3453 = !DILocation(line: 344, column: 30, scope: !3437)
!3454 = !DILocation(line: 344, column: 37, scope: !3437)
!3455 = !DILocation(line: 344, column: 9, scope: !3437)
!3456 = !DILocation(line: 345, column: 1, scope: !3437)
!3457 = !DILocation(line: 344, column: 2, scope: !3437)
!3458 = distinct !DISubprogram(name: "drvctl_store", scope: !3, file: !3, line: 379, type: !1824, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3467, !3468, !3469}
!3460 = !DILocalVariable(name: "dev", arg: 1, scope: !3458, file: !3, line: 379, type: !884)
!3461 = !DILocalVariable(name: "attr", arg: 2, scope: !3458, file: !3, line: 379, type: !1821)
!3462 = !DILocalVariable(name: "buf", arg: 3, scope: !3458, file: !3, line: 379, type: !232)
!3463 = !DILocalVariable(name: "count", arg: 4, scope: !3458, file: !3, line: 379, type: !363)
!3464 = !DILocalVariable(name: "serio", scope: !3458, file: !3, line: 381, type: !134)
!3465 = !DILocalVariable(name: "__mptr", scope: !3466, file: !3, line: 381, type: !133)
!3466 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 381, column: 24)
!3467 = !DILocalVariable(name: "drv", scope: !3458, file: !3, line: 382, type: !948)
!3468 = !DILocalVariable(name: "error", scope: !3458, file: !3, line: 383, type: !39)
!3469 = !DILocalVariable(name: "__mptr", scope: !3470, file: !3, line: 399, type: !133)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 399, column: 36)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 397, column: 59)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 397, column: 13)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 393, column: 13)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 391, column: 13)
!3475 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 389, column: 6)
!3476 = !DILocation(line: 379, column: 44, scope: !3458)
!3477 = !DILocation(line: 379, column: 74, scope: !3458)
!3478 = !DILocation(line: 379, column: 92, scope: !3458)
!3479 = !DILocation(line: 379, column: 104, scope: !3458)
!3480 = !DILocation(line: 381, column: 2, scope: !3458)
!3481 = !DILocation(line: 381, column: 16, scope: !3458)
!3482 = !DILocation(line: 381, column: 24, scope: !3466)
!3483 = !DILocation(line: 381, column: 24, scope: !3458)
!3484 = !DILocation(line: 382, column: 2, scope: !3458)
!3485 = !DILocation(line: 382, column: 24, scope: !3458)
!3486 = !DILocation(line: 383, column: 2, scope: !3458)
!3487 = !DILocation(line: 383, column: 6, scope: !3458)
!3488 = !DILocation(line: 385, column: 10, scope: !3458)
!3489 = !DILocation(line: 385, column: 8, scope: !3458)
!3490 = !DILocation(line: 386, column: 6, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 386, column: 6)
!3492 = !DILocation(line: 386, column: 6, scope: !3458)
!3493 = !DILocation(line: 387, column: 10, scope: !3491)
!3494 = !DILocation(line: 387, column: 3, scope: !3491)
!3495 = !DILocation(line: 389, column: 15, scope: !3475)
!3496 = !DILocation(line: 389, column: 28, scope: !3475)
!3497 = !DILocation(line: 389, column: 7, scope: !3475)
!3498 = !DILocation(line: 389, column: 6, scope: !3458)
!3499 = !DILocation(line: 390, column: 25, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 389, column: 36)
!3501 = !DILocation(line: 390, column: 3, scope: !3500)
!3502 = !DILocation(line: 391, column: 2, scope: !3500)
!3503 = !DILocation(line: 391, column: 22, scope: !3474)
!3504 = !DILocation(line: 391, column: 40, scope: !3474)
!3505 = !DILocation(line: 391, column: 14, scope: !3474)
!3506 = !DILocation(line: 391, column: 13, scope: !3475)
!3507 = !DILocation(line: 392, column: 27, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 391, column: 48)
!3509 = !DILocation(line: 392, column: 3, scope: !3508)
!3510 = !DILocation(line: 393, column: 2, scope: !3508)
!3511 = !DILocation(line: 393, column: 22, scope: !3473)
!3512 = !DILocation(line: 393, column: 37, scope: !3473)
!3513 = !DILocation(line: 393, column: 14, scope: !3473)
!3514 = !DILocation(line: 393, column: 13, scope: !3474)
!3515 = !DILocation(line: 394, column: 25, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 393, column: 45)
!3517 = !DILocation(line: 394, column: 3, scope: !3516)
!3518 = !DILocation(line: 395, column: 21, scope: !3516)
!3519 = !DILocation(line: 395, column: 3, scope: !3516)
!3520 = !DILocation(line: 396, column: 33, scope: !3516)
!3521 = !DILocation(line: 396, column: 3, scope: !3516)
!3522 = !DILocation(line: 397, column: 2, scope: !3516)
!3523 = !DILocation(line: 397, column: 32, scope: !3472)
!3524 = !DILocation(line: 397, column: 20, scope: !3472)
!3525 = !DILocation(line: 397, column: 18, scope: !3472)
!3526 = !DILocation(line: 397, column: 50, scope: !3472)
!3527 = !DILocation(line: 397, column: 13, scope: !3473)
!3528 = !DILocation(line: 398, column: 25, scope: !3471)
!3529 = !DILocation(line: 398, column: 3, scope: !3471)
!3530 = !DILocation(line: 399, column: 29, scope: !3471)
!3531 = !DILocation(line: 399, column: 36, scope: !3470)
!3532 = !DILocation(line: 399, column: 36, scope: !3471)
!3533 = !DILocation(line: 399, column: 11, scope: !3471)
!3534 = !DILocation(line: 399, column: 9, scope: !3471)
!3535 = !DILocation(line: 400, column: 33, scope: !3471)
!3536 = !DILocation(line: 400, column: 3, scope: !3471)
!3537 = !DILocation(line: 401, column: 2, scope: !3471)
!3538 = !DILocation(line: 402, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 401, column: 9)
!3540 = !DILocation(line: 405, column: 2, scope: !3458)
!3541 = !DILocation(line: 407, column: 9, scope: !3458)
!3542 = !DILocation(line: 407, column: 17, scope: !3458)
!3543 = !DILocation(line: 407, column: 25, scope: !3458)
!3544 = !DILocation(line: 407, column: 2, scope: !3458)
!3545 = !DILocation(line: 408, column: 1, scope: !3458)
!3546 = !DISubprogram(name: "mutex_lock_interruptible", scope: !489, file: !489, line: 228, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!39, !1695}
!3549 = !DISubprogram(name: "strncmp", scope: !3550, file: !3550, line: 91, type: !3551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3550 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!39, !232, !232, !364}
!3553 = distinct !DISubprogram(name: "serio_reconnect_subtree", scope: !3, file: !3, line: 599, type: !214, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3565, !3567}
!3555 = !DILocalVariable(name: "root", arg: 1, scope: !3553, file: !3, line: 599, type: !134)
!3556 = !DILocalVariable(name: "s", scope: !3553, file: !3, line: 601, type: !134)
!3557 = !DILocalVariable(name: "error", scope: !3553, file: !3, line: 602, type: !39)
!3558 = !DILocalVariable(name: "__mptr", scope: !3559, file: !3, line: 612, type: !133)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 612, column: 9)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 611, column: 35)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 611, column: 8)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 606, column: 15)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 606, column: 7)
!3564 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 604, column: 5)
!3565 = !DILocalVariable(name: "parent", scope: !3566, file: !3, line: 624, type: !134)
!3566 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 623, column: 21)
!3567 = !DILocalVariable(name: "__mptr", scope: !3568, file: !3, line: 627, type: !133)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 627, column: 9)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 626, column: 58)
!3570 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 626, column: 8)
!3571 = !DILocation(line: 599, column: 51, scope: !3553)
!3572 = !DILocation(line: 601, column: 2, scope: !3553)
!3573 = !DILocation(line: 601, column: 16, scope: !3553)
!3574 = !DILocation(line: 601, column: 20, scope: !3553)
!3575 = !DILocation(line: 602, column: 2, scope: !3553)
!3576 = !DILocation(line: 602, column: 6, scope: !3553)
!3577 = !DILocation(line: 604, column: 2, scope: !3553)
!3578 = !DILocation(line: 605, column: 32, scope: !3564)
!3579 = !DILocation(line: 605, column: 11, scope: !3564)
!3580 = !DILocation(line: 605, column: 9, scope: !3564)
!3581 = !DILocation(line: 606, column: 8, scope: !3563)
!3582 = !DILocation(line: 606, column: 7, scope: !3564)
!3583 = !DILocation(line: 611, column: 21, scope: !3561)
!3584 = !DILocation(line: 611, column: 24, scope: !3561)
!3585 = !DILocation(line: 611, column: 9, scope: !3561)
!3586 = !DILocation(line: 611, column: 8, scope: !3562)
!3587 = !DILocation(line: 612, column: 9, scope: !3559)
!3588 = !DILocation(line: 612, column: 9, scope: !3560)
!3589 = !DILocation(line: 612, column: 7, scope: !3560)
!3590 = !DILocation(line: 614, column: 5, scope: !3560)
!3591 = !DILocation(line: 616, column: 3, scope: !3562)
!3592 = !DILocation(line: 623, column: 3, scope: !3564)
!3593 = !DILocation(line: 623, column: 10, scope: !3564)
!3594 = !DILocation(line: 623, column: 15, scope: !3564)
!3595 = !DILocation(line: 623, column: 12, scope: !3564)
!3596 = !DILocation(line: 624, column: 4, scope: !3566)
!3597 = !DILocation(line: 624, column: 18, scope: !3566)
!3598 = !DILocation(line: 624, column: 27, scope: !3566)
!3599 = !DILocation(line: 624, column: 30, scope: !3566)
!3600 = !DILocation(line: 626, column: 23, scope: !3570)
!3601 = !DILocation(line: 626, column: 26, scope: !3570)
!3602 = !DILocation(line: 626, column: 39, scope: !3570)
!3603 = !DILocation(line: 626, column: 47, scope: !3570)
!3604 = !DILocation(line: 626, column: 9, scope: !3570)
!3605 = !DILocation(line: 626, column: 8, scope: !3566)
!3606 = !DILocation(line: 627, column: 9, scope: !3568)
!3607 = !DILocation(line: 627, column: 9, scope: !3569)
!3608 = !DILocation(line: 627, column: 7, scope: !3569)
!3609 = !DILocation(line: 629, column: 5, scope: !3569)
!3610 = !DILocation(line: 632, column: 8, scope: !3566)
!3611 = !DILocation(line: 632, column: 6, scope: !3566)
!3612 = !DILocation(line: 633, column: 3, scope: !3564)
!3613 = distinct !{!3613, !3592, !3612, !2045, !2046}
!3614 = !DILocation(line: 634, column: 2, scope: !3564)
!3615 = !DILocation(line: 634, column: 11, scope: !3553)
!3616 = !DILocation(line: 634, column: 16, scope: !3553)
!3617 = !DILocation(line: 634, column: 13, scope: !3553)
!3618 = distinct !{!3618, !3577, !3619, !2045, !2046}
!3619 = !DILocation(line: 634, column: 20, scope: !3553)
!3620 = !DILocation(line: 635, column: 1, scope: !3553)
!3621 = distinct !DISubprogram(name: "serio_remove_duplicate_events", scope: !3, file: !3, line: 170, type: !3622, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{null, !133, !84}
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3634, !3635, !3638, !3640}
!3625 = !DILocalVariable(name: "object", arg: 1, scope: !3621, file: !3, line: 170, type: !133)
!3626 = !DILocalVariable(name: "type", arg: 2, scope: !3621, file: !3, line: 171, type: !84)
!3627 = !DILocalVariable(name: "e", scope: !3621, file: !3, line: 173, type: !1696)
!3628 = !DILocalVariable(name: "next", scope: !3621, file: !3, line: 173, type: !1696)
!3629 = !DILocalVariable(name: "flags", scope: !3621, file: !3, line: 174, type: !366)
!3630 = !DILocalVariable(name: "__dummy", scope: !3631, file: !3, line: 176, type: !366)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 176, column: 2)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 176, column: 2)
!3633 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 176, column: 2)
!3634 = !DILocalVariable(name: "__dummy2", scope: !3631, file: !3, line: 176, type: !366)
!3635 = !DILocalVariable(name: "__mptr", scope: !3636, file: !3, line: 178, type: !133)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 178, column: 2)
!3637 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 178, column: 2)
!3638 = !DILocalVariable(name: "__mptr", scope: !3639, file: !3, line: 178, type: !133)
!3639 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 178, column: 2)
!3640 = !DILocalVariable(name: "__mptr", scope: !3641, file: !3, line: 178, type: !133)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 178, column: 2)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 178, column: 2)
!3643 = !DILocation(line: 170, column: 49, scope: !3621)
!3644 = !DILocation(line: 171, column: 30, scope: !3621)
!3645 = !DILocation(line: 173, column: 2, scope: !3621)
!3646 = !DILocation(line: 173, column: 22, scope: !3621)
!3647 = !DILocation(line: 173, column: 26, scope: !3621)
!3648 = !DILocation(line: 174, column: 2, scope: !3621)
!3649 = !DILocation(line: 174, column: 16, scope: !3621)
!3650 = !DILocation(line: 176, column: 2, scope: !3621)
!3651 = !DILocation(line: 176, column: 2, scope: !3633)
!3652 = !DILocation(line: 176, column: 2, scope: !3631)
!3653 = !DILocation(line: 176, column: 2, scope: !3632)
!3654 = !DILocation(line: 178, column: 2, scope: !3636)
!3655 = !DILocation(line: 178, column: 2, scope: !3637)
!3656 = !DILocation(line: 178, column: 2, scope: !3639)
!3657 = !DILocation(line: 178, column: 2, scope: !3642)
!3658 = !DILocation(line: 179, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 179, column: 7)
!3660 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 178, column: 61)
!3661 = !DILocation(line: 179, column: 17, scope: !3659)
!3662 = !DILocation(line: 179, column: 20, scope: !3659)
!3663 = !DILocation(line: 179, column: 14, scope: !3659)
!3664 = !DILocation(line: 179, column: 7, scope: !3660)
!3665 = !DILocation(line: 185, column: 8, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 185, column: 8)
!3667 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 179, column: 28)
!3668 = !DILocation(line: 185, column: 16, scope: !3666)
!3669 = !DILocation(line: 185, column: 19, scope: !3666)
!3670 = !DILocation(line: 185, column: 13, scope: !3666)
!3671 = !DILocation(line: 185, column: 8, scope: !3667)
!3672 = !DILocation(line: 186, column: 5, scope: !3666)
!3673 = !DILocation(line: 188, column: 19, scope: !3667)
!3674 = !DILocation(line: 188, column: 22, scope: !3667)
!3675 = !DILocation(line: 188, column: 4, scope: !3667)
!3676 = !DILocation(line: 189, column: 21, scope: !3667)
!3677 = !DILocation(line: 189, column: 4, scope: !3667)
!3678 = !DILocation(line: 190, column: 3, scope: !3667)
!3679 = !DILocation(line: 191, column: 2, scope: !3660)
!3680 = !DILocation(line: 178, column: 2, scope: !3641)
!3681 = distinct !{!3681, !3655, !3682, !2045, !2046}
!3682 = !DILocation(line: 191, column: 2, scope: !3637)
!3683 = !DILocation(line: 193, column: 44, scope: !3621)
!3684 = !DILocation(line: 193, column: 2, scope: !3621)
!3685 = !DILocation(line: 194, column: 1, scope: !3621)
!3686 = !DISubprogram(name: "driver_find", scope: !79, file: !79, line: 128, type: !3687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!948, !232, !257}
!3689 = distinct !DISubprogram(name: "serio_bind_driver", scope: !3, file: !3, line: 87, type: !246, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3690)
!3690 = !{!3691, !3692, !3693}
!3691 = !DILocalVariable(name: "serio", arg: 1, scope: !3689, file: !3, line: 87, type: !134)
!3692 = !DILocalVariable(name: "drv", arg: 2, scope: !3689, file: !3, line: 87, type: !228)
!3693 = !DILocalVariable(name: "error", scope: !3689, file: !3, line: 89, type: !39)
!3694 = !DILocation(line: 87, column: 44, scope: !3689)
!3695 = !DILocation(line: 87, column: 72, scope: !3689)
!3696 = !DILocation(line: 89, column: 2, scope: !3689)
!3697 = !DILocation(line: 89, column: 6, scope: !3689)
!3698 = !DILocation(line: 91, column: 23, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 91, column: 6)
!3700 = !DILocation(line: 91, column: 28, scope: !3699)
!3701 = !DILocation(line: 91, column: 38, scope: !3699)
!3702 = !DILocation(line: 91, column: 6, scope: !3699)
!3703 = !DILocation(line: 91, column: 6, scope: !3689)
!3704 = !DILocation(line: 93, column: 24, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 91, column: 46)
!3706 = !DILocation(line: 93, column: 29, scope: !3705)
!3707 = !DILocation(line: 93, column: 3, scope: !3705)
!3708 = !DILocation(line: 93, column: 10, scope: !3705)
!3709 = !DILocation(line: 93, column: 14, scope: !3705)
!3710 = !DILocation(line: 93, column: 21, scope: !3705)
!3711 = !DILocation(line: 94, column: 28, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 94, column: 7)
!3713 = !DILocation(line: 94, column: 35, scope: !3712)
!3714 = !DILocation(line: 94, column: 7, scope: !3712)
!3715 = !DILocation(line: 94, column: 7, scope: !3705)
!3716 = !DILocation(line: 95, column: 4, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 94, column: 41)
!3718 = !DILocation(line: 95, column: 11, scope: !3717)
!3719 = !DILocation(line: 95, column: 15, scope: !3717)
!3720 = !DILocation(line: 95, column: 22, scope: !3717)
!3721 = !DILocation(line: 96, column: 4, scope: !3717)
!3722 = !DILocation(line: 99, column: 31, scope: !3705)
!3723 = !DILocation(line: 99, column: 38, scope: !3705)
!3724 = !DILocation(line: 99, column: 11, scope: !3705)
!3725 = !DILocation(line: 99, column: 9, scope: !3705)
!3726 = !DILocation(line: 100, column: 7, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 100, column: 7)
!3728 = !DILocation(line: 100, column: 7, scope: !3705)
!3729 = !DILocation(line: 101, column: 4, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 101, column: 4)
!3731 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 100, column: 14)
!3732 = !DILocation(line: 101, column: 4, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 101, column: 4)
!3734 = !DILocation(line: 105, column: 28, scope: !3731)
!3735 = !DILocation(line: 105, column: 4, scope: !3731)
!3736 = !DILocation(line: 106, column: 4, scope: !3731)
!3737 = !DILocation(line: 106, column: 11, scope: !3731)
!3738 = !DILocation(line: 106, column: 15, scope: !3731)
!3739 = !DILocation(line: 106, column: 22, scope: !3731)
!3740 = !DILocation(line: 107, column: 11, scope: !3731)
!3741 = !DILocation(line: 107, column: 4, scope: !3731)
!3742 = !DILocation(line: 109, column: 2, scope: !3705)
!3743 = !DILocation(line: 110, column: 2, scope: !3689)
!3744 = !DILocation(line: 111, column: 1, scope: !3689)
!3745 = distinct !DISubprogram(name: "serio_reconnect_port", scope: !3, file: !3, line: 583, type: !210, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3746)
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "serio", arg: 1, scope: !3745, file: !3, line: 583, type: !134)
!3748 = !DILocalVariable(name: "error", scope: !3745, file: !3, line: 585, type: !39)
!3749 = !DILocation(line: 583, column: 47, scope: !3745)
!3750 = !DILocation(line: 585, column: 2, scope: !3745)
!3751 = !DILocation(line: 585, column: 6, scope: !3745)
!3752 = !DILocation(line: 585, column: 37, scope: !3745)
!3753 = !DILocation(line: 585, column: 14, scope: !3745)
!3754 = !DILocation(line: 587, column: 6, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 587, column: 6)
!3756 = !DILocation(line: 587, column: 6, scope: !3745)
!3757 = !DILocation(line: 588, column: 25, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 587, column: 13)
!3759 = !DILocation(line: 588, column: 3, scope: !3758)
!3760 = !DILocation(line: 589, column: 21, scope: !3758)
!3761 = !DILocation(line: 589, column: 3, scope: !3758)
!3762 = !DILocation(line: 590, column: 2, scope: !3758)
!3763 = !DILocation(line: 592, column: 9, scope: !3745)
!3764 = !DILocation(line: 593, column: 1, scope: !3745)
!3765 = !DILocation(line: 592, column: 2, scope: !3745)
!3766 = distinct !DISubprogram(name: "list_empty", scope: !2925, file: !2925, line: 371, type: !3767, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3771)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!39, !3769}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "head", arg: 1, scope: !3766, file: !2925, line: 371, type: !3769)
!3773 = !DILocation(line: 371, column: 54, scope: !3766)
!3774 = !DILocation(line: 373, column: 9, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3766, file: !2925, line: 373, column: 9)
!3776 = !DILocation(line: 373, column: 9, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3775, file: !2925, line: 373, column: 9)
!3778 = !DILocation(line: 373, column: 34, scope: !3766)
!3779 = !DILocation(line: 373, column: 31, scope: !3766)
!3780 = !DILocation(line: 373, column: 2, scope: !3766)
!3781 = distinct !DISubprogram(name: "list_is_last", scope: !2925, file: !2925, line: 352, type: !3782, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!39, !3769, !3769}
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "list", arg: 1, scope: !3781, file: !2925, line: 352, type: !3769)
!3786 = !DILocalVariable(name: "head", arg: 2, scope: !3781, file: !2925, line: 352, type: !3769)
!3787 = !DILocation(line: 352, column: 56, scope: !3781)
!3788 = !DILocation(line: 352, column: 86, scope: !3781)
!3789 = !DILocation(line: 354, column: 9, scope: !3781)
!3790 = !DILocation(line: 354, column: 15, scope: !3781)
!3791 = !DILocation(line: 354, column: 23, scope: !3781)
!3792 = !DILocation(line: 354, column: 20, scope: !3781)
!3793 = !DILocation(line: 354, column: 2, scope: !3781)
!3794 = distinct !DISubprogram(name: "serio_reconnect_driver", scope: !3, file: !3, line: 50, type: !210, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3795)
!3795 = !{!3796, !3797}
!3796 = !DILocalVariable(name: "serio", arg: 1, scope: !3794, file: !3, line: 50, type: !134)
!3797 = !DILocalVariable(name: "retval", scope: !3794, file: !3, line: 52, type: !39)
!3798 = !DILocation(line: 50, column: 49, scope: !3794)
!3799 = !DILocation(line: 52, column: 2, scope: !3794)
!3800 = !DILocation(line: 52, column: 6, scope: !3794)
!3801 = !DILocation(line: 54, column: 14, scope: !3794)
!3802 = !DILocation(line: 54, column: 21, scope: !3794)
!3803 = !DILocation(line: 54, column: 2, scope: !3794)
!3804 = !DILocation(line: 55, column: 6, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 55, column: 6)
!3806 = !DILocation(line: 55, column: 13, scope: !3805)
!3807 = !DILocation(line: 55, column: 17, scope: !3805)
!3808 = !DILocation(line: 55, column: 20, scope: !3805)
!3809 = !DILocation(line: 55, column: 27, scope: !3805)
!3810 = !DILocation(line: 55, column: 32, scope: !3805)
!3811 = !DILocation(line: 55, column: 6, scope: !3794)
!3812 = !DILocation(line: 56, column: 12, scope: !3805)
!3813 = !DILocation(line: 56, column: 19, scope: !3805)
!3814 = !DILocation(line: 56, column: 24, scope: !3805)
!3815 = !DILocation(line: 56, column: 34, scope: !3805)
!3816 = !DILocation(line: 56, column: 10, scope: !3805)
!3817 = !DILocation(line: 56, column: 3, scope: !3805)
!3818 = !DILocation(line: 57, column: 16, scope: !3794)
!3819 = !DILocation(line: 57, column: 23, scope: !3794)
!3820 = !DILocation(line: 57, column: 2, scope: !3794)
!3821 = !DILocation(line: 59, column: 9, scope: !3794)
!3822 = !DILocation(line: 60, column: 1, scope: !3794)
!3823 = !DILocation(line: 59, column: 2, scope: !3794)
!3824 = distinct !DISubprogram(name: "list_del_init", scope: !2925, file: !2925, line: 285, type: !3180, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3825)
!3825 = !{!3826}
!3826 = !DILocalVariable(name: "entry", arg: 1, scope: !3824, file: !2925, line: 285, type: !223)
!3827 = !DILocation(line: 285, column: 52, scope: !3824)
!3828 = !DILocation(line: 287, column: 19, scope: !3824)
!3829 = !DILocation(line: 287, column: 2, scope: !3824)
!3830 = !DILocation(line: 288, column: 17, scope: !3824)
!3831 = !DILocation(line: 288, column: 2, scope: !3824)
!3832 = !DILocation(line: 289, column: 1, scope: !3824)
!3833 = distinct !DISubprogram(name: "serio_free_event", scope: !3, file: !3, line: 164, type: !3834, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !1696}
!3836 = !{!3837}
!3837 = !DILocalVariable(name: "event", arg: 1, scope: !3833, file: !3, line: 164, type: !1696)
!3838 = !DILocation(line: 164, column: 50, scope: !3833)
!3839 = !DILocation(line: 166, column: 13, scope: !3833)
!3840 = !DILocation(line: 166, column: 20, scope: !3833)
!3841 = !DILocation(line: 166, column: 2, scope: !3833)
!3842 = !DILocation(line: 167, column: 8, scope: !3833)
!3843 = !DILocation(line: 167, column: 2, scope: !3833)
!3844 = !DILocation(line: 168, column: 1, scope: !3833)
!3845 = distinct !DISubprogram(name: "__list_del_entry", scope: !2925, file: !2925, line: 213, type: !3180, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3846)
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "entry", arg: 1, scope: !3845, file: !2925, line: 213, type: !223)
!3848 = !DILocation(line: 213, column: 55, scope: !3845)
!3849 = !DILocation(line: 215, column: 30, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3845, file: !2925, line: 215, column: 6)
!3851 = !DILocation(line: 215, column: 7, scope: !3850)
!3852 = !DILocation(line: 215, column: 6, scope: !3845)
!3853 = !DILocation(line: 216, column: 3, scope: !3850)
!3854 = !DILocation(line: 218, column: 13, scope: !3845)
!3855 = !DILocation(line: 218, column: 20, scope: !3845)
!3856 = !DILocation(line: 218, column: 26, scope: !3845)
!3857 = !DILocation(line: 218, column: 33, scope: !3845)
!3858 = !DILocation(line: 218, column: 2, scope: !3845)
!3859 = !DILocation(line: 219, column: 1, scope: !3845)
!3860 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2925, file: !2925, line: 134, type: !3861, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!150, !223}
!3863 = !{!3864}
!3864 = !DILocalVariable(name: "entry", arg: 1, scope: !3860, file: !2925, line: 134, type: !223)
!3865 = !DILocation(line: 134, column: 61, scope: !3860)
!3866 = !DILocation(line: 136, column: 2, scope: !3860)
!3867 = distinct !DISubprogram(name: "__list_del", scope: !2925, file: !2925, line: 193, type: !2926, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3868 = !{!3869, !3870}
!3869 = !DILocalVariable(name: "prev", arg: 1, scope: !3867, file: !2925, line: 193, type: !223)
!3870 = !DILocalVariable(name: "next", arg: 2, scope: !3867, file: !2925, line: 193, type: !223)
!3871 = !DILocation(line: 193, column: 50, scope: !3867)
!3872 = !DILocation(line: 193, column: 75, scope: !3867)
!3873 = !DILocation(line: 195, column: 15, scope: !3867)
!3874 = !DILocation(line: 195, column: 2, scope: !3867)
!3875 = !DILocation(line: 195, column: 8, scope: !3867)
!3876 = !DILocation(line: 195, column: 13, scope: !3867)
!3877 = !DILocation(line: 196, column: 2, scope: !3867)
!3878 = !DILocation(line: 196, column: 2, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3867, file: !2925, line: 196, column: 2)
!3880 = !DILocation(line: 196, column: 2, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3879, file: !2925, line: 196, column: 2)
!3882 = !DILocation(line: 196, column: 2, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3879, file: !2925, line: 196, column: 2)
!3884 = !DILocation(line: 197, column: 1, scope: !3867)
!3885 = distinct !DISubprogram(name: "serio_match_port", scope: !3, file: !3, line: 70, type: !3886, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!39, !235, !134}
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "ids", arg: 1, scope: !3885, file: !3, line: 70, type: !235)
!3890 = !DILocalVariable(name: "serio", arg: 2, scope: !3885, file: !3, line: 70, type: !134)
!3891 = !DILocation(line: 70, column: 59, scope: !3885)
!3892 = !DILocation(line: 70, column: 78, scope: !3885)
!3893 = !DILocation(line: 72, column: 2, scope: !3885)
!3894 = !DILocation(line: 72, column: 9, scope: !3885)
!3895 = !DILocation(line: 72, column: 14, scope: !3885)
!3896 = !DILocation(line: 72, column: 19, scope: !3885)
!3897 = !DILocation(line: 72, column: 22, scope: !3885)
!3898 = !DILocation(line: 72, column: 27, scope: !3885)
!3899 = !DILocation(line: 73, column: 8, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 73, column: 7)
!3901 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 72, column: 34)
!3902 = !DILocation(line: 73, column: 13, scope: !3900)
!3903 = !DILocation(line: 73, column: 18, scope: !3900)
!3904 = !DILocation(line: 73, column: 31, scope: !3900)
!3905 = !DILocation(line: 73, column: 34, scope: !3900)
!3906 = !DILocation(line: 73, column: 39, scope: !3900)
!3907 = !DILocation(line: 73, column: 47, scope: !3900)
!3908 = !DILocation(line: 73, column: 54, scope: !3900)
!3909 = !DILocation(line: 73, column: 57, scope: !3900)
!3910 = !DILocation(line: 73, column: 44, scope: !3900)
!3911 = !DILocation(line: 73, column: 63, scope: !3900)
!3912 = !DILocation(line: 74, column: 8, scope: !3900)
!3913 = !DILocation(line: 74, column: 13, scope: !3900)
!3914 = !DILocation(line: 74, column: 19, scope: !3900)
!3915 = !DILocation(line: 74, column: 32, scope: !3900)
!3916 = !DILocation(line: 74, column: 35, scope: !3900)
!3917 = !DILocation(line: 74, column: 40, scope: !3900)
!3918 = !DILocation(line: 74, column: 49, scope: !3900)
!3919 = !DILocation(line: 74, column: 56, scope: !3900)
!3920 = !DILocation(line: 74, column: 59, scope: !3900)
!3921 = !DILocation(line: 74, column: 46, scope: !3900)
!3922 = !DILocation(line: 74, column: 66, scope: !3900)
!3923 = !DILocation(line: 75, column: 8, scope: !3900)
!3924 = !DILocation(line: 75, column: 13, scope: !3900)
!3925 = !DILocation(line: 75, column: 19, scope: !3900)
!3926 = !DILocation(line: 75, column: 32, scope: !3900)
!3927 = !DILocation(line: 75, column: 35, scope: !3900)
!3928 = !DILocation(line: 75, column: 40, scope: !3900)
!3929 = !DILocation(line: 75, column: 49, scope: !3900)
!3930 = !DILocation(line: 75, column: 56, scope: !3900)
!3931 = !DILocation(line: 75, column: 59, scope: !3900)
!3932 = !DILocation(line: 75, column: 46, scope: !3900)
!3933 = !DILocation(line: 75, column: 66, scope: !3900)
!3934 = !DILocation(line: 76, column: 8, scope: !3900)
!3935 = !DILocation(line: 76, column: 13, scope: !3900)
!3936 = !DILocation(line: 76, column: 16, scope: !3900)
!3937 = !DILocation(line: 76, column: 29, scope: !3900)
!3938 = !DILocation(line: 76, column: 32, scope: !3900)
!3939 = !DILocation(line: 76, column: 37, scope: !3900)
!3940 = !DILocation(line: 76, column: 43, scope: !3900)
!3941 = !DILocation(line: 76, column: 50, scope: !3900)
!3942 = !DILocation(line: 76, column: 53, scope: !3900)
!3943 = !DILocation(line: 76, column: 40, scope: !3900)
!3944 = !DILocation(line: 73, column: 7, scope: !3901)
!3945 = !DILocation(line: 77, column: 4, scope: !3900)
!3946 = !DILocation(line: 78, column: 6, scope: !3901)
!3947 = distinct !{!3947, !3893, !3948, !2045, !2046}
!3948 = !DILocation(line: 79, column: 2, scope: !3885)
!3949 = !DILocation(line: 80, column: 2, scope: !3885)
!3950 = !DILocation(line: 81, column: 1, scope: !3885)
!3951 = distinct !DISubprogram(name: "serio_connect_driver", scope: !3, file: !3, line: 39, type: !246, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3952)
!3952 = !{!3953, !3954, !3955}
!3953 = !DILocalVariable(name: "serio", arg: 1, scope: !3951, file: !3, line: 39, type: !134)
!3954 = !DILocalVariable(name: "drv", arg: 2, scope: !3951, file: !3, line: 39, type: !228)
!3955 = !DILocalVariable(name: "retval", scope: !3951, file: !3, line: 41, type: !39)
!3956 = !DILocation(line: 39, column: 47, scope: !3951)
!3957 = !DILocation(line: 39, column: 75, scope: !3951)
!3958 = !DILocation(line: 41, column: 2, scope: !3951)
!3959 = !DILocation(line: 41, column: 6, scope: !3951)
!3960 = !DILocation(line: 43, column: 14, scope: !3951)
!3961 = !DILocation(line: 43, column: 21, scope: !3951)
!3962 = !DILocation(line: 43, column: 2, scope: !3951)
!3963 = !DILocation(line: 44, column: 11, scope: !3951)
!3964 = !DILocation(line: 44, column: 16, scope: !3951)
!3965 = !DILocation(line: 44, column: 24, scope: !3951)
!3966 = !DILocation(line: 44, column: 31, scope: !3951)
!3967 = !DILocation(line: 44, column: 9, scope: !3951)
!3968 = !DILocation(line: 45, column: 16, scope: !3951)
!3969 = !DILocation(line: 45, column: 23, scope: !3951)
!3970 = !DILocation(line: 45, column: 2, scope: !3951)
!3971 = !DILocation(line: 47, column: 9, scope: !3951)
!3972 = !DILocation(line: 48, column: 1, scope: !3951)
!3973 = !DILocation(line: 47, column: 2, scope: !3951)
!3974 = !DISubprogram(name: "device_bind_driver", scope: !19, file: !19, line: 1168, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3975 = !DISubprogram(name: "_dev_warn", scope: !3976, file: !3976, line: 52, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3976 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !904, !232, null}
!3979 = distinct !DISubprogram(name: "serio_disconnect_driver", scope: !3, file: !3, line: 62, type: !214, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3980)
!3980 = !{!3981}
!3981 = !DILocalVariable(name: "serio", arg: 1, scope: !3979, file: !3, line: 62, type: !134)
!3982 = !DILocation(line: 62, column: 51, scope: !3979)
!3983 = !DILocation(line: 64, column: 14, scope: !3979)
!3984 = !DILocation(line: 64, column: 21, scope: !3979)
!3985 = !DILocation(line: 64, column: 2, scope: !3979)
!3986 = !DILocation(line: 65, column: 6, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 65, column: 6)
!3988 = !DILocation(line: 65, column: 13, scope: !3987)
!3989 = !DILocation(line: 65, column: 6, scope: !3979)
!3990 = !DILocation(line: 66, column: 3, scope: !3987)
!3991 = !DILocation(line: 66, column: 10, scope: !3987)
!3992 = !DILocation(line: 66, column: 15, scope: !3987)
!3993 = !DILocation(line: 66, column: 26, scope: !3987)
!3994 = !DILocation(line: 67, column: 16, scope: !3979)
!3995 = !DILocation(line: 67, column: 23, scope: !3979)
!3996 = !DILocation(line: 67, column: 2, scope: !3979)
!3997 = !DILocation(line: 68, column: 1, scope: !3979)
!3998 = distinct !DISubprogram(name: "serio_show_bind_mode", scope: !3, file: !3, line: 410, type: !1819, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3999)
!3999 = !{!4000, !4001, !4002, !4003, !4004}
!4000 = !DILocalVariable(name: "dev", arg: 1, scope: !3998, file: !3, line: 410, type: !884)
!4001 = !DILocalVariable(name: "attr", arg: 2, scope: !3998, file: !3, line: 410, type: !1821)
!4002 = !DILocalVariable(name: "buf", arg: 3, scope: !3998, file: !3, line: 410, type: !318)
!4003 = !DILocalVariable(name: "serio", scope: !3998, file: !3, line: 412, type: !134)
!4004 = !DILocalVariable(name: "__mptr", scope: !4005, file: !3, line: 412, type: !133)
!4005 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 412, column: 24)
!4006 = !DILocation(line: 410, column: 52, scope: !3998)
!4007 = !DILocation(line: 410, column: 82, scope: !3998)
!4008 = !DILocation(line: 410, column: 94, scope: !3998)
!4009 = !DILocation(line: 412, column: 2, scope: !3998)
!4010 = !DILocation(line: 412, column: 16, scope: !3998)
!4011 = !DILocation(line: 412, column: 24, scope: !4005)
!4012 = !DILocation(line: 412, column: 24, scope: !3998)
!4013 = !DILocation(line: 413, column: 17, scope: !3998)
!4014 = !DILocation(line: 413, column: 30, scope: !3998)
!4015 = !DILocation(line: 413, column: 37, scope: !3998)
!4016 = !DILocation(line: 413, column: 9, scope: !3998)
!4017 = !DILocation(line: 414, column: 1, scope: !3998)
!4018 = !DILocation(line: 413, column: 2, scope: !3998)
!4019 = distinct !DISubprogram(name: "serio_set_bind_mode", scope: !3, file: !3, line: 416, type: !1824, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4028}
!4021 = !DILocalVariable(name: "dev", arg: 1, scope: !4019, file: !3, line: 416, type: !884)
!4022 = !DILocalVariable(name: "attr", arg: 2, scope: !4019, file: !3, line: 416, type: !1821)
!4023 = !DILocalVariable(name: "buf", arg: 3, scope: !4019, file: !3, line: 416, type: !232)
!4024 = !DILocalVariable(name: "count", arg: 4, scope: !4019, file: !3, line: 416, type: !363)
!4025 = !DILocalVariable(name: "serio", scope: !4019, file: !3, line: 418, type: !134)
!4026 = !DILocalVariable(name: "__mptr", scope: !4027, file: !3, line: 418, type: !133)
!4027 = distinct !DILexicalBlock(scope: !4019, file: !3, line: 418, column: 24)
!4028 = !DILocalVariable(name: "retval", scope: !4019, file: !3, line: 419, type: !39)
!4029 = !DILocation(line: 416, column: 51, scope: !4019)
!4030 = !DILocation(line: 416, column: 81, scope: !4019)
!4031 = !DILocation(line: 416, column: 99, scope: !4019)
!4032 = !DILocation(line: 416, column: 111, scope: !4019)
!4033 = !DILocation(line: 418, column: 2, scope: !4019)
!4034 = !DILocation(line: 418, column: 16, scope: !4019)
!4035 = !DILocation(line: 418, column: 24, scope: !4027)
!4036 = !DILocation(line: 418, column: 24, scope: !4019)
!4037 = !DILocation(line: 419, column: 2, scope: !4019)
!4038 = !DILocation(line: 419, column: 6, scope: !4019)
!4039 = !DILocation(line: 421, column: 11, scope: !4019)
!4040 = !DILocation(line: 421, column: 9, scope: !4019)
!4041 = !DILocation(line: 422, column: 15, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4019, file: !3, line: 422, column: 6)
!4043 = !DILocation(line: 422, column: 30, scope: !4042)
!4044 = !DILocation(line: 422, column: 7, scope: !4042)
!4045 = !DILocation(line: 422, column: 6, scope: !4019)
!4046 = !DILocation(line: 423, column: 3, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 422, column: 38)
!4048 = !DILocation(line: 423, column: 10, scope: !4047)
!4049 = !DILocation(line: 423, column: 22, scope: !4047)
!4050 = !DILocation(line: 424, column: 2, scope: !4047)
!4051 = !DILocation(line: 424, column: 22, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 424, column: 13)
!4053 = !DILocation(line: 424, column: 35, scope: !4052)
!4054 = !DILocation(line: 424, column: 14, scope: !4052)
!4055 = !DILocation(line: 424, column: 13, scope: !4042)
!4056 = !DILocation(line: 425, column: 3, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 424, column: 43)
!4058 = !DILocation(line: 425, column: 10, scope: !4057)
!4059 = !DILocation(line: 425, column: 22, scope: !4057)
!4060 = !DILocation(line: 426, column: 2, scope: !4057)
!4061 = !DILocation(line: 427, column: 10, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 426, column: 9)
!4063 = !DILocation(line: 430, column: 9, scope: !4019)
!4064 = !DILocation(line: 431, column: 1, scope: !4019)
!4065 = !DILocation(line: 430, column: 2, scope: !4019)
!4066 = distinct !DISubprogram(name: "firmware_id_show", scope: !3, file: !3, line: 433, type: !1819, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4067)
!4067 = !{!4068, !4069, !4070, !4071, !4072}
!4068 = !DILocalVariable(name: "dev", arg: 1, scope: !4066, file: !3, line: 433, type: !884)
!4069 = !DILocalVariable(name: "attr", arg: 2, scope: !4066, file: !3, line: 433, type: !1821)
!4070 = !DILocalVariable(name: "buf", arg: 3, scope: !4066, file: !3, line: 433, type: !318)
!4071 = !DILocalVariable(name: "serio", scope: !4066, file: !3, line: 435, type: !134)
!4072 = !DILocalVariable(name: "__mptr", scope: !4073, file: !3, line: 435, type: !133)
!4073 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 435, column: 24)
!4074 = !DILocation(line: 433, column: 48, scope: !4066)
!4075 = !DILocation(line: 433, column: 78, scope: !4066)
!4076 = !DILocation(line: 433, column: 90, scope: !4066)
!4077 = !DILocation(line: 435, column: 2, scope: !4066)
!4078 = !DILocation(line: 435, column: 16, scope: !4066)
!4079 = !DILocation(line: 435, column: 24, scope: !4073)
!4080 = !DILocation(line: 435, column: 24, scope: !4066)
!4081 = !DILocation(line: 437, column: 17, scope: !4066)
!4082 = !DILocation(line: 437, column: 30, scope: !4066)
!4083 = !DILocation(line: 437, column: 37, scope: !4066)
!4084 = !DILocation(line: 437, column: 9, scope: !4066)
!4085 = !DILocation(line: 438, column: 1, scope: !4066)
!4086 = !DILocation(line: 437, column: 2, scope: !4066)
!4087 = !DISubprogram(name: "device_release_driver", scope: !19, file: !19, line: 1169, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4088 = distinct !DISubprogram(name: "serio_get_pending_child", scope: !3, file: !3, line: 315, type: !4089, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!134, !134}
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4101, !4102, !4105}
!4092 = !DILocalVariable(name: "parent", arg: 1, scope: !4088, file: !3, line: 315, type: !134)
!4093 = !DILocalVariable(name: "event", scope: !4088, file: !3, line: 317, type: !1696)
!4094 = !DILocalVariable(name: "serio", scope: !4088, file: !3, line: 318, type: !134)
!4095 = !DILocalVariable(name: "child", scope: !4088, file: !3, line: 318, type: !134)
!4096 = !DILocalVariable(name: "flags", scope: !4088, file: !3, line: 319, type: !366)
!4097 = !DILocalVariable(name: "__dummy", scope: !4098, file: !3, line: 321, type: !366)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 321, column: 2)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 321, column: 2)
!4100 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 321, column: 2)
!4101 = !DILocalVariable(name: "__dummy2", scope: !4098, file: !3, line: 321, type: !366)
!4102 = !DILocalVariable(name: "__mptr", scope: !4103, file: !3, line: 323, type: !133)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 323, column: 2)
!4104 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 323, column: 2)
!4105 = !DILocalVariable(name: "__mptr", scope: !4106, file: !3, line: 323, type: !133)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 323, column: 2)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 323, column: 2)
!4108 = !DILocation(line: 315, column: 60, scope: !4088)
!4109 = !DILocation(line: 317, column: 2, scope: !4088)
!4110 = !DILocation(line: 317, column: 22, scope: !4088)
!4111 = !DILocation(line: 318, column: 2, scope: !4088)
!4112 = !DILocation(line: 318, column: 16, scope: !4088)
!4113 = !DILocation(line: 318, column: 24, scope: !4088)
!4114 = !DILocation(line: 319, column: 2, scope: !4088)
!4115 = !DILocation(line: 319, column: 16, scope: !4088)
!4116 = !DILocation(line: 321, column: 2, scope: !4088)
!4117 = !DILocation(line: 321, column: 2, scope: !4100)
!4118 = !DILocation(line: 321, column: 2, scope: !4098)
!4119 = !DILocation(line: 321, column: 2, scope: !4099)
!4120 = !DILocation(line: 323, column: 2, scope: !4103)
!4121 = !DILocation(line: 323, column: 2, scope: !4104)
!4122 = !DILocation(line: 323, column: 2, scope: !4107)
!4123 = !DILocation(line: 324, column: 7, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 324, column: 7)
!4125 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 323, column: 54)
!4126 = !DILocation(line: 324, column: 14, scope: !4124)
!4127 = !DILocation(line: 324, column: 19, scope: !4124)
!4128 = !DILocation(line: 324, column: 7, scope: !4125)
!4129 = !DILocation(line: 325, column: 12, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 324, column: 43)
!4131 = !DILocation(line: 325, column: 19, scope: !4130)
!4132 = !DILocation(line: 325, column: 10, scope: !4130)
!4133 = !DILocation(line: 326, column: 8, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 326, column: 8)
!4135 = !DILocation(line: 326, column: 15, scope: !4134)
!4136 = !DILocation(line: 326, column: 25, scope: !4134)
!4137 = !DILocation(line: 326, column: 22, scope: !4134)
!4138 = !DILocation(line: 326, column: 8, scope: !4130)
!4139 = !DILocation(line: 327, column: 13, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 326, column: 33)
!4141 = !DILocation(line: 327, column: 11, scope: !4140)
!4142 = !DILocation(line: 328, column: 5, scope: !4140)
!4143 = !DILocation(line: 330, column: 3, scope: !4130)
!4144 = !DILocation(line: 331, column: 2, scope: !4125)
!4145 = !DILocation(line: 323, column: 2, scope: !4106)
!4146 = distinct !{!4146, !4121, !4147, !2045, !2046}
!4147 = !DILocation(line: 331, column: 2, scope: !4104)
!4148 = !DILocation(line: 333, column: 44, scope: !4088)
!4149 = !DILocation(line: 333, column: 2, scope: !4088)
!4150 = !DILocation(line: 334, column: 9, scope: !4088)
!4151 = !DILocation(line: 335, column: 1, scope: !4088)
!4152 = !DILocation(line: 334, column: 2, scope: !4088)
!4153 = !DISubprogram(name: "put_device", scope: !19, file: !19, line: 1231, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4154 = distinct !DISubprogram(name: "serio_pause_rx", scope: !136, file: !136, line: 155, type: !214, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4155)
!4155 = !{!4156}
!4156 = !DILocalVariable(name: "serio", arg: 1, scope: !4154, file: !136, line: 155, type: !134)
!4157 = !DILocation(line: 155, column: 49, scope: !4154)
!4158 = !DILocation(line: 157, column: 17, scope: !4154)
!4159 = !DILocation(line: 157, column: 24, scope: !4154)
!4160 = !DILocation(line: 157, column: 2, scope: !4154)
!4161 = !DILocation(line: 158, column: 1, scope: !4154)
!4162 = distinct !DISubprogram(name: "serio_continue_rx", scope: !136, file: !136, line: 160, type: !214, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4163)
!4163 = !{!4164}
!4164 = !DILocalVariable(name: "serio", arg: 1, scope: !4162, file: !136, line: 160, type: !134)
!4165 = !DILocation(line: 160, column: 52, scope: !4162)
!4166 = !DILocation(line: 162, column: 19, scope: !4162)
!4167 = !DILocation(line: 162, column: 26, scope: !4162)
!4168 = !DILocation(line: 162, column: 2, scope: !4162)
!4169 = !DILocation(line: 163, column: 1, scope: !4162)
!4170 = !DISubprogram(name: "device_del", scope: !19, file: !19, line: 1058, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4171 = distinct !DISubprogram(name: "spin_lock_irq", scope: !2663, file: !2663, line: 374, type: !4172, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !2666}
!4174 = !{!4175}
!4175 = !DILocalVariable(name: "lock", arg: 1, scope: !4171, file: !2663, line: 374, type: !2666)
!4176 = !DILocation(line: 374, column: 55, scope: !4171)
!4177 = !DILocation(line: 376, column: 2, scope: !4171)
!4178 = !DILocation(line: 377, column: 1, scope: !4171)
!4179 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2658, file: !2658, line: 29, type: !4180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{null, !2661}
!4182 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !2663, file: !2663, line: 399, type: !4172, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4183)
!4183 = !{!4184}
!4184 = !DILocalVariable(name: "lock", arg: 1, scope: !4182, file: !2663, line: 399, type: !2666)
!4185 = !DILocation(line: 399, column: 57, scope: !4182)
!4186 = !DILocation(line: 401, column: 2, scope: !4182)
!4187 = !DILocation(line: 402, column: 1, scope: !4182)
!4188 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2658, file: !2658, line: 41, type: !4180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4189 = !DISubprogram(name: "device_attach", scope: !19, file: !19, line: 1170, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4190 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2658, file: !2658, line: 43, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !2661, !366}
!4193 = distinct !DISubprogram(name: "description_show", scope: !3, file: !3, line: 732, type: !1914, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4194)
!4194 = !{!4195, !4196, !4197, !4198}
!4195 = !DILocalVariable(name: "drv", arg: 1, scope: !4193, file: !3, line: 732, type: !948)
!4196 = !DILocalVariable(name: "buf", arg: 2, scope: !4193, file: !3, line: 732, type: !318)
!4197 = !DILocalVariable(name: "driver", scope: !4193, file: !3, line: 734, type: !228)
!4198 = !DILocalVariable(name: "__mptr", scope: !4199, file: !3, line: 734, type: !133)
!4199 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 734, column: 32)
!4200 = !DILocation(line: 732, column: 55, scope: !4193)
!4201 = !DILocation(line: 732, column: 66, scope: !4193)
!4202 = !DILocation(line: 734, column: 2, scope: !4193)
!4203 = !DILocation(line: 734, column: 23, scope: !4193)
!4204 = !DILocation(line: 734, column: 32, scope: !4199)
!4205 = !DILocation(line: 734, column: 32, scope: !4193)
!4206 = !DILocation(line: 735, column: 17, scope: !4193)
!4207 = !DILocation(line: 735, column: 30, scope: !4193)
!4208 = !DILocation(line: 735, column: 38, scope: !4193)
!4209 = !DILocation(line: 735, column: 52, scope: !4193)
!4210 = !DILocation(line: 735, column: 60, scope: !4193)
!4211 = !DILocation(line: 735, column: 9, scope: !4193)
!4212 = !DILocation(line: 736, column: 1, scope: !4193)
!4213 = !DILocation(line: 735, column: 2, scope: !4193)
!4214 = distinct !DISubprogram(name: "bind_mode_show", scope: !3, file: !3, line: 739, type: !1914, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4215)
!4215 = !{!4216, !4217, !4218, !4219}
!4216 = !DILocalVariable(name: "drv", arg: 1, scope: !4214, file: !3, line: 739, type: !948)
!4217 = !DILocalVariable(name: "buf", arg: 2, scope: !4214, file: !3, line: 739, type: !318)
!4218 = !DILocalVariable(name: "serio_drv", scope: !4214, file: !3, line: 741, type: !228)
!4219 = !DILocalVariable(name: "__mptr", scope: !4220, file: !3, line: 741, type: !133)
!4220 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 741, column: 35)
!4221 = !DILocation(line: 739, column: 53, scope: !4214)
!4222 = !DILocation(line: 739, column: 64, scope: !4214)
!4223 = !DILocation(line: 741, column: 2, scope: !4214)
!4224 = !DILocation(line: 741, column: 23, scope: !4214)
!4225 = !DILocation(line: 741, column: 35, scope: !4220)
!4226 = !DILocation(line: 741, column: 35, scope: !4214)
!4227 = !DILocation(line: 742, column: 17, scope: !4214)
!4228 = !DILocation(line: 742, column: 30, scope: !4214)
!4229 = !DILocation(line: 742, column: 41, scope: !4214)
!4230 = !DILocation(line: 742, column: 9, scope: !4214)
!4231 = !DILocation(line: 743, column: 1, scope: !4214)
!4232 = !DILocation(line: 742, column: 2, scope: !4214)
!4233 = distinct !DISubprogram(name: "bind_mode_store", scope: !3, file: !3, line: 745, type: !1918, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4241}
!4235 = !DILocalVariable(name: "drv", arg: 1, scope: !4233, file: !3, line: 745, type: !948)
!4236 = !DILocalVariable(name: "buf", arg: 2, scope: !4233, file: !3, line: 745, type: !232)
!4237 = !DILocalVariable(name: "count", arg: 3, scope: !4233, file: !3, line: 745, type: !363)
!4238 = !DILocalVariable(name: "serio_drv", scope: !4233, file: !3, line: 747, type: !228)
!4239 = !DILocalVariable(name: "__mptr", scope: !4240, file: !3, line: 747, type: !133)
!4240 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 747, column: 35)
!4241 = !DILocalVariable(name: "retval", scope: !4233, file: !3, line: 748, type: !39)
!4242 = !DILocation(line: 745, column: 54, scope: !4233)
!4243 = !DILocation(line: 745, column: 71, scope: !4233)
!4244 = !DILocation(line: 745, column: 83, scope: !4233)
!4245 = !DILocation(line: 747, column: 2, scope: !4233)
!4246 = !DILocation(line: 747, column: 23, scope: !4233)
!4247 = !DILocation(line: 747, column: 35, scope: !4240)
!4248 = !DILocation(line: 747, column: 35, scope: !4233)
!4249 = !DILocation(line: 748, column: 2, scope: !4233)
!4250 = !DILocation(line: 748, column: 6, scope: !4233)
!4251 = !DILocation(line: 750, column: 11, scope: !4233)
!4252 = !DILocation(line: 750, column: 9, scope: !4233)
!4253 = !DILocation(line: 751, column: 15, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 751, column: 6)
!4255 = !DILocation(line: 751, column: 30, scope: !4254)
!4256 = !DILocation(line: 751, column: 7, scope: !4254)
!4257 = !DILocation(line: 751, column: 6, scope: !4233)
!4258 = !DILocation(line: 752, column: 3, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 751, column: 38)
!4260 = !DILocation(line: 752, column: 14, scope: !4259)
!4261 = !DILocation(line: 752, column: 26, scope: !4259)
!4262 = !DILocation(line: 753, column: 2, scope: !4259)
!4263 = !DILocation(line: 753, column: 22, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 753, column: 13)
!4265 = !DILocation(line: 753, column: 35, scope: !4264)
!4266 = !DILocation(line: 753, column: 14, scope: !4264)
!4267 = !DILocation(line: 753, column: 13, scope: !4254)
!4268 = !DILocation(line: 754, column: 3, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 753, column: 43)
!4270 = !DILocation(line: 754, column: 14, scope: !4269)
!4271 = !DILocation(line: 754, column: 26, scope: !4269)
!4272 = !DILocation(line: 755, column: 2, scope: !4269)
!4273 = !DILocation(line: 756, column: 10, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 755, column: 9)
!4275 = !DILocation(line: 759, column: 9, scope: !4233)
!4276 = !DILocation(line: 760, column: 1, scope: !4233)
!4277 = !DILocation(line: 759, column: 2, scope: !4233)
!4278 = !DISubprogram(name: "add_uevent_var", scope: !279, file: !279, line: 220, type: !4279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!39, !313, !232, null}
!4281 = distinct !DISubprogram(name: "serio_cleanup", scope: !3, file: !3, line: 785, type: !214, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4282)
!4282 = !{!4283}
!4283 = !DILocalVariable(name: "serio", arg: 1, scope: !4281, file: !3, line: 785, type: !134)
!4284 = !DILocation(line: 785, column: 41, scope: !4281)
!4285 = !DILocation(line: 787, column: 14, scope: !4281)
!4286 = !DILocation(line: 787, column: 21, scope: !4281)
!4287 = !DILocation(line: 787, column: 2, scope: !4281)
!4288 = !DILocation(line: 788, column: 6, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 788, column: 6)
!4290 = !DILocation(line: 788, column: 13, scope: !4289)
!4291 = !DILocation(line: 788, column: 17, scope: !4289)
!4292 = !DILocation(line: 788, column: 20, scope: !4289)
!4293 = !DILocation(line: 788, column: 27, scope: !4289)
!4294 = !DILocation(line: 788, column: 32, scope: !4289)
!4295 = !DILocation(line: 788, column: 6, scope: !4281)
!4296 = !DILocation(line: 789, column: 3, scope: !4289)
!4297 = !DILocation(line: 789, column: 10, scope: !4289)
!4298 = !DILocation(line: 789, column: 15, scope: !4289)
!4299 = !DILocation(line: 789, column: 23, scope: !4289)
!4300 = !DILocation(line: 790, column: 16, scope: !4281)
!4301 = !DILocation(line: 790, column: 23, scope: !4281)
!4302 = !DILocation(line: 790, column: 2, scope: !4281)
!4303 = !DILocation(line: 791, column: 1, scope: !4281)
!4304 = distinct !DISubprogram(name: "serio_suspend", scope: !3, file: !3, line: 924, type: !922, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4305)
!4305 = !{!4306, !4307, !4308}
!4306 = !DILocalVariable(name: "dev", arg: 1, scope: !4304, file: !3, line: 924, type: !884)
!4307 = !DILocalVariable(name: "serio", scope: !4304, file: !3, line: 926, type: !134)
!4308 = !DILocalVariable(name: "__mptr", scope: !4309, file: !3, line: 926, type: !133)
!4309 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 926, column: 24)
!4310 = !DILocation(line: 924, column: 41, scope: !4304)
!4311 = !DILocation(line: 926, column: 2, scope: !4304)
!4312 = !DILocation(line: 926, column: 16, scope: !4304)
!4313 = !DILocation(line: 926, column: 24, scope: !4309)
!4314 = !DILocation(line: 926, column: 24, scope: !4304)
!4315 = !DILocation(line: 928, column: 16, scope: !4304)
!4316 = !DILocation(line: 928, column: 2, scope: !4304)
!4317 = !DILocation(line: 931, column: 1, scope: !4304)
!4318 = !DILocation(line: 930, column: 2, scope: !4304)
!4319 = distinct !DISubprogram(name: "serio_resume", scope: !3, file: !3, line: 933, type: !922, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4320)
!4320 = !{!4321, !4322, !4323, !4325}
!4321 = !DILocalVariable(name: "dev", arg: 1, scope: !4319, file: !3, line: 933, type: !884)
!4322 = !DILocalVariable(name: "serio", scope: !4319, file: !3, line: 935, type: !134)
!4323 = !DILocalVariable(name: "__mptr", scope: !4324, file: !3, line: 935, type: !133)
!4324 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 935, column: 24)
!4325 = !DILocalVariable(name: "error", scope: !4319, file: !3, line: 936, type: !39)
!4326 = !DILocation(line: 933, column: 40, scope: !4319)
!4327 = !DILocation(line: 935, column: 2, scope: !4319)
!4328 = !DILocation(line: 935, column: 16, scope: !4319)
!4329 = !DILocation(line: 935, column: 24, scope: !4324)
!4330 = !DILocation(line: 935, column: 24, scope: !4319)
!4331 = !DILocation(line: 936, column: 2, scope: !4319)
!4332 = !DILocation(line: 936, column: 6, scope: !4319)
!4333 = !DILocation(line: 938, column: 14, scope: !4319)
!4334 = !DILocation(line: 938, column: 21, scope: !4319)
!4335 = !DILocation(line: 938, column: 2, scope: !4319)
!4336 = !DILocation(line: 939, column: 6, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 939, column: 6)
!4338 = !DILocation(line: 939, column: 13, scope: !4337)
!4339 = !DILocation(line: 939, column: 17, scope: !4337)
!4340 = !DILocation(line: 939, column: 20, scope: !4337)
!4341 = !DILocation(line: 939, column: 27, scope: !4337)
!4342 = !DILocation(line: 939, column: 32, scope: !4337)
!4343 = !DILocation(line: 939, column: 6, scope: !4319)
!4344 = !DILocation(line: 940, column: 11, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 939, column: 48)
!4346 = !DILocation(line: 940, column: 18, scope: !4345)
!4347 = !DILocation(line: 940, column: 23, scope: !4345)
!4348 = !DILocation(line: 940, column: 38, scope: !4345)
!4349 = !DILocation(line: 940, column: 9, scope: !4345)
!4350 = !DILocation(line: 941, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 941, column: 7)
!4352 = !DILocation(line: 941, column: 13, scope: !4351)
!4353 = !DILocation(line: 941, column: 16, scope: !4351)
!4354 = !DILocation(line: 941, column: 22, scope: !4351)
!4355 = !DILocation(line: 941, column: 7, scope: !4345)
!4356 = !DILocation(line: 942, column: 4, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 942, column: 4)
!4358 = !DILocation(line: 942, column: 4, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 942, column: 4)
!4360 = !DILocation(line: 942, column: 4, scope: !4351)
!4361 = !DILocation(line: 944, column: 2, scope: !4345)
!4362 = !DILocation(line: 945, column: 16, scope: !4319)
!4363 = !DILocation(line: 945, column: 23, scope: !4319)
!4364 = !DILocation(line: 945, column: 2, scope: !4319)
!4365 = !DILocation(line: 947, column: 6, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 947, column: 6)
!4367 = !DILocation(line: 947, column: 6, scope: !4319)
!4368 = !DILocation(line: 952, column: 21, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 947, column: 13)
!4370 = !DILocation(line: 952, column: 3, scope: !4369)
!4371 = !DILocation(line: 953, column: 2, scope: !4369)
!4372 = !DILocation(line: 956, column: 1, scope: !4319)
!4373 = !DILocation(line: 955, column: 2, scope: !4319)
!4374 = distinct !DISubprogram(name: "serio_handle_event", scope: !3, file: !3, line: 196, type: !775, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4375)
!4375 = !{!4376, !4377}
!4376 = !DILocalVariable(name: "work", arg: 1, scope: !4374, file: !3, line: 196, type: !777)
!4377 = !DILocalVariable(name: "event", scope: !4374, file: !3, line: 198, type: !1696)
!4378 = !DILocation(line: 196, column: 52, scope: !4374)
!4379 = !DILocation(line: 198, column: 2, scope: !4374)
!4380 = !DILocation(line: 198, column: 22, scope: !4374)
!4381 = !DILocation(line: 200, column: 2, scope: !4374)
!4382 = !DILocation(line: 202, column: 2, scope: !4374)
!4383 = !DILocation(line: 202, column: 18, scope: !4374)
!4384 = !DILocation(line: 202, column: 16, scope: !4374)
!4385 = !DILocation(line: 204, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 202, column: 38)
!4387 = !DILocation(line: 204, column: 18, scope: !4386)
!4388 = !DILocation(line: 204, column: 3, scope: !4386)
!4389 = !DILocation(line: 207, column: 19, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 204, column: 24)
!4391 = !DILocation(line: 207, column: 26, scope: !4390)
!4392 = !DILocation(line: 207, column: 4, scope: !4390)
!4393 = !DILocation(line: 208, column: 4, scope: !4390)
!4394 = !DILocation(line: 211, column: 25, scope: !4390)
!4395 = !DILocation(line: 211, column: 32, scope: !4390)
!4396 = !DILocation(line: 211, column: 4, scope: !4390)
!4397 = !DILocation(line: 212, column: 4, scope: !4390)
!4398 = !DILocation(line: 215, column: 26, scope: !4390)
!4399 = !DILocation(line: 215, column: 33, scope: !4390)
!4400 = !DILocation(line: 215, column: 4, scope: !4390)
!4401 = !DILocation(line: 216, column: 22, scope: !4390)
!4402 = !DILocation(line: 216, column: 29, scope: !4390)
!4403 = !DILocation(line: 216, column: 4, scope: !4390)
!4404 = !DILocation(line: 217, column: 4, scope: !4390)
!4405 = !DILocation(line: 220, column: 28, scope: !4390)
!4406 = !DILocation(line: 220, column: 35, scope: !4390)
!4407 = !DILocation(line: 220, column: 4, scope: !4390)
!4408 = !DILocation(line: 221, column: 4, scope: !4390)
!4409 = !DILocation(line: 224, column: 24, scope: !4390)
!4410 = !DILocation(line: 224, column: 31, scope: !4390)
!4411 = !DILocation(line: 224, column: 4, scope: !4390)
!4412 = !DILocation(line: 225, column: 4, scope: !4390)
!4413 = !DILocation(line: 228, column: 33, scope: !4386)
!4414 = !DILocation(line: 228, column: 40, scope: !4386)
!4415 = !DILocation(line: 228, column: 48, scope: !4386)
!4416 = !DILocation(line: 228, column: 55, scope: !4386)
!4417 = !DILocation(line: 228, column: 3, scope: !4386)
!4418 = !DILocation(line: 229, column: 20, scope: !4386)
!4419 = !DILocation(line: 229, column: 3, scope: !4386)
!4420 = distinct !{!4420, !4382, !4421, !2045, !2046}
!4421 = !DILocation(line: 230, column: 2, scope: !4374)
!4422 = !DILocation(line: 232, column: 2, scope: !4374)
!4423 = !DILocation(line: 233, column: 1, scope: !4374)
!4424 = distinct !DISubprogram(name: "serio_get_event", scope: !3, file: !3, line: 147, type: !4425, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!1696}
!4427 = !{!4428, !4429, !4430, !4434, !4435}
!4428 = !DILocalVariable(name: "event", scope: !4424, file: !3, line: 149, type: !1696)
!4429 = !DILocalVariable(name: "flags", scope: !4424, file: !3, line: 150, type: !366)
!4430 = !DILocalVariable(name: "__dummy", scope: !4431, file: !3, line: 152, type: !366)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 152, column: 2)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 152, column: 2)
!4433 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 152, column: 2)
!4434 = !DILocalVariable(name: "__dummy2", scope: !4431, file: !3, line: 152, type: !366)
!4435 = !DILocalVariable(name: "__mptr", scope: !4436, file: !3, line: 155, type: !133)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 155, column: 11)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 154, column: 38)
!4438 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 154, column: 6)
!4439 = !DILocation(line: 149, column: 2, scope: !4424)
!4440 = !DILocation(line: 149, column: 22, scope: !4424)
!4441 = !DILocation(line: 150, column: 2, scope: !4424)
!4442 = !DILocation(line: 150, column: 16, scope: !4424)
!4443 = !DILocation(line: 152, column: 2, scope: !4424)
!4444 = !DILocation(line: 152, column: 2, scope: !4433)
!4445 = !DILocation(line: 152, column: 2, scope: !4431)
!4446 = !DILocation(line: 152, column: 2, scope: !4432)
!4447 = !DILocation(line: 154, column: 7, scope: !4438)
!4448 = !DILocation(line: 154, column: 6, scope: !4424)
!4449 = !DILocation(line: 155, column: 11, scope: !4436)
!4450 = !DILocation(line: 155, column: 11, scope: !4437)
!4451 = !DILocation(line: 155, column: 9, scope: !4437)
!4452 = !DILocation(line: 157, column: 18, scope: !4437)
!4453 = !DILocation(line: 157, column: 25, scope: !4437)
!4454 = !DILocation(line: 157, column: 3, scope: !4437)
!4455 = !DILocation(line: 158, column: 2, scope: !4437)
!4456 = !DILocation(line: 160, column: 44, scope: !4424)
!4457 = !DILocation(line: 160, column: 2, scope: !4424)
!4458 = !DILocation(line: 161, column: 9, scope: !4424)
!4459 = !DILocation(line: 162, column: 1, scope: !4424)
!4460 = !DILocation(line: 161, column: 2, scope: !4424)
!4461 = distinct !DISubprogram(name: "serio_add_port", scope: !3, file: !3, line: 523, type: !214, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DILocalVariable(name: "serio", arg: 1, scope: !4461, file: !3, line: 523, type: !134)
!4464 = !DILocalVariable(name: "parent", scope: !4461, file: !3, line: 525, type: !134)
!4465 = !DILocalVariable(name: "error", scope: !4461, file: !3, line: 526, type: !39)
!4466 = !DILocation(line: 523, column: 42, scope: !4461)
!4467 = !DILocation(line: 525, column: 2, scope: !4461)
!4468 = !DILocation(line: 525, column: 16, scope: !4461)
!4469 = !DILocation(line: 525, column: 25, scope: !4461)
!4470 = !DILocation(line: 525, column: 32, scope: !4461)
!4471 = !DILocation(line: 526, column: 2, scope: !4461)
!4472 = !DILocation(line: 526, column: 6, scope: !4461)
!4473 = !DILocation(line: 528, column: 6, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 528, column: 6)
!4475 = !DILocation(line: 528, column: 6, scope: !4461)
!4476 = !DILocation(line: 529, column: 18, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 528, column: 14)
!4478 = !DILocation(line: 529, column: 3, scope: !4477)
!4479 = !DILocation(line: 530, column: 18, scope: !4477)
!4480 = !DILocation(line: 530, column: 25, scope: !4477)
!4481 = !DILocation(line: 530, column: 38, scope: !4477)
!4482 = !DILocation(line: 530, column: 46, scope: !4477)
!4483 = !DILocation(line: 530, column: 3, scope: !4477)
!4484 = !DILocation(line: 531, column: 21, scope: !4477)
!4485 = !DILocation(line: 531, column: 3, scope: !4477)
!4486 = !DILocation(line: 532, column: 2, scope: !4477)
!4487 = !DILocation(line: 534, column: 17, scope: !4461)
!4488 = !DILocation(line: 534, column: 24, scope: !4461)
!4489 = !DILocation(line: 534, column: 2, scope: !4461)
!4490 = !DILocation(line: 536, column: 6, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 536, column: 6)
!4492 = !DILocation(line: 536, column: 13, scope: !4491)
!4493 = !DILocation(line: 536, column: 6, scope: !4461)
!4494 = !DILocation(line: 537, column: 3, scope: !4491)
!4495 = !DILocation(line: 537, column: 10, scope: !4491)
!4496 = !DILocation(line: 537, column: 16, scope: !4491)
!4497 = !DILocation(line: 539, column: 22, scope: !4461)
!4498 = !DILocation(line: 539, column: 29, scope: !4461)
!4499 = !DILocation(line: 539, column: 10, scope: !4461)
!4500 = !DILocation(line: 539, column: 8, scope: !4461)
!4501 = !DILocation(line: 540, column: 6, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 540, column: 6)
!4503 = !DILocation(line: 540, column: 6, scope: !4461)
!4504 = !DILocation(line: 541, column: 3, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 541, column: 3)
!4506 = !DILocation(line: 541, column: 3, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 541, column: 3)
!4508 = !DILocation(line: 541, column: 3, scope: !4502)
!4509 = !DILocation(line: 544, column: 1, scope: !4461)
!4510 = distinct !DISubprogram(name: "serio_attach_driver", scope: !3, file: !3, line: 800, type: !2424, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513}
!4512 = !DILocalVariable(name: "drv", arg: 1, scope: !4510, file: !3, line: 800, type: !228)
!4513 = !DILocalVariable(name: "error", scope: !4510, file: !3, line: 802, type: !39)
!4514 = !DILocation(line: 800, column: 54, scope: !4510)
!4515 = !DILocation(line: 802, column: 2, scope: !4510)
!4516 = !DILocation(line: 802, column: 6, scope: !4510)
!4517 = !DILocation(line: 804, column: 25, scope: !4510)
!4518 = !DILocation(line: 804, column: 30, scope: !4510)
!4519 = !DILocation(line: 804, column: 10, scope: !4510)
!4520 = !DILocation(line: 804, column: 8, scope: !4510)
!4521 = !DILocation(line: 805, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 805, column: 6)
!4523 = !DILocation(line: 805, column: 6, scope: !4510)
!4524 = !DILocation(line: 806, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 806, column: 3)
!4526 = !DILocation(line: 806, column: 3, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 806, column: 3)
!4528 = !DILocation(line: 806, column: 3, scope: !4522)
!4529 = !DILocation(line: 808, column: 1, scope: !4510)
!4530 = !DISubprogram(name: "device_add", scope: !19, file: !19, line: 1057, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4531 = !DISubprogram(name: "_dev_err", scope: !3976, file: !3976, line: 50, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4532 = !DISubprogram(name: "driver_attach", scope: !19, file: !19, line: 1171, type: !2414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4533 = !DISubprogram(name: "bus_register", scope: !260, file: !260, line: 112, type: !4534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!39, !257}
