; ModuleID = 'drivers/base/bus.c'
source_filename = "drivers/base/bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_create_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_create_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_remove_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_remove_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_for_each_dev: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_for_each_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_find_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_find_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_for_each_drv: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_for_each_drv ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_rescan_devices: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_rescan_devices ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_reprobe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_reprobe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_register_notifier: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_register_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_unregister_notifier: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_unregister_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_get_kset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_get_kset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_sort_breadthfirst: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_sort_breadthfirst ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_subsys_interface_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad subsys_interface_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_subsys_interface_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad subsys_interface_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_subsys_system_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad subsys_system_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_subsys_virtual_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad subsys_virtual_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_find: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_find ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bus_get_dev_root: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bus_get_dev_root ; .previous"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, ptr, %struct.kset, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.klist_iter = type { ptr, ptr }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.subsys_interface = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.subsys_dev_iter = type { %struct.klist_iter, ptr }

@__UNIQUE_ID___addressable_bus_create_file205 = internal global ptr @bus_create_file, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_bus_remove_file206 = internal global ptr @bus_remove_file, section ".discard.addressable", align 8, !dbg !1770
@__UNIQUE_ID___addressable_bus_for_each_dev207 = internal global ptr @bus_for_each_dev, section ".discard.addressable", align 8, !dbg !1772
@__UNIQUE_ID___addressable_bus_find_device208 = internal global ptr @bus_find_device, section ".discard.addressable", align 8, !dbg !1774
@__UNIQUE_ID___addressable_bus_for_each_drv209 = internal global ptr @bus_for_each_drv, section ".discard.addressable", align 8, !dbg !1776
@.str = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1, !dbg !1778
@driver_ktype = internal constant %struct.kobj_type { ptr @driver_release, ptr @driver_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1887
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1783
@.str.2 = private unnamed_addr constant [44 x i8] c"\013%s: failed to create module links for %s\0A\00", align 1, !dbg !1786
@__func__.bus_add_driver = private unnamed_addr constant [15 x i8] c"bus_add_driver\00", align 1, !dbg !1791
@driver_attr_uevent = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.13, i16 128 }, ptr null, ptr @uevent_store }, align 8, !dbg !1893
@.str.3 = private unnamed_addr constant [31 x i8] c"\013%s: uevent attr (%s) failed\0A\00", align 1, !dbg !1796
@.str.4 = private unnamed_addr constant [36 x i8] c"\013%s: driver_add_groups(%s) failed\0A\00", align 1, !dbg !1801
@.str.5 = private unnamed_addr constant [33 x i8] c"\013%s: add_bind_files(%s) failed\0A\00", align 1, !dbg !1806
@__UNIQUE_ID___addressable_bus_rescan_devices210 = internal global ptr @bus_rescan_devices, section ".discard.addressable", align 8, !dbg !1811
@__UNIQUE_ID___addressable_device_reprobe211 = internal global ptr @device_reprobe, section ".discard.addressable", align 8, !dbg !1813
@bus_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1815
@.str.6 = private unnamed_addr constant [30 x i8] c"&(&priv->bus_notifier)->rwsem\00", align 1, !dbg !1833
@bus_kset = internal global ptr null, align 8, !dbg !1880
@bus_ktype = internal constant %struct.kobj_type { ptr @bus_release, ptr @bus_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1906
@bus_attr_uevent = internal global %struct.bus_attribute { %struct.attribute { ptr @.str.13, i16 128 }, ptr null, ptr @bus_uevent_store }, align 8, !dbg !1910
@.str.7 = private unnamed_addr constant [8 x i8] c"devices\00", align 1, !dbg !1838
@.str.8 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1, !dbg !1841
@.str.9 = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1, !dbg !1843
@__UNIQUE_ID___addressable_bus_register212 = internal global ptr @bus_register, section ".discard.addressable", align 8, !dbg !1848
@__UNIQUE_ID___addressable_bus_unregister213 = internal global ptr @bus_unregister, section ".discard.addressable", align 8, !dbg !1850
@__UNIQUE_ID___addressable_bus_register_notifier214 = internal global ptr @bus_register_notifier, section ".discard.addressable", align 8, !dbg !1852
@__UNIQUE_ID___addressable_bus_unregister_notifier215 = internal global ptr @bus_unregister_notifier, section ".discard.addressable", align 8, !dbg !1854
@__UNIQUE_ID___addressable_bus_get_kset216 = internal global ptr @bus_get_kset, section ".discard.addressable", align 8, !dbg !1856
@__UNIQUE_ID___addressable_bus_sort_breadthfirst217 = internal global ptr @bus_sort_breadthfirst, section ".discard.addressable", align 8, !dbg !1858
@__UNIQUE_ID___addressable_subsys_interface_register218 = internal global ptr @subsys_interface_register, section ".discard.addressable", align 8, !dbg !1860
@__UNIQUE_ID___addressable_subsys_interface_unregister219 = internal global ptr @subsys_interface_unregister, section ".discard.addressable", align 8, !dbg !1862
@system_kset = internal global ptr null, align 8, !dbg !1878
@__UNIQUE_ID___addressable_subsys_system_register220 = internal global ptr @subsys_system_register, section ".discard.addressable", align 8, !dbg !1864
@__UNIQUE_ID___addressable_subsys_virtual_register221 = internal global ptr @subsys_virtual_register, section ".discard.addressable", align 8, !dbg !1866
@__UNIQUE_ID___addressable_driver_find222 = internal global ptr @driver_find, section ".discard.addressable", align 8, !dbg !1868
@__UNIQUE_ID___addressable_bus_get_dev_root223 = internal global ptr @bus_get_dev_root, section ".discard.addressable", align 8, !dbg !1870
@.str.10 = private unnamed_addr constant [4 x i8] c"bus\00", align 1, !dbg !1872
@bus_uevent_ops = internal constant %struct.kset_uevent_ops { ptr @bus_uevent_filter, ptr null, ptr null }, align 8, !dbg !1928
@.str.11 = private unnamed_addr constant [7 x i8] c"system\00", align 1, !dbg !1875
@devices_kset = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1882
@driver_sysfs_ops = internal constant %struct.sysfs_ops { ptr @drv_attr_show, ptr @drv_attr_store }, align 8, !dbg !1889
@.str.13 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1, !dbg !1891
@driver_attr_unbind = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.14, i16 128 }, ptr null, ptr @unbind_store }, align 8, !dbg !1897
@driver_attr_bind = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.15, i16 128 }, ptr null, ptr @bind_store }, align 8, !dbg !1904
@.str.14 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1, !dbg !1895
@.str.15 = private unnamed_addr constant [5 x i8] c"bind\00", align 1, !dbg !1899
@bus_sysfs_ops = internal constant %struct.sysfs_ops { ptr @bus_attr_show, ptr @bus_attr_store }, align 8, !dbg !1908
@bus_attr_drivers_probe = internal global %struct.bus_attribute { %struct.attribute { ptr @.str.16, i16 128 }, ptr null, ptr @drivers_probe_store }, align 8, !dbg !1917
@bus_attr_drivers_autoprobe = internal global %struct.bus_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @drivers_autoprobe_show, ptr @drivers_autoprobe_store }, align 8, !dbg !1924
@.str.16 = private unnamed_addr constant [14 x i8] c"drivers_probe\00", align 1, !dbg !1912
@.str.17 = private unnamed_addr constant [18 x i8] c"drivers_autoprobe\00", align 1, !dbg !1919
@.str.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !1926
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID___addressable_bus_create_file205, ptr @__UNIQUE_ID___addressable_bus_remove_file206, ptr @__UNIQUE_ID___addressable_bus_for_each_dev207, ptr @__UNIQUE_ID___addressable_bus_find_device208, ptr @__UNIQUE_ID___addressable_bus_for_each_drv209, ptr @__UNIQUE_ID___addressable_bus_rescan_devices210, ptr @__UNIQUE_ID___addressable_device_reprobe211, ptr @__UNIQUE_ID___addressable_bus_register212, ptr @__UNIQUE_ID___addressable_bus_unregister213, ptr @__UNIQUE_ID___addressable_bus_register_notifier214, ptr @__UNIQUE_ID___addressable_bus_unregister_notifier215, ptr @__UNIQUE_ID___addressable_bus_get_kset216, ptr @__UNIQUE_ID___addressable_bus_sort_breadthfirst217, ptr @__UNIQUE_ID___addressable_subsys_interface_register218, ptr @__UNIQUE_ID___addressable_subsys_interface_unregister219, ptr @__UNIQUE_ID___addressable_subsys_system_register220, ptr @__UNIQUE_ID___addressable_subsys_virtual_register221, ptr @__UNIQUE_ID___addressable_driver_find222, ptr @__UNIQUE_ID___addressable_bus_get_dev_root223], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_create_file(ptr noundef %bus, ptr noundef %attr) #0 align 16 !dbg !1939 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !1943, metadata !DIExpression()), !dbg !1947
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1944, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !1945, metadata !DIExpression()), !dbg !1950
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !1951
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !1952
  store ptr %call, ptr %sp, align 8, !dbg !1950
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !1953
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1946, metadata !DIExpression()), !dbg !1954
  %1 = load ptr, ptr %sp, align 8, !dbg !1955
  %tobool = icmp ne ptr %1, null, !dbg !1955
  br i1 %tobool, label %if.end, label %if.then, !dbg !1957

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1958

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !1959
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 0, !dbg !1960
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !1961
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !1962
  %attr1 = getelementptr inbounds %struct.bus_attribute, ptr %3, i32 0, i32 0, !dbg !1963
  %call2 = call i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr1) #16, !dbg !1964
  store i32 %call2, ptr %error, align 4, !dbg !1965
  %4 = load ptr, ptr %sp, align 8, !dbg !1966
  call void @subsys_put(ptr noundef %4) #16, !dbg !1967
  %5 = load i32, ptr %error, align 4, !dbg !1968
  store i32 %5, ptr %retval, align 4, !dbg !1969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1969

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !1970
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !1970
  %6 = load i32, ptr %retval, align 4, !dbg !1970
  ret i32 %6, !dbg !1970
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bus_to_subsys(ptr noundef %bus) #0 align 16 !dbg !1971 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
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
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !1975, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !1992
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !1976, metadata !DIExpression()), !dbg !1993
  store ptr null, ptr %sp, align 8, !dbg !1993
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #15, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !1977, metadata !DIExpression()), !dbg !1995
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !1996
  %tobool = icmp ne ptr %0, null, !dbg !1996
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1998

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @bus_kset, align 8, !dbg !1999
  %tobool1 = icmp ne ptr %1, null, !dbg !1999
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2000

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !2001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !2001

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr @bus_kset, align 8, !dbg !2002
  %list_lock = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 1, !dbg !2003
  call void @spin_lock(ptr noundef %list_lock) #16, !dbg !2004
  %3 = load ptr, ptr @bus_kset, align 8, !dbg !2005
  %list = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 0, !dbg !2007
  %call = call i32 @list_empty(ptr noundef %list) #16, !dbg !2008
  %tobool2 = icmp ne i32 %call, 0, !dbg !2008
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2009

if.then3:                                         ; preds = %if.end
  br label %done, !dbg !2010

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1978, metadata !DIExpression()), !dbg !2011
  %4 = load ptr, ptr @bus_kset, align 8, !dbg !2011
  %list5 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 0, !dbg !2011
  %next = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !2011
  %5 = load ptr, ptr %next, align 8, !dbg !2011
  store ptr %5, ptr %__mptr, align 8, !dbg !2011
  %6 = load ptr, ptr %__mptr, align 8, !dbg !2011
  %add.ptr = getelementptr i8, ptr %6, i64 -8, !dbg !2011
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2012
  %7 = load ptr, ptr %tmp, align 8, !dbg !2011
  store ptr %7, ptr %kobj, align 8, !dbg !2012
  br label %for.cond, !dbg !2012

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load ptr, ptr %kobj, align 8, !dbg !2013
  %entry6 = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 1, !dbg !2013
  %9 = load ptr, ptr @bus_kset, align 8, !dbg !2013
  %list7 = getelementptr inbounds %struct.kset, ptr %9, i32 0, i32 0, !dbg !2013
  %cmp = icmp eq ptr %entry6, %list7, !dbg !2013
  %lnot = xor i1 %cmp, true, !dbg !2013
  br i1 %lnot, label %for.body, label %for.end, !dbg !2012

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %kset) #15, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %kset, metadata !1981, metadata !DIExpression()), !dbg !2015
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #15, !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !1984, metadata !DIExpression()), !dbg !2016
  %10 = load ptr, ptr %kobj, align 8, !dbg !2016
  store ptr %10, ptr %__mptr8, align 8, !dbg !2016
  %11 = load ptr, ptr %__mptr8, align 8, !dbg !2016
  %add.ptr10 = getelementptr i8, ptr %11, i64 -24, !dbg !2016
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !2016
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #15, !dbg !2017
  %12 = load ptr, ptr %tmp9, align 8, !dbg !2016
  store ptr %12, ptr %kset, align 8, !dbg !2015
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #15, !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !1986, metadata !DIExpression()), !dbg !2018
  %13 = load ptr, ptr %kset, align 8, !dbg !2018
  store ptr %13, ptr %__mptr11, align 8, !dbg !2018
  %14 = load ptr, ptr %__mptr11, align 8, !dbg !2018
  %add.ptr13 = getelementptr i8, ptr %14, i64 0, !dbg !2018
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !2018
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #15, !dbg !2019
  %15 = load ptr, ptr %tmp12, align 8, !dbg !2018
  store ptr %15, ptr %sp, align 8, !dbg !2020
  %16 = load ptr, ptr %sp, align 8, !dbg !2021
  %bus14 = getelementptr inbounds %struct.subsys_private, ptr %16, i32 0, i32 9, !dbg !2023
  %17 = load ptr, ptr %bus14, align 8, !dbg !2023
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !2024
  %cmp15 = icmp eq ptr %17, %18, !dbg !2025
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2026

if.then16:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2027

if.end17:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2028
  br label %cleanup, !dbg !2028

cleanup:                                          ; preds = %if.then16, %if.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %kset) #15, !dbg !2028
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2029

for.inc:                                          ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #15, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !1988, metadata !DIExpression()), !dbg !2030
  %19 = load ptr, ptr %kobj, align 8, !dbg !2030
  %entry19 = getelementptr inbounds %struct.kobject, ptr %19, i32 0, i32 1, !dbg !2030
  %next20 = getelementptr inbounds %struct.list_head, ptr %entry19, i32 0, i32 0, !dbg !2030
  %20 = load ptr, ptr %next20, align 8, !dbg !2030
  store ptr %20, ptr %__mptr18, align 8, !dbg !2030
  %21 = load ptr, ptr %__mptr18, align 8, !dbg !2030
  %add.ptr22 = getelementptr i8, ptr %21, i64 -8, !dbg !2030
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #15, !dbg !2013
  %22 = load ptr, ptr %tmp21, align 8, !dbg !2030
  store ptr %22, ptr %kobj, align 8, !dbg !2013
  br label %for.cond, !dbg !2013, !llvm.loop !2031

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %sp, align 8, !dbg !2035
  br label %done, !dbg !2036

done:                                             ; preds = %for.end, %cleanup, %if.then3
  call void @llvm.dbg.label(metadata !1990), !dbg !2037
  %23 = load ptr, ptr %sp, align 8, !dbg !2038
  %call23 = call ptr @subsys_get(ptr noundef %23) #16, !dbg !2039
  store ptr %call23, ptr %sp, align 8, !dbg !2040
  %24 = load ptr, ptr @bus_kset, align 8, !dbg !2041
  %list_lock24 = getelementptr inbounds %struct.kset, ptr %24, i32 0, i32 1, !dbg !2042
  call void @spin_unlock(ptr noundef %list_lock24) #16, !dbg !2043
  %25 = load ptr, ptr %sp, align 8, !dbg !2044
  store ptr %25, ptr %retval, align 8, !dbg !2045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !2045

cleanup25:                                        ; preds = %done, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #15, !dbg !2046
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2046
  %26 = load ptr, ptr %retval, align 8, !dbg !2046
  ret ptr %26, !dbg !2046
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #3 align 16 !dbg !2047 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2053, metadata !DIExpression()), !dbg !2055
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2054, metadata !DIExpression()), !dbg !2056
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2057
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !2058
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #16, !dbg !2059
  ret i32 %call, !dbg !2060
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @subsys_put(ptr noundef %sp) #3 align 16 !dbg !2061 {
entry:
  %sp.addr = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !2065, metadata !DIExpression()), !dbg !2066
  %0 = load ptr, ptr %sp.addr, align 8, !dbg !2067
  %tobool = icmp ne ptr %0, null, !dbg !2067
  br i1 %tobool, label %if.then, label %if.end, !dbg !2069

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sp.addr, align 8, !dbg !2070
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %1, i32 0, i32 0, !dbg !2071
  call void @kset_put(ptr noundef %subsys) #16, !dbg !2072
  br label %if.end, !dbg !2072

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bus_remove_file(ptr noundef %bus, ptr noundef %attr) #0 align 16 !dbg !2074 {
entry:
  %bus.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !2078, metadata !DIExpression()), !dbg !2081
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2079, metadata !DIExpression()), !dbg !2082
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2083
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2080, metadata !DIExpression()), !dbg !2084
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !2085
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !2086
  store ptr %call, ptr %sp, align 8, !dbg !2084
  %1 = load ptr, ptr %sp, align 8, !dbg !2087
  %tobool = icmp ne ptr %1, null, !dbg !2087
  br i1 %tobool, label %if.end, label %if.then, !dbg !2089

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2090

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !2091
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 0, !dbg !2092
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !2093
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !2094
  %attr1 = getelementptr inbounds %struct.bus_attribute, ptr %3, i32 0, i32 0, !dbg !2095
  call void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr1) #16, !dbg !2096
  %4 = load ptr, ptr %sp, align 8, !dbg !2097
  call void @subsys_put(ptr noundef %4) #16, !dbg !2098
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2099
  br label %cleanup, !dbg !2099

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2099
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2099

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr) #3 align 16 !dbg !2100 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2104, metadata !DIExpression()), !dbg !2106
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2105, metadata !DIExpression()), !dbg !2107
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2108
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !2109
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #16, !dbg !2110
  ret void, !dbg !2111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_for_each_dev(ptr noundef %bus, ptr noundef %start, ptr noundef %data, ptr noundef %fn) #0 align 16 !dbg !2112 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %i = alloca %struct.klist_iter, align 8
  %dev = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !2119, metadata !DIExpression()), !dbg !2132
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2120, metadata !DIExpression()), !dbg !2133
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2121, metadata !DIExpression()), !dbg !2134
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2122, metadata !DIExpression()), !dbg !2135
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2136
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2123, metadata !DIExpression()), !dbg !2137
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !2138
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !2139
  store ptr %call, ptr %sp, align 8, !dbg !2137
  call void @llvm.lifetime.start.p0(i64 16, ptr %i) #15, !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2124, metadata !DIExpression()), !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2142
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2130, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2131, metadata !DIExpression()), !dbg !2145
  store i32 0, ptr %error, align 4, !dbg !2145
  %1 = load ptr, ptr %sp, align 8, !dbg !2146
  %tobool = icmp ne ptr %1, null, !dbg !2146
  br i1 %tobool, label %if.end, label %if.then, !dbg !2148

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2149

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !2150
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 5, !dbg !2151
  %3 = load ptr, ptr %start.addr, align 8, !dbg !2152
  %tobool1 = icmp ne ptr %3, null, !dbg !2152
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2152

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %start.addr, align 8, !dbg !2153
  %p = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !2154
  %5 = load ptr, ptr %p, align 8, !dbg !2154
  %knode_bus = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 3, !dbg !2155
  br label %cond.end, !dbg !2152

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %knode_bus, %cond.true ], [ null, %cond.false ], !dbg !2152
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef %i, ptr noundef %cond) #16, !dbg !2156
  br label %while.cond, !dbg !2157

while.cond:                                       ; preds = %while.body, %cond.end
  %6 = load i32, ptr %error, align 4, !dbg !2158
  %tobool2 = icmp ne i32 %6, 0, !dbg !2158
  br i1 %tobool2, label %land.end, label %land.rhs, !dbg !2159

land.rhs:                                         ; preds = %while.cond
  %call3 = call ptr @next_device(ptr noundef %i) #16, !dbg !2160
  store ptr %call3, ptr %dev, align 8, !dbg !2161
  %tobool4 = icmp ne ptr %call3, null, !dbg !2159
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !2162
  br i1 %7, label %while.body, label %while.end, !dbg !2157

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %fn.addr, align 8, !dbg !2163
  %9 = load ptr, ptr %dev, align 8, !dbg !2164
  %10 = load ptr, ptr %data.addr, align 8, !dbg !2165
  %call5 = call i32 %8(ptr noundef %9, ptr noundef %10) #16, !dbg !2163
  store i32 %call5, ptr %error, align 4, !dbg !2166
  br label %while.cond, !dbg !2157, !llvm.loop !2167

while.end:                                        ; preds = %land.end
  call void @klist_iter_exit(ptr noundef %i) #16, !dbg !2169
  %11 = load ptr, ptr %sp, align 8, !dbg !2170
  call void @subsys_put(ptr noundef %11) #16, !dbg !2171
  %12 = load i32, ptr %error, align 4, !dbg !2172
  store i32 %12, ptr %retval, align 4, !dbg !2173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2173

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !2174
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2174
  call void @llvm.lifetime.end.p0(i64 16, ptr %i) #15, !dbg !2174
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2174
  %13 = load i32, ptr %retval, align 4, !dbg !2174
  ret i32 %13, !dbg !2174
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2175 dso_local void @klist_iter_init_node(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_device(ptr noundef %i) #0 align 16 !dbg !2179 {
entry:
  %i.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %dev_prv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2183, metadata !DIExpression()), !dbg !2191
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !2192
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2184, metadata !DIExpression()), !dbg !2193
  %0 = load ptr, ptr %i.addr, align 8, !dbg !2194
  %call = call ptr @klist_next(ptr noundef %0) #16, !dbg !2195
  store ptr %call, ptr %n, align 8, !dbg !2193
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2196
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2185, metadata !DIExpression()), !dbg !2197
  store ptr null, ptr %dev, align 8, !dbg !2197
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_prv) #15, !dbg !2198
  call void @llvm.dbg.declare(metadata ptr %dev_prv, metadata !2186, metadata !DIExpression()), !dbg !2199
  %1 = load ptr, ptr %n, align 8, !dbg !2200
  %tobool = icmp ne ptr %1, null, !dbg !2200
  br i1 %tobool, label %if.then, label %if.end, !dbg !2201

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2187, metadata !DIExpression()), !dbg !2202
  %2 = load ptr, ptr %n, align 8, !dbg !2202
  store ptr %2, ptr %__mptr, align 8, !dbg !2202
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2202
  %add.ptr = getelementptr i8, ptr %3, i64 -104, !dbg !2202
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2203
  %4 = load ptr, ptr %tmp, align 8, !dbg !2202
  store ptr %4, ptr %dev_prv, align 8, !dbg !2204
  %5 = load ptr, ptr %dev_prv, align 8, !dbg !2205
  %device = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 8, !dbg !2206
  %6 = load ptr, ptr %device, align 8, !dbg !2206
  store ptr %6, ptr %dev, align 8, !dbg !2207
  br label %if.end, !dbg !2208

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_prv) #15, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !2210
  ret ptr %7, !dbg !2211
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2212 dso_local void @klist_iter_exit(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @bus_find_device(ptr noundef %bus, ptr noundef %start, ptr noundef %data, ptr noundef %match) #0 align 16 !dbg !2215 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %i = alloca %struct.klist_iter, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !2222, metadata !DIExpression()), !dbg !2229
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2223, metadata !DIExpression()), !dbg !2230
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2224, metadata !DIExpression()), !dbg !2231
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !2225, metadata !DIExpression()), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2233
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2226, metadata !DIExpression()), !dbg !2234
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !2235
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !2236
  store ptr %call, ptr %sp, align 8, !dbg !2234
  call void @llvm.lifetime.start.p0(i64 16, ptr %i) #15, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2227, metadata !DIExpression()), !dbg !2238
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2228, metadata !DIExpression()), !dbg !2240
  %1 = load ptr, ptr %sp, align 8, !dbg !2241
  %tobool = icmp ne ptr %1, null, !dbg !2241
  br i1 %tobool, label %if.end, label %if.then, !dbg !2243

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2244

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !2245
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 5, !dbg !2246
  %3 = load ptr, ptr %start.addr, align 8, !dbg !2247
  %tobool1 = icmp ne ptr %3, null, !dbg !2247
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2247

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %start.addr, align 8, !dbg !2248
  %p = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !2249
  %5 = load ptr, ptr %p, align 8, !dbg !2249
  %knode_bus = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 3, !dbg !2250
  br label %cond.end, !dbg !2247

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2247

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %knode_bus, %cond.true ], [ null, %cond.false ], !dbg !2247
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef %i, ptr noundef %cond) #16, !dbg !2251
  br label %while.cond, !dbg !2252

while.cond:                                       ; preds = %if.end9, %cond.end
  %call2 = call ptr @next_device(ptr noundef %i) #16, !dbg !2253
  store ptr %call2, ptr %dev, align 8, !dbg !2254
  %tobool3 = icmp ne ptr %call2, null, !dbg !2252
  br i1 %tobool3, label %while.body, label %while.end, !dbg !2252

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %match.addr, align 8, !dbg !2255
  %7 = load ptr, ptr %dev, align 8, !dbg !2257
  %8 = load ptr, ptr %data.addr, align 8, !dbg !2258
  %call4 = call i32 %6(ptr noundef %7, ptr noundef %8) #16, !dbg !2255
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2255
  br i1 %tobool5, label %land.lhs.true, label %if.end9, !dbg !2259

land.lhs.true:                                    ; preds = %while.body
  %9 = load ptr, ptr %dev, align 8, !dbg !2260
  %call6 = call ptr @get_device(ptr noundef %9) #16, !dbg !2261
  %tobool7 = icmp ne ptr %call6, null, !dbg !2261
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2262

if.then8:                                         ; preds = %land.lhs.true
  br label %while.end, !dbg !2263

if.end9:                                          ; preds = %land.lhs.true, %while.body
  br label %while.cond, !dbg !2252, !llvm.loop !2264

while.end:                                        ; preds = %if.then8, %while.cond
  call void @klist_iter_exit(ptr noundef %i) #16, !dbg !2266
  %10 = load ptr, ptr %sp, align 8, !dbg !2267
  call void @subsys_put(ptr noundef %10) #16, !dbg !2268
  %11 = load ptr, ptr %dev, align 8, !dbg !2269
  store ptr %11, ptr %retval, align 8, !dbg !2270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2270

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2271
  call void @llvm.lifetime.end.p0(i64 16, ptr %i) #15, !dbg !2271
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2271
  %12 = load ptr, ptr %retval, align 8, !dbg !2271
  ret ptr %12, !dbg !2271
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2272 dso_local ptr @get_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_for_each_drv(ptr noundef %bus, ptr noundef %start, ptr noundef %data, ptr noundef %fn) #0 align 16 !dbg !2275 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %i = alloca %struct.klist_iter, align 8
  %drv = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !2282, metadata !DIExpression()), !dbg !2290
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2283, metadata !DIExpression()), !dbg !2291
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2284, metadata !DIExpression()), !dbg !2292
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2285, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2294
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2286, metadata !DIExpression()), !dbg !2295
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !2296
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !2297
  store ptr %call, ptr %sp, align 8, !dbg !2295
  call void @llvm.lifetime.start.p0(i64 16, ptr %i) #15, !dbg !2298
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2287, metadata !DIExpression()), !dbg !2299
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2288, metadata !DIExpression()), !dbg !2301
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !2302
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2289, metadata !DIExpression()), !dbg !2303
  store i32 0, ptr %error, align 4, !dbg !2303
  %1 = load ptr, ptr %sp, align 8, !dbg !2304
  %tobool = icmp ne ptr %1, null, !dbg !2304
  br i1 %tobool, label %if.end, label %if.then, !dbg !2306

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2307

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !2308
  %klist_drivers = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 6, !dbg !2309
  %3 = load ptr, ptr %start.addr, align 8, !dbg !2310
  %tobool1 = icmp ne ptr %3, null, !dbg !2310
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2310

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %start.addr, align 8, !dbg !2311
  %p = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 18, !dbg !2312
  %5 = load ptr, ptr %p, align 8, !dbg !2312
  %knode_bus = getelementptr inbounds %struct.driver_private, ptr %5, i32 0, i32 2, !dbg !2313
  br label %cond.end, !dbg !2310

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2310

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %knode_bus, %cond.true ], [ null, %cond.false ], !dbg !2310
  call void @klist_iter_init_node(ptr noundef %klist_drivers, ptr noundef %i, ptr noundef %cond) #16, !dbg !2314
  br label %while.cond, !dbg !2315

while.cond:                                       ; preds = %while.body, %cond.end
  %call2 = call ptr @next_driver(ptr noundef %i) #16, !dbg !2316
  store ptr %call2, ptr %drv, align 8, !dbg !2317
  %tobool3 = icmp ne ptr %call2, null, !dbg !2317
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !2318

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %error, align 4, !dbg !2319
  %tobool4 = icmp ne i32 %6, 0, !dbg !2320
  %lnot = xor i1 %tobool4, true, !dbg !2320
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !2321
  br i1 %7, label %while.body, label %while.end, !dbg !2315

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %fn.addr, align 8, !dbg !2322
  %9 = load ptr, ptr %drv, align 8, !dbg !2323
  %10 = load ptr, ptr %data.addr, align 8, !dbg !2324
  %call5 = call i32 %8(ptr noundef %9, ptr noundef %10) #16, !dbg !2322
  store i32 %call5, ptr %error, align 4, !dbg !2325
  br label %while.cond, !dbg !2315, !llvm.loop !2326

while.end:                                        ; preds = %land.end
  call void @klist_iter_exit(ptr noundef %i) #16, !dbg !2328
  %11 = load ptr, ptr %sp, align 8, !dbg !2329
  call void @subsys_put(ptr noundef %11) #16, !dbg !2330
  %12 = load i32, ptr %error, align 4, !dbg !2331
  store i32 %12, ptr %retval, align 4, !dbg !2332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2332

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !2333
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !2333
  call void @llvm.lifetime.end.p0(i64 16, ptr %i) #15, !dbg !2333
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2333
  %13 = load i32, ptr %retval, align 4, !dbg !2333
  ret i32 %13, !dbg !2333
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_driver(ptr noundef %i) #0 align 16 !dbg !2334 {
entry:
  %retval = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %drv_priv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2338, metadata !DIExpression()), !dbg !2345
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2339, metadata !DIExpression()), !dbg !2347
  %0 = load ptr, ptr %i.addr, align 8, !dbg !2348
  %call = call ptr @klist_next(ptr noundef %0) #16, !dbg !2349
  store ptr %call, ptr %n, align 8, !dbg !2347
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_priv) #15, !dbg !2350
  call void @llvm.dbg.declare(metadata ptr %drv_priv, metadata !2340, metadata !DIExpression()), !dbg !2351
  %1 = load ptr, ptr %n, align 8, !dbg !2352
  %tobool = icmp ne ptr %1, null, !dbg !2352
  br i1 %tobool, label %if.then, label %if.end, !dbg !2353

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2341, metadata !DIExpression()), !dbg !2354
  %2 = load ptr, ptr %n, align 8, !dbg !2354
  store ptr %2, ptr %__mptr, align 8, !dbg !2354
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2354
  %add.ptr = getelementptr i8, ptr %3, i64 -104, !dbg !2354
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2355
  %4 = load ptr, ptr %tmp, align 8, !dbg !2354
  store ptr %4, ptr %drv_priv, align 8, !dbg !2356
  %5 = load ptr, ptr %drv_priv, align 8, !dbg !2357
  %driver = getelementptr inbounds %struct.driver_private, ptr %5, i32 0, i32 4, !dbg !2358
  %6 = load ptr, ptr %driver, align 8, !dbg !2358
  store ptr %6, ptr %retval, align 8, !dbg !2359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2359

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2360

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_priv) #15, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !2361
  %7 = load ptr, ptr %retval, align 8, !dbg !2361
  ret ptr %7, !dbg !2361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_add_device(ptr noundef %dev) #0 align 16 !dbg !2362 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2364, metadata !DIExpression()), !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2371
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2365, metadata !DIExpression()), !dbg !2372
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2373
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !2374
  %1 = load ptr, ptr %bus, align 8, !dbg !2374
  %call = call ptr @bus_to_subsys(ptr noundef %1) #16, !dbg !2375
  store ptr %call, ptr %sp, align 8, !dbg !2372
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2366, metadata !DIExpression()), !dbg !2377
  %2 = load ptr, ptr %sp, align 8, !dbg !2378
  %tobool = icmp ne ptr %2, null, !dbg !2378
  br i1 %tobool, label %if.end, label %if.then, !dbg !2380

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2381

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !2383
  %3 = load i32, ptr %tmp, align 4, !dbg !2386
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2387
  %5 = load ptr, ptr %sp, align 8, !dbg !2388
  %bus1 = getelementptr inbounds %struct.subsys_private, ptr %5, i32 0, i32 9, !dbg !2389
  %6 = load ptr, ptr %bus1, align 8, !dbg !2389
  %dev_groups = getelementptr inbounds %struct.bus_type, ptr %6, i32 0, i32 3, !dbg !2390
  %7 = load ptr, ptr %dev_groups, align 8, !dbg !2390
  %call2 = call i32 @device_add_groups(ptr noundef %4, ptr noundef %7) #16, !dbg !2391
  store i32 %call2, ptr %error, align 4, !dbg !2392
  %8 = load i32, ptr %error, align 4, !dbg !2393
  %tobool3 = icmp ne i32 %8, 0, !dbg !2393
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2395

if.then4:                                         ; preds = %if.end
  br label %out_put, !dbg !2396

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %sp, align 8, !dbg !2397
  %devices_kset = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 1, !dbg !2398
  %10 = load ptr, ptr %devices_kset, align 8, !dbg !2398
  %kobj = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 2, !dbg !2399
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2400
  %kobj6 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 0, !dbg !2401
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2402
  %call7 = call ptr @dev_name(ptr noundef %12) #16, !dbg !2403
  %call8 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj6, ptr noundef %call7) #16, !dbg !2404
  store i32 %call8, ptr %error, align 4, !dbg !2405
  %13 = load i32, ptr %error, align 4, !dbg !2406
  %tobool9 = icmp ne i32 %13, 0, !dbg !2406
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2408

if.then10:                                        ; preds = %if.end5
  br label %out_groups, !dbg !2409

if.end11:                                         ; preds = %if.end5
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2410
  %kobj12 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 0, !dbg !2411
  %15 = load ptr, ptr %sp, align 8, !dbg !2412
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %15, i32 0, i32 0, !dbg !2413
  %kobj13 = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !2414
  %call14 = call i32 @sysfs_create_link(ptr noundef %kobj12, ptr noundef %kobj13, ptr noundef @.str) #16, !dbg !2415
  store i32 %call14, ptr %error, align 4, !dbg !2416
  %16 = load i32, ptr %error, align 4, !dbg !2417
  %tobool15 = icmp ne i32 %16, 0, !dbg !2417
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2419

if.then16:                                        ; preds = %if.end11
  br label %out_subsys, !dbg !2420

if.end17:                                         ; preds = %if.end11
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !2421
  %p = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 2, !dbg !2422
  %18 = load ptr, ptr %p, align 8, !dbg !2422
  %knode_bus = getelementptr inbounds %struct.device_private, ptr %18, i32 0, i32 3, !dbg !2423
  %19 = load ptr, ptr %sp, align 8, !dbg !2424
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %19, i32 0, i32 5, !dbg !2425
  call void @klist_add_tail(ptr noundef %knode_bus, ptr noundef %klist_devices) #16, !dbg !2426
  store i32 0, ptr %retval, align 4, !dbg !2427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2427

out_subsys:                                       ; preds = %if.then16
  call void @llvm.dbg.label(metadata !2367), !dbg !2428
  %20 = load ptr, ptr %sp, align 8, !dbg !2429
  %devices_kset18 = getelementptr inbounds %struct.subsys_private, ptr %20, i32 0, i32 1, !dbg !2430
  %21 = load ptr, ptr %devices_kset18, align 8, !dbg !2430
  %kobj19 = getelementptr inbounds %struct.kset, ptr %21, i32 0, i32 2, !dbg !2431
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2432
  %call20 = call ptr @dev_name(ptr noundef %22) #16, !dbg !2433
  call void @sysfs_remove_link(ptr noundef %kobj19, ptr noundef %call20) #16, !dbg !2434
  br label %out_groups, !dbg !2434

out_groups:                                       ; preds = %out_subsys, %if.then10
  call void @llvm.dbg.label(metadata !2368), !dbg !2435
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2436
  %24 = load ptr, ptr %sp, align 8, !dbg !2437
  %bus21 = getelementptr inbounds %struct.subsys_private, ptr %24, i32 0, i32 9, !dbg !2438
  %25 = load ptr, ptr %bus21, align 8, !dbg !2438
  %dev_groups22 = getelementptr inbounds %struct.bus_type, ptr %25, i32 0, i32 3, !dbg !2439
  %26 = load ptr, ptr %dev_groups22, align 8, !dbg !2439
  call void @device_remove_groups(ptr noundef %23, ptr noundef %26) #16, !dbg !2440
  br label %out_put, !dbg !2440

out_put:                                          ; preds = %out_groups, %if.then4
  call void @llvm.dbg.label(metadata !2369), !dbg !2441
  %27 = load ptr, ptr %sp, align 8, !dbg !2442
  call void @subsys_put(ptr noundef %27) #16, !dbg !2443
  %28 = load i32, ptr %error, align 4, !dbg !2444
  store i32 %28, ptr %retval, align 4, !dbg !2445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2445

cleanup:                                          ; preds = %out_put, %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !2446
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2446
  %29 = load i32, ptr %retval, align 4, !dbg !2446
  ret i32 %29, !dbg !2446
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2447 dso_local i32 @device_add_groups(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2450 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !2453 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2457, metadata !DIExpression()), !dbg !2458
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2459
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !2461
  %1 = load ptr, ptr %init_name, align 8, !dbg !2461
  %tobool = icmp ne ptr %1, null, !dbg !2459
  br i1 %tobool, label %if.then, label %if.end, !dbg !2462

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2463
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !2464
  %3 = load ptr, ptr %init_name1, align 8, !dbg !2464
  store ptr %3, ptr %retval, align 8, !dbg !2465
  br label %return, !dbg !2465

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2466
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2467
  %call = call ptr @kobject_name(ptr noundef %kobj) #16, !dbg !2468
  store ptr %call, ptr %retval, align 8, !dbg !2469
  br label %return, !dbg !2469

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2470
  ret ptr %5, !dbg !2470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2471 dso_local void @klist_add_tail(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2474 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2477 dso_local void @device_remove_groups(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bus_probe_device(ptr noundef %dev) #0 align 16 !dbg !2480 {
entry:
  %dev.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %sif = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2482, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2492
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2483, metadata !DIExpression()), !dbg !2493
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2494
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !2495
  %1 = load ptr, ptr %bus, align 8, !dbg !2495
  %call = call ptr @bus_to_subsys(ptr noundef %1) #16, !dbg !2496
  store ptr %call, ptr %sp, align 8, !dbg !2493
  call void @llvm.lifetime.start.p0(i64 8, ptr %sif) #15, !dbg !2497
  call void @llvm.dbg.declare(metadata ptr %sif, metadata !2484, metadata !DIExpression()), !dbg !2498
  %2 = load ptr, ptr %sp, align 8, !dbg !2499
  %tobool = icmp ne ptr %2, null, !dbg !2499
  br i1 %tobool, label %if.end, label %if.then, !dbg !2501

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2502

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sp, align 8, !dbg !2503
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 8, !dbg !2505
  %bf.load = load i8, ptr %drivers_autoprobe, align 8, !dbg !2505
  %bf.clear = and i8 %bf.load, 1, !dbg !2505
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2505
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !2503
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2506

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2507
  call void @device_initial_probe(ptr noundef %4) #16, !dbg !2508
  br label %if.end3, !dbg !2508

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %sp, align 8, !dbg !2509
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %5, i32 0, i32 3, !dbg !2510
  call void @mutex_lock(ptr noundef %mutex) #16, !dbg !2511
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2485, metadata !DIExpression()), !dbg !2512
  %6 = load ptr, ptr %sp, align 8, !dbg !2512
  %interfaces = getelementptr inbounds %struct.subsys_private, ptr %6, i32 0, i32 2, !dbg !2512
  %next = getelementptr inbounds %struct.list_head, ptr %interfaces, i32 0, i32 0, !dbg !2512
  %7 = load ptr, ptr %next, align 8, !dbg !2512
  store ptr %7, ptr %__mptr, align 8, !dbg !2512
  %8 = load ptr, ptr %__mptr, align 8, !dbg !2512
  %add.ptr = getelementptr i8, ptr %8, i64 -16, !dbg !2512
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2513
  %9 = load ptr, ptr %tmp, align 8, !dbg !2512
  store ptr %9, ptr %sif, align 8, !dbg !2513
  br label %for.cond, !dbg !2513

for.cond:                                         ; preds = %for.inc, %if.end3
  %10 = load ptr, ptr %sif, align 8, !dbg !2514
  %node = getelementptr inbounds %struct.subsys_interface, ptr %10, i32 0, i32 2, !dbg !2514
  %11 = load ptr, ptr %sp, align 8, !dbg !2514
  %interfaces4 = getelementptr inbounds %struct.subsys_private, ptr %11, i32 0, i32 2, !dbg !2514
  %cmp = icmp eq ptr %node, %interfaces4, !dbg !2514
  %lnot = xor i1 %cmp, true, !dbg !2514
  br i1 %lnot, label %for.body, label %for.end, !dbg !2513

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %sif, align 8, !dbg !2515
  %add_dev = getelementptr inbounds %struct.subsys_interface, ptr %12, i32 0, i32 3, !dbg !2517
  %13 = load ptr, ptr %add_dev, align 8, !dbg !2517
  %tobool5 = icmp ne ptr %13, null, !dbg !2515
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !2518

if.then6:                                         ; preds = %for.body
  %14 = load ptr, ptr %sif, align 8, !dbg !2519
  %add_dev7 = getelementptr inbounds %struct.subsys_interface, ptr %14, i32 0, i32 3, !dbg !2520
  %15 = load ptr, ptr %add_dev7, align 8, !dbg !2520
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2521
  %17 = load ptr, ptr %sif, align 8, !dbg !2522
  %call8 = call i32 %15(ptr noundef %16, ptr noundef %17) #16, !dbg !2519
  br label %if.end9, !dbg !2519

if.end9:                                          ; preds = %if.then6, %for.body
  br label %for.inc, !dbg !2517

for.inc:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #15, !dbg !2523
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !2488, metadata !DIExpression()), !dbg !2523
  %18 = load ptr, ptr %sif, align 8, !dbg !2523
  %node11 = getelementptr inbounds %struct.subsys_interface, ptr %18, i32 0, i32 2, !dbg !2523
  %next12 = getelementptr inbounds %struct.list_head, ptr %node11, i32 0, i32 0, !dbg !2523
  %19 = load ptr, ptr %next12, align 8, !dbg !2523
  store ptr %19, ptr %__mptr10, align 8, !dbg !2523
  %20 = load ptr, ptr %__mptr10, align 8, !dbg !2523
  %add.ptr14 = getelementptr i8, ptr %20, i64 -16, !dbg !2523
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #15, !dbg !2514
  %21 = load ptr, ptr %tmp13, align 8, !dbg !2523
  store ptr %21, ptr %sif, align 8, !dbg !2514
  br label %for.cond, !dbg !2514, !llvm.loop !2524

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %sp, align 8, !dbg !2526
  %mutex15 = getelementptr inbounds %struct.subsys_private, ptr %22, i32 0, i32 3, !dbg !2527
  call void @mutex_unlock(ptr noundef %mutex15) #16, !dbg !2528
  %23 = load ptr, ptr %sp, align 8, !dbg !2529
  call void @subsys_put(ptr noundef %23) #16, !dbg !2530
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2531
  br label %cleanup, !dbg !2531

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sif) #15, !dbg !2531
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2531
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2531

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2532 dso_local void @device_initial_probe(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2533 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2537 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bus_remove_device(ptr noundef %dev) #0 align 16 !dbg !2538 {
entry:
  %dev.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %sif = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %tmp21 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2540, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2541, metadata !DIExpression()), !dbg !2551
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2552
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !2553
  %1 = load ptr, ptr %bus, align 8, !dbg !2553
  %call = call ptr @bus_to_subsys(ptr noundef %1) #16, !dbg !2554
  store ptr %call, ptr %sp, align 8, !dbg !2551
  call void @llvm.lifetime.start.p0(i64 8, ptr %sif) #15, !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %sif, metadata !2542, metadata !DIExpression()), !dbg !2556
  %2 = load ptr, ptr %sp, align 8, !dbg !2557
  %tobool = icmp ne ptr %2, null, !dbg !2557
  br i1 %tobool, label %if.end, label %if.then, !dbg !2559

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2560

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sp, align 8, !dbg !2561
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 3, !dbg !2562
  call void @mutex_lock(ptr noundef %mutex) #16, !dbg !2563
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2564
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2543, metadata !DIExpression()), !dbg !2564
  %4 = load ptr, ptr %sp, align 8, !dbg !2564
  %interfaces = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 2, !dbg !2564
  %next = getelementptr inbounds %struct.list_head, ptr %interfaces, i32 0, i32 0, !dbg !2564
  %5 = load ptr, ptr %next, align 8, !dbg !2564
  store ptr %5, ptr %__mptr, align 8, !dbg !2564
  %6 = load ptr, ptr %__mptr, align 8, !dbg !2564
  %add.ptr = getelementptr i8, ptr %6, i64 -16, !dbg !2564
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2564
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2565
  %7 = load ptr, ptr %tmp, align 8, !dbg !2564
  store ptr %7, ptr %sif, align 8, !dbg !2565
  br label %for.cond, !dbg !2565

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %sif, align 8, !dbg !2566
  %node = getelementptr inbounds %struct.subsys_interface, ptr %8, i32 0, i32 2, !dbg !2566
  %9 = load ptr, ptr %sp, align 8, !dbg !2566
  %interfaces1 = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 2, !dbg !2566
  %cmp = icmp eq ptr %node, %interfaces1, !dbg !2566
  %lnot = xor i1 %cmp, true, !dbg !2566
  br i1 %lnot, label %for.body, label %for.end, !dbg !2565

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %sif, align 8, !dbg !2567
  %remove_dev = getelementptr inbounds %struct.subsys_interface, ptr %10, i32 0, i32 4, !dbg !2569
  %11 = load ptr, ptr %remove_dev, align 8, !dbg !2569
  %tobool2 = icmp ne ptr %11, null, !dbg !2567
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2570

if.then3:                                         ; preds = %for.body
  %12 = load ptr, ptr %sif, align 8, !dbg !2571
  %remove_dev4 = getelementptr inbounds %struct.subsys_interface, ptr %12, i32 0, i32 4, !dbg !2572
  %13 = load ptr, ptr %remove_dev4, align 8, !dbg !2572
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2573
  %15 = load ptr, ptr %sif, align 8, !dbg !2574
  call void %13(ptr noundef %14, ptr noundef %15) #16, !dbg !2571
  br label %if.end5, !dbg !2571

if.end5:                                          ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !2569

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #15, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !2546, metadata !DIExpression()), !dbg !2575
  %16 = load ptr, ptr %sif, align 8, !dbg !2575
  %node7 = getelementptr inbounds %struct.subsys_interface, ptr %16, i32 0, i32 2, !dbg !2575
  %next8 = getelementptr inbounds %struct.list_head, ptr %node7, i32 0, i32 0, !dbg !2575
  %17 = load ptr, ptr %next8, align 8, !dbg !2575
  store ptr %17, ptr %__mptr6, align 8, !dbg !2575
  %18 = load ptr, ptr %__mptr6, align 8, !dbg !2575
  %add.ptr10 = getelementptr i8, ptr %18, i64 -16, !dbg !2575
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #15, !dbg !2566
  %19 = load ptr, ptr %tmp9, align 8, !dbg !2575
  store ptr %19, ptr %sif, align 8, !dbg !2566
  br label %for.cond, !dbg !2566, !llvm.loop !2576

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %sp, align 8, !dbg !2578
  %mutex11 = getelementptr inbounds %struct.subsys_private, ptr %20, i32 0, i32 3, !dbg !2579
  call void @mutex_unlock(ptr noundef %mutex11) #16, !dbg !2580
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !2581
  %kobj = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 0, !dbg !2582
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef @.str) #16, !dbg !2583
  %22 = load ptr, ptr %sp, align 8, !dbg !2584
  %devices_kset = getelementptr inbounds %struct.subsys_private, ptr %22, i32 0, i32 1, !dbg !2585
  %23 = load ptr, ptr %devices_kset, align 8, !dbg !2585
  %kobj12 = getelementptr inbounds %struct.kset, ptr %23, i32 0, i32 2, !dbg !2586
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2587
  %call13 = call ptr @dev_name(ptr noundef %24) #16, !dbg !2588
  call void @sysfs_remove_link(ptr noundef %kobj12, ptr noundef %call13) #16, !dbg !2589
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2590
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !2591
  %bus14 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 5, !dbg !2592
  %27 = load ptr, ptr %bus14, align 8, !dbg !2592
  %dev_groups = getelementptr inbounds %struct.bus_type, ptr %27, i32 0, i32 3, !dbg !2593
  %28 = load ptr, ptr %dev_groups, align 8, !dbg !2593
  call void @device_remove_groups(ptr noundef %25, ptr noundef %28) #16, !dbg !2594
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !2595
  %p = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 2, !dbg !2597
  %30 = load ptr, ptr %p, align 8, !dbg !2597
  %knode_bus = getelementptr inbounds %struct.device_private, ptr %30, i32 0, i32 3, !dbg !2598
  %call15 = call i32 @klist_node_attached(ptr noundef %knode_bus) #16, !dbg !2599
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2599
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !2600

if.then17:                                        ; preds = %for.end
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !2601
  %p18 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 2, !dbg !2602
  %32 = load ptr, ptr %p18, align 8, !dbg !2602
  %knode_bus19 = getelementptr inbounds %struct.device_private, ptr %32, i32 0, i32 3, !dbg !2603
  call void @klist_del(ptr noundef %knode_bus19) #16, !dbg !2604
  br label %if.end20, !dbg !2604

if.end20:                                         ; preds = %if.then17, %for.end
  store i32 0, ptr %tmp21, align 4, !dbg !2605
  %33 = load i32, ptr %tmp21, align 4, !dbg !2608
  %34 = load ptr, ptr %dev.addr, align 8, !dbg !2609
  call void @device_release_driver(ptr noundef %34) #16, !dbg !2610
  %35 = load ptr, ptr %sp, align 8, !dbg !2611
  call void @subsys_put(ptr noundef %35) #16, !dbg !2612
  %36 = load ptr, ptr %sp, align 8, !dbg !2613
  call void @subsys_put(ptr noundef %36) #16, !dbg !2614
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2615
  br label %cleanup, !dbg !2615

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sif) #15, !dbg !2615
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2615
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2615

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2616 dso_local i32 @klist_node_attached(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2619 dso_local void @klist_del(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2620 dso_local void @device_release_driver(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_add_driver(ptr noundef %drv) #0 align 16 !dbg !2621 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2625, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2626, metadata !DIExpression()), !dbg !2635
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2636
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !2637
  %1 = load ptr, ptr %bus, align 8, !dbg !2637
  %call = call ptr @bus_to_subsys(ptr noundef %1) #16, !dbg !2638
  store ptr %call, ptr %sp, align 8, !dbg !2635
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !2627, metadata !DIExpression()), !dbg !2640
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2628, metadata !DIExpression()), !dbg !2642
  store i32 0, ptr %error, align 4, !dbg !2642
  %2 = load ptr, ptr %sp, align 8, !dbg !2643
  %tobool = icmp ne ptr %2, null, !dbg !2643
  br i1 %tobool, label %if.end, label %if.then, !dbg !2645

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2646

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !2647
  %3 = load i32, ptr %tmp, align 4, !dbg !2650
  %call1 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #17, !dbg !2651
  store ptr %call1, ptr %priv, align 8, !dbg !2652
  %4 = load ptr, ptr %priv, align 8, !dbg !2653
  %tobool2 = icmp ne ptr %4, null, !dbg !2653
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2655

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %error, align 4, !dbg !2656
  br label %out_put_bus, !dbg !2658

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %priv, align 8, !dbg !2659
  %klist_devices = getelementptr inbounds %struct.driver_private, ptr %5, i32 0, i32 1, !dbg !2660
  call void @klist_init(ptr noundef %klist_devices, ptr noundef null, ptr noundef null) #16, !dbg !2661
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !2662
  %7 = load ptr, ptr %priv, align 8, !dbg !2663
  %driver = getelementptr inbounds %struct.driver_private, ptr %7, i32 0, i32 4, !dbg !2664
  store ptr %6, ptr %driver, align 8, !dbg !2665
  %8 = load ptr, ptr %priv, align 8, !dbg !2666
  %9 = load ptr, ptr %drv.addr, align 8, !dbg !2667
  %p = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 18, !dbg !2668
  store ptr %8, ptr %p, align 8, !dbg !2669
  %10 = load ptr, ptr %sp, align 8, !dbg !2670
  %drivers_kset = getelementptr inbounds %struct.subsys_private, ptr %10, i32 0, i32 4, !dbg !2671
  %11 = load ptr, ptr %drivers_kset, align 8, !dbg !2671
  %12 = load ptr, ptr %priv, align 8, !dbg !2672
  %kobj = getelementptr inbounds %struct.driver_private, ptr %12, i32 0, i32 0, !dbg !2673
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 3, !dbg !2674
  store ptr %11, ptr %kset, align 8, !dbg !2675
  %13 = load ptr, ptr %priv, align 8, !dbg !2676
  %kobj5 = getelementptr inbounds %struct.driver_private, ptr %13, i32 0, i32 0, !dbg !2677
  %14 = load ptr, ptr %drv.addr, align 8, !dbg !2678
  %name = getelementptr inbounds %struct.device_driver, ptr %14, i32 0, i32 0, !dbg !2679
  %15 = load ptr, ptr %name, align 8, !dbg !2679
  %call6 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj5, ptr noundef @driver_ktype, ptr noundef null, ptr noundef @.str.1, ptr noundef %15) #16, !dbg !2680
  store i32 %call6, ptr %error, align 4, !dbg !2681
  %16 = load i32, ptr %error, align 4, !dbg !2682
  %tobool7 = icmp ne i32 %16, 0, !dbg !2682
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2684

if.then8:                                         ; preds = %if.end4
  br label %out_unregister, !dbg !2685

if.end9:                                          ; preds = %if.end4
  %17 = load ptr, ptr %priv, align 8, !dbg !2686
  %knode_bus = getelementptr inbounds %struct.driver_private, ptr %17, i32 0, i32 2, !dbg !2687
  %18 = load ptr, ptr %sp, align 8, !dbg !2688
  %klist_drivers = getelementptr inbounds %struct.subsys_private, ptr %18, i32 0, i32 6, !dbg !2689
  call void @klist_add_tail(ptr noundef %knode_bus, ptr noundef %klist_drivers) #16, !dbg !2690
  %19 = load ptr, ptr %sp, align 8, !dbg !2691
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, ptr %19, i32 0, i32 8, !dbg !2693
  %bf.load = load i8, ptr %drivers_autoprobe, align 8, !dbg !2693
  %bf.clear = and i8 %bf.load, 1, !dbg !2693
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2693
  %tobool10 = icmp ne i32 %bf.cast, 0, !dbg !2691
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !2694

if.then11:                                        ; preds = %if.end9
  %20 = load ptr, ptr %drv.addr, align 8, !dbg !2695
  %call12 = call i32 @driver_attach(ptr noundef %20) #16, !dbg !2697
  store i32 %call12, ptr %error, align 4, !dbg !2698
  %21 = load i32, ptr %error, align 4, !dbg !2699
  %tobool13 = icmp ne i32 %21, 0, !dbg !2699
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2701

if.then14:                                        ; preds = %if.then11
  br label %out_del_list, !dbg !2702

if.end15:                                         ; preds = %if.then11
  br label %if.end16, !dbg !2703

if.end16:                                         ; preds = %if.end15, %if.end9
  %22 = load ptr, ptr %drv.addr, align 8, !dbg !2704
  %owner = getelementptr inbounds %struct.device_driver, ptr %22, i32 0, i32 2, !dbg !2705
  %23 = load ptr, ptr %owner, align 8, !dbg !2705
  %24 = load ptr, ptr %drv.addr, align 8, !dbg !2706
  %call17 = call i32 @module_add_driver(ptr noundef %23, ptr noundef %24) #16, !dbg !2707
  store i32 %call17, ptr %error, align 4, !dbg !2708
  %25 = load i32, ptr %error, align 4, !dbg !2709
  %tobool18 = icmp ne i32 %25, 0, !dbg !2709
  br i1 %tobool18, label %if.then19, label %if.end23, !dbg !2711

if.then19:                                        ; preds = %if.end16
  br label %do.body, !dbg !2712

do.body:                                          ; preds = %if.then19
  br label %do.cond, !dbg !2715

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2715

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %drv.addr, align 8, !dbg !2712
  %name21 = getelementptr inbounds %struct.device_driver, ptr %26, i32 0, i32 0, !dbg !2712
  %27 = load ptr, ptr %name21, align 8, !dbg !2712
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef @__func__.bus_add_driver, ptr noundef %27) #18, !dbg !2712
  store i32 %call22, ptr %tmp20, align 4, !dbg !2715
  %28 = load i32, ptr %tmp20, align 4, !dbg !2712
  br label %out_detach, !dbg !2717

if.end23:                                         ; preds = %if.end16
  %29 = load ptr, ptr %drv.addr, align 8, !dbg !2718
  %call24 = call i32 @driver_create_file(ptr noundef %29, ptr noundef @driver_attr_uevent) #16, !dbg !2719
  store i32 %call24, ptr %error, align 4, !dbg !2720
  %30 = load i32, ptr %error, align 4, !dbg !2721
  %tobool25 = icmp ne i32 %30, 0, !dbg !2721
  br i1 %tobool25, label %if.then26, label %if.end33, !dbg !2723

if.then26:                                        ; preds = %if.end23
  br label %do.body27, !dbg !2724

do.body27:                                        ; preds = %if.then26
  br label %do.cond28, !dbg !2727

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !2727

do.end29:                                         ; preds = %do.cond28
  %31 = load ptr, ptr %drv.addr, align 8, !dbg !2724
  %name31 = getelementptr inbounds %struct.device_driver, ptr %31, i32 0, i32 0, !dbg !2724
  %32 = load ptr, ptr %name31, align 8, !dbg !2724
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef @__func__.bus_add_driver, ptr noundef %32) #18, !dbg !2724
  store i32 %call32, ptr %tmp30, align 4, !dbg !2727
  %33 = load i32, ptr %tmp30, align 4, !dbg !2724
  br label %if.end33, !dbg !2729

if.end33:                                         ; preds = %do.end29, %if.end23
  %34 = load ptr, ptr %drv.addr, align 8, !dbg !2730
  %35 = load ptr, ptr %sp, align 8, !dbg !2731
  %bus34 = getelementptr inbounds %struct.subsys_private, ptr %35, i32 0, i32 9, !dbg !2732
  %36 = load ptr, ptr %bus34, align 8, !dbg !2732
  %drv_groups = getelementptr inbounds %struct.bus_type, ptr %36, i32 0, i32 4, !dbg !2733
  %37 = load ptr, ptr %drv_groups, align 8, !dbg !2733
  %call35 = call i32 @driver_add_groups(ptr noundef %34, ptr noundef %37) #16, !dbg !2734
  store i32 %call35, ptr %error, align 4, !dbg !2735
  %38 = load i32, ptr %error, align 4, !dbg !2736
  %tobool36 = icmp ne i32 %38, 0, !dbg !2736
  br i1 %tobool36, label %if.then37, label %if.end44, !dbg !2738

if.then37:                                        ; preds = %if.end33
  br label %do.body38, !dbg !2739

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !2742

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2742

do.end40:                                         ; preds = %do.cond39
  %39 = load ptr, ptr %drv.addr, align 8, !dbg !2739
  %name42 = getelementptr inbounds %struct.device_driver, ptr %39, i32 0, i32 0, !dbg !2739
  %40 = load ptr, ptr %name42, align 8, !dbg !2739
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef @__func__.bus_add_driver, ptr noundef %40) #18, !dbg !2739
  store i32 %call43, ptr %tmp41, align 4, !dbg !2742
  %41 = load i32, ptr %tmp41, align 4, !dbg !2739
  br label %if.end44, !dbg !2744

if.end44:                                         ; preds = %do.end40, %if.end33
  %42 = load ptr, ptr %drv.addr, align 8, !dbg !2745
  %suppress_bind_attrs = getelementptr inbounds %struct.device_driver, ptr %42, i32 0, i32 4, !dbg !2747
  %43 = load i8, ptr %suppress_bind_attrs, align 8, !dbg !2747, !range !2748, !noundef !527
  %tobool45 = trunc i8 %43 to i1, !dbg !2747
  br i1 %tobool45, label %if.end57, label %if.then46, !dbg !2749

if.then46:                                        ; preds = %if.end44
  %44 = load ptr, ptr %drv.addr, align 8, !dbg !2750
  %call47 = call i32 @add_bind_files(ptr noundef %44) #16, !dbg !2752
  store i32 %call47, ptr %error, align 4, !dbg !2753
  %45 = load i32, ptr %error, align 4, !dbg !2754
  %tobool48 = icmp ne i32 %45, 0, !dbg !2754
  br i1 %tobool48, label %if.then49, label %if.end56, !dbg !2756

if.then49:                                        ; preds = %if.then46
  br label %do.body50, !dbg !2757

do.body50:                                        ; preds = %if.then49
  br label %do.cond51, !dbg !2760

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !2760

do.end52:                                         ; preds = %do.cond51
  %46 = load ptr, ptr %drv.addr, align 8, !dbg !2757
  %name54 = getelementptr inbounds %struct.device_driver, ptr %46, i32 0, i32 0, !dbg !2757
  %47 = load ptr, ptr %name54, align 8, !dbg !2757
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef @__func__.bus_add_driver, ptr noundef %47) #18, !dbg !2757
  store i32 %call55, ptr %tmp53, align 4, !dbg !2760
  %48 = load i32, ptr %tmp53, align 4, !dbg !2757
  br label %if.end56, !dbg !2762

if.end56:                                         ; preds = %do.end52, %if.then46
  br label %if.end57, !dbg !2763

if.end57:                                         ; preds = %if.end56, %if.end44
  store i32 0, ptr %retval, align 4, !dbg !2764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2764

out_detach:                                       ; preds = %do.end
  call void @llvm.dbg.label(metadata !2629), !dbg !2765
  %49 = load ptr, ptr %drv.addr, align 8, !dbg !2766
  call void @driver_detach(ptr noundef %49) #16, !dbg !2767
  br label %out_del_list, !dbg !2767

out_del_list:                                     ; preds = %out_detach, %if.then14
  call void @llvm.dbg.label(metadata !2630), !dbg !2768
  %50 = load ptr, ptr %priv, align 8, !dbg !2769
  %knode_bus58 = getelementptr inbounds %struct.driver_private, ptr %50, i32 0, i32 2, !dbg !2770
  call void @klist_del(ptr noundef %knode_bus58) #16, !dbg !2771
  br label %out_unregister, !dbg !2771

out_unregister:                                   ; preds = %out_del_list, %if.then8
  call void @llvm.dbg.label(metadata !2631), !dbg !2772
  %51 = load ptr, ptr %priv, align 8, !dbg !2773
  %kobj59 = getelementptr inbounds %struct.driver_private, ptr %51, i32 0, i32 0, !dbg !2774
  call void @kobject_put(ptr noundef %kobj59) #16, !dbg !2775
  %52 = load ptr, ptr %drv.addr, align 8, !dbg !2776
  %p60 = getelementptr inbounds %struct.device_driver, ptr %52, i32 0, i32 18, !dbg !2777
  store ptr null, ptr %p60, align 8, !dbg !2778
  br label %out_put_bus, !dbg !2776

out_put_bus:                                      ; preds = %out_unregister, %if.then3
  call void @llvm.dbg.label(metadata !2632), !dbg !2779
  %53 = load ptr, ptr %sp, align 8, !dbg !2780
  call void @subsys_put(ptr noundef %53) #16, !dbg !2781
  %54 = load i32, ptr %error, align 4, !dbg !2782
  store i32 %54, ptr %retval, align 4, !dbg !2783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2783

cleanup:                                          ; preds = %out_put_bus, %if.end57, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !2784
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !2784
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2784
  %55 = load i32, ptr %retval, align 4, !dbg !2784
  ret i32 %55, !dbg !2784
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2785 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2789, metadata !DIExpression()), !dbg !2791
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2790, metadata !DIExpression()), !dbg !2792
  %0 = load i64, ptr %size.addr, align 8, !dbg !2793
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2794
  %or = or i32 %1, 256, !dbg !2795
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !2796
  ret ptr %call, !dbg !2797
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2798 dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2801 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2804 dso_local i32 @driver_attach(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2805 dso_local i32 @module_add_driver(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2808 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2812 dso_local i32 @driver_create_file(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2817 dso_local i32 @driver_add_groups(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_bind_files(ptr noundef %drv) #0 align 16 !dbg !2820 {
entry:
  %drv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2822, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2823, metadata !DIExpression()), !dbg !2826
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2827
  %call = call i32 @driver_create_file(ptr noundef %0, ptr noundef @driver_attr_unbind) #16, !dbg !2828
  store i32 %call, ptr %ret, align 4, !dbg !2829
  %1 = load i32, ptr %ret, align 4, !dbg !2830
  %cmp = icmp eq i32 %1, 0, !dbg !2832
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2833

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !2834
  %call1 = call i32 @driver_create_file(ptr noundef %2, ptr noundef @driver_attr_bind) #16, !dbg !2836
  store i32 %call1, ptr %ret, align 4, !dbg !2837
  %3 = load i32, ptr %ret, align 4, !dbg !2838
  %tobool = icmp ne i32 %3, 0, !dbg !2838
  br i1 %tobool, label %if.then2, label %if.end, !dbg !2840

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !2841
  call void @driver_remove_file(ptr noundef %4, ptr noundef @driver_attr_unbind) #16, !dbg !2842
  br label %if.end, !dbg !2842

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !2843

if.end3:                                          ; preds = %if.end, %entry
  %5 = load i32, ptr %ret, align 4, !dbg !2844
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2845
  ret i32 %5, !dbg !2846
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2847 dso_local void @driver_detach(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2850 dso_local void @kobject_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bus_remove_driver(ptr noundef %drv) #0 align 16 !dbg !2851 {
entry:
  %drv.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !2856
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !2854, metadata !DIExpression()), !dbg !2857
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2858
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !2859
  %1 = load ptr, ptr %bus, align 8, !dbg !2859
  %call = call ptr @bus_to_subsys(ptr noundef %1) #16, !dbg !2860
  store ptr %call, ptr %sp, align 8, !dbg !2857
  %2 = load ptr, ptr %sp, align 8, !dbg !2861
  %tobool = icmp ne ptr %2, null, !dbg !2861
  br i1 %tobool, label %if.end, label %if.then, !dbg !2863

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2864

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !2865
  %3 = load i32, ptr %tmp, align 4, !dbg !2868
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !2869
  %suppress_bind_attrs = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 4, !dbg !2871
  %5 = load i8, ptr %suppress_bind_attrs, align 8, !dbg !2871, !range !2748, !noundef !527
  %tobool1 = trunc i8 %5 to i1, !dbg !2871
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2872

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !2873
  call void @remove_bind_files(ptr noundef %6) #16, !dbg !2874
  br label %if.end3, !dbg !2874

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !2875
  %8 = load ptr, ptr %sp, align 8, !dbg !2876
  %bus4 = getelementptr inbounds %struct.subsys_private, ptr %8, i32 0, i32 9, !dbg !2877
  %9 = load ptr, ptr %bus4, align 8, !dbg !2877
  %drv_groups = getelementptr inbounds %struct.bus_type, ptr %9, i32 0, i32 4, !dbg !2878
  %10 = load ptr, ptr %drv_groups, align 8, !dbg !2878
  call void @driver_remove_groups(ptr noundef %7, ptr noundef %10) #16, !dbg !2879
  %11 = load ptr, ptr %drv.addr, align 8, !dbg !2880
  call void @driver_remove_file(ptr noundef %11, ptr noundef @driver_attr_uevent) #16, !dbg !2881
  %12 = load ptr, ptr %drv.addr, align 8, !dbg !2882
  %p = getelementptr inbounds %struct.device_driver, ptr %12, i32 0, i32 18, !dbg !2883
  %13 = load ptr, ptr %p, align 8, !dbg !2883
  %knode_bus = getelementptr inbounds %struct.driver_private, ptr %13, i32 0, i32 2, !dbg !2884
  call void @klist_remove(ptr noundef %knode_bus) #16, !dbg !2885
  %14 = load ptr, ptr %drv.addr, align 8, !dbg !2886
  call void @driver_detach(ptr noundef %14) #16, !dbg !2887
  %15 = load ptr, ptr %drv.addr, align 8, !dbg !2888
  call void @module_remove_driver(ptr noundef %15) #16, !dbg !2889
  %16 = load ptr, ptr %drv.addr, align 8, !dbg !2890
  %p5 = getelementptr inbounds %struct.device_driver, ptr %16, i32 0, i32 18, !dbg !2891
  %17 = load ptr, ptr %p5, align 8, !dbg !2891
  %kobj = getelementptr inbounds %struct.driver_private, ptr %17, i32 0, i32 0, !dbg !2892
  call void @kobject_put(ptr noundef %kobj) #16, !dbg !2893
  %18 = load ptr, ptr %sp, align 8, !dbg !2894
  call void @subsys_put(ptr noundef %18) #16, !dbg !2895
  %19 = load ptr, ptr %sp, align 8, !dbg !2896
  call void @subsys_put(ptr noundef %19) #16, !dbg !2897
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2898
  br label %cleanup, !dbg !2898

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !2898
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2898

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_bind_files(ptr noundef %drv) #0 align 16 !dbg !2899 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2901, metadata !DIExpression()), !dbg !2902
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2903
  call void @driver_remove_file(ptr noundef %0, ptr noundef @driver_attr_bind) #16, !dbg !2904
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !2905
  call void @driver_remove_file(ptr noundef %1, ptr noundef @driver_attr_unbind) #16, !dbg !2906
  ret void, !dbg !2907
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2908 dso_local void @driver_remove_groups(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2911 dso_local void @driver_remove_file(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2914 dso_local void @klist_remove(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2915 dso_local void @module_remove_driver(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_rescan_devices(ptr noundef %bus) #0 align 16 !dbg !2916 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !2918, metadata !DIExpression()), !dbg !2919
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !2920
  %call = call i32 @bus_for_each_dev(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef @bus_rescan_devices_helper) #16, !dbg !2921
  ret i32 %call, !dbg !2922
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bus_rescan_devices_helper(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !2923 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2925, metadata !DIExpression()), !dbg !2928
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2926, metadata !DIExpression()), !dbg !2929
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2930
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2927, metadata !DIExpression()), !dbg !2931
  store i32 0, ptr %ret, align 4, !dbg !2931
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2932
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2934
  %1 = load ptr, ptr %driver, align 8, !dbg !2934
  %tobool = icmp ne ptr %1, null, !dbg !2932
  br i1 %tobool, label %if.end14, label %if.then, !dbg !2935

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2936
  %parent = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1, !dbg !2939
  %3 = load ptr, ptr %parent, align 8, !dbg !2939
  %tobool1 = icmp ne ptr %3, null, !dbg !2936
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !2940

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2941
  %bus = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5, !dbg !2942
  %5 = load ptr, ptr %bus, align 8, !dbg !2942
  %need_parent_lock = getelementptr inbounds %struct.bus_type, ptr %5, i32 0, i32 20, !dbg !2943
  %6 = load i8, ptr %need_parent_lock, align 8, !dbg !2943, !range !2748, !noundef !527
  %tobool2 = trunc i8 %6 to i1, !dbg !2943
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2944

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2945
  %parent4 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !2946
  %8 = load ptr, ptr %parent4, align 8, !dbg !2946
  call void @device_lock(ptr noundef %8) #16, !dbg !2947
  br label %if.end, !dbg !2947

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2948
  %call = call i32 @device_attach(ptr noundef %9) #16, !dbg !2949
  store i32 %call, ptr %ret, align 4, !dbg !2950
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2951
  %parent5 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1, !dbg !2953
  %11 = load ptr, ptr %parent5, align 8, !dbg !2953
  %tobool6 = icmp ne ptr %11, null, !dbg !2951
  br i1 %tobool6, label %land.lhs.true7, label %if.end13, !dbg !2954

land.lhs.true7:                                   ; preds = %if.end
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2955
  %bus8 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 5, !dbg !2956
  %13 = load ptr, ptr %bus8, align 8, !dbg !2956
  %need_parent_lock9 = getelementptr inbounds %struct.bus_type, ptr %13, i32 0, i32 20, !dbg !2957
  %14 = load i8, ptr %need_parent_lock9, align 8, !dbg !2957, !range !2748, !noundef !527
  %tobool10 = trunc i8 %14 to i1, !dbg !2957
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2958

if.then11:                                        ; preds = %land.lhs.true7
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2959
  %parent12 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1, !dbg !2960
  %16 = load ptr, ptr %parent12, align 8, !dbg !2960
  call void @device_unlock(ptr noundef %16) #16, !dbg !2961
  br label %if.end13, !dbg !2961

if.end13:                                         ; preds = %if.then11, %land.lhs.true7, %if.end
  br label %if.end14, !dbg !2962

if.end14:                                         ; preds = %if.end13, %entry
  %17 = load i32, ptr %ret, align 4, !dbg !2963
  %cmp = icmp slt i32 %17, 0, !dbg !2964
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2963

cond.true:                                        ; preds = %if.end14
  %18 = load i32, ptr %ret, align 4, !dbg !2965
  br label %cond.end, !dbg !2963

cond.false:                                       ; preds = %if.end14
  br label %cond.end, !dbg !2963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 0, %cond.false ], !dbg !2963
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2966
  ret i32 %cond, !dbg !2967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @device_reprobe(ptr noundef %dev) #0 align 16 !dbg !2968 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2972
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !2974
  %1 = load ptr, ptr %driver, align 8, !dbg !2974
  %tobool = icmp ne ptr %1, null, !dbg !2972
  br i1 %tobool, label %if.then, label %if.end, !dbg !2975

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2976
  call void @device_driver_detach(ptr noundef %2) #16, !dbg !2977
  br label %if.end, !dbg !2977

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2978
  %call = call i32 @bus_rescan_devices_helper(ptr noundef %3, ptr noundef null) #16, !dbg !2979
  ret i32 %call, !dbg !2980
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2981 dso_local void @device_driver_detach(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_register(ptr noundef %bus) #0 align 16 !dbg !1817 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %priv = alloca ptr, align 8
  %bus_kobj = alloca ptr, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !1821, metadata !DIExpression()), !dbg !2982
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !2983
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1822, metadata !DIExpression()), !dbg !2984
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !2985
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !1823, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_kobj) #15, !dbg !2987
  call void @llvm.dbg.declare(metadata ptr %bus_kobj, metadata !1824, metadata !DIExpression()), !dbg !2988
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #15, !dbg !2989
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1825, metadata !DIExpression()), !dbg !2990
  %call = call noalias ptr @kzalloc(i64 noundef 416, i32 noundef 3264) #17, !dbg !2991
  store ptr %call, ptr %priv, align 8, !dbg !2992
  %0 = load ptr, ptr %priv, align 8, !dbg !2993
  %tobool = icmp ne ptr %0, null, !dbg !2993
  br i1 %tobool, label %if.end, label %if.then, !dbg !2995

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2996

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !2997
  %2 = load ptr, ptr %priv, align 8, !dbg !2998
  %bus2 = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 9, !dbg !2999
  store ptr %1, ptr %bus2, align 8, !dbg !3000
  br label %do.body, !dbg !3001

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !3002

do.body3:                                         ; preds = %do.body
  %3 = load ptr, ptr %priv, align 8, !dbg !3004
  %bus_notifier = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 7, !dbg !3004
  %rwsem = getelementptr inbounds %struct.blocking_notifier_head, ptr %bus_notifier, i32 0, i32 0, !dbg !3004
  call void @__init_rwsem(ptr noundef %rwsem, ptr noundef @.str.6, ptr noundef @bus_register.__key) #16, !dbg !3004
  br label %do.cond, !dbg !3004

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !3004

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %priv, align 8, !dbg !3002
  %bus_notifier4 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 7, !dbg !3002
  %head = getelementptr inbounds %struct.blocking_notifier_head, ptr %bus_notifier4, i32 0, i32 1, !dbg !3002
  store ptr null, ptr %head, align 8, !dbg !3002
  br label %do.cond5, !dbg !3002

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !3002

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %priv, align 8, !dbg !3006
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %5, i32 0, i32 0, !dbg !3007
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !3008
  store ptr %kobj, ptr %bus_kobj, align 8, !dbg !3009
  %6 = load ptr, ptr %bus_kobj, align 8, !dbg !3010
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !3011
  %name = getelementptr inbounds %struct.bus_type, ptr %7, i32 0, i32 0, !dbg !3012
  %8 = load ptr, ptr %name, align 8, !dbg !3012
  %call7 = call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %6, ptr noundef @.str.1, ptr noundef %8) #16, !dbg !3013
  store i32 %call7, ptr %retval1, align 4, !dbg !3014
  %9 = load i32, ptr %retval1, align 4, !dbg !3015
  %tobool8 = icmp ne i32 %9, 0, !dbg !3015
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3017

if.then9:                                         ; preds = %do.end6
  br label %out, !dbg !3018

if.end10:                                         ; preds = %do.end6
  %10 = load ptr, ptr @bus_kset, align 8, !dbg !3019
  %11 = load ptr, ptr %bus_kobj, align 8, !dbg !3020
  %kset = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 3, !dbg !3021
  store ptr %10, ptr %kset, align 8, !dbg !3022
  %12 = load ptr, ptr %bus_kobj, align 8, !dbg !3023
  %ktype = getelementptr inbounds %struct.kobject, ptr %12, i32 0, i32 4, !dbg !3024
  store ptr @bus_ktype, ptr %ktype, align 8, !dbg !3025
  %13 = load ptr, ptr %priv, align 8, !dbg !3026
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, ptr %13, i32 0, i32 8, !dbg !3027
  %bf.load = load i8, ptr %drivers_autoprobe, align 8, !dbg !3028
  %bf.clear = and i8 %bf.load, -2, !dbg !3028
  %bf.set = or i8 %bf.clear, 1, !dbg !3028
  store i8 %bf.set, ptr %drivers_autoprobe, align 8, !dbg !3028
  %14 = load ptr, ptr %priv, align 8, !dbg !3029
  %subsys11 = getelementptr inbounds %struct.subsys_private, ptr %14, i32 0, i32 0, !dbg !3030
  %call12 = call i32 @kset_register(ptr noundef %subsys11) #16, !dbg !3031
  store i32 %call12, ptr %retval1, align 4, !dbg !3032
  %15 = load i32, ptr %retval1, align 4, !dbg !3033
  %tobool13 = icmp ne i32 %15, 0, !dbg !3033
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3035

if.then14:                                        ; preds = %if.end10
  br label %out, !dbg !3036

if.end15:                                         ; preds = %if.end10
  %16 = load ptr, ptr %bus.addr, align 8, !dbg !3037
  %call16 = call i32 @bus_create_file(ptr noundef %16, ptr noundef @bus_attr_uevent) #16, !dbg !3038
  store i32 %call16, ptr %retval1, align 4, !dbg !3039
  %17 = load i32, ptr %retval1, align 4, !dbg !3040
  %tobool17 = icmp ne i32 %17, 0, !dbg !3040
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !3042

if.then18:                                        ; preds = %if.end15
  br label %bus_uevent_fail, !dbg !3043

if.end19:                                         ; preds = %if.end15
  %18 = load ptr, ptr %bus_kobj, align 8, !dbg !3044
  %call20 = call ptr @kset_create_and_add(ptr noundef @.str.7, ptr noundef null, ptr noundef %18) #16, !dbg !3045
  %19 = load ptr, ptr %priv, align 8, !dbg !3046
  %devices_kset = getelementptr inbounds %struct.subsys_private, ptr %19, i32 0, i32 1, !dbg !3047
  store ptr %call20, ptr %devices_kset, align 8, !dbg !3048
  %20 = load ptr, ptr %priv, align 8, !dbg !3049
  %devices_kset21 = getelementptr inbounds %struct.subsys_private, ptr %20, i32 0, i32 1, !dbg !3051
  %21 = load ptr, ptr %devices_kset21, align 8, !dbg !3051
  %tobool22 = icmp ne ptr %21, null, !dbg !3049
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !3052

if.then23:                                        ; preds = %if.end19
  store i32 -12, ptr %retval1, align 4, !dbg !3053
  br label %bus_devices_fail, !dbg !3055

if.end24:                                         ; preds = %if.end19
  %22 = load ptr, ptr %bus_kobj, align 8, !dbg !3056
  %call25 = call ptr @kset_create_and_add(ptr noundef @.str.8, ptr noundef null, ptr noundef %22) #16, !dbg !3057
  %23 = load ptr, ptr %priv, align 8, !dbg !3058
  %drivers_kset = getelementptr inbounds %struct.subsys_private, ptr %23, i32 0, i32 4, !dbg !3059
  store ptr %call25, ptr %drivers_kset, align 8, !dbg !3060
  %24 = load ptr, ptr %priv, align 8, !dbg !3061
  %drivers_kset26 = getelementptr inbounds %struct.subsys_private, ptr %24, i32 0, i32 4, !dbg !3063
  %25 = load ptr, ptr %drivers_kset26, align 8, !dbg !3063
  %tobool27 = icmp ne ptr %25, null, !dbg !3061
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !3064

if.then28:                                        ; preds = %if.end24
  store i32 -12, ptr %retval1, align 4, !dbg !3065
  br label %bus_drivers_fail, !dbg !3067

if.end29:                                         ; preds = %if.end24
  %26 = load ptr, ptr %priv, align 8, !dbg !3068
  %interfaces = getelementptr inbounds %struct.subsys_private, ptr %26, i32 0, i32 2, !dbg !3069
  call void @INIT_LIST_HEAD(ptr noundef %interfaces) #16, !dbg !3070
  %27 = load ptr, ptr %priv, align 8, !dbg !3071
  %lock_key = getelementptr inbounds %struct.subsys_private, ptr %27, i32 0, i32 13, !dbg !3072
  store ptr %lock_key, ptr %key, align 8, !dbg !3073
  %28 = load ptr, ptr %key, align 8, !dbg !3074
  call void @lockdep_register_key(ptr noundef %28) #16, !dbg !3075
  %29 = load ptr, ptr %priv, align 8, !dbg !3076
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %29, i32 0, i32 3, !dbg !3077
  %30 = load ptr, ptr %key, align 8, !dbg !3078
  call void @__mutex_init(ptr noundef %mutex, ptr noundef @.str.9, ptr noundef %30) #16, !dbg !3079
  %31 = load ptr, ptr %priv, align 8, !dbg !3080
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %31, i32 0, i32 5, !dbg !3081
  call void @klist_init(ptr noundef %klist_devices, ptr noundef @klist_devices_get, ptr noundef @klist_devices_put) #16, !dbg !3082
  %32 = load ptr, ptr %priv, align 8, !dbg !3083
  %klist_drivers = getelementptr inbounds %struct.subsys_private, ptr %32, i32 0, i32 6, !dbg !3084
  call void @klist_init(ptr noundef %klist_drivers, ptr noundef null, ptr noundef null) #16, !dbg !3085
  %33 = load ptr, ptr %bus.addr, align 8, !dbg !3086
  %call30 = call i32 @add_probe_files(ptr noundef %33) #16, !dbg !3087
  store i32 %call30, ptr %retval1, align 4, !dbg !3088
  %34 = load i32, ptr %retval1, align 4, !dbg !3089
  %tobool31 = icmp ne i32 %34, 0, !dbg !3089
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3091

if.then32:                                        ; preds = %if.end29
  br label %bus_probe_files_fail, !dbg !3092

if.end33:                                         ; preds = %if.end29
  %35 = load ptr, ptr %bus_kobj, align 8, !dbg !3093
  %36 = load ptr, ptr %bus.addr, align 8, !dbg !3094
  %bus_groups = getelementptr inbounds %struct.bus_type, ptr %36, i32 0, i32 2, !dbg !3095
  %37 = load ptr, ptr %bus_groups, align 8, !dbg !3095
  %call34 = call i32 @sysfs_create_groups(ptr noundef %35, ptr noundef %37) #16, !dbg !3096
  store i32 %call34, ptr %retval1, align 4, !dbg !3097
  %38 = load i32, ptr %retval1, align 4, !dbg !3098
  %tobool35 = icmp ne i32 %38, 0, !dbg !3098
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !3100

if.then36:                                        ; preds = %if.end33
  br label %bus_groups_fail, !dbg !3101

if.end37:                                         ; preds = %if.end33
  store i32 0, ptr %tmp, align 4, !dbg !3102
  %39 = load i32, ptr %tmp, align 4, !dbg !3105
  store i32 0, ptr %retval, align 4, !dbg !3106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3106

bus_groups_fail:                                  ; preds = %if.then36
  call void @llvm.dbg.label(metadata !1827), !dbg !3107
  %40 = load ptr, ptr %bus.addr, align 8, !dbg !3108
  call void @remove_probe_files(ptr noundef %40) #16, !dbg !3109
  br label %bus_probe_files_fail, !dbg !3109

bus_probe_files_fail:                             ; preds = %bus_groups_fail, %if.then32
  call void @llvm.dbg.label(metadata !1828), !dbg !3110
  %41 = load ptr, ptr %priv, align 8, !dbg !3111
  %drivers_kset38 = getelementptr inbounds %struct.subsys_private, ptr %41, i32 0, i32 4, !dbg !3112
  %42 = load ptr, ptr %drivers_kset38, align 8, !dbg !3112
  call void @kset_unregister(ptr noundef %42) #16, !dbg !3113
  br label %bus_drivers_fail, !dbg !3113

bus_drivers_fail:                                 ; preds = %bus_probe_files_fail, %if.then28
  call void @llvm.dbg.label(metadata !1829), !dbg !3114
  %43 = load ptr, ptr %priv, align 8, !dbg !3115
  %devices_kset39 = getelementptr inbounds %struct.subsys_private, ptr %43, i32 0, i32 1, !dbg !3116
  %44 = load ptr, ptr %devices_kset39, align 8, !dbg !3116
  call void @kset_unregister(ptr noundef %44) #16, !dbg !3117
  br label %bus_devices_fail, !dbg !3117

bus_devices_fail:                                 ; preds = %bus_drivers_fail, %if.then23
  call void @llvm.dbg.label(metadata !1830), !dbg !3118
  %45 = load ptr, ptr %bus.addr, align 8, !dbg !3119
  call void @bus_remove_file(ptr noundef %45, ptr noundef @bus_attr_uevent) #16, !dbg !3120
  br label %bus_uevent_fail, !dbg !3120

bus_uevent_fail:                                  ; preds = %bus_devices_fail, %if.then18
  call void @llvm.dbg.label(metadata !1831), !dbg !3121
  %46 = load ptr, ptr %priv, align 8, !dbg !3122
  %subsys40 = getelementptr inbounds %struct.subsys_private, ptr %46, i32 0, i32 0, !dbg !3123
  call void @kset_unregister(ptr noundef %subsys40) #16, !dbg !3124
  store ptr null, ptr %priv, align 8, !dbg !3125
  br label %out, !dbg !3126

out:                                              ; preds = %bus_uevent_fail, %if.then14, %if.then9
  call void @llvm.dbg.label(metadata !1832), !dbg !3127
  %47 = load ptr, ptr %priv, align 8, !dbg !3128
  call void @kfree(ptr noundef %47) #16, !dbg !3129
  %48 = load i32, ptr %retval1, align 4, !dbg !3130
  store i32 %48, ptr %retval, align 4, !dbg !3131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3131

cleanup:                                          ; preds = %out, %if.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #15, !dbg !3132
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_kobj) #15, !dbg !3132
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !3132
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !3132
  %49 = load i32, ptr %retval, align 4, !dbg !3132
  ret i32 %49, !dbg !3132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3133 dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3137 dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3140 dso_local i32 @kset_register(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3143 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !3146 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3151, metadata !DIExpression()), !dbg !3152
  br label %do.body, !dbg !3153

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3154

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3156

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3154

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3158
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3158
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3158
  store volatile ptr %0, ptr %next, align 8, !dbg !3158
  br label %do.end3, !dbg !3158

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3154

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3160

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3161

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3163

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3161

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3165
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3165
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3165
  store volatile ptr %2, ptr %prev, align 8, !dbg !3165
  br label %do.end9, !dbg !3165

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3161

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lockdep_register_key(ptr noundef %key) #3 align 16 !dbg !3168 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3173, metadata !DIExpression()), !dbg !3174
  ret void, !dbg !3175
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3176 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @klist_devices_get(ptr noundef %n) #0 align 16 !dbg !3179 {
entry:
  %n.addr = alloca ptr, align 8
  %dev_prv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3181, metadata !DIExpression()), !dbg !3186
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_prv) #15, !dbg !3187
  call void @llvm.dbg.declare(metadata ptr %dev_prv, metadata !3182, metadata !DIExpression()), !dbg !3188
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3189
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3183, metadata !DIExpression()), !dbg !3189
  %0 = load ptr, ptr %n.addr, align 8, !dbg !3189
  store ptr %0, ptr %__mptr, align 8, !dbg !3189
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3189
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !3189
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3190
  %2 = load ptr, ptr %tmp, align 8, !dbg !3189
  store ptr %2, ptr %dev_prv, align 8, !dbg !3188
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3185, metadata !DIExpression()), !dbg !3192
  %3 = load ptr, ptr %dev_prv, align 8, !dbg !3193
  %device = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 8, !dbg !3194
  %4 = load ptr, ptr %device, align 8, !dbg !3194
  store ptr %4, ptr %dev, align 8, !dbg !3192
  %5 = load ptr, ptr %dev, align 8, !dbg !3195
  %call = call ptr @get_device(ptr noundef %5) #16, !dbg !3196
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !3197
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_prv) #15, !dbg !3197
  ret void, !dbg !3197
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @klist_devices_put(ptr noundef %n) #0 align 16 !dbg !3198 {
entry:
  %n.addr = alloca ptr, align 8
  %dev_prv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3200, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_prv) #15, !dbg !3206
  call void @llvm.dbg.declare(metadata ptr %dev_prv, metadata !3201, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3202, metadata !DIExpression()), !dbg !3208
  %0 = load ptr, ptr %n.addr, align 8, !dbg !3208
  store ptr %0, ptr %__mptr, align 8, !dbg !3208
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3208
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !3208
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3208
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3209
  %2 = load ptr, ptr %tmp, align 8, !dbg !3208
  store ptr %2, ptr %dev_prv, align 8, !dbg !3207
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !3210
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3204, metadata !DIExpression()), !dbg !3211
  %3 = load ptr, ptr %dev_prv, align 8, !dbg !3212
  %device = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 8, !dbg !3213
  %4 = load ptr, ptr %device, align 8, !dbg !3213
  store ptr %4, ptr %dev, align 8, !dbg !3211
  %5 = load ptr, ptr %dev, align 8, !dbg !3214
  call void @put_device(ptr noundef %5) #16, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !3216
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_prv) #15, !dbg !3216
  ret void, !dbg !3216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_probe_files(ptr noundef %bus) #0 align 16 !dbg !3217 {
entry:
  %bus.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !3219, metadata !DIExpression()), !dbg !3222
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3220, metadata !DIExpression()), !dbg !3224
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !3225
  %call = call i32 @bus_create_file(ptr noundef %0, ptr noundef @bus_attr_drivers_probe) #16, !dbg !3226
  store i32 %call, ptr %retval1, align 4, !dbg !3227
  %1 = load i32, ptr %retval1, align 4, !dbg !3228
  %tobool = icmp ne i32 %1, 0, !dbg !3228
  br i1 %tobool, label %if.then, label %if.end, !dbg !3230

if.then:                                          ; preds = %entry
  br label %out, !dbg !3231

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !3232
  %call2 = call i32 @bus_create_file(ptr noundef %2, ptr noundef @bus_attr_drivers_autoprobe) #16, !dbg !3233
  store i32 %call2, ptr %retval1, align 4, !dbg !3234
  %3 = load i32, ptr %retval1, align 4, !dbg !3235
  %tobool3 = icmp ne i32 %3, 0, !dbg !3235
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3237

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !3238
  call void @bus_remove_file(ptr noundef %4, ptr noundef @bus_attr_drivers_probe) #16, !dbg !3239
  br label %if.end5, !dbg !3239

if.end5:                                          ; preds = %if.then4, %if.end
  br label %out, !dbg !3235

out:                                              ; preds = %if.end5, %if.then
  call void @llvm.dbg.label(metadata !3221), !dbg !3240
  %5 = load i32, ptr %retval1, align 4, !dbg !3241
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !3242
  ret i32 %5, !dbg !3243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3244 dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_probe_files(ptr noundef %bus) #0 align 16 !dbg !3247 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !3253
  call void @bus_remove_file(ptr noundef %0, ptr noundef @bus_attr_drivers_autoprobe) #16, !dbg !3254
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !3255
  call void @bus_remove_file(ptr noundef %1, ptr noundef @bus_attr_drivers_probe) #16, !dbg !3256
  ret void, !dbg !3257
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3258 dso_local void @kset_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3261 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bus_unregister(ptr noundef %bus) #0 align 16 !dbg !3264 {
entry:
  %bus.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %bus_kobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3270
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3267, metadata !DIExpression()), !dbg !3271
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !3272
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !3273
  store ptr %call, ptr %sp, align 8, !dbg !3271
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_kobj) #15, !dbg !3274
  call void @llvm.dbg.declare(metadata ptr %bus_kobj, metadata !3268, metadata !DIExpression()), !dbg !3275
  %1 = load ptr, ptr %sp, align 8, !dbg !3276
  %tobool = icmp ne ptr %1, null, !dbg !3276
  br i1 %tobool, label %if.end, label %if.then, !dbg !3278

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3279

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !3280
  %2 = load i32, ptr %tmp, align 4, !dbg !3283
  %3 = load ptr, ptr %sp, align 8, !dbg !3284
  %dev_root = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 10, !dbg !3286
  %4 = load ptr, ptr %dev_root, align 8, !dbg !3286
  %tobool1 = icmp ne ptr %4, null, !dbg !3284
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3287

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %sp, align 8, !dbg !3288
  %dev_root3 = getelementptr inbounds %struct.subsys_private, ptr %5, i32 0, i32 10, !dbg !3289
  %6 = load ptr, ptr %dev_root3, align 8, !dbg !3289
  call void @device_unregister(ptr noundef %6) #16, !dbg !3290
  br label %if.end4, !dbg !3290

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %sp, align 8, !dbg !3291
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %7, i32 0, i32 0, !dbg !3292
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !3293
  store ptr %kobj, ptr %bus_kobj, align 8, !dbg !3294
  %8 = load ptr, ptr %bus_kobj, align 8, !dbg !3295
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !3296
  %bus_groups = getelementptr inbounds %struct.bus_type, ptr %9, i32 0, i32 2, !dbg !3297
  %10 = load ptr, ptr %bus_groups, align 8, !dbg !3297
  call void @sysfs_remove_groups(ptr noundef %8, ptr noundef %10) #16, !dbg !3298
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !3299
  call void @remove_probe_files(ptr noundef %11) #16, !dbg !3300
  %12 = load ptr, ptr %bus.addr, align 8, !dbg !3301
  call void @bus_remove_file(ptr noundef %12, ptr noundef @bus_attr_uevent) #16, !dbg !3302
  %13 = load ptr, ptr %sp, align 8, !dbg !3303
  %drivers_kset = getelementptr inbounds %struct.subsys_private, ptr %13, i32 0, i32 4, !dbg !3304
  %14 = load ptr, ptr %drivers_kset, align 8, !dbg !3304
  call void @kset_unregister(ptr noundef %14) #16, !dbg !3305
  %15 = load ptr, ptr %sp, align 8, !dbg !3306
  %devices_kset = getelementptr inbounds %struct.subsys_private, ptr %15, i32 0, i32 1, !dbg !3307
  %16 = load ptr, ptr %devices_kset, align 8, !dbg !3307
  call void @kset_unregister(ptr noundef %16) #16, !dbg !3308
  %17 = load ptr, ptr %sp, align 8, !dbg !3309
  %subsys5 = getelementptr inbounds %struct.subsys_private, ptr %17, i32 0, i32 0, !dbg !3310
  call void @kset_unregister(ptr noundef %subsys5) #16, !dbg !3311
  %18 = load ptr, ptr %sp, align 8, !dbg !3312
  call void @subsys_put(ptr noundef %18) #16, !dbg !3313
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3314
  br label %cleanup, !dbg !3314

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_kobj) #15, !dbg !3314
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3314
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3314

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3315 dso_local void @device_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3316 dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_register_notifier(ptr noundef %bus, ptr noundef %nb) #0 align 16 !dbg !3319 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !3323, metadata !DIExpression()), !dbg !3327
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3329
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3325, metadata !DIExpression()), !dbg !3330
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !3331
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !3332
  store ptr %call, ptr %sp, align 8, !dbg !3330
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !3333
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3326, metadata !DIExpression()), !dbg !3334
  %1 = load ptr, ptr %sp, align 8, !dbg !3335
  %tobool = icmp ne ptr %1, null, !dbg !3335
  br i1 %tobool, label %if.end, label %if.then, !dbg !3337

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3338

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !3339
  %bus_notifier = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 7, !dbg !3340
  %3 = load ptr, ptr %nb.addr, align 8, !dbg !3341
  %call2 = call i32 @blocking_notifier_chain_register(ptr noundef %bus_notifier, ptr noundef %3) #16, !dbg !3342
  store i32 %call2, ptr %retval1, align 4, !dbg !3343
  %4 = load ptr, ptr %sp, align 8, !dbg !3344
  call void @subsys_put(ptr noundef %4) #16, !dbg !3345
  %5 = load i32, ptr %retval1, align 4, !dbg !3346
  store i32 %5, ptr %retval, align 4, !dbg !3347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3347

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !3348
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3348
  %6 = load i32, ptr %retval, align 4, !dbg !3348
  ret i32 %6, !dbg !3348
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3349 dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bus_unregister_notifier(ptr noundef %bus, ptr noundef %nb) #0 align 16 !dbg !3352 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !3354, metadata !DIExpression()), !dbg !3358
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !3355, metadata !DIExpression()), !dbg !3359
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3360
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3356, metadata !DIExpression()), !dbg !3361
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !3362
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !3363
  store ptr %call, ptr %sp, align 8, !dbg !3361
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !3364
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !3357, metadata !DIExpression()), !dbg !3365
  %1 = load ptr, ptr %sp, align 8, !dbg !3366
  %tobool = icmp ne ptr %1, null, !dbg !3366
  br i1 %tobool, label %if.end, label %if.then, !dbg !3368

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3369

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !3370
  %bus_notifier = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 7, !dbg !3371
  %3 = load ptr, ptr %nb.addr, align 8, !dbg !3372
  %call2 = call i32 @blocking_notifier_chain_unregister(ptr noundef %bus_notifier, ptr noundef %3) #16, !dbg !3373
  store i32 %call2, ptr %retval1, align 4, !dbg !3374
  %4 = load ptr, ptr %sp, align 8, !dbg !3375
  call void @subsys_put(ptr noundef %4) #16, !dbg !3376
  %5 = load i32, ptr %retval1, align 4, !dbg !3377
  store i32 %5, ptr %retval, align 4, !dbg !3378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3378

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !3379
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3379
  %6 = load i32, ptr %retval, align 4, !dbg !3379
  ret i32 %6, !dbg !3379
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3380 dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bus_notify(ptr noundef %dev, i32 noundef %value) #0 align 16 !dbg !3381 {
entry:
  %dev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3385, metadata !DIExpression()), !dbg !3388
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3386, metadata !DIExpression()), !dbg !3389
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3390
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3387, metadata !DIExpression()), !dbg !3391
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3392
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !3393
  %1 = load ptr, ptr %bus, align 8, !dbg !3393
  %call = call ptr @bus_to_subsys(ptr noundef %1) #16, !dbg !3394
  store ptr %call, ptr %sp, align 8, !dbg !3391
  %2 = load ptr, ptr %sp, align 8, !dbg !3395
  %tobool = icmp ne ptr %2, null, !dbg !3395
  br i1 %tobool, label %if.end, label %if.then, !dbg !3397

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3398

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sp, align 8, !dbg !3399
  %bus_notifier = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 7, !dbg !3400
  %4 = load i32, ptr %value.addr, align 4, !dbg !3401
  %conv = zext i32 %4 to i64, !dbg !3401
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !3402
  %call1 = call i32 @blocking_notifier_call_chain(ptr noundef %bus_notifier, i64 noundef %conv, ptr noundef %5) #16, !dbg !3403
  %6 = load ptr, ptr %sp, align 8, !dbg !3404
  call void @subsys_put(ptr noundef %6) #16, !dbg !3405
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3406
  br label %cleanup, !dbg !3406

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3406
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3406

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3407 dso_local i32 @blocking_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @bus_get_kset(ptr noundef %bus) #0 align 16 !dbg !3410 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %kset = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !3414, metadata !DIExpression()), !dbg !3417
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3418
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3415, metadata !DIExpression()), !dbg !3419
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !3420
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !3421
  store ptr %call, ptr %sp, align 8, !dbg !3419
  call void @llvm.lifetime.start.p0(i64 8, ptr %kset) #15, !dbg !3422
  call void @llvm.dbg.declare(metadata ptr %kset, metadata !3416, metadata !DIExpression()), !dbg !3423
  %1 = load ptr, ptr %sp, align 8, !dbg !3424
  %tobool = icmp ne ptr %1, null, !dbg !3424
  br i1 %tobool, label %if.end, label %if.then, !dbg !3426

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3427

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !3428
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 0, !dbg !3429
  store ptr %subsys, ptr %kset, align 8, !dbg !3430
  %3 = load ptr, ptr %sp, align 8, !dbg !3431
  call void @subsys_put(ptr noundef %3) #16, !dbg !3432
  %4 = load ptr, ptr %kset, align 8, !dbg !3433
  store ptr %4, ptr %retval, align 8, !dbg !3434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3434

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kset) #15, !dbg !3435
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3435
  %5 = load ptr, ptr %retval, align 8, !dbg !3435
  ret ptr %5, !dbg !3435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bus_sort_breadthfirst(ptr noundef %bus, ptr noundef %compare) #0 align 16 !dbg !3436 {
entry:
  %bus.addr = alloca ptr, align 8
  %compare.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %sorted_devices = alloca %struct.list_head, align 8
  %n = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dev_prv = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %device_klist = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !3443, metadata !DIExpression()), !dbg !3463
  store ptr %compare, ptr %compare.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare.addr, metadata !3444, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3465
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3445, metadata !DIExpression()), !dbg !3466
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !3467
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !3468
  store ptr %call, ptr %sp, align 8, !dbg !3466
  call void @llvm.lifetime.start.p0(i64 16, ptr %sorted_devices) #15, !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %sorted_devices, metadata !3446, metadata !DIExpression()), !dbg !3469
  %next = getelementptr inbounds %struct.list_head, ptr %sorted_devices, i32 0, i32 0, !dbg !3469
  store ptr %sorted_devices, ptr %next, align 8, !dbg !3469
  %prev = getelementptr inbounds %struct.list_head, ptr %sorted_devices, i32 0, i32 1, !dbg !3469
  store ptr %sorted_devices, ptr %prev, align 8, !dbg !3469
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !3470
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3447, metadata !DIExpression()), !dbg !3471
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !3470
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3448, metadata !DIExpression()), !dbg !3472
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_prv) #15, !dbg !3473
  call void @llvm.dbg.declare(metadata ptr %dev_prv, metadata !3449, metadata !DIExpression()), !dbg !3474
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !3475
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3450, metadata !DIExpression()), !dbg !3476
  call void @llvm.lifetime.start.p0(i64 8, ptr %device_klist) #15, !dbg !3477
  call void @llvm.dbg.declare(metadata ptr %device_klist, metadata !3451, metadata !DIExpression()), !dbg !3478
  %1 = load ptr, ptr %sp, align 8, !dbg !3479
  %tobool = icmp ne ptr %1, null, !dbg !3479
  br i1 %tobool, label %if.end, label %if.then, !dbg !3481

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3482

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !3483
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 5, !dbg !3484
  store ptr %klist_devices, ptr %device_klist, align 8, !dbg !3485
  %3 = load ptr, ptr %device_klist, align 8, !dbg !3486
  %k_lock = getelementptr inbounds %struct.klist, ptr %3, i32 0, i32 0, !dbg !3487
  call void @spin_lock(ptr noundef %k_lock) #16, !dbg !3488
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3489
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3452, metadata !DIExpression()), !dbg !3489
  %4 = load ptr, ptr %device_klist, align 8, !dbg !3489
  %k_list = getelementptr inbounds %struct.klist, ptr %4, i32 0, i32 1, !dbg !3489
  %next1 = getelementptr inbounds %struct.list_head, ptr %k_list, i32 0, i32 0, !dbg !3489
  %5 = load ptr, ptr %next1, align 8, !dbg !3489
  store ptr %5, ptr %__mptr, align 8, !dbg !3489
  %6 = load ptr, ptr %__mptr, align 8, !dbg !3489
  %add.ptr = getelementptr i8, ptr %6, i64 -8, !dbg !3489
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !3489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3490
  %7 = load ptr, ptr %tmp2, align 8, !dbg !3489
  store ptr %7, ptr %n, align 8, !dbg !3490
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #15, !dbg !3491
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !3455, metadata !DIExpression()), !dbg !3491
  %8 = load ptr, ptr %n, align 8, !dbg !3491
  %n_node = getelementptr inbounds %struct.klist_node, ptr %8, i32 0, i32 1, !dbg !3491
  %next4 = getelementptr inbounds %struct.list_head, ptr %n_node, i32 0, i32 0, !dbg !3491
  %9 = load ptr, ptr %next4, align 8, !dbg !3491
  store ptr %9, ptr %__mptr3, align 8, !dbg !3491
  %10 = load ptr, ptr %__mptr3, align 8, !dbg !3491
  %add.ptr6 = getelementptr i8, ptr %10, i64 -8, !dbg !3491
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !3491
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #15, !dbg !3490
  %11 = load ptr, ptr %tmp5, align 8, !dbg !3491
  store ptr %11, ptr %tmp, align 8, !dbg !3490
  br label %for.cond, !dbg !3490

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load ptr, ptr %n, align 8, !dbg !3492
  %n_node7 = getelementptr inbounds %struct.klist_node, ptr %12, i32 0, i32 1, !dbg !3492
  %13 = load ptr, ptr %device_klist, align 8, !dbg !3492
  %k_list8 = getelementptr inbounds %struct.klist, ptr %13, i32 0, i32 1, !dbg !3492
  %cmp = icmp eq ptr %n_node7, %k_list8, !dbg !3492
  %lnot = xor i1 %cmp, true, !dbg !3492
  br i1 %lnot, label %for.body, label %for.end, !dbg !3490

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !3493
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !3457, metadata !DIExpression()), !dbg !3493
  %14 = load ptr, ptr %n, align 8, !dbg !3493
  store ptr %14, ptr %__mptr9, align 8, !dbg !3493
  %15 = load ptr, ptr %__mptr9, align 8, !dbg !3493
  %add.ptr11 = getelementptr i8, ptr %15, i64 -104, !dbg !3493
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !3493
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !3494
  %16 = load ptr, ptr %tmp10, align 8, !dbg !3493
  store ptr %16, ptr %dev_prv, align 8, !dbg !3495
  %17 = load ptr, ptr %dev_prv, align 8, !dbg !3496
  %device = getelementptr inbounds %struct.device_private, ptr %17, i32 0, i32 8, !dbg !3497
  %18 = load ptr, ptr %device, align 8, !dbg !3497
  store ptr %18, ptr %dev, align 8, !dbg !3498
  %19 = load ptr, ptr %dev, align 8, !dbg !3499
  %20 = load ptr, ptr %compare.addr, align 8, !dbg !3500
  call void @device_insertion_sort_klist(ptr noundef %19, ptr noundef %sorted_devices, ptr noundef %20) #16, !dbg !3501
  br label %for.inc, !dbg !3502

for.inc:                                          ; preds = %for.body
  %21 = load ptr, ptr %tmp, align 8, !dbg !3492
  store ptr %21, ptr %n, align 8, !dbg !3492
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #15, !dbg !3503
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !3461, metadata !DIExpression()), !dbg !3503
  %22 = load ptr, ptr %tmp, align 8, !dbg !3503
  %n_node13 = getelementptr inbounds %struct.klist_node, ptr %22, i32 0, i32 1, !dbg !3503
  %next14 = getelementptr inbounds %struct.list_head, ptr %n_node13, i32 0, i32 0, !dbg !3503
  %23 = load ptr, ptr %next14, align 8, !dbg !3503
  store ptr %23, ptr %__mptr12, align 8, !dbg !3503
  %24 = load ptr, ptr %__mptr12, align 8, !dbg !3503
  %add.ptr16 = getelementptr i8, ptr %24, i64 -8, !dbg !3503
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !3503
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #15, !dbg !3492
  %25 = load ptr, ptr %tmp15, align 8, !dbg !3503
  store ptr %25, ptr %tmp, align 8, !dbg !3492
  br label %for.cond, !dbg !3492, !llvm.loop !3504

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %device_klist, align 8, !dbg !3506
  %k_list17 = getelementptr inbounds %struct.klist, ptr %26, i32 0, i32 1, !dbg !3507
  call void @list_splice(ptr noundef %sorted_devices, ptr noundef %k_list17) #16, !dbg !3508
  %27 = load ptr, ptr %device_klist, align 8, !dbg !3509
  %k_lock18 = getelementptr inbounds %struct.klist, ptr %27, i32 0, i32 0, !dbg !3510
  call void @spin_unlock(ptr noundef %k_lock18) #16, !dbg !3511
  %28 = load ptr, ptr %sp, align 8, !dbg !3512
  call void @subsys_put(ptr noundef %28) #16, !dbg !3513
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3514
  br label %cleanup, !dbg !3514

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %device_klist) #15, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_prv) #15, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 16, ptr %sorted_devices) #15, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3514
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3514

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !3515 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3521, metadata !DIExpression()), !dbg !3522
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3523
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3523
  call void @_raw_spin_lock(ptr noundef %1) #16, !dbg !3523
  ret void, !dbg !3524
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_insertion_sort_klist(ptr noundef %a, ptr noundef %list, ptr noundef %compare) #0 align 16 !dbg !3525 {
entry:
  %a.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %compare.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %dev_prv = alloca ptr, align 8
  %b = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !3529, metadata !DIExpression()), !dbg !3544
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3530, metadata !DIExpression()), !dbg !3545
  store ptr %compare, ptr %compare.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare.addr, metadata !3531, metadata !DIExpression()), !dbg !3546
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !3547
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3532, metadata !DIExpression()), !dbg !3548
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_prv) #15, !dbg !3549
  call void @llvm.dbg.declare(metadata ptr %dev_prv, metadata !3533, metadata !DIExpression()), !dbg !3550
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !3551
  call void @llvm.dbg.declare(metadata ptr %b, metadata !3534, metadata !DIExpression()), !dbg !3552
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3535, metadata !DIExpression()), !dbg !3553
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3553
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3553
  %1 = load ptr, ptr %next, align 8, !dbg !3553
  store ptr %1, ptr %__mptr, align 8, !dbg !3553
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3553
  %add.ptr = getelementptr i8, ptr %2, i64 -8, !dbg !3553
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3554
  %3 = load ptr, ptr %tmp, align 8, !dbg !3553
  store ptr %3, ptr %n, align 8, !dbg !3554
  br label %for.cond, !dbg !3554

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %n, align 8, !dbg !3555
  %n_node = getelementptr inbounds %struct.klist_node, ptr %4, i32 0, i32 1, !dbg !3555
  %5 = load ptr, ptr %list.addr, align 8, !dbg !3555
  %cmp = icmp eq ptr %n_node, %5, !dbg !3555
  %lnot = xor i1 %cmp, true, !dbg !3555
  br i1 %lnot, label %for.body, label %for.end, !dbg !3554

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !3556
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !3538, metadata !DIExpression()), !dbg !3556
  %6 = load ptr, ptr %n, align 8, !dbg !3556
  store ptr %6, ptr %__mptr1, align 8, !dbg !3556
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !3556
  %add.ptr3 = getelementptr i8, ptr %7, i64 -104, !dbg !3556
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !3557
  %8 = load ptr, ptr %tmp2, align 8, !dbg !3556
  store ptr %8, ptr %dev_prv, align 8, !dbg !3558
  %9 = load ptr, ptr %dev_prv, align 8, !dbg !3559
  %device = getelementptr inbounds %struct.device_private, ptr %9, i32 0, i32 8, !dbg !3560
  %10 = load ptr, ptr %device, align 8, !dbg !3560
  store ptr %10, ptr %b, align 8, !dbg !3561
  %11 = load ptr, ptr %compare.addr, align 8, !dbg !3562
  %12 = load ptr, ptr %a.addr, align 8, !dbg !3564
  %13 = load ptr, ptr %b, align 8, !dbg !3565
  %call = call i32 %11(ptr noundef %12, ptr noundef %13) #16, !dbg !3562
  %cmp4 = icmp sle i32 %call, 0, !dbg !3566
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3567

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %a.addr, align 8, !dbg !3568
  %p = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 2, !dbg !3570
  %15 = load ptr, ptr %p, align 8, !dbg !3570
  %knode_bus = getelementptr inbounds %struct.device_private, ptr %15, i32 0, i32 3, !dbg !3571
  %n_node5 = getelementptr inbounds %struct.klist_node, ptr %knode_bus, i32 0, i32 1, !dbg !3572
  %16 = load ptr, ptr %b, align 8, !dbg !3573
  %p6 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 2, !dbg !3574
  %17 = load ptr, ptr %p6, align 8, !dbg !3574
  %knode_bus7 = getelementptr inbounds %struct.device_private, ptr %17, i32 0, i32 3, !dbg !3575
  %n_node8 = getelementptr inbounds %struct.klist_node, ptr %knode_bus7, i32 0, i32 1, !dbg !3576
  call void @list_move_tail(ptr noundef %n_node5, ptr noundef %n_node8) #16, !dbg !3577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3578

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3579

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !3542, metadata !DIExpression()), !dbg !3580
  %18 = load ptr, ptr %n, align 8, !dbg !3580
  %n_node10 = getelementptr inbounds %struct.klist_node, ptr %18, i32 0, i32 1, !dbg !3580
  %next11 = getelementptr inbounds %struct.list_head, ptr %n_node10, i32 0, i32 0, !dbg !3580
  %19 = load ptr, ptr %next11, align 8, !dbg !3580
  store ptr %19, ptr %__mptr9, align 8, !dbg !3580
  %20 = load ptr, ptr %__mptr9, align 8, !dbg !3580
  %add.ptr13 = getelementptr i8, ptr %20, i64 -8, !dbg !3580
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !3580
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !3555
  %21 = load ptr, ptr %tmp12, align 8, !dbg !3580
  store ptr %21, ptr %n, align 8, !dbg !3555
  br label %for.cond, !dbg !3555, !llvm.loop !3581

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %a.addr, align 8, !dbg !3583
  %p14 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 2, !dbg !3584
  %23 = load ptr, ptr %p14, align 8, !dbg !3584
  %knode_bus15 = getelementptr inbounds %struct.device_private, ptr %23, i32 0, i32 3, !dbg !3585
  %n_node16 = getelementptr inbounds %struct.klist_node, ptr %knode_bus15, i32 0, i32 1, !dbg !3586
  %24 = load ptr, ptr %list.addr, align 8, !dbg !3587
  call void @list_move_tail(ptr noundef %n_node16, ptr noundef %24) #16, !dbg !3588
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3589
  br label %cleanup, !dbg !3589

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !3589
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_prv) #15, !dbg !3589
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !3589
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3589

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !3590 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3596, metadata !DIExpression()), !dbg !3598
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3597, metadata !DIExpression()), !dbg !3599
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3600
  %call = call i32 @list_empty(ptr noundef %0) #16, !dbg !3602
  %tobool = icmp ne i32 %call, 0, !dbg !3602
  br i1 %tobool, label %if.end, label %if.then, !dbg !3603

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3604
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3605
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3606
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3607
  %4 = load ptr, ptr %next, align 8, !dbg !3607
  call void @__list_splice(ptr noundef %1, ptr noundef %2, ptr noundef %4) #16, !dbg !3608
  br label %if.end, !dbg !3608

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3609
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !3610 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3612, metadata !DIExpression()), !dbg !3613
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3614
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3614
  call void @_raw_spin_unlock(ptr noundef %1) #16, !dbg !3614
  ret void, !dbg !3615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @subsys_interface_register(ptr noundef %sif) #0 align 16 !dbg !3616 {
entry:
  %retval = alloca i32, align 4
  %sif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %iter = alloca %struct.subsys_dev_iter, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sif, ptr %sif.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sif.addr, metadata !3620, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3629
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3621, metadata !DIExpression()), !dbg !3630
  call void @llvm.lifetime.start.p0(i64 24, ptr %iter) #15, !dbg !3631
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !3622, metadata !DIExpression()), !dbg !3632
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !3633
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3627, metadata !DIExpression()), !dbg !3634
  %0 = load ptr, ptr %sif.addr, align 8, !dbg !3635
  %tobool = icmp ne ptr %0, null, !dbg !3635
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3637

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %sif.addr, align 8, !dbg !3638
  %subsys = getelementptr inbounds %struct.subsys_interface, ptr %1, i32 0, i32 1, !dbg !3639
  %2 = load ptr, ptr %subsys, align 8, !dbg !3639
  %tobool1 = icmp ne ptr %2, null, !dbg !3638
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3640

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !3641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3641

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %sif.addr, align 8, !dbg !3642
  %subsys2 = getelementptr inbounds %struct.subsys_interface, ptr %3, i32 0, i32 1, !dbg !3643
  %4 = load ptr, ptr %subsys2, align 8, !dbg !3643
  %call = call ptr @bus_to_subsys(ptr noundef %4) #16, !dbg !3644
  store ptr %call, ptr %sp, align 8, !dbg !3645
  %5 = load ptr, ptr %sp, align 8, !dbg !3646
  %tobool3 = icmp ne ptr %5, null, !dbg !3646
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3648

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3649

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %sp, align 8, !dbg !3650
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %6, i32 0, i32 3, !dbg !3651
  call void @mutex_lock(ptr noundef %mutex) #16, !dbg !3652
  %7 = load ptr, ptr %sif.addr, align 8, !dbg !3653
  %node = getelementptr inbounds %struct.subsys_interface, ptr %7, i32 0, i32 2, !dbg !3654
  %8 = load ptr, ptr %sp, align 8, !dbg !3655
  %interfaces = getelementptr inbounds %struct.subsys_private, ptr %8, i32 0, i32 2, !dbg !3656
  call void @list_add_tail(ptr noundef %node, ptr noundef %interfaces) #16, !dbg !3657
  %9 = load ptr, ptr %sif.addr, align 8, !dbg !3658
  %add_dev = getelementptr inbounds %struct.subsys_interface, ptr %9, i32 0, i32 3, !dbg !3660
  %10 = load ptr, ptr %add_dev, align 8, !dbg !3660
  %tobool6 = icmp ne ptr %10, null, !dbg !3658
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !3661

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %sp, align 8, !dbg !3662
  call void @subsys_dev_iter_init(ptr noundef %iter, ptr noundef %11, ptr noundef null, ptr noundef null) #16, !dbg !3664
  br label %while.cond, !dbg !3665

while.cond:                                       ; preds = %while.body, %if.then7
  %call8 = call ptr @subsys_dev_iter_next(ptr noundef %iter) #16, !dbg !3666
  store ptr %call8, ptr %dev, align 8, !dbg !3667
  %tobool9 = icmp ne ptr %call8, null, !dbg !3665
  br i1 %tobool9, label %while.body, label %while.end, !dbg !3665

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %sif.addr, align 8, !dbg !3668
  %add_dev10 = getelementptr inbounds %struct.subsys_interface, ptr %12, i32 0, i32 3, !dbg !3669
  %13 = load ptr, ptr %add_dev10, align 8, !dbg !3669
  %14 = load ptr, ptr %dev, align 8, !dbg !3670
  %15 = load ptr, ptr %sif.addr, align 8, !dbg !3671
  %call11 = call i32 %13(ptr noundef %14, ptr noundef %15) #16, !dbg !3668
  br label %while.cond, !dbg !3665, !llvm.loop !3672

while.end:                                        ; preds = %while.cond
  call void @subsys_dev_iter_exit(ptr noundef %iter) #16, !dbg !3674
  br label %if.end12, !dbg !3675

if.end12:                                         ; preds = %while.end, %if.end5
  %16 = load ptr, ptr %sp, align 8, !dbg !3676
  %mutex13 = getelementptr inbounds %struct.subsys_private, ptr %16, i32 0, i32 3, !dbg !3677
  call void @mutex_unlock(ptr noundef %mutex13) #16, !dbg !3678
  store i32 0, ptr %retval, align 4, !dbg !3679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3679

cleanup:                                          ; preds = %if.end12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 24, ptr %iter) #15, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3680
  %17 = load i32, ptr %retval, align 4, !dbg !3680
  ret i32 %17, !dbg !3680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !3681 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3685, metadata !DIExpression()), !dbg !3687
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3686, metadata !DIExpression()), !dbg !3688
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3689
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3690
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3691
  %2 = load ptr, ptr %prev, align 8, !dbg !3691
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3692
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !3693
  ret void, !dbg !3694
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @subsys_dev_iter_init(ptr noundef %iter, ptr noundef %sp, ptr noundef %start, ptr noundef %type) #0 align 16 !dbg !3695 {
entry:
  %iter.addr = alloca ptr, align 8
  %sp.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %start_knode = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !3700, metadata !DIExpression()), !dbg !3705
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !3701, metadata !DIExpression()), !dbg !3706
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3702, metadata !DIExpression()), !dbg !3707
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3703, metadata !DIExpression()), !dbg !3708
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_knode) #15, !dbg !3709
  call void @llvm.dbg.declare(metadata ptr %start_knode, metadata !3704, metadata !DIExpression()), !dbg !3710
  store ptr null, ptr %start_knode, align 8, !dbg !3710
  %0 = load ptr, ptr %start.addr, align 8, !dbg !3711
  %tobool = icmp ne ptr %0, null, !dbg !3711
  br i1 %tobool, label %if.then, label %if.end, !dbg !3713

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %start.addr, align 8, !dbg !3714
  %p = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2, !dbg !3715
  %2 = load ptr, ptr %p, align 8, !dbg !3715
  %knode_bus = getelementptr inbounds %struct.device_private, ptr %2, i32 0, i32 3, !dbg !3716
  store ptr %knode_bus, ptr %start_knode, align 8, !dbg !3717
  br label %if.end, !dbg !3718

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %sp.addr, align 8, !dbg !3719
  %klist_devices = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 5, !dbg !3720
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !3721
  %ki = getelementptr inbounds %struct.subsys_dev_iter, ptr %4, i32 0, i32 0, !dbg !3722
  %5 = load ptr, ptr %start_knode, align 8, !dbg !3723
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef %ki, ptr noundef %5) #16, !dbg !3724
  %6 = load ptr, ptr %type.addr, align 8, !dbg !3725
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !3726
  %type1 = getelementptr inbounds %struct.subsys_dev_iter, ptr %7, i32 0, i32 1, !dbg !3727
  store ptr %6, ptr %type1, align 8, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_knode) #15, !dbg !3729
  ret void, !dbg !3729
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @subsys_dev_iter_next(ptr noundef %iter) #0 align 16 !dbg !3730 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %knode = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !3734, metadata !DIExpression()), !dbg !3742
  call void @llvm.lifetime.start.p0(i64 8, ptr %knode) #15, !dbg !3743
  call void @llvm.dbg.declare(metadata ptr %knode, metadata !3735, metadata !DIExpression()), !dbg !3744
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !3745
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3736, metadata !DIExpression()), !dbg !3746
  br label %for.cond, !dbg !3747

for.cond:                                         ; preds = %if.end5, %entry
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !3748
  %ki = getelementptr inbounds %struct.subsys_dev_iter, ptr %0, i32 0, i32 0, !dbg !3749
  %call = call ptr @klist_next(ptr noundef %ki) #16, !dbg !3750
  store ptr %call, ptr %knode, align 8, !dbg !3751
  %1 = load ptr, ptr %knode, align 8, !dbg !3752
  %tobool = icmp ne ptr %1, null, !dbg !3752
  br i1 %tobool, label %if.end, label %if.then, !dbg !3754

if.then:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !3755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3755

if.end:                                           ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3756
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3737, metadata !DIExpression()), !dbg !3756
  %2 = load ptr, ptr %knode, align 8, !dbg !3756
  store ptr %2, ptr %__mptr, align 8, !dbg !3756
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3756
  %add.ptr = getelementptr i8, ptr %3, i64 -104, !dbg !3756
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3756
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3757
  %4 = load ptr, ptr %tmp, align 8, !dbg !3756
  %device = getelementptr inbounds %struct.device_private, ptr %4, i32 0, i32 8, !dbg !3758
  %5 = load ptr, ptr %device, align 8, !dbg !3758
  store ptr %5, ptr %dev, align 8, !dbg !3759
  %6 = load ptr, ptr %iter.addr, align 8, !dbg !3760
  %type = getelementptr inbounds %struct.subsys_dev_iter, ptr %6, i32 0, i32 1, !dbg !3762
  %7 = load ptr, ptr %type, align 8, !dbg !3762
  %tobool1 = icmp ne ptr %7, null, !dbg !3760
  br i1 %tobool1, label %lor.lhs.false, label %if.then4, !dbg !3763

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !3764
  %type2 = getelementptr inbounds %struct.subsys_dev_iter, ptr %8, i32 0, i32 1, !dbg !3765
  %9 = load ptr, ptr %type2, align 8, !dbg !3765
  %10 = load ptr, ptr %dev, align 8, !dbg !3766
  %type3 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 4, !dbg !3767
  %11 = load ptr, ptr %type3, align 8, !dbg !3767
  %cmp = icmp eq ptr %9, %11, !dbg !3768
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3769

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load ptr, ptr %dev, align 8, !dbg !3770
  store ptr %12, ptr %retval, align 8, !dbg !3771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3771

if.end5:                                          ; preds = %lor.lhs.false
  br label %for.cond, !dbg !3772, !llvm.loop !3773

cleanup:                                          ; preds = %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !3776
  call void @llvm.lifetime.end.p0(i64 8, ptr %knode) #15, !dbg !3776
  %13 = load ptr, ptr %retval, align 8, !dbg !3776
  ret ptr %13, !dbg !3776
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @subsys_dev_iter_exit(ptr noundef %iter) #0 align 16 !dbg !3777 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !3781, metadata !DIExpression()), !dbg !3782
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !3783
  %ki = getelementptr inbounds %struct.subsys_dev_iter, ptr %0, i32 0, i32 0, !dbg !3784
  call void @klist_iter_exit(ptr noundef %ki) #16, !dbg !3785
  ret void, !dbg !3786
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @subsys_interface_unregister(ptr noundef %sif) #0 align 16 !dbg !3787 {
entry:
  %sif.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %iter = alloca %struct.subsys_dev_iter, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sif, ptr %sif.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sif.addr, metadata !3791, metadata !DIExpression()), !dbg !3795
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3796
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3792, metadata !DIExpression()), !dbg !3797
  call void @llvm.lifetime.start.p0(i64 24, ptr %iter) #15, !dbg !3798
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !3800
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3794, metadata !DIExpression()), !dbg !3801
  %0 = load ptr, ptr %sif.addr, align 8, !dbg !3802
  %tobool = icmp ne ptr %0, null, !dbg !3802
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3804

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %sif.addr, align 8, !dbg !3805
  %subsys = getelementptr inbounds %struct.subsys_interface, ptr %1, i32 0, i32 1, !dbg !3806
  %2 = load ptr, ptr %subsys, align 8, !dbg !3806
  %tobool1 = icmp ne ptr %2, null, !dbg !3805
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3807

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3808

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %sif.addr, align 8, !dbg !3809
  %subsys2 = getelementptr inbounds %struct.subsys_interface, ptr %3, i32 0, i32 1, !dbg !3810
  %4 = load ptr, ptr %subsys2, align 8, !dbg !3810
  %call = call ptr @bus_to_subsys(ptr noundef %4) #16, !dbg !3811
  store ptr %call, ptr %sp, align 8, !dbg !3812
  %5 = load ptr, ptr %sp, align 8, !dbg !3813
  %tobool3 = icmp ne ptr %5, null, !dbg !3813
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3815

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3816

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %sp, align 8, !dbg !3817
  %mutex = getelementptr inbounds %struct.subsys_private, ptr %6, i32 0, i32 3, !dbg !3818
  call void @mutex_lock(ptr noundef %mutex) #16, !dbg !3819
  %7 = load ptr, ptr %sif.addr, align 8, !dbg !3820
  %node = getelementptr inbounds %struct.subsys_interface, ptr %7, i32 0, i32 2, !dbg !3821
  call void @list_del_init(ptr noundef %node) #16, !dbg !3822
  %8 = load ptr, ptr %sif.addr, align 8, !dbg !3823
  %remove_dev = getelementptr inbounds %struct.subsys_interface, ptr %8, i32 0, i32 4, !dbg !3825
  %9 = load ptr, ptr %remove_dev, align 8, !dbg !3825
  %tobool6 = icmp ne ptr %9, null, !dbg !3823
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !3826

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %sp, align 8, !dbg !3827
  call void @subsys_dev_iter_init(ptr noundef %iter, ptr noundef %10, ptr noundef null, ptr noundef null) #16, !dbg !3829
  br label %while.cond, !dbg !3830

while.cond:                                       ; preds = %while.body, %if.then7
  %call8 = call ptr @subsys_dev_iter_next(ptr noundef %iter) #16, !dbg !3831
  store ptr %call8, ptr %dev, align 8, !dbg !3832
  %tobool9 = icmp ne ptr %call8, null, !dbg !3830
  br i1 %tobool9, label %while.body, label %while.end, !dbg !3830

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %sif.addr, align 8, !dbg !3833
  %remove_dev10 = getelementptr inbounds %struct.subsys_interface, ptr %11, i32 0, i32 4, !dbg !3834
  %12 = load ptr, ptr %remove_dev10, align 8, !dbg !3834
  %13 = load ptr, ptr %dev, align 8, !dbg !3835
  %14 = load ptr, ptr %sif.addr, align 8, !dbg !3836
  call void %12(ptr noundef %13, ptr noundef %14) #16, !dbg !3833
  br label %while.cond, !dbg !3830, !llvm.loop !3837

while.end:                                        ; preds = %while.cond
  call void @subsys_dev_iter_exit(ptr noundef %iter) #16, !dbg !3839
  br label %if.end11, !dbg !3840

if.end11:                                         ; preds = %while.end, %if.end5
  %15 = load ptr, ptr %sp, align 8, !dbg !3841
  %mutex12 = getelementptr inbounds %struct.subsys_private, ptr %15, i32 0, i32 3, !dbg !3842
  call void @mutex_unlock(ptr noundef %mutex12) #16, !dbg !3843
  %16 = load ptr, ptr %sp, align 8, !dbg !3844
  call void @subsys_put(ptr noundef %16) #16, !dbg !3845
  %17 = load ptr, ptr %sp, align 8, !dbg !3846
  call void @subsys_put(ptr noundef %17) #16, !dbg !3847
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3848
  br label %cleanup, !dbg !3848

cleanup:                                          ; preds = %if.end11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !3848
  call void @llvm.lifetime.end.p0(i64 24, ptr %iter) #15, !dbg !3848
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3848
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3848

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !3849 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3851, metadata !DIExpression()), !dbg !3852
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3853
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !3854
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3855
  call void @INIT_LIST_HEAD(ptr noundef %1) #16, !dbg !3856
  ret void, !dbg !3857
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @subsys_system_register(ptr noundef %subsys, ptr noundef %groups) #0 align 16 !dbg !3858 {
entry:
  %subsys.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  store ptr %subsys, ptr %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subsys.addr, metadata !3862, metadata !DIExpression()), !dbg !3864
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !3863, metadata !DIExpression()), !dbg !3865
  %0 = load ptr, ptr %subsys.addr, align 8, !dbg !3866
  %1 = load ptr, ptr %groups.addr, align 8, !dbg !3867
  %2 = load ptr, ptr @system_kset, align 8, !dbg !3868
  %kobj = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 2, !dbg !3869
  %call = call i32 @subsys_register(ptr noundef %0, ptr noundef %1, ptr noundef %kobj) #16, !dbg !3870
  ret i32 %call, !dbg !3871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @subsys_register(ptr noundef %subsys, ptr noundef %groups, ptr noundef %parent_of_root) #0 align 16 !dbg !3872 {
entry:
  %retval = alloca i32, align 4
  %subsys.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  %parent_of_root.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %subsys, ptr %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subsys.addr, metadata !3876, metadata !DIExpression()), !dbg !3886
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !3877, metadata !DIExpression()), !dbg !3887
  store ptr %parent_of_root, ptr %parent_of_root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_of_root.addr, metadata !3878, metadata !DIExpression()), !dbg !3888
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !3889
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !3879, metadata !DIExpression()), !dbg !3890
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !3891
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3880, metadata !DIExpression()), !dbg !3892
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !3893
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3881, metadata !DIExpression()), !dbg !3894
  %0 = load ptr, ptr %subsys.addr, align 8, !dbg !3895
  %call = call i32 @bus_register(ptr noundef %0) #16, !dbg !3896
  store i32 %call, ptr %err, align 4, !dbg !3897
  %1 = load i32, ptr %err, align 4, !dbg !3898
  %cmp = icmp slt i32 %1, 0, !dbg !3900
  br i1 %cmp, label %if.then, label %if.end, !dbg !3901

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !3902
  store i32 %2, ptr %retval, align 4, !dbg !3903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3903

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %subsys.addr, align 8, !dbg !3904
  %call1 = call ptr @bus_to_subsys(ptr noundef %3) #16, !dbg !3905
  store ptr %call1, ptr %sp, align 8, !dbg !3906
  %4 = load ptr, ptr %sp, align 8, !dbg !3907
  %tobool = icmp ne ptr %4, null, !dbg !3907
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !3909

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %err, align 4, !dbg !3910
  br label %err_sp, !dbg !3912

if.end3:                                          ; preds = %if.end
  %call4 = call noalias ptr @kzalloc(i64 noundef 728, i32 noundef 3264) #17, !dbg !3913
  store ptr %call4, ptr %dev, align 8, !dbg !3914
  %5 = load ptr, ptr %dev, align 8, !dbg !3915
  %tobool5 = icmp ne ptr %5, null, !dbg !3915
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3917

if.then6:                                         ; preds = %if.end3
  store i32 -12, ptr %err, align 4, !dbg !3918
  br label %err_dev, !dbg !3920

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %dev, align 8, !dbg !3921
  %7 = load ptr, ptr %subsys.addr, align 8, !dbg !3922
  %name = getelementptr inbounds %struct.bus_type, ptr %7, i32 0, i32 0, !dbg !3923
  %8 = load ptr, ptr %name, align 8, !dbg !3923
  %call8 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %6, ptr noundef @.str.1, ptr noundef %8) #16, !dbg !3924
  store i32 %call8, ptr %err, align 4, !dbg !3925
  %9 = load i32, ptr %err, align 4, !dbg !3926
  %cmp9 = icmp slt i32 %9, 0, !dbg !3928
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3929

if.then10:                                        ; preds = %if.end7
  br label %err_name, !dbg !3930

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %parent_of_root.addr, align 8, !dbg !3931
  %11 = load ptr, ptr %dev, align 8, !dbg !3932
  %kobj = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 0, !dbg !3933
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2, !dbg !3934
  store ptr %10, ptr %parent, align 8, !dbg !3935
  %12 = load ptr, ptr %groups.addr, align 8, !dbg !3936
  %13 = load ptr, ptr %dev, align 8, !dbg !3937
  %groups12 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 31, !dbg !3938
  store ptr %12, ptr %groups12, align 8, !dbg !3939
  %14 = load ptr, ptr %dev, align 8, !dbg !3940
  %release = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 32, !dbg !3941
  store ptr @system_root_device_release, ptr %release, align 8, !dbg !3942
  %15 = load ptr, ptr %dev, align 8, !dbg !3943
  %call13 = call i32 @device_register(ptr noundef %15) #16, !dbg !3944
  store i32 %call13, ptr %err, align 4, !dbg !3945
  %16 = load i32, ptr %err, align 4, !dbg !3946
  %cmp14 = icmp slt i32 %16, 0, !dbg !3948
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3949

if.then15:                                        ; preds = %if.end11
  br label %err_dev_reg, !dbg !3950

if.end16:                                         ; preds = %if.end11
  %17 = load ptr, ptr %dev, align 8, !dbg !3951
  %18 = load ptr, ptr %sp, align 8, !dbg !3952
  %dev_root = getelementptr inbounds %struct.subsys_private, ptr %18, i32 0, i32 10, !dbg !3953
  store ptr %17, ptr %dev_root, align 8, !dbg !3954
  %19 = load ptr, ptr %sp, align 8, !dbg !3955
  call void @subsys_put(ptr noundef %19) #16, !dbg !3956
  store i32 0, ptr %retval, align 4, !dbg !3957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3957

err_dev_reg:                                      ; preds = %if.then15
  call void @llvm.dbg.label(metadata !3882), !dbg !3958
  %20 = load ptr, ptr %dev, align 8, !dbg !3959
  call void @put_device(ptr noundef %20) #16, !dbg !3960
  store ptr null, ptr %dev, align 8, !dbg !3961
  br label %err_name, !dbg !3962

err_name:                                         ; preds = %err_dev_reg, %if.then10
  call void @llvm.dbg.label(metadata !3883), !dbg !3963
  %21 = load ptr, ptr %dev, align 8, !dbg !3964
  call void @kfree(ptr noundef %21) #16, !dbg !3965
  br label %err_dev, !dbg !3965

err_dev:                                          ; preds = %err_name, %if.then6
  call void @llvm.dbg.label(metadata !3884), !dbg !3966
  %22 = load ptr, ptr %sp, align 8, !dbg !3967
  call void @subsys_put(ptr noundef %22) #16, !dbg !3968
  br label %err_sp, !dbg !3968

err_sp:                                           ; preds = %err_dev, %if.then2
  call void @llvm.dbg.label(metadata !3885), !dbg !3969
  %23 = load ptr, ptr %subsys.addr, align 8, !dbg !3970
  call void @bus_unregister(ptr noundef %23) #16, !dbg !3971
  %24 = load i32, ptr %err, align 4, !dbg !3972
  store i32 %24, ptr %retval, align 4, !dbg !3973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3973

cleanup:                                          ; preds = %err_sp, %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !3974
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !3974
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !3974
  %25 = load i32, ptr %retval, align 4, !dbg !3974
  ret i32 %25, !dbg !3974
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @subsys_virtual_register(ptr noundef %subsys, ptr noundef %groups) #0 align 16 !dbg !3975 {
entry:
  %retval = alloca i32, align 4
  %subsys.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  %virtual_dir = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %subsys, ptr %subsys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subsys.addr, metadata !3977, metadata !DIExpression()), !dbg !3980
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !3978, metadata !DIExpression()), !dbg !3981
  call void @llvm.lifetime.start.p0(i64 8, ptr %virtual_dir) #15, !dbg !3982
  call void @llvm.dbg.declare(metadata ptr %virtual_dir, metadata !3979, metadata !DIExpression()), !dbg !3983
  %call = call ptr @virtual_device_parent(ptr noundef null) #16, !dbg !3984
  store ptr %call, ptr %virtual_dir, align 8, !dbg !3985
  %0 = load ptr, ptr %virtual_dir, align 8, !dbg !3986
  %tobool = icmp ne ptr %0, null, !dbg !3986
  br i1 %tobool, label %if.end, label %if.then, !dbg !3988

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !3989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3989

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %subsys.addr, align 8, !dbg !3990
  %2 = load ptr, ptr %groups.addr, align 8, !dbg !3991
  %3 = load ptr, ptr %virtual_dir, align 8, !dbg !3992
  %call1 = call i32 @subsys_register(ptr noundef %1, ptr noundef %2, ptr noundef %3) #16, !dbg !3993
  store i32 %call1, ptr %retval, align 4, !dbg !3994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3994

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %virtual_dir) #15, !dbg !3995
  %4 = load i32, ptr %retval, align 4, !dbg !3995
  ret i32 %4, !dbg !3995
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3996 dso_local ptr @virtual_device_parent(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @driver_find(ptr noundef %name, ptr noundef %bus) #0 align 16 !dbg !3999 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %k = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4003, metadata !DIExpression()), !dbg !4010
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4004, metadata !DIExpression()), !dbg !4011
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4005, metadata !DIExpression()), !dbg !4013
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4014
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4015
  store ptr %call, ptr %sp, align 8, !dbg !4013
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #15, !dbg !4016
  call void @llvm.dbg.declare(metadata ptr %k, metadata !4006, metadata !DIExpression()), !dbg !4017
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !4018
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !4007, metadata !DIExpression()), !dbg !4019
  %1 = load ptr, ptr %sp, align 8, !dbg !4020
  %tobool = icmp ne ptr %1, null, !dbg !4020
  br i1 %tobool, label %if.end, label %if.then, !dbg !4022

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4023

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !4024
  %drivers_kset = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 4, !dbg !4025
  %3 = load ptr, ptr %drivers_kset, align 8, !dbg !4025
  %4 = load ptr, ptr %name.addr, align 8, !dbg !4026
  %call1 = call ptr @kset_find_obj(ptr noundef %3, ptr noundef %4) #16, !dbg !4027
  store ptr %call1, ptr %k, align 8, !dbg !4028
  %5 = load ptr, ptr %sp, align 8, !dbg !4029
  call void @subsys_put(ptr noundef %5) #16, !dbg !4030
  %6 = load ptr, ptr %k, align 8, !dbg !4031
  %tobool2 = icmp ne ptr %6, null, !dbg !4031
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4033

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4034

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4035
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4008, metadata !DIExpression()), !dbg !4035
  %7 = load ptr, ptr %k, align 8, !dbg !4035
  store ptr %7, ptr %__mptr, align 8, !dbg !4035
  %8 = load ptr, ptr %__mptr, align 8, !dbg !4035
  %add.ptr = getelementptr i8, ptr %8, i64 0, !dbg !4035
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4036
  %9 = load ptr, ptr %tmp, align 8, !dbg !4035
  store ptr %9, ptr %priv, align 8, !dbg !4037
  %10 = load ptr, ptr %k, align 8, !dbg !4038
  call void @kobject_put(ptr noundef %10) #16, !dbg !4039
  %11 = load ptr, ptr %priv, align 8, !dbg !4040
  %driver = getelementptr inbounds %struct.driver_private, ptr %11, i32 0, i32 4, !dbg !4041
  %12 = load ptr, ptr %driver, align 8, !dbg !4041
  store ptr %12, ptr %retval, align 8, !dbg !4042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4042

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #15, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4043
  %13 = load ptr, ptr %retval, align 8, !dbg !4043
  ret ptr %13, !dbg !4043
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4044 dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @bus_is_registered(ptr noundef %bus) #0 align 16 !dbg !4047 {
entry:
  %bus.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %is_initialized = alloca i8, align 1
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4051, metadata !DIExpression()), !dbg !4054
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4055
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4052, metadata !DIExpression()), !dbg !4056
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4057
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4058
  store ptr %call, ptr %sp, align 8, !dbg !4056
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_initialized) #15, !dbg !4059
  call void @llvm.dbg.declare(metadata ptr %is_initialized, metadata !4053, metadata !DIExpression()), !dbg !4060
  store i8 0, ptr %is_initialized, align 1, !dbg !4060
  %1 = load ptr, ptr %sp, align 8, !dbg !4061
  %tobool = icmp ne ptr %1, null, !dbg !4061
  br i1 %tobool, label %if.then, label %if.end, !dbg !4063

if.then:                                          ; preds = %entry
  store i8 1, ptr %is_initialized, align 1, !dbg !4064
  %2 = load ptr, ptr %sp, align 8, !dbg !4066
  call void @subsys_put(ptr noundef %2) #16, !dbg !4067
  br label %if.end, !dbg !4068

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %is_initialized, align 1, !dbg !4069, !range !2748, !noundef !527
  %tobool1 = trunc i8 %3 to i1, !dbg !4069
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_initialized) #15, !dbg !4070
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4070
  ret i1 %tobool1, !dbg !4071
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @bus_get_dev_root(ptr noundef %bus) #0 align 16 !dbg !4072 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %dev_root = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4076, metadata !DIExpression()), !dbg !4079
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4080
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4077, metadata !DIExpression()), !dbg !4081
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4082
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4083
  store ptr %call, ptr %sp, align 8, !dbg !4081
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_root) #15, !dbg !4084
  call void @llvm.dbg.declare(metadata ptr %dev_root, metadata !4078, metadata !DIExpression()), !dbg !4085
  %1 = load ptr, ptr %sp, align 8, !dbg !4086
  %tobool = icmp ne ptr %1, null, !dbg !4086
  br i1 %tobool, label %if.end, label %if.then, !dbg !4088

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4089

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !4090
  %dev_root1 = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 10, !dbg !4091
  %3 = load ptr, ptr %dev_root1, align 8, !dbg !4091
  %call2 = call ptr @get_device(ptr noundef %3) #16, !dbg !4092
  store ptr %call2, ptr %dev_root, align 8, !dbg !4093
  %4 = load ptr, ptr %sp, align 8, !dbg !4094
  call void @subsys_put(ptr noundef %4) #16, !dbg !4095
  %5 = load ptr, ptr %dev_root, align 8, !dbg !4096
  store ptr %5, ptr %retval, align 8, !dbg !4097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4097

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_root) #15, !dbg !4098
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4098
  %6 = load ptr, ptr %retval, align 8, !dbg !4098
  ret ptr %6, !dbg !4098
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @buses_init() #8 section ".init.text" align 16 !dbg !4099 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @kset_create_and_add(ptr noundef @.str.10, ptr noundef @bus_uevent_ops, ptr noundef null) #16, !dbg !4100
  store ptr %call, ptr @bus_kset, align 8, !dbg !4101
  %0 = load ptr, ptr @bus_kset, align 8, !dbg !4102
  %tobool = icmp ne ptr %0, null, !dbg !4102
  br i1 %tobool, label %if.end, label %if.then, !dbg !4104

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4105
  br label %return, !dbg !4105

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @devices_kset, align 8, !dbg !4106
  %kobj = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, !dbg !4107
  %call1 = call ptr @kset_create_and_add(ptr noundef @.str.11, ptr noundef null, ptr noundef %kobj) #16, !dbg !4108
  store ptr %call1, ptr @system_kset, align 8, !dbg !4109
  %2 = load ptr, ptr @system_kset, align 8, !dbg !4110
  %tobool2 = icmp ne ptr %2, null, !dbg !4110
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4112

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4113
  br label %return, !dbg !4113

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4114
  br label %return, !dbg !4114

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4115
  ret i32 %3, !dbg !4115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !4116 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4120, metadata !DIExpression()), !dbg !4121
  br label %do.body, !dbg !4122

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4124

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4122
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4122
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4122
  store ptr %1, ptr %tmp, align 8, !dbg !4124
  %2 = load ptr, ptr %tmp, align 8, !dbg !4122
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4126
  %cmp = icmp eq ptr %2, %3, !dbg !4127
  %conv = zext i1 %cmp to i32, !dbg !4127
  ret i32 %conv, !dbg !4128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @subsys_get(ptr noundef %sp) #3 align 16 !dbg !4129 {
entry:
  %sp.addr = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !4133, metadata !DIExpression()), !dbg !4134
  %0 = load ptr, ptr %sp.addr, align 8, !dbg !4135
  %tobool = icmp ne ptr %0, null, !dbg !4135
  br i1 %tobool, label %if.then, label %if.end, !dbg !4137

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sp.addr, align 8, !dbg !4138
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %1, i32 0, i32 0, !dbg !4139
  %call = call ptr @kset_get(ptr noundef %subsys) #16, !dbg !4140
  br label %if.end, !dbg !4140

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %sp.addr, align 8, !dbg !4141
  ret ptr %2, !dbg !4142
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kset_get(ptr noundef %k) #3 align 16 !dbg !4143 {
entry:
  %k.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  %0 = load ptr, ptr %k.addr, align 8, !dbg !4149
  %tobool = icmp ne ptr %0, null, !dbg !4149
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4149

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %k.addr, align 8, !dbg !4150
  %kobj = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, !dbg !4151
  %call = call ptr @kobject_get(ptr noundef %kobj) #16, !dbg !4152
  %call1 = call ptr @to_kset(ptr noundef %call) #16, !dbg !4153
  br label %cond.end, !dbg !4149

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ], !dbg !4149
  ret ptr %cond, !dbg !4154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_kset(ptr noundef %kobj) #3 align 16 !dbg !4155 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4159, metadata !DIExpression()), !dbg !4162
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4163
  %tobool = icmp ne ptr %0, null, !dbg !4163
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4163

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4164
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4160, metadata !DIExpression()), !dbg !4164
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !4164
  store ptr %1, ptr %__mptr, align 8, !dbg !4164
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4164
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !4164
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4164
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4165
  %3 = load ptr, ptr %tmp, align 8, !dbg !4164
  br label %cond.end, !dbg !4163

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !4163
  ret ptr %cond, !dbg !4166
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4167 dso_local ptr @kobject_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4170 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kset_put(ptr noundef %k) #3 align 16 !dbg !4173 {
entry:
  %k.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !4175, metadata !DIExpression()), !dbg !4176
  %0 = load ptr, ptr %k.addr, align 8, !dbg !4177
  %kobj = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, !dbg !4178
  call void @kobject_put(ptr noundef %kobj) #16, !dbg !4179
  ret void, !dbg !4180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4181 dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4184 dso_local ptr @klist_next(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !4187 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4191
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4192
  %1 = load ptr, ptr %name, align 8, !dbg !4192
  ret ptr %1, !dbg !4193
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4194 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4196, metadata !DIExpression()), !dbg !4201
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4197, metadata !DIExpression()), !dbg !4202
  %0 = load i64, ptr %size.addr, align 8, !dbg !4203
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4204
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4205

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4206
  %tobool = icmp ne i64 %2, 0, !dbg !4206
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4207

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4208
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4198, metadata !DIExpression()), !dbg !4209
  %3 = load i64, ptr %size.addr, align 8, !dbg !4210
  %cmp = icmp ugt i64 %3, 8192, !dbg !4212
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4213

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4214
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4215
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !4216
  store ptr %call, ptr %retval, align 8, !dbg !4217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4217

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4218
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !4218
  store i32 %call2, ptr %index, align 4, !dbg !4219
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4220
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4221
  %9 = ptrtoint ptr %8 to i64, !dbg !4221
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !4222
  %idxprom = zext i32 %call3 to i64, !dbg !4223
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4223
  %10 = load i32, ptr %index, align 4, !dbg !4224
  %idxprom4 = zext i32 %10 to i64, !dbg !4223
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4223
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4223
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4225
  %13 = load i64, ptr %size.addr, align 8, !dbg !4226
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !4227
  store ptr %call6, ptr %retval, align 8, !dbg !4228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4228

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4229
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4230
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4231
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !4232
  store ptr %call8, ptr %retval, align 8, !dbg !4233
  br label %return, !dbg !4233

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4234
  ret ptr %16, !dbg !4234
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4235 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !4236 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4240, metadata !DIExpression()), !dbg !4242
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4241, metadata !DIExpression()), !dbg !4243
  %0 = load i64, ptr %size.addr, align 8, !dbg !4244
  %tobool = icmp ne i64 %0, 0, !dbg !4244
  br i1 %tobool, label %if.end, label %if.then, !dbg !4246

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4247
  br label %return, !dbg !4247

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4248
  %cmp = icmp ule i64 %1, 8, !dbg !4250
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4251

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4252
  br label %return, !dbg !4252

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4253
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4255
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4256

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4257
  %cmp4 = icmp ule i64 %3, 96, !dbg !4258
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4259

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4260
  br label %return, !dbg !4260

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4261
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4263
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4264

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4265
  %cmp9 = icmp ule i64 %5, 192, !dbg !4266
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4267

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4268
  br label %return, !dbg !4268

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4269
  %cmp12 = icmp ule i64 %6, 8, !dbg !4271
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4272

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4273
  br label %return, !dbg !4273

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4274
  %cmp15 = icmp ule i64 %7, 16, !dbg !4276
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4277

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4278
  br label %return, !dbg !4278

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4279
  %cmp18 = icmp ule i64 %8, 32, !dbg !4281
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4282

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4283
  br label %return, !dbg !4283

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4284
  %cmp21 = icmp ule i64 %9, 64, !dbg !4286
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4287

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4288
  br label %return, !dbg !4288

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4289
  %cmp24 = icmp ule i64 %10, 128, !dbg !4291
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4292

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4293
  br label %return, !dbg !4293

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4294
  %cmp27 = icmp ule i64 %11, 256, !dbg !4296
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4297

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4298
  br label %return, !dbg !4298

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4299
  %cmp30 = icmp ule i64 %12, 512, !dbg !4301
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4302

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4303
  br label %return, !dbg !4303

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4304
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4306
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4307

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4309
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4311
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4312

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4313
  br label %return, !dbg !4313

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4314
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4316
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4317

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4318
  br label %return, !dbg !4318

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4319
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4321
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4322

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4323
  br label %return, !dbg !4323

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4324
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4326
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4327

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4329
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4331
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4332

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4333
  br label %return, !dbg !4333

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4334
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4336
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4337

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4338
  br label %return, !dbg !4338

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4339
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4341
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4342

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4343
  br label %return, !dbg !4343

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4344
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4346
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4347

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4348
  br label %return, !dbg !4348

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4349
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4351
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4352

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4354
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4356
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4357

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4358
  br label %return, !dbg !4358

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4359
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4361
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4362

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4364, !range !2748, !noundef !527
  %tobool69 = trunc i8 %25 to i1, !dbg !4364
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4366

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4367

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !4368, !srcloc !4371
  unreachable, !dbg !4368

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4372

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4373

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4374

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4376

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4374

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 480, i32 0, i64 12) #15, !dbg !4378, !srcloc !4380
  br label %do.end75, !dbg !4378

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4374

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4381
  br label %return, !dbg !4381

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4382
  ret i32 %26, !dbg !4382
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4383 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !4389 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4393, metadata !DIExpression()), !dbg !4395
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4394, metadata !DIExpression()), !dbg !4396
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4397
  %and = and i32 %0, 17, !dbg !4397
  %cmp = icmp eq i32 %and, 0, !dbg !4397
  %lnot = xor i1 %cmp, true, !dbg !4397
  %lnot1 = xor i1 %lnot, true, !dbg !4397
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4397
  %conv = sext i32 %lnot.ext to i64, !dbg !4397
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4397
  %tobool = icmp ne i64 %expval, 0, !dbg !4397
  br i1 %tobool, label %if.then, label %if.end, !dbg !4399

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4400
  br label %return, !dbg !4400

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4401
  %and2 = and i32 %1, 1, !dbg !4403
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4403
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4404

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4405
  br label %return, !dbg !4405

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4406
  br label %return, !dbg !4406

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4408
  ret i32 %2, !dbg !4408
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4409 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4410 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @driver_release(ptr noundef %kobj) #0 align 16 !dbg !4411 {
entry:
  %kobj.addr = alloca ptr, align 8
  %drv_priv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4413, metadata !DIExpression()), !dbg !4417
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_priv) #15, !dbg !4418
  call void @llvm.dbg.declare(metadata ptr %drv_priv, metadata !4414, metadata !DIExpression()), !dbg !4419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4420
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4415, metadata !DIExpression()), !dbg !4420
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4420
  store ptr %0, ptr %__mptr, align 8, !dbg !4420
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4420
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4420
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4421
  %2 = load ptr, ptr %tmp, align 8, !dbg !4420
  store ptr %2, ptr %drv_priv, align 8, !dbg !4419
  store i32 0, ptr %tmp1, align 4, !dbg !4422
  %3 = load i32, ptr %tmp1, align 4, !dbg !4425
  %4 = load ptr, ptr %drv_priv, align 8, !dbg !4426
  call void @kfree(ptr noundef %4) #16, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_priv) #15, !dbg !4428
  ret void, !dbg !4428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drv_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4429 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %drv_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv_priv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4431, metadata !DIExpression()), !dbg !4441
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4432, metadata !DIExpression()), !dbg !4442
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4433, metadata !DIExpression()), !dbg !4443
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_attr) #15, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %drv_attr, metadata !4434, metadata !DIExpression()), !dbg !4445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4446
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4435, metadata !DIExpression()), !dbg !4446
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4446
  store ptr %0, ptr %__mptr, align 8, !dbg !4446
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4446
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4446
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4447
  %2 = load ptr, ptr %tmp, align 8, !dbg !4446
  store ptr %2, ptr %drv_attr, align 8, !dbg !4445
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_priv) #15, !dbg !4448
  call void @llvm.dbg.declare(metadata ptr %drv_priv, metadata !4437, metadata !DIExpression()), !dbg !4449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !4450
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4438, metadata !DIExpression()), !dbg !4450
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !4450
  store ptr %3, ptr %__mptr1, align 8, !dbg !4450
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4450
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !4450
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !4451
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4450
  store ptr %5, ptr %drv_priv, align 8, !dbg !4449
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4440, metadata !DIExpression()), !dbg !4453
  store i64 -5, ptr %ret, align 8, !dbg !4453
  %6 = load ptr, ptr %drv_attr, align 8, !dbg !4454
  %show = getelementptr inbounds %struct.driver_attribute, ptr %6, i32 0, i32 1, !dbg !4456
  %7 = load ptr, ptr %show, align 8, !dbg !4456
  %tobool = icmp ne ptr %7, null, !dbg !4454
  br i1 %tobool, label %if.then, label %if.end, !dbg !4457

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %drv_attr, align 8, !dbg !4458
  %show4 = getelementptr inbounds %struct.driver_attribute, ptr %8, i32 0, i32 1, !dbg !4459
  %9 = load ptr, ptr %show4, align 8, !dbg !4459
  %10 = load ptr, ptr %drv_priv, align 8, !dbg !4460
  %driver = getelementptr inbounds %struct.driver_private, ptr %10, i32 0, i32 4, !dbg !4461
  %11 = load ptr, ptr %driver, align 8, !dbg !4461
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !4462
  %call = call i64 %9(ptr noundef %11, ptr noundef %12) #16, !dbg !4458
  store i64 %call, ptr %ret, align 8, !dbg !4463
  br label %if.end, !dbg !4464

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, ptr %ret, align 8, !dbg !4465
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !4466
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_priv) #15, !dbg !4466
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_attr) #15, !dbg !4466
  ret i64 %13, !dbg !4467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drv_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4468 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %drv_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv_priv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4470, metadata !DIExpression()), !dbg !4481
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4471, metadata !DIExpression()), !dbg !4482
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4472, metadata !DIExpression()), !dbg !4483
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4473, metadata !DIExpression()), !dbg !4484
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_attr) #15, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %drv_attr, metadata !4474, metadata !DIExpression()), !dbg !4486
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4487
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4475, metadata !DIExpression()), !dbg !4487
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4487
  store ptr %0, ptr %__mptr, align 8, !dbg !4487
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4487
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4487
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4487
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4488
  %2 = load ptr, ptr %tmp, align 8, !dbg !4487
  store ptr %2, ptr %drv_attr, align 8, !dbg !4486
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_priv) #15, !dbg !4489
  call void @llvm.dbg.declare(metadata ptr %drv_priv, metadata !4477, metadata !DIExpression()), !dbg !4490
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !4491
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4478, metadata !DIExpression()), !dbg !4491
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !4491
  store ptr %3, ptr %__mptr1, align 8, !dbg !4491
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4491
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !4491
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4491
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !4492
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4491
  store ptr %5, ptr %drv_priv, align 8, !dbg !4490
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !4493
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4480, metadata !DIExpression()), !dbg !4494
  store i64 -5, ptr %ret, align 8, !dbg !4494
  %6 = load ptr, ptr %drv_attr, align 8, !dbg !4495
  %store = getelementptr inbounds %struct.driver_attribute, ptr %6, i32 0, i32 2, !dbg !4497
  %7 = load ptr, ptr %store, align 8, !dbg !4497
  %tobool = icmp ne ptr %7, null, !dbg !4495
  br i1 %tobool, label %if.then, label %if.end, !dbg !4498

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %drv_attr, align 8, !dbg !4499
  %store4 = getelementptr inbounds %struct.driver_attribute, ptr %8, i32 0, i32 2, !dbg !4500
  %9 = load ptr, ptr %store4, align 8, !dbg !4500
  %10 = load ptr, ptr %drv_priv, align 8, !dbg !4501
  %driver = getelementptr inbounds %struct.driver_private, ptr %10, i32 0, i32 4, !dbg !4502
  %11 = load ptr, ptr %driver, align 8, !dbg !4502
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !4503
  %13 = load i64, ptr %count.addr, align 8, !dbg !4504
  %call = call i64 %9(ptr noundef %11, ptr noundef %12, i64 noundef %13) #16, !dbg !4499
  store i64 %call, ptr %ret, align 8, !dbg !4505
  br label %if.end, !dbg !4506

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, ptr %ret, align 8, !dbg !4507
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !4508
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_priv) #15, !dbg !4508
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_attr) #15, !dbg !4508
  ret i64 %14, !dbg !4509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @uevent_store(ptr noundef %drv, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4510 {
entry:
  %drv.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4512, metadata !DIExpression()), !dbg !4516
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4513, metadata !DIExpression()), !dbg !4517
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4514, metadata !DIExpression()), !dbg !4518
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !4519
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4515, metadata !DIExpression()), !dbg !4520
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4521
  %p = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18, !dbg !4522
  %1 = load ptr, ptr %p, align 8, !dbg !4522
  %kobj = getelementptr inbounds %struct.driver_private, ptr %1, i32 0, i32 0, !dbg !4523
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4524
  %3 = load i64, ptr %count.addr, align 8, !dbg !4525
  %call = call i32 @kobject_synth_uevent(ptr noundef %kobj, ptr noundef %2, i64 noundef %3) #16, !dbg !4526
  store i32 %call, ptr %rc, align 4, !dbg !4527
  %4 = load i32, ptr %rc, align 4, !dbg !4528
  %tobool = icmp ne i32 %4, 0, !dbg !4528
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4528

cond.true:                                        ; preds = %entry
  %5 = load i32, ptr %rc, align 4, !dbg !4529
  %conv = sext i32 %5 to i64, !dbg !4529
  br label %cond.end, !dbg !4528

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %count.addr, align 8, !dbg !4530
  br label %cond.end, !dbg !4528

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %6, %cond.false ], !dbg !4528
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !4531
  ret i64 %cond, !dbg !4532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4533 dso_local i32 @kobject_synth_uevent(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @unbind_store(ptr noundef %drv, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4536 {
entry:
  %drv.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %bus = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4538, metadata !DIExpression()), !dbg !4544
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4539, metadata !DIExpression()), !dbg !4545
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4540, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #15, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !4541, metadata !DIExpression()), !dbg !4548
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4549
  %bus1 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !4550
  %1 = load ptr, ptr %bus1, align 8, !dbg !4550
  %call = call ptr @bus_get(ptr noundef %1) #16, !dbg !4551
  store ptr %call, ptr %bus, align 8, !dbg !4548
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !4552
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4542, metadata !DIExpression()), !dbg !4553
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4554
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4543, metadata !DIExpression()), !dbg !4555
  store i32 -19, ptr %err, align 4, !dbg !4555
  %2 = load ptr, ptr %bus, align 8, !dbg !4556
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4557
  %call2 = call ptr @bus_find_device_by_name(ptr noundef %2, ptr noundef null, ptr noundef %3) #16, !dbg !4558
  store ptr %call2, ptr %dev, align 8, !dbg !4559
  %4 = load ptr, ptr %dev, align 8, !dbg !4560
  %tobool = icmp ne ptr %4, null, !dbg !4560
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4562

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %dev, align 8, !dbg !4563
  %driver = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6, !dbg !4564
  %6 = load ptr, ptr %driver, align 8, !dbg !4564
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !4565
  %cmp = icmp eq ptr %6, %7, !dbg !4566
  br i1 %cmp, label %if.then, label %if.end, !dbg !4567

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %dev, align 8, !dbg !4568
  call void @device_driver_detach(ptr noundef %8) #16, !dbg !4570
  %9 = load i64, ptr %count.addr, align 8, !dbg !4571
  %conv = trunc i64 %9 to i32, !dbg !4571
  store i32 %conv, ptr %err, align 4, !dbg !4572
  br label %if.end, !dbg !4573

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %dev, align 8, !dbg !4574
  call void @put_device(ptr noundef %10) #16, !dbg !4575
  %11 = load ptr, ptr %bus, align 8, !dbg !4576
  call void @bus_put(ptr noundef %11) #16, !dbg !4577
  %12 = load i32, ptr %err, align 4, !dbg !4578
  %conv3 = sext i32 %12 to i64, !dbg !4578
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4579
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !4579
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #15, !dbg !4579
  ret i64 %conv3, !dbg !4580
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bus_get(ptr noundef %bus) #0 align 16 !dbg !4581 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4585, metadata !DIExpression()), !dbg !4587
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4588
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4586, metadata !DIExpression()), !dbg !4589
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4590
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4591
  store ptr %call, ptr %sp, align 8, !dbg !4589
  %1 = load ptr, ptr %sp, align 8, !dbg !4592
  %tobool = icmp ne ptr %1, null, !dbg !4592
  br i1 %tobool, label %if.then, label %if.end, !dbg !4594

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !4595
  store ptr %2, ptr %retval, align 8, !dbg !4596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4596

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4597

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4598
  %3 = load ptr, ptr %retval, align 8, !dbg !4598
  ret ptr %3, !dbg !4598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bus_find_device_by_name(ptr noundef %bus, ptr noundef %start, ptr noundef %name) #3 align 16 !dbg !4599 {
entry:
  %bus.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4603, metadata !DIExpression()), !dbg !4606
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4604, metadata !DIExpression()), !dbg !4607
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4605, metadata !DIExpression()), !dbg !4608
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4609
  %1 = load ptr, ptr %start.addr, align 8, !dbg !4610
  %2 = load ptr, ptr %name.addr, align 8, !dbg !4611
  %call = call ptr @bus_find_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @device_match_name) #16, !dbg !4612
  ret ptr %call, !dbg !4613
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4614 dso_local void @put_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bus_put(ptr noundef %bus) #0 align 16 !dbg !4615 {
entry:
  %bus.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4617, metadata !DIExpression()), !dbg !4619
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4620
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4618, metadata !DIExpression()), !dbg !4621
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4622
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4623
  store ptr %call, ptr %sp, align 8, !dbg !4621
  %1 = load ptr, ptr %sp, align 8, !dbg !4624
  call void @subsys_put(ptr noundef %1) #16, !dbg !4625
  %2 = load ptr, ptr %sp, align 8, !dbg !4626
  call void @subsys_put(ptr noundef %2) #16, !dbg !4627
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4628
  ret void, !dbg !4628
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bind_store(ptr noundef %drv, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4629 {
entry:
  %drv.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %bus = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4631, metadata !DIExpression()), !dbg !4637
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4632, metadata !DIExpression()), !dbg !4638
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4633, metadata !DIExpression()), !dbg !4639
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #15, !dbg !4640
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !4634, metadata !DIExpression()), !dbg !4641
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4642
  %bus1 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !4643
  %1 = load ptr, ptr %bus1, align 8, !dbg !4643
  %call = call ptr @bus_get(ptr noundef %1) #16, !dbg !4644
  store ptr %call, ptr %bus, align 8, !dbg !4641
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !4645
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4635, metadata !DIExpression()), !dbg !4646
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4647
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4636, metadata !DIExpression()), !dbg !4648
  store i32 -19, ptr %err, align 4, !dbg !4648
  %2 = load ptr, ptr %bus, align 8, !dbg !4649
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4650
  %call2 = call ptr @bus_find_device_by_name(ptr noundef %2, ptr noundef null, ptr noundef %3) #16, !dbg !4651
  store ptr %call2, ptr %dev, align 8, !dbg !4652
  %4 = load ptr, ptr %dev, align 8, !dbg !4653
  %tobool = icmp ne ptr %4, null, !dbg !4653
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !4655

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %drv.addr, align 8, !dbg !4656
  %6 = load ptr, ptr %dev, align 8, !dbg !4657
  %call3 = call i32 @driver_match_device(ptr noundef %5, ptr noundef %6) #16, !dbg !4658
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4658
  br i1 %tobool4, label %if.then, label %if.end8, !dbg !4659

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !4660
  %8 = load ptr, ptr %dev, align 8, !dbg !4662
  %call5 = call i32 @device_driver_attach(ptr noundef %7, ptr noundef %8) #16, !dbg !4663
  store i32 %call5, ptr %err, align 4, !dbg !4664
  %9 = load i32, ptr %err, align 4, !dbg !4665
  %tobool6 = icmp ne i32 %9, 0, !dbg !4665
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !4667

if.then7:                                         ; preds = %if.then
  %10 = load i64, ptr %count.addr, align 8, !dbg !4668
  %conv = trunc i64 %10 to i32, !dbg !4668
  store i32 %conv, ptr %err, align 4, !dbg !4670
  br label %if.end, !dbg !4671

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8, !dbg !4672

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  %11 = load ptr, ptr %dev, align 8, !dbg !4673
  call void @put_device(ptr noundef %11) #16, !dbg !4674
  %12 = load ptr, ptr %bus, align 8, !dbg !4675
  call void @bus_put(ptr noundef %12) #16, !dbg !4676
  %13 = load i32, ptr %err, align 4, !dbg !4677
  %conv9 = sext i32 %13 to i64, !dbg !4677
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4678
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !4678
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #15, !dbg !4678
  ret i64 %conv9, !dbg !4679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @driver_match_device(ptr noundef %drv, ptr noundef %dev) #3 align 16 !dbg !4680 {
entry:
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4684, metadata !DIExpression()), !dbg !4686
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4685, metadata !DIExpression()), !dbg !4687
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4688
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !4689
  %1 = load ptr, ptr %bus, align 8, !dbg !4689
  %match = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 5, !dbg !4690
  %2 = load ptr, ptr %match, align 8, !dbg !4690
  %tobool = icmp ne ptr %2, null, !dbg !4688
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4688

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !4691
  %bus1 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 1, !dbg !4692
  %4 = load ptr, ptr %bus1, align 8, !dbg !4692
  %match2 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 5, !dbg !4693
  %5 = load ptr, ptr %match2, align 8, !dbg !4693
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !4694
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !4695
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #16, !dbg !4691
  br label %cond.end, !dbg !4688

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4688

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %cond.false ], !dbg !4688
  ret i32 %cond, !dbg !4696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4697 dso_local i32 @device_driver_attach(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_lock(ptr noundef %dev) #3 align 16 !dbg !4698 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4700, metadata !DIExpression()), !dbg !4701
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4702
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !4703
  call void @mutex_lock(ptr noundef %mutex) #16, !dbg !4704
  ret void, !dbg !4705
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4706 dso_local i32 @device_attach(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_unlock(ptr noundef %dev) #3 align 16 !dbg !4707 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4711
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !4712
  call void @mutex_unlock(ptr noundef %mutex) #16, !dbg !4713
  ret void, !dbg !4714
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bus_release(ptr noundef %kobj) #0 align 16 !dbg !4715 {
entry:
  %kobj.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4717, metadata !DIExpression()), !dbg !4721
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #15, !dbg !4722
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !4718, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4719, metadata !DIExpression()), !dbg !4724
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4724
  store ptr %0, ptr %__mptr, align 8, !dbg !4724
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4724
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !4724
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4725
  %2 = load ptr, ptr %tmp, align 8, !dbg !4724
  store ptr %2, ptr %priv, align 8, !dbg !4723
  %3 = load ptr, ptr %priv, align 8, !dbg !4726
  %lock_key = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 13, !dbg !4727
  call void @lockdep_unregister_key(ptr noundef %lock_key) #16, !dbg !4728
  %4 = load ptr, ptr %priv, align 8, !dbg !4729
  call void @kfree(ptr noundef %4) #16, !dbg !4730
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #15, !dbg !4731
  ret void, !dbg !4731
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lockdep_unregister_key(ptr noundef %key) #3 align 16 !dbg !4732 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  ret void, !dbg !4736
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bus_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4737 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bus_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %subsys_priv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4739, metadata !DIExpression()), !dbg !4749
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4740, metadata !DIExpression()), !dbg !4750
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4741, metadata !DIExpression()), !dbg !4751
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_attr) #15, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %bus_attr, metadata !4742, metadata !DIExpression()), !dbg !4753
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4754
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4743, metadata !DIExpression()), !dbg !4754
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4754
  store ptr %0, ptr %__mptr, align 8, !dbg !4754
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4754
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4754
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4754
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4755
  %2 = load ptr, ptr %tmp, align 8, !dbg !4754
  store ptr %2, ptr %bus_attr, align 8, !dbg !4753
  call void @llvm.lifetime.start.p0(i64 8, ptr %subsys_priv) #15, !dbg !4756
  call void @llvm.dbg.declare(metadata ptr %subsys_priv, metadata !4745, metadata !DIExpression()), !dbg !4757
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !4758
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4746, metadata !DIExpression()), !dbg !4758
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !4758
  store ptr %3, ptr %__mptr1, align 8, !dbg !4758
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4758
  %add.ptr3 = getelementptr i8, ptr %4, i64 -24, !dbg !4758
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4758
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !4759
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4758
  store ptr %5, ptr %subsys_priv, align 8, !dbg !4757
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !4760
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4748, metadata !DIExpression()), !dbg !4761
  store i64 -5, ptr %ret, align 8, !dbg !4761
  %6 = load ptr, ptr %bus_attr, align 8, !dbg !4762
  %show = getelementptr inbounds %struct.bus_attribute, ptr %6, i32 0, i32 1, !dbg !4764
  %7 = load ptr, ptr %show, align 8, !dbg !4764
  %tobool = icmp ne ptr %7, null, !dbg !4762
  br i1 %tobool, label %if.then, label %if.end, !dbg !4765

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %bus_attr, align 8, !dbg !4766
  %show4 = getelementptr inbounds %struct.bus_attribute, ptr %8, i32 0, i32 1, !dbg !4767
  %9 = load ptr, ptr %show4, align 8, !dbg !4767
  %10 = load ptr, ptr %subsys_priv, align 8, !dbg !4768
  %bus = getelementptr inbounds %struct.subsys_private, ptr %10, i32 0, i32 9, !dbg !4769
  %11 = load ptr, ptr %bus, align 8, !dbg !4769
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !4770
  %call = call i64 %9(ptr noundef %11, ptr noundef %12) #16, !dbg !4766
  store i64 %call, ptr %ret, align 8, !dbg !4771
  br label %if.end, !dbg !4772

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, ptr %ret, align 8, !dbg !4773
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !4774
  call void @llvm.lifetime.end.p0(i64 8, ptr %subsys_priv) #15, !dbg !4774
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_attr) #15, !dbg !4774
  ret i64 %13, !dbg !4775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bus_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4776 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %bus_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %subsys_priv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4778, metadata !DIExpression()), !dbg !4789
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4779, metadata !DIExpression()), !dbg !4790
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4780, metadata !DIExpression()), !dbg !4791
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4781, metadata !DIExpression()), !dbg !4792
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_attr) #15, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %bus_attr, metadata !4782, metadata !DIExpression()), !dbg !4794
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4783, metadata !DIExpression()), !dbg !4795
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4795
  store ptr %0, ptr %__mptr, align 8, !dbg !4795
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4795
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4795
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4796
  %2 = load ptr, ptr %tmp, align 8, !dbg !4795
  store ptr %2, ptr %bus_attr, align 8, !dbg !4794
  call void @llvm.lifetime.start.p0(i64 8, ptr %subsys_priv) #15, !dbg !4797
  call void @llvm.dbg.declare(metadata ptr %subsys_priv, metadata !4785, metadata !DIExpression()), !dbg !4798
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4786, metadata !DIExpression()), !dbg !4799
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !4799
  store ptr %3, ptr %__mptr1, align 8, !dbg !4799
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4799
  %add.ptr3 = getelementptr i8, ptr %4, i64 -24, !dbg !4799
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !4800
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4799
  store ptr %5, ptr %subsys_priv, align 8, !dbg !4798
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !4801
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4788, metadata !DIExpression()), !dbg !4802
  store i64 -5, ptr %ret, align 8, !dbg !4802
  %6 = load ptr, ptr %bus_attr, align 8, !dbg !4803
  %store = getelementptr inbounds %struct.bus_attribute, ptr %6, i32 0, i32 2, !dbg !4805
  %7 = load ptr, ptr %store, align 8, !dbg !4805
  %tobool = icmp ne ptr %7, null, !dbg !4803
  br i1 %tobool, label %if.then, label %if.end, !dbg !4806

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %bus_attr, align 8, !dbg !4807
  %store4 = getelementptr inbounds %struct.bus_attribute, ptr %8, i32 0, i32 2, !dbg !4808
  %9 = load ptr, ptr %store4, align 8, !dbg !4808
  %10 = load ptr, ptr %subsys_priv, align 8, !dbg !4809
  %bus = getelementptr inbounds %struct.subsys_private, ptr %10, i32 0, i32 9, !dbg !4810
  %11 = load ptr, ptr %bus, align 8, !dbg !4810
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !4811
  %13 = load i64, ptr %count.addr, align 8, !dbg !4812
  %call = call i64 %9(ptr noundef %11, ptr noundef %12, i64 noundef %13) #16, !dbg !4807
  store i64 %call, ptr %ret, align 8, !dbg !4813
  br label %if.end, !dbg !4814

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, ptr %ret, align 8, !dbg !4815
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !4816
  call void @llvm.lifetime.end.p0(i64 8, ptr %subsys_priv) #15, !dbg !4816
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_attr) #15, !dbg !4816
  ret i64 %14, !dbg !4817
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bus_uevent_store(ptr noundef %bus, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4818 {
entry:
  %retval = alloca i64, align 8
  %bus.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4820, metadata !DIExpression()), !dbg !4825
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4821, metadata !DIExpression()), !dbg !4826
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4822, metadata !DIExpression()), !dbg !4827
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4828
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4823, metadata !DIExpression()), !dbg !4829
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4830
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4831
  store ptr %call, ptr %sp, align 8, !dbg !4829
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4824, metadata !DIExpression()), !dbg !4833
  %1 = load ptr, ptr %sp, align 8, !dbg !4834
  %tobool = icmp ne ptr %1, null, !dbg !4834
  br i1 %tobool, label %if.end, label %if.then, !dbg !4836

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4837

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sp, align 8, !dbg !4838
  %subsys = getelementptr inbounds %struct.subsys_private, ptr %2, i32 0, i32 0, !dbg !4839
  %kobj = getelementptr inbounds %struct.kset, ptr %subsys, i32 0, i32 2, !dbg !4840
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4841
  %4 = load i64, ptr %count.addr, align 8, !dbg !4842
  %call1 = call i32 @kobject_synth_uevent(ptr noundef %kobj, ptr noundef %3, i64 noundef %4) #16, !dbg !4843
  store i32 %call1, ptr %ret, align 4, !dbg !4844
  %5 = load ptr, ptr %sp, align 8, !dbg !4845
  call void @subsys_put(ptr noundef %5) #16, !dbg !4846
  %6 = load i32, ptr %ret, align 4, !dbg !4847
  %tobool2 = icmp ne i32 %6, 0, !dbg !4847
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4849

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !4850
  %conv = sext i32 %7 to i64, !dbg !4850
  store i64 %conv, ptr %retval, align 8, !dbg !4851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4851

if.end4:                                          ; preds = %if.end
  %8 = load i64, ptr %count.addr, align 8, !dbg !4852
  store i64 %8, ptr %retval, align 8, !dbg !4853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4853

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4854
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4854
  %9 = load i64, ptr %retval, align 8, !dbg !4854
  ret i64 %9, !dbg !4854
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drivers_probe_store(ptr noundef %bus, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4855 {
entry:
  %retval = alloca i64, align 8
  %bus.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4857, metadata !DIExpression()), !dbg !4862
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4858, metadata !DIExpression()), !dbg !4863
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4859, metadata !DIExpression()), !dbg !4864
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !4865
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4860, metadata !DIExpression()), !dbg !4866
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4867
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4861, metadata !DIExpression()), !dbg !4868
  store i32 -22, ptr %err, align 4, !dbg !4868
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4869
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4870
  %call = call ptr @bus_find_device_by_name(ptr noundef %0, ptr noundef null, ptr noundef %1) #16, !dbg !4871
  store ptr %call, ptr %dev, align 8, !dbg !4872
  %2 = load ptr, ptr %dev, align 8, !dbg !4873
  %tobool = icmp ne ptr %2, null, !dbg !4873
  br i1 %tobool, label %if.end, label %if.then, !dbg !4875

if.then:                                          ; preds = %entry
  store i64 -19, ptr %retval, align 8, !dbg !4876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4876

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !4877
  %call1 = call i32 @bus_rescan_devices_helper(ptr noundef %3, ptr noundef null) #16, !dbg !4879
  %cmp = icmp eq i32 %call1, 0, !dbg !4880
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4881

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr %count.addr, align 8, !dbg !4882
  %conv = trunc i64 %4 to i32, !dbg !4882
  store i32 %conv, ptr %err, align 4, !dbg !4883
  br label %if.end3, !dbg !4884

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %dev, align 8, !dbg !4885
  call void @put_device(ptr noundef %5) #16, !dbg !4886
  %6 = load i32, ptr %err, align 4, !dbg !4887
  %conv4 = sext i32 %6 to i64, !dbg !4887
  store i64 %conv4, ptr %retval, align 8, !dbg !4888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4888

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4889
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !4889
  %7 = load i64, ptr %retval, align 8, !dbg !4889
  ret i64 %7, !dbg !4889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drivers_autoprobe_show(ptr noundef %bus, ptr noundef %buf) #0 align 16 !dbg !4890 {
entry:
  %retval = alloca i64, align 8
  %bus.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4892, metadata !DIExpression()), !dbg !4896
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4893, metadata !DIExpression()), !dbg !4897
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4898
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4894, metadata !DIExpression()), !dbg !4899
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4900
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4901
  store ptr %call, ptr %sp, align 8, !dbg !4899
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4895, metadata !DIExpression()), !dbg !4903
  %1 = load ptr, ptr %sp, align 8, !dbg !4904
  %tobool = icmp ne ptr %1, null, !dbg !4904
  br i1 %tobool, label %if.end, label %if.then, !dbg !4906

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4907

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4908
  %3 = load ptr, ptr %sp, align 8, !dbg !4909
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 8, !dbg !4910
  %bf.load = load i8, ptr %drivers_autoprobe, align 8, !dbg !4910
  %bf.clear = and i8 %bf.load, 1, !dbg !4910
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4910
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.18, i32 noundef %bf.cast) #16, !dbg !4911
  store i32 %call1, ptr %ret, align 4, !dbg !4912
  %4 = load ptr, ptr %sp, align 8, !dbg !4913
  call void @subsys_put(ptr noundef %4) #16, !dbg !4914
  %5 = load i32, ptr %ret, align 4, !dbg !4915
  %conv = sext i32 %5 to i64, !dbg !4915
  store i64 %conv, ptr %retval, align 8, !dbg !4916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4916

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4917
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4917
  %6 = load i64, ptr %retval, align 8, !dbg !4917
  ret i64 %6, !dbg !4917
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drivers_autoprobe_store(ptr noundef %bus, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !4918 {
entry:
  %retval = alloca i64, align 8
  %bus.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4920, metadata !DIExpression()), !dbg !4924
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4921, metadata !DIExpression()), !dbg !4925
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4922, metadata !DIExpression()), !dbg !4926
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #15, !dbg !4927
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !4923, metadata !DIExpression()), !dbg !4928
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4929
  %call = call ptr @bus_to_subsys(ptr noundef %0) #16, !dbg !4930
  store ptr %call, ptr %sp, align 8, !dbg !4928
  %1 = load ptr, ptr %sp, align 8, !dbg !4931
  %tobool = icmp ne ptr %1, null, !dbg !4931
  br i1 %tobool, label %if.end, label %if.then, !dbg !4933

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4934

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4935
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !4935
  %3 = load i8, ptr %arrayidx, align 1, !dbg !4935
  %conv = zext i8 %3 to i32, !dbg !4935
  %cmp = icmp eq i32 %conv, 48, !dbg !4937
  br i1 %cmp, label %if.then2, label %if.else, !dbg !4938

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %sp, align 8, !dbg !4939
  %drivers_autoprobe = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 8, !dbg !4940
  %bf.load = load i8, ptr %drivers_autoprobe, align 8, !dbg !4941
  %bf.clear = and i8 %bf.load, -2, !dbg !4941
  %bf.set = or i8 %bf.clear, 0, !dbg !4941
  store i8 %bf.set, ptr %drivers_autoprobe, align 8, !dbg !4941
  br label %if.end7, !dbg !4939

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %sp, align 8, !dbg !4942
  %drivers_autoprobe3 = getelementptr inbounds %struct.subsys_private, ptr %5, i32 0, i32 8, !dbg !4943
  %bf.load4 = load i8, ptr %drivers_autoprobe3, align 8, !dbg !4944
  %bf.clear5 = and i8 %bf.load4, -2, !dbg !4944
  %bf.set6 = or i8 %bf.clear5, 1, !dbg !4944
  store i8 %bf.set6, ptr %drivers_autoprobe3, align 8, !dbg !4944
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %6 = load ptr, ptr %sp, align 8, !dbg !4945
  call void @subsys_put(ptr noundef %6) #16, !dbg !4946
  %7 = load i64, ptr %count.addr, align 8, !dbg !4947
  store i64 %7, ptr %retval, align 8, !dbg !4948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4948

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #15, !dbg !4949
  %8 = load i64, ptr %retval, align 8, !dbg !4949
  ret i64 %8, !dbg !4949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4950 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4953 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !4958 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4960, metadata !DIExpression()), !dbg !4962
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4961, metadata !DIExpression()), !dbg !4963
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4964
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !4965
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4966
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4967
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #16, !dbg !4968
  ret void, !dbg !4969
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !4970 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4974
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !4976
  br i1 %call, label %if.end, label %if.then, !dbg !4977

if.then:                                          ; preds = %entry
  br label %return, !dbg !4978

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4979
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4980
  %2 = load ptr, ptr %prev, align 8, !dbg !4980
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4981
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4982
  %4 = load ptr, ptr %next, align 8, !dbg !4982
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !4983
  br label %return, !dbg !4984

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !4985 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  ret i1 true, !dbg !4991
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4992 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4994, metadata !DIExpression()), !dbg !4996
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4995, metadata !DIExpression()), !dbg !4997
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4998
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4999
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5000
  store ptr %0, ptr %prev1, align 8, !dbg !5001
  br label %do.body, !dbg !5002

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5003

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5005

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5003

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5007
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5007
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5007
  store volatile ptr %2, ptr %next4, align 8, !dbg !5007
  br label %do.end5, !dbg !5007

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5003

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5009
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5010 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5014, metadata !DIExpression()), !dbg !5019
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5015, metadata !DIExpression()), !dbg !5020
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5016, metadata !DIExpression()), !dbg !5021
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #15, !dbg !5022
  call void @llvm.dbg.declare(metadata ptr %first, metadata !5017, metadata !DIExpression()), !dbg !5023
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5024
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5025
  %1 = load ptr, ptr %next1, align 8, !dbg !5025
  store ptr %1, ptr %first, align 8, !dbg !5023
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #15, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5018, metadata !DIExpression()), !dbg !5027
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5028
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5029
  %3 = load ptr, ptr %prev2, align 8, !dbg !5029
  store ptr %3, ptr %last, align 8, !dbg !5027
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !5030
  %5 = load ptr, ptr %first, align 8, !dbg !5031
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !5032
  store ptr %4, ptr %prev3, align 8, !dbg !5033
  %6 = load ptr, ptr %first, align 8, !dbg !5034
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5035
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !5036
  store ptr %6, ptr %next4, align 8, !dbg !5037
  %8 = load ptr, ptr %next.addr, align 8, !dbg !5038
  %9 = load ptr, ptr %last, align 8, !dbg !5039
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !5040
  store ptr %8, ptr %next5, align 8, !dbg !5041
  %10 = load ptr, ptr %last, align 8, !dbg !5042
  %11 = load ptr, ptr %next.addr, align 8, !dbg !5043
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !5044
  store ptr %10, ptr %prev6, align 8, !dbg !5045
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #15, !dbg !5046
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #15, !dbg !5046
  ret void, !dbg !5046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5047 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5048 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5052, metadata !DIExpression()), !dbg !5055
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5053, metadata !DIExpression()), !dbg !5056
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5054, metadata !DIExpression()), !dbg !5057
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5058
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5060
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5061
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5062
  br i1 %call, label %if.end, label %if.then, !dbg !5063

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5064

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5065
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5066
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5067
  store ptr %3, ptr %prev1, align 8, !dbg !5068
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5069
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5070
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5071
  store ptr %5, ptr %next2, align 8, !dbg !5072
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5073
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5074
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5075
  store ptr %7, ptr %prev3, align 8, !dbg !5076
  br label %do.body, !dbg !5077

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5078

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5080

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5078

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5082
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5082
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5082
  store volatile ptr %9, ptr %next6, align 8, !dbg !5082
  br label %do.end7, !dbg !5082

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5078

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5084
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5085 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5089, metadata !DIExpression()), !dbg !5092
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5090, metadata !DIExpression()), !dbg !5093
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5091, metadata !DIExpression()), !dbg !5094
  ret i1 true, !dbg !5095
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5096 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @system_root_device_release(ptr noundef %dev) #0 align 16 !dbg !5099 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5103
  call void @kfree(ptr noundef %0) #16, !dbg !5104
  ret void, !dbg !5105
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5106 dso_local i32 @device_register(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bus_uevent_filter(ptr noundef %kobj) #0 align 16 !dbg !5107 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %ktype = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5109, metadata !DIExpression()), !dbg !5111
  call void @llvm.lifetime.start.p0(i64 8, ptr %ktype) #15, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %ktype, metadata !5110, metadata !DIExpression()), !dbg !5113
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5114
  %call = call ptr @get_ktype(ptr noundef %0) #16, !dbg !5115
  store ptr %call, ptr %ktype, align 8, !dbg !5113
  %1 = load ptr, ptr %ktype, align 8, !dbg !5116
  %cmp = icmp eq ptr %1, @bus_ktype, !dbg !5118
  br i1 %cmp, label %if.then, label %if.end, !dbg !5119

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5120

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5121

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ktype) #15, !dbg !5122
  %2 = load i32, ptr %retval, align 4, !dbg !5122
  ret i32 %2, !dbg !5122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_ktype(ptr noundef %kobj) #3 align 16 !dbg !5123 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5129
  %ktype = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4, !dbg !5130
  %1 = load ptr, ptr %ktype, align 8, !dbg !5130
  ret ptr %1, !dbg !5131
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937}
!llvm.ident = !{!1938}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_create_file205", scope: !2, file: !3, line: 194, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.bus.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/bus\22 -D KBUILD_BASENAME=\22bus\22 -D KBUILD_MODNAME=\22bus\22 -D __KBUILD_MODNAME=kmod_bus -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/bus.ll drivers/base/bus.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !1769, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/bus.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a6e60e9cf8fafe1e9a26886af96a7e7")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !79, !84, !89, !95, !106, !111}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !54, line: 41, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!57 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!58 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !54, line: 99, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!62 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!63 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!64 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!65 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !54, line: 80, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!69 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!73 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!74 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!75 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!76 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!77 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!78 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!82 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!87 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!88 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!92 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!93 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!94 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bus_notifier_event", file: !96, line: 268, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105}
!98 = !DIEnumerator(name: "BUS_NOTIFY_ADD_DEVICE", value: 0)
!99 = !DIEnumerator(name: "BUS_NOTIFY_DEL_DEVICE", value: 1)
!100 = !DIEnumerator(name: "BUS_NOTIFY_REMOVED_DEVICE", value: 2)
!101 = !DIEnumerator(name: "BUS_NOTIFY_BIND_DRIVER", value: 3)
!102 = !DIEnumerator(name: "BUS_NOTIFY_BOUND_DRIVER", value: 4)
!103 = !DIEnumerator(name: "BUS_NOTIFY_UNBIND_DRIVER", value: 5)
!104 = !DIEnumerator(name: "BUS_NOTIFY_UNBOUND_DRIVER", value: 6)
!105 = !DIEnumerator(name: "BUS_NOTIFY_DRIVER_NOT_BOUND", value: 7)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 10, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "false", value: 0)
!110 = !DIEnumerator(name: "true", value: 1)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !112, line: 364, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!113 = !{!114, !115, !116, !117, !118, !119, !120}
!114 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!115 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!116 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!117 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!118 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!119 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!120 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!121 = !{!122, !123, !1722, !827, !813, !1287, !151, !164, !1723, !1741, !286, !1744, !1756, !1768}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_interface", file: !26, line: 64, size: 384, elements: !125)
!125 = !{!126, !130, !1713, !1714, !1718}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !26, line: 65, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !124, file: !26, line: 66, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !96, line: 80, size: 1344, elements: !133)
!133 = !{!134, !135, !136, !801, !802, !803, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1712}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !96, line: 81, baseType: !127, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !132, file: !96, line: 82, baseType: !127, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !132, file: !96, line: 83, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !141, line: 84, size: 320, elements: !142)
!141 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!142 = !{!143, !144, !772, !797, !799}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 85, baseType: !127, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !140, file: !141, line: 86, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !151, !274, !46}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !149, line: 24, baseType: !150)
!149 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !153, line: 64, size: 512, elements: !154)
!153 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!154 = !{!155, !156, !162, !163, !251, !346, !757, !767, !768, !769, !770, !771}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !153, line: 65, baseType: !127, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !152, file: !153, line: 66, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !149, line: 190, size: 128, elements: !158)
!158 = !{!159, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !149, line: 191, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !149, line: 191, baseType: !160, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !153, line: 67, baseType: !151, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !152, file: !153, line: 68, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !153, line: 168, size: 768, elements: !166)
!166 = !{!167, !168, !210, !211}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !153, line: 169, baseType: !157, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !165, file: !153, line: 170, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 29, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 17, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 18, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 18, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 19, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !178, line: 14, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !178, line: 15, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !182, line: 44, baseType: !183)
!182 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !182, line: 14, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !182, line: 15, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !182, line: 15, size: 32, elements: !187)
!187 = !{!188, !193, !203}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !182, line: 16, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !149, line: 174, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 172, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !190, file: !149, line: 173, baseType: !46, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 24, baseType: !194, size: 16)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 24, size: 16, elements: !195)
!195 = !{!196, !202}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !194, file: !182, line: 25, baseType: !197, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !198, line: 17, baseType: !199)
!198 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !200, line: 21, baseType: !201)
!200 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!201 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !194, file: !182, line: 26, baseType: !197, size: 8, offset: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 28, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 28, size: 32, elements: !205)
!205 = !{!206, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !204, file: !182, line: 29, baseType: !207, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !198, line: 19, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !200, line: 24, baseType: !150)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !204, file: !182, line: 30, baseType: !207, size: 16, offset: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !153, line: 171, baseType: !152, size: 512, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !165, file: !153, line: 172, baseType: !212, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !153, line: 133, size: 192, elements: !215)
!215 = !{!216, !223, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !214, file: !153, line: 134, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!46, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !153, line: 135, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!127, !221}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !214, file: !153, line: 136, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!46, !221, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !153, line: 125, size: 20736, elements: !235)
!235 = !{!236, !241, !245, !246, !250}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !234, file: !153, line: 126, baseType: !237, size: 192)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 192, elements: !239)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!239 = !{!240}
!240 = !DISubrange(count: 3)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !234, file: !153, line: 127, baseType: !242, size: 4096, offset: 192)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 4096, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !234, file: !153, line: 128, baseType: !46, size: 32, offset: 4288)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !234, file: !153, line: 129, baseType: !247, size: 16384, offset: 4320)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16384, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 2048)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !234, file: !153, line: 130, baseType: !46, size: 32, offset: 20704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !152, file: !153, line: 69, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !153, line: 116, size: 384, elements: !255)
!255 = !{!256, !260, !287, !288, !323, !327}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !254, file: !153, line: 117, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !151}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !254, file: !153, line: 118, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !141, line: 254, size: 128, elements: !264)
!264 = !{!265, !279}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !263, file: !141, line: 255, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !151, !274, !238}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !149, line: 66, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !271, line: 73, baseType: !272)
!271 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !271, line: 15, baseType: !273)
!273 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !141, line: 30, size: 128, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !141, line: 31, baseType: !127, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !275, file: !141, line: 32, baseType: !148, size: 16, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !263, file: !141, line: 256, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!269, !151, !274, !127, !283}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 61, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !271, line: 72, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !271, line: 16, baseType: !286)
!286 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !254, file: !153, line: 119, baseType: !137, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !254, file: !153, line: 120, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !221}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !295)
!295 = !{!296, !297, !303, !307, !315, !319}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !294, file: !6, line: 40, baseType: !5, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !294, file: !6, line: 41, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !149, line: 35, baseType: !302)
!302 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !294, file: !6, line: 42, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!122}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !294, file: !6, line: 43, baseType: !308, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !313}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !294, file: !6, line: 44, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!311}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !294, file: !6, line: 45, baseType: !320, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !122}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !254, file: !153, line: 121, baseType: !324, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!311, !221}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !254, file: !153, line: 122, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !221, !331, !339}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !333, line: 23, baseType: !334)
!333 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 21, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !334, file: !333, line: 22, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !149, line: 37, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !271, line: 49, baseType: !7)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !333, line: 28, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 26, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !341, file: !333, line: 27, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !149, line: 38, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !271, line: 50, baseType: !7)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !152, file: !153, line: 70, baseType: !347, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !349, line: 190, size: 1152, elements: !350)
!349 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!350 = !{!351, !352, !353, !354, !355, !363, !364, !365, !749, !750, !751, !752, !753, !756}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !348, file: !349, line: 191, baseType: !189, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !348, file: !349, line: 192, baseType: !189, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !348, file: !349, line: 202, baseType: !347, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !349, line: 203, baseType: !127, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !348, file: !349, line: 205, baseType: !356, size: 192, align: 64, offset: 192)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !357, line: 5, size: 192, align: 64, elements: !358)
!357 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!358 = !{!359, !360, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !356, file: !357, line: 6, baseType: !286, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !356, file: !357, line: 7, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !356, file: !357, line: 8, baseType: !361, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !348, file: !349, line: 207, baseType: !311, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !348, file: !349, line: 208, baseType: !7, size: 32, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !349, line: 209, baseType: !366, size: 256, offset: 512)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !349, line: 209, size: 256, elements: !367)
!367 = !{!368, !380, !384}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !366, file: !349, line: 210, baseType: !369, size: 256)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !349, line: 153, size: 256, elements: !370)
!370 = !{!371, !372, !376, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !369, file: !349, line: 154, baseType: !286, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !369, file: !349, line: 156, baseType: !373, size: 64, offset: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !357, line: 12, size: 64, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !373, file: !357, line: 13, baseType: !361, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !369, file: !349, line: 162, baseType: !377, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !349, line: 162, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !369, file: !349, line: 167, baseType: !286, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !366, file: !349, line: 211, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !349, line: 170, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !381, file: !349, line: 171, baseType: !347, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !366, file: !349, line: 212, baseType: !385, size: 256)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !349, line: 174, size: 256, elements: !386)
!386 = !{!387, !744, !747, !748}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !385, file: !349, line: 175, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !349, line: 271, size: 768, elements: !391)
!391 = !{!392, !443, !447, !451, !458, !462, !466, !470, !471, !472, !473, !481}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !390, file: !349, line: 276, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!46, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !349, line: 251, size: 1216, elements: !398)
!398 = !{!399, !400, !404, !408, !409, !431, !432, !433, !434, !435, !436, !437, !438}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !397, file: !349, line: 253, baseType: !347, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !397, file: !349, line: 254, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !403, line: 537, flags: DIFlagFwdDecl)
!403 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !397, file: !349, line: 255, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !407, line: 66, flags: DIFlagFwdDecl)
!407 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !397, file: !349, line: 256, baseType: !122, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !397, file: !349, line: 259, baseType: !410, size: 256, offset: 256)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !411, line: 66, size: 256, elements: !412)
!411 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!412 = !{!413, !423, !425, !430}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !410, file: !411, line: 67, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !415, line: 13, baseType: !416)
!415 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !149, line: 181, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 179, size: 64, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !417, file: !149, line: 180, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !198, line: 22, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !200, line: 30, baseType: !422)
!422 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !410, file: !411, line: 68, baseType: !424, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !178, line: 23, baseType: !177)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !410, file: !411, line: 70, baseType: !426, size: 32, offset: 96)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !427, line: 15, size: 32, elements: !428)
!427 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !426, file: !427, line: 20, baseType: !189, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !410, file: !411, line: 72, baseType: !157, size: 128, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !397, file: !349, line: 260, baseType: !410, size: 256, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !397, file: !349, line: 261, baseType: !46, size: 32, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !397, file: !349, line: 262, baseType: !157, size: 128, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !397, file: !349, line: 263, baseType: !238, size: 64, offset: 960)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !397, file: !349, line: 265, baseType: !283, size: 64, offset: 1024)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !397, file: !349, line: 266, baseType: !301, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !397, file: !349, line: 267, baseType: !301, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !397, file: !349, line: 268, baseType: !439, size: 64, offset: 1152)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !442, line: 694, flags: DIFlagFwdDecl)
!442 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!443 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !390, file: !349, line: 277, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !396}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !390, file: !349, line: 290, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!46, !405, !122}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !390, file: !349, line: 292, baseType: !452, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!122, !405, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !149, line: 52, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !271, line: 88, baseType: !422)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !390, file: !349, line: 293, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!122, !405, !122, !455}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !390, file: !349, line: 294, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !405, !122}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !390, file: !349, line: 296, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!269, !396, !238, !283, !456}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !390, file: !349, line: 306, baseType: !283, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !390, file: !349, line: 313, baseType: !301, size: 8, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !390, file: !349, line: 314, baseType: !467, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !390, file: !349, line: 317, baseType: !474, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !396, !479}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !478, line: 59, baseType: !7)
!478 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !349, line: 31, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !390, file: !349, line: 320, baseType: !482, size: 64, offset: 704)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!46, !396, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !442, line: 625, size: 1344, elements: !487)
!487 = !{!488, !505, !705, !711, !718, !719, !724, !725, !730, !731, !734, !735, !736, !737, !738, !739, !742}
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !442, line: 628, baseType: !489, size: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !442, line: 628, size: 128, elements: !490)
!490 = !{!491, !496}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !442, line: 629, baseType: !492, size: 128)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !442, line: 629, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !492, file: !442, line: 631, baseType: !286, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !492, file: !442, line: 632, baseType: !286, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !489, file: !442, line: 635, baseType: !497, size: 128, align: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !149, line: 232, size: 128, align: 64, elements: !498)
!498 = !{!499, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !149, line: 233, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !497, file: !149, line: 234, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !500}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !486, file: !442, line: 639, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !442, line: 733, size: 10240, elements: !508)
!508 = !{!509, !701}
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !442, line: 734, baseType: !510, size: 10240)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !442, line: 734, size: 10240, elements: !511)
!511 = !{!512, !516, !530, !534, !535, !536, !537, !538, !539, !547, !548, !549, !558, !559, !560, !561, !562, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !604, !618, !621, !667, !668, !669, !672, !675, !676, !679, !680, !681, !688, !689}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !442, line: 739, baseType: !513, size: 512, align: 512)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !510, file: !442, line: 739, size: 512, align: 512, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !513, file: !442, line: 747, baseType: !189, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !510, file: !442, line: 750, baseType: !517, size: 128, offset: 512)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !518, line: 218, size: 128, elements: !519)
!518 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!519 = !{!520, !528, !529}
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !518, line: 219, baseType: !521, size: 32)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !518, line: 219, size: 32, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !521, file: !518, line: 220, baseType: !169, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !521, file: !518, line: 221, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !518, line: 197, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 197, elements: !527)
!527 = !{}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !517, file: !518, line: 223, baseType: !7, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !517, file: !518, line: 224, baseType: !122, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !510, file: !442, line: 752, baseType: !531, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!286, !401, !286, !286, !286, !286}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !510, file: !442, line: 756, baseType: !286, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !510, file: !442, line: 757, baseType: !286, size: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !510, file: !442, line: 760, baseType: !286, size: 64, offset: 832)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !510, file: !442, line: 761, baseType: !286, size: 64, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !510, file: !442, line: 763, baseType: !286, size: 64, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !510, file: !442, line: 764, baseType: !540, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !403, line: 299, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 299, size: 64, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !542, file: !403, line: 299, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !546, line: 18, baseType: !286)
!546 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !510, file: !442, line: 773, baseType: !189, size: 32, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !510, file: !442, line: 785, baseType: !189, size: 32, offset: 1120)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !510, file: !442, line: 795, baseType: !550, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !442, line: 726, size: 128, elements: !552)
!552 = !{!553, !557}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !551, file: !442, line: 727, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !198, line: 23, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !200, line: 31, baseType: !556)
!556 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !551, file: !442, line: 728, baseType: !46, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !510, file: !442, line: 801, baseType: !286, size: 64, offset: 1216)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !510, file: !442, line: 804, baseType: !414, size: 64, offset: 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !510, file: !442, line: 806, baseType: !46, size: 32, offset: 1344)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !510, file: !442, line: 808, baseType: !169, size: 32, offset: 1376)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !510, file: !442, line: 823, baseType: !563, size: 320, offset: 1408)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !564, line: 48, size: 320, elements: !565)
!564 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!565 = !{!566, !567, !568, !569, !570}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !563, file: !564, line: 49, baseType: !414, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !563, file: !564, line: 55, baseType: !414, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !563, file: !564, line: 57, baseType: !426, size: 32, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !563, file: !564, line: 59, baseType: !424, size: 32, offset: 160)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !563, file: !564, line: 60, baseType: !157, size: 128, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !510, file: !442, line: 825, baseType: !157, size: 128, offset: 1728)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !510, file: !442, line: 845, baseType: !46, size: 32, offset: 1856)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !510, file: !442, line: 849, baseType: !286, size: 64, offset: 1920)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !510, file: !442, line: 850, baseType: !286, size: 64, offset: 1984)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !510, file: !442, line: 852, baseType: !286, size: 64, offset: 2048)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !510, file: !442, line: 853, baseType: !286, size: 64, offset: 2112)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !510, file: !442, line: 854, baseType: !416, size: 64, offset: 2176)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !510, file: !442, line: 855, baseType: !286, size: 64, offset: 2240)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !510, file: !442, line: 856, baseType: !286, size: 64, offset: 2304)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !510, file: !442, line: 857, baseType: !286, size: 64, offset: 2368)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !510, file: !442, line: 858, baseType: !286, size: 64, offset: 2432)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !510, file: !442, line: 865, baseType: !583, size: 32, offset: 2496)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !584, line: 69, baseType: !585)
!584 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !584, line: 64, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !585, file: !584, line: 65, baseType: !7, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !510, file: !442, line: 867, baseType: !169, size: 32, offset: 2528)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !510, file: !442, line: 869, baseType: !286, size: 64, offset: 2560)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !510, file: !442, line: 869, baseType: !286, size: 64, offset: 2624)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !510, file: !442, line: 869, baseType: !286, size: 64, offset: 2688)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !510, file: !442, line: 869, baseType: !286, size: 64, offset: 2752)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !510, file: !442, line: 870, baseType: !286, size: 64, offset: 2816)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !510, file: !442, line: 870, baseType: !286, size: 64, offset: 2880)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !510, file: !442, line: 870, baseType: !286, size: 64, offset: 2944)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !510, file: !442, line: 871, baseType: !286, size: 64, offset: 3008)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !510, file: !442, line: 871, baseType: !286, size: 64, offset: 3072)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !510, file: !442, line: 871, baseType: !286, size: 64, offset: 3136)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !510, file: !442, line: 871, baseType: !286, size: 64, offset: 3200)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !510, file: !442, line: 873, baseType: !601, size: 3328, offset: 3264)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 3328, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 52)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !510, file: !442, line: 875, baseType: !605, size: 1280, offset: 6592)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 1280, elements: !616)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !607, line: 22, size: 320, elements: !608)
!607 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!608 = !{!609, !610, !611, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !606, file: !607, line: 23, baseType: !424, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !606, file: !607, line: 24, baseType: !420, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !606, file: !607, line: 26, baseType: !157, size: 128, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !606, file: !607, line: 28, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !198, line: 20, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !200, line: 26, baseType: !46)
!616 = !{!617}
!617 = !DISubrange(count: 4)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !510, file: !442, line: 877, baseType: !619, size: 64, offset: 7872)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !442, line: 877, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !510, file: !442, line: 880, baseType: !622, size: 1088, offset: 7936)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !623, line: 72, baseType: !624)
!623 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 23, size: 1088, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !633, !634, !635, !636, !661, !662, !663}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !624, file: !623, line: 28, baseType: !554, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !624, file: !623, line: 38, baseType: !416, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !624, file: !623, line: 40, baseType: !286, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !624, file: !623, line: 43, baseType: !563, size: 320, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !624, file: !623, line: 44, baseType: !631, size: 64, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !623, line: 44, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !623, line: 48, baseType: !286, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !624, file: !623, line: 59, baseType: !410, size: 256, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !624, file: !623, line: 60, baseType: !122, size: 64, offset: 896)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !624, file: !623, line: 61, baseType: !637, size: 64, offset: 960)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !640, line: 13, size: 1216, elements: !641)
!640 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !639, file: !640, line: 14, baseType: !122, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !639, file: !640, line: 15, baseType: !286, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !639, file: !640, line: 17, baseType: !286, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !639, file: !640, line: 17, baseType: !286, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !639, file: !640, line: 18, baseType: !286, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !639, file: !640, line: 18, baseType: !286, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !639, file: !640, line: 19, baseType: !311, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !639, file: !640, line: 21, baseType: !273, size: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !639, file: !640, line: 23, baseType: !273, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !639, file: !640, line: 24, baseType: !273, size: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !639, file: !640, line: 25, baseType: !273, size: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !639, file: !640, line: 26, baseType: !273, size: 64, offset: 704)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !639, file: !640, line: 27, baseType: !273, size: 64, offset: 768)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !639, file: !640, line: 28, baseType: !273, size: 64, offset: 832)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !639, file: !640, line: 29, baseType: !273, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !639, file: !640, line: 30, baseType: !273, size: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !639, file: !640, line: 31, baseType: !273, size: 64, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !639, file: !640, line: 32, baseType: !273, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !639, file: !640, line: 33, baseType: !273, size: 64, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !624, file: !623, line: 63, baseType: !189, size: 32, offset: 1024)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !624, file: !623, line: 69, baseType: !207, size: 16, offset: 1056)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !624, file: !623, line: 70, baseType: !664, size: 16, offset: 1072)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !198, line: 18, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !200, line: 23, baseType: !666)
!666 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !442, line: 882, baseType: !286, size: 64, offset: 9024)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !510, file: !442, line: 885, baseType: !169, size: 32, offset: 9088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !510, file: !442, line: 886, baseType: !670, size: 64, offset: 9152)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !442, line: 732, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !510, file: !442, line: 901, baseType: !673, size: 64, offset: 9216)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !333, line: 18, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !510, file: !442, line: 904, baseType: !401, size: 64, offset: 9280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !510, file: !442, line: 906, baseType: !677, size: 64, offset: 9344)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !442, line: 906, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !510, file: !442, line: 930, baseType: !189, size: 32, offset: 9408)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !510, file: !442, line: 933, baseType: !189, size: 32, offset: 9440)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !510, file: !442, line: 935, baseType: !682, size: 64, offset: 9472)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !683, line: 103, size: 64, elements: !684)
!683 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !682, file: !683, line: 104, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !683, line: 101, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !510, file: !442, line: 940, baseType: !414, size: 64, offset: 9536)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !510, file: !442, line: 942, baseType: !690, size: 256, offset: 9600)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !691, line: 98, size: 256, elements: !692)
!691 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !690, file: !691, line: 99, baseType: !414, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !690, file: !691, line: 100, baseType: !157, size: 128, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !690, file: !691, line: 101, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !691, line: 21, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !507, file: !442, line: 986, baseType: !702, offset: 10240)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: -1)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !486, file: !442, line: 640, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !403, line: 297, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !403, line: 297, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !707, file: !403, line: 297, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !546, line: 19, baseType: !286)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !442, line: 646, baseType: !712, size: 64, offset: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !442, line: 646, size: 64, elements: !713)
!713 = !{!714, !717}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !712, file: !442, line: 647, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !442, line: 542, baseType: !286)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !712, file: !442, line: 648, baseType: !716, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !486, file: !442, line: 666, baseType: !46, size: 32, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !486, file: !442, line: 667, baseType: !720, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !442, line: 579, size: 320, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !442, line: 580, baseType: !563, size: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !486, file: !442, line: 670, baseType: !301, size: 8, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !486, file: !442, line: 681, baseType: !726, size: 256, offset: 512)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !486, file: !442, line: 678, size: 256, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !726, file: !442, line: 679, baseType: !356, size: 192, align: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !726, file: !442, line: 680, baseType: !286, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !486, file: !442, line: 689, baseType: !157, size: 128, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !486, file: !442, line: 691, baseType: !732, size: 64, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !442, line: 691, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !486, file: !442, line: 694, baseType: !439, size: 64, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !486, file: !442, line: 697, baseType: !286, size: 64, offset: 1024)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !486, file: !442, line: 699, baseType: !401, size: 64, offset: 1088)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !486, file: !442, line: 700, baseType: !122, size: 64, offset: 1152)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !486, file: !442, line: 711, baseType: !414, size: 64, offset: 1216)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !486, file: !442, line: 717, baseType: !740, size: 64, offset: 1280)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !407, line: 54, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !486, file: !442, line: 722, baseType: !743, offset: 1344)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !442, line: 570, elements: !527)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !385, file: !349, line: 176, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !349, line: 35, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !385, file: !349, line: 177, baseType: !456, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !385, file: !349, line: 178, baseType: !347, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !348, file: !349, line: 215, baseType: !122, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !348, file: !349, line: 221, baseType: !554, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !349, line: 223, baseType: !150, size: 16, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !348, file: !349, line: 224, baseType: !148, size: 16, offset: 912)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !348, file: !349, line: 225, baseType: !754, size: 64, offset: 960)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !349, line: 36, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !348, file: !349, line: 227, baseType: !497, size: 128, align: 64, offset: 1024)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !152, file: !153, line: 71, baseType: !758, size: 32, offset: 448)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !759, line: 19, size: 32, elements: !760)
!759 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !758, file: !759, line: 20, baseType: !762, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !763, line: 113, baseType: !764)
!763 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !763, line: 111, size: 32, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !764, file: !763, line: 112, baseType: !189, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !152, file: !153, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !152, file: !153, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !152, file: !153, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !152, file: !153, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !152, file: !153, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !140, file: !141, line: 88, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!148, !151, !776, !46}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !141, line: 175, size: 512, elements: !778)
!778 = !{!779, !780, !781, !782, !788, !792, !793}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !777, file: !141, line: 176, baseType: !275, size: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !777, file: !141, line: 177, baseType: !283, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !777, file: !141, line: 178, baseType: !122, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !777, file: !141, line: 179, baseType: !783, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !442, line: 32, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !777, file: !141, line: 180, baseType: !789, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!269, !401, !151, !776, !238, !456, !283}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !777, file: !141, line: 182, baseType: !789, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !777, file: !141, line: 184, baseType: !794, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!46, !401, !151, !776, !485}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !140, file: !141, line: 90, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !140, file: !141, line: 91, baseType: !800, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !132, file: !96, line: 84, baseType: !137, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !132, file: !96, line: 85, baseType: !137, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !132, file: !96, line: 87, baseType: !804, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!46, !807, !840}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !809)
!809 = !{!810, !811, !812, !1298, !1299, !1319, !1320, !1321, !1322, !1323, !1324, !1331, !1579, !1592, !1602, !1606, !1608, !1609, !1610, !1614, !1621, !1622, !1625, !1628, !1632, !1635, !1636, !1639, !1640, !1641, !1642, !1672, !1673, !1674, !1677, !1680, !1689, !1690, !1691, !1692, !1693, !1694}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !808, file: !26, line: 706, baseType: !152, size: 512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !808, file: !26, line: 707, baseType: !807, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !808, file: !26, line: 709, baseType: !813, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !815, line: 108, size: 1728, elements: !816)
!815 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!816 = !{!817, !834, !835, !836, !837, !838, !839, !1295, !1296, !1297}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !814, file: !815, line: 109, baseType: !818, size: 320, align: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !819, line: 18, size: 320, align: 64, elements: !820)
!819 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!820 = !{!821, !822, !823, !833}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !818, file: !819, line: 19, baseType: !169, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !818, file: !819, line: 20, baseType: !157, size: 128, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !818, file: !819, line: 21, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !819, line: 37, size: 256, elements: !829)
!829 = !{!830, !831, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !828, file: !819, line: 38, baseType: !122, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !828, file: !819, line: 39, baseType: !157, size: 128, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !828, file: !819, line: 40, baseType: !758, size: 32, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !818, file: !819, line: 22, baseType: !824, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !814, file: !815, line: 110, baseType: !828, size: 256, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !814, file: !815, line: 111, baseType: !828, size: 256, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !814, file: !815, line: 112, baseType: !828, size: 256, offset: 832)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !814, file: !815, line: 113, baseType: !828, size: 256, offset: 1088)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !814, file: !815, line: 114, baseType: !157, size: 128, offset: 1344)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !814, file: !815, line: 115, baseType: !840, size: 64, offset: 1472)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !842)
!842 = !{!843, !844, !847, !1225, !1226, !1227, !1228, !1232, !1236, !1240, !1244, !1245, !1246, !1254, !1255, !1256, !1257, !1285, !1286}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !841, file: !20, line: 97, baseType: !127, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !841, file: !20, line: 98, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !841, file: !20, line: 100, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !850)
!850 = !{!851, !852, !853, !857, !878, !904, !905, !906, !907, !911, !914, !915, !916, !969, !970, !971, !972, !973, !974, !975, !976, !979, !983, !1003, !1021, !1022, !1023, !1024, !1033, !1057, !1058, !1061, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1075, !1076, !1183, !1191, !1192, !1193, !1195, !1199, !1200, !1204, !1205, !1206, !1207, !1209, !1210, !1211, !1218, !1219, !1220, !1224}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !849, file: !13, line: 403, baseType: !12, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !849, file: !13, line: 406, baseType: !157, size: 128, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !849, file: !13, line: 409, baseType: !854, size: 448, offset: 192)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 448, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 56)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !849, file: !13, line: 417, baseType: !858, size: 768, offset: 640)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !859)
!859 = !{!860, !861, !862, !863, !866}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !858, file: !13, line: 46, baseType: !152, size: 512)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !858, file: !13, line: 47, baseType: !848, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !858, file: !13, line: 48, baseType: !151, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !858, file: !13, line: 49, baseType: !864, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !858, file: !13, line: 50, baseType: !867, size: 64, offset: 704)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !869, line: 26, size: 256, elements: !870)
!869 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !868, file: !869, line: 27, baseType: !7, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !868, file: !869, line: 28, baseType: !873, size: 192, offset: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !874, line: 43, size: 192, elements: !875)
!874 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !873, file: !874, line: 44, baseType: !424, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !873, file: !874, line: 45, baseType: !157, size: 128, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !849, file: !13, line: 418, baseType: !879, size: 64, offset: 1408)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !881)
!881 = !{!882, !883, !888, !892, !896, !900}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !880, file: !13, line: 54, baseType: !275, size: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !880, file: !13, line: 55, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!269, !879, !887, !238}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !880, file: !13, line: 57, baseType: !889, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!269, !879, !887, !127, !283}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !880, file: !13, line: 59, baseType: !893, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !848, !127}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !880, file: !13, line: 60, baseType: !897, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!46, !848}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !880, file: !13, line: 61, baseType: !901, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !848}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !849, file: !13, line: 419, baseType: !127, size: 64, offset: 1472)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !849, file: !13, line: 420, baseType: !127, size: 64, offset: 1536)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !849, file: !13, line: 421, baseType: !151, size: 64, offset: 1600)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !849, file: !13, line: 424, baseType: !908, size: 64, offset: 1664)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !849, file: !13, line: 425, baseType: !912, size: 64, offset: 1728)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !849, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !849, file: !13, line: 435, baseType: !410, size: 256, offset: 1856)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !849, file: !13, line: 437, baseType: !917, size: 64, offset: 2112)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !919, line: 69, size: 320, elements: !920)
!919 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!920 = !{!921, !922, !923, !940, !942, !946, !947}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !918, file: !919, line: 70, baseType: !127, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !918, file: !919, line: 71, baseType: !848, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !918, file: !919, line: 72, baseType: !924, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !919, line: 47, size: 256, elements: !927)
!927 = !{!928, !929, !935, !939}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !926, file: !919, line: 49, baseType: !7, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !926, file: !919, line: 51, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!46, !127, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !926, file: !919, line: 53, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!46, !238, !933}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !926, file: !919, line: 55, baseType: !320, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !918, file: !919, line: 73, baseType: !941, size: 16, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !918, file: !919, line: 74, baseType: !943, size: 8, offset: 208)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !198, line: 16, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !200, line: 20, baseType: !945)
!945 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !918, file: !919, line: 75, baseType: !197, size: 8, offset: 216)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !919, line: 76, baseType: !948, size: 64, offset: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !919, line: 76, size: 64, elements: !949)
!949 = !{!950, !951, !958}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !948, file: !919, line: 77, baseType: !122, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !948, file: !919, line: 78, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !919, line: 86, size: 128, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !954, file: !919, line: 87, baseType: !7, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !954, file: !919, line: 88, baseType: !238, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !948, file: !919, line: 79, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !919, line: 92, size: 256, elements: !962)
!962 = !{!963, !964, !965, !967, !968}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !961, file: !919, line: 94, baseType: !7, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !961, file: !919, line: 95, baseType: !7, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !961, file: !919, line: 96, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !961, file: !919, line: 97, baseType: !924, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !961, file: !919, line: 98, baseType: !122, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !849, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !849, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !849, file: !13, line: 442, baseType: !908, size: 64, offset: 2240)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !849, file: !13, line: 443, baseType: !912, size: 64, offset: 2304)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !849, file: !13, line: 444, baseType: !301, size: 8, offset: 2368)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !849, file: !13, line: 451, baseType: !301, size: 8, offset: 2376)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !849, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !849, file: !13, line: 455, baseType: !977, size: 64, offset: 2432)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !849, file: !13, line: 458, baseType: !980, size: 64, offset: 2496)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!46}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !849, file: !13, line: 460, baseType: !984, size: 4032, align: 512, offset: 2560)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 4032, elements: !1001)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !985, file: !13, line: 363, baseType: !122, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !985, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !985, file: !13, line: 367, baseType: !990, size: 448, offset: 128)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !990, file: !13, line: 320, baseType: !848, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !990, file: !13, line: 321, baseType: !994, size: 384, offset: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !995, line: 40, size: 384, elements: !996)
!995 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !994, file: !995, line: 41, baseType: !998, size: 384, align: 64)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 384, align: 64, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 2)
!1001 = !{!1002}
!1002 = !DISubrange(count: 7)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !849, file: !13, line: 463, baseType: !1004, size: 192, offset: 6592)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1005, line: 8, size: 192, elements: !1006)
!1005 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1006 = !{!1007, !1008, !1010}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1004, file: !1005, line: 10, baseType: !7, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1004, file: !1005, line: 11, baseType: !1009, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1004, file: !1005, line: 12, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1013, line: 59, size: 48, elements: !1014)
!1013 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1012, file: !1013, line: 60, baseType: !664, size: 16)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1012, file: !1013, line: 61, baseType: !664, size: 16, offset: 16)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1012, file: !1013, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1012, file: !1013, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1012, file: !1013, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1012, file: !1013, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !849, file: !13, line: 465, baseType: !286, size: 64, offset: 6784)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !849, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !849, file: !13, line: 470, baseType: !157, size: 128, offset: 6912)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !849, file: !13, line: 471, baseType: !1025, size: 64, offset: 7040)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1027, line: 33, size: 96, elements: !1028)
!1027 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1028 = !{!1029, !1030, !1031, !1032}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1026, file: !1027, line: 37, baseType: !46, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1026, file: !1027, line: 43, baseType: !46, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1026, file: !1027, line: 45, baseType: !150, size: 16, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !1027, line: 47, baseType: !150, size: 16, offset: 80)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !849, file: !13, line: 476, baseType: !1034, size: 64, offset: 7104)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1036)
!1036 = !{!1037, !1054, !1055, !1056}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1035, file: !13, line: 379, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1040, line: 204, baseType: !1041)
!1040 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1040, line: 197, size: 192, elements: !1042)
!1042 = !{!1043, !1046, !1047, !1048, !1050, !1052}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1041, file: !1040, line: 198, baseType: !1044, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1040, line: 21, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !200, line: 27, baseType: !7)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1041, file: !1040, line: 199, baseType: !201, size: 8, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1041, file: !1040, line: 200, baseType: !201, size: 8, offset: 40)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1041, file: !1040, line: 201, baseType: !1049, size: 16, offset: 48)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1040, line: 17, baseType: !208)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1041, file: !1040, line: 202, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1040, line: 16, baseType: !555)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1041, file: !1040, line: 203, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1040, line: 22, baseType: !555)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1035, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1035, file: !13, line: 381, baseType: !238, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1035, file: !13, line: 382, baseType: !238, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !849, file: !13, line: 477, baseType: !1035, size: 256, offset: 7168)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !849, file: !13, line: 480, baseType: !1059, size: 64, offset: 7424)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !849, file: !13, line: 483, baseType: !1062, size: 64, offset: 7488)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !849, file: !13, line: 488, baseType: !238, size: 64, offset: 7552)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !849, file: !13, line: 492, baseType: !122, size: 64, offset: 7616)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !849, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !849, file: !13, line: 495, baseType: !122, size: 64, offset: 7744)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !849, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !849, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !849, file: !13, line: 500, baseType: !1071, size: 64, offset: 7872)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1073, line: 45, baseType: !1074)
!1073 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !849, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !849, file: !13, line: 504, baseType: !1077, size: 64, offset: 8000)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1080, line: 96, size: 192, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1081 = !{!1082, !1083, !1144, !1147}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1079, file: !1080, line: 97, baseType: !7, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1079, file: !1080, line: 98, baseType: !1084, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1080, line: 24, size: 3072, elements: !1086)
!1086 = !{!1087, !1089, !1090, !1091, !1092, !1106, !1107, !1108, !1109, !1128, !1129, !1130, !1141, !1142, !1143}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1085, file: !1080, line: 26, baseType: !1088, size: 128)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 128, elements: !999)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1085, file: !1080, line: 27, baseType: !1088, size: 128, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1085, file: !1080, line: 28, baseType: !46, size: 32, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1085, file: !1080, line: 31, baseType: !169, size: 32, align: 512, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1085, file: !1080, line: 32, baseType: !1093, size: 960, offset: 576)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1094, line: 206, size: 960, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1095 = !{!1096, !1097, !1100, !1102, !1103, !1105}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1093, file: !1094, line: 207, baseType: !500, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1093, file: !1094, line: 208, baseType: !1098, size: 256, offset: 64)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 256, elements: !616)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1093, file: !1094, line: 209, baseType: !1101, size: 256, offset: 320)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !616)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1093, file: !1094, line: 213, baseType: !273, size: 64, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1093, file: !1094, line: 215, baseType: !1104, size: 256, offset: 640)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !616)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1093, file: !1094, line: 216, baseType: !197, size: 8, offset: 896)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1085, file: !1080, line: 33, baseType: !286, size: 64, offset: 1536)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1085, file: !1080, line: 34, baseType: !286, size: 64, offset: 1600)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1085, file: !1080, line: 35, baseType: !301, size: 8, offset: 1664)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1085, file: !1080, line: 36, baseType: !1110, size: 320, offset: 1728)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1111, line: 11, size: 320, elements: !1112)
!1111 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1112 = !{!1113, !1120, !1121, !1126}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1110, file: !1111, line: 16, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !149, line: 198, size: 128, elements: !1115)
!1115 = !{!1116, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !149, line: 199, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1114, file: !149, line: 199, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1110, file: !1111, line: 17, baseType: !286, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1110, file: !1111, line: 18, baseType: !1122, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1110, file: !1111, line: 19, baseType: !1127, size: 32, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !198, line: 21, baseType: !1045)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1085, file: !1080, line: 37, baseType: !690, size: 256, offset: 2048)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1085, file: !1080, line: 38, baseType: !497, size: 128, align: 64, offset: 2304)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1085, file: !1080, line: 39, baseType: !1131, size: 64, offset: 2432)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1080, line: 49, size: 768, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1132, file: !1080, line: 50, baseType: !169, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1132, file: !1080, line: 51, baseType: !1101, size: 256, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1132, file: !1080, line: 53, baseType: !1101, size: 256, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1132, file: !1080, line: 54, baseType: !286, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1132, file: !1080, line: 55, baseType: !1131, size: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1132, file: !1080, line: 56, baseType: !46, size: 32, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1132, file: !1080, line: 57, baseType: !46, size: 32, offset: 736)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1085, file: !1080, line: 40, baseType: !286, size: 64, offset: 2496)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1085, file: !1080, line: 42, baseType: !46, size: 32, offset: 2560)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1085, file: !1080, line: 43, baseType: !1078, size: 64, offset: 2624)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1079, file: !1080, line: 99, baseType: !1145, offset: 128)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1146, line: 211, elements: !527)
!1146 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1079, file: !1080, line: 100, baseType: !1148, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1080, line: 63, size: 3008, elements: !1150)
!1150 = !{!1151, !1152, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1182}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1149, file: !1080, line: 64, baseType: !1131, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1149, file: !1080, line: 65, baseType: !1153, size: 192, offset: 64)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, size: 192, elements: !239)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1149, file: !1080, line: 67, baseType: !46, size: 32, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1149, file: !1080, line: 68, baseType: !410, size: 256, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1149, file: !1080, line: 69, baseType: !169, size: 32, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1149, file: !1080, line: 70, baseType: !410, size: 256, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1149, file: !1080, line: 71, baseType: !286, size: 64, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1149, file: !1080, line: 72, baseType: !286, size: 64, offset: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1149, file: !1080, line: 73, baseType: !286, size: 64, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1149, file: !1080, line: 74, baseType: !286, size: 64, offset: 1088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1149, file: !1080, line: 75, baseType: !286, size: 64, offset: 1152)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1149, file: !1080, line: 76, baseType: !286, size: 64, offset: 1216)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1149, file: !1080, line: 77, baseType: !286, size: 64, offset: 1280)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1149, file: !1080, line: 78, baseType: !286, size: 64, offset: 1344)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1149, file: !1080, line: 79, baseType: !301, size: 8, offset: 1408)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1149, file: !1080, line: 80, baseType: !286, size: 64, offset: 1472)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1149, file: !1080, line: 81, baseType: !410, size: 256, offset: 1536)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1149, file: !1080, line: 82, baseType: !868, size: 256, offset: 1792)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1149, file: !1080, line: 84, baseType: !189, size: 32, offset: 2048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1149, file: !1080, line: 87, baseType: !286, size: 64, offset: 2112)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1149, file: !1080, line: 88, baseType: !286, size: 64, offset: 2176)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1149, file: !1080, line: 89, baseType: !1174, size: 704, offset: 2240)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !691, line: 111, size: 704, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1181}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1174, file: !691, line: 112, baseType: !690, size: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1174, file: !691, line: 113, baseType: !1110, size: 320, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1174, file: !691, line: 116, baseType: !1179, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !691, line: 18, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1174, file: !691, line: 117, baseType: !46, size: 32, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1149, file: !1080, line: 90, baseType: !1078, size: 64, offset: 2944)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !849, file: !13, line: 515, baseType: !1184, size: 64, offset: 8064)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1186, line: 117, size: 128, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1187 = !{!1188, !1189, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1185, file: !1186, line: 118, baseType: !614, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1185, file: !1186, line: 119, baseType: !614, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1185, file: !1186, line: 120, baseType: !273, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !849, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !849, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !849, file: !13, line: 520, baseType: !1194, size: 64, offset: 8192)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !849, file: !13, line: 523, baseType: !1196, size: 64, offset: 8256)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !849, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !849, file: !13, line: 525, baseType: !1201, size: 64, offset: 8384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !849, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !849, file: !13, line: 533, baseType: !122, size: 64, offset: 8512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !849, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !849, file: !13, line: 535, baseType: !1208, size: 64, offset: 8640)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !849, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !849, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !849, file: !13, line: 540, baseType: !1212, size: 64, offset: 8768)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1214, line: 32, size: 64, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1213, file: !1214, line: 33, baseType: !614, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1213, file: !1214, line: 34, baseType: !614, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !849, file: !13, line: 563, baseType: !157, size: 128, offset: 8832)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !849, file: !13, line: 565, baseType: !157, size: 128, offset: 8960)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !849, file: !13, line: 568, baseType: !1221, size: 64, offset: 9088)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !849, file: !13, line: 570, baseType: !189, size: 32, offset: 9152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !841, file: !20, line: 101, baseType: !127, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !841, file: !20, line: 103, baseType: !301, size: 8, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !841, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !841, file: !20, line: 106, baseType: !1229, size: 64, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !841, file: !20, line: 107, baseType: !1233, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !841, file: !20, line: 109, baseType: !1237, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!46, !807}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !841, file: !20, line: 110, baseType: !1241, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !807}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !841, file: !20, line: 111, baseType: !1237, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !841, file: !20, line: 112, baseType: !1241, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !841, file: !20, line: 113, baseType: !1247, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!46, !807, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1251, file: !38, line: 59, baseType: !46, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !841, file: !20, line: 114, baseType: !1237, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !841, file: !20, line: 115, baseType: !137, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !841, file: !20, line: 116, baseType: !137, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !841, file: !20, line: 118, baseType: !1258, size: 64, offset: 960)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1260, file: !38, line: 287, baseType: !1237, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1260, file: !38, line: 288, baseType: !1241, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1260, file: !38, line: 289, baseType: !1237, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1260, file: !38, line: 290, baseType: !1237, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1260, file: !38, line: 291, baseType: !1237, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1260, file: !38, line: 292, baseType: !1237, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1260, file: !38, line: 293, baseType: !1237, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1260, file: !38, line: 294, baseType: !1237, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1260, file: !38, line: 295, baseType: !1237, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1260, file: !38, line: 296, baseType: !1237, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1260, file: !38, line: 297, baseType: !1237, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1260, file: !38, line: 298, baseType: !1237, size: 64, offset: 704)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1260, file: !38, line: 299, baseType: !1237, size: 64, offset: 768)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1260, file: !38, line: 300, baseType: !1237, size: 64, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1260, file: !38, line: 301, baseType: !1237, size: 64, offset: 896)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1260, file: !38, line: 302, baseType: !1237, size: 64, offset: 960)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1260, file: !38, line: 303, baseType: !1237, size: 64, offset: 1024)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1260, file: !38, line: 304, baseType: !1237, size: 64, offset: 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1260, file: !38, line: 305, baseType: !1237, size: 64, offset: 1152)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1260, file: !38, line: 306, baseType: !1237, size: 64, offset: 1216)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1260, file: !38, line: 307, baseType: !1237, size: 64, offset: 1280)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1260, file: !38, line: 308, baseType: !1237, size: 64, offset: 1344)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1260, file: !38, line: 309, baseType: !1237, size: 64, offset: 1408)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !841, file: !20, line: 119, baseType: !1241, size: 64, offset: 1024)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !841, file: !20, line: 121, baseType: !1287, size: 64, offset: 1088)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !815, line: 78, size: 1216, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1288, file: !815, line: 79, baseType: !152, size: 512)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1288, file: !815, line: 80, baseType: !818, size: 320, align: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1288, file: !815, line: 81, baseType: !828, size: 256, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1288, file: !815, line: 82, baseType: !887, size: 64, offset: 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1288, file: !815, line: 83, baseType: !840, size: 64, offset: 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !814, file: !815, line: 116, baseType: !238, size: 64, offset: 1536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !814, file: !815, line: 117, baseType: !807, size: 64, offset: 1600)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !814, file: !815, line: 118, baseType: !197, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !808, file: !26, line: 711, baseType: !127, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !26, line: 712, baseType: !1300, size: 64, offset: 704)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1312, !1317, !1318}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1302, file: !26, line: 90, baseType: !127, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1302, file: !26, line: 91, baseType: !137, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1302, file: !26, line: 92, baseType: !1307, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!46, !1310, !233}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1302, file: !26, line: 93, baseType: !1313, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!238, !1310, !1316, !331, !339}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1302, file: !26, line: 95, baseType: !1241, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1302, file: !26, line: 97, baseType: !1258, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !808, file: !26, line: 714, baseType: !845, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !808, file: !26, line: 715, baseType: !840, size: 64, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !808, file: !26, line: 717, baseType: !122, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !808, file: !26, line: 719, baseType: !122, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !808, file: !26, line: 721, baseType: !410, size: 256, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !808, file: !26, line: 725, baseType: !1325, size: 448, offset: 1280)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1325, file: !26, line: 518, baseType: !157, size: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1325, file: !26, line: 519, baseType: !157, size: 128, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1325, file: !26, line: 520, baseType: !157, size: 128, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1325, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !808, file: !26, line: 726, baseType: !1332, size: 2496, offset: 1728)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1384, !1385, !1386, !1387, !1388, !1389, !1460, !1461, !1462, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1500, !1504}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1332, file: !38, line: 664, baseType: !1250, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1332, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1332, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1332, file: !38, line: 667, baseType: !301, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1332, file: !38, line: 668, baseType: !301, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1332, file: !38, line: 669, baseType: !301, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1332, file: !38, line: 670, baseType: !301, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1332, file: !38, line: 671, baseType: !301, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1332, file: !38, line: 672, baseType: !301, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1332, file: !38, line: 673, baseType: !301, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1332, file: !38, line: 674, baseType: !301, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1332, file: !38, line: 675, baseType: !1127, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1332, file: !38, line: 676, baseType: !169, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1332, file: !38, line: 678, baseType: !157, size: 128, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1332, file: !38, line: 679, baseType: !868, size: 256, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1332, file: !38, line: 680, baseType: !1350, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1352, line: 43, size: 1536, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1367, !1368, !1369, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1351, file: !1352, line: 44, baseType: !127, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1351, file: !1352, line: 45, baseType: !46, size: 32, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1351, file: !1352, line: 46, baseType: !157, size: 128, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1351, file: !1352, line: 47, baseType: !169, size: 32, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1351, file: !1352, line: 48, baseType: !1359, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1361, line: 34, size: 192, elements: !1362)
!1361 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1327210c8ac5950226b4c5538c62ec75")
!1362 = !{!1363, !1364, !1365, !1366}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1360, file: !1361, line: 35, baseType: !807, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1360, file: !1361, line: 36, baseType: !7, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1360, file: !1361, line: 37, baseType: !46, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1360, file: !1361, line: 38, baseType: !127, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1351, file: !1352, line: 49, baseType: !1110, size: 320, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1351, file: !1352, line: 50, baseType: !286, size: 64, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1351, file: !1352, line: 51, baseType: !1370, size: 64, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1371, line: 29, baseType: !420)
!1371 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1351, file: !1352, line: 52, baseType: !1370, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1351, file: !1352, line: 53, baseType: !1370, size: 64, offset: 896)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1351, file: !1352, line: 54, baseType: !1370, size: 64, offset: 960)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1351, file: !1352, line: 55, baseType: !1370, size: 64, offset: 1024)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1351, file: !1352, line: 56, baseType: !286, size: 64, offset: 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1351, file: !1352, line: 57, baseType: !286, size: 64, offset: 1152)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1351, file: !1352, line: 58, baseType: !286, size: 64, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1351, file: !1352, line: 59, baseType: !286, size: 64, offset: 1280)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1351, file: !1352, line: 60, baseType: !286, size: 64, offset: 1344)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1351, file: !1352, line: 61, baseType: !807, size: 64, offset: 1408)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1351, file: !1352, line: 62, baseType: !301, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1351, file: !1352, line: 63, baseType: !301, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1332, file: !38, line: 681, baseType: !301, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1332, file: !38, line: 682, baseType: !301, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1332, file: !38, line: 683, baseType: !301, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1332, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1332, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1332, file: !38, line: 690, baseType: !1390, size: 512, offset: 640)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1391)
!1391 = !{!1392, !1398, !1399, !1404, !1456, !1457, !1458, !1459}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1390, file: !33, line: 119, baseType: !1393, size: 256)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1394, line: 9, size: 256, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1393, file: !1394, line: 10, baseType: !356, size: 192, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1393, file: !1394, line: 11, baseType: !1370, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1390, file: !33, line: 120, baseType: !1370, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1390, file: !33, line: 121, baseType: !1400, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!32, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1390, file: !33, line: 122, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1407)
!1407 = !{!1408, !1433, !1434, !1437, !1442, !1443, !1451, !1455}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1406, file: !33, line: 160, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1410, file: !33, line: 216, baseType: !424, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1410, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1410, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1410, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1410, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1410, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1410, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1410, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1410, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1410, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1410, file: !33, line: 227, baseType: !150, size: 16, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1410, file: !33, line: 228, baseType: !150, size: 16, offset: 208)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1410, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1410, file: !33, line: 235, baseType: !1370, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1410, file: !33, line: 236, baseType: !1403, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1410, file: !33, line: 237, baseType: !1370, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1410, file: !33, line: 238, baseType: !1403, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1410, file: !33, line: 239, baseType: !1430, size: 4096, align: 512, offset: 512)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1406, size: 4096, align: 512, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 8)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1406, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1406, file: !33, line: 162, baseType: !1435, size: 32, offset: 96)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !149, line: 32, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !271, line: 96, baseType: !46)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1406, file: !33, line: 163, baseType: !1438, size: 32, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !584, line: 274, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !584, line: 274, size: 32, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1439, file: !584, line: 274, baseType: !583, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1406, file: !33, line: 164, baseType: !1403, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1406, file: !33, line: 165, baseType: !1444, size: 128, offset: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1394, line: 14, size: 128, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1444, file: !1394, line: 15, baseType: !1447, size: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !357, line: 26, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1447, file: !357, line: 27, baseType: !373, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1447, file: !357, line: 28, baseType: !361, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1406, file: !33, line: 166, baseType: !1452, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1370}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1406, file: !33, line: 167, baseType: !1370, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1390, file: !33, line: 123, baseType: !197, size: 8, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1390, file: !33, line: 124, baseType: !197, size: 8, offset: 456)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1390, file: !33, line: 125, baseType: !197, size: 8, offset: 464)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1390, file: !33, line: 126, baseType: !197, size: 8, offset: 472)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1332, file: !38, line: 691, baseType: !554, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1332, file: !38, line: 692, baseType: !690, size: 256, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1332, file: !38, line: 693, baseType: !1463, size: 192, offset: 1472)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1464, line: 41, baseType: !1465)
!1464 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1464, line: 37, size: 192, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1465, file: !1464, line: 38, baseType: !169, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1465, file: !1464, line: 39, baseType: !157, size: 128, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1332, file: !38, line: 694, baseType: !1359, size: 64, offset: 1664)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1332, file: !38, line: 695, baseType: !189, size: 32, offset: 1728)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1332, file: !38, line: 696, baseType: !189, size: 32, offset: 1760)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1332, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1332, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1332, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1332, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1332, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1332, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1332, file: !38, line: 703, baseType: !301, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1332, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1332, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1332, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1332, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1332, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1332, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1332, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1332, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1332, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1332, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1332, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1332, file: !38, line: 715, baseType: !554, size: 64, offset: 2048)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1332, file: !38, line: 716, baseType: !554, size: 64, offset: 2112)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1332, file: !38, line: 717, baseType: !554, size: 64, offset: 2176)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1332, file: !38, line: 718, baseType: !554, size: 64, offset: 2240)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1332, file: !38, line: 720, baseType: !1495, size: 64, offset: 2304)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1496, file: !38, line: 633, baseType: !169, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1496, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1332, file: !38, line: 721, baseType: !1501, size: 64, offset: 2368)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !807, !614}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1332, file: !38, line: 722, baseType: !1505, size: 64, offset: 2432)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1507)
!1507 = !{!1508, !1537, !1538, !1545, !1550, !1577, !1578}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1506, file: !54, line: 118, baseType: !1509, size: 320)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1510)
!1510 = !{!1511, !1516, !1517, !1518, !1519, !1520}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1509, file: !54, line: 53, baseType: !1512, size: 128)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1513, line: 82, size: 128, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1512, file: !1513, line: 83, baseType: !157, size: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1509, file: !54, line: 54, baseType: !614, size: 32, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1509, file: !54, line: 55, baseType: !614, size: 32, offset: 160)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1509, file: !54, line: 56, baseType: !614, size: 32, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1509, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1509, file: !54, line: 58, baseType: !1521, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1523, line: 65, size: 384, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1522, file: !1523, line: 66, baseType: !563, size: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1522, file: !1523, line: 67, baseType: !1527, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1523, line: 54, size: 192, elements: !1529)
!1529 = !{!1530, !1535, !1536}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1528, file: !1523, line: 55, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1523, line: 51, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!46, !1527, !286, !122}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1528, file: !1523, line: 56, baseType: !1527, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1528, file: !1523, line: 57, baseType: !46, size: 32, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1506, file: !54, line: 119, baseType: !1509, size: 320, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1506, file: !54, line: 120, baseType: !1539, size: 1408, offset: 640)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1539, file: !54, line: 86, baseType: !1509, size: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1539, file: !54, line: 87, baseType: !1522, size: 384, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1539, file: !54, line: 88, baseType: !1509, size: 320, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1539, file: !54, line: 89, baseType: !1522, size: 384, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !54, line: 121, baseType: !1546, size: 192, offset: 2048)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1546, file: !54, line: 72, baseType: !157, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1546, file: !54, line: 73, baseType: !614, size: 32, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1506, file: !54, line: 122, baseType: !1551, size: 64, offset: 2240)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1553)
!1553 = !{!1554, !1555, !1576}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1552, file: !54, line: 108, baseType: !59, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1552, file: !54, line: 113, baseType: !1556, size: 448, offset: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !54, line: 109, size: 448, elements: !1557)
!1557 = !{!1558, !1564, !1569}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1556, file: !54, line: 110, baseType: !1559, size: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1513, line: 86, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1559, file: !1513, line: 87, baseType: !46, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1559, file: !1513, line: 88, baseType: !157, size: 128, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1559, file: !1513, line: 89, baseType: !157, size: 128, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1556, file: !54, line: 111, baseType: !1565, size: 192)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1565, file: !54, line: 67, baseType: !157, size: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !54, line: 68, baseType: !614, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1556, file: !54, line: 112, baseType: !1570, size: 448)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1571)
!1571 = !{!1572, !1573, !1574}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1570, file: !54, line: 93, baseType: !66, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1570, file: !54, line: 94, baseType: !1559, size: 320, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1570, file: !54, line: 95, baseType: !1575, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1552, file: !54, line: 114, baseType: !807, size: 64, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1506, file: !54, line: 123, baseType: !1551, size: 64, offset: 2304)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1506, file: !54, line: 124, baseType: !1551, size: 64, offset: 2368)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !808, file: !26, line: 727, baseType: !1580, size: 64, offset: 4224)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1589, !1590, !1591}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1581, file: !38, line: 743, baseType: !1260, size: 1472)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1581, file: !38, line: 744, baseType: !1237, size: 64, offset: 1472)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1581, file: !38, line: 745, baseType: !1586, size: 64, offset: 1536)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !807, !301}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1581, file: !38, line: 746, baseType: !1237, size: 64, offset: 1600)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1581, file: !38, line: 747, baseType: !1241, size: 64, offset: 1664)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1581, file: !38, line: 748, baseType: !1241, size: 64, offset: 1728)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !808, file: !26, line: 736, baseType: !1593, size: 128, offset: 4288)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1594)
!1594 = !{!1595, !1599}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1593, file: !26, line: 531, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1598, line: 13, flags: DIFlagFwdDecl)
!1598 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1593, file: !26, line: 532, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !808, file: !26, line: 738, baseType: !1603, size: 64, offset: 4416)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !808, file: !26, line: 740, baseType: !1607, size: 64, offset: 4480)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !808, file: !26, line: 741, baseType: !554, size: 64, offset: 4544)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !808, file: !26, line: 746, baseType: !554, size: 64, offset: 4608)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !808, file: !26, line: 747, baseType: !1611, size: 64, offset: 4672)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !808, file: !26, line: 749, baseType: !1615, size: 64, offset: 4736)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1617)
!1617 = !{!1618, !1619, !1620}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1616, file: !26, line: 433, baseType: !7, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1616, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1616, file: !26, line: 435, baseType: !286, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !808, file: !26, line: 751, baseType: !157, size: 128, offset: 4800)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !808, file: !26, line: 762, baseType: !1623, size: 64, offset: 4928)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !808, file: !26, line: 770, baseType: !1626, offset: 4992)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1627, line: 5, elements: !527)
!1627 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !808, file: !26, line: 772, baseType: !1629, size: 64, offset: 4992)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1631, line: 18, flags: DIFlagFwdDecl)
!1631 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !808, file: !26, line: 773, baseType: !1633, size: 64, offset: 5056)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !96, line: 22, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !808, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !808, file: !26, line: 778, baseType: !1637, size: 32, offset: 5152)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !149, line: 21, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !149, line: 18, baseType: !1127)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !808, file: !26, line: 779, baseType: !1127, size: 32, offset: 5184)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !808, file: !26, line: 781, baseType: !169, size: 32, offset: 5216)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !808, file: !26, line: 782, baseType: !157, size: 128, offset: 5248)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !808, file: !26, line: 784, baseType: !1643, size: 64, offset: 5376)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1646, line: 52, size: 768, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1656, !1660, !1661, !1662, !1663, !1667, !1671}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1645, file: !1646, line: 53, baseType: !127, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1645, file: !1646, line: 55, baseType: !137, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1645, file: !1646, line: 56, baseType: !137, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1645, file: !1646, line: 58, baseType: !1307, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1645, file: !1646, line: 59, baseType: !1653, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!238, !1310, !1316}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1645, file: !1646, line: 61, baseType: !1657, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1643}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1645, file: !1646, line: 62, baseType: !1241, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1645, file: !1646, line: 64, baseType: !1237, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1645, file: !1646, line: 66, baseType: !292, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1645, file: !1646, line: 67, baseType: !1664, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!311, !1310}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1645, file: !1646, line: 69, baseType: !1668, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1310, !331, !339}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1645, file: !1646, line: 71, baseType: !1258, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !808, file: !26, line: 785, baseType: !137, size: 64, offset: 5440)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !808, file: !26, line: 787, baseType: !1241, size: 64, offset: 5504)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !808, file: !26, line: 788, baseType: !1675, size: 64, offset: 5568)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !808, file: !26, line: 789, baseType: !1678, size: 64, offset: 5632)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !808, file: !26, line: 791, baseType: !1681, size: 64, offset: 5696)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1688}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1682, file: !26, line: 598, baseType: !70, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1682, file: !26, line: 599, baseType: !79, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1682, file: !26, line: 600, baseType: !84, size: 32, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1682, file: !26, line: 601, baseType: !301, size: 8, offset: 96)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1682, file: !26, line: 602, baseType: !301, size: 8, offset: 104)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !808, file: !26, line: 793, baseType: !89, size: 32, offset: 5760)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !808, file: !26, line: 795, baseType: !301, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !808, file: !26, line: 796, baseType: !301, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !808, file: !26, line: 797, baseType: !301, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !808, file: !26, line: 798, baseType: !301, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !808, file: !26, line: 799, baseType: !301, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !132, file: !96, line: 88, baseType: !1307, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !132, file: !96, line: 89, baseType: !1237, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !132, file: !96, line: 90, baseType: !1241, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !132, file: !96, line: 91, baseType: !1241, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !132, file: !96, line: 92, baseType: !1241, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !132, file: !96, line: 94, baseType: !1237, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !132, file: !96, line: 95, baseType: !1237, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !132, file: !96, line: 97, baseType: !1247, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !132, file: !96, line: 98, baseType: !1237, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !132, file: !96, line: 100, baseType: !1237, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !132, file: !96, line: 102, baseType: !1237, size: 64, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !132, file: !96, line: 103, baseType: !1241, size: 64, offset: 1088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !132, file: !96, line: 105, baseType: !1258, size: 64, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !132, file: !96, line: 107, baseType: !1709, size: 64, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !96, line: 107, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !132, file: !96, line: 109, baseType: !301, size: 8, offset: 1280)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !26, line: 67, baseType: !157, size: 128, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "add_dev", scope: !124, file: !26, line: 68, baseType: !1715, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!46, !807, !123}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev", scope: !124, file: !26, line: 69, baseType: !1719, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !807, !123}
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !149, line: 154, baseType: !7)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !815, line: 42, size: 3328, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1724, file: !815, line: 43, baseType: !165, size: 768)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "devices_kset", scope: !1724, file: !815, line: 44, baseType: !164, size: 64, offset: 768)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !1724, file: !815, line: 45, baseType: !157, size: 128, offset: 832)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1724, file: !815, line: 46, baseType: !410, size: 256, offset: 960)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_kset", scope: !1724, file: !815, line: 48, baseType: !164, size: 64, offset: 1216)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1724, file: !815, line: 49, baseType: !818, size: 320, align: 64, offset: 1280)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "klist_drivers", scope: !1724, file: !815, line: 50, baseType: !818, size: 320, align: 64, offset: 1600)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "bus_notifier", scope: !1724, file: !815, line: 51, baseType: !1522, size: 384, offset: 1920)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !1724, file: !815, line: 52, baseType: !7, size: 1, offset: 2304, flags: DIFlagBitField, extraData: i64 2304)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1724, file: !815, line: 53, baseType: !845, size: 64, offset: 2368)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1724, file: !815, line: 54, baseType: !807, size: 64, offset: 2432)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "glue_dirs", scope: !1724, file: !815, line: 56, baseType: !165, size: 768, offset: 2496)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1724, file: !815, line: 57, baseType: !1643, size: 64, offset: 3264)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1724, file: !815, line: 59, baseType: !1740, offset: 3328)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1146, line: 206, elements: !527)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !160)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_attribute", file: !20, line: 135, size: 256, elements: !1746)
!1746 = !{!1747, !1748, !1752}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1745, file: !20, line: 136, baseType: !275, size: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1745, file: !20, line: 137, baseType: !1749, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!269, !840, !238}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1745, file: !20, line: 138, baseType: !1753, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!269, !840, !127, !283}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_attribute", file: !96, line: 118, size: 256, elements: !1758)
!1758 = !{!1759, !1760, !1764}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1757, file: !96, line: 119, baseType: !275, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1757, file: !96, line: 120, baseType: !1761, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!269, !845, !238}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1757, file: !96, line: 121, baseType: !1765, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!269, !845, !127, !283}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1769 = !{!0, !1770, !1772, !1774, !1776, !1778, !1783, !1786, !1791, !1796, !1801, !1806, !1811, !1813, !1815, !1833, !1838, !1841, !1843, !1848, !1850, !1852, !1854, !1856, !1858, !1860, !1862, !1864, !1866, !1868, !1870, !1872, !1875, !1878, !1880, !1882, !1887, !1889, !1891, !1893, !1895, !1897, !1899, !1904, !1906, !1908, !1910, !1912, !1917, !1919, !1924, !1926, !1928}
!1770 = !DIGlobalVariableExpression(var: !1771, expr: !DIExpression())
!1771 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_remove_file206", scope: !2, file: !3, line: 206, type: !122, isLocal: true, isDefinition: true)
!1772 = !DIGlobalVariableExpression(var: !1773, expr: !DIExpression())
!1773 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_for_each_dev207", scope: !2, file: !3, line: 375, type: !122, isLocal: true, isDefinition: true)
!1774 = !DIGlobalVariableExpression(var: !1775, expr: !DIExpression())
!1775 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_find_device208", scope: !2, file: !3, line: 412, type: !122, isLocal: true, isDefinition: true)
!1776 = !DIGlobalVariableExpression(var: !1777, expr: !DIExpression())
!1777 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_for_each_drv209", scope: !2, file: !3, line: 464, type: !122, isLocal: true, isDefinition: true)
!1778 = !DIGlobalVariableExpression(var: !1779, expr: !DIExpression())
!1779 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !1780, isLocal: true, isDefinition: true)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 80, elements: !1781)
!1781 = !{!1782}
!1782 = !DISubrange(count: 10)
!1783 = !DIGlobalVariableExpression(var: !1784, expr: !DIExpression())
!1784 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !1785, isLocal: true, isDefinition: true)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 24, elements: !239)
!1786 = !DIGlobalVariableExpression(var: !1787, expr: !DIExpression())
!1787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !1788, isLocal: true, isDefinition: true)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 352, elements: !1789)
!1789 = !{!1790}
!1790 = !DISubrange(count: 44)
!1791 = !DIGlobalVariableExpression(var: !1792, expr: !DIExpression())
!1792 = distinct !DIGlobalVariable(scope: null, file: !3, line: 681, type: !1793, isLocal: true, isDefinition: true)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 120, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 15)
!1796 = !DIGlobalVariableExpression(var: !1797, expr: !DIExpression())
!1797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 688, type: !1798, isLocal: true, isDefinition: true)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 248, elements: !1799)
!1799 = !{!1800}
!1800 = !DISubrange(count: 31)
!1801 = !DIGlobalVariableExpression(var: !1802, expr: !DIExpression())
!1802 = distinct !DIGlobalVariable(scope: null, file: !3, line: 694, type: !1803, isLocal: true, isDefinition: true)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 288, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 36)
!1806 = !DIGlobalVariableExpression(var: !1807, expr: !DIExpression())
!1807 = distinct !DIGlobalVariable(scope: null, file: !3, line: 702, type: !1808, isLocal: true, isDefinition: true)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 264, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 33)
!1811 = !DIGlobalVariableExpression(var: !1812, expr: !DIExpression())
!1812 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_rescan_devices210", scope: !2, file: !3, line: 785, type: !122, isLocal: true, isDefinition: true)
!1813 = !DIGlobalVariableExpression(var: !1814, expr: !DIExpression())
!1814 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_reprobe211", scope: !2, file: !3, line: 802, type: !122, isLocal: true, isDefinition: true)
!1815 = !DIGlobalVariableExpression(var: !1816, expr: !DIExpression())
!1816 = distinct !DIGlobalVariable(name: "__key", scope: !1817, file: !3, line: 866, type: !1740, isLocal: true, isDefinition: true)
!1817 = distinct !DISubprogram(name: "bus_register", scope: !3, file: !3, line: 853, type: !1818, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!46, !845}
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1827, !1828, !1829, !1830, !1831, !1832}
!1821 = !DILocalVariable(name: "bus", arg: 1, scope: !1817, file: !3, line: 853, type: !845)
!1822 = !DILocalVariable(name: "retval", scope: !1817, file: !3, line: 855, type: !46)
!1823 = !DILocalVariable(name: "priv", scope: !1817, file: !3, line: 856, type: !1723)
!1824 = !DILocalVariable(name: "bus_kobj", scope: !1817, file: !3, line: 857, type: !151)
!1825 = !DILocalVariable(name: "key", scope: !1817, file: !3, line: 858, type: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1827 = !DILabel(scope: !1817, name: "bus_groups_fail", file: !3, line: 915)
!1828 = !DILabel(scope: !1817, name: "bus_probe_files_fail", file: !3, line: 917)
!1829 = !DILabel(scope: !1817, name: "bus_drivers_fail", file: !3, line: 919)
!1830 = !DILabel(scope: !1817, name: "bus_devices_fail", file: !3, line: 921)
!1831 = !DILabel(scope: !1817, name: "bus_uevent_fail", file: !3, line: 923)
!1832 = !DILabel(scope: !1817, name: "out", file: !3, line: 927)
!1833 = !DIGlobalVariableExpression(var: !1834, expr: !DIExpression())
!1834 = distinct !DIGlobalVariable(scope: null, file: !3, line: 866, type: !1835, isLocal: true, isDefinition: true)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 240, elements: !1836)
!1836 = !{!1837}
!1837 = !DISubrange(count: 30)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(scope: null, file: !3, line: 885, type: !1840, isLocal: true, isDefinition: true)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !1431)
!1841 = !DIGlobalVariableExpression(var: !1842, expr: !DIExpression())
!1842 = distinct !DIGlobalVariable(scope: null, file: !3, line: 891, type: !1840, isLocal: true, isDefinition: true)
!1843 = !DIGlobalVariableExpression(var: !1844, expr: !DIExpression())
!1844 = distinct !DIGlobalVariable(scope: null, file: !3, line: 900, type: !1845, isLocal: true, isDefinition: true)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 104, elements: !1846)
!1846 = !{!1847}
!1847 = !DISubrange(count: 13)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_register212", scope: !2, file: !3, line: 931, type: !122, isLocal: true, isDefinition: true)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_unregister213", scope: !2, file: !3, line: 962, type: !122, isLocal: true, isDefinition: true)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_register_notifier214", scope: !2, file: !3, line: 976, type: !122, isLocal: true, isDefinition: true)
!1854 = !DIGlobalVariableExpression(var: !1855, expr: !DIExpression())
!1855 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_unregister_notifier215", scope: !2, file: !3, line: 989, type: !122, isLocal: true, isDefinition: true)
!1856 = !DIGlobalVariableExpression(var: !1857, expr: !DIExpression())
!1857 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_get_kset216", scope: !2, file: !3, line: 1015, type: !122, isLocal: true, isDefinition: true)
!1858 = !DIGlobalVariableExpression(var: !1859, expr: !DIExpression())
!1859 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_sort_breadthfirst217", scope: !2, file: !3, line: 1069, type: !122, isLocal: true, isDefinition: true)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_subsys_interface_register218", scope: !2, file: !3, line: 1168, type: !122, isLocal: true, isDefinition: true)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_subsys_interface_unregister219", scope: !2, file: !3, line: 1201, type: !122, isLocal: true, isDefinition: true)
!1864 = !DIGlobalVariableExpression(var: !1865, expr: !DIExpression())
!1865 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_subsys_system_register220", scope: !2, file: !3, line: 1283, type: !122, isLocal: true, isDefinition: true)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_subsys_virtual_register221", scope: !2, file: !3, line: 1307, type: !122, isLocal: true, isDefinition: true)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_find222", scope: !2, file: !3, line: 1341, type: !122, isLocal: true, isDefinition: true)
!1870 = !DIGlobalVariableExpression(var: !1871, expr: !DIExpression())
!1871 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bus_get_dev_root223", scope: !2, file: !3, line: 1383, type: !122, isLocal: true, isDefinition: true)
!1872 = !DIGlobalVariableExpression(var: !1873, expr: !DIExpression())
!1873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1387, type: !1874, isLocal: true, isDefinition: true)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32, elements: !616)
!1875 = !DIGlobalVariableExpression(var: !1876, expr: !DIExpression())
!1876 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1391, type: !1877, isLocal: true, isDefinition: true)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 56, elements: !1001)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(name: "system_kset", scope: !2, file: !3, line: 26, type: !164, isLocal: true, isDefinition: true)
!1880 = !DIGlobalVariableExpression(var: !1881, expr: !DIExpression())
!1881 = distinct !DIGlobalVariable(name: "bus_kset", scope: !2, file: !3, line: 29, type: !164, isLocal: true, isDefinition: true)
!1882 = !DIGlobalVariableExpression(var: !1883, expr: !DIExpression())
!1883 = distinct !DIGlobalVariable(scope: null, file: !112, line: 480, type: !1884, isLocal: true, isDefinition: true)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 168, elements: !1885)
!1885 = !{!1886}
!1886 = !DISubrange(count: 21)
!1887 = !DIGlobalVariableExpression(var: !1888, expr: !DIExpression())
!1888 = distinct !DIGlobalVariable(name: "driver_ktype", scope: !2, file: !3, line: 142, type: !253, isLocal: true, isDefinition: true)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(name: "driver_sysfs_ops", scope: !2, file: !3, line: 129, type: !262, isLocal: true, isDefinition: true)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !3, line: 638, type: !1877, isLocal: true, isDefinition: true)
!1893 = !DIGlobalVariableExpression(var: !1894, expr: !DIExpression())
!1894 = distinct !DIGlobalVariable(name: "driver_attr_uevent", scope: !2, file: !3, line: 638, type: !1745, isLocal: true, isDefinition: true)
!1895 = !DIGlobalVariableExpression(var: !1896, expr: !DIExpression())
!1896 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !1877, isLocal: true, isDefinition: true)
!1897 = !DIGlobalVariableExpression(var: !1898, expr: !DIExpression())
!1898 = distinct !DIGlobalVariable(name: "driver_attr_unbind", scope: !2, file: !3, line: 251, type: !1745, isLocal: true, isDefinition: true)
!1899 = !DIGlobalVariableExpression(var: !1900, expr: !DIExpression())
!1900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !1901, isLocal: true, isDefinition: true)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 40, elements: !1902)
!1902 = !{!1903}
!1903 = !DISubrange(count: 5)
!1904 = !DIGlobalVariableExpression(var: !1905, expr: !DIExpression())
!1905 = distinct !DIGlobalVariable(name: "driver_attr_bind", scope: !2, file: !3, line: 277, type: !1745, isLocal: true, isDefinition: true)
!1906 = !DIGlobalVariableExpression(var: !1907, expr: !DIExpression())
!1907 = distinct !DIGlobalVariable(name: "bus_ktype", scope: !2, file: !3, line: 216, type: !253, isLocal: true, isDefinition: true)
!1908 = !DIGlobalVariableExpression(var: !1909, expr: !DIExpression())
!1909 = distinct !DIGlobalVariable(name: "bus_sysfs_ops", scope: !2, file: !3, line: 176, type: !262, isLocal: true, isDefinition: true)
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(name: "bus_attr_uevent", scope: !2, file: !3, line: 842, type: !1757, isLocal: true, isDefinition: true)
!1912 = !DIGlobalVariableExpression(var: !1913, expr: !DIExpression())
!1913 = distinct !DIGlobalVariable(scope: null, file: !3, line: 606, type: !1914, isLocal: true, isDefinition: true)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 112, elements: !1915)
!1915 = !{!1916}
!1916 = !DISubrange(count: 14)
!1917 = !DIGlobalVariableExpression(var: !1918, expr: !DIExpression())
!1918 = distinct !DIGlobalVariable(name: "bus_attr_drivers_probe", scope: !2, file: !3, line: 606, type: !1757, isLocal: true, isDefinition: true)
!1919 = !DIGlobalVariableExpression(var: !1920, expr: !DIExpression())
!1920 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !1921, isLocal: true, isDefinition: true)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 144, elements: !1922)
!1922 = !{!1923}
!1923 = !DISubrange(count: 18)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(name: "bus_attr_drivers_autoprobe", scope: !2, file: !3, line: 607, type: !1757, isLocal: true, isDefinition: true)
!1926 = !DIGlobalVariableExpression(var: !1927, expr: !DIExpression())
!1927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !1874, isLocal: true, isDefinition: true)
!1928 = !DIGlobalVariableExpression(var: !1929, expr: !DIExpression())
!1929 = distinct !DIGlobalVariable(name: "bus_uevent_ops", scope: !2, file: !3, line: 230, type: !213, isLocal: true, isDefinition: true)
!1930 = !{i32 7, !"Dwarf Version", i32 5}
!1931 = !{i32 2, !"Debug Info Version", i32 3}
!1932 = !{i32 1, !"wchar_size", i32 2}
!1933 = !{i32 8, !"cf-protection-branch", i32 1}
!1934 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1935 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1936 = !{i32 1, !"Code Model", i32 2}
!1937 = !{i32 1, !"override-stack-alignment", i32 8}
!1938 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1939 = distinct !DISubprogram(name: "bus_create_file", scope: !3, file: !3, line: 181, type: !1940, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!46, !845, !1756}
!1942 = !{!1943, !1944, !1945, !1946}
!1943 = !DILocalVariable(name: "bus", arg: 1, scope: !1939, file: !3, line: 181, type: !845)
!1944 = !DILocalVariable(name: "attr", arg: 2, scope: !1939, file: !3, line: 181, type: !1756)
!1945 = !DILocalVariable(name: "sp", scope: !1939, file: !3, line: 183, type: !1723)
!1946 = !DILocalVariable(name: "error", scope: !1939, file: !3, line: 184, type: !46)
!1947 = !DILocation(line: 181, column: 44, scope: !1939)
!1948 = !DILocation(line: 181, column: 71, scope: !1939)
!1949 = !DILocation(line: 183, column: 2, scope: !1939)
!1950 = !DILocation(line: 183, column: 25, scope: !1939)
!1951 = !DILocation(line: 183, column: 44, scope: !1939)
!1952 = !DILocation(line: 183, column: 30, scope: !1939)
!1953 = !DILocation(line: 184, column: 2, scope: !1939)
!1954 = !DILocation(line: 184, column: 6, scope: !1939)
!1955 = !DILocation(line: 186, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 186, column: 6)
!1957 = !DILocation(line: 186, column: 6, scope: !1939)
!1958 = !DILocation(line: 187, column: 3, scope: !1956)
!1959 = !DILocation(line: 189, column: 29, scope: !1939)
!1960 = !DILocation(line: 189, column: 33, scope: !1939)
!1961 = !DILocation(line: 189, column: 40, scope: !1939)
!1962 = !DILocation(line: 189, column: 47, scope: !1939)
!1963 = !DILocation(line: 189, column: 53, scope: !1939)
!1964 = !DILocation(line: 189, column: 10, scope: !1939)
!1965 = !DILocation(line: 189, column: 8, scope: !1939)
!1966 = !DILocation(line: 191, column: 13, scope: !1939)
!1967 = !DILocation(line: 191, column: 2, scope: !1939)
!1968 = !DILocation(line: 192, column: 9, scope: !1939)
!1969 = !DILocation(line: 192, column: 2, scope: !1939)
!1970 = !DILocation(line: 193, column: 1, scope: !1939)
!1971 = distinct !DISubprogram(name: "bus_to_subsys", scope: !3, file: !3, line: 60, type: !1972, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1723, !845}
!1974 = !{!1975, !1976, !1977, !1978, !1981, !1984, !1986, !1988, !1990}
!1975 = !DILocalVariable(name: "bus", arg: 1, scope: !1971, file: !3, line: 60, type: !845)
!1976 = !DILocalVariable(name: "sp", scope: !1971, file: !3, line: 62, type: !1723)
!1977 = !DILocalVariable(name: "kobj", scope: !1971, file: !3, line: 63, type: !151)
!1978 = !DILocalVariable(name: "__mptr", scope: !1979, file: !3, line: 73, type: !122)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 73, column: 2)
!1980 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 73, column: 2)
!1981 = !DILocalVariable(name: "kset", scope: !1982, file: !3, line: 74, type: !164)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 73, column: 52)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 73, column: 2)
!1984 = !DILocalVariable(name: "__mptr", scope: !1985, file: !3, line: 74, type: !122)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 74, column: 23)
!1986 = !DILocalVariable(name: "__mptr", scope: !1987, file: !3, line: 76, type: !122)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 76, column: 8)
!1988 = !DILocalVariable(name: "__mptr", scope: !1989, file: !3, line: 73, type: !122)
!1989 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 73, column: 2)
!1990 = !DILabel(scope: !1971, name: "done", file: !3, line: 81)
!1991 = !DILocation(line: 60, column: 68, scope: !1971)
!1992 = !DILocation(line: 62, column: 2, scope: !1971)
!1993 = !DILocation(line: 62, column: 25, scope: !1971)
!1994 = !DILocation(line: 63, column: 2, scope: !1971)
!1995 = !DILocation(line: 63, column: 18, scope: !1971)
!1996 = !DILocation(line: 65, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 65, column: 6)
!1998 = !DILocation(line: 65, column: 11, scope: !1997)
!1999 = !DILocation(line: 65, column: 15, scope: !1997)
!2000 = !DILocation(line: 65, column: 6, scope: !1971)
!2001 = !DILocation(line: 66, column: 3, scope: !1997)
!2002 = !DILocation(line: 68, column: 13, scope: !1971)
!2003 = !DILocation(line: 68, column: 23, scope: !1971)
!2004 = !DILocation(line: 68, column: 2, scope: !1971)
!2005 = !DILocation(line: 70, column: 18, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 70, column: 6)
!2007 = !DILocation(line: 70, column: 28, scope: !2006)
!2008 = !DILocation(line: 70, column: 6, scope: !2006)
!2009 = !DILocation(line: 70, column: 6, scope: !1971)
!2010 = !DILocation(line: 71, column: 3, scope: !2006)
!2011 = !DILocation(line: 73, column: 2, scope: !1979)
!2012 = !DILocation(line: 73, column: 2, scope: !1980)
!2013 = !DILocation(line: 73, column: 2, scope: !1983)
!2014 = !DILocation(line: 74, column: 3, scope: !1982)
!2015 = !DILocation(line: 74, column: 16, scope: !1982)
!2016 = !DILocation(line: 74, column: 23, scope: !1985)
!2017 = !DILocation(line: 74, column: 23, scope: !1982)
!2018 = !DILocation(line: 76, column: 8, scope: !1987)
!2019 = !DILocation(line: 76, column: 8, scope: !1982)
!2020 = !DILocation(line: 76, column: 6, scope: !1982)
!2021 = !DILocation(line: 77, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 77, column: 7)
!2023 = !DILocation(line: 77, column: 11, scope: !2022)
!2024 = !DILocation(line: 77, column: 18, scope: !2022)
!2025 = !DILocation(line: 77, column: 15, scope: !2022)
!2026 = !DILocation(line: 77, column: 7, scope: !1982)
!2027 = !DILocation(line: 78, column: 4, scope: !2022)
!2028 = !DILocation(line: 79, column: 2, scope: !1983)
!2029 = !DILocation(line: 79, column: 2, scope: !1982)
!2030 = !DILocation(line: 73, column: 2, scope: !1989)
!2031 = distinct !{!2031, !2012, !2032, !2033, !2034}
!2032 = !DILocation(line: 79, column: 2, scope: !1980)
!2033 = !{!"llvm.loop.mustprogress"}
!2034 = !{!"llvm.loop.unroll.disable"}
!2035 = !DILocation(line: 80, column: 5, scope: !1971)
!2036 = !DILocation(line: 80, column: 2, scope: !1971)
!2037 = !DILocation(line: 81, column: 1, scope: !1971)
!2038 = !DILocation(line: 82, column: 18, scope: !1971)
!2039 = !DILocation(line: 82, column: 7, scope: !1971)
!2040 = !DILocation(line: 82, column: 5, scope: !1971)
!2041 = !DILocation(line: 83, column: 15, scope: !1971)
!2042 = !DILocation(line: 83, column: 25, scope: !1971)
!2043 = !DILocation(line: 83, column: 2, scope: !1971)
!2044 = !DILocation(line: 84, column: 9, scope: !1971)
!2045 = !DILocation(line: 84, column: 2, scope: !1971)
!2046 = !DILocation(line: 85, column: 1, scope: !1971)
!2047 = distinct !DISubprogram(name: "sysfs_create_file", scope: !141, file: !141, line: 620, type: !2048, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2052)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!46, !151, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!2052 = !{!2053, !2054}
!2053 = !DILocalVariable(name: "kobj", arg: 1, scope: !2047, file: !141, line: 620, type: !151)
!2054 = !DILocalVariable(name: "attr", arg: 2, scope: !2047, file: !141, line: 621, type: !2050)
!2055 = !DILocation(line: 620, column: 66, scope: !2047)
!2056 = !DILocation(line: 621, column: 32, scope: !2047)
!2057 = !DILocation(line: 623, column: 30, scope: !2047)
!2058 = !DILocation(line: 623, column: 36, scope: !2047)
!2059 = !DILocation(line: 623, column: 9, scope: !2047)
!2060 = !DILocation(line: 623, column: 2, scope: !2047)
!2061 = distinct !DISubprogram(name: "subsys_put", scope: !815, file: !815, line: 70, type: !2062, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !1723}
!2064 = !{!2065}
!2065 = !DILocalVariable(name: "sp", arg: 1, scope: !2061, file: !815, line: 70, type: !1723)
!2066 = !DILocation(line: 70, column: 54, scope: !2061)
!2067 = !DILocation(line: 72, column: 6, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2061, file: !815, line: 72, column: 6)
!2069 = !DILocation(line: 72, column: 6, scope: !2061)
!2070 = !DILocation(line: 73, column: 13, scope: !2068)
!2071 = !DILocation(line: 73, column: 17, scope: !2068)
!2072 = !DILocation(line: 73, column: 3, scope: !2068)
!2073 = !DILocation(line: 74, column: 1, scope: !2061)
!2074 = distinct !DISubprogram(name: "bus_remove_file", scope: !3, file: !3, line: 196, type: !2075, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !845, !1756}
!2077 = !{!2078, !2079, !2080}
!2078 = !DILocalVariable(name: "bus", arg: 1, scope: !2074, file: !3, line: 196, type: !845)
!2079 = !DILocalVariable(name: "attr", arg: 2, scope: !2074, file: !3, line: 196, type: !1756)
!2080 = !DILocalVariable(name: "sp", scope: !2074, file: !3, line: 198, type: !1723)
!2081 = !DILocation(line: 196, column: 45, scope: !2074)
!2082 = !DILocation(line: 196, column: 72, scope: !2074)
!2083 = !DILocation(line: 198, column: 2, scope: !2074)
!2084 = !DILocation(line: 198, column: 25, scope: !2074)
!2085 = !DILocation(line: 198, column: 44, scope: !2074)
!2086 = !DILocation(line: 198, column: 30, scope: !2074)
!2087 = !DILocation(line: 200, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 200, column: 6)
!2089 = !DILocation(line: 200, column: 6, scope: !2074)
!2090 = !DILocation(line: 201, column: 3, scope: !2088)
!2091 = !DILocation(line: 203, column: 21, scope: !2074)
!2092 = !DILocation(line: 203, column: 25, scope: !2074)
!2093 = !DILocation(line: 203, column: 32, scope: !2074)
!2094 = !DILocation(line: 203, column: 39, scope: !2074)
!2095 = !DILocation(line: 203, column: 45, scope: !2074)
!2096 = !DILocation(line: 203, column: 2, scope: !2074)
!2097 = !DILocation(line: 204, column: 13, scope: !2074)
!2098 = !DILocation(line: 204, column: 2, scope: !2074)
!2099 = !DILocation(line: 205, column: 1, scope: !2074)
!2100 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !141, file: !141, line: 626, type: !2101, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !151, !2050}
!2103 = !{!2104, !2105}
!2104 = !DILocalVariable(name: "kobj", arg: 1, scope: !2100, file: !141, line: 626, type: !151)
!2105 = !DILocalVariable(name: "attr", arg: 2, scope: !2100, file: !141, line: 627, type: !2050)
!2106 = !DILocation(line: 626, column: 54, scope: !2100)
!2107 = !DILocation(line: 627, column: 34, scope: !2100)
!2108 = !DILocation(line: 629, column: 23, scope: !2100)
!2109 = !DILocation(line: 629, column: 29, scope: !2100)
!2110 = !DILocation(line: 629, column: 2, scope: !2100)
!2111 = !DILocation(line: 630, column: 1, scope: !2100)
!2112 = distinct !DISubprogram(name: "bus_for_each_dev", scope: !3, file: !3, line: 356, type: !2113, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!46, !845, !807, !122, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!46, !807, !122}
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2130, !2131}
!2119 = !DILocalVariable(name: "bus", arg: 1, scope: !2112, file: !3, line: 356, type: !845)
!2120 = !DILocalVariable(name: "start", arg: 2, scope: !2112, file: !3, line: 356, type: !807)
!2121 = !DILocalVariable(name: "data", arg: 3, scope: !2112, file: !3, line: 357, type: !122)
!2122 = !DILocalVariable(name: "fn", arg: 4, scope: !2112, file: !3, line: 357, type: !2115)
!2123 = !DILocalVariable(name: "sp", scope: !2112, file: !3, line: 359, type: !1723)
!2124 = !DILocalVariable(name: "i", scope: !2112, file: !3, line: 360, type: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !819, line: 54, size: 128, elements: !2126)
!2126 = !{!2127, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !2125, file: !819, line: 55, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !2125, file: !819, line: 56, baseType: !827, size: 64, offset: 64)
!2130 = !DILocalVariable(name: "dev", scope: !2112, file: !3, line: 361, type: !807)
!2131 = !DILocalVariable(name: "error", scope: !2112, file: !3, line: 362, type: !46)
!2132 = !DILocation(line: 356, column: 45, scope: !2112)
!2133 = !DILocation(line: 356, column: 65, scope: !2112)
!2134 = !DILocation(line: 357, column: 14, scope: !2112)
!2135 = !DILocation(line: 357, column: 26, scope: !2112)
!2136 = !DILocation(line: 359, column: 2, scope: !2112)
!2137 = !DILocation(line: 359, column: 25, scope: !2112)
!2138 = !DILocation(line: 359, column: 44, scope: !2112)
!2139 = !DILocation(line: 359, column: 30, scope: !2112)
!2140 = !DILocation(line: 360, column: 2, scope: !2112)
!2141 = !DILocation(line: 360, column: 20, scope: !2112)
!2142 = !DILocation(line: 361, column: 2, scope: !2112)
!2143 = !DILocation(line: 361, column: 17, scope: !2112)
!2144 = !DILocation(line: 362, column: 2, scope: !2112)
!2145 = !DILocation(line: 362, column: 6, scope: !2112)
!2146 = !DILocation(line: 364, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 364, column: 6)
!2148 = !DILocation(line: 364, column: 6, scope: !2112)
!2149 = !DILocation(line: 365, column: 3, scope: !2147)
!2150 = !DILocation(line: 367, column: 24, scope: !2112)
!2151 = !DILocation(line: 367, column: 28, scope: !2112)
!2152 = !DILocation(line: 368, column: 10, scope: !2112)
!2153 = !DILocation(line: 368, column: 19, scope: !2112)
!2154 = !DILocation(line: 368, column: 26, scope: !2112)
!2155 = !DILocation(line: 368, column: 29, scope: !2112)
!2156 = !DILocation(line: 367, column: 2, scope: !2112)
!2157 = !DILocation(line: 369, column: 2, scope: !2112)
!2158 = !DILocation(line: 369, column: 10, scope: !2112)
!2159 = !DILocation(line: 369, column: 16, scope: !2112)
!2160 = !DILocation(line: 369, column: 26, scope: !2112)
!2161 = !DILocation(line: 369, column: 24, scope: !2112)
!2162 = !DILocation(line: 0, scope: !2112)
!2163 = !DILocation(line: 370, column: 11, scope: !2112)
!2164 = !DILocation(line: 370, column: 14, scope: !2112)
!2165 = !DILocation(line: 370, column: 19, scope: !2112)
!2166 = !DILocation(line: 370, column: 9, scope: !2112)
!2167 = distinct !{!2167, !2157, !2168, !2033, !2034}
!2168 = !DILocation(line: 370, column: 23, scope: !2112)
!2169 = !DILocation(line: 371, column: 2, scope: !2112)
!2170 = !DILocation(line: 372, column: 13, scope: !2112)
!2171 = !DILocation(line: 372, column: 2, scope: !2112)
!2172 = !DILocation(line: 373, column: 9, scope: !2112)
!2173 = !DILocation(line: 373, column: 2, scope: !2112)
!2174 = !DILocation(line: 374, column: 1, scope: !2112)
!2175 = !DISubprogram(name: "klist_iter_init_node", scope: !819, file: !819, line: 61, type: !2176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2128, !2178, !827}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2179 = distinct !DISubprogram(name: "next_device", scope: !3, file: !3, line: 324, type: !2180, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!807, !2178}
!2182 = !{!2183, !2184, !2185, !2186, !2187}
!2183 = !DILocalVariable(name: "i", arg: 1, scope: !2179, file: !3, line: 324, type: !2178)
!2184 = !DILocalVariable(name: "n", scope: !2179, file: !3, line: 326, type: !827)
!2185 = !DILocalVariable(name: "dev", scope: !2179, file: !3, line: 327, type: !807)
!2186 = !DILocalVariable(name: "dev_prv", scope: !2179, file: !3, line: 328, type: !813)
!2187 = !DILocalVariable(name: "__mptr", scope: !2188, file: !3, line: 331, type: !122)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 331, column: 13)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 330, column: 9)
!2190 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 330, column: 6)
!2191 = !DILocation(line: 324, column: 54, scope: !2179)
!2192 = !DILocation(line: 326, column: 2, scope: !2179)
!2193 = !DILocation(line: 326, column: 21, scope: !2179)
!2194 = !DILocation(line: 326, column: 36, scope: !2179)
!2195 = !DILocation(line: 326, column: 25, scope: !2179)
!2196 = !DILocation(line: 327, column: 2, scope: !2179)
!2197 = !DILocation(line: 327, column: 17, scope: !2179)
!2198 = !DILocation(line: 328, column: 2, scope: !2179)
!2199 = !DILocation(line: 328, column: 25, scope: !2179)
!2200 = !DILocation(line: 330, column: 6, scope: !2190)
!2201 = !DILocation(line: 330, column: 6, scope: !2179)
!2202 = !DILocation(line: 331, column: 13, scope: !2188)
!2203 = !DILocation(line: 331, column: 13, scope: !2189)
!2204 = !DILocation(line: 331, column: 11, scope: !2189)
!2205 = !DILocation(line: 332, column: 9, scope: !2189)
!2206 = !DILocation(line: 332, column: 18, scope: !2189)
!2207 = !DILocation(line: 332, column: 7, scope: !2189)
!2208 = !DILocation(line: 333, column: 2, scope: !2189)
!2209 = !DILocation(line: 334, column: 9, scope: !2179)
!2210 = !DILocation(line: 335, column: 1, scope: !2179)
!2211 = !DILocation(line: 334, column: 2, scope: !2179)
!2212 = !DISubprogram(name: "klist_iter_exit", scope: !819, file: !819, line: 63, type: !2213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2178}
!2215 = distinct !DISubprogram(name: "bus_find_device", scope: !3, file: !3, line: 392, type: !2216, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!807, !845, !807, !311, !2218}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!46, !807, !311}
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2222 = !DILocalVariable(name: "bus", arg: 1, scope: !2215, file: !3, line: 392, type: !845)
!2223 = !DILocalVariable(name: "start", arg: 2, scope: !2215, file: !3, line: 393, type: !807)
!2224 = !DILocalVariable(name: "data", arg: 3, scope: !2215, file: !3, line: 393, type: !311)
!2225 = !DILocalVariable(name: "match", arg: 4, scope: !2215, file: !3, line: 394, type: !2218)
!2226 = !DILocalVariable(name: "sp", scope: !2215, file: !3, line: 396, type: !1723)
!2227 = !DILocalVariable(name: "i", scope: !2215, file: !3, line: 397, type: !2125)
!2228 = !DILocalVariable(name: "dev", scope: !2215, file: !3, line: 398, type: !807)
!2229 = !DILocation(line: 392, column: 55, scope: !2215)
!2230 = !DILocation(line: 393, column: 26, scope: !2215)
!2231 = !DILocation(line: 393, column: 45, scope: !2215)
!2232 = !DILocation(line: 394, column: 17, scope: !2215)
!2233 = !DILocation(line: 396, column: 2, scope: !2215)
!2234 = !DILocation(line: 396, column: 25, scope: !2215)
!2235 = !DILocation(line: 396, column: 44, scope: !2215)
!2236 = !DILocation(line: 396, column: 30, scope: !2215)
!2237 = !DILocation(line: 397, column: 2, scope: !2215)
!2238 = !DILocation(line: 397, column: 20, scope: !2215)
!2239 = !DILocation(line: 398, column: 2, scope: !2215)
!2240 = !DILocation(line: 398, column: 17, scope: !2215)
!2241 = !DILocation(line: 400, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 400, column: 6)
!2243 = !DILocation(line: 400, column: 6, scope: !2215)
!2244 = !DILocation(line: 401, column: 3, scope: !2242)
!2245 = !DILocation(line: 403, column: 24, scope: !2215)
!2246 = !DILocation(line: 403, column: 28, scope: !2215)
!2247 = !DILocation(line: 404, column: 10, scope: !2215)
!2248 = !DILocation(line: 404, column: 19, scope: !2215)
!2249 = !DILocation(line: 404, column: 26, scope: !2215)
!2250 = !DILocation(line: 404, column: 29, scope: !2215)
!2251 = !DILocation(line: 403, column: 2, scope: !2215)
!2252 = !DILocation(line: 405, column: 2, scope: !2215)
!2253 = !DILocation(line: 405, column: 16, scope: !2215)
!2254 = !DILocation(line: 405, column: 14, scope: !2215)
!2255 = !DILocation(line: 406, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 406, column: 7)
!2257 = !DILocation(line: 406, column: 13, scope: !2256)
!2258 = !DILocation(line: 406, column: 18, scope: !2256)
!2259 = !DILocation(line: 406, column: 24, scope: !2256)
!2260 = !DILocation(line: 406, column: 38, scope: !2256)
!2261 = !DILocation(line: 406, column: 27, scope: !2256)
!2262 = !DILocation(line: 406, column: 7, scope: !2215)
!2263 = !DILocation(line: 407, column: 4, scope: !2256)
!2264 = distinct !{!2264, !2252, !2265, !2033, !2034}
!2265 = !DILocation(line: 407, column: 4, scope: !2215)
!2266 = !DILocation(line: 408, column: 2, scope: !2215)
!2267 = !DILocation(line: 409, column: 13, scope: !2215)
!2268 = !DILocation(line: 409, column: 2, scope: !2215)
!2269 = !DILocation(line: 410, column: 9, scope: !2215)
!2270 = !DILocation(line: 410, column: 2, scope: !2215)
!2271 = !DILocation(line: 411, column: 1, scope: !2215)
!2272 = !DISubprogram(name: "get_device", scope: !26, file: !26, line: 1230, type: !2273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!807, !807}
!2275 = distinct !DISubprogram(name: "bus_for_each_drv", scope: !3, file: !3, line: 445, type: !2276, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2281)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!46, !845, !840, !122, !2278}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!46, !840, !122}
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289}
!2282 = !DILocalVariable(name: "bus", arg: 1, scope: !2275, file: !3, line: 445, type: !845)
!2283 = !DILocalVariable(name: "start", arg: 2, scope: !2275, file: !3, line: 445, type: !840)
!2284 = !DILocalVariable(name: "data", arg: 3, scope: !2275, file: !3, line: 446, type: !122)
!2285 = !DILocalVariable(name: "fn", arg: 4, scope: !2275, file: !3, line: 446, type: !2278)
!2286 = !DILocalVariable(name: "sp", scope: !2275, file: !3, line: 448, type: !1723)
!2287 = !DILocalVariable(name: "i", scope: !2275, file: !3, line: 449, type: !2125)
!2288 = !DILocalVariable(name: "drv", scope: !2275, file: !3, line: 450, type: !840)
!2289 = !DILocalVariable(name: "error", scope: !2275, file: !3, line: 451, type: !46)
!2290 = !DILocation(line: 445, column: 45, scope: !2275)
!2291 = !DILocation(line: 445, column: 72, scope: !2275)
!2292 = !DILocation(line: 446, column: 14, scope: !2275)
!2293 = !DILocation(line: 446, column: 26, scope: !2275)
!2294 = !DILocation(line: 448, column: 2, scope: !2275)
!2295 = !DILocation(line: 448, column: 25, scope: !2275)
!2296 = !DILocation(line: 448, column: 44, scope: !2275)
!2297 = !DILocation(line: 448, column: 30, scope: !2275)
!2298 = !DILocation(line: 449, column: 2, scope: !2275)
!2299 = !DILocation(line: 449, column: 20, scope: !2275)
!2300 = !DILocation(line: 450, column: 2, scope: !2275)
!2301 = !DILocation(line: 450, column: 24, scope: !2275)
!2302 = !DILocation(line: 451, column: 2, scope: !2275)
!2303 = !DILocation(line: 451, column: 6, scope: !2275)
!2304 = !DILocation(line: 453, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 453, column: 6)
!2306 = !DILocation(line: 453, column: 6, scope: !2275)
!2307 = !DILocation(line: 454, column: 3, scope: !2305)
!2308 = !DILocation(line: 456, column: 24, scope: !2275)
!2309 = !DILocation(line: 456, column: 28, scope: !2275)
!2310 = !DILocation(line: 457, column: 9, scope: !2275)
!2311 = !DILocation(line: 457, column: 18, scope: !2275)
!2312 = !DILocation(line: 457, column: 25, scope: !2275)
!2313 = !DILocation(line: 457, column: 28, scope: !2275)
!2314 = !DILocation(line: 456, column: 2, scope: !2275)
!2315 = !DILocation(line: 458, column: 2, scope: !2275)
!2316 = !DILocation(line: 458, column: 16, scope: !2275)
!2317 = !DILocation(line: 458, column: 14, scope: !2275)
!2318 = !DILocation(line: 458, column: 33, scope: !2275)
!2319 = !DILocation(line: 458, column: 37, scope: !2275)
!2320 = !DILocation(line: 458, column: 36, scope: !2275)
!2321 = !DILocation(line: 0, scope: !2275)
!2322 = !DILocation(line: 459, column: 11, scope: !2275)
!2323 = !DILocation(line: 459, column: 14, scope: !2275)
!2324 = !DILocation(line: 459, column: 19, scope: !2275)
!2325 = !DILocation(line: 459, column: 9, scope: !2275)
!2326 = distinct !{!2326, !2315, !2327, !2033, !2034}
!2327 = !DILocation(line: 459, column: 23, scope: !2275)
!2328 = !DILocation(line: 460, column: 2, scope: !2275)
!2329 = !DILocation(line: 461, column: 13, scope: !2275)
!2330 = !DILocation(line: 461, column: 2, scope: !2275)
!2331 = !DILocation(line: 462, column: 9, scope: !2275)
!2332 = !DILocation(line: 462, column: 2, scope: !2275)
!2333 = !DILocation(line: 463, column: 1, scope: !2275)
!2334 = distinct !DISubprogram(name: "next_driver", scope: !3, file: !3, line: 414, type: !2335, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!840, !2178}
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "i", arg: 1, scope: !2334, file: !3, line: 414, type: !2178)
!2339 = !DILocalVariable(name: "n", scope: !2334, file: !3, line: 416, type: !827)
!2340 = !DILocalVariable(name: "drv_priv", scope: !2334, file: !3, line: 417, type: !1287)
!2341 = !DILocalVariable(name: "__mptr", scope: !2342, file: !3, line: 420, type: !122)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 420, column: 14)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 419, column: 9)
!2344 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 419, column: 6)
!2345 = !DILocation(line: 414, column: 61, scope: !2334)
!2346 = !DILocation(line: 416, column: 2, scope: !2334)
!2347 = !DILocation(line: 416, column: 21, scope: !2334)
!2348 = !DILocation(line: 416, column: 36, scope: !2334)
!2349 = !DILocation(line: 416, column: 25, scope: !2334)
!2350 = !DILocation(line: 417, column: 2, scope: !2334)
!2351 = !DILocation(line: 417, column: 25, scope: !2334)
!2352 = !DILocation(line: 419, column: 6, scope: !2344)
!2353 = !DILocation(line: 419, column: 6, scope: !2334)
!2354 = !DILocation(line: 420, column: 14, scope: !2342)
!2355 = !DILocation(line: 420, column: 14, scope: !2343)
!2356 = !DILocation(line: 420, column: 12, scope: !2343)
!2357 = !DILocation(line: 421, column: 10, scope: !2343)
!2358 = !DILocation(line: 421, column: 20, scope: !2343)
!2359 = !DILocation(line: 421, column: 3, scope: !2343)
!2360 = !DILocation(line: 423, column: 2, scope: !2334)
!2361 = !DILocation(line: 424, column: 1, scope: !2334)
!2362 = distinct !DISubprogram(name: "bus_add_device", scope: !3, file: !3, line: 474, type: !1238, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369}
!2364 = !DILocalVariable(name: "dev", arg: 1, scope: !2362, file: !3, line: 474, type: !807)
!2365 = !DILocalVariable(name: "sp", scope: !2362, file: !3, line: 476, type: !1723)
!2366 = !DILocalVariable(name: "error", scope: !2362, file: !3, line: 477, type: !46)
!2367 = !DILabel(scope: !2362, name: "out_subsys", file: !3, line: 510)
!2368 = !DILabel(scope: !2362, name: "out_groups", file: !3, line: 512)
!2369 = !DILabel(scope: !2362, name: "out_put", file: !3, line: 514)
!2370 = !DILocation(line: 474, column: 35, scope: !2362)
!2371 = !DILocation(line: 476, column: 2, scope: !2362)
!2372 = !DILocation(line: 476, column: 25, scope: !2362)
!2373 = !DILocation(line: 476, column: 44, scope: !2362)
!2374 = !DILocation(line: 476, column: 49, scope: !2362)
!2375 = !DILocation(line: 476, column: 30, scope: !2362)
!2376 = !DILocation(line: 477, column: 2, scope: !2362)
!2377 = !DILocation(line: 477, column: 6, scope: !2362)
!2378 = !DILocation(line: 479, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 479, column: 6)
!2380 = !DILocation(line: 479, column: 6, scope: !2362)
!2381 = !DILocation(line: 485, column: 3, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 479, column: 11)
!2383 = !DILocation(line: 493, column: 2, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 493, column: 2)
!2385 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 493, column: 2)
!2386 = !DILocation(line: 493, column: 2, scope: !2385)
!2387 = !DILocation(line: 495, column: 28, scope: !2362)
!2388 = !DILocation(line: 495, column: 33, scope: !2362)
!2389 = !DILocation(line: 495, column: 37, scope: !2362)
!2390 = !DILocation(line: 495, column: 42, scope: !2362)
!2391 = !DILocation(line: 495, column: 10, scope: !2362)
!2392 = !DILocation(line: 495, column: 8, scope: !2362)
!2393 = !DILocation(line: 496, column: 6, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 496, column: 6)
!2395 = !DILocation(line: 496, column: 6, scope: !2362)
!2396 = !DILocation(line: 497, column: 3, scope: !2394)
!2397 = !DILocation(line: 499, column: 29, scope: !2362)
!2398 = !DILocation(line: 499, column: 33, scope: !2362)
!2399 = !DILocation(line: 499, column: 47, scope: !2362)
!2400 = !DILocation(line: 499, column: 54, scope: !2362)
!2401 = !DILocation(line: 499, column: 59, scope: !2362)
!2402 = !DILocation(line: 499, column: 74, scope: !2362)
!2403 = !DILocation(line: 499, column: 65, scope: !2362)
!2404 = !DILocation(line: 499, column: 10, scope: !2362)
!2405 = !DILocation(line: 499, column: 8, scope: !2362)
!2406 = !DILocation(line: 500, column: 6, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 500, column: 6)
!2408 = !DILocation(line: 500, column: 6, scope: !2362)
!2409 = !DILocation(line: 501, column: 3, scope: !2407)
!2410 = !DILocation(line: 503, column: 29, scope: !2362)
!2411 = !DILocation(line: 503, column: 34, scope: !2362)
!2412 = !DILocation(line: 503, column: 41, scope: !2362)
!2413 = !DILocation(line: 503, column: 45, scope: !2362)
!2414 = !DILocation(line: 503, column: 52, scope: !2362)
!2415 = !DILocation(line: 503, column: 10, scope: !2362)
!2416 = !DILocation(line: 503, column: 8, scope: !2362)
!2417 = !DILocation(line: 504, column: 6, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 504, column: 6)
!2419 = !DILocation(line: 504, column: 6, scope: !2362)
!2420 = !DILocation(line: 505, column: 3, scope: !2418)
!2421 = !DILocation(line: 507, column: 18, scope: !2362)
!2422 = !DILocation(line: 507, column: 23, scope: !2362)
!2423 = !DILocation(line: 507, column: 26, scope: !2362)
!2424 = !DILocation(line: 507, column: 38, scope: !2362)
!2425 = !DILocation(line: 507, column: 42, scope: !2362)
!2426 = !DILocation(line: 507, column: 2, scope: !2362)
!2427 = !DILocation(line: 508, column: 2, scope: !2362)
!2428 = !DILocation(line: 510, column: 1, scope: !2362)
!2429 = !DILocation(line: 511, column: 21, scope: !2362)
!2430 = !DILocation(line: 511, column: 25, scope: !2362)
!2431 = !DILocation(line: 511, column: 39, scope: !2362)
!2432 = !DILocation(line: 511, column: 54, scope: !2362)
!2433 = !DILocation(line: 511, column: 45, scope: !2362)
!2434 = !DILocation(line: 511, column: 2, scope: !2362)
!2435 = !DILocation(line: 512, column: 1, scope: !2362)
!2436 = !DILocation(line: 513, column: 23, scope: !2362)
!2437 = !DILocation(line: 513, column: 28, scope: !2362)
!2438 = !DILocation(line: 513, column: 32, scope: !2362)
!2439 = !DILocation(line: 513, column: 37, scope: !2362)
!2440 = !DILocation(line: 513, column: 2, scope: !2362)
!2441 = !DILocation(line: 514, column: 1, scope: !2362)
!2442 = !DILocation(line: 515, column: 13, scope: !2362)
!2443 = !DILocation(line: 515, column: 2, scope: !2362)
!2444 = !DILocation(line: 516, column: 9, scope: !2362)
!2445 = !DILocation(line: 516, column: 2, scope: !2362)
!2446 = !DILocation(line: 517, column: 1, scope: !2362)
!2447 = !DISubprogram(name: "device_add_groups", scope: !26, file: !26, line: 1189, type: !2448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!46, !807, !137}
!2450 = !DISubprogram(name: "sysfs_create_link", scope: !141, file: !141, line: 293, type: !2451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!46, !151, !151, !127}
!2453 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !2454, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!127, !1310}
!2456 = !{!2457}
!2457 = !DILocalVariable(name: "dev", arg: 1, scope: !2453, file: !26, line: 858, type: !1310)
!2458 = !DILocation(line: 858, column: 57, scope: !2453)
!2459 = !DILocation(line: 861, column: 6, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2453, file: !26, line: 861, column: 6)
!2461 = !DILocation(line: 861, column: 11, scope: !2460)
!2462 = !DILocation(line: 861, column: 6, scope: !2453)
!2463 = !DILocation(line: 862, column: 10, scope: !2460)
!2464 = !DILocation(line: 862, column: 15, scope: !2460)
!2465 = !DILocation(line: 862, column: 3, scope: !2460)
!2466 = !DILocation(line: 864, column: 23, scope: !2453)
!2467 = !DILocation(line: 864, column: 28, scope: !2453)
!2468 = !DILocation(line: 864, column: 9, scope: !2453)
!2469 = !DILocation(line: 864, column: 2, scope: !2453)
!2470 = !DILocation(line: 865, column: 1, scope: !2453)
!2471 = !DISubprogram(name: "klist_add_tail", scope: !819, file: !819, line: 43, type: !2472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !827, !2128}
!2474 = !DISubprogram(name: "sysfs_remove_link", scope: !141, file: !141, line: 298, type: !2475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !151, !127}
!2477 = !DISubprogram(name: "device_remove_groups", scope: !26, file: !26, line: 1191, type: !2478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !807, !137}
!2480 = distinct !DISubprogram(name: "bus_probe_device", scope: !3, file: !3, line: 525, type: !1242, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2488}
!2482 = !DILocalVariable(name: "dev", arg: 1, scope: !2480, file: !3, line: 525, type: !807)
!2483 = !DILocalVariable(name: "sp", scope: !2480, file: !3, line: 527, type: !1723)
!2484 = !DILocalVariable(name: "sif", scope: !2480, file: !3, line: 528, type: !123)
!2485 = !DILocalVariable(name: "__mptr", scope: !2486, file: !3, line: 537, type: !122)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 537, column: 2)
!2487 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 537, column: 2)
!2488 = !DILocalVariable(name: "__mptr", scope: !2489, file: !3, line: 537, type: !122)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 537, column: 2)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 537, column: 2)
!2491 = !DILocation(line: 525, column: 38, scope: !2480)
!2492 = !DILocation(line: 527, column: 2, scope: !2480)
!2493 = !DILocation(line: 527, column: 25, scope: !2480)
!2494 = !DILocation(line: 527, column: 44, scope: !2480)
!2495 = !DILocation(line: 527, column: 49, scope: !2480)
!2496 = !DILocation(line: 527, column: 30, scope: !2480)
!2497 = !DILocation(line: 528, column: 2, scope: !2480)
!2498 = !DILocation(line: 528, column: 27, scope: !2480)
!2499 = !DILocation(line: 530, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 530, column: 6)
!2501 = !DILocation(line: 530, column: 6, scope: !2480)
!2502 = !DILocation(line: 531, column: 3, scope: !2500)
!2503 = !DILocation(line: 533, column: 6, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 533, column: 6)
!2505 = !DILocation(line: 533, column: 10, scope: !2504)
!2506 = !DILocation(line: 533, column: 6, scope: !2480)
!2507 = !DILocation(line: 534, column: 24, scope: !2504)
!2508 = !DILocation(line: 534, column: 3, scope: !2504)
!2509 = !DILocation(line: 536, column: 14, scope: !2480)
!2510 = !DILocation(line: 536, column: 18, scope: !2480)
!2511 = !DILocation(line: 536, column: 2, scope: !2480)
!2512 = !DILocation(line: 537, column: 2, scope: !2486)
!2513 = !DILocation(line: 537, column: 2, scope: !2487)
!2514 = !DILocation(line: 537, column: 2, scope: !2490)
!2515 = !DILocation(line: 538, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 538, column: 7)
!2517 = !DILocation(line: 538, column: 12, scope: !2516)
!2518 = !DILocation(line: 538, column: 7, scope: !2490)
!2519 = !DILocation(line: 539, column: 4, scope: !2516)
!2520 = !DILocation(line: 539, column: 9, scope: !2516)
!2521 = !DILocation(line: 539, column: 17, scope: !2516)
!2522 = !DILocation(line: 539, column: 22, scope: !2516)
!2523 = !DILocation(line: 537, column: 2, scope: !2489)
!2524 = distinct !{!2524, !2513, !2525, !2033, !2034}
!2525 = !DILocation(line: 539, column: 25, scope: !2487)
!2526 = !DILocation(line: 540, column: 16, scope: !2480)
!2527 = !DILocation(line: 540, column: 20, scope: !2480)
!2528 = !DILocation(line: 540, column: 2, scope: !2480)
!2529 = !DILocation(line: 541, column: 13, scope: !2480)
!2530 = !DILocation(line: 541, column: 2, scope: !2480)
!2531 = !DILocation(line: 542, column: 1, scope: !2480)
!2532 = !DISubprogram(name: "device_initial_probe", scope: !26, file: !26, line: 1172, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2533 = !DISubprogram(name: "mutex_lock", scope: !411, file: !411, line: 227, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!2537 = !DISubprogram(name: "mutex_unlock", scope: !411, file: !411, line: 246, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = distinct !DISubprogram(name: "bus_remove_device", scope: !3, file: !3, line: 554, type: !1242, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2546}
!2540 = !DILocalVariable(name: "dev", arg: 1, scope: !2538, file: !3, line: 554, type: !807)
!2541 = !DILocalVariable(name: "sp", scope: !2538, file: !3, line: 556, type: !1723)
!2542 = !DILocalVariable(name: "sif", scope: !2538, file: !3, line: 557, type: !123)
!2543 = !DILocalVariable(name: "__mptr", scope: !2544, file: !3, line: 563, type: !122)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 563, column: 2)
!2545 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 563, column: 2)
!2546 = !DILocalVariable(name: "__mptr", scope: !2547, file: !3, line: 563, type: !122)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 563, column: 2)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 563, column: 2)
!2549 = !DILocation(line: 554, column: 39, scope: !2538)
!2550 = !DILocation(line: 556, column: 2, scope: !2538)
!2551 = !DILocation(line: 556, column: 25, scope: !2538)
!2552 = !DILocation(line: 556, column: 44, scope: !2538)
!2553 = !DILocation(line: 556, column: 49, scope: !2538)
!2554 = !DILocation(line: 556, column: 30, scope: !2538)
!2555 = !DILocation(line: 557, column: 2, scope: !2538)
!2556 = !DILocation(line: 557, column: 27, scope: !2538)
!2557 = !DILocation(line: 559, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 559, column: 6)
!2559 = !DILocation(line: 559, column: 6, scope: !2538)
!2560 = !DILocation(line: 560, column: 3, scope: !2558)
!2561 = !DILocation(line: 562, column: 14, scope: !2538)
!2562 = !DILocation(line: 562, column: 18, scope: !2538)
!2563 = !DILocation(line: 562, column: 2, scope: !2538)
!2564 = !DILocation(line: 563, column: 2, scope: !2544)
!2565 = !DILocation(line: 563, column: 2, scope: !2545)
!2566 = !DILocation(line: 563, column: 2, scope: !2548)
!2567 = !DILocation(line: 564, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 564, column: 7)
!2569 = !DILocation(line: 564, column: 12, scope: !2568)
!2570 = !DILocation(line: 564, column: 7, scope: !2548)
!2571 = !DILocation(line: 565, column: 4, scope: !2568)
!2572 = !DILocation(line: 565, column: 9, scope: !2568)
!2573 = !DILocation(line: 565, column: 20, scope: !2568)
!2574 = !DILocation(line: 565, column: 25, scope: !2568)
!2575 = !DILocation(line: 563, column: 2, scope: !2547)
!2576 = distinct !{!2576, !2565, !2577, !2033, !2034}
!2577 = !DILocation(line: 565, column: 28, scope: !2545)
!2578 = !DILocation(line: 566, column: 16, scope: !2538)
!2579 = !DILocation(line: 566, column: 20, scope: !2538)
!2580 = !DILocation(line: 566, column: 2, scope: !2538)
!2581 = !DILocation(line: 568, column: 21, scope: !2538)
!2582 = !DILocation(line: 568, column: 26, scope: !2538)
!2583 = !DILocation(line: 568, column: 2, scope: !2538)
!2584 = !DILocation(line: 569, column: 21, scope: !2538)
!2585 = !DILocation(line: 569, column: 25, scope: !2538)
!2586 = !DILocation(line: 569, column: 39, scope: !2538)
!2587 = !DILocation(line: 569, column: 54, scope: !2538)
!2588 = !DILocation(line: 569, column: 45, scope: !2538)
!2589 = !DILocation(line: 569, column: 2, scope: !2538)
!2590 = !DILocation(line: 570, column: 23, scope: !2538)
!2591 = !DILocation(line: 570, column: 28, scope: !2538)
!2592 = !DILocation(line: 570, column: 33, scope: !2538)
!2593 = !DILocation(line: 570, column: 38, scope: !2538)
!2594 = !DILocation(line: 570, column: 2, scope: !2538)
!2595 = !DILocation(line: 571, column: 27, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 571, column: 6)
!2597 = !DILocation(line: 571, column: 32, scope: !2596)
!2598 = !DILocation(line: 571, column: 35, scope: !2596)
!2599 = !DILocation(line: 571, column: 6, scope: !2596)
!2600 = !DILocation(line: 571, column: 6, scope: !2538)
!2601 = !DILocation(line: 572, column: 14, scope: !2596)
!2602 = !DILocation(line: 572, column: 19, scope: !2596)
!2603 = !DILocation(line: 572, column: 22, scope: !2596)
!2604 = !DILocation(line: 572, column: 3, scope: !2596)
!2605 = !DILocation(line: 574, column: 2, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 574, column: 2)
!2607 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 574, column: 2)
!2608 = !DILocation(line: 574, column: 2, scope: !2607)
!2609 = !DILocation(line: 576, column: 24, scope: !2538)
!2610 = !DILocation(line: 576, column: 2, scope: !2538)
!2611 = !DILocation(line: 583, column: 13, scope: !2538)
!2612 = !DILocation(line: 583, column: 2, scope: !2538)
!2613 = !DILocation(line: 584, column: 13, scope: !2538)
!2614 = !DILocation(line: 584, column: 2, scope: !2538)
!2615 = !DILocation(line: 585, column: 1, scope: !2538)
!2616 = !DISubprogram(name: "klist_node_attached", scope: !819, file: !819, line: 51, type: !2617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!46, !827}
!2619 = !DISubprogram(name: "klist_del", scope: !819, file: !819, line: 48, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2620 = !DISubprogram(name: "device_release_driver", scope: !26, file: !26, line: 1169, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2621 = distinct !DISubprogram(name: "bus_add_driver", scope: !3, file: !3, line: 644, type: !2622, scopeLine: 645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!46, !840}
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632}
!2625 = !DILocalVariable(name: "drv", arg: 1, scope: !2621, file: !3, line: 644, type: !840)
!2626 = !DILocalVariable(name: "sp", scope: !2621, file: !3, line: 646, type: !1723)
!2627 = !DILocalVariable(name: "priv", scope: !2621, file: !3, line: 647, type: !1287)
!2628 = !DILocalVariable(name: "error", scope: !2621, file: !3, line: 648, type: !46)
!2629 = !DILabel(scope: !2621, name: "out_detach", file: !3, line: 709)
!2630 = !DILabel(scope: !2621, name: "out_del_list", file: !3, line: 711)
!2631 = !DILabel(scope: !2621, name: "out_unregister", file: !3, line: 713)
!2632 = !DILabel(scope: !2621, name: "out_put_bus", file: !3, line: 717)
!2633 = !DILocation(line: 644, column: 42, scope: !2621)
!2634 = !DILocation(line: 646, column: 2, scope: !2621)
!2635 = !DILocation(line: 646, column: 25, scope: !2621)
!2636 = !DILocation(line: 646, column: 44, scope: !2621)
!2637 = !DILocation(line: 646, column: 49, scope: !2621)
!2638 = !DILocation(line: 646, column: 30, scope: !2621)
!2639 = !DILocation(line: 647, column: 2, scope: !2621)
!2640 = !DILocation(line: 647, column: 25, scope: !2621)
!2641 = !DILocation(line: 648, column: 2, scope: !2621)
!2642 = !DILocation(line: 648, column: 6, scope: !2621)
!2643 = !DILocation(line: 650, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 650, column: 6)
!2645 = !DILocation(line: 650, column: 6, scope: !2621)
!2646 = !DILocation(line: 651, column: 3, scope: !2644)
!2647 = !DILocation(line: 657, column: 2, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 657, column: 2)
!2649 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 657, column: 2)
!2650 = !DILocation(line: 657, column: 2, scope: !2649)
!2651 = !DILocation(line: 659, column: 9, scope: !2621)
!2652 = !DILocation(line: 659, column: 7, scope: !2621)
!2653 = !DILocation(line: 660, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 660, column: 6)
!2655 = !DILocation(line: 660, column: 6, scope: !2621)
!2656 = !DILocation(line: 661, column: 9, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 660, column: 13)
!2658 = !DILocation(line: 662, column: 3, scope: !2657)
!2659 = !DILocation(line: 664, column: 14, scope: !2621)
!2660 = !DILocation(line: 664, column: 20, scope: !2621)
!2661 = !DILocation(line: 664, column: 2, scope: !2621)
!2662 = !DILocation(line: 665, column: 17, scope: !2621)
!2663 = !DILocation(line: 665, column: 2, scope: !2621)
!2664 = !DILocation(line: 665, column: 8, scope: !2621)
!2665 = !DILocation(line: 665, column: 15, scope: !2621)
!2666 = !DILocation(line: 666, column: 11, scope: !2621)
!2667 = !DILocation(line: 666, column: 2, scope: !2621)
!2668 = !DILocation(line: 666, column: 7, scope: !2621)
!2669 = !DILocation(line: 666, column: 9, scope: !2621)
!2670 = !DILocation(line: 667, column: 20, scope: !2621)
!2671 = !DILocation(line: 667, column: 24, scope: !2621)
!2672 = !DILocation(line: 667, column: 2, scope: !2621)
!2673 = !DILocation(line: 667, column: 8, scope: !2621)
!2674 = !DILocation(line: 667, column: 13, scope: !2621)
!2675 = !DILocation(line: 667, column: 18, scope: !2621)
!2676 = !DILocation(line: 668, column: 32, scope: !2621)
!2677 = !DILocation(line: 668, column: 38, scope: !2621)
!2678 = !DILocation(line: 669, column: 16, scope: !2621)
!2679 = !DILocation(line: 669, column: 21, scope: !2621)
!2680 = !DILocation(line: 668, column: 10, scope: !2621)
!2681 = !DILocation(line: 668, column: 8, scope: !2621)
!2682 = !DILocation(line: 670, column: 6, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 670, column: 6)
!2684 = !DILocation(line: 670, column: 6, scope: !2621)
!2685 = !DILocation(line: 671, column: 3, scope: !2683)
!2686 = !DILocation(line: 673, column: 18, scope: !2621)
!2687 = !DILocation(line: 673, column: 24, scope: !2621)
!2688 = !DILocation(line: 673, column: 36, scope: !2621)
!2689 = !DILocation(line: 673, column: 40, scope: !2621)
!2690 = !DILocation(line: 673, column: 2, scope: !2621)
!2691 = !DILocation(line: 674, column: 6, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 674, column: 6)
!2693 = !DILocation(line: 674, column: 10, scope: !2692)
!2694 = !DILocation(line: 674, column: 6, scope: !2621)
!2695 = !DILocation(line: 675, column: 25, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 674, column: 29)
!2697 = !DILocation(line: 675, column: 11, scope: !2696)
!2698 = !DILocation(line: 675, column: 9, scope: !2696)
!2699 = !DILocation(line: 676, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 676, column: 7)
!2701 = !DILocation(line: 676, column: 7, scope: !2696)
!2702 = !DILocation(line: 677, column: 4, scope: !2700)
!2703 = !DILocation(line: 678, column: 2, scope: !2696)
!2704 = !DILocation(line: 679, column: 28, scope: !2621)
!2705 = !DILocation(line: 679, column: 33, scope: !2621)
!2706 = !DILocation(line: 679, column: 40, scope: !2621)
!2707 = !DILocation(line: 679, column: 10, scope: !2621)
!2708 = !DILocation(line: 679, column: 8, scope: !2621)
!2709 = !DILocation(line: 680, column: 6, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 680, column: 6)
!2711 = !DILocation(line: 680, column: 6, scope: !2621)
!2712 = !DILocation(line: 681, column: 3, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 681, column: 3)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 680, column: 13)
!2715 = !DILocation(line: 681, column: 3, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 681, column: 3)
!2717 = !DILocation(line: 683, column: 3, scope: !2714)
!2718 = !DILocation(line: 686, column: 29, scope: !2621)
!2719 = !DILocation(line: 686, column: 10, scope: !2621)
!2720 = !DILocation(line: 686, column: 8, scope: !2621)
!2721 = !DILocation(line: 687, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 687, column: 6)
!2723 = !DILocation(line: 687, column: 6, scope: !2621)
!2724 = !DILocation(line: 688, column: 3, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 688, column: 3)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 687, column: 13)
!2727 = !DILocation(line: 688, column: 3, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 688, column: 3)
!2729 = !DILocation(line: 690, column: 2, scope: !2726)
!2730 = !DILocation(line: 691, column: 28, scope: !2621)
!2731 = !DILocation(line: 691, column: 33, scope: !2621)
!2732 = !DILocation(line: 691, column: 37, scope: !2621)
!2733 = !DILocation(line: 691, column: 42, scope: !2621)
!2734 = !DILocation(line: 691, column: 10, scope: !2621)
!2735 = !DILocation(line: 691, column: 8, scope: !2621)
!2736 = !DILocation(line: 692, column: 6, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 692, column: 6)
!2738 = !DILocation(line: 692, column: 6, scope: !2621)
!2739 = !DILocation(line: 694, column: 3, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 694, column: 3)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 692, column: 13)
!2742 = !DILocation(line: 694, column: 3, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 694, column: 3)
!2744 = !DILocation(line: 696, column: 2, scope: !2741)
!2745 = !DILocation(line: 698, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 698, column: 6)
!2747 = !DILocation(line: 698, column: 12, scope: !2746)
!2748 = !{i8 0, i8 2}
!2749 = !DILocation(line: 698, column: 6, scope: !2621)
!2750 = !DILocation(line: 699, column: 26, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 698, column: 33)
!2752 = !DILocation(line: 699, column: 11, scope: !2751)
!2753 = !DILocation(line: 699, column: 9, scope: !2751)
!2754 = !DILocation(line: 700, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 700, column: 7)
!2756 = !DILocation(line: 700, column: 7, scope: !2751)
!2757 = !DILocation(line: 702, column: 4, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 702, column: 4)
!2759 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 700, column: 14)
!2760 = !DILocation(line: 702, column: 4, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 702, column: 4)
!2762 = !DILocation(line: 704, column: 3, scope: !2759)
!2763 = !DILocation(line: 705, column: 2, scope: !2751)
!2764 = !DILocation(line: 707, column: 2, scope: !2621)
!2765 = !DILocation(line: 709, column: 1, scope: !2621)
!2766 = !DILocation(line: 710, column: 16, scope: !2621)
!2767 = !DILocation(line: 710, column: 2, scope: !2621)
!2768 = !DILocation(line: 711, column: 1, scope: !2621)
!2769 = !DILocation(line: 712, column: 13, scope: !2621)
!2770 = !DILocation(line: 712, column: 19, scope: !2621)
!2771 = !DILocation(line: 712, column: 2, scope: !2621)
!2772 = !DILocation(line: 713, column: 1, scope: !2621)
!2773 = !DILocation(line: 714, column: 15, scope: !2621)
!2774 = !DILocation(line: 714, column: 21, scope: !2621)
!2775 = !DILocation(line: 714, column: 2, scope: !2621)
!2776 = !DILocation(line: 716, column: 2, scope: !2621)
!2777 = !DILocation(line: 716, column: 7, scope: !2621)
!2778 = !DILocation(line: 716, column: 9, scope: !2621)
!2779 = !DILocation(line: 717, column: 1, scope: !2621)
!2780 = !DILocation(line: 718, column: 13, scope: !2621)
!2781 = !DILocation(line: 718, column: 2, scope: !2621)
!2782 = !DILocation(line: 719, column: 9, scope: !2621)
!2783 = !DILocation(line: 719, column: 2, scope: !2621)
!2784 = !DILocation(line: 720, column: 1, scope: !2621)
!2785 = distinct !DISubprogram(name: "kzalloc", scope: !112, file: !112, line: 719, type: !2786, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!122, !283, !1722}
!2788 = !{!2789, !2790}
!2789 = !DILocalVariable(name: "size", arg: 1, scope: !2785, file: !112, line: 719, type: !283)
!2790 = !DILocalVariable(name: "flags", arg: 2, scope: !2785, file: !112, line: 719, type: !1722)
!2791 = !DILocation(line: 719, column: 52, scope: !2785)
!2792 = !DILocation(line: 719, column: 64, scope: !2785)
!2793 = !DILocation(line: 721, column: 17, scope: !2785)
!2794 = !DILocation(line: 721, column: 23, scope: !2785)
!2795 = !DILocation(line: 721, column: 29, scope: !2785)
!2796 = !DILocation(line: 721, column: 9, scope: !2785)
!2797 = !DILocation(line: 721, column: 2, scope: !2785)
!2798 = !DISubprogram(name: "klist_init", scope: !819, file: !819, line: 34, type: !2799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2128, !824, !824}
!2801 = !DISubprogram(name: "kobject_init_and_add", scope: !153, file: !153, line: 96, type: !2802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!46, !151, !252, !151, !127, null}
!2804 = !DISubprogram(name: "driver_attach", scope: !26, file: !26, line: 1171, type: !2622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2805 = !DISubprogram(name: "module_add_driver", scope: !815, file: !815, line: 195, type: !2806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!46, !848, !840}
!2808 = !DISubprogram(name: "_printk", scope: !2809, file: !2809, line: 153, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2809 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!46, !127, null}
!2812 = !DISubprogram(name: "driver_create_file", scope: !20, file: !20, line: 149, type: !2813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!46, !840, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!2817 = !DISubprogram(name: "driver_add_groups", scope: !815, file: !815, line: 178, type: !2818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!46, !840, !137}
!2820 = distinct !DISubprogram(name: "add_bind_files", scope: !3, file: !3, line: 587, type: !2622, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2821 = !{!2822, !2823}
!2822 = !DILocalVariable(name: "drv", arg: 1, scope: !2820, file: !3, line: 587, type: !840)
!2823 = !DILocalVariable(name: "ret", scope: !2820, file: !3, line: 589, type: !46)
!2824 = !DILocation(line: 587, column: 62, scope: !2820)
!2825 = !DILocation(line: 589, column: 2, scope: !2820)
!2826 = !DILocation(line: 589, column: 6, scope: !2820)
!2827 = !DILocation(line: 591, column: 27, scope: !2820)
!2828 = !DILocation(line: 591, column: 8, scope: !2820)
!2829 = !DILocation(line: 591, column: 6, scope: !2820)
!2830 = !DILocation(line: 592, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 592, column: 6)
!2832 = !DILocation(line: 592, column: 10, scope: !2831)
!2833 = !DILocation(line: 592, column: 6, scope: !2820)
!2834 = !DILocation(line: 593, column: 28, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 592, column: 16)
!2836 = !DILocation(line: 593, column: 9, scope: !2835)
!2837 = !DILocation(line: 593, column: 7, scope: !2835)
!2838 = !DILocation(line: 594, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 594, column: 7)
!2840 = !DILocation(line: 594, column: 7, scope: !2835)
!2841 = !DILocation(line: 595, column: 23, scope: !2839)
!2842 = !DILocation(line: 595, column: 4, scope: !2839)
!2843 = !DILocation(line: 596, column: 2, scope: !2835)
!2844 = !DILocation(line: 597, column: 9, scope: !2820)
!2845 = !DILocation(line: 598, column: 1, scope: !2820)
!2846 = !DILocation(line: 597, column: 2, scope: !2820)
!2847 = !DISubprogram(name: "driver_detach", scope: !815, file: !815, line: 161, type: !2848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !840}
!2850 = !DISubprogram(name: "kobject_put", scope: !153, file: !153, line: 110, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2851 = distinct !DISubprogram(name: "bus_remove_driver", scope: !3, file: !3, line: 730, type: !2848, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2852)
!2852 = !{!2853, !2854}
!2853 = !DILocalVariable(name: "drv", arg: 1, scope: !2851, file: !3, line: 730, type: !840)
!2854 = !DILocalVariable(name: "sp", scope: !2851, file: !3, line: 732, type: !1723)
!2855 = !DILocation(line: 730, column: 46, scope: !2851)
!2856 = !DILocation(line: 732, column: 2, scope: !2851)
!2857 = !DILocation(line: 732, column: 25, scope: !2851)
!2858 = !DILocation(line: 732, column: 44, scope: !2851)
!2859 = !DILocation(line: 732, column: 49, scope: !2851)
!2860 = !DILocation(line: 732, column: 30, scope: !2851)
!2861 = !DILocation(line: 734, column: 7, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 734, column: 6)
!2863 = !DILocation(line: 734, column: 6, scope: !2851)
!2864 = !DILocation(line: 735, column: 3, scope: !2862)
!2865 = !DILocation(line: 737, column: 2, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 737, column: 2)
!2867 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 737, column: 2)
!2868 = !DILocation(line: 737, column: 2, scope: !2867)
!2869 = !DILocation(line: 739, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 739, column: 6)
!2871 = !DILocation(line: 739, column: 12, scope: !2870)
!2872 = !DILocation(line: 739, column: 6, scope: !2851)
!2873 = !DILocation(line: 740, column: 21, scope: !2870)
!2874 = !DILocation(line: 740, column: 3, scope: !2870)
!2875 = !DILocation(line: 741, column: 23, scope: !2851)
!2876 = !DILocation(line: 741, column: 28, scope: !2851)
!2877 = !DILocation(line: 741, column: 32, scope: !2851)
!2878 = !DILocation(line: 741, column: 37, scope: !2851)
!2879 = !DILocation(line: 741, column: 2, scope: !2851)
!2880 = !DILocation(line: 742, column: 21, scope: !2851)
!2881 = !DILocation(line: 742, column: 2, scope: !2851)
!2882 = !DILocation(line: 743, column: 16, scope: !2851)
!2883 = !DILocation(line: 743, column: 21, scope: !2851)
!2884 = !DILocation(line: 743, column: 24, scope: !2851)
!2885 = !DILocation(line: 743, column: 2, scope: !2851)
!2886 = !DILocation(line: 744, column: 16, scope: !2851)
!2887 = !DILocation(line: 744, column: 2, scope: !2851)
!2888 = !DILocation(line: 745, column: 23, scope: !2851)
!2889 = !DILocation(line: 745, column: 2, scope: !2851)
!2890 = !DILocation(line: 746, column: 15, scope: !2851)
!2891 = !DILocation(line: 746, column: 20, scope: !2851)
!2892 = !DILocation(line: 746, column: 23, scope: !2851)
!2893 = !DILocation(line: 746, column: 2, scope: !2851)
!2894 = !DILocation(line: 753, column: 13, scope: !2851)
!2895 = !DILocation(line: 753, column: 2, scope: !2851)
!2896 = !DILocation(line: 754, column: 13, scope: !2851)
!2897 = !DILocation(line: 754, column: 2, scope: !2851)
!2898 = !DILocation(line: 755, column: 1, scope: !2851)
!2899 = distinct !DISubprogram(name: "remove_bind_files", scope: !3, file: !3, line: 600, type: !2848, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2900)
!2900 = !{!2901}
!2901 = !DILocalVariable(name: "drv", arg: 1, scope: !2899, file: !3, line: 600, type: !840)
!2902 = !DILocation(line: 600, column: 53, scope: !2899)
!2903 = !DILocation(line: 602, column: 21, scope: !2899)
!2904 = !DILocation(line: 602, column: 2, scope: !2899)
!2905 = !DILocation(line: 603, column: 21, scope: !2899)
!2906 = !DILocation(line: 603, column: 2, scope: !2899)
!2907 = !DILocation(line: 604, column: 1, scope: !2899)
!2908 = !DISubprogram(name: "driver_remove_groups", scope: !815, file: !815, line: 179, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !840, !137}
!2911 = !DISubprogram(name: "driver_remove_file", scope: !20, file: !20, line: 151, type: !2912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !840, !2815}
!2914 = !DISubprogram(name: "klist_remove", scope: !819, file: !819, line: 49, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2915 = !DISubprogram(name: "module_remove_driver", scope: !815, file: !815, line: 196, type: !2848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2916 = distinct !DISubprogram(name: "bus_rescan_devices", scope: !3, file: !3, line: 781, type: !1818, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2917 = !{!2918}
!2918 = !DILocalVariable(name: "bus", arg: 1, scope: !2916, file: !3, line: 781, type: !845)
!2919 = !DILocation(line: 781, column: 47, scope: !2916)
!2920 = !DILocation(line: 783, column: 26, scope: !2916)
!2921 = !DILocation(line: 783, column: 9, scope: !2916)
!2922 = !DILocation(line: 783, column: 2, scope: !2916)
!2923 = distinct !DISubprogram(name: "bus_rescan_devices_helper", scope: !3, file: !3, line: 758, type: !2116, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2924)
!2924 = !{!2925, !2926, !2927}
!2925 = !DILocalVariable(name: "dev", arg: 1, scope: !2923, file: !3, line: 758, type: !807)
!2926 = !DILocalVariable(name: "data", arg: 2, scope: !2923, file: !3, line: 759, type: !122)
!2927 = !DILocalVariable(name: "ret", scope: !2923, file: !3, line: 761, type: !46)
!2928 = !DILocation(line: 758, column: 66, scope: !2923)
!2929 = !DILocation(line: 759, column: 15, scope: !2923)
!2930 = !DILocation(line: 761, column: 2, scope: !2923)
!2931 = !DILocation(line: 761, column: 6, scope: !2923)
!2932 = !DILocation(line: 763, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 763, column: 6)
!2934 = !DILocation(line: 763, column: 12, scope: !2933)
!2935 = !DILocation(line: 763, column: 6, scope: !2923)
!2936 = !DILocation(line: 764, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 764, column: 7)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 763, column: 20)
!2939 = !DILocation(line: 764, column: 12, scope: !2937)
!2940 = !DILocation(line: 764, column: 19, scope: !2937)
!2941 = !DILocation(line: 764, column: 22, scope: !2937)
!2942 = !DILocation(line: 764, column: 27, scope: !2937)
!2943 = !DILocation(line: 764, column: 32, scope: !2937)
!2944 = !DILocation(line: 764, column: 7, scope: !2938)
!2945 = !DILocation(line: 765, column: 16, scope: !2937)
!2946 = !DILocation(line: 765, column: 21, scope: !2937)
!2947 = !DILocation(line: 765, column: 4, scope: !2937)
!2948 = !DILocation(line: 766, column: 23, scope: !2938)
!2949 = !DILocation(line: 766, column: 9, scope: !2938)
!2950 = !DILocation(line: 766, column: 7, scope: !2938)
!2951 = !DILocation(line: 767, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 767, column: 7)
!2953 = !DILocation(line: 767, column: 12, scope: !2952)
!2954 = !DILocation(line: 767, column: 19, scope: !2952)
!2955 = !DILocation(line: 767, column: 22, scope: !2952)
!2956 = !DILocation(line: 767, column: 27, scope: !2952)
!2957 = !DILocation(line: 767, column: 32, scope: !2952)
!2958 = !DILocation(line: 767, column: 7, scope: !2938)
!2959 = !DILocation(line: 768, column: 18, scope: !2952)
!2960 = !DILocation(line: 768, column: 23, scope: !2952)
!2961 = !DILocation(line: 768, column: 4, scope: !2952)
!2962 = !DILocation(line: 769, column: 2, scope: !2938)
!2963 = !DILocation(line: 770, column: 9, scope: !2923)
!2964 = !DILocation(line: 770, column: 13, scope: !2923)
!2965 = !DILocation(line: 770, column: 19, scope: !2923)
!2966 = !DILocation(line: 771, column: 1, scope: !2923)
!2967 = !DILocation(line: 770, column: 2, scope: !2923)
!2968 = distinct !DISubprogram(name: "device_reprobe", scope: !3, file: !3, line: 796, type: !1238, scopeLine: 797, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2969)
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "dev", arg: 1, scope: !2968, file: !3, line: 796, type: !807)
!2971 = !DILocation(line: 796, column: 35, scope: !2968)
!2972 = !DILocation(line: 798, column: 6, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 798, column: 6)
!2974 = !DILocation(line: 798, column: 11, scope: !2973)
!2975 = !DILocation(line: 798, column: 6, scope: !2968)
!2976 = !DILocation(line: 799, column: 24, scope: !2973)
!2977 = !DILocation(line: 799, column: 3, scope: !2973)
!2978 = !DILocation(line: 800, column: 35, scope: !2968)
!2979 = !DILocation(line: 800, column: 9, scope: !2968)
!2980 = !DILocation(line: 800, column: 2, scope: !2968)
!2981 = !DISubprogram(name: "device_driver_detach", scope: !815, file: !815, line: 180, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2982 = !DILocation(line: 853, column: 41, scope: !1817)
!2983 = !DILocation(line: 855, column: 2, scope: !1817)
!2984 = !DILocation(line: 855, column: 6, scope: !1817)
!2985 = !DILocation(line: 856, column: 2, scope: !1817)
!2986 = !DILocation(line: 856, column: 25, scope: !1817)
!2987 = !DILocation(line: 857, column: 2, scope: !1817)
!2988 = !DILocation(line: 857, column: 18, scope: !1817)
!2989 = !DILocation(line: 858, column: 2, scope: !1817)
!2990 = !DILocation(line: 858, column: 25, scope: !1817)
!2991 = !DILocation(line: 860, column: 9, scope: !1817)
!2992 = !DILocation(line: 860, column: 7, scope: !1817)
!2993 = !DILocation(line: 861, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 861, column: 6)
!2995 = !DILocation(line: 861, column: 6, scope: !1817)
!2996 = !DILocation(line: 862, column: 3, scope: !2994)
!2997 = !DILocation(line: 864, column: 14, scope: !1817)
!2998 = !DILocation(line: 864, column: 2, scope: !1817)
!2999 = !DILocation(line: 864, column: 8, scope: !1817)
!3000 = !DILocation(line: 864, column: 12, scope: !1817)
!3001 = !DILocation(line: 866, column: 2, scope: !1817)
!3002 = !DILocation(line: 866, column: 2, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 866, column: 2)
!3004 = !DILocation(line: 866, column: 2, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 866, column: 2)
!3006 = !DILocation(line: 868, column: 14, scope: !1817)
!3007 = !DILocation(line: 868, column: 20, scope: !1817)
!3008 = !DILocation(line: 868, column: 27, scope: !1817)
!3009 = !DILocation(line: 868, column: 11, scope: !1817)
!3010 = !DILocation(line: 869, column: 28, scope: !1817)
!3011 = !DILocation(line: 869, column: 44, scope: !1817)
!3012 = !DILocation(line: 869, column: 49, scope: !1817)
!3013 = !DILocation(line: 869, column: 11, scope: !1817)
!3014 = !DILocation(line: 869, column: 9, scope: !1817)
!3015 = !DILocation(line: 870, column: 6, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 870, column: 6)
!3017 = !DILocation(line: 870, column: 6, scope: !1817)
!3018 = !DILocation(line: 871, column: 3, scope: !3016)
!3019 = !DILocation(line: 873, column: 19, scope: !1817)
!3020 = !DILocation(line: 873, column: 2, scope: !1817)
!3021 = !DILocation(line: 873, column: 12, scope: !1817)
!3022 = !DILocation(line: 873, column: 17, scope: !1817)
!3023 = !DILocation(line: 874, column: 2, scope: !1817)
!3024 = !DILocation(line: 874, column: 12, scope: !1817)
!3025 = !DILocation(line: 874, column: 18, scope: !1817)
!3026 = !DILocation(line: 875, column: 2, scope: !1817)
!3027 = !DILocation(line: 875, column: 8, scope: !1817)
!3028 = !DILocation(line: 875, column: 26, scope: !1817)
!3029 = !DILocation(line: 877, column: 26, scope: !1817)
!3030 = !DILocation(line: 877, column: 32, scope: !1817)
!3031 = !DILocation(line: 877, column: 11, scope: !1817)
!3032 = !DILocation(line: 877, column: 9, scope: !1817)
!3033 = !DILocation(line: 878, column: 6, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 878, column: 6)
!3035 = !DILocation(line: 878, column: 6, scope: !1817)
!3036 = !DILocation(line: 879, column: 3, scope: !3034)
!3037 = !DILocation(line: 881, column: 27, scope: !1817)
!3038 = !DILocation(line: 881, column: 11, scope: !1817)
!3039 = !DILocation(line: 881, column: 9, scope: !1817)
!3040 = !DILocation(line: 882, column: 6, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 882, column: 6)
!3042 = !DILocation(line: 882, column: 6, scope: !1817)
!3043 = !DILocation(line: 883, column: 3, scope: !3041)
!3044 = !DILocation(line: 885, column: 60, scope: !1817)
!3045 = !DILocation(line: 885, column: 23, scope: !1817)
!3046 = !DILocation(line: 885, column: 2, scope: !1817)
!3047 = !DILocation(line: 885, column: 8, scope: !1817)
!3048 = !DILocation(line: 885, column: 21, scope: !1817)
!3049 = !DILocation(line: 886, column: 7, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 886, column: 6)
!3051 = !DILocation(line: 886, column: 13, scope: !3050)
!3052 = !DILocation(line: 886, column: 6, scope: !1817)
!3053 = !DILocation(line: 887, column: 10, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 886, column: 27)
!3055 = !DILocation(line: 888, column: 3, scope: !3054)
!3056 = !DILocation(line: 891, column: 60, scope: !1817)
!3057 = !DILocation(line: 891, column: 23, scope: !1817)
!3058 = !DILocation(line: 891, column: 2, scope: !1817)
!3059 = !DILocation(line: 891, column: 8, scope: !1817)
!3060 = !DILocation(line: 891, column: 21, scope: !1817)
!3061 = !DILocation(line: 892, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 892, column: 6)
!3063 = !DILocation(line: 892, column: 13, scope: !3062)
!3064 = !DILocation(line: 892, column: 6, scope: !1817)
!3065 = !DILocation(line: 893, column: 10, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 892, column: 27)
!3067 = !DILocation(line: 894, column: 3, scope: !3066)
!3068 = !DILocation(line: 897, column: 18, scope: !1817)
!3069 = !DILocation(line: 897, column: 24, scope: !1817)
!3070 = !DILocation(line: 897, column: 2, scope: !1817)
!3071 = !DILocation(line: 898, column: 9, scope: !1817)
!3072 = !DILocation(line: 898, column: 15, scope: !1817)
!3073 = !DILocation(line: 898, column: 6, scope: !1817)
!3074 = !DILocation(line: 899, column: 23, scope: !1817)
!3075 = !DILocation(line: 899, column: 2, scope: !1817)
!3076 = !DILocation(line: 900, column: 16, scope: !1817)
!3077 = !DILocation(line: 900, column: 22, scope: !1817)
!3078 = !DILocation(line: 900, column: 45, scope: !1817)
!3079 = !DILocation(line: 900, column: 2, scope: !1817)
!3080 = !DILocation(line: 901, column: 14, scope: !1817)
!3081 = !DILocation(line: 901, column: 20, scope: !1817)
!3082 = !DILocation(line: 901, column: 2, scope: !1817)
!3083 = !DILocation(line: 902, column: 14, scope: !1817)
!3084 = !DILocation(line: 902, column: 20, scope: !1817)
!3085 = !DILocation(line: 902, column: 2, scope: !1817)
!3086 = !DILocation(line: 904, column: 27, scope: !1817)
!3087 = !DILocation(line: 904, column: 11, scope: !1817)
!3088 = !DILocation(line: 904, column: 9, scope: !1817)
!3089 = !DILocation(line: 905, column: 6, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 905, column: 6)
!3091 = !DILocation(line: 905, column: 6, scope: !1817)
!3092 = !DILocation(line: 906, column: 3, scope: !3090)
!3093 = !DILocation(line: 908, column: 31, scope: !1817)
!3094 = !DILocation(line: 908, column: 41, scope: !1817)
!3095 = !DILocation(line: 908, column: 46, scope: !1817)
!3096 = !DILocation(line: 908, column: 11, scope: !1817)
!3097 = !DILocation(line: 908, column: 9, scope: !1817)
!3098 = !DILocation(line: 909, column: 6, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 909, column: 6)
!3100 = !DILocation(line: 909, column: 6, scope: !1817)
!3101 = !DILocation(line: 910, column: 3, scope: !3099)
!3102 = !DILocation(line: 912, column: 2, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 912, column: 2)
!3104 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 912, column: 2)
!3105 = !DILocation(line: 912, column: 2, scope: !3104)
!3106 = !DILocation(line: 913, column: 2, scope: !1817)
!3107 = !DILocation(line: 915, column: 1, scope: !1817)
!3108 = !DILocation(line: 916, column: 21, scope: !1817)
!3109 = !DILocation(line: 916, column: 2, scope: !1817)
!3110 = !DILocation(line: 917, column: 1, scope: !1817)
!3111 = !DILocation(line: 918, column: 18, scope: !1817)
!3112 = !DILocation(line: 918, column: 24, scope: !1817)
!3113 = !DILocation(line: 918, column: 2, scope: !1817)
!3114 = !DILocation(line: 919, column: 1, scope: !1817)
!3115 = !DILocation(line: 920, column: 18, scope: !1817)
!3116 = !DILocation(line: 920, column: 24, scope: !1817)
!3117 = !DILocation(line: 920, column: 2, scope: !1817)
!3118 = !DILocation(line: 921, column: 1, scope: !1817)
!3119 = !DILocation(line: 922, column: 18, scope: !1817)
!3120 = !DILocation(line: 922, column: 2, scope: !1817)
!3121 = !DILocation(line: 923, column: 1, scope: !1817)
!3122 = !DILocation(line: 924, column: 19, scope: !1817)
!3123 = !DILocation(line: 924, column: 25, scope: !1817)
!3124 = !DILocation(line: 924, column: 2, scope: !1817)
!3125 = !DILocation(line: 926, column: 7, scope: !1817)
!3126 = !DILocation(line: 926, column: 2, scope: !1817)
!3127 = !DILocation(line: 927, column: 1, scope: !1817)
!3128 = !DILocation(line: 928, column: 8, scope: !1817)
!3129 = !DILocation(line: 928, column: 2, scope: !1817)
!3130 = !DILocation(line: 929, column: 9, scope: !1817)
!3131 = !DILocation(line: 929, column: 2, scope: !1817)
!3132 = !DILocation(line: 930, column: 1, scope: !1817)
!3133 = !DISubprogram(name: "__init_rwsem", scope: !564, file: !564, line: 104, type: !3134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{null, !3136, !127, !1826}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!3137 = !DISubprogram(name: "kobject_set_name", scope: !153, file: !153, line: 84, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!46, !151, !127, null}
!3140 = !DISubprogram(name: "kset_register", scope: !153, file: !153, line: 176, type: !3141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!46, !164}
!3143 = !DISubprogram(name: "kset_create_and_add", scope: !153, file: !153, line: 178, type: !3144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!164, !127, !212, !151}
!3146 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3147, file: !3147, line: 35, type: !3148, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3150)
!3147 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !160}
!3150 = !{!3151}
!3151 = !DILocalVariable(name: "list", arg: 1, scope: !3146, file: !3147, line: 35, type: !160)
!3152 = !DILocation(line: 35, column: 53, scope: !3146)
!3153 = !DILocation(line: 37, column: 2, scope: !3146)
!3154 = !DILocation(line: 37, column: 2, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3146, file: !3147, line: 37, column: 2)
!3156 = !DILocation(line: 37, column: 2, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3155, file: !3147, line: 37, column: 2)
!3158 = !DILocation(line: 37, column: 2, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !3147, line: 37, column: 2)
!3160 = !DILocation(line: 38, column: 2, scope: !3146)
!3161 = !DILocation(line: 38, column: 2, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3146, file: !3147, line: 38, column: 2)
!3163 = !DILocation(line: 38, column: 2, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3162, file: !3147, line: 38, column: 2)
!3165 = !DILocation(line: 38, column: 2, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !3147, line: 38, column: 2)
!3167 = !DILocation(line: 39, column: 1, scope: !3146)
!3168 = distinct !DISubprogram(name: "lockdep_register_key", scope: !3169, file: !3169, line: 409, type: !3170, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3172)
!3169 = !DIFile(filename: "./include/linux/lockdep.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f59f80522afecdf25b67841b74f6b28f")
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !1826}
!3172 = !{!3173}
!3173 = !DILocalVariable(name: "key", arg: 1, scope: !3168, file: !3169, line: 409, type: !1826)
!3174 = !DILocation(line: 409, column: 64, scope: !3168)
!3175 = !DILocation(line: 411, column: 1, scope: !3168)
!3176 = !DISubprogram(name: "__mutex_init", scope: !411, file: !411, line: 121, type: !3177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !2536, !127, !1826}
!3179 = distinct !DISubprogram(name: "klist_devices_get", scope: !3, file: !3, line: 804, type: !825, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3180)
!3180 = !{!3181, !3182, !3183, !3185}
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !3, line: 804, type: !827)
!3182 = !DILocalVariable(name: "dev_prv", scope: !3179, file: !3, line: 806, type: !813)
!3183 = !DILocalVariable(name: "__mptr", scope: !3184, file: !3, line: 806, type: !122)
!3184 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 806, column: 35)
!3185 = !DILocalVariable(name: "dev", scope: !3179, file: !3, line: 807, type: !807)
!3186 = !DILocation(line: 804, column: 50, scope: !3179)
!3187 = !DILocation(line: 806, column: 2, scope: !3179)
!3188 = !DILocation(line: 806, column: 25, scope: !3179)
!3189 = !DILocation(line: 806, column: 35, scope: !3184)
!3190 = !DILocation(line: 806, column: 35, scope: !3179)
!3191 = !DILocation(line: 807, column: 2, scope: !3179)
!3192 = !DILocation(line: 807, column: 17, scope: !3179)
!3193 = !DILocation(line: 807, column: 23, scope: !3179)
!3194 = !DILocation(line: 807, column: 32, scope: !3179)
!3195 = !DILocation(line: 809, column: 13, scope: !3179)
!3196 = !DILocation(line: 809, column: 2, scope: !3179)
!3197 = !DILocation(line: 810, column: 1, scope: !3179)
!3198 = distinct !DISubprogram(name: "klist_devices_put", scope: !3, file: !3, line: 812, type: !825, scopeLine: 813, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3199)
!3199 = !{!3200, !3201, !3202, !3204}
!3200 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !3, line: 812, type: !827)
!3201 = !DILocalVariable(name: "dev_prv", scope: !3198, file: !3, line: 814, type: !813)
!3202 = !DILocalVariable(name: "__mptr", scope: !3203, file: !3, line: 814, type: !122)
!3203 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 814, column: 35)
!3204 = !DILocalVariable(name: "dev", scope: !3198, file: !3, line: 815, type: !807)
!3205 = !DILocation(line: 812, column: 50, scope: !3198)
!3206 = !DILocation(line: 814, column: 2, scope: !3198)
!3207 = !DILocation(line: 814, column: 25, scope: !3198)
!3208 = !DILocation(line: 814, column: 35, scope: !3203)
!3209 = !DILocation(line: 814, column: 35, scope: !3198)
!3210 = !DILocation(line: 815, column: 2, scope: !3198)
!3211 = !DILocation(line: 815, column: 17, scope: !3198)
!3212 = !DILocation(line: 815, column: 23, scope: !3198)
!3213 = !DILocation(line: 815, column: 32, scope: !3198)
!3214 = !DILocation(line: 817, column: 13, scope: !3198)
!3215 = !DILocation(line: 817, column: 2, scope: !3198)
!3216 = !DILocation(line: 818, column: 1, scope: !3198)
!3217 = distinct !DISubprogram(name: "add_probe_files", scope: !3, file: !3, line: 609, type: !1818, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3218)
!3218 = !{!3219, !3220, !3221}
!3219 = !DILocalVariable(name: "bus", arg: 1, scope: !3217, file: !3, line: 609, type: !845)
!3220 = !DILocalVariable(name: "retval", scope: !3217, file: !3, line: 611, type: !46)
!3221 = !DILabel(scope: !3217, name: "out", file: !3, line: 620)
!3222 = !DILocation(line: 609, column: 51, scope: !3217)
!3223 = !DILocation(line: 611, column: 2, scope: !3217)
!3224 = !DILocation(line: 611, column: 6, scope: !3217)
!3225 = !DILocation(line: 613, column: 27, scope: !3217)
!3226 = !DILocation(line: 613, column: 11, scope: !3217)
!3227 = !DILocation(line: 613, column: 9, scope: !3217)
!3228 = !DILocation(line: 614, column: 6, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 614, column: 6)
!3230 = !DILocation(line: 614, column: 6, scope: !3217)
!3231 = !DILocation(line: 615, column: 3, scope: !3229)
!3232 = !DILocation(line: 617, column: 27, scope: !3217)
!3233 = !DILocation(line: 617, column: 11, scope: !3217)
!3234 = !DILocation(line: 617, column: 9, scope: !3217)
!3235 = !DILocation(line: 618, column: 6, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 618, column: 6)
!3237 = !DILocation(line: 618, column: 6, scope: !3217)
!3238 = !DILocation(line: 619, column: 19, scope: !3236)
!3239 = !DILocation(line: 619, column: 3, scope: !3236)
!3240 = !DILocation(line: 620, column: 1, scope: !3217)
!3241 = !DILocation(line: 621, column: 9, scope: !3217)
!3242 = !DILocation(line: 622, column: 1, scope: !3217)
!3243 = !DILocation(line: 621, column: 2, scope: !3217)
!3244 = !DISubprogram(name: "sysfs_create_groups", scope: !141, file: !141, line: 309, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!46, !151, !137}
!3247 = distinct !DISubprogram(name: "remove_probe_files", scope: !3, file: !3, line: 624, type: !3248, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !845}
!3250 = !{!3251}
!3251 = !DILocalVariable(name: "bus", arg: 1, scope: !3247, file: !3, line: 624, type: !845)
!3252 = !DILocation(line: 624, column: 55, scope: !3247)
!3253 = !DILocation(line: 626, column: 18, scope: !3247)
!3254 = !DILocation(line: 626, column: 2, scope: !3247)
!3255 = !DILocation(line: 627, column: 18, scope: !3247)
!3256 = !DILocation(line: 627, column: 2, scope: !3247)
!3257 = !DILocation(line: 628, column: 1, scope: !3247)
!3258 = !DISubprogram(name: "kset_unregister", scope: !153, file: !153, line: 177, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !164}
!3261 = !DISubprogram(name: "kfree", scope: !112, file: !112, line: 227, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !311}
!3264 = distinct !DISubprogram(name: "bus_unregister", scope: !3, file: !3, line: 940, type: !3248, scopeLine: 941, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "bus", arg: 1, scope: !3264, file: !3, line: 940, type: !845)
!3267 = !DILocalVariable(name: "sp", scope: !3264, file: !3, line: 942, type: !1723)
!3268 = !DILocalVariable(name: "bus_kobj", scope: !3264, file: !3, line: 943, type: !151)
!3269 = !DILocation(line: 940, column: 44, scope: !3264)
!3270 = !DILocation(line: 942, column: 2, scope: !3264)
!3271 = !DILocation(line: 942, column: 25, scope: !3264)
!3272 = !DILocation(line: 942, column: 44, scope: !3264)
!3273 = !DILocation(line: 942, column: 30, scope: !3264)
!3274 = !DILocation(line: 943, column: 2, scope: !3264)
!3275 = !DILocation(line: 943, column: 18, scope: !3264)
!3276 = !DILocation(line: 945, column: 7, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 945, column: 6)
!3278 = !DILocation(line: 945, column: 6, scope: !3264)
!3279 = !DILocation(line: 946, column: 3, scope: !3277)
!3280 = !DILocation(line: 948, column: 2, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 948, column: 2)
!3282 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 948, column: 2)
!3283 = !DILocation(line: 948, column: 2, scope: !3282)
!3284 = !DILocation(line: 949, column: 6, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 949, column: 6)
!3286 = !DILocation(line: 949, column: 10, scope: !3285)
!3287 = !DILocation(line: 949, column: 6, scope: !3264)
!3288 = !DILocation(line: 950, column: 21, scope: !3285)
!3289 = !DILocation(line: 950, column: 25, scope: !3285)
!3290 = !DILocation(line: 950, column: 3, scope: !3285)
!3291 = !DILocation(line: 952, column: 14, scope: !3264)
!3292 = !DILocation(line: 952, column: 18, scope: !3264)
!3293 = !DILocation(line: 952, column: 25, scope: !3264)
!3294 = !DILocation(line: 952, column: 11, scope: !3264)
!3295 = !DILocation(line: 953, column: 22, scope: !3264)
!3296 = !DILocation(line: 953, column: 32, scope: !3264)
!3297 = !DILocation(line: 953, column: 37, scope: !3264)
!3298 = !DILocation(line: 953, column: 2, scope: !3264)
!3299 = !DILocation(line: 954, column: 21, scope: !3264)
!3300 = !DILocation(line: 954, column: 2, scope: !3264)
!3301 = !DILocation(line: 955, column: 18, scope: !3264)
!3302 = !DILocation(line: 955, column: 2, scope: !3264)
!3303 = !DILocation(line: 957, column: 18, scope: !3264)
!3304 = !DILocation(line: 957, column: 22, scope: !3264)
!3305 = !DILocation(line: 957, column: 2, scope: !3264)
!3306 = !DILocation(line: 958, column: 18, scope: !3264)
!3307 = !DILocation(line: 958, column: 22, scope: !3264)
!3308 = !DILocation(line: 958, column: 2, scope: !3264)
!3309 = !DILocation(line: 959, column: 19, scope: !3264)
!3310 = !DILocation(line: 959, column: 23, scope: !3264)
!3311 = !DILocation(line: 959, column: 2, scope: !3264)
!3312 = !DILocation(line: 960, column: 13, scope: !3264)
!3313 = !DILocation(line: 960, column: 2, scope: !3264)
!3314 = !DILocation(line: 961, column: 1, scope: !3264)
!3315 = !DISubprogram(name: "device_unregister", scope: !26, file: !26, line: 1055, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3316 = !DISubprogram(name: "sysfs_remove_groups", scope: !141, file: !141, line: 317, type: !3317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !151, !137}
!3319 = distinct !DISubprogram(name: "bus_register_notifier", scope: !3, file: !3, line: 964, type: !3320, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!46, !845, !1527}
!3322 = !{!3323, !3324, !3325, !3326}
!3323 = !DILocalVariable(name: "bus", arg: 1, scope: !3319, file: !3, line: 964, type: !845)
!3324 = !DILocalVariable(name: "nb", arg: 2, scope: !3319, file: !3, line: 964, type: !1527)
!3325 = !DILocalVariable(name: "sp", scope: !3319, file: !3, line: 966, type: !1723)
!3326 = !DILocalVariable(name: "retval", scope: !3319, file: !3, line: 967, type: !46)
!3327 = !DILocation(line: 964, column: 50, scope: !3319)
!3328 = !DILocation(line: 964, column: 78, scope: !3319)
!3329 = !DILocation(line: 966, column: 2, scope: !3319)
!3330 = !DILocation(line: 966, column: 25, scope: !3319)
!3331 = !DILocation(line: 966, column: 44, scope: !3319)
!3332 = !DILocation(line: 966, column: 30, scope: !3319)
!3333 = !DILocation(line: 967, column: 2, scope: !3319)
!3334 = !DILocation(line: 967, column: 6, scope: !3319)
!3335 = !DILocation(line: 969, column: 7, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 969, column: 6)
!3337 = !DILocation(line: 969, column: 6, scope: !3319)
!3338 = !DILocation(line: 970, column: 3, scope: !3336)
!3339 = !DILocation(line: 972, column: 45, scope: !3319)
!3340 = !DILocation(line: 972, column: 49, scope: !3319)
!3341 = !DILocation(line: 972, column: 63, scope: !3319)
!3342 = !DILocation(line: 972, column: 11, scope: !3319)
!3343 = !DILocation(line: 972, column: 9, scope: !3319)
!3344 = !DILocation(line: 973, column: 13, scope: !3319)
!3345 = !DILocation(line: 973, column: 2, scope: !3319)
!3346 = !DILocation(line: 974, column: 9, scope: !3319)
!3347 = !DILocation(line: 974, column: 2, scope: !3319)
!3348 = !DILocation(line: 975, column: 1, scope: !3319)
!3349 = !DISubprogram(name: "blocking_notifier_chain_register", scope: !1523, file: !1523, line: 148, type: !3350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!46, !1521, !1527}
!3352 = distinct !DISubprogram(name: "bus_unregister_notifier", scope: !3, file: !3, line: 978, type: !3320, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3353 = !{!3354, !3355, !3356, !3357}
!3354 = !DILocalVariable(name: "bus", arg: 1, scope: !3352, file: !3, line: 978, type: !845)
!3355 = !DILocalVariable(name: "nb", arg: 2, scope: !3352, file: !3, line: 978, type: !1527)
!3356 = !DILocalVariable(name: "sp", scope: !3352, file: !3, line: 980, type: !1723)
!3357 = !DILocalVariable(name: "retval", scope: !3352, file: !3, line: 981, type: !46)
!3358 = !DILocation(line: 978, column: 52, scope: !3352)
!3359 = !DILocation(line: 978, column: 80, scope: !3352)
!3360 = !DILocation(line: 980, column: 2, scope: !3352)
!3361 = !DILocation(line: 980, column: 25, scope: !3352)
!3362 = !DILocation(line: 980, column: 44, scope: !3352)
!3363 = !DILocation(line: 980, column: 30, scope: !3352)
!3364 = !DILocation(line: 981, column: 2, scope: !3352)
!3365 = !DILocation(line: 981, column: 6, scope: !3352)
!3366 = !DILocation(line: 983, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 983, column: 6)
!3368 = !DILocation(line: 983, column: 6, scope: !3352)
!3369 = !DILocation(line: 984, column: 3, scope: !3367)
!3370 = !DILocation(line: 985, column: 47, scope: !3352)
!3371 = !DILocation(line: 985, column: 51, scope: !3352)
!3372 = !DILocation(line: 985, column: 65, scope: !3352)
!3373 = !DILocation(line: 985, column: 11, scope: !3352)
!3374 = !DILocation(line: 985, column: 9, scope: !3352)
!3375 = !DILocation(line: 986, column: 13, scope: !3352)
!3376 = !DILocation(line: 986, column: 2, scope: !3352)
!3377 = !DILocation(line: 987, column: 9, scope: !3352)
!3378 = !DILocation(line: 987, column: 2, scope: !3352)
!3379 = !DILocation(line: 988, column: 1, scope: !3352)
!3380 = !DISubprogram(name: "blocking_notifier_chain_unregister", scope: !1523, file: !1523, line: 162, type: !3350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3381 = distinct !DISubprogram(name: "bus_notify", scope: !3, file: !3, line: 991, type: !3382, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !807, !95}
!3384 = !{!3385, !3386, !3387}
!3385 = !DILocalVariable(name: "dev", arg: 1, scope: !3381, file: !3, line: 991, type: !807)
!3386 = !DILocalVariable(name: "value", arg: 2, scope: !3381, file: !3, line: 991, type: !95)
!3387 = !DILocalVariable(name: "sp", scope: !3381, file: !3, line: 993, type: !1723)
!3388 = !DILocation(line: 991, column: 32, scope: !3381)
!3389 = !DILocation(line: 991, column: 61, scope: !3381)
!3390 = !DILocation(line: 993, column: 2, scope: !3381)
!3391 = !DILocation(line: 993, column: 25, scope: !3381)
!3392 = !DILocation(line: 993, column: 44, scope: !3381)
!3393 = !DILocation(line: 993, column: 49, scope: !3381)
!3394 = !DILocation(line: 993, column: 30, scope: !3381)
!3395 = !DILocation(line: 995, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 995, column: 6)
!3397 = !DILocation(line: 995, column: 6, scope: !3381)
!3398 = !DILocation(line: 996, column: 3, scope: !3396)
!3399 = !DILocation(line: 998, column: 32, scope: !3381)
!3400 = !DILocation(line: 998, column: 36, scope: !3381)
!3401 = !DILocation(line: 998, column: 50, scope: !3381)
!3402 = !DILocation(line: 998, column: 57, scope: !3381)
!3403 = !DILocation(line: 998, column: 2, scope: !3381)
!3404 = !DILocation(line: 999, column: 13, scope: !3381)
!3405 = !DILocation(line: 999, column: 2, scope: !3381)
!3406 = !DILocation(line: 1000, column: 1, scope: !3381)
!3407 = !DISubprogram(name: "blocking_notifier_call_chain", scope: !1523, file: !1523, line: 171, type: !3408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!46, !1521, !286, !122}
!3410 = distinct !DISubprogram(name: "bus_get_kset", scope: !3, file: !3, line: 1002, type: !3411, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!164, !845}
!3413 = !{!3414, !3415, !3416}
!3414 = !DILocalVariable(name: "bus", arg: 1, scope: !3410, file: !3, line: 1002, type: !845)
!3415 = !DILocalVariable(name: "sp", scope: !3410, file: !3, line: 1004, type: !1723)
!3416 = !DILocalVariable(name: "kset", scope: !3410, file: !3, line: 1005, type: !164)
!3417 = !DILocation(line: 1002, column: 50, scope: !3410)
!3418 = !DILocation(line: 1004, column: 2, scope: !3410)
!3419 = !DILocation(line: 1004, column: 25, scope: !3410)
!3420 = !DILocation(line: 1004, column: 44, scope: !3410)
!3421 = !DILocation(line: 1004, column: 30, scope: !3410)
!3422 = !DILocation(line: 1005, column: 2, scope: !3410)
!3423 = !DILocation(line: 1005, column: 15, scope: !3410)
!3424 = !DILocation(line: 1007, column: 7, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 1007, column: 6)
!3426 = !DILocation(line: 1007, column: 6, scope: !3410)
!3427 = !DILocation(line: 1008, column: 3, scope: !3425)
!3428 = !DILocation(line: 1010, column: 10, scope: !3410)
!3429 = !DILocation(line: 1010, column: 14, scope: !3410)
!3430 = !DILocation(line: 1010, column: 7, scope: !3410)
!3431 = !DILocation(line: 1011, column: 13, scope: !3410)
!3432 = !DILocation(line: 1011, column: 2, scope: !3410)
!3433 = !DILocation(line: 1013, column: 9, scope: !3410)
!3434 = !DILocation(line: 1013, column: 2, scope: !3410)
!3435 = !DILocation(line: 1014, column: 1, scope: !3410)
!3436 = distinct !DISubprogram(name: "bus_sort_breadthfirst", scope: !3, file: !3, line: 1044, type: !3437, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3442)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{null, !131, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!46, !1310, !1310}
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3455, !3457, !3461}
!3443 = !DILocalVariable(name: "bus", arg: 1, scope: !3436, file: !3, line: 1044, type: !131)
!3444 = !DILocalVariable(name: "compare", arg: 2, scope: !3436, file: !3, line: 1045, type: !3439)
!3445 = !DILocalVariable(name: "sp", scope: !3436, file: !3, line: 1048, type: !1723)
!3446 = !DILocalVariable(name: "sorted_devices", scope: !3436, file: !3, line: 1049, type: !157)
!3447 = !DILocalVariable(name: "n", scope: !3436, file: !3, line: 1050, type: !827)
!3448 = !DILocalVariable(name: "tmp", scope: !3436, file: !3, line: 1050, type: !827)
!3449 = !DILocalVariable(name: "dev_prv", scope: !3436, file: !3, line: 1051, type: !813)
!3450 = !DILocalVariable(name: "dev", scope: !3436, file: !3, line: 1052, type: !807)
!3451 = !DILocalVariable(name: "device_klist", scope: !3436, file: !3, line: 1053, type: !2128)
!3452 = !DILocalVariable(name: "__mptr", scope: !3453, file: !3, line: 1060, type: !122)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 1060, column: 2)
!3454 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 1060, column: 2)
!3455 = !DILocalVariable(name: "__mptr", scope: !3456, file: !3, line: 1060, type: !122)
!3456 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 1060, column: 2)
!3457 = !DILocalVariable(name: "__mptr", scope: !3458, file: !3, line: 1061, type: !122)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 1061, column: 13)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 1060, column: 66)
!3460 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 1060, column: 2)
!3461 = !DILocalVariable(name: "__mptr", scope: !3462, file: !3, line: 1060, type: !122)
!3462 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 1060, column: 2)
!3463 = !DILocation(line: 1044, column: 45, scope: !3436)
!3464 = !DILocation(line: 1045, column: 13, scope: !3436)
!3465 = !DILocation(line: 1048, column: 2, scope: !3436)
!3466 = !DILocation(line: 1048, column: 25, scope: !3436)
!3467 = !DILocation(line: 1048, column: 44, scope: !3436)
!3468 = !DILocation(line: 1048, column: 30, scope: !3436)
!3469 = !DILocation(line: 1049, column: 2, scope: !3436)
!3470 = !DILocation(line: 1050, column: 2, scope: !3436)
!3471 = !DILocation(line: 1050, column: 21, scope: !3436)
!3472 = !DILocation(line: 1050, column: 25, scope: !3436)
!3473 = !DILocation(line: 1051, column: 2, scope: !3436)
!3474 = !DILocation(line: 1051, column: 25, scope: !3436)
!3475 = !DILocation(line: 1052, column: 2, scope: !3436)
!3476 = !DILocation(line: 1052, column: 17, scope: !3436)
!3477 = !DILocation(line: 1053, column: 2, scope: !3436)
!3478 = !DILocation(line: 1053, column: 16, scope: !3436)
!3479 = !DILocation(line: 1055, column: 7, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 1055, column: 6)
!3481 = !DILocation(line: 1055, column: 6, scope: !3436)
!3482 = !DILocation(line: 1056, column: 3, scope: !3480)
!3483 = !DILocation(line: 1057, column: 18, scope: !3436)
!3484 = !DILocation(line: 1057, column: 22, scope: !3436)
!3485 = !DILocation(line: 1057, column: 15, scope: !3436)
!3486 = !DILocation(line: 1059, column: 13, scope: !3436)
!3487 = !DILocation(line: 1059, column: 27, scope: !3436)
!3488 = !DILocation(line: 1059, column: 2, scope: !3436)
!3489 = !DILocation(line: 1060, column: 2, scope: !3453)
!3490 = !DILocation(line: 1060, column: 2, scope: !3454)
!3491 = !DILocation(line: 1060, column: 2, scope: !3456)
!3492 = !DILocation(line: 1060, column: 2, scope: !3460)
!3493 = !DILocation(line: 1061, column: 13, scope: !3458)
!3494 = !DILocation(line: 1061, column: 13, scope: !3459)
!3495 = !DILocation(line: 1061, column: 11, scope: !3459)
!3496 = !DILocation(line: 1062, column: 9, scope: !3459)
!3497 = !DILocation(line: 1062, column: 18, scope: !3459)
!3498 = !DILocation(line: 1062, column: 7, scope: !3459)
!3499 = !DILocation(line: 1063, column: 31, scope: !3459)
!3500 = !DILocation(line: 1063, column: 53, scope: !3459)
!3501 = !DILocation(line: 1063, column: 3, scope: !3459)
!3502 = !DILocation(line: 1064, column: 2, scope: !3459)
!3503 = !DILocation(line: 1060, column: 2, scope: !3462)
!3504 = distinct !{!3504, !3490, !3505, !2033, !2034}
!3505 = !DILocation(line: 1064, column: 2, scope: !3454)
!3506 = !DILocation(line: 1065, column: 32, scope: !3436)
!3507 = !DILocation(line: 1065, column: 46, scope: !3436)
!3508 = !DILocation(line: 1065, column: 2, scope: !3436)
!3509 = !DILocation(line: 1066, column: 15, scope: !3436)
!3510 = !DILocation(line: 1066, column: 29, scope: !3436)
!3511 = !DILocation(line: 1066, column: 2, scope: !3436)
!3512 = !DILocation(line: 1067, column: 13, scope: !3436)
!3513 = !DILocation(line: 1067, column: 2, scope: !3436)
!3514 = !DILocation(line: 1068, column: 1, scope: !3436)
!3515 = distinct !DISubprogram(name: "spin_lock", scope: !3516, file: !3516, line: 349, type: !3517, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3520)
!3516 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "lock", arg: 1, scope: !3515, file: !3516, line: 349, type: !3519)
!3522 = !DILocation(line: 349, column: 51, scope: !3515)
!3523 = !DILocation(line: 351, column: 2, scope: !3515)
!3524 = !DILocation(line: 352, column: 1, scope: !3515)
!3525 = distinct !DISubprogram(name: "device_insertion_sort_klist", scope: !3, file: !3, line: 1024, type: !3526, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{null, !807, !160, !3439}
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3538, !3542}
!3529 = !DILocalVariable(name: "a", arg: 1, scope: !3525, file: !3, line: 1024, type: !807)
!3530 = !DILocalVariable(name: "list", arg: 2, scope: !3525, file: !3, line: 1024, type: !160)
!3531 = !DILocalVariable(name: "compare", arg: 3, scope: !3525, file: !3, line: 1025, type: !3439)
!3532 = !DILocalVariable(name: "n", scope: !3525, file: !3, line: 1028, type: !827)
!3533 = !DILocalVariable(name: "dev_prv", scope: !3525, file: !3, line: 1029, type: !813)
!3534 = !DILocalVariable(name: "b", scope: !3525, file: !3, line: 1030, type: !807)
!3535 = !DILocalVariable(name: "__mptr", scope: !3536, file: !3, line: 1032, type: !122)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1032, column: 2)
!3537 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1032, column: 2)
!3538 = !DILocalVariable(name: "__mptr", scope: !3539, file: !3, line: 1033, type: !122)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 1033, column: 13)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1032, column: 39)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1032, column: 2)
!3542 = !DILocalVariable(name: "__mptr", scope: !3543, file: !3, line: 1032, type: !122)
!3543 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1032, column: 2)
!3544 = !DILocation(line: 1024, column: 56, scope: !3525)
!3545 = !DILocation(line: 1024, column: 77, scope: !3525)
!3546 = !DILocation(line: 1025, column: 12, scope: !3525)
!3547 = !DILocation(line: 1028, column: 2, scope: !3525)
!3548 = !DILocation(line: 1028, column: 21, scope: !3525)
!3549 = !DILocation(line: 1029, column: 2, scope: !3525)
!3550 = !DILocation(line: 1029, column: 25, scope: !3525)
!3551 = !DILocation(line: 1030, column: 2, scope: !3525)
!3552 = !DILocation(line: 1030, column: 17, scope: !3525)
!3553 = !DILocation(line: 1032, column: 2, scope: !3536)
!3554 = !DILocation(line: 1032, column: 2, scope: !3537)
!3555 = !DILocation(line: 1032, column: 2, scope: !3541)
!3556 = !DILocation(line: 1033, column: 13, scope: !3539)
!3557 = !DILocation(line: 1033, column: 13, scope: !3540)
!3558 = !DILocation(line: 1033, column: 11, scope: !3540)
!3559 = !DILocation(line: 1034, column: 7, scope: !3540)
!3560 = !DILocation(line: 1034, column: 16, scope: !3540)
!3561 = !DILocation(line: 1034, column: 5, scope: !3540)
!3562 = !DILocation(line: 1035, column: 7, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 1035, column: 7)
!3564 = !DILocation(line: 1035, column: 15, scope: !3563)
!3565 = !DILocation(line: 1035, column: 18, scope: !3563)
!3566 = !DILocation(line: 1035, column: 21, scope: !3563)
!3567 = !DILocation(line: 1035, column: 7, scope: !3540)
!3568 = !DILocation(line: 1036, column: 20, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 1035, column: 27)
!3570 = !DILocation(line: 1036, column: 23, scope: !3569)
!3571 = !DILocation(line: 1036, column: 26, scope: !3569)
!3572 = !DILocation(line: 1036, column: 36, scope: !3569)
!3573 = !DILocation(line: 1037, column: 13, scope: !3569)
!3574 = !DILocation(line: 1037, column: 16, scope: !3569)
!3575 = !DILocation(line: 1037, column: 19, scope: !3569)
!3576 = !DILocation(line: 1037, column: 29, scope: !3569)
!3577 = !DILocation(line: 1036, column: 4, scope: !3569)
!3578 = !DILocation(line: 1038, column: 4, scope: !3569)
!3579 = !DILocation(line: 1040, column: 2, scope: !3540)
!3580 = !DILocation(line: 1032, column: 2, scope: !3543)
!3581 = distinct !{!3581, !3554, !3582, !2033, !2034}
!3582 = !DILocation(line: 1040, column: 2, scope: !3537)
!3583 = !DILocation(line: 1041, column: 18, scope: !3525)
!3584 = !DILocation(line: 1041, column: 21, scope: !3525)
!3585 = !DILocation(line: 1041, column: 24, scope: !3525)
!3586 = !DILocation(line: 1041, column: 34, scope: !3525)
!3587 = !DILocation(line: 1041, column: 42, scope: !3525)
!3588 = !DILocation(line: 1041, column: 2, scope: !3525)
!3589 = !DILocation(line: 1042, column: 1, scope: !3525)
!3590 = distinct !DISubprogram(name: "list_splice", scope: !3147, file: !3147, line: 542, type: !3591, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3595)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !3593, !160}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!3595 = !{!3596, !3597}
!3596 = !DILocalVariable(name: "list", arg: 1, scope: !3590, file: !3147, line: 542, type: !3593)
!3597 = !DILocalVariable(name: "head", arg: 2, scope: !3590, file: !3147, line: 543, type: !160)
!3598 = !DILocation(line: 542, column: 56, scope: !3590)
!3599 = !DILocation(line: 543, column: 23, scope: !3590)
!3600 = !DILocation(line: 545, column: 18, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3590, file: !3147, line: 545, column: 6)
!3602 = !DILocation(line: 545, column: 7, scope: !3601)
!3603 = !DILocation(line: 545, column: 6, scope: !3590)
!3604 = !DILocation(line: 546, column: 17, scope: !3601)
!3605 = !DILocation(line: 546, column: 23, scope: !3601)
!3606 = !DILocation(line: 546, column: 29, scope: !3601)
!3607 = !DILocation(line: 546, column: 35, scope: !3601)
!3608 = !DILocation(line: 546, column: 3, scope: !3601)
!3609 = !DILocation(line: 547, column: 1, scope: !3590)
!3610 = distinct !DISubprogram(name: "spin_unlock", scope: !3516, file: !3516, line: 389, type: !3517, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "lock", arg: 1, scope: !3610, file: !3516, line: 389, type: !3519)
!3613 = !DILocation(line: 389, column: 53, scope: !3610)
!3614 = !DILocation(line: 391, column: 2, scope: !3610)
!3615 = !DILocation(line: 392, column: 1, scope: !3610)
!3616 = distinct !DISubprogram(name: "subsys_interface_register", scope: !3, file: !3, line: 1138, type: !3617, scopeLine: 1139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!46, !123}
!3619 = !{!3620, !3621, !3622, !3627}
!3620 = !DILocalVariable(name: "sif", arg: 1, scope: !3616, file: !3, line: 1138, type: !123)
!3621 = !DILocalVariable(name: "sp", scope: !3616, file: !3, line: 1140, type: !1723)
!3622 = !DILocalVariable(name: "iter", scope: !3616, file: !3, line: 1141, type: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_dev_iter", file: !3, line: 1071, size: 192, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ki", scope: !3623, file: !3, line: 1072, baseType: !2125, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3623, file: !3, line: 1073, baseType: !1300, size: 64, offset: 128)
!3627 = !DILocalVariable(name: "dev", scope: !3616, file: !3, line: 1142, type: !807)
!3628 = !DILocation(line: 1138, column: 56, scope: !3616)
!3629 = !DILocation(line: 1140, column: 2, scope: !3616)
!3630 = !DILocation(line: 1140, column: 25, scope: !3616)
!3631 = !DILocation(line: 1141, column: 2, scope: !3616)
!3632 = !DILocation(line: 1141, column: 25, scope: !3616)
!3633 = !DILocation(line: 1142, column: 2, scope: !3616)
!3634 = !DILocation(line: 1142, column: 17, scope: !3616)
!3635 = !DILocation(line: 1144, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1144, column: 6)
!3637 = !DILocation(line: 1144, column: 11, scope: !3636)
!3638 = !DILocation(line: 1144, column: 15, scope: !3636)
!3639 = !DILocation(line: 1144, column: 20, scope: !3636)
!3640 = !DILocation(line: 1144, column: 6, scope: !3616)
!3641 = !DILocation(line: 1145, column: 3, scope: !3636)
!3642 = !DILocation(line: 1147, column: 21, scope: !3616)
!3643 = !DILocation(line: 1147, column: 26, scope: !3616)
!3644 = !DILocation(line: 1147, column: 7, scope: !3616)
!3645 = !DILocation(line: 1147, column: 5, scope: !3616)
!3646 = !DILocation(line: 1148, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1148, column: 6)
!3648 = !DILocation(line: 1148, column: 6, scope: !3616)
!3649 = !DILocation(line: 1149, column: 3, scope: !3647)
!3650 = !DILocation(line: 1156, column: 14, scope: !3616)
!3651 = !DILocation(line: 1156, column: 18, scope: !3616)
!3652 = !DILocation(line: 1156, column: 2, scope: !3616)
!3653 = !DILocation(line: 1157, column: 17, scope: !3616)
!3654 = !DILocation(line: 1157, column: 22, scope: !3616)
!3655 = !DILocation(line: 1157, column: 29, scope: !3616)
!3656 = !DILocation(line: 1157, column: 33, scope: !3616)
!3657 = !DILocation(line: 1157, column: 2, scope: !3616)
!3658 = !DILocation(line: 1158, column: 6, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1158, column: 6)
!3660 = !DILocation(line: 1158, column: 11, scope: !3659)
!3661 = !DILocation(line: 1158, column: 6, scope: !3616)
!3662 = !DILocation(line: 1159, column: 31, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 1158, column: 20)
!3664 = !DILocation(line: 1159, column: 3, scope: !3663)
!3665 = !DILocation(line: 1160, column: 3, scope: !3663)
!3666 = !DILocation(line: 1160, column: 17, scope: !3663)
!3667 = !DILocation(line: 1160, column: 15, scope: !3663)
!3668 = !DILocation(line: 1161, column: 4, scope: !3663)
!3669 = !DILocation(line: 1161, column: 9, scope: !3663)
!3670 = !DILocation(line: 1161, column: 17, scope: !3663)
!3671 = !DILocation(line: 1161, column: 22, scope: !3663)
!3672 = distinct !{!3672, !3665, !3673, !2033, !2034}
!3673 = !DILocation(line: 1161, column: 25, scope: !3663)
!3674 = !DILocation(line: 1162, column: 3, scope: !3663)
!3675 = !DILocation(line: 1163, column: 2, scope: !3663)
!3676 = !DILocation(line: 1164, column: 16, scope: !3616)
!3677 = !DILocation(line: 1164, column: 20, scope: !3616)
!3678 = !DILocation(line: 1164, column: 2, scope: !3616)
!3679 = !DILocation(line: 1166, column: 2, scope: !3616)
!3680 = !DILocation(line: 1167, column: 1, scope: !3616)
!3681 = distinct !DISubprogram(name: "list_add_tail", scope: !3147, file: !3147, line: 181, type: !3682, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !160, !160}
!3684 = !{!3685, !3686}
!3685 = !DILocalVariable(name: "new", arg: 1, scope: !3681, file: !3147, line: 181, type: !160)
!3686 = !DILocalVariable(name: "head", arg: 2, scope: !3681, file: !3147, line: 181, type: !160)
!3687 = !DILocation(line: 181, column: 52, scope: !3681)
!3688 = !DILocation(line: 181, column: 75, scope: !3681)
!3689 = !DILocation(line: 183, column: 13, scope: !3681)
!3690 = !DILocation(line: 183, column: 18, scope: !3681)
!3691 = !DILocation(line: 183, column: 24, scope: !3681)
!3692 = !DILocation(line: 183, column: 30, scope: !3681)
!3693 = !DILocation(line: 183, column: 2, scope: !3681)
!3694 = !DILocation(line: 184, column: 1, scope: !3681)
!3695 = distinct !DISubprogram(name: "subsys_dev_iter_init", scope: !3, file: !3, line: 1088, type: !3696, scopeLine: 1090, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3699)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !3698, !1723, !807, !1300}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3699 = !{!3700, !3701, !3702, !3703, !3704}
!3700 = !DILocalVariable(name: "iter", arg: 1, scope: !3695, file: !3, line: 1088, type: !3698)
!3701 = !DILocalVariable(name: "sp", arg: 2, scope: !3695, file: !3, line: 1088, type: !1723)
!3702 = !DILocalVariable(name: "start", arg: 3, scope: !3695, file: !3, line: 1089, type: !807)
!3703 = !DILocalVariable(name: "type", arg: 4, scope: !3695, file: !3, line: 1089, type: !1300)
!3704 = !DILocalVariable(name: "start_knode", scope: !3695, file: !3, line: 1091, type: !827)
!3705 = !DILocation(line: 1088, column: 58, scope: !3695)
!3706 = !DILocation(line: 1088, column: 87, scope: !3695)
!3707 = !DILocation(line: 1089, column: 21, scope: !3695)
!3708 = !DILocation(line: 1089, column: 54, scope: !3695)
!3709 = !DILocation(line: 1091, column: 2, scope: !3695)
!3710 = !DILocation(line: 1091, column: 21, scope: !3695)
!3711 = !DILocation(line: 1093, column: 6, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 1093, column: 6)
!3713 = !DILocation(line: 1093, column: 6, scope: !3695)
!3714 = !DILocation(line: 1094, column: 18, scope: !3712)
!3715 = !DILocation(line: 1094, column: 25, scope: !3712)
!3716 = !DILocation(line: 1094, column: 28, scope: !3712)
!3717 = !DILocation(line: 1094, column: 15, scope: !3712)
!3718 = !DILocation(line: 1094, column: 3, scope: !3712)
!3719 = !DILocation(line: 1095, column: 24, scope: !3695)
!3720 = !DILocation(line: 1095, column: 28, scope: !3695)
!3721 = !DILocation(line: 1095, column: 44, scope: !3695)
!3722 = !DILocation(line: 1095, column: 50, scope: !3695)
!3723 = !DILocation(line: 1095, column: 54, scope: !3695)
!3724 = !DILocation(line: 1095, column: 2, scope: !3695)
!3725 = !DILocation(line: 1096, column: 15, scope: !3695)
!3726 = !DILocation(line: 1096, column: 2, scope: !3695)
!3727 = !DILocation(line: 1096, column: 8, scope: !3695)
!3728 = !DILocation(line: 1096, column: 13, scope: !3695)
!3729 = !DILocation(line: 1097, column: 1, scope: !3695)
!3730 = distinct !DISubprogram(name: "subsys_dev_iter_next", scope: !3, file: !3, line: 1111, type: !3731, scopeLine: 1112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!807, !3698}
!3733 = !{!3734, !3735, !3736, !3737}
!3734 = !DILocalVariable(name: "iter", arg: 1, scope: !3730, file: !3, line: 1111, type: !3698)
!3735 = !DILocalVariable(name: "knode", scope: !3730, file: !3, line: 1113, type: !827)
!3736 = !DILocalVariable(name: "dev", scope: !3730, file: !3, line: 1114, type: !807)
!3737 = !DILocalVariable(name: "__mptr", scope: !3738, file: !3, line: 1120, type: !122)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1120, column: 9)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 1116, column: 11)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 1116, column: 2)
!3741 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 1116, column: 2)
!3742 = !DILocation(line: 1111, column: 68, scope: !3730)
!3743 = !DILocation(line: 1113, column: 2, scope: !3730)
!3744 = !DILocation(line: 1113, column: 21, scope: !3730)
!3745 = !DILocation(line: 1114, column: 2, scope: !3730)
!3746 = !DILocation(line: 1114, column: 17, scope: !3730)
!3747 = !DILocation(line: 1116, column: 2, scope: !3730)
!3748 = !DILocation(line: 1117, column: 23, scope: !3739)
!3749 = !DILocation(line: 1117, column: 29, scope: !3739)
!3750 = !DILocation(line: 1117, column: 11, scope: !3739)
!3751 = !DILocation(line: 1117, column: 9, scope: !3739)
!3752 = !DILocation(line: 1118, column: 8, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1118, column: 7)
!3754 = !DILocation(line: 1118, column: 7, scope: !3739)
!3755 = !DILocation(line: 1119, column: 4, scope: !3753)
!3756 = !DILocation(line: 1120, column: 9, scope: !3738)
!3757 = !DILocation(line: 1120, column: 9, scope: !3739)
!3758 = !DILocation(line: 1120, column: 39, scope: !3739)
!3759 = !DILocation(line: 1120, column: 7, scope: !3739)
!3760 = !DILocation(line: 1121, column: 8, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1121, column: 7)
!3762 = !DILocation(line: 1121, column: 14, scope: !3761)
!3763 = !DILocation(line: 1121, column: 19, scope: !3761)
!3764 = !DILocation(line: 1121, column: 22, scope: !3761)
!3765 = !DILocation(line: 1121, column: 28, scope: !3761)
!3766 = !DILocation(line: 1121, column: 36, scope: !3761)
!3767 = !DILocation(line: 1121, column: 41, scope: !3761)
!3768 = !DILocation(line: 1121, column: 33, scope: !3761)
!3769 = !DILocation(line: 1121, column: 7, scope: !3739)
!3770 = !DILocation(line: 1122, column: 11, scope: !3761)
!3771 = !DILocation(line: 1122, column: 4, scope: !3761)
!3772 = !DILocation(line: 1116, column: 2, scope: !3740)
!3773 = distinct !{!3773, !3774, !3775, !2034}
!3774 = !DILocation(line: 1116, column: 2, scope: !3741)
!3775 = !DILocation(line: 1123, column: 2, scope: !3741)
!3776 = !DILocation(line: 1124, column: 1, scope: !3730)
!3777 = distinct !DISubprogram(name: "subsys_dev_iter_exit", scope: !3, file: !3, line: 1133, type: !3778, scopeLine: 1134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{null, !3698}
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "iter", arg: 1, scope: !3777, file: !3, line: 1133, type: !3698)
!3782 = !DILocation(line: 1133, column: 58, scope: !3777)
!3783 = !DILocation(line: 1135, column: 19, scope: !3777)
!3784 = !DILocation(line: 1135, column: 25, scope: !3777)
!3785 = !DILocation(line: 1135, column: 2, scope: !3777)
!3786 = !DILocation(line: 1136, column: 1, scope: !3777)
!3787 = distinct !DISubprogram(name: "subsys_interface_unregister", scope: !3, file: !3, line: 1170, type: !3788, scopeLine: 1171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !123}
!3790 = !{!3791, !3792, !3793, !3794}
!3791 = !DILocalVariable(name: "sif", arg: 1, scope: !3787, file: !3, line: 1170, type: !123)
!3792 = !DILocalVariable(name: "sp", scope: !3787, file: !3, line: 1172, type: !1723)
!3793 = !DILocalVariable(name: "iter", scope: !3787, file: !3, line: 1173, type: !3623)
!3794 = !DILocalVariable(name: "dev", scope: !3787, file: !3, line: 1174, type: !807)
!3795 = !DILocation(line: 1170, column: 59, scope: !3787)
!3796 = !DILocation(line: 1172, column: 2, scope: !3787)
!3797 = !DILocation(line: 1172, column: 25, scope: !3787)
!3798 = !DILocation(line: 1173, column: 2, scope: !3787)
!3799 = !DILocation(line: 1173, column: 25, scope: !3787)
!3800 = !DILocation(line: 1174, column: 2, scope: !3787)
!3801 = !DILocation(line: 1174, column: 17, scope: !3787)
!3802 = !DILocation(line: 1176, column: 7, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1176, column: 6)
!3804 = !DILocation(line: 1176, column: 11, scope: !3803)
!3805 = !DILocation(line: 1176, column: 15, scope: !3803)
!3806 = !DILocation(line: 1176, column: 20, scope: !3803)
!3807 = !DILocation(line: 1176, column: 6, scope: !3787)
!3808 = !DILocation(line: 1177, column: 3, scope: !3803)
!3809 = !DILocation(line: 1179, column: 21, scope: !3787)
!3810 = !DILocation(line: 1179, column: 26, scope: !3787)
!3811 = !DILocation(line: 1179, column: 7, scope: !3787)
!3812 = !DILocation(line: 1179, column: 5, scope: !3787)
!3813 = !DILocation(line: 1180, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1180, column: 6)
!3815 = !DILocation(line: 1180, column: 6, scope: !3787)
!3816 = !DILocation(line: 1181, column: 3, scope: !3814)
!3817 = !DILocation(line: 1183, column: 14, scope: !3787)
!3818 = !DILocation(line: 1183, column: 18, scope: !3787)
!3819 = !DILocation(line: 1183, column: 2, scope: !3787)
!3820 = !DILocation(line: 1184, column: 17, scope: !3787)
!3821 = !DILocation(line: 1184, column: 22, scope: !3787)
!3822 = !DILocation(line: 1184, column: 2, scope: !3787)
!3823 = !DILocation(line: 1185, column: 6, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1185, column: 6)
!3825 = !DILocation(line: 1185, column: 11, scope: !3824)
!3826 = !DILocation(line: 1185, column: 6, scope: !3787)
!3827 = !DILocation(line: 1186, column: 31, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 1185, column: 23)
!3829 = !DILocation(line: 1186, column: 3, scope: !3828)
!3830 = !DILocation(line: 1187, column: 3, scope: !3828)
!3831 = !DILocation(line: 1187, column: 17, scope: !3828)
!3832 = !DILocation(line: 1187, column: 15, scope: !3828)
!3833 = !DILocation(line: 1188, column: 4, scope: !3828)
!3834 = !DILocation(line: 1188, column: 9, scope: !3828)
!3835 = !DILocation(line: 1188, column: 20, scope: !3828)
!3836 = !DILocation(line: 1188, column: 25, scope: !3828)
!3837 = distinct !{!3837, !3830, !3838, !2033, !2034}
!3838 = !DILocation(line: 1188, column: 28, scope: !3828)
!3839 = !DILocation(line: 1189, column: 3, scope: !3828)
!3840 = !DILocation(line: 1190, column: 2, scope: !3828)
!3841 = !DILocation(line: 1191, column: 16, scope: !3787)
!3842 = !DILocation(line: 1191, column: 20, scope: !3787)
!3843 = !DILocation(line: 1191, column: 2, scope: !3787)
!3844 = !DILocation(line: 1198, column: 13, scope: !3787)
!3845 = !DILocation(line: 1198, column: 2, scope: !3787)
!3846 = !DILocation(line: 1199, column: 13, scope: !3787)
!3847 = !DILocation(line: 1199, column: 2, scope: !3787)
!3848 = !DILocation(line: 1200, column: 1, scope: !3787)
!3849 = distinct !DISubprogram(name: "list_del_init", scope: !3147, file: !3147, line: 285, type: !3148, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3850)
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "entry", arg: 1, scope: !3849, file: !3147, line: 285, type: !160)
!3852 = !DILocation(line: 285, column: 52, scope: !3849)
!3853 = !DILocation(line: 287, column: 19, scope: !3849)
!3854 = !DILocation(line: 287, column: 2, scope: !3849)
!3855 = !DILocation(line: 288, column: 17, scope: !3849)
!3856 = !DILocation(line: 288, column: 2, scope: !3849)
!3857 = !DILocation(line: 289, column: 1, scope: !3849)
!3858 = distinct !DISubprogram(name: "subsys_system_register", scope: !3, file: !3, line: 1278, type: !3859, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!46, !131, !137}
!3861 = !{!3862, !3863}
!3862 = !DILocalVariable(name: "subsys", arg: 1, scope: !3858, file: !3, line: 1278, type: !131)
!3863 = !DILocalVariable(name: "groups", arg: 2, scope: !3858, file: !3, line: 1279, type: !137)
!3864 = !DILocation(line: 1278, column: 45, scope: !3858)
!3865 = !DILocation(line: 1279, column: 38, scope: !3858)
!3866 = !DILocation(line: 1281, column: 25, scope: !3858)
!3867 = !DILocation(line: 1281, column: 33, scope: !3858)
!3868 = !DILocation(line: 1281, column: 42, scope: !3858)
!3869 = !DILocation(line: 1281, column: 55, scope: !3858)
!3870 = !DILocation(line: 1281, column: 9, scope: !3858)
!3871 = !DILocation(line: 1281, column: 2, scope: !3858)
!3872 = distinct !DISubprogram(name: "subsys_register", scope: !3, file: !3, line: 1208, type: !3873, scopeLine: 1211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!46, !131, !137, !151}
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885}
!3876 = !DILocalVariable(name: "subsys", arg: 1, scope: !3872, file: !3, line: 1208, type: !131)
!3877 = !DILocalVariable(name: "groups", arg: 2, scope: !3872, file: !3, line: 1209, type: !137)
!3878 = !DILocalVariable(name: "parent_of_root", arg: 3, scope: !3872, file: !3, line: 1210, type: !151)
!3879 = !DILocalVariable(name: "sp", scope: !3872, file: !3, line: 1212, type: !1723)
!3880 = !DILocalVariable(name: "dev", scope: !3872, file: !3, line: 1213, type: !807)
!3881 = !DILocalVariable(name: "err", scope: !3872, file: !3, line: 1214, type: !46)
!3882 = !DILabel(scope: !3872, name: "err_dev_reg", file: !3, line: 1248)
!3883 = !DILabel(scope: !3872, name: "err_name", file: !3, line: 1251)
!3884 = !DILabel(scope: !3872, name: "err_dev", file: !3, line: 1253)
!3885 = !DILabel(scope: !3872, name: "err_sp", file: !3, line: 1255)
!3886 = !DILocation(line: 1208, column: 45, scope: !3872)
!3887 = !DILocation(line: 1209, column: 38, scope: !3872)
!3888 = !DILocation(line: 1210, column: 23, scope: !3872)
!3889 = !DILocation(line: 1212, column: 2, scope: !3872)
!3890 = !DILocation(line: 1212, column: 25, scope: !3872)
!3891 = !DILocation(line: 1213, column: 2, scope: !3872)
!3892 = !DILocation(line: 1213, column: 17, scope: !3872)
!3893 = !DILocation(line: 1214, column: 2, scope: !3872)
!3894 = !DILocation(line: 1214, column: 6, scope: !3872)
!3895 = !DILocation(line: 1216, column: 21, scope: !3872)
!3896 = !DILocation(line: 1216, column: 8, scope: !3872)
!3897 = !DILocation(line: 1216, column: 6, scope: !3872)
!3898 = !DILocation(line: 1217, column: 6, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1217, column: 6)
!3900 = !DILocation(line: 1217, column: 10, scope: !3899)
!3901 = !DILocation(line: 1217, column: 6, scope: !3872)
!3902 = !DILocation(line: 1218, column: 10, scope: !3899)
!3903 = !DILocation(line: 1218, column: 3, scope: !3899)
!3904 = !DILocation(line: 1220, column: 21, scope: !3872)
!3905 = !DILocation(line: 1220, column: 7, scope: !3872)
!3906 = !DILocation(line: 1220, column: 5, scope: !3872)
!3907 = !DILocation(line: 1221, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1221, column: 6)
!3909 = !DILocation(line: 1221, column: 6, scope: !3872)
!3910 = !DILocation(line: 1222, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 1221, column: 11)
!3912 = !DILocation(line: 1223, column: 3, scope: !3911)
!3913 = !DILocation(line: 1226, column: 8, scope: !3872)
!3914 = !DILocation(line: 1226, column: 6, scope: !3872)
!3915 = !DILocation(line: 1227, column: 7, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1227, column: 6)
!3917 = !DILocation(line: 1227, column: 6, scope: !3872)
!3918 = !DILocation(line: 1228, column: 7, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1227, column: 12)
!3920 = !DILocation(line: 1229, column: 3, scope: !3919)
!3921 = !DILocation(line: 1232, column: 21, scope: !3872)
!3922 = !DILocation(line: 1232, column: 32, scope: !3872)
!3923 = !DILocation(line: 1232, column: 40, scope: !3872)
!3924 = !DILocation(line: 1232, column: 8, scope: !3872)
!3925 = !DILocation(line: 1232, column: 6, scope: !3872)
!3926 = !DILocation(line: 1233, column: 6, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1233, column: 6)
!3928 = !DILocation(line: 1233, column: 10, scope: !3927)
!3929 = !DILocation(line: 1233, column: 6, scope: !3872)
!3930 = !DILocation(line: 1234, column: 3, scope: !3927)
!3931 = !DILocation(line: 1236, column: 21, scope: !3872)
!3932 = !DILocation(line: 1236, column: 2, scope: !3872)
!3933 = !DILocation(line: 1236, column: 7, scope: !3872)
!3934 = !DILocation(line: 1236, column: 12, scope: !3872)
!3935 = !DILocation(line: 1236, column: 19, scope: !3872)
!3936 = !DILocation(line: 1237, column: 16, scope: !3872)
!3937 = !DILocation(line: 1237, column: 2, scope: !3872)
!3938 = !DILocation(line: 1237, column: 7, scope: !3872)
!3939 = !DILocation(line: 1237, column: 14, scope: !3872)
!3940 = !DILocation(line: 1238, column: 2, scope: !3872)
!3941 = !DILocation(line: 1238, column: 7, scope: !3872)
!3942 = !DILocation(line: 1238, column: 15, scope: !3872)
!3943 = !DILocation(line: 1240, column: 24, scope: !3872)
!3944 = !DILocation(line: 1240, column: 8, scope: !3872)
!3945 = !DILocation(line: 1240, column: 6, scope: !3872)
!3946 = !DILocation(line: 1241, column: 6, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1241, column: 6)
!3948 = !DILocation(line: 1241, column: 10, scope: !3947)
!3949 = !DILocation(line: 1241, column: 6, scope: !3872)
!3950 = !DILocation(line: 1242, column: 3, scope: !3947)
!3951 = !DILocation(line: 1244, column: 17, scope: !3872)
!3952 = !DILocation(line: 1244, column: 2, scope: !3872)
!3953 = !DILocation(line: 1244, column: 6, scope: !3872)
!3954 = !DILocation(line: 1244, column: 15, scope: !3872)
!3955 = !DILocation(line: 1245, column: 13, scope: !3872)
!3956 = !DILocation(line: 1245, column: 2, scope: !3872)
!3957 = !DILocation(line: 1246, column: 2, scope: !3872)
!3958 = !DILocation(line: 1248, column: 1, scope: !3872)
!3959 = !DILocation(line: 1249, column: 13, scope: !3872)
!3960 = !DILocation(line: 1249, column: 2, scope: !3872)
!3961 = !DILocation(line: 1250, column: 6, scope: !3872)
!3962 = !DILocation(line: 1250, column: 2, scope: !3872)
!3963 = !DILocation(line: 1251, column: 1, scope: !3872)
!3964 = !DILocation(line: 1252, column: 8, scope: !3872)
!3965 = !DILocation(line: 1252, column: 2, scope: !3872)
!3966 = !DILocation(line: 1253, column: 1, scope: !3872)
!3967 = !DILocation(line: 1254, column: 13, scope: !3872)
!3968 = !DILocation(line: 1254, column: 2, scope: !3872)
!3969 = !DILocation(line: 1255, column: 1, scope: !3872)
!3970 = !DILocation(line: 1256, column: 17, scope: !3872)
!3971 = !DILocation(line: 1256, column: 2, scope: !3872)
!3972 = !DILocation(line: 1257, column: 9, scope: !3872)
!3973 = !DILocation(line: 1257, column: 2, scope: !3872)
!3974 = !DILocation(line: 1258, column: 1, scope: !3872)
!3975 = distinct !DISubprogram(name: "subsys_virtual_register", scope: !3, file: !3, line: 1296, type: !3859, scopeLine: 1298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3976)
!3976 = !{!3977, !3978, !3979}
!3977 = !DILocalVariable(name: "subsys", arg: 1, scope: !3975, file: !3, line: 1296, type: !131)
!3978 = !DILocalVariable(name: "groups", arg: 2, scope: !3975, file: !3, line: 1297, type: !137)
!3979 = !DILocalVariable(name: "virtual_dir", scope: !3975, file: !3, line: 1299, type: !151)
!3980 = !DILocation(line: 1296, column: 46, scope: !3975)
!3981 = !DILocation(line: 1297, column: 39, scope: !3975)
!3982 = !DILocation(line: 1299, column: 2, scope: !3975)
!3983 = !DILocation(line: 1299, column: 18, scope: !3975)
!3984 = !DILocation(line: 1301, column: 16, scope: !3975)
!3985 = !DILocation(line: 1301, column: 14, scope: !3975)
!3986 = !DILocation(line: 1302, column: 7, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 1302, column: 6)
!3988 = !DILocation(line: 1302, column: 6, scope: !3975)
!3989 = !DILocation(line: 1303, column: 3, scope: !3987)
!3990 = !DILocation(line: 1305, column: 25, scope: !3975)
!3991 = !DILocation(line: 1305, column: 33, scope: !3975)
!3992 = !DILocation(line: 1305, column: 41, scope: !3975)
!3993 = !DILocation(line: 1305, column: 9, scope: !3975)
!3994 = !DILocation(line: 1305, column: 2, scope: !3975)
!3995 = !DILocation(line: 1306, column: 1, scope: !3975)
!3996 = !DISubprogram(name: "virtual_device_parent", scope: !815, file: !815, line: 148, type: !3997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!151, !807}
!3999 = distinct !DISubprogram(name: "driver_find", scope: !3, file: !3, line: 1321, type: !4000, scopeLine: 1322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!840, !127, !845}
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008}
!4003 = !DILocalVariable(name: "name", arg: 1, scope: !3999, file: !3, line: 1321, type: !127)
!4004 = !DILocalVariable(name: "bus", arg: 2, scope: !3999, file: !3, line: 1321, type: !845)
!4005 = !DILocalVariable(name: "sp", scope: !3999, file: !3, line: 1323, type: !1723)
!4006 = !DILocalVariable(name: "k", scope: !3999, file: !3, line: 1324, type: !151)
!4007 = !DILocalVariable(name: "priv", scope: !3999, file: !3, line: 1325, type: !1287)
!4008 = !DILocalVariable(name: "__mptr", scope: !4009, file: !3, line: 1335, type: !122)
!4009 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 1335, column: 9)
!4010 = !DILocation(line: 1321, column: 47, scope: !3999)
!4011 = !DILocation(line: 1321, column: 76, scope: !3999)
!4012 = !DILocation(line: 1323, column: 2, scope: !3999)
!4013 = !DILocation(line: 1323, column: 25, scope: !3999)
!4014 = !DILocation(line: 1323, column: 44, scope: !3999)
!4015 = !DILocation(line: 1323, column: 30, scope: !3999)
!4016 = !DILocation(line: 1324, column: 2, scope: !3999)
!4017 = !DILocation(line: 1324, column: 18, scope: !3999)
!4018 = !DILocation(line: 1325, column: 2, scope: !3999)
!4019 = !DILocation(line: 1325, column: 25, scope: !3999)
!4020 = !DILocation(line: 1327, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 1327, column: 6)
!4022 = !DILocation(line: 1327, column: 6, scope: !3999)
!4023 = !DILocation(line: 1328, column: 3, scope: !4021)
!4024 = !DILocation(line: 1330, column: 20, scope: !3999)
!4025 = !DILocation(line: 1330, column: 24, scope: !3999)
!4026 = !DILocation(line: 1330, column: 38, scope: !3999)
!4027 = !DILocation(line: 1330, column: 6, scope: !3999)
!4028 = !DILocation(line: 1330, column: 4, scope: !3999)
!4029 = !DILocation(line: 1331, column: 13, scope: !3999)
!4030 = !DILocation(line: 1331, column: 2, scope: !3999)
!4031 = !DILocation(line: 1332, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 1332, column: 6)
!4033 = !DILocation(line: 1332, column: 6, scope: !3999)
!4034 = !DILocation(line: 1333, column: 3, scope: !4032)
!4035 = !DILocation(line: 1335, column: 9, scope: !4009)
!4036 = !DILocation(line: 1335, column: 9, scope: !3999)
!4037 = !DILocation(line: 1335, column: 7, scope: !3999)
!4038 = !DILocation(line: 1338, column: 14, scope: !3999)
!4039 = !DILocation(line: 1338, column: 2, scope: !3999)
!4040 = !DILocation(line: 1339, column: 9, scope: !3999)
!4041 = !DILocation(line: 1339, column: 15, scope: !3999)
!4042 = !DILocation(line: 1339, column: 2, scope: !3999)
!4043 = !DILocation(line: 1340, column: 1, scope: !3999)
!4044 = !DISubprogram(name: "kset_find_obj", scope: !153, file: !153, line: 201, type: !4045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!151, !164, !127}
!4047 = distinct !DISubprogram(name: "bus_is_registered", scope: !3, file: !3, line: 1347, type: !4048, scopeLine: 1348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!301, !845}
!4050 = !{!4051, !4052, !4053}
!4051 = !DILocalVariable(name: "bus", arg: 1, scope: !4047, file: !3, line: 1347, type: !845)
!4052 = !DILocalVariable(name: "sp", scope: !4047, file: !3, line: 1349, type: !1723)
!4053 = !DILocalVariable(name: "is_initialized", scope: !4047, file: !3, line: 1350, type: !301)
!4054 = !DILocation(line: 1347, column: 47, scope: !4047)
!4055 = !DILocation(line: 1349, column: 2, scope: !4047)
!4056 = !DILocation(line: 1349, column: 25, scope: !4047)
!4057 = !DILocation(line: 1349, column: 44, scope: !4047)
!4058 = !DILocation(line: 1349, column: 30, scope: !4047)
!4059 = !DILocation(line: 1350, column: 2, scope: !4047)
!4060 = !DILocation(line: 1350, column: 7, scope: !4047)
!4061 = !DILocation(line: 1352, column: 6, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 1352, column: 6)
!4063 = !DILocation(line: 1352, column: 6, scope: !4047)
!4064 = !DILocation(line: 1353, column: 18, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1352, column: 10)
!4066 = !DILocation(line: 1354, column: 14, scope: !4065)
!4067 = !DILocation(line: 1354, column: 3, scope: !4065)
!4068 = !DILocation(line: 1355, column: 2, scope: !4065)
!4069 = !DILocation(line: 1356, column: 9, scope: !4047)
!4070 = !DILocation(line: 1357, column: 1, scope: !4047)
!4071 = !DILocation(line: 1356, column: 2, scope: !4047)
!4072 = distinct !DISubprogram(name: "bus_get_dev_root", scope: !3, file: !3, line: 1371, type: !4073, scopeLine: 1372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!807, !845}
!4075 = !{!4076, !4077, !4078}
!4076 = !DILocalVariable(name: "bus", arg: 1, scope: !4072, file: !3, line: 1371, type: !845)
!4077 = !DILocalVariable(name: "sp", scope: !4072, file: !3, line: 1373, type: !1723)
!4078 = !DILocalVariable(name: "dev_root", scope: !4072, file: !3, line: 1374, type: !807)
!4079 = !DILocation(line: 1371, column: 56, scope: !4072)
!4080 = !DILocation(line: 1373, column: 2, scope: !4072)
!4081 = !DILocation(line: 1373, column: 25, scope: !4072)
!4082 = !DILocation(line: 1373, column: 44, scope: !4072)
!4083 = !DILocation(line: 1373, column: 30, scope: !4072)
!4084 = !DILocation(line: 1374, column: 2, scope: !4072)
!4085 = !DILocation(line: 1374, column: 17, scope: !4072)
!4086 = !DILocation(line: 1376, column: 7, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 1376, column: 6)
!4088 = !DILocation(line: 1376, column: 6, scope: !4072)
!4089 = !DILocation(line: 1377, column: 3, scope: !4087)
!4090 = !DILocation(line: 1379, column: 24, scope: !4072)
!4091 = !DILocation(line: 1379, column: 28, scope: !4072)
!4092 = !DILocation(line: 1379, column: 13, scope: !4072)
!4093 = !DILocation(line: 1379, column: 11, scope: !4072)
!4094 = !DILocation(line: 1380, column: 13, scope: !4072)
!4095 = !DILocation(line: 1380, column: 2, scope: !4072)
!4096 = !DILocation(line: 1381, column: 9, scope: !4072)
!4097 = !DILocation(line: 1381, column: 2, scope: !4072)
!4098 = !DILocation(line: 1382, column: 1, scope: !4072)
!4099 = distinct !DISubprogram(name: "buses_init", scope: !3, file: !3, line: 1385, type: !981, scopeLine: 1386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4100 = !DILocation(line: 1387, column: 13, scope: !4099)
!4101 = !DILocation(line: 1387, column: 11, scope: !4099)
!4102 = !DILocation(line: 1388, column: 7, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 1388, column: 6)
!4104 = !DILocation(line: 1388, column: 6, scope: !4099)
!4105 = !DILocation(line: 1389, column: 3, scope: !4103)
!4106 = !DILocation(line: 1391, column: 53, scope: !4099)
!4107 = !DILocation(line: 1391, column: 67, scope: !4099)
!4108 = !DILocation(line: 1391, column: 16, scope: !4099)
!4109 = !DILocation(line: 1391, column: 14, scope: !4099)
!4110 = !DILocation(line: 1392, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 1392, column: 6)
!4112 = !DILocation(line: 1392, column: 6, scope: !4099)
!4113 = !DILocation(line: 1393, column: 3, scope: !4111)
!4114 = !DILocation(line: 1395, column: 2, scope: !4099)
!4115 = !DILocation(line: 1396, column: 1, scope: !4099)
!4116 = distinct !DISubprogram(name: "list_empty", scope: !3147, file: !3147, line: 371, type: !4117, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!46, !3593}
!4119 = !{!4120}
!4120 = !DILocalVariable(name: "head", arg: 1, scope: !4116, file: !3147, line: 371, type: !3593)
!4121 = !DILocation(line: 371, column: 54, scope: !4116)
!4122 = !DILocation(line: 373, column: 9, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4116, file: !3147, line: 373, column: 9)
!4124 = !DILocation(line: 373, column: 9, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4123, file: !3147, line: 373, column: 9)
!4126 = !DILocation(line: 373, column: 34, scope: !4116)
!4127 = !DILocation(line: 373, column: 31, scope: !4116)
!4128 = !DILocation(line: 373, column: 2, scope: !4116)
!4129 = distinct !DISubprogram(name: "subsys_get", scope: !815, file: !815, line: 63, type: !4130, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!1723, !1723}
!4132 = !{!4133}
!4133 = !DILocalVariable(name: "sp", arg: 1, scope: !4129, file: !815, line: 63, type: !1723)
!4134 = !DILocation(line: 63, column: 72, scope: !4129)
!4135 = !DILocation(line: 65, column: 6, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4129, file: !815, line: 65, column: 6)
!4137 = !DILocation(line: 65, column: 6, scope: !4129)
!4138 = !DILocation(line: 66, column: 13, scope: !4136)
!4139 = !DILocation(line: 66, column: 17, scope: !4136)
!4140 = !DILocation(line: 66, column: 3, scope: !4136)
!4141 = !DILocation(line: 67, column: 9, scope: !4129)
!4142 = !DILocation(line: 67, column: 2, scope: !4129)
!4143 = distinct !DISubprogram(name: "kset_get", scope: !153, file: !153, line: 186, type: !4144, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4146)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!164, !164}
!4146 = !{!4147}
!4147 = !DILocalVariable(name: "k", arg: 1, scope: !4143, file: !153, line: 186, type: !164)
!4148 = !DILocation(line: 186, column: 50, scope: !4143)
!4149 = !DILocation(line: 188, column: 9, scope: !4143)
!4150 = !DILocation(line: 188, column: 34, scope: !4143)
!4151 = !DILocation(line: 188, column: 37, scope: !4143)
!4152 = !DILocation(line: 188, column: 21, scope: !4143)
!4153 = !DILocation(line: 188, column: 13, scope: !4143)
!4154 = !DILocation(line: 188, column: 2, scope: !4143)
!4155 = distinct !DISubprogram(name: "to_kset", scope: !153, file: !153, line: 181, type: !4156, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4158)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!164, !151}
!4158 = !{!4159, !4160}
!4159 = !DILocalVariable(name: "kobj", arg: 1, scope: !4155, file: !153, line: 181, type: !151)
!4160 = !DILocalVariable(name: "__mptr", scope: !4161, file: !153, line: 183, type: !122)
!4161 = distinct !DILexicalBlock(scope: !4155, file: !153, line: 183, column: 16)
!4162 = !DILocation(line: 181, column: 52, scope: !4155)
!4163 = !DILocation(line: 183, column: 9, scope: !4155)
!4164 = !DILocation(line: 183, column: 16, scope: !4161)
!4165 = !DILocation(line: 183, column: 16, scope: !4155)
!4166 = !DILocation(line: 183, column: 2, scope: !4155)
!4167 = !DISubprogram(name: "kobject_get", scope: !153, file: !153, line: 108, type: !4168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!151, !151}
!4170 = !DISubprogram(name: "sysfs_create_file_ns", scope: !141, file: !141, line: 273, type: !4171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!46, !151, !2050, !311}
!4173 = distinct !DISubprogram(name: "kset_put", scope: !153, file: !153, line: 191, type: !3259, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4174)
!4174 = !{!4175}
!4175 = !DILocalVariable(name: "k", arg: 1, scope: !4173, file: !153, line: 191, type: !164)
!4176 = !DILocation(line: 191, column: 42, scope: !4173)
!4177 = !DILocation(line: 193, column: 15, scope: !4173)
!4178 = !DILocation(line: 193, column: 18, scope: !4173)
!4179 = !DILocation(line: 193, column: 2, scope: !4173)
!4180 = !DILocation(line: 194, column: 1, scope: !4173)
!4181 = !DISubprogram(name: "sysfs_remove_file_ns", scope: !141, file: !141, line: 283, type: !4182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !151, !2050, !311}
!4184 = !DISubprogram(name: "klist_next", scope: !819, file: !819, line: 65, type: !4185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!827, !2178}
!4187 = distinct !DISubprogram(name: "kobject_name", scope: !153, file: !153, line: 87, type: !226, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4188)
!4188 = !{!4189}
!4189 = !DILocalVariable(name: "kobj", arg: 1, scope: !4187, file: !153, line: 87, type: !221)
!4190 = !DILocation(line: 87, column: 62, scope: !4187)
!4191 = !DILocation(line: 89, column: 9, scope: !4187)
!4192 = !DILocation(line: 89, column: 15, scope: !4187)
!4193 = !DILocation(line: 89, column: 2, scope: !4187)
!4194 = distinct !DISubprogram(name: "kmalloc", scope: !112, file: !112, line: 591, type: !2786, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4195)
!4195 = !{!4196, !4197, !4198}
!4196 = !DILocalVariable(name: "size", arg: 1, scope: !4194, file: !112, line: 591, type: !283)
!4197 = !DILocalVariable(name: "flags", arg: 2, scope: !4194, file: !112, line: 591, type: !1722)
!4198 = !DILocalVariable(name: "index", scope: !4199, file: !112, line: 594, type: !7)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !112, line: 593, column: 42)
!4200 = distinct !DILexicalBlock(scope: !4194, file: !112, line: 593, column: 6)
!4201 = !DILocation(line: 591, column: 61, scope: !4194)
!4202 = !DILocation(line: 591, column: 73, scope: !4194)
!4203 = !DILocation(line: 593, column: 27, scope: !4200)
!4204 = !DILocation(line: 593, column: 6, scope: !4200)
!4205 = !DILocation(line: 593, column: 33, scope: !4200)
!4206 = !DILocation(line: 593, column: 36, scope: !4200)
!4207 = !DILocation(line: 593, column: 6, scope: !4194)
!4208 = !DILocation(line: 594, column: 3, scope: !4199)
!4209 = !DILocation(line: 594, column: 16, scope: !4199)
!4210 = !DILocation(line: 596, column: 7, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4199, file: !112, line: 596, column: 7)
!4212 = !DILocation(line: 596, column: 12, scope: !4211)
!4213 = !DILocation(line: 596, column: 7, scope: !4199)
!4214 = !DILocation(line: 597, column: 25, scope: !4211)
!4215 = !DILocation(line: 597, column: 31, scope: !4211)
!4216 = !DILocation(line: 597, column: 11, scope: !4211)
!4217 = !DILocation(line: 597, column: 4, scope: !4211)
!4218 = !DILocation(line: 599, column: 11, scope: !4199)
!4219 = !DILocation(line: 599, column: 9, scope: !4199)
!4220 = !DILocation(line: 601, column: 33, scope: !4199)
!4221 = !DILocation(line: 601, column: 40, scope: !4199)
!4222 = !DILocation(line: 601, column: 20, scope: !4199)
!4223 = !DILocation(line: 601, column: 5, scope: !4199)
!4224 = !DILocation(line: 601, column: 51, scope: !4199)
!4225 = !DILocation(line: 602, column: 5, scope: !4199)
!4226 = !DILocation(line: 602, column: 12, scope: !4199)
!4227 = !DILocation(line: 600, column: 10, scope: !4199)
!4228 = !DILocation(line: 600, column: 3, scope: !4199)
!4229 = !DILocation(line: 603, column: 2, scope: !4200)
!4230 = !DILocation(line: 604, column: 19, scope: !4194)
!4231 = !DILocation(line: 604, column: 25, scope: !4194)
!4232 = !DILocation(line: 604, column: 9, scope: !4194)
!4233 = !DILocation(line: 604, column: 2, scope: !4194)
!4234 = !DILocation(line: 605, column: 1, scope: !4194)
!4235 = !DISubprogram(name: "kmalloc_large", scope: !112, file: !112, line: 531, type: !2786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4236 = distinct !DISubprogram(name: "__kmalloc_index", scope: !112, file: !112, line: 444, type: !4237, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!7, !283, !301}
!4239 = !{!4240, !4241}
!4240 = !DILocalVariable(name: "size", arg: 1, scope: !4236, file: !112, line: 444, type: !283)
!4241 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4236, file: !112, line: 445, type: !301)
!4242 = !DILocation(line: 444, column: 60, scope: !4236)
!4243 = !DILocation(line: 445, column: 16, scope: !4236)
!4244 = !DILocation(line: 447, column: 7, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 447, column: 6)
!4246 = !DILocation(line: 447, column: 6, scope: !4236)
!4247 = !DILocation(line: 448, column: 3, scope: !4245)
!4248 = !DILocation(line: 450, column: 6, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 450, column: 6)
!4250 = !DILocation(line: 450, column: 11, scope: !4249)
!4251 = !DILocation(line: 450, column: 6, scope: !4236)
!4252 = !DILocation(line: 451, column: 3, scope: !4249)
!4253 = !DILocation(line: 453, column: 32, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 453, column: 6)
!4255 = !DILocation(line: 453, column: 37, scope: !4254)
!4256 = !DILocation(line: 453, column: 42, scope: !4254)
!4257 = !DILocation(line: 453, column: 45, scope: !4254)
!4258 = !DILocation(line: 453, column: 50, scope: !4254)
!4259 = !DILocation(line: 453, column: 6, scope: !4236)
!4260 = !DILocation(line: 454, column: 3, scope: !4254)
!4261 = !DILocation(line: 455, column: 32, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 455, column: 6)
!4263 = !DILocation(line: 455, column: 37, scope: !4262)
!4264 = !DILocation(line: 455, column: 43, scope: !4262)
!4265 = !DILocation(line: 455, column: 46, scope: !4262)
!4266 = !DILocation(line: 455, column: 51, scope: !4262)
!4267 = !DILocation(line: 455, column: 6, scope: !4236)
!4268 = !DILocation(line: 456, column: 3, scope: !4262)
!4269 = !DILocation(line: 457, column: 6, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 457, column: 6)
!4271 = !DILocation(line: 457, column: 11, scope: !4270)
!4272 = !DILocation(line: 457, column: 6, scope: !4236)
!4273 = !DILocation(line: 457, column: 26, scope: !4270)
!4274 = !DILocation(line: 458, column: 6, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 458, column: 6)
!4276 = !DILocation(line: 458, column: 11, scope: !4275)
!4277 = !DILocation(line: 458, column: 6, scope: !4236)
!4278 = !DILocation(line: 458, column: 26, scope: !4275)
!4279 = !DILocation(line: 459, column: 6, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 459, column: 6)
!4281 = !DILocation(line: 459, column: 11, scope: !4280)
!4282 = !DILocation(line: 459, column: 6, scope: !4236)
!4283 = !DILocation(line: 459, column: 26, scope: !4280)
!4284 = !DILocation(line: 460, column: 6, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 460, column: 6)
!4286 = !DILocation(line: 460, column: 11, scope: !4285)
!4287 = !DILocation(line: 460, column: 6, scope: !4236)
!4288 = !DILocation(line: 460, column: 26, scope: !4285)
!4289 = !DILocation(line: 461, column: 6, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 461, column: 6)
!4291 = !DILocation(line: 461, column: 11, scope: !4290)
!4292 = !DILocation(line: 461, column: 6, scope: !4236)
!4293 = !DILocation(line: 461, column: 26, scope: !4290)
!4294 = !DILocation(line: 462, column: 6, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 462, column: 6)
!4296 = !DILocation(line: 462, column: 11, scope: !4295)
!4297 = !DILocation(line: 462, column: 6, scope: !4236)
!4298 = !DILocation(line: 462, column: 26, scope: !4295)
!4299 = !DILocation(line: 463, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 463, column: 6)
!4301 = !DILocation(line: 463, column: 11, scope: !4300)
!4302 = !DILocation(line: 463, column: 6, scope: !4236)
!4303 = !DILocation(line: 463, column: 26, scope: !4300)
!4304 = !DILocation(line: 464, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 464, column: 6)
!4306 = !DILocation(line: 464, column: 11, scope: !4305)
!4307 = !DILocation(line: 464, column: 6, scope: !4236)
!4308 = !DILocation(line: 464, column: 26, scope: !4305)
!4309 = !DILocation(line: 465, column: 6, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 465, column: 6)
!4311 = !DILocation(line: 465, column: 11, scope: !4310)
!4312 = !DILocation(line: 465, column: 6, scope: !4236)
!4313 = !DILocation(line: 465, column: 26, scope: !4310)
!4314 = !DILocation(line: 466, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 466, column: 6)
!4316 = !DILocation(line: 466, column: 11, scope: !4315)
!4317 = !DILocation(line: 466, column: 6, scope: !4236)
!4318 = !DILocation(line: 466, column: 26, scope: !4315)
!4319 = !DILocation(line: 467, column: 6, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 467, column: 6)
!4321 = !DILocation(line: 467, column: 11, scope: !4320)
!4322 = !DILocation(line: 467, column: 6, scope: !4236)
!4323 = !DILocation(line: 467, column: 26, scope: !4320)
!4324 = !DILocation(line: 468, column: 6, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 468, column: 6)
!4326 = !DILocation(line: 468, column: 11, scope: !4325)
!4327 = !DILocation(line: 468, column: 6, scope: !4236)
!4328 = !DILocation(line: 468, column: 26, scope: !4325)
!4329 = !DILocation(line: 469, column: 6, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 469, column: 6)
!4331 = !DILocation(line: 469, column: 11, scope: !4330)
!4332 = !DILocation(line: 469, column: 6, scope: !4236)
!4333 = !DILocation(line: 469, column: 26, scope: !4330)
!4334 = !DILocation(line: 470, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 470, column: 6)
!4336 = !DILocation(line: 470, column: 11, scope: !4335)
!4337 = !DILocation(line: 470, column: 6, scope: !4236)
!4338 = !DILocation(line: 470, column: 26, scope: !4335)
!4339 = !DILocation(line: 471, column: 6, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 471, column: 6)
!4341 = !DILocation(line: 471, column: 11, scope: !4340)
!4342 = !DILocation(line: 471, column: 6, scope: !4236)
!4343 = !DILocation(line: 471, column: 26, scope: !4340)
!4344 = !DILocation(line: 472, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 472, column: 6)
!4346 = !DILocation(line: 472, column: 11, scope: !4345)
!4347 = !DILocation(line: 472, column: 6, scope: !4236)
!4348 = !DILocation(line: 472, column: 26, scope: !4345)
!4349 = !DILocation(line: 473, column: 6, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 473, column: 6)
!4351 = !DILocation(line: 473, column: 11, scope: !4350)
!4352 = !DILocation(line: 473, column: 6, scope: !4236)
!4353 = !DILocation(line: 473, column: 26, scope: !4350)
!4354 = !DILocation(line: 474, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 474, column: 6)
!4356 = !DILocation(line: 474, column: 11, scope: !4355)
!4357 = !DILocation(line: 474, column: 6, scope: !4236)
!4358 = !DILocation(line: 474, column: 27, scope: !4355)
!4359 = !DILocation(line: 475, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 475, column: 6)
!4361 = !DILocation(line: 475, column: 11, scope: !4360)
!4362 = !DILocation(line: 475, column: 6, scope: !4236)
!4363 = !DILocation(line: 475, column: 32, scope: !4360)
!4364 = !DILocation(line: 477, column: 50, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4236, file: !112, line: 477, column: 6)
!4366 = !DILocation(line: 477, column: 6, scope: !4236)
!4367 = !DILocation(line: 478, column: 3, scope: !4365)
!4368 = !DILocation(line: 478, column: 3, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !112, line: 478, column: 3)
!4370 = distinct !DILexicalBlock(scope: !4365, file: !112, line: 478, column: 3)
!4371 = !{i32 -2142286146}
!4372 = !DILocation(line: 478, column: 3, scope: !4370)
!4373 = !DILocation(line: 480, column: 3, scope: !4365)
!4374 = !DILocation(line: 480, column: 3, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4365, file: !112, line: 480, column: 3)
!4376 = !DILocation(line: 480, column: 3, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4375, file: !112, line: 480, column: 3)
!4378 = !DILocation(line: 480, column: 3, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !112, line: 480, column: 3)
!4380 = !{i64 2152681353, i64 2152681382, i64 2152681428, i64 2152681486, i64 2152681540, i64 2152681594, i64 2152681649, i64 2152681680}
!4381 = !DILocation(line: 483, column: 2, scope: !4236)
!4382 = !DILocation(line: 484, column: 1, scope: !4236)
!4383 = !DISubprogram(name: "kmalloc_trace", scope: !112, file: !112, line: 525, type: !4384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!122, !4386, !1722, !283}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4388, line: 11, flags: DIFlagFwdDecl)
!4388 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4389 = distinct !DISubprogram(name: "kmalloc_type", scope: !112, file: !112, line: 401, type: !4390, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!111, !1722, !286}
!4392 = !{!4393, !4394}
!4393 = !DILocalVariable(name: "flags", arg: 1, scope: !4389, file: !112, line: 401, type: !1722)
!4394 = !DILocalVariable(name: "caller", arg: 2, scope: !4389, file: !112, line: 401, type: !286)
!4395 = !DILocation(line: 401, column: 67, scope: !4389)
!4396 = !DILocation(line: 401, column: 88, scope: !4389)
!4397 = !DILocation(line: 407, column: 6, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4389, file: !112, line: 407, column: 6)
!4399 = !DILocation(line: 407, column: 6, scope: !4389)
!4400 = !DILocation(line: 413, column: 3, scope: !4398)
!4401 = !DILocation(line: 423, column: 38, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4389, file: !112, line: 423, column: 6)
!4403 = !DILocation(line: 423, column: 44, scope: !4402)
!4404 = !DILocation(line: 423, column: 6, scope: !4389)
!4405 = !DILocation(line: 424, column: 3, scope: !4402)
!4406 = !DILocation(line: 426, column: 3, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4389, file: !112, line: 425, column: 6)
!4408 = !DILocation(line: 429, column: 1, scope: !4389)
!4409 = !DISubprogram(name: "__kmalloc", scope: !112, file: !112, line: 488, type: !2786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4410 = !DISubprogram(name: "__compiletime_assert_204", scope: !112, file: !112, line: 478, type: !1222, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4411 = distinct !DISubprogram(name: "driver_release", scope: !3, file: !3, line: 134, type: !258, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4412)
!4412 = !{!4413, !4414, !4415}
!4413 = !DILocalVariable(name: "kobj", arg: 1, scope: !4411, file: !3, line: 134, type: !151)
!4414 = !DILocalVariable(name: "drv_priv", scope: !4411, file: !3, line: 136, type: !1287)
!4415 = !DILocalVariable(name: "__mptr", scope: !4416, file: !3, line: 136, type: !122)
!4416 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 136, column: 36)
!4417 = !DILocation(line: 134, column: 44, scope: !4411)
!4418 = !DILocation(line: 136, column: 2, scope: !4411)
!4419 = !DILocation(line: 136, column: 25, scope: !4411)
!4420 = !DILocation(line: 136, column: 36, scope: !4416)
!4421 = !DILocation(line: 136, column: 36, scope: !4411)
!4422 = !DILocation(line: 138, column: 2, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 138, column: 2)
!4424 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 138, column: 2)
!4425 = !DILocation(line: 138, column: 2, scope: !4424)
!4426 = !DILocation(line: 139, column: 8, scope: !4411)
!4427 = !DILocation(line: 139, column: 2, scope: !4411)
!4428 = !DILocation(line: 140, column: 1, scope: !4411)
!4429 = distinct !DISubprogram(name: "drv_attr_show", scope: !3, file: !3, line: 105, type: !267, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4430)
!4430 = !{!4431, !4432, !4433, !4434, !4435, !4437, !4438, !4440}
!4431 = !DILocalVariable(name: "kobj", arg: 1, scope: !4429, file: !3, line: 105, type: !151)
!4432 = !DILocalVariable(name: "attr", arg: 2, scope: !4429, file: !3, line: 105, type: !274)
!4433 = !DILocalVariable(name: "buf", arg: 3, scope: !4429, file: !3, line: 106, type: !238)
!4434 = !DILocalVariable(name: "drv_attr", scope: !4429, file: !3, line: 108, type: !1744)
!4435 = !DILocalVariable(name: "__mptr", scope: !4436, file: !3, line: 108, type: !122)
!4436 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 108, column: 38)
!4437 = !DILocalVariable(name: "drv_priv", scope: !4429, file: !3, line: 109, type: !1287)
!4438 = !DILocalVariable(name: "__mptr", scope: !4439, file: !3, line: 109, type: !122)
!4439 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 109, column: 36)
!4440 = !DILocalVariable(name: "ret", scope: !4429, file: !3, line: 110, type: !269)
!4441 = !DILocation(line: 105, column: 46, scope: !4429)
!4442 = !DILocation(line: 105, column: 70, scope: !4429)
!4443 = !DILocation(line: 106, column: 15, scope: !4429)
!4444 = !DILocation(line: 108, column: 2, scope: !4429)
!4445 = !DILocation(line: 108, column: 27, scope: !4429)
!4446 = !DILocation(line: 108, column: 38, scope: !4436)
!4447 = !DILocation(line: 108, column: 38, scope: !4429)
!4448 = !DILocation(line: 109, column: 2, scope: !4429)
!4449 = !DILocation(line: 109, column: 25, scope: !4429)
!4450 = !DILocation(line: 109, column: 36, scope: !4439)
!4451 = !DILocation(line: 109, column: 36, scope: !4429)
!4452 = !DILocation(line: 110, column: 2, scope: !4429)
!4453 = !DILocation(line: 110, column: 10, scope: !4429)
!4454 = !DILocation(line: 112, column: 6, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 112, column: 6)
!4456 = !DILocation(line: 112, column: 16, scope: !4455)
!4457 = !DILocation(line: 112, column: 6, scope: !4429)
!4458 = !DILocation(line: 113, column: 9, scope: !4455)
!4459 = !DILocation(line: 113, column: 19, scope: !4455)
!4460 = !DILocation(line: 113, column: 24, scope: !4455)
!4461 = !DILocation(line: 113, column: 34, scope: !4455)
!4462 = !DILocation(line: 113, column: 42, scope: !4455)
!4463 = !DILocation(line: 113, column: 7, scope: !4455)
!4464 = !DILocation(line: 113, column: 3, scope: !4455)
!4465 = !DILocation(line: 114, column: 9, scope: !4429)
!4466 = !DILocation(line: 115, column: 1, scope: !4429)
!4467 = !DILocation(line: 114, column: 2, scope: !4429)
!4468 = distinct !DISubprogram(name: "drv_attr_store", scope: !3, file: !3, line: 117, type: !281, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4477, !4478, !4480}
!4470 = !DILocalVariable(name: "kobj", arg: 1, scope: !4468, file: !3, line: 117, type: !151)
!4471 = !DILocalVariable(name: "attr", arg: 2, scope: !4468, file: !3, line: 117, type: !274)
!4472 = !DILocalVariable(name: "buf", arg: 3, scope: !4468, file: !3, line: 118, type: !127)
!4473 = !DILocalVariable(name: "count", arg: 4, scope: !4468, file: !3, line: 118, type: !283)
!4474 = !DILocalVariable(name: "drv_attr", scope: !4468, file: !3, line: 120, type: !1744)
!4475 = !DILocalVariable(name: "__mptr", scope: !4476, file: !3, line: 120, type: !122)
!4476 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 120, column: 38)
!4477 = !DILocalVariable(name: "drv_priv", scope: !4468, file: !3, line: 121, type: !1287)
!4478 = !DILocalVariable(name: "__mptr", scope: !4479, file: !3, line: 121, type: !122)
!4479 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 121, column: 36)
!4480 = !DILocalVariable(name: "ret", scope: !4468, file: !3, line: 122, type: !269)
!4481 = !DILocation(line: 117, column: 47, scope: !4468)
!4482 = !DILocation(line: 117, column: 71, scope: !4468)
!4483 = !DILocation(line: 118, column: 22, scope: !4468)
!4484 = !DILocation(line: 118, column: 34, scope: !4468)
!4485 = !DILocation(line: 120, column: 2, scope: !4468)
!4486 = !DILocation(line: 120, column: 27, scope: !4468)
!4487 = !DILocation(line: 120, column: 38, scope: !4476)
!4488 = !DILocation(line: 120, column: 38, scope: !4468)
!4489 = !DILocation(line: 121, column: 2, scope: !4468)
!4490 = !DILocation(line: 121, column: 25, scope: !4468)
!4491 = !DILocation(line: 121, column: 36, scope: !4479)
!4492 = !DILocation(line: 121, column: 36, scope: !4468)
!4493 = !DILocation(line: 122, column: 2, scope: !4468)
!4494 = !DILocation(line: 122, column: 10, scope: !4468)
!4495 = !DILocation(line: 124, column: 6, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 124, column: 6)
!4497 = !DILocation(line: 124, column: 16, scope: !4496)
!4498 = !DILocation(line: 124, column: 6, scope: !4468)
!4499 = !DILocation(line: 125, column: 9, scope: !4496)
!4500 = !DILocation(line: 125, column: 19, scope: !4496)
!4501 = !DILocation(line: 125, column: 25, scope: !4496)
!4502 = !DILocation(line: 125, column: 35, scope: !4496)
!4503 = !DILocation(line: 125, column: 43, scope: !4496)
!4504 = !DILocation(line: 125, column: 48, scope: !4496)
!4505 = !DILocation(line: 125, column: 7, scope: !4496)
!4506 = !DILocation(line: 125, column: 3, scope: !4496)
!4507 = !DILocation(line: 126, column: 9, scope: !4468)
!4508 = !DILocation(line: 127, column: 1, scope: !4468)
!4509 = !DILocation(line: 126, column: 2, scope: !4468)
!4510 = distinct !DISubprogram(name: "uevent_store", scope: !3, file: !3, line: 630, type: !1754, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513, !4514, !4515}
!4512 = !DILocalVariable(name: "drv", arg: 1, scope: !4510, file: !3, line: 630, type: !840)
!4513 = !DILocalVariable(name: "buf", arg: 2, scope: !4510, file: !3, line: 630, type: !127)
!4514 = !DILocalVariable(name: "count", arg: 3, scope: !4510, file: !3, line: 631, type: !283)
!4515 = !DILocalVariable(name: "rc", scope: !4510, file: !3, line: 633, type: !46)
!4516 = !DILocation(line: 630, column: 51, scope: !4510)
!4517 = !DILocation(line: 630, column: 68, scope: !4510)
!4518 = !DILocation(line: 631, column: 15, scope: !4510)
!4519 = !DILocation(line: 633, column: 2, scope: !4510)
!4520 = !DILocation(line: 633, column: 6, scope: !4510)
!4521 = !DILocation(line: 635, column: 29, scope: !4510)
!4522 = !DILocation(line: 635, column: 34, scope: !4510)
!4523 = !DILocation(line: 635, column: 37, scope: !4510)
!4524 = !DILocation(line: 635, column: 43, scope: !4510)
!4525 = !DILocation(line: 635, column: 48, scope: !4510)
!4526 = !DILocation(line: 635, column: 7, scope: !4510)
!4527 = !DILocation(line: 635, column: 5, scope: !4510)
!4528 = !DILocation(line: 636, column: 9, scope: !4510)
!4529 = !DILocation(line: 636, column: 14, scope: !4510)
!4530 = !DILocation(line: 636, column: 19, scope: !4510)
!4531 = !DILocation(line: 637, column: 1, scope: !4510)
!4532 = !DILocation(line: 636, column: 2, scope: !4510)
!4533 = !DISubprogram(name: "kobject_synth_uevent", scope: !153, file: !153, line: 217, type: !4534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!46, !151, !127, !283}
!4536 = distinct !DISubprogram(name: "unbind_store", scope: !3, file: !3, line: 235, type: !1754, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4537)
!4537 = !{!4538, !4539, !4540, !4541, !4542, !4543}
!4538 = !DILocalVariable(name: "drv", arg: 1, scope: !4536, file: !3, line: 235, type: !840)
!4539 = !DILocalVariable(name: "buf", arg: 2, scope: !4536, file: !3, line: 235, type: !127)
!4540 = !DILocalVariable(name: "count", arg: 3, scope: !4536, file: !3, line: 236, type: !283)
!4541 = !DILocalVariable(name: "bus", scope: !4536, file: !3, line: 238, type: !845)
!4542 = !DILocalVariable(name: "dev", scope: !4536, file: !3, line: 239, type: !807)
!4543 = !DILocalVariable(name: "err", scope: !4536, file: !3, line: 240, type: !46)
!4544 = !DILocation(line: 235, column: 51, scope: !4536)
!4545 = !DILocation(line: 235, column: 68, scope: !4536)
!4546 = !DILocation(line: 236, column: 15, scope: !4536)
!4547 = !DILocation(line: 238, column: 2, scope: !4536)
!4548 = !DILocation(line: 238, column: 25, scope: !4536)
!4549 = !DILocation(line: 238, column: 39, scope: !4536)
!4550 = !DILocation(line: 238, column: 44, scope: !4536)
!4551 = !DILocation(line: 238, column: 31, scope: !4536)
!4552 = !DILocation(line: 239, column: 2, scope: !4536)
!4553 = !DILocation(line: 239, column: 17, scope: !4536)
!4554 = !DILocation(line: 240, column: 2, scope: !4536)
!4555 = !DILocation(line: 240, column: 6, scope: !4536)
!4556 = !DILocation(line: 242, column: 32, scope: !4536)
!4557 = !DILocation(line: 242, column: 43, scope: !4536)
!4558 = !DILocation(line: 242, column: 8, scope: !4536)
!4559 = !DILocation(line: 242, column: 6, scope: !4536)
!4560 = !DILocation(line: 243, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 243, column: 6)
!4562 = !DILocation(line: 243, column: 10, scope: !4561)
!4563 = !DILocation(line: 243, column: 13, scope: !4561)
!4564 = !DILocation(line: 243, column: 18, scope: !4561)
!4565 = !DILocation(line: 243, column: 28, scope: !4561)
!4566 = !DILocation(line: 243, column: 25, scope: !4561)
!4567 = !DILocation(line: 243, column: 6, scope: !4536)
!4568 = !DILocation(line: 244, column: 24, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 243, column: 33)
!4570 = !DILocation(line: 244, column: 3, scope: !4569)
!4571 = !DILocation(line: 245, column: 9, scope: !4569)
!4572 = !DILocation(line: 245, column: 7, scope: !4569)
!4573 = !DILocation(line: 246, column: 2, scope: !4569)
!4574 = !DILocation(line: 247, column: 13, scope: !4536)
!4575 = !DILocation(line: 247, column: 2, scope: !4536)
!4576 = !DILocation(line: 248, column: 10, scope: !4536)
!4577 = !DILocation(line: 248, column: 2, scope: !4536)
!4578 = !DILocation(line: 249, column: 9, scope: !4536)
!4579 = !DILocation(line: 250, column: 1, scope: !4536)
!4580 = !DILocation(line: 249, column: 2, scope: !4536)
!4581 = distinct !DISubprogram(name: "bus_get", scope: !3, file: !3, line: 87, type: !4582, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!845, !845}
!4584 = !{!4585, !4586}
!4585 = !DILocalVariable(name: "bus", arg: 1, scope: !4581, file: !3, line: 87, type: !845)
!4586 = !DILocalVariable(name: "sp", scope: !4581, file: !3, line: 89, type: !1723)
!4587 = !DILocation(line: 87, column: 62, scope: !4581)
!4588 = !DILocation(line: 89, column: 2, scope: !4581)
!4589 = !DILocation(line: 89, column: 25, scope: !4581)
!4590 = !DILocation(line: 89, column: 44, scope: !4581)
!4591 = !DILocation(line: 89, column: 30, scope: !4581)
!4592 = !DILocation(line: 91, column: 6, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 91, column: 6)
!4594 = !DILocation(line: 91, column: 6, scope: !4581)
!4595 = !DILocation(line: 92, column: 10, scope: !4593)
!4596 = !DILocation(line: 92, column: 3, scope: !4593)
!4597 = !DILocation(line: 93, column: 2, scope: !4581)
!4598 = !DILocation(line: 94, column: 1, scope: !4581)
!4599 = distinct !DISubprogram(name: "bus_find_device_by_name", scope: !96, file: !96, line: 156, type: !4600, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4602)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!807, !845, !807, !127}
!4602 = !{!4603, !4604, !4605}
!4603 = !DILocalVariable(name: "bus", arg: 1, scope: !4599, file: !96, line: 156, type: !845)
!4604 = !DILocalVariable(name: "start", arg: 2, scope: !4599, file: !96, line: 157, type: !807)
!4605 = !DILocalVariable(name: "name", arg: 3, scope: !4599, file: !96, line: 158, type: !127)
!4606 = !DILocation(line: 156, column: 77, scope: !4599)
!4607 = !DILocation(line: 157, column: 27, scope: !4599)
!4608 = !DILocation(line: 158, column: 24, scope: !4599)
!4609 = !DILocation(line: 160, column: 25, scope: !4599)
!4610 = !DILocation(line: 160, column: 30, scope: !4599)
!4611 = !DILocation(line: 160, column: 37, scope: !4599)
!4612 = !DILocation(line: 160, column: 9, scope: !4599)
!4613 = !DILocation(line: 160, column: 2, scope: !4599)
!4614 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4615 = distinct !DISubprogram(name: "bus_put", scope: !3, file: !3, line: 96, type: !3248, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4616)
!4616 = !{!4617, !4618}
!4617 = !DILocalVariable(name: "bus", arg: 1, scope: !4615, file: !3, line: 96, type: !845)
!4618 = !DILocalVariable(name: "sp", scope: !4615, file: !3, line: 98, type: !1723)
!4619 = !DILocation(line: 96, column: 44, scope: !4615)
!4620 = !DILocation(line: 98, column: 2, scope: !4615)
!4621 = !DILocation(line: 98, column: 25, scope: !4615)
!4622 = !DILocation(line: 98, column: 44, scope: !4615)
!4623 = !DILocation(line: 98, column: 30, scope: !4615)
!4624 = !DILocation(line: 101, column: 13, scope: !4615)
!4625 = !DILocation(line: 101, column: 2, scope: !4615)
!4626 = !DILocation(line: 102, column: 13, scope: !4615)
!4627 = !DILocation(line: 102, column: 2, scope: !4615)
!4628 = !DILocation(line: 103, column: 1, scope: !4615)
!4629 = distinct !DISubprogram(name: "bind_store", scope: !3, file: !3, line: 258, type: !1754, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4630)
!4630 = !{!4631, !4632, !4633, !4634, !4635, !4636}
!4631 = !DILocalVariable(name: "drv", arg: 1, scope: !4629, file: !3, line: 258, type: !840)
!4632 = !DILocalVariable(name: "buf", arg: 2, scope: !4629, file: !3, line: 258, type: !127)
!4633 = !DILocalVariable(name: "count", arg: 3, scope: !4629, file: !3, line: 259, type: !283)
!4634 = !DILocalVariable(name: "bus", scope: !4629, file: !3, line: 261, type: !845)
!4635 = !DILocalVariable(name: "dev", scope: !4629, file: !3, line: 262, type: !807)
!4636 = !DILocalVariable(name: "err", scope: !4629, file: !3, line: 263, type: !46)
!4637 = !DILocation(line: 258, column: 49, scope: !4629)
!4638 = !DILocation(line: 258, column: 66, scope: !4629)
!4639 = !DILocation(line: 259, column: 13, scope: !4629)
!4640 = !DILocation(line: 261, column: 2, scope: !4629)
!4641 = !DILocation(line: 261, column: 25, scope: !4629)
!4642 = !DILocation(line: 261, column: 39, scope: !4629)
!4643 = !DILocation(line: 261, column: 44, scope: !4629)
!4644 = !DILocation(line: 261, column: 31, scope: !4629)
!4645 = !DILocation(line: 262, column: 2, scope: !4629)
!4646 = !DILocation(line: 262, column: 17, scope: !4629)
!4647 = !DILocation(line: 263, column: 2, scope: !4629)
!4648 = !DILocation(line: 263, column: 6, scope: !4629)
!4649 = !DILocation(line: 265, column: 32, scope: !4629)
!4650 = !DILocation(line: 265, column: 43, scope: !4629)
!4651 = !DILocation(line: 265, column: 8, scope: !4629)
!4652 = !DILocation(line: 265, column: 6, scope: !4629)
!4653 = !DILocation(line: 266, column: 6, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 266, column: 6)
!4655 = !DILocation(line: 266, column: 10, scope: !4654)
!4656 = !DILocation(line: 266, column: 33, scope: !4654)
!4657 = !DILocation(line: 266, column: 38, scope: !4654)
!4658 = !DILocation(line: 266, column: 13, scope: !4654)
!4659 = !DILocation(line: 266, column: 6, scope: !4629)
!4660 = !DILocation(line: 267, column: 30, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 266, column: 44)
!4662 = !DILocation(line: 267, column: 35, scope: !4661)
!4663 = !DILocation(line: 267, column: 9, scope: !4661)
!4664 = !DILocation(line: 267, column: 7, scope: !4661)
!4665 = !DILocation(line: 268, column: 8, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 268, column: 7)
!4667 = !DILocation(line: 268, column: 7, scope: !4661)
!4668 = !DILocation(line: 270, column: 10, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 268, column: 13)
!4670 = !DILocation(line: 270, column: 8, scope: !4669)
!4671 = !DILocation(line: 271, column: 3, scope: !4669)
!4672 = !DILocation(line: 272, column: 2, scope: !4661)
!4673 = !DILocation(line: 273, column: 13, scope: !4629)
!4674 = !DILocation(line: 273, column: 2, scope: !4629)
!4675 = !DILocation(line: 274, column: 10, scope: !4629)
!4676 = !DILocation(line: 274, column: 2, scope: !4629)
!4677 = !DILocation(line: 275, column: 9, scope: !4629)
!4678 = !DILocation(line: 276, column: 1, scope: !4629)
!4679 = !DILocation(line: 275, column: 2, scope: !4629)
!4680 = distinct !DISubprogram(name: "driver_match_device", scope: !815, file: !815, line: 164, type: !4681, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4683)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!46, !840, !807}
!4683 = !{!4684, !4685}
!4684 = !DILocalVariable(name: "drv", arg: 1, scope: !4680, file: !815, line: 164, type: !840)
!4685 = !DILocalVariable(name: "dev", arg: 2, scope: !4680, file: !815, line: 165, type: !807)
!4686 = !DILocation(line: 164, column: 61, scope: !4680)
!4687 = !DILocation(line: 165, column: 26, scope: !4680)
!4688 = !DILocation(line: 167, column: 9, scope: !4680)
!4689 = !DILocation(line: 167, column: 14, scope: !4680)
!4690 = !DILocation(line: 167, column: 19, scope: !4680)
!4691 = !DILocation(line: 167, column: 27, scope: !4680)
!4692 = !DILocation(line: 167, column: 32, scope: !4680)
!4693 = !DILocation(line: 167, column: 37, scope: !4680)
!4694 = !DILocation(line: 167, column: 43, scope: !4680)
!4695 = !DILocation(line: 167, column: 48, scope: !4680)
!4696 = !DILocation(line: 167, column: 2, scope: !4680)
!4697 = !DISubprogram(name: "device_driver_attach", scope: !26, file: !26, line: 1166, type: !4681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4698 = distinct !DISubprogram(name: "device_lock", scope: !26, file: !26, line: 990, type: !1242, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4699)
!4699 = !{!4700}
!4700 = !DILocalVariable(name: "dev", arg: 1, scope: !4698, file: !26, line: 990, type: !807)
!4701 = !DILocation(line: 990, column: 47, scope: !4698)
!4702 = !DILocation(line: 992, column: 14, scope: !4698)
!4703 = !DILocation(line: 992, column: 19, scope: !4698)
!4704 = !DILocation(line: 992, column: 2, scope: !4698)
!4705 = !DILocation(line: 993, column: 1, scope: !4698)
!4706 = !DISubprogram(name: "device_attach", scope: !26, file: !26, line: 1170, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4707 = distinct !DISubprogram(name: "device_unlock", scope: !26, file: !26, line: 1005, type: !1242, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4708)
!4708 = !{!4709}
!4709 = !DILocalVariable(name: "dev", arg: 1, scope: !4707, file: !26, line: 1005, type: !807)
!4710 = !DILocation(line: 1005, column: 49, scope: !4707)
!4711 = !DILocation(line: 1007, column: 16, scope: !4707)
!4712 = !DILocation(line: 1007, column: 21, scope: !4707)
!4713 = !DILocation(line: 1007, column: 2, scope: !4707)
!4714 = !DILocation(line: 1008, column: 1, scope: !4707)
!4715 = distinct !DISubprogram(name: "bus_release", scope: !3, file: !3, line: 208, type: !258, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4716)
!4716 = !{!4717, !4718, !4719}
!4717 = !DILocalVariable(name: "kobj", arg: 1, scope: !4715, file: !3, line: 208, type: !151)
!4718 = !DILocalVariable(name: "priv", scope: !4715, file: !3, line: 210, type: !1723)
!4719 = !DILocalVariable(name: "__mptr", scope: !4720, file: !3, line: 210, type: !122)
!4720 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 210, column: 32)
!4721 = !DILocation(line: 208, column: 41, scope: !4715)
!4722 = !DILocation(line: 210, column: 2, scope: !4715)
!4723 = !DILocation(line: 210, column: 25, scope: !4715)
!4724 = !DILocation(line: 210, column: 32, scope: !4720)
!4725 = !DILocation(line: 210, column: 32, scope: !4715)
!4726 = !DILocation(line: 212, column: 26, scope: !4715)
!4727 = !DILocation(line: 212, column: 32, scope: !4715)
!4728 = !DILocation(line: 212, column: 2, scope: !4715)
!4729 = !DILocation(line: 213, column: 8, scope: !4715)
!4730 = !DILocation(line: 213, column: 2, scope: !4715)
!4731 = !DILocation(line: 214, column: 1, scope: !4715)
!4732 = distinct !DISubprogram(name: "lockdep_unregister_key", scope: !3169, file: !3169, line: 413, type: !3170, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4733)
!4733 = !{!4734}
!4734 = !DILocalVariable(name: "key", arg: 1, scope: !4732, file: !3169, line: 413, type: !1826)
!4735 = !DILocation(line: 413, column: 66, scope: !4732)
!4736 = !DILocation(line: 415, column: 1, scope: !4732)
!4737 = distinct !DISubprogram(name: "bus_attr_show", scope: !3, file: !3, line: 150, type: !267, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4738)
!4738 = !{!4739, !4740, !4741, !4742, !4743, !4745, !4746, !4748}
!4739 = !DILocalVariable(name: "kobj", arg: 1, scope: !4737, file: !3, line: 150, type: !151)
!4740 = !DILocalVariable(name: "attr", arg: 2, scope: !4737, file: !3, line: 150, type: !274)
!4741 = !DILocalVariable(name: "buf", arg: 3, scope: !4737, file: !3, line: 151, type: !238)
!4742 = !DILocalVariable(name: "bus_attr", scope: !4737, file: !3, line: 153, type: !1756)
!4743 = !DILocalVariable(name: "__mptr", scope: !4744, file: !3, line: 153, type: !122)
!4744 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 153, column: 35)
!4745 = !DILocalVariable(name: "subsys_priv", scope: !4737, file: !3, line: 154, type: !1723)
!4746 = !DILocalVariable(name: "__mptr", scope: !4747, file: !3, line: 154, type: !122)
!4747 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 154, column: 39)
!4748 = !DILocalVariable(name: "ret", scope: !4737, file: !3, line: 156, type: !269)
!4749 = !DILocation(line: 150, column: 46, scope: !4737)
!4750 = !DILocation(line: 150, column: 70, scope: !4737)
!4751 = !DILocation(line: 151, column: 15, scope: !4737)
!4752 = !DILocation(line: 153, column: 2, scope: !4737)
!4753 = !DILocation(line: 153, column: 24, scope: !4737)
!4754 = !DILocation(line: 153, column: 35, scope: !4744)
!4755 = !DILocation(line: 153, column: 35, scope: !4737)
!4756 = !DILocation(line: 154, column: 2, scope: !4737)
!4757 = !DILocation(line: 154, column: 25, scope: !4737)
!4758 = !DILocation(line: 154, column: 39, scope: !4747)
!4759 = !DILocation(line: 154, column: 39, scope: !4737)
!4760 = !DILocation(line: 156, column: 2, scope: !4737)
!4761 = !DILocation(line: 156, column: 10, scope: !4737)
!4762 = !DILocation(line: 158, column: 6, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 158, column: 6)
!4764 = !DILocation(line: 158, column: 16, scope: !4763)
!4765 = !DILocation(line: 158, column: 6, scope: !4737)
!4766 = !DILocation(line: 159, column: 9, scope: !4763)
!4767 = !DILocation(line: 159, column: 19, scope: !4763)
!4768 = !DILocation(line: 159, column: 24, scope: !4763)
!4769 = !DILocation(line: 159, column: 37, scope: !4763)
!4770 = !DILocation(line: 159, column: 42, scope: !4763)
!4771 = !DILocation(line: 159, column: 7, scope: !4763)
!4772 = !DILocation(line: 159, column: 3, scope: !4763)
!4773 = !DILocation(line: 160, column: 9, scope: !4737)
!4774 = !DILocation(line: 161, column: 1, scope: !4737)
!4775 = !DILocation(line: 160, column: 2, scope: !4737)
!4776 = distinct !DISubprogram(name: "bus_attr_store", scope: !3, file: !3, line: 163, type: !281, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4777)
!4777 = !{!4778, !4779, !4780, !4781, !4782, !4783, !4785, !4786, !4788}
!4778 = !DILocalVariable(name: "kobj", arg: 1, scope: !4776, file: !3, line: 163, type: !151)
!4779 = !DILocalVariable(name: "attr", arg: 2, scope: !4776, file: !3, line: 163, type: !274)
!4780 = !DILocalVariable(name: "buf", arg: 3, scope: !4776, file: !3, line: 164, type: !127)
!4781 = !DILocalVariable(name: "count", arg: 4, scope: !4776, file: !3, line: 164, type: !283)
!4782 = !DILocalVariable(name: "bus_attr", scope: !4776, file: !3, line: 166, type: !1756)
!4783 = !DILocalVariable(name: "__mptr", scope: !4784, file: !3, line: 166, type: !122)
!4784 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 166, column: 35)
!4785 = !DILocalVariable(name: "subsys_priv", scope: !4776, file: !3, line: 167, type: !1723)
!4786 = !DILocalVariable(name: "__mptr", scope: !4787, file: !3, line: 167, type: !122)
!4787 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 167, column: 39)
!4788 = !DILocalVariable(name: "ret", scope: !4776, file: !3, line: 169, type: !269)
!4789 = !DILocation(line: 163, column: 47, scope: !4776)
!4790 = !DILocation(line: 163, column: 71, scope: !4776)
!4791 = !DILocation(line: 164, column: 22, scope: !4776)
!4792 = !DILocation(line: 164, column: 34, scope: !4776)
!4793 = !DILocation(line: 166, column: 2, scope: !4776)
!4794 = !DILocation(line: 166, column: 24, scope: !4776)
!4795 = !DILocation(line: 166, column: 35, scope: !4784)
!4796 = !DILocation(line: 166, column: 35, scope: !4776)
!4797 = !DILocation(line: 167, column: 2, scope: !4776)
!4798 = !DILocation(line: 167, column: 25, scope: !4776)
!4799 = !DILocation(line: 167, column: 39, scope: !4787)
!4800 = !DILocation(line: 167, column: 39, scope: !4776)
!4801 = !DILocation(line: 169, column: 2, scope: !4776)
!4802 = !DILocation(line: 169, column: 10, scope: !4776)
!4803 = !DILocation(line: 171, column: 6, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 171, column: 6)
!4805 = !DILocation(line: 171, column: 16, scope: !4804)
!4806 = !DILocation(line: 171, column: 6, scope: !4776)
!4807 = !DILocation(line: 172, column: 9, scope: !4804)
!4808 = !DILocation(line: 172, column: 19, scope: !4804)
!4809 = !DILocation(line: 172, column: 25, scope: !4804)
!4810 = !DILocation(line: 172, column: 38, scope: !4804)
!4811 = !DILocation(line: 172, column: 43, scope: !4804)
!4812 = !DILocation(line: 172, column: 48, scope: !4804)
!4813 = !DILocation(line: 172, column: 7, scope: !4804)
!4814 = !DILocation(line: 172, column: 3, scope: !4804)
!4815 = !DILocation(line: 173, column: 9, scope: !4776)
!4816 = !DILocation(line: 174, column: 1, scope: !4776)
!4817 = !DILocation(line: 173, column: 2, scope: !4776)
!4818 = distinct !DISubprogram(name: "bus_uevent_store", scope: !3, file: !3, line: 820, type: !1766, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4819 = !{!4820, !4821, !4822, !4823, !4824}
!4820 = !DILocalVariable(name: "bus", arg: 1, scope: !4818, file: !3, line: 820, type: !845)
!4821 = !DILocalVariable(name: "buf", arg: 2, scope: !4818, file: !3, line: 821, type: !127)
!4822 = !DILocalVariable(name: "count", arg: 3, scope: !4818, file: !3, line: 821, type: !283)
!4823 = !DILocalVariable(name: "sp", scope: !4818, file: !3, line: 823, type: !1723)
!4824 = !DILocalVariable(name: "ret", scope: !4818, file: !3, line: 824, type: !46)
!4825 = !DILocation(line: 820, column: 56, scope: !4818)
!4826 = !DILocation(line: 821, column: 17, scope: !4818)
!4827 = !DILocation(line: 821, column: 29, scope: !4818)
!4828 = !DILocation(line: 823, column: 2, scope: !4818)
!4829 = !DILocation(line: 823, column: 25, scope: !4818)
!4830 = !DILocation(line: 823, column: 44, scope: !4818)
!4831 = !DILocation(line: 823, column: 30, scope: !4818)
!4832 = !DILocation(line: 824, column: 2, scope: !4818)
!4833 = !DILocation(line: 824, column: 6, scope: !4818)
!4834 = !DILocation(line: 826, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 826, column: 6)
!4836 = !DILocation(line: 826, column: 6, scope: !4818)
!4837 = !DILocation(line: 827, column: 3, scope: !4835)
!4838 = !DILocation(line: 829, column: 30, scope: !4818)
!4839 = !DILocation(line: 829, column: 34, scope: !4818)
!4840 = !DILocation(line: 829, column: 41, scope: !4818)
!4841 = !DILocation(line: 829, column: 47, scope: !4818)
!4842 = !DILocation(line: 829, column: 52, scope: !4818)
!4843 = !DILocation(line: 829, column: 8, scope: !4818)
!4844 = !DILocation(line: 829, column: 6, scope: !4818)
!4845 = !DILocation(line: 830, column: 13, scope: !4818)
!4846 = !DILocation(line: 830, column: 2, scope: !4818)
!4847 = !DILocation(line: 832, column: 6, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 832, column: 6)
!4849 = !DILocation(line: 832, column: 6, scope: !4818)
!4850 = !DILocation(line: 833, column: 10, scope: !4848)
!4851 = !DILocation(line: 833, column: 3, scope: !4848)
!4852 = !DILocation(line: 834, column: 9, scope: !4818)
!4853 = !DILocation(line: 834, column: 2, scope: !4818)
!4854 = !DILocation(line: 835, column: 1, scope: !4818)
!4855 = distinct !DISubprogram(name: "drivers_probe_store", scope: !3, file: !3, line: 309, type: !1766, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861}
!4857 = !DILocalVariable(name: "bus", arg: 1, scope: !4855, file: !3, line: 309, type: !845)
!4858 = !DILocalVariable(name: "buf", arg: 2, scope: !4855, file: !3, line: 310, type: !127)
!4859 = !DILocalVariable(name: "count", arg: 3, scope: !4855, file: !3, line: 310, type: !283)
!4860 = !DILocalVariable(name: "dev", scope: !4855, file: !3, line: 312, type: !807)
!4861 = !DILocalVariable(name: "err", scope: !4855, file: !3, line: 313, type: !46)
!4862 = !DILocation(line: 309, column: 59, scope: !4855)
!4863 = !DILocation(line: 310, column: 20, scope: !4855)
!4864 = !DILocation(line: 310, column: 32, scope: !4855)
!4865 = !DILocation(line: 312, column: 2, scope: !4855)
!4866 = !DILocation(line: 312, column: 17, scope: !4855)
!4867 = !DILocation(line: 313, column: 2, scope: !4855)
!4868 = !DILocation(line: 313, column: 6, scope: !4855)
!4869 = !DILocation(line: 315, column: 32, scope: !4855)
!4870 = !DILocation(line: 315, column: 43, scope: !4855)
!4871 = !DILocation(line: 315, column: 8, scope: !4855)
!4872 = !DILocation(line: 315, column: 6, scope: !4855)
!4873 = !DILocation(line: 316, column: 7, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 316, column: 6)
!4875 = !DILocation(line: 316, column: 6, scope: !4855)
!4876 = !DILocation(line: 317, column: 3, scope: !4874)
!4877 = !DILocation(line: 318, column: 32, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 318, column: 6)
!4879 = !DILocation(line: 318, column: 6, scope: !4878)
!4880 = !DILocation(line: 318, column: 43, scope: !4878)
!4881 = !DILocation(line: 318, column: 6, scope: !4855)
!4882 = !DILocation(line: 319, column: 9, scope: !4878)
!4883 = !DILocation(line: 319, column: 7, scope: !4878)
!4884 = !DILocation(line: 319, column: 3, scope: !4878)
!4885 = !DILocation(line: 320, column: 13, scope: !4855)
!4886 = !DILocation(line: 320, column: 2, scope: !4855)
!4887 = !DILocation(line: 321, column: 9, scope: !4855)
!4888 = !DILocation(line: 321, column: 2, scope: !4855)
!4889 = !DILocation(line: 322, column: 1, scope: !4855)
!4890 = distinct !DISubprogram(name: "drivers_autoprobe_show", scope: !3, file: !3, line: 279, type: !1762, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4891)
!4891 = !{!4892, !4893, !4894, !4895}
!4892 = !DILocalVariable(name: "bus", arg: 1, scope: !4890, file: !3, line: 279, type: !845)
!4893 = !DILocalVariable(name: "buf", arg: 2, scope: !4890, file: !3, line: 279, type: !238)
!4894 = !DILocalVariable(name: "sp", scope: !4890, file: !3, line: 281, type: !1723)
!4895 = !DILocalVariable(name: "ret", scope: !4890, file: !3, line: 282, type: !46)
!4896 = !DILocation(line: 279, column: 62, scope: !4890)
!4897 = !DILocation(line: 279, column: 73, scope: !4890)
!4898 = !DILocation(line: 281, column: 2, scope: !4890)
!4899 = !DILocation(line: 281, column: 25, scope: !4890)
!4900 = !DILocation(line: 281, column: 44, scope: !4890)
!4901 = !DILocation(line: 281, column: 30, scope: !4890)
!4902 = !DILocation(line: 282, column: 2, scope: !4890)
!4903 = !DILocation(line: 282, column: 6, scope: !4890)
!4904 = !DILocation(line: 284, column: 7, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 284, column: 6)
!4906 = !DILocation(line: 284, column: 6, scope: !4890)
!4907 = !DILocation(line: 285, column: 3, scope: !4905)
!4908 = !DILocation(line: 287, column: 19, scope: !4890)
!4909 = !DILocation(line: 287, column: 32, scope: !4890)
!4910 = !DILocation(line: 287, column: 36, scope: !4890)
!4911 = !DILocation(line: 287, column: 8, scope: !4890)
!4912 = !DILocation(line: 287, column: 6, scope: !4890)
!4913 = !DILocation(line: 288, column: 13, scope: !4890)
!4914 = !DILocation(line: 288, column: 2, scope: !4890)
!4915 = !DILocation(line: 289, column: 9, scope: !4890)
!4916 = !DILocation(line: 289, column: 2, scope: !4890)
!4917 = !DILocation(line: 290, column: 1, scope: !4890)
!4918 = distinct !DISubprogram(name: "drivers_autoprobe_store", scope: !3, file: !3, line: 292, type: !1766, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4919)
!4919 = !{!4920, !4921, !4922, !4923}
!4920 = !DILocalVariable(name: "bus", arg: 1, scope: !4918, file: !3, line: 292, type: !845)
!4921 = !DILocalVariable(name: "buf", arg: 2, scope: !4918, file: !3, line: 293, type: !127)
!4922 = !DILocalVariable(name: "count", arg: 3, scope: !4918, file: !3, line: 293, type: !283)
!4923 = !DILocalVariable(name: "sp", scope: !4918, file: !3, line: 295, type: !1723)
!4924 = !DILocation(line: 292, column: 63, scope: !4918)
!4925 = !DILocation(line: 293, column: 24, scope: !4918)
!4926 = !DILocation(line: 293, column: 36, scope: !4918)
!4927 = !DILocation(line: 295, column: 2, scope: !4918)
!4928 = !DILocation(line: 295, column: 25, scope: !4918)
!4929 = !DILocation(line: 295, column: 44, scope: !4918)
!4930 = !DILocation(line: 295, column: 30, scope: !4918)
!4931 = !DILocation(line: 297, column: 7, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 297, column: 6)
!4933 = !DILocation(line: 297, column: 6, scope: !4918)
!4934 = !DILocation(line: 298, column: 3, scope: !4932)
!4935 = !DILocation(line: 300, column: 6, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 300, column: 6)
!4937 = !DILocation(line: 300, column: 13, scope: !4936)
!4938 = !DILocation(line: 300, column: 6, scope: !4918)
!4939 = !DILocation(line: 301, column: 3, scope: !4936)
!4940 = !DILocation(line: 301, column: 7, scope: !4936)
!4941 = !DILocation(line: 301, column: 25, scope: !4936)
!4942 = !DILocation(line: 303, column: 3, scope: !4936)
!4943 = !DILocation(line: 303, column: 7, scope: !4936)
!4944 = !DILocation(line: 303, column: 25, scope: !4936)
!4945 = !DILocation(line: 305, column: 13, scope: !4918)
!4946 = !DILocation(line: 305, column: 2, scope: !4918)
!4947 = !DILocation(line: 306, column: 9, scope: !4918)
!4948 = !DILocation(line: 306, column: 2, scope: !4918)
!4949 = !DILocation(line: 307, column: 1, scope: !4918)
!4950 = !DISubprogram(name: "sysfs_emit", scope: !141, file: !141, line: 357, type: !4951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!46, !238, !127, null}
!4953 = !DISubprogram(name: "_raw_spin_lock", scope: !4954, file: !4954, line: 22, type: !4955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4954 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !4957}
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!4958 = distinct !DISubprogram(name: "list_move_tail", scope: !3147, file: !3147, line: 307, type: !3682, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4959)
!4959 = !{!4960, !4961}
!4960 = !DILocalVariable(name: "list", arg: 1, scope: !4958, file: !3147, line: 307, type: !160)
!4961 = !DILocalVariable(name: "head", arg: 2, scope: !4958, file: !3147, line: 308, type: !160)
!4962 = !DILocation(line: 307, column: 53, scope: !4958)
!4963 = !DILocation(line: 308, column: 25, scope: !4958)
!4964 = !DILocation(line: 310, column: 19, scope: !4958)
!4965 = !DILocation(line: 310, column: 2, scope: !4958)
!4966 = !DILocation(line: 311, column: 16, scope: !4958)
!4967 = !DILocation(line: 311, column: 22, scope: !4958)
!4968 = !DILocation(line: 311, column: 2, scope: !4958)
!4969 = !DILocation(line: 312, column: 1, scope: !4958)
!4970 = distinct !DISubprogram(name: "__list_del_entry", scope: !3147, file: !3147, line: 213, type: !3148, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4971)
!4971 = !{!4972}
!4972 = !DILocalVariable(name: "entry", arg: 1, scope: !4970, file: !3147, line: 213, type: !160)
!4973 = !DILocation(line: 213, column: 55, scope: !4970)
!4974 = !DILocation(line: 215, column: 30, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4970, file: !3147, line: 215, column: 6)
!4976 = !DILocation(line: 215, column: 7, scope: !4975)
!4977 = !DILocation(line: 215, column: 6, scope: !4970)
!4978 = !DILocation(line: 216, column: 3, scope: !4975)
!4979 = !DILocation(line: 218, column: 13, scope: !4970)
!4980 = !DILocation(line: 218, column: 20, scope: !4970)
!4981 = !DILocation(line: 218, column: 26, scope: !4970)
!4982 = !DILocation(line: 218, column: 33, scope: !4970)
!4983 = !DILocation(line: 218, column: 2, scope: !4970)
!4984 = !DILocation(line: 219, column: 1, scope: !4970)
!4985 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3147, file: !3147, line: 134, type: !4986, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4988)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!301, !160}
!4988 = !{!4989}
!4989 = !DILocalVariable(name: "entry", arg: 1, scope: !4985, file: !3147, line: 134, type: !160)
!4990 = !DILocation(line: 134, column: 61, scope: !4985)
!4991 = !DILocation(line: 136, column: 2, scope: !4985)
!4992 = distinct !DISubprogram(name: "__list_del", scope: !3147, file: !3147, line: 193, type: !3682, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4993 = !{!4994, !4995}
!4994 = !DILocalVariable(name: "prev", arg: 1, scope: !4992, file: !3147, line: 193, type: !160)
!4995 = !DILocalVariable(name: "next", arg: 2, scope: !4992, file: !3147, line: 193, type: !160)
!4996 = !DILocation(line: 193, column: 50, scope: !4992)
!4997 = !DILocation(line: 193, column: 75, scope: !4992)
!4998 = !DILocation(line: 195, column: 15, scope: !4992)
!4999 = !DILocation(line: 195, column: 2, scope: !4992)
!5000 = !DILocation(line: 195, column: 8, scope: !4992)
!5001 = !DILocation(line: 195, column: 13, scope: !4992)
!5002 = !DILocation(line: 196, column: 2, scope: !4992)
!5003 = !DILocation(line: 196, column: 2, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4992, file: !3147, line: 196, column: 2)
!5005 = !DILocation(line: 196, column: 2, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5004, file: !3147, line: 196, column: 2)
!5007 = !DILocation(line: 196, column: 2, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5004, file: !3147, line: 196, column: 2)
!5009 = !DILocation(line: 197, column: 1, scope: !4992)
!5010 = distinct !DISubprogram(name: "__list_splice", scope: !3147, file: !3147, line: 523, type: !5011, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5013)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{null, !3593, !160, !160}
!5013 = !{!5014, !5015, !5016, !5017, !5018}
!5014 = !DILocalVariable(name: "list", arg: 1, scope: !5010, file: !3147, line: 523, type: !3593)
!5015 = !DILocalVariable(name: "prev", arg: 2, scope: !5010, file: !3147, line: 524, type: !160)
!5016 = !DILocalVariable(name: "next", arg: 3, scope: !5010, file: !3147, line: 525, type: !160)
!5017 = !DILocalVariable(name: "first", scope: !5010, file: !3147, line: 527, type: !160)
!5018 = !DILocalVariable(name: "last", scope: !5010, file: !3147, line: 528, type: !160)
!5019 = !DILocation(line: 523, column: 58, scope: !5010)
!5020 = !DILocation(line: 524, column: 24, scope: !5010)
!5021 = !DILocation(line: 525, column: 24, scope: !5010)
!5022 = !DILocation(line: 527, column: 2, scope: !5010)
!5023 = !DILocation(line: 527, column: 20, scope: !5010)
!5024 = !DILocation(line: 527, column: 28, scope: !5010)
!5025 = !DILocation(line: 527, column: 34, scope: !5010)
!5026 = !DILocation(line: 528, column: 2, scope: !5010)
!5027 = !DILocation(line: 528, column: 20, scope: !5010)
!5028 = !DILocation(line: 528, column: 27, scope: !5010)
!5029 = !DILocation(line: 528, column: 33, scope: !5010)
!5030 = !DILocation(line: 530, column: 16, scope: !5010)
!5031 = !DILocation(line: 530, column: 2, scope: !5010)
!5032 = !DILocation(line: 530, column: 9, scope: !5010)
!5033 = !DILocation(line: 530, column: 14, scope: !5010)
!5034 = !DILocation(line: 531, column: 15, scope: !5010)
!5035 = !DILocation(line: 531, column: 2, scope: !5010)
!5036 = !DILocation(line: 531, column: 8, scope: !5010)
!5037 = !DILocation(line: 531, column: 13, scope: !5010)
!5038 = !DILocation(line: 533, column: 15, scope: !5010)
!5039 = !DILocation(line: 533, column: 2, scope: !5010)
!5040 = !DILocation(line: 533, column: 8, scope: !5010)
!5041 = !DILocation(line: 533, column: 13, scope: !5010)
!5042 = !DILocation(line: 534, column: 15, scope: !5010)
!5043 = !DILocation(line: 534, column: 2, scope: !5010)
!5044 = !DILocation(line: 534, column: 8, scope: !5010)
!5045 = !DILocation(line: 534, column: 13, scope: !5010)
!5046 = !DILocation(line: 535, column: 1, scope: !5010)
!5047 = !DISubprogram(name: "_raw_spin_unlock", scope: !4954, file: !4954, line: 39, type: !4955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5048 = distinct !DISubprogram(name: "__list_add", scope: !3147, file: !3147, line: 146, type: !5049, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5051)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !160, !160, !160}
!5051 = !{!5052, !5053, !5054}
!5052 = !DILocalVariable(name: "new", arg: 1, scope: !5048, file: !3147, line: 146, type: !160)
!5053 = !DILocalVariable(name: "prev", arg: 2, scope: !5048, file: !3147, line: 147, type: !160)
!5054 = !DILocalVariable(name: "next", arg: 3, scope: !5048, file: !3147, line: 148, type: !160)
!5055 = !DILocation(line: 146, column: 49, scope: !5048)
!5056 = !DILocation(line: 147, column: 28, scope: !5048)
!5057 = !DILocation(line: 148, column: 28, scope: !5048)
!5058 = !DILocation(line: 150, column: 24, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5048, file: !3147, line: 150, column: 6)
!5060 = !DILocation(line: 150, column: 29, scope: !5059)
!5061 = !DILocation(line: 150, column: 35, scope: !5059)
!5062 = !DILocation(line: 150, column: 7, scope: !5059)
!5063 = !DILocation(line: 150, column: 6, scope: !5048)
!5064 = !DILocation(line: 151, column: 3, scope: !5059)
!5065 = !DILocation(line: 153, column: 15, scope: !5048)
!5066 = !DILocation(line: 153, column: 2, scope: !5048)
!5067 = !DILocation(line: 153, column: 8, scope: !5048)
!5068 = !DILocation(line: 153, column: 13, scope: !5048)
!5069 = !DILocation(line: 154, column: 14, scope: !5048)
!5070 = !DILocation(line: 154, column: 2, scope: !5048)
!5071 = !DILocation(line: 154, column: 7, scope: !5048)
!5072 = !DILocation(line: 154, column: 12, scope: !5048)
!5073 = !DILocation(line: 155, column: 14, scope: !5048)
!5074 = !DILocation(line: 155, column: 2, scope: !5048)
!5075 = !DILocation(line: 155, column: 7, scope: !5048)
!5076 = !DILocation(line: 155, column: 12, scope: !5048)
!5077 = !DILocation(line: 156, column: 2, scope: !5048)
!5078 = !DILocation(line: 156, column: 2, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5048, file: !3147, line: 156, column: 2)
!5080 = !DILocation(line: 156, column: 2, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5079, file: !3147, line: 156, column: 2)
!5082 = !DILocation(line: 156, column: 2, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5079, file: !3147, line: 156, column: 2)
!5084 = !DILocation(line: 157, column: 1, scope: !5048)
!5085 = distinct !DISubprogram(name: "__list_add_valid", scope: !3147, file: !3147, line: 128, type: !5086, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!301, !160, !160, !160}
!5088 = !{!5089, !5090, !5091}
!5089 = !DILocalVariable(name: "new", arg: 1, scope: !5085, file: !3147, line: 128, type: !160)
!5090 = !DILocalVariable(name: "prev", arg: 2, scope: !5085, file: !3147, line: 129, type: !160)
!5091 = !DILocalVariable(name: "next", arg: 3, scope: !5085, file: !3147, line: 130, type: !160)
!5092 = !DILocation(line: 128, column: 55, scope: !5085)
!5093 = !DILocation(line: 129, column: 23, scope: !5085)
!5094 = !DILocation(line: 130, column: 23, scope: !5085)
!5095 = !DILocation(line: 132, column: 2, scope: !5085)
!5096 = !DISubprogram(name: "dev_set_name", scope: !26, file: !26, line: 879, type: !5097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!46, !807, !127, null}
!5099 = distinct !DISubprogram(name: "system_root_device_release", scope: !3, file: !3, line: 1203, type: !1242, scopeLine: 1204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5100)
!5100 = !{!5101}
!5101 = !DILocalVariable(name: "dev", arg: 1, scope: !5099, file: !3, line: 1203, type: !807)
!5102 = !DILocation(line: 1203, column: 55, scope: !5099)
!5103 = !DILocation(line: 1205, column: 8, scope: !5099)
!5104 = !DILocation(line: 1205, column: 2, scope: !5099)
!5105 = !DILocation(line: 1206, column: 1, scope: !5099)
!5106 = !DISubprogram(name: "device_register", scope: !26, file: !26, line: 1054, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5107 = distinct !DISubprogram(name: "bus_uevent_filter", scope: !3, file: !3, line: 221, type: !219, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5108)
!5108 = !{!5109, !5110}
!5109 = !DILocalVariable(name: "kobj", arg: 1, scope: !5107, file: !3, line: 221, type: !221)
!5110 = !DILocalVariable(name: "ktype", scope: !5107, file: !3, line: 223, type: !252)
!5111 = !DILocation(line: 221, column: 52, scope: !5107)
!5112 = !DILocation(line: 223, column: 2, scope: !5107)
!5113 = !DILocation(line: 223, column: 26, scope: !5107)
!5114 = !DILocation(line: 223, column: 44, scope: !5107)
!5115 = !DILocation(line: 223, column: 34, scope: !5107)
!5116 = !DILocation(line: 225, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 225, column: 6)
!5118 = !DILocation(line: 225, column: 12, scope: !5117)
!5119 = !DILocation(line: 225, column: 6, scope: !5107)
!5120 = !DILocation(line: 226, column: 3, scope: !5117)
!5121 = !DILocation(line: 227, column: 2, scope: !5107)
!5122 = !DILocation(line: 228, column: 1, scope: !5107)
!5123 = distinct !DISubprogram(name: "get_ktype", scope: !153, file: !153, line: 196, type: !5124, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5126)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!252, !221}
!5126 = !{!5127}
!5127 = !DILocalVariable(name: "kobj", arg: 1, scope: !5123, file: !153, line: 196, type: !221)
!5128 = !DILocation(line: 196, column: 71, scope: !5123)
!5129 = !DILocation(line: 198, column: 9, scope: !5123)
!5130 = !DILocation(line: 198, column: 15, scope: !5123)
!5131 = !DILocation(line: 198, column: 2, scope: !5123)
