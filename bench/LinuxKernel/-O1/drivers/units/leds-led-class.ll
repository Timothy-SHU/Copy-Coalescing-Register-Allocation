; ModuleID = 'drivers/leds/led-class.c'
source_filename = "drivers/leds/led-class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_classdev_suspend: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_classdev_suspend ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_classdev_resume: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_classdev_resume ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_of_led_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad of_led_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_put: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_of_led_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_of_led_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_led_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_led_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_add_lookup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_add_lookup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_remove_lookup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_remove_lookup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_of_led_get_optional: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_of_led_get_optional ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_classdev_register_ext: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_classdev_register_ext ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_classdev_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_classdev_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_led_classdev_register_ext: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_led_classdev_register_ext ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_led_classdev_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_led_classdev_unregister ; .previous"
module asm ".section\09\22.initcall4.init..kmod_led_class__219_685_leds_init\22, \22a\22\09\09"
module asm "__initcall__kmod_led_class__219_685_leds_init4:\09\09\09"
module asm ".long\09__initstub__kmod_led_class__219_685_leds_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i64, i64, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, i64, i64, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_lookup_data = type { %struct.list_head, ptr, ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID___addressable_led_classdev_suspend205 = internal global ptr @led_classdev_suspend, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_led_classdev_resume206 = internal global ptr @led_classdev_resume, section ".discard.addressable", align 8, !dbg !1817
@.str = private unnamed_addr constant [5 x i8] c"leds\00", align 1, !dbg !1819
@leds_class = internal constant %struct.class { ptr @.str, ptr null, ptr @led_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @leds_class_dev_pm_ops }, align 8, !dbg !1944
@__UNIQUE_ID___addressable_of_led_get207 = internal global ptr @of_led_get, section ".discard.addressable", align 8, !dbg !1824
@__UNIQUE_ID___addressable_led_put208 = internal global ptr @led_put, section ".discard.addressable", align 8, !dbg !1826
@__UNIQUE_ID___addressable_devm_of_led_get209 = internal global ptr @devm_of_led_get, section ".discard.addressable", align 8, !dbg !1828
@leds_lookup_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @leds_lookup_lock, i64 16), ptr getelementptr (i8, ptr @leds_lookup_lock, i64 16) } }, align 8, !dbg !1997
@leds_lookup_list = internal global %struct.list_head { ptr @leds_lookup_list, ptr @leds_lookup_list }, align 8, !dbg !1999
@__UNIQUE_ID___addressable_led_get210 = internal global ptr @led_get, section ".discard.addressable", align 8, !dbg !1830
@__UNIQUE_ID___addressable_devm_led_get211 = internal global ptr @devm_led_get, section ".discard.addressable", align 8, !dbg !1832
@__UNIQUE_ID___addressable_led_add_lookup212 = internal global ptr @led_add_lookup, section ".discard.addressable", align 8, !dbg !1834
@__UNIQUE_ID___addressable_led_remove_lookup213 = internal global ptr @led_remove_lookup, section ".discard.addressable", align 8, !dbg !1836
@__UNIQUE_ID___addressable_devm_of_led_get_optional214 = internal global ptr @devm_of_led_get_optional, section ".discard.addressable", align 8, !dbg !1838
@.str.1 = private unnamed_addr constant [33 x i8] c"Mandatory device name is missing\00", align 1, !dbg !1840
@.str.2 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1, !dbg !1845
@.str.3 = private unnamed_addr constant [22 x i8] c"retain-state-shutdown\00", align 1, !dbg !1850
@.str.4 = private unnamed_addr constant [15 x i8] c"max-brightness\00", align 1, !dbg !1852
@.str.5 = private unnamed_addr constant [6 x i8] c"color\00", align 1, !dbg !1857
@.str.6 = private unnamed_addr constant [38 x i8] c"LED %s color identifier out of range\0A\00", align 1, !dbg !1862
@led_classdev_register_ext.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1867
@.str.7 = private unnamed_addr constant [22 x i8] c"&led_cdev->led_access\00", align 1, !dbg !1889
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1891
@.str.9 = private unnamed_addr constant [43 x i8] c"Led %s renamed to %s due to name collision\00", align 1, !dbg !1894
@led_classdev_register_ext.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1899
@.str.11 = private unnamed_addr constant [24 x i8] c"&led_cdev->trigger_lock\00", align 1, !dbg !1901
@leds_list_lock = external dso_local global %struct.rw_semaphore, align 8
@leds_list = external dso_local global %struct.list_head, align 8
@__UNIQUE_ID___addressable_led_classdev_register_ext215 = internal global ptr @led_classdev_register_ext, section ".discard.addressable", align 8, !dbg !1906
@__UNIQUE_ID___addressable_led_classdev_unregister216 = internal global ptr @led_classdev_unregister, section ".discard.addressable", align 8, !dbg !1908
@.str.12 = private unnamed_addr constant [26 x i8] c"devm_led_classdev_release\00", align 1, !dbg !1910
@__UNIQUE_ID___addressable_devm_led_classdev_register_ext217 = internal global ptr @devm_led_classdev_register_ext, section ".discard.addressable", align 8, !dbg !1915
@.str.13 = private unnamed_addr constant [25 x i8] c"drivers/leds/led-class.c\00", align 1, !dbg !1917
@__UNIQUE_ID___addressable_devm_led_classdev_unregister218 = internal global ptr @devm_led_classdev_unregister, section ".discard.addressable", align 8, !dbg !1922
@__UNIQUE_ID___addressable___initstub__kmod_led_class__219_685_leds_init4220 = internal global ptr @__initstub__kmod_led_class__219_685_leds_init4, section ".discard.addressable", align 8, !dbg !1924
@__exitcall_leds_exit = internal global ptr @leds_exit, section ".exitcall.exit", align 8, !dbg !1926
@__UNIQUE_ID_author221 = internal constant [43 x i8] c"led_class.author=John Lenz, Richard Purdie\00", section ".modinfo", align 1, !dbg !1930
@__UNIQUE_ID_file222 = internal constant [38 x i8] c"led_class.file=drivers/leds/led-class\00", section ".modinfo", align 1, !dbg !1933
@__UNIQUE_ID_license223 = internal constant [22 x i8] c"led_class.license=GPL\00", section ".modinfo", align 1, !dbg !1936
@__UNIQUE_ID_description224 = internal constant [42 x i8] c"led_class.description=LED Class Interface\00", section ".modinfo", align 1, !dbg !1939
@led_groups = internal global [3 x ptr] [ptr @led_group, ptr @led_trigger_group, ptr null], align 16, !dbg !1946
@leds_class_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @led_suspend, ptr @led_resume, ptr @led_suspend, ptr @led_resume, ptr @led_suspend, ptr @led_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1990
@led_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @led_class_attrs, ptr null }, align 8, !dbg !1949
@led_trigger_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @led_trigger_bin_attrs }, align 8, !dbg !1980
@led_class_attrs = internal global [3 x ptr] [ptr @dev_attr_brightness, ptr @dev_attr_max_brightness, ptr null], align 16, !dbg !1951
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @brightness_show, ptr @brightness_store }, align 8, !dbg !1959
@dev_attr_max_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @max_brightness_show, ptr null }, align 8, !dbg !1978
@.str.14 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1, !dbg !1954
@.str.15 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !1973
@.str.16 = private unnamed_addr constant [15 x i8] c"max_brightness\00", align 1, !dbg !1976
@led_trigger_bin_attrs = internal global [2 x ptr] [ptr @bin_attr_trigger, ptr null], align 16, !dbg !1982
@bin_attr_trigger = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.17, i16 420 }, i64 0, ptr null, ptr null, ptr @led_trigger_read, ptr @led_trigger_write, ptr null }, align 8, !dbg !1988
@.str.17 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1, !dbg !1985
@.str.18 = private unnamed_addr constant [17 x i8] c"devm_led_release\00", align 1, !dbg !1992
@.str.19 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1, !dbg !2001
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID___addressable_led_classdev_suspend205, ptr @__UNIQUE_ID___addressable_led_classdev_resume206, ptr @__UNIQUE_ID___addressable_of_led_get207, ptr @__UNIQUE_ID___addressable_led_put208, ptr @__UNIQUE_ID___addressable_devm_of_led_get209, ptr @__UNIQUE_ID___addressable_led_get210, ptr @__UNIQUE_ID___addressable_devm_led_get211, ptr @__UNIQUE_ID___addressable_led_add_lookup212, ptr @__UNIQUE_ID___addressable_led_remove_lookup213, ptr @__UNIQUE_ID___addressable_devm_of_led_get_optional214, ptr @__UNIQUE_ID___addressable_led_classdev_register_ext215, ptr @__UNIQUE_ID___addressable_led_classdev_unregister216, ptr @__UNIQUE_ID___addressable_devm_led_classdev_register_ext217, ptr @__UNIQUE_ID___addressable_devm_led_classdev_unregister218, ptr @leds_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_led_class__219_685_leds_init4220, ptr @__exitcall_leds_exit, ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__UNIQUE_ID_description224], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_classdev_suspend(ptr noundef %led_cdev) #0 align 16 !dbg !2012 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2016
  %flags = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4, !dbg !2017
  %1 = load i32, ptr %flags, align 4, !dbg !2018
  %conv = sext i32 %1 to i64, !dbg !2018
  %or = or i64 %conv, 1, !dbg !2018
  %conv1 = trunc i64 %or to i32, !dbg !2018
  store i32 %conv1, ptr %flags, align 4, !dbg !2018
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2019
  call void @led_set_brightness_nopm(ptr noundef %2, i32 noundef 0) #8, !dbg !2020
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2021
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 22, !dbg !2022
  %call = call zeroext i1 @flush_work(ptr noundef %set_brightness_work) #8, !dbg !2023
  ret void, !dbg !2024
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2025 dso_local void @led_set_brightness_nopm(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2029 dso_local zeroext i1 @flush_work(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_classdev_resume(ptr noundef %led_cdev) #0 align 16 !dbg !2032 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2034, metadata !DIExpression()), !dbg !2035
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2036
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2037
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1, !dbg !2038
  %2 = load i32, ptr %brightness, align 8, !dbg !2038
  call void @led_set_brightness_nopm(ptr noundef %0, i32 noundef %2) #8, !dbg !2039
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2040
  %flash_resume = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 21, !dbg !2042
  %4 = load ptr, ptr %flash_resume, align 8, !dbg !2042
  %tobool = icmp ne ptr %4, null, !dbg !2040
  br i1 %tobool, label %if.then, label %if.end, !dbg !2043

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2044
  %flash_resume1 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 21, !dbg !2045
  %6 = load ptr, ptr %flash_resume1, align 8, !dbg !2045
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2046
  call void %6(ptr noundef %7) #8, !dbg !2044
  br label %if.end, !dbg !2044

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2047
  %flags = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 4, !dbg !2048
  %9 = load i32, ptr %flags, align 4, !dbg !2049
  %conv = sext i32 %9 to i64, !dbg !2049
  %and = and i64 %conv, -2, !dbg !2049
  %conv2 = trunc i64 %and to i32, !dbg !2049
  store i32 %conv2, ptr %flags, align 4, !dbg !2049
  ret void, !dbg !2050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @of_led_get(ptr noundef %np, i32 noundef %index) #0 align 16 !dbg !2051 {
entry:
  %retval = alloca ptr, align 8
  %np.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %led_dev = alloca ptr, align 8
  %led_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !2055, metadata !DIExpression()), !dbg !2059
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2056, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_dev) #9, !dbg !2061
  call void @llvm.dbg.declare(metadata ptr %led_dev, metadata !2057, metadata !DIExpression()), !dbg !2062
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_node) #9, !dbg !2063
  call void @llvm.dbg.declare(metadata ptr %led_node, metadata !2058, metadata !DIExpression()), !dbg !2064
  %0 = load ptr, ptr %np.addr, align 8, !dbg !2065
  %1 = load i32, ptr %index.addr, align 4, !dbg !2066
  %call = call ptr @of_parse_phandle(ptr noundef %0, ptr noundef @.str, i32 noundef %1) #8, !dbg !2067
  store ptr %call, ptr %led_node, align 8, !dbg !2068
  %2 = load ptr, ptr %led_node, align 8, !dbg !2069
  %tobool = icmp ne ptr %2, null, !dbg !2069
  br i1 %tobool, label %if.end, label %if.then, !dbg !2071

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -2) #8, !dbg !2072
  store ptr %call1, ptr %retval, align 8, !dbg !2073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2073

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %led_node, align 8, !dbg !2074
  %call2 = call ptr @class_find_device_by_of_node(ptr noundef @leds_class, ptr noundef %3) #8, !dbg !2075
  store ptr %call2, ptr %led_dev, align 8, !dbg !2076
  %4 = load ptr, ptr %led_node, align 8, !dbg !2077
  call void @of_node_put(ptr noundef %4) #8, !dbg !2078
  %5 = load ptr, ptr %led_dev, align 8, !dbg !2079
  %call3 = call ptr @led_module_get(ptr noundef %5) #8, !dbg !2080
  store ptr %call3, ptr %retval, align 8, !dbg !2081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2081

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_node) #9, !dbg !2082
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_dev) #9, !dbg !2082
  %6 = load ptr, ptr %retval, align 8, !dbg !2082
  ret ptr %6, !dbg !2082
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_parse_phandle(ptr noundef %np, ptr noundef %phandle_name, i32 noundef %index) #4 align 16 !dbg !2083 {
entry:
  %retval = alloca ptr, align 8
  %np.addr = alloca ptr, align 8
  %phandle_name.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %args = alloca %struct.of_phandle_args, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !2089, metadata !DIExpression()), !dbg !2100
  store ptr %phandle_name, ptr %phandle_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phandle_name.addr, metadata !2090, metadata !DIExpression()), !dbg !2101
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2091, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 80, ptr %args) #9, !dbg !2103
  call void @llvm.dbg.declare(metadata ptr %args, metadata !2092, metadata !DIExpression()), !dbg !2104
  %0 = load ptr, ptr %np.addr, align 8, !dbg !2105
  %1 = load ptr, ptr %phandle_name.addr, align 8, !dbg !2107
  %2 = load i32, ptr %index.addr, align 4, !dbg !2108
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef %args) #8, !dbg !2109
  %tobool = icmp ne i32 %call, 0, !dbg !2109
  br i1 %tobool, label %if.then, label %if.end, !dbg !2110

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2111

if.end:                                           ; preds = %entry
  %np1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 0, !dbg !2112
  %3 = load ptr, ptr %np1, align 8, !dbg !2112
  store ptr %3, ptr %retval, align 8, !dbg !2113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2113

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr %args) #9, !dbg !2114
  %4 = load ptr, ptr %retval, align 8, !dbg !2114
  ret ptr %4, !dbg !2114
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !2115 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2120, metadata !DIExpression()), !dbg !2121
  %0 = load i64, ptr %error.addr, align 8, !dbg !2122
  %1 = inttoptr i64 %0 to ptr, !dbg !2123
  ret ptr %1, !dbg !2124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_find_device_by_of_node(ptr noundef %class, ptr noundef %np) #4 align 16 !dbg !2125 {
entry:
  %class.addr = alloca ptr, align 8
  %np.addr = alloca ptr, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !2129, metadata !DIExpression()), !dbg !2131
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !2130, metadata !DIExpression()), !dbg !2132
  %0 = load ptr, ptr %class.addr, align 8, !dbg !2133
  %1 = load ptr, ptr %np.addr, align 8, !dbg !2134
  %call = call ptr @class_find_device(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef @device_match_of_node) #8, !dbg !2135
  ret ptr %call, !dbg !2136
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @of_node_put(ptr noundef %node) #4 align 16 !dbg !2137 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2141, metadata !DIExpression()), !dbg !2142
  ret void, !dbg !2143
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @led_module_get(ptr noundef %led_dev) #0 align 16 !dbg !2144 {
entry:
  %retval = alloca ptr, align 8
  %led_dev.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %led_dev, ptr %led_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_dev.addr, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #9, !dbg !2151
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !2149, metadata !DIExpression()), !dbg !2152
  %0 = load ptr, ptr %led_dev.addr, align 8, !dbg !2153
  %tobool = icmp ne ptr %0, null, !dbg !2153
  br i1 %tobool, label %if.end, label %if.then, !dbg !2155

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -517) #8, !dbg !2156
  store ptr %call, ptr %retval, align 8, !dbg !2157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2157

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %led_dev.addr, align 8, !dbg !2158
  %call1 = call ptr @dev_get_drvdata(ptr noundef %1) #8, !dbg !2159
  store ptr %call1, ptr %led_cdev, align 8, !dbg !2160
  %2 = load ptr, ptr %led_cdev, align 8, !dbg !2161
  %dev = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 12, !dbg !2163
  %3 = load ptr, ptr %dev, align 8, !dbg !2163
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1, !dbg !2164
  %4 = load ptr, ptr %parent, align 8, !dbg !2164
  %driver = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6, !dbg !2165
  %5 = load ptr, ptr %driver, align 8, !dbg !2165
  %owner = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2, !dbg !2166
  %6 = load ptr, ptr %owner, align 8, !dbg !2166
  %call2 = call zeroext i1 @try_module_get(ptr noundef %6) #8, !dbg !2167
  br i1 %call2, label %if.end6, label %if.then3, !dbg !2168

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %led_cdev, align 8, !dbg !2169
  %dev4 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 12, !dbg !2171
  %8 = load ptr, ptr %dev4, align 8, !dbg !2171
  call void @put_device(ptr noundef %8) #8, !dbg !2172
  %call5 = call ptr @ERR_PTR(i64 noundef -19) #8, !dbg !2173
  store ptr %call5, ptr %retval, align 8, !dbg !2174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2174

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %led_cdev, align 8, !dbg !2175
  store ptr %9, ptr %retval, align 8, !dbg !2176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2176

cleanup:                                          ; preds = %if.end6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #9, !dbg !2177
  %10 = load ptr, ptr %retval, align 8, !dbg !2177
  ret ptr %10, !dbg !2177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_put(ptr noundef %led_cdev) #0 align 16 !dbg !2178 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2180, metadata !DIExpression()), !dbg !2181
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2182
  %dev = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 12, !dbg !2183
  %1 = load ptr, ptr %dev, align 8, !dbg !2183
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1, !dbg !2184
  %2 = load ptr, ptr %parent, align 8, !dbg !2184
  %driver = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !2185
  %3 = load ptr, ptr %driver, align 8, !dbg !2185
  %owner = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 2, !dbg !2186
  %4 = load ptr, ptr %owner, align 8, !dbg !2186
  call void @module_put(ptr noundef %4) #8, !dbg !2187
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2188
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 12, !dbg !2189
  %6 = load ptr, ptr %dev1, align 8, !dbg !2189
  call void @put_device(ptr noundef %6) #8, !dbg !2190
  ret void, !dbg !2191
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2192 dso_local void @module_put(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2193 dso_local void @put_device(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_of_led_get(ptr noundef %dev, i32 noundef %index) #0 align 16 !dbg !2194 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %led = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2198, metadata !DIExpression()), !dbg !2201
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #9, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %led, metadata !2200, metadata !DIExpression()), !dbg !2204
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2205
  %tobool = icmp ne ptr %0, null, !dbg !2205
  br i1 %tobool, label %if.end, label %if.then, !dbg !2207

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #8, !dbg !2208
  store ptr %call, ptr %retval, align 8, !dbg !2209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2209

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2210
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 23, !dbg !2211
  %2 = load ptr, ptr %of_node, align 8, !dbg !2211
  %3 = load i32, ptr %index.addr, align 4, !dbg !2212
  %call1 = call ptr @of_led_get(ptr noundef %2, i32 noundef %3) #8, !dbg !2213
  store ptr %call1, ptr %led, align 8, !dbg !2214
  %4 = load ptr, ptr %led, align 8, !dbg !2215
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %4) #8, !dbg !2217
  br i1 %call2, label %if.then3, label %if.end4, !dbg !2218

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %led, align 8, !dbg !2219
  store ptr %5, ptr %retval, align 8, !dbg !2220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2220

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2221
  %7 = load ptr, ptr %led, align 8, !dbg !2222
  %call5 = call ptr @__devm_led_get(ptr noundef %6, ptr noundef %7) #8, !dbg !2223
  store ptr %call5, ptr %retval, align 8, !dbg !2224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2224

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #9, !dbg !2225
  %8 = load ptr, ptr %retval, align 8, !dbg !2225
  ret ptr %8, !dbg !2225
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !2226 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2230, metadata !DIExpression()), !dbg !2231
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2232
  %1 = ptrtoint ptr %0 to i64, !dbg !2232
  %2 = inttoptr i64 %1 to ptr, !dbg !2232
  %3 = ptrtoint ptr %2 to i64, !dbg !2232
  %cmp = icmp uge i64 %3, -4095, !dbg !2232
  %lnot = xor i1 %cmp, true, !dbg !2232
  %lnot1 = xor i1 %lnot, true, !dbg !2232
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2232
  %conv = sext i32 %lnot.ext to i64, !dbg !2232
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2232
  %tobool = icmp ne i64 %expval, 0, !dbg !2232
  ret i1 %tobool, !dbg !2233
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__devm_led_get(ptr noundef %dev, ptr noundef %led) #0 align 16 !dbg !2234 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %led.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2238, metadata !DIExpression()), !dbg !2241
  store ptr %led, ptr %led.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led.addr, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #9, !dbg !2243
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !2240, metadata !DIExpression()), !dbg !2244
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_led_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.18) #8, !dbg !2245
  store ptr %call, ptr %dr, align 8, !dbg !2246
  %0 = load ptr, ptr %dr, align 8, !dbg !2247
  %tobool = icmp ne ptr %0, null, !dbg !2247
  br i1 %tobool, label %if.end, label %if.then, !dbg !2249

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %led.addr, align 8, !dbg !2250
  call void @led_put(ptr noundef %1) #8, !dbg !2252
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #8, !dbg !2253
  store ptr %call1, ptr %retval, align 8, !dbg !2254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2254

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %led.addr, align 8, !dbg !2255
  %3 = load ptr, ptr %dr, align 8, !dbg !2256
  store ptr %2, ptr %3, align 8, !dbg !2257
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2258
  %5 = load ptr, ptr %dr, align 8, !dbg !2259
  call void @devres_add(ptr noundef %4, ptr noundef %5) #8, !dbg !2260
  %6 = load ptr, ptr %led.addr, align 8, !dbg !2261
  store ptr %6, ptr %retval, align 8, !dbg !2262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2262

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #9, !dbg !2263
  %7 = load ptr, ptr %retval, align 8, !dbg !2263
  ret ptr %7, !dbg !2263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @led_get(ptr noundef %dev, ptr noundef %con_id) #0 align 16 !dbg !2264 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %con_id.addr = alloca ptr, align 8
  %lookup = alloca ptr, align 8
  %provider = alloca ptr, align 8
  %led_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2268, metadata !DIExpression()), !dbg !2279
  store ptr %con_id, ptr %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_id.addr, metadata !2269, metadata !DIExpression()), !dbg !2280
  call void @llvm.lifetime.start.p0(i64 8, ptr %lookup) #9, !dbg !2281
  call void @llvm.dbg.declare(metadata ptr %lookup, metadata !2270, metadata !DIExpression()), !dbg !2282
  call void @llvm.lifetime.start.p0(i64 8, ptr %provider) #9, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %provider, metadata !2271, metadata !DIExpression()), !dbg !2284
  store ptr null, ptr %provider, align 8, !dbg !2284
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_dev) #9, !dbg !2285
  call void @llvm.dbg.declare(metadata ptr %led_dev, metadata !2272, metadata !DIExpression()), !dbg !2286
  call void @mutex_lock(ptr noundef @leds_lookup_lock) #8, !dbg !2287
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2273, metadata !DIExpression()), !dbg !2288
  %0 = load ptr, ptr @leds_lookup_list, align 8, !dbg !2288
  store ptr %0, ptr %__mptr, align 8, !dbg !2288
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2288
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2288
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !2289
  %2 = load ptr, ptr %tmp, align 8, !dbg !2288
  store ptr %2, ptr %lookup, align 8, !dbg !2289
  br label %for.cond, !dbg !2289

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %lookup, align 8, !dbg !2290
  %list = getelementptr inbounds %struct.led_lookup_data, ptr %3, i32 0, i32 0, !dbg !2290
  %cmp = icmp eq ptr %list, @leds_lookup_list, !dbg !2290
  %lnot = xor i1 %cmp, true, !dbg !2290
  br i1 %lnot, label %for.body, label %for.end, !dbg !2289

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %lookup, align 8, !dbg !2291
  %dev_id = getelementptr inbounds %struct.led_lookup_data, ptr %4, i32 0, i32 2, !dbg !2294
  %5 = load ptr, ptr %dev_id, align 8, !dbg !2294
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2295
  %call = call ptr @dev_name(ptr noundef %6) #8, !dbg !2296
  %call1 = call i32 @strcmp(ptr noundef %5, ptr noundef %call) #8, !dbg !2297
  %tobool = icmp ne i32 %call1, 0, !dbg !2297
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2298

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %lookup, align 8, !dbg !2299
  %con_id2 = getelementptr inbounds %struct.led_lookup_data, ptr %7, i32 0, i32 3, !dbg !2300
  %8 = load ptr, ptr %con_id2, align 8, !dbg !2300
  %9 = load ptr, ptr %con_id.addr, align 8, !dbg !2301
  %call3 = call i32 @strcmp(ptr noundef %8, ptr noundef %9) #8, !dbg !2302
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2302
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2303

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %lookup, align 8, !dbg !2304
  %provider5 = getelementptr inbounds %struct.led_lookup_data, ptr %10, i32 0, i32 1, !dbg !2306
  %11 = load ptr, ptr %provider5, align 8, !dbg !2306
  %call6 = call ptr @kstrdup_const(ptr noundef %11, i32 noundef 3264) #8, !dbg !2307
  store ptr %call6, ptr %provider, align 8, !dbg !2308
  br label %for.end, !dbg !2309

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2310

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #9, !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !2276, metadata !DIExpression()), !dbg !2311
  %12 = load ptr, ptr %lookup, align 8, !dbg !2311
  %list8 = getelementptr inbounds %struct.led_lookup_data, ptr %12, i32 0, i32 0, !dbg !2311
  %next = getelementptr inbounds %struct.list_head, ptr %list8, i32 0, i32 0, !dbg !2311
  %13 = load ptr, ptr %next, align 8, !dbg !2311
  store ptr %13, ptr %__mptr7, align 8, !dbg !2311
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !2311
  %add.ptr10 = getelementptr i8, ptr %14, i64 0, !dbg !2311
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #9, !dbg !2290
  %15 = load ptr, ptr %tmp9, align 8, !dbg !2311
  store ptr %15, ptr %lookup, align 8, !dbg !2290
  br label %for.cond, !dbg !2290, !llvm.loop !2312

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @leds_lookup_lock) #8, !dbg !2316
  %16 = load ptr, ptr %provider, align 8, !dbg !2317
  %tobool11 = icmp ne ptr %16, null, !dbg !2317
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2319

if.then12:                                        ; preds = %for.end
  %call13 = call ptr @ERR_PTR(i64 noundef -2) #8, !dbg !2320
  store ptr %call13, ptr %retval, align 8, !dbg !2321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2321

if.end14:                                         ; preds = %for.end
  %17 = load ptr, ptr %provider, align 8, !dbg !2322
  %call15 = call ptr @class_find_device_by_name(ptr noundef @leds_class, ptr noundef %17) #8, !dbg !2323
  store ptr %call15, ptr %led_dev, align 8, !dbg !2324
  %18 = load ptr, ptr %provider, align 8, !dbg !2325
  call void @kfree_const(ptr noundef %18) #8, !dbg !2326
  %19 = load ptr, ptr %led_dev, align 8, !dbg !2327
  %call16 = call ptr @led_module_get(ptr noundef %19) #8, !dbg !2328
  store ptr %call16, ptr %retval, align 8, !dbg !2329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2329

cleanup:                                          ; preds = %if.end14, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_dev) #9, !dbg !2330
  call void @llvm.lifetime.end.p0(i64 8, ptr %provider) #9, !dbg !2330
  call void @llvm.lifetime.end.p0(i64 8, ptr %lookup) #9, !dbg !2330
  %20 = load ptr, ptr %retval, align 8, !dbg !2330
  ret ptr %20, !dbg !2330
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2331 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2335 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !2339 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2343, metadata !DIExpression()), !dbg !2344
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2345
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !2347
  %1 = load ptr, ptr %init_name, align 8, !dbg !2347
  %tobool = icmp ne ptr %1, null, !dbg !2345
  br i1 %tobool, label %if.then, label %if.end, !dbg !2348

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2349
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !2350
  %3 = load ptr, ptr %init_name1, align 8, !dbg !2350
  store ptr %3, ptr %retval, align 8, !dbg !2351
  br label %return, !dbg !2351

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2352
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2353
  %call = call ptr @kobject_name(ptr noundef %kobj) #8, !dbg !2354
  store ptr %call, ptr %retval, align 8, !dbg !2355
  br label %return, !dbg !2355

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2356
  ret ptr %5, !dbg !2356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2357 dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2360 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_find_device_by_name(ptr noundef %class, ptr noundef %name) #4 align 16 !dbg !2361 {
entry:
  %class.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !2365, metadata !DIExpression()), !dbg !2367
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2366, metadata !DIExpression()), !dbg !2368
  %0 = load ptr, ptr %class.addr, align 8, !dbg !2369
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2370
  %call = call ptr @class_find_device(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef @device_match_name) #8, !dbg !2371
  ret ptr %call, !dbg !2372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2373 dso_local void @kfree_const(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_led_get(ptr noundef %dev, ptr noundef %con_id) #0 align 16 !dbg !2376 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %con_id.addr = alloca ptr, align 8
  %led = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2378, metadata !DIExpression()), !dbg !2381
  store ptr %con_id, ptr %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con_id.addr, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #9, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %led, metadata !2380, metadata !DIExpression()), !dbg !2384
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2385
  %1 = load ptr, ptr %con_id.addr, align 8, !dbg !2386
  %call = call ptr @led_get(ptr noundef %0, ptr noundef %1) #8, !dbg !2387
  store ptr %call, ptr %led, align 8, !dbg !2388
  %2 = load ptr, ptr %led, align 8, !dbg !2389
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #8, !dbg !2391
  br i1 %call1, label %if.then, label %if.end, !dbg !2392

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %led, align 8, !dbg !2393
  store ptr %3, ptr %retval, align 8, !dbg !2394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2394

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2395
  %5 = load ptr, ptr %led, align 8, !dbg !2396
  %call2 = call ptr @__devm_led_get(ptr noundef %4, ptr noundef %5) #8, !dbg !2397
  store ptr %call2, ptr %retval, align 8, !dbg !2398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2398

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #9, !dbg !2399
  %6 = load ptr, ptr %retval, align 8, !dbg !2399
  ret ptr %6, !dbg !2399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_add_lookup(ptr noundef %led_lookup) #0 align 16 !dbg !2400 {
entry:
  %led_lookup.addr = alloca ptr, align 8
  store ptr %led_lookup, ptr %led_lookup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_lookup.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  call void @mutex_lock(ptr noundef @leds_lookup_lock) #8, !dbg !2406
  %0 = load ptr, ptr %led_lookup.addr, align 8, !dbg !2407
  %list = getelementptr inbounds %struct.led_lookup_data, ptr %0, i32 0, i32 0, !dbg !2408
  call void @list_add_tail(ptr noundef %list, ptr noundef @leds_lookup_list) #8, !dbg !2409
  call void @mutex_unlock(ptr noundef @leds_lookup_lock) #8, !dbg !2410
  ret void, !dbg !2411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !2412 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2417, metadata !DIExpression()), !dbg !2419
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2418, metadata !DIExpression()), !dbg !2420
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2421
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2422
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2423
  %2 = load ptr, ptr %prev, align 8, !dbg !2423
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2424
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #8, !dbg !2425
  ret void, !dbg !2426
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_remove_lookup(ptr noundef %led_lookup) #0 align 16 !dbg !2427 {
entry:
  %led_lookup.addr = alloca ptr, align 8
  store ptr %led_lookup, ptr %led_lookup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_lookup.addr, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @mutex_lock(ptr noundef @leds_lookup_lock) #8, !dbg !2431
  %0 = load ptr, ptr %led_lookup.addr, align 8, !dbg !2432
  %list = getelementptr inbounds %struct.led_lookup_data, ptr %0, i32 0, i32 0, !dbg !2433
  call void @list_del(ptr noundef %list) #8, !dbg !2434
  call void @mutex_unlock(ptr noundef @leds_lookup_lock) #8, !dbg !2435
  ret void, !dbg !2436
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !2437 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2441, metadata !DIExpression()), !dbg !2442
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2443
  call void @__list_del_entry(ptr noundef %0) #8, !dbg !2444
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2445
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2446
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2447
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2448
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2449
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2450
  ret void, !dbg !2451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_of_led_get_optional(ptr noundef %dev, i32 noundef %index) #0 align 16 !dbg !2452 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %led = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2454, metadata !DIExpression()), !dbg !2457
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #9, !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %led, metadata !2456, metadata !DIExpression()), !dbg !2460
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2461
  %1 = load i32, ptr %index.addr, align 4, !dbg !2462
  %call = call ptr @devm_of_led_get(ptr noundef %0, i32 noundef %1) #8, !dbg !2463
  store ptr %call, ptr %led, align 8, !dbg !2464
  %2 = load ptr, ptr %led, align 8, !dbg !2465
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #8, !dbg !2467
  br i1 %call1, label %land.lhs.true, label %if.end, !dbg !2468

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %led, align 8, !dbg !2469
  %call2 = call i64 @PTR_ERR(ptr noundef %3) #8, !dbg !2470
  %cmp = icmp eq i64 %call2, -2, !dbg !2471
  br i1 %cmp, label %if.then, label %if.end, !dbg !2472

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !2473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2473

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %led, align 8, !dbg !2474
  store ptr %4, ptr %retval, align 8, !dbg !2475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2475

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #9, !dbg !2476
  %5 = load ptr, ptr %retval, align 8, !dbg !2476
  ret ptr %5, !dbg !2476
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !2477 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2481, metadata !DIExpression()), !dbg !2482
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2483
  %1 = ptrtoint ptr %0 to i64, !dbg !2484
  ret i64 %1, !dbg !2485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @led_classdev_register_ext(ptr noundef %parent, ptr noundef %led_cdev, ptr noundef %init_data) #0 align 16 !dbg !1869 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %led_cdev.addr = alloca ptr, align 8
  %init_data.addr = alloca ptr, align 8
  %composed_name = alloca [64 x i8], align 16
  %final_name = alloca [64 x i8], align 16
  %proposed_name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1880, metadata !DIExpression()), !dbg !2486
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !1881, metadata !DIExpression()), !dbg !2487
  store ptr %init_data, ptr %init_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %init_data.addr, metadata !1882, metadata !DIExpression()), !dbg !2488
  call void @llvm.lifetime.start.p0(i64 64, ptr %composed_name) #9, !dbg !2489
  call void @llvm.dbg.declare(metadata ptr %composed_name, metadata !1883, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.start.p0(i64 64, ptr %final_name) #9, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %final_name, metadata !1885, metadata !DIExpression()), !dbg !2492
  call void @llvm.lifetime.start.p0(i64 8, ptr %proposed_name) #9, !dbg !2493
  call void @llvm.dbg.declare(metadata ptr %proposed_name, metadata !1886, metadata !DIExpression()), !dbg !2494
  %arraydecay = getelementptr inbounds [64 x i8], ptr %composed_name, i64 0, i64 0, !dbg !2495
  store ptr %arraydecay, ptr %proposed_name, align 8, !dbg !2494
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1887, metadata !DIExpression()), !dbg !2497
  %0 = load ptr, ptr %init_data.addr, align 8, !dbg !2498
  %tobool = icmp ne ptr %0, null, !dbg !2498
  br i1 %tobool, label %if.then, label %if.else, !dbg !2500

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %init_data.addr, align 8, !dbg !2501
  %devname_mandatory = getelementptr inbounds %struct.led_init_data, ptr %1, i32 0, i32 3, !dbg !2504
  %2 = load i8, ptr %devname_mandatory, align 8, !dbg !2504, !range !2505, !noundef !385
  %tobool1 = trunc i8 %2 to i1, !dbg !2504
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !2506

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %init_data.addr, align 8, !dbg !2507
  %devicename = getelementptr inbounds %struct.led_init_data, ptr %3, i32 0, i32 2, !dbg !2508
  %4 = load ptr, ptr %devicename, align 8, !dbg !2508
  %tobool2 = icmp ne ptr %4, null, !dbg !2507
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2509

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !2510

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !2513

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2513

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !2510
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef @.str.1) #10, !dbg !2510
  store i32 -22, ptr %retval, align 4, !dbg !2515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2515

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !2516
  %7 = load ptr, ptr %init_data.addr, align 8, !dbg !2517
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %composed_name, i64 0, i64 0, !dbg !2518
  %call = call i32 @led_compose_name(ptr noundef %6, ptr noundef %7, ptr noundef %arraydecay4) #8, !dbg !2519
  store i32 %call, ptr %ret, align 4, !dbg !2520
  %8 = load i32, ptr %ret, align 4, !dbg !2521
  %cmp = icmp slt i32 %8, 0, !dbg !2523
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2524

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4, !dbg !2525
  store i32 %9, ptr %retval, align 4, !dbg !2526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2526

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %init_data.addr, align 8, !dbg !2527
  %fwnode = getelementptr inbounds %struct.led_init_data, ptr %10, i32 0, i32 0, !dbg !2529
  %11 = load ptr, ptr %fwnode, align 8, !dbg !2529
  %tobool7 = icmp ne ptr %11, null, !dbg !2527
  br i1 %tobool7, label %if.then8, label %if.end24, !dbg !2530

if.then8:                                         ; preds = %if.end6
  %12 = load ptr, ptr %init_data.addr, align 8, !dbg !2531
  %fwnode9 = getelementptr inbounds %struct.led_init_data, ptr %12, i32 0, i32 0, !dbg !2533
  %13 = load ptr, ptr %fwnode9, align 8, !dbg !2533
  %14 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2534
  %default_trigger = getelementptr inbounds %struct.led_classdev, ptr %14, i32 0, i32 15, !dbg !2535
  %call10 = call i32 @fwnode_property_read_string(ptr noundef %13, ptr noundef @.str.2, ptr noundef %default_trigger) #8, !dbg !2536
  %15 = load ptr, ptr %init_data.addr, align 8, !dbg !2537
  %fwnode11 = getelementptr inbounds %struct.led_init_data, ptr %15, i32 0, i32 0, !dbg !2539
  %16 = load ptr, ptr %fwnode11, align 8, !dbg !2539
  %call12 = call zeroext i1 @fwnode_property_present(ptr noundef %16, ptr noundef @.str.3) #8, !dbg !2540
  br i1 %call12, label %if.then13, label %if.end15, !dbg !2541

if.then13:                                        ; preds = %if.then8
  %17 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2542
  %flags = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 4, !dbg !2543
  %18 = load i32, ptr %flags, align 4, !dbg !2544
  %conv = sext i32 %18 to i64, !dbg !2544
  %or = or i64 %conv, 4194304, !dbg !2544
  %conv14 = trunc i64 %or to i32, !dbg !2544
  store i32 %conv14, ptr %flags, align 4, !dbg !2544
  br label %if.end15, !dbg !2542

if.end15:                                         ; preds = %if.then13, %if.then8
  %19 = load ptr, ptr %init_data.addr, align 8, !dbg !2545
  %fwnode16 = getelementptr inbounds %struct.led_init_data, ptr %19, i32 0, i32 0, !dbg !2546
  %20 = load ptr, ptr %fwnode16, align 8, !dbg !2546
  %21 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2547
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %21, i32 0, i32 2, !dbg !2548
  %call17 = call i32 @fwnode_property_read_u32(ptr noundef %20, ptr noundef @.str.4, ptr noundef %max_brightness) #8, !dbg !2549
  %22 = load ptr, ptr %init_data.addr, align 8, !dbg !2550
  %fwnode18 = getelementptr inbounds %struct.led_init_data, ptr %22, i32 0, i32 0, !dbg !2552
  %23 = load ptr, ptr %fwnode18, align 8, !dbg !2552
  %call19 = call zeroext i1 @fwnode_property_present(ptr noundef %23, ptr noundef @.str.5) #8, !dbg !2553
  br i1 %call19, label %if.then20, label %if.end23, !dbg !2554

if.then20:                                        ; preds = %if.end15
  %24 = load ptr, ptr %init_data.addr, align 8, !dbg !2555
  %fwnode21 = getelementptr inbounds %struct.led_init_data, ptr %24, i32 0, i32 0, !dbg !2556
  %25 = load ptr, ptr %fwnode21, align 8, !dbg !2556
  %26 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2557
  %color = getelementptr inbounds %struct.led_classdev, ptr %26, i32 0, i32 3, !dbg !2558
  %call22 = call i32 @fwnode_property_read_u32(ptr noundef %25, ptr noundef @.str.5, ptr noundef %color) #8, !dbg !2559
  br label %if.end23, !dbg !2559

if.end23:                                         ; preds = %if.then20, %if.end15
  br label %if.end24, !dbg !2560

if.end24:                                         ; preds = %if.end23, %if.end6
  br label %if.end25, !dbg !2561

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2562
  %name = getelementptr inbounds %struct.led_classdev, ptr %27, i32 0, i32 0, !dbg !2564
  %28 = load ptr, ptr %name, align 8, !dbg !2564
  store ptr %28, ptr %proposed_name, align 8, !dbg !2565
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end24
  %29 = load ptr, ptr %proposed_name, align 8, !dbg !2566
  %arraydecay26 = getelementptr inbounds [64 x i8], ptr %final_name, i64 0, i64 0, !dbg !2567
  %call27 = call i32 @led_classdev_next_name(ptr noundef %29, ptr noundef %arraydecay26, i64 noundef 64) #8, !dbg !2568
  store i32 %call27, ptr %ret, align 4, !dbg !2569
  %30 = load i32, ptr %ret, align 4, !dbg !2570
  %cmp28 = icmp slt i32 %30, 0, !dbg !2572
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !2573

if.then30:                                        ; preds = %if.end25
  %31 = load i32, ptr %ret, align 4, !dbg !2574
  store i32 %31, ptr %retval, align 4, !dbg !2575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2575

if.end31:                                         ; preds = %if.end25
  %32 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2576
  %color32 = getelementptr inbounds %struct.led_classdev, ptr %32, i32 0, i32 3, !dbg !2578
  %33 = load i32, ptr %color32, align 8, !dbg !2578
  %cmp33 = icmp uge i32 %33, 15, !dbg !2579
  br i1 %cmp33, label %if.then35, label %if.end40, !dbg !2580

if.then35:                                        ; preds = %if.end31
  br label %do.body36, !dbg !2581

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !2583

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !2583

do.end38:                                         ; preds = %do.cond37
  %34 = load ptr, ptr %parent.addr, align 8, !dbg !2581
  %arraydecay39 = getelementptr inbounds [64 x i8], ptr %final_name, i64 0, i64 0, !dbg !2581
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef @.str.6, ptr noundef %arraydecay39) #10, !dbg !2581
  br label %if.end40, !dbg !2585

if.end40:                                         ; preds = %do.end38, %if.end31
  br label %do.body41, !dbg !2586

do.body41:                                        ; preds = %if.end40
  %35 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2587
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %35, i32 0, i32 37, !dbg !2587
  call void @__mutex_init(ptr noundef %led_access, ptr noundef @.str.7, ptr noundef @led_classdev_register_ext.__key) #8, !dbg !2587
  br label %do.cond42, !dbg !2587

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !2587

do.end43:                                         ; preds = %do.cond42
  %36 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2589
  %led_access44 = getelementptr inbounds %struct.led_classdev, ptr %36, i32 0, i32 37, !dbg !2590
  call void @mutex_lock(ptr noundef %led_access44) #8, !dbg !2591
  %37 = load ptr, ptr %parent.addr, align 8, !dbg !2592
  %38 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2593
  %39 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2594
  %groups = getelementptr inbounds %struct.led_classdev, ptr %39, i32 0, i32 13, !dbg !2595
  %40 = load ptr, ptr %groups, align 8, !dbg !2595
  %arraydecay45 = getelementptr inbounds [64 x i8], ptr %final_name, i64 0, i64 0, !dbg !2596
  %call46 = call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef @leds_class, ptr noundef %37, i32 noundef 0, ptr noundef %38, ptr noundef %40, ptr noundef @.str.8, ptr noundef %arraydecay45) #8, !dbg !2597
  %41 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2598
  %dev = getelementptr inbounds %struct.led_classdev, ptr %41, i32 0, i32 12, !dbg !2599
  store ptr %call46, ptr %dev, align 8, !dbg !2600
  %42 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2601
  %dev47 = getelementptr inbounds %struct.led_classdev, ptr %42, i32 0, i32 12, !dbg !2603
  %43 = load ptr, ptr %dev47, align 8, !dbg !2603
  %call48 = call zeroext i1 @IS_ERR(ptr noundef %43) #8, !dbg !2604
  br i1 %call48, label %if.then49, label %if.end54, !dbg !2605

if.then49:                                        ; preds = %do.end43
  %44 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2606
  %led_access50 = getelementptr inbounds %struct.led_classdev, ptr %44, i32 0, i32 37, !dbg !2608
  call void @mutex_unlock(ptr noundef %led_access50) #8, !dbg !2609
  %45 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2610
  %dev51 = getelementptr inbounds %struct.led_classdev, ptr %45, i32 0, i32 12, !dbg !2611
  %46 = load ptr, ptr %dev51, align 8, !dbg !2611
  %call52 = call i64 @PTR_ERR(ptr noundef %46) #8, !dbg !2612
  %conv53 = trunc i64 %call52 to i32, !dbg !2612
  store i32 %conv53, ptr %retval, align 4, !dbg !2613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2613

if.end54:                                         ; preds = %do.end43
  %47 = load ptr, ptr %init_data.addr, align 8, !dbg !2614
  %tobool55 = icmp ne ptr %47, null, !dbg !2614
  br i1 %tobool55, label %land.lhs.true56, label %if.end62, !dbg !2616

land.lhs.true56:                                  ; preds = %if.end54
  %48 = load ptr, ptr %init_data.addr, align 8, !dbg !2617
  %fwnode57 = getelementptr inbounds %struct.led_init_data, ptr %48, i32 0, i32 0, !dbg !2618
  %49 = load ptr, ptr %fwnode57, align 8, !dbg !2618
  %tobool58 = icmp ne ptr %49, null, !dbg !2617
  br i1 %tobool58, label %if.then59, label %if.end62, !dbg !2619

if.then59:                                        ; preds = %land.lhs.true56
  %50 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2620
  %dev60 = getelementptr inbounds %struct.led_classdev, ptr %50, i32 0, i32 12, !dbg !2621
  %51 = load ptr, ptr %dev60, align 8, !dbg !2621
  %52 = load ptr, ptr %init_data.addr, align 8, !dbg !2622
  %fwnode61 = getelementptr inbounds %struct.led_init_data, ptr %52, i32 0, i32 0, !dbg !2623
  %53 = load ptr, ptr %fwnode61, align 8, !dbg !2623
  call void @device_set_node(ptr noundef %51, ptr noundef %53) #8, !dbg !2624
  br label %if.end62, !dbg !2624

if.end62:                                         ; preds = %if.then59, %land.lhs.true56, %if.end54
  %54 = load i32, ptr %ret, align 4, !dbg !2625
  %tobool63 = icmp ne i32 %54, 0, !dbg !2625
  br i1 %tobool63, label %if.then64, label %if.end70, !dbg !2627

if.then64:                                        ; preds = %if.end62
  br label %do.body65, !dbg !2628

do.body65:                                        ; preds = %if.then64
  br label %do.cond66, !dbg !2630

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !2630

do.end67:                                         ; preds = %do.cond66
  %55 = load ptr, ptr %parent.addr, align 8, !dbg !2628
  %56 = load ptr, ptr %proposed_name, align 8, !dbg !2628
  %57 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2628
  %dev68 = getelementptr inbounds %struct.led_classdev, ptr %57, i32 0, i32 12, !dbg !2628
  %58 = load ptr, ptr %dev68, align 8, !dbg !2628
  %call69 = call ptr @dev_name(ptr noundef %58) #8, !dbg !2628
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef @.str.9, ptr noundef %56, ptr noundef %call69) #10, !dbg !2628
  br label %if.end70, !dbg !2632

if.end70:                                         ; preds = %do.end67, %if.end62
  %59 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2633
  %flags71 = getelementptr inbounds %struct.led_classdev, ptr %59, i32 0, i32 4, !dbg !2635
  %60 = load i32, ptr %flags71, align 4, !dbg !2635
  %conv72 = sext i32 %60 to i64, !dbg !2633
  %and = and i64 %conv72, 2097152, !dbg !2636
  %tobool73 = icmp ne i64 %and, 0, !dbg !2636
  br i1 %tobool73, label %if.then74, label %if.end82, !dbg !2637

if.then74:                                        ; preds = %if.end70
  %61 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2638
  %call75 = call i32 @led_add_brightness_hw_changed(ptr noundef %61) #8, !dbg !2640
  store i32 %call75, ptr %ret, align 4, !dbg !2641
  %62 = load i32, ptr %ret, align 4, !dbg !2642
  %tobool76 = icmp ne i32 %62, 0, !dbg !2642
  br i1 %tobool76, label %if.then77, label %if.end81, !dbg !2644

if.then77:                                        ; preds = %if.then74
  %63 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2645
  %dev78 = getelementptr inbounds %struct.led_classdev, ptr %63, i32 0, i32 12, !dbg !2647
  %64 = load ptr, ptr %dev78, align 8, !dbg !2647
  call void @device_unregister(ptr noundef %64) #8, !dbg !2648
  %65 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2649
  %dev79 = getelementptr inbounds %struct.led_classdev, ptr %65, i32 0, i32 12, !dbg !2650
  store ptr null, ptr %dev79, align 8, !dbg !2651
  %66 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2652
  %led_access80 = getelementptr inbounds %struct.led_classdev, ptr %66, i32 0, i32 37, !dbg !2653
  call void @mutex_unlock(ptr noundef %led_access80) #8, !dbg !2654
  %67 = load i32, ptr %ret, align 4, !dbg !2655
  store i32 %67, ptr %retval, align 4, !dbg !2656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2656

if.end81:                                         ; preds = %if.then74
  br label %if.end82, !dbg !2657

if.end82:                                         ; preds = %if.end81, %if.end70
  %68 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2658
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %68, i32 0, i32 5, !dbg !2659
  store i64 0, ptr %work_flags, align 8, !dbg !2660
  br label %do.body83, !dbg !2661

do.body83:                                        ; preds = %if.end82
  %69 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2662
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %69, i32 0, i32 26, !dbg !2662
  call void @__init_rwsem(ptr noundef %trigger_lock, ptr noundef @.str.11, ptr noundef @led_classdev_register_ext.__key.10) #8, !dbg !2662
  br label %do.cond84, !dbg !2662

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !2662

do.end85:                                         ; preds = %do.cond84
  call void @down_write(ptr noundef @leds_list_lock) #8, !dbg !2664
  %70 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2665
  %node = getelementptr inbounds %struct.led_classdev, ptr %70, i32 0, i32 14, !dbg !2666
  call void @list_add_tail(ptr noundef %node, ptr noundef @leds_list) #8, !dbg !2667
  call void @up_write(ptr noundef @leds_list_lock) #8, !dbg !2668
  %71 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2669
  %max_brightness86 = getelementptr inbounds %struct.led_classdev, ptr %71, i32 0, i32 2, !dbg !2671
  %72 = load i32, ptr %max_brightness86, align 4, !dbg !2671
  %tobool87 = icmp ne i32 %72, 0, !dbg !2669
  br i1 %tobool87, label %if.end90, label %if.then88, !dbg !2672

if.then88:                                        ; preds = %do.end85
  %73 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2673
  %max_brightness89 = getelementptr inbounds %struct.led_classdev, ptr %73, i32 0, i32 2, !dbg !2674
  store i32 255, ptr %max_brightness89, align 4, !dbg !2675
  br label %if.end90, !dbg !2673

if.end90:                                         ; preds = %if.then88, %do.end85
  %74 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2676
  %call91 = call i32 @led_update_brightness(ptr noundef %74) #8, !dbg !2677
  %75 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2678
  call void @led_init_core(ptr noundef %75) #8, !dbg !2679
  %76 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2680
  call void @led_trigger_set_default(ptr noundef %76) #8, !dbg !2681
  %77 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2682
  %led_access92 = getelementptr inbounds %struct.led_classdev, ptr %77, i32 0, i32 37, !dbg !2683
  call void @mutex_unlock(ptr noundef %led_access92) #8, !dbg !2684
  store i32 0, ptr %retval, align 4, !dbg !2685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2685

cleanup:                                          ; preds = %if.end90, %if.then77, %if.then49, %if.then30, %if.then5, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr %proposed_name) #9, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 64, ptr %final_name) #9, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 64, ptr %composed_name) #9, !dbg !2686
  %78 = load i32, ptr %retval, align 4, !dbg !2686
  ret i32 %78, !dbg !2686
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2687 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2691 dso_local i32 @led_compose_name(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2694 dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2697 dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fwnode_property_read_u32(ptr noundef %fwnode, ptr noundef %propname, ptr noundef %val) #4 align 16 !dbg !2698 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !2703, metadata !DIExpression()), !dbg !2706
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !2704, metadata !DIExpression()), !dbg !2707
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2705, metadata !DIExpression()), !dbg !2708
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !2709
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !2710
  %2 = load ptr, ptr %val.addr, align 8, !dbg !2711
  %call = call i32 @fwnode_property_read_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 1) #8, !dbg !2712
  ret i32 %call, !dbg !2713
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_classdev_next_name(ptr noundef %init_name, ptr noundef %name, i64 noundef %len) #0 align 16 !dbg !2714 {
entry:
  %retval = alloca i32, align 4
  %init_name.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %init_name, ptr %init_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %init_name.addr, metadata !2718, metadata !DIExpression()), !dbg !2724
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2719, metadata !DIExpression()), !dbg !2725
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !2727
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2721, metadata !DIExpression()), !dbg !2728
  store i32 0, ptr %i, align 4, !dbg !2728
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !2729
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2722, metadata !DIExpression()), !dbg !2730
  store i32 0, ptr %ret, align 4, !dbg !2730
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !2731
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2723, metadata !DIExpression()), !dbg !2732
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2733
  %1 = load ptr, ptr %init_name.addr, align 8, !dbg !2734
  %2 = load i64, ptr %len.addr, align 8, !dbg !2735
  %call = call i64 @strscpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #8, !dbg !2736
  br label %while.cond, !dbg !2737

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %ret, align 4, !dbg !2738
  %conv = sext i32 %3 to i64, !dbg !2738
  %4 = load i64, ptr %len.addr, align 8, !dbg !2739
  %cmp = icmp ult i64 %conv, %4, !dbg !2740
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2741

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %name.addr, align 8, !dbg !2742
  %call2 = call ptr @class_find_device_by_name(ptr noundef @leds_class, ptr noundef %5) #8, !dbg !2743
  store ptr %call2, ptr %dev, align 8, !dbg !2744
  %tobool = icmp ne ptr %call2, null, !dbg !2741
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !2745
  br i1 %6, label %while.body, label %while.end, !dbg !2737

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %dev, align 8, !dbg !2746
  call void @put_device(ptr noundef %7) #8, !dbg !2748
  %8 = load ptr, ptr %name.addr, align 8, !dbg !2749
  %9 = load i64, ptr %len.addr, align 8, !dbg !2750
  %10 = load ptr, ptr %init_name.addr, align 8, !dbg !2751
  %11 = load i32, ptr %i, align 4, !dbg !2752
  %inc = add i32 %11, 1, !dbg !2752
  store i32 %inc, ptr %i, align 4, !dbg !2752
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %8, i64 noundef %9, ptr noundef @.str.19, ptr noundef %10, i32 noundef %inc) #8, !dbg !2753
  store i32 %call3, ptr %ret, align 4, !dbg !2754
  br label %while.cond, !dbg !2737, !llvm.loop !2755

while.end:                                        ; preds = %land.end
  %12 = load i32, ptr %ret, align 4, !dbg !2757
  %conv4 = sext i32 %12 to i64, !dbg !2757
  %13 = load i64, ptr %len.addr, align 8, !dbg !2759
  %cmp5 = icmp uge i64 %conv4, %13, !dbg !2760
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2761

if.then:                                          ; preds = %while.end
  store i32 -12, ptr %retval, align 4, !dbg !2762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2762

if.end:                                           ; preds = %while.end
  %14 = load i32, ptr %i, align 4, !dbg !2763
  store i32 %14, ptr %retval, align 4, !dbg !2764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2764

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !2765
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !2765
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2765
  %15 = load i32, ptr %retval, align 4, !dbg !2765
  ret i32 %15, !dbg !2765
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2766 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2767 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2771 dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2774 dso_local void @device_set_node(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_add_brightness_hw_changed(ptr noundef %led_cdev) #0 align 16 !dbg !2777 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2779, metadata !DIExpression()), !dbg !2780
  ret i32 0, !dbg !2781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2782 dso_local void @device_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2783 dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2787 dso_local void @down_write(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2790 dso_local void @up_write(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2791 dso_local i32 @led_update_brightness(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2792 dso_local void @led_init_core(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2793 dso_local void @led_trigger_set_default(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_classdev_unregister(ptr noundef %led_cdev) #0 align 16 !dbg !2794 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2798
  %dev = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 12, !dbg !2800
  %1 = load ptr, ptr %dev, align 8, !dbg !2800
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %1) #8, !dbg !2801
  br i1 %call, label %if.then, label %if.end, !dbg !2802

if.then:                                          ; preds = %entry
  br label %return, !dbg !2803

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2804
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 26, !dbg !2805
  call void @down_write(ptr noundef %trigger_lock) #8, !dbg !2806
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2807
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 27, !dbg !2809
  %4 = load ptr, ptr %trigger, align 8, !dbg !2809
  %tobool = icmp ne ptr %4, null, !dbg !2807
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !2810

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2811
  %call2 = call i32 @led_trigger_set(ptr noundef %5, ptr noundef null) #8, !dbg !2812
  br label %if.end3, !dbg !2812

if.end3:                                          ; preds = %if.then1, %if.end
  %6 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2813
  %trigger_lock4 = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 26, !dbg !2814
  call void @up_write(ptr noundef %trigger_lock4) #8, !dbg !2815
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2816
  %flags = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 4, !dbg !2817
  %8 = load i32, ptr %flags, align 4, !dbg !2818
  %conv = sext i32 %8 to i64, !dbg !2818
  %or = or i64 %conv, 2, !dbg !2818
  %conv5 = trunc i64 %or to i32, !dbg !2818
  store i32 %conv5, ptr %flags, align 4, !dbg !2818
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2819
  call void @led_stop_software_blink(ptr noundef %9) #8, !dbg !2820
  %10 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2821
  %flags6 = getelementptr inbounds %struct.led_classdev, ptr %10, i32 0, i32 4, !dbg !2823
  %11 = load i32, ptr %flags6, align 4, !dbg !2823
  %conv7 = sext i32 %11 to i64, !dbg !2821
  %and = and i64 %conv7, 4194304, !dbg !2824
  %tobool8 = icmp ne i64 %and, 0, !dbg !2824
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2825

if.then9:                                         ; preds = %if.end3
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2826
  call void @led_set_brightness(ptr noundef %12, i32 noundef 0) #8, !dbg !2827
  br label %if.end10, !dbg !2827

if.end10:                                         ; preds = %if.then9, %if.end3
  %13 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2828
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 22, !dbg !2829
  %call11 = call zeroext i1 @flush_work(ptr noundef %set_brightness_work) #8, !dbg !2830
  %14 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2831
  %flags12 = getelementptr inbounds %struct.led_classdev, ptr %14, i32 0, i32 4, !dbg !2833
  %15 = load i32, ptr %flags12, align 4, !dbg !2833
  %conv13 = sext i32 %15 to i64, !dbg !2831
  %and14 = and i64 %conv13, 2097152, !dbg !2834
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2834
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2835

if.then16:                                        ; preds = %if.end10
  %16 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2836
  call void @led_remove_brightness_hw_changed(ptr noundef %16) #8, !dbg !2837
  br label %if.end17, !dbg !2837

if.end17:                                         ; preds = %if.then16, %if.end10
  %17 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2838
  %dev18 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 12, !dbg !2839
  %18 = load ptr, ptr %dev18, align 8, !dbg !2839
  call void @device_unregister(ptr noundef %18) #8, !dbg !2840
  call void @down_write(ptr noundef @leds_list_lock) #8, !dbg !2841
  %19 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2842
  %node = getelementptr inbounds %struct.led_classdev, ptr %19, i32 0, i32 14, !dbg !2843
  call void @list_del(ptr noundef %node) #8, !dbg !2844
  call void @up_write(ptr noundef @leds_list_lock) #8, !dbg !2845
  %20 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2846
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %20, i32 0, i32 37, !dbg !2847
  call void @mutex_destroy(ptr noundef %led_access) #8, !dbg !2848
  br label %return, !dbg !2849

return:                                           ; preds = %if.end17, %if.then
  ret void, !dbg !2849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !2850 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2852, metadata !DIExpression()), !dbg !2853
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2854
  %tobool = icmp ne ptr %0, null, !dbg !2854
  %lnot = xor i1 %tobool, true, !dbg !2854
  %lnot1 = xor i1 %lnot, true, !dbg !2854
  %lnot2 = xor i1 %lnot1, true, !dbg !2854
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2854
  %conv = sext i32 %lnot.ext to i64, !dbg !2854
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2854
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2854
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2855

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2856
  %2 = ptrtoint ptr %1 to i64, !dbg !2856
  %3 = inttoptr i64 %2 to ptr, !dbg !2856
  %4 = ptrtoint ptr %3 to i64, !dbg !2856
  %cmp = icmp uge i64 %4, -4095, !dbg !2856
  %lnot5 = xor i1 %cmp, true, !dbg !2856
  %lnot7 = xor i1 %lnot5, true, !dbg !2856
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2856
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2856
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !2856
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !2855
  br label %lor.end, !dbg !2855

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !2857
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2858 dso_local i32 @led_trigger_set(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2861 dso_local void @led_stop_software_blink(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2862 dso_local void @led_set_brightness(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @led_remove_brightness_hw_changed(ptr noundef %led_cdev) #0 align 16 !dbg !2863 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  ret void, !dbg !2867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mutex_destroy(ptr noundef %lock) #4 align 16 !dbg !2868 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  ret void, !dbg !2872
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_led_classdev_register_ext(ptr noundef %parent, ptr noundef %led_cdev, ptr noundef %init_data) #0 align 16 !dbg !2873 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %led_cdev.addr = alloca ptr, align 8
  %init_data.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2875, metadata !DIExpression()), !dbg !2880
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2876, metadata !DIExpression()), !dbg !2881
  store ptr %init_data, ptr %init_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %init_data.addr, metadata !2877, metadata !DIExpression()), !dbg !2882
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #9, !dbg !2883
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !2878, metadata !DIExpression()), !dbg !2884
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #9, !dbg !2885
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2879, metadata !DIExpression()), !dbg !2886
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_led_classdev_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.12) #8, !dbg !2887
  store ptr %call, ptr %dr, align 8, !dbg !2888
  %0 = load ptr, ptr %dr, align 8, !dbg !2889
  %tobool = icmp ne ptr %0, null, !dbg !2889
  br i1 %tobool, label %if.end, label %if.then, !dbg !2891

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2892

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !2893
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2894
  %3 = load ptr, ptr %init_data.addr, align 8, !dbg !2895
  %call1 = call i32 @led_classdev_register_ext(ptr noundef %1, ptr noundef %2, ptr noundef %3) #8, !dbg !2896
  store i32 %call1, ptr %rc, align 4, !dbg !2897
  %4 = load i32, ptr %rc, align 4, !dbg !2898
  %tobool2 = icmp ne i32 %4, 0, !dbg !2898
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2900

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %dr, align 8, !dbg !2901
  call void @devres_free(ptr noundef %5) #8, !dbg !2903
  %6 = load i32, ptr %rc, align 4, !dbg !2904
  store i32 %6, ptr %retval, align 4, !dbg !2905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2905

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2906
  %8 = load ptr, ptr %dr, align 8, !dbg !2907
  store ptr %7, ptr %8, align 8, !dbg !2908
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !2909
  %10 = load ptr, ptr %dr, align 8, !dbg !2910
  call void @devres_add(ptr noundef %9, ptr noundef %10) #8, !dbg !2911
  store i32 0, ptr %retval, align 4, !dbg !2912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2912

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #9, !dbg !2913
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #9, !dbg !2913
  %11 = load i32, ptr %retval, align 4, !dbg !2913
  ret i32 %11, !dbg !2913
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2914 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_led_classdev_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !2921 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2923, metadata !DIExpression()), !dbg !2925
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2924, metadata !DIExpression()), !dbg !2926
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2927
  %1 = load ptr, ptr %0, align 8, !dbg !2928
  call void @led_classdev_unregister(ptr noundef %1) #8, !dbg !2929
  ret void, !dbg !2930
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2931 dso_local void @devres_free(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2932 dso_local void @devres_add(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_led_classdev_unregister(ptr noundef %dev, ptr noundef %led_cdev) #0 align 16 !dbg !2933 {
entry:
  %dev.addr = alloca ptr, align 8
  %led_cdev.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2937, metadata !DIExpression()), !dbg !2944
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2938, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2939, metadata !DIExpression()), !dbg !2946
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2946
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2946
  %call = call i32 @devres_release(ptr noundef %0, ptr noundef @devm_led_classdev_release, ptr noundef @devm_led_classdev_match, ptr noundef %1) #8, !dbg !2946
  %tobool = icmp ne i32 %call, 0, !dbg !2946
  %lnot = xor i1 %tobool, true, !dbg !2946
  %lnot1 = xor i1 %lnot, true, !dbg !2946
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2946
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2946
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !2947
  %tobool2 = icmp ne i32 %2, 0, !dbg !2947
  %lnot3 = xor i1 %tobool2, true, !dbg !2947
  %lnot5 = xor i1 %lnot3, true, !dbg !2947
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2947
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2947
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2947
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2947
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2946

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2947

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !2948
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2941, metadata !DIExpression()), !dbg !2948
  store i32 2305, ptr %__flags, align 4, !dbg !2948
  br label %do.body8, !dbg !2948

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !2949

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !2949

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !2948

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !2951
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 671, i32 %3, i64 12) #9, !dbg !2951, !srcloc !2953
  br label %do.cond10, !dbg !2951

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2951

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2948

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !2954

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2954

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !2947
  br label %do.cond15, !dbg !2948

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !2948

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !2948

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2946
  %tobool17 = icmp ne i32 %4, 0, !dbg !2946
  %lnot18 = xor i1 %tobool17, true, !dbg !2946
  %lnot20 = xor i1 %lnot18, true, !dbg !2946
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2946
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !2946
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !2946
  store i64 %expval23, ptr %tmp, align 8, !dbg !2947
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2956
  %5 = load i64, ptr %tmp, align 8, !dbg !2946
  ret void, !dbg !2957
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2958 dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_led_classdev_match(ptr noundef %dev, ptr noundef %res, ptr noundef %data) #0 align 16 !dbg !2965 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2967, metadata !DIExpression()), !dbg !2977
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2968, metadata !DIExpression()), !dbg !2978
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2969, metadata !DIExpression()), !dbg !2979
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !2980
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2970, metadata !DIExpression()), !dbg !2981
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2982
  store ptr %0, ptr %p, align 8, !dbg !2981
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2983
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2971, metadata !DIExpression()), !dbg !2983
  %1 = load ptr, ptr %p, align 8, !dbg !2983
  %tobool = icmp ne ptr %1, null, !dbg !2983
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2983

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !dbg !2983
  %3 = load ptr, ptr %2, align 8, !dbg !2983
  %tobool1 = icmp ne ptr %3, null, !dbg !2983
  %lnot = xor i1 %tobool1, true, !dbg !2983
  br label %lor.end, !dbg !2983

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %4, true, !dbg !2983
  %lnot3 = xor i1 %lnot2, true, !dbg !2983
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2983
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2983
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2984
  %tobool4 = icmp ne i32 %5, 0, !dbg !2984
  %lnot5 = xor i1 %tobool4, true, !dbg !2984
  %lnot7 = xor i1 %lnot5, true, !dbg !2984
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2984
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2984
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2984
  %tobool9 = icmp ne i64 %expval, 0, !dbg !2984
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2983

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2984

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !2985
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2974, metadata !DIExpression()), !dbg !2985
  store i32 2305, ptr %__flags, align 4, !dbg !2985
  br label %do.body10, !dbg !2985

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !2986

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !2986

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !2985

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !2988
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 655, i32 %6, i64 12) #9, !dbg !2988, !srcloc !2990
  br label %do.cond12, !dbg !2988

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2988

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2985

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !2991

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2991

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !2984
  br label %do.cond17, !dbg !2985

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2985

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !2985

if.end:                                           ; preds = %do.end18, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2983
  %tobool19 = icmp ne i32 %7, 0, !dbg !2983
  %lnot20 = xor i1 %tobool19, true, !dbg !2983
  %lnot22 = xor i1 %lnot20, true, !dbg !2983
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2983
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2983
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2983
  store i64 %expval25, ptr %tmp, align 8, !dbg !2984
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2993
  %8 = load i64, ptr %tmp, align 8, !dbg !2983
  %tobool26 = icmp ne i64 %8, 0, !dbg !2993
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2994

if.then27:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2995

if.end28:                                         ; preds = %if.end
  %9 = load ptr, ptr %p, align 8, !dbg !2996
  %10 = load ptr, ptr %9, align 8, !dbg !2997
  %11 = load ptr, ptr %data.addr, align 8, !dbg !2998
  %cmp = icmp eq ptr %10, %11, !dbg !2999
  %conv29 = zext i1 %cmp to i32, !dbg !2999
  store i32 %conv29, ptr %retval, align 4, !dbg !3000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3000

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !3001
  %12 = load i32, ptr %retval, align 4, !dbg !3001
  ret i32 %12, !dbg !3001
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @leds_exit() #7 section ".exit.text" align 16 !dbg !3002 {
entry:
  call void @class_unregister(ptr noundef @leds_class) #8, !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3005 dso_local void @class_unregister(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_led_class__219_685_leds_init4() #7 section ".init.text" align 16 !dbg !3006 {
entry:
  %call = call i32 @leds_init() #10, !dbg !3007
  ret i32 %call, !dbg !3007
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @leds_init() #7 section ".init.text" align 16 !dbg !3008 {
entry:
  %call = call i32 @class_register(ptr noundef @leds_class) #8, !dbg !3009
  ret i32 %call, !dbg !3010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef %list_name, ptr noundef %cells_name, i32 noundef %cell_count, i32 noundef %index, ptr noundef %out_args) #4 align 16 !dbg !3011 {
entry:
  %np.addr = alloca ptr, align 8
  %list_name.addr = alloca ptr, align 8
  %cells_name.addr = alloca ptr, align 8
  %cell_count.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %out_args.addr = alloca ptr, align 8
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !3016, metadata !DIExpression()), !dbg !3022
  store ptr %list_name, ptr %list_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list_name.addr, metadata !3017, metadata !DIExpression()), !dbg !3023
  store ptr %cells_name, ptr %cells_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cells_name.addr, metadata !3018, metadata !DIExpression()), !dbg !3024
  store i32 %cell_count, ptr %cell_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cell_count.addr, metadata !3019, metadata !DIExpression()), !dbg !3025
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3020, metadata !DIExpression()), !dbg !3026
  store ptr %out_args, ptr %out_args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_args.addr, metadata !3021, metadata !DIExpression()), !dbg !3027
  ret i32 -38, !dbg !3028
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3029 dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @brightness_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3035 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %brightness = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3037, metadata !DIExpression()), !dbg !3042
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3038, metadata !DIExpression()), !dbg !3043
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3039, metadata !DIExpression()), !dbg !3044
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #9, !dbg !3045
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !3040, metadata !DIExpression()), !dbg !3046
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3047
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #8, !dbg !3048
  store ptr %call, ptr %led_cdev, align 8, !dbg !3046
  call void @llvm.lifetime.start.p0(i64 4, ptr %brightness) #9, !dbg !3049
  call void @llvm.dbg.declare(metadata ptr %brightness, metadata !3041, metadata !DIExpression()), !dbg !3050
  %1 = load ptr, ptr %led_cdev, align 8, !dbg !3051
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 37, !dbg !3052
  call void @mutex_lock(ptr noundef %led_access) #8, !dbg !3053
  %2 = load ptr, ptr %led_cdev, align 8, !dbg !3054
  %call1 = call i32 @led_update_brightness(ptr noundef %2) #8, !dbg !3055
  %3 = load ptr, ptr %led_cdev, align 8, !dbg !3056
  %brightness2 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 1, !dbg !3057
  %4 = load i32, ptr %brightness2, align 8, !dbg !3057
  store i32 %4, ptr %brightness, align 4, !dbg !3058
  %5 = load ptr, ptr %led_cdev, align 8, !dbg !3059
  %led_access3 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 37, !dbg !3060
  call void @mutex_unlock(ptr noundef %led_access3) #8, !dbg !3061
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !3062
  %7 = load i32, ptr %brightness, align 4, !dbg !3063
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.15, i32 noundef %7) #8, !dbg !3064
  %conv = sext i32 %call4 to i64, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 4, ptr %brightness) #9, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #9, !dbg !3065
  ret i64 %conv, !dbg !3066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @brightness_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !3067 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %led_cdev = alloca ptr, align 8
  %state = alloca i64, align 8
  %ret = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3069, metadata !DIExpression()), !dbg !3077
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3070, metadata !DIExpression()), !dbg !3078
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3071, metadata !DIExpression()), !dbg !3079
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3072, metadata !DIExpression()), !dbg !3080
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #9, !dbg !3081
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !3073, metadata !DIExpression()), !dbg !3082
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3083
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #8, !dbg !3084
  store ptr %call, ptr %led_cdev, align 8, !dbg !3082
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #9, !dbg !3085
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3074, metadata !DIExpression()), !dbg !3086
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !3087
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3075, metadata !DIExpression()), !dbg !3088
  %1 = load ptr, ptr %led_cdev, align 8, !dbg !3089
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 37, !dbg !3090
  call void @mutex_lock(ptr noundef %led_access) #8, !dbg !3091
  %2 = load ptr, ptr %led_cdev, align 8, !dbg !3092
  %call1 = call zeroext i1 @led_sysfs_is_disabled(ptr noundef %2) #8, !dbg !3094
  br i1 %call1, label %if.then, label %if.end, !dbg !3095

if.then:                                          ; preds = %entry
  store i64 -16, ptr %ret, align 8, !dbg !3096
  br label %unlock, !dbg !3098

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3099
  %call2 = call i32 @kstrtoul(ptr noundef %3, i32 noundef 10, ptr noundef %state) #8, !dbg !3100
  %conv = sext i32 %call2 to i64, !dbg !3100
  store i64 %conv, ptr %ret, align 8, !dbg !3101
  %4 = load i64, ptr %ret, align 8, !dbg !3102
  %tobool = icmp ne i64 %4, 0, !dbg !3102
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !3104

if.then3:                                         ; preds = %if.end
  br label %unlock, !dbg !3105

if.end4:                                          ; preds = %if.end
  %5 = load i64, ptr %state, align 8, !dbg !3106
  %cmp = icmp eq i64 %5, 0, !dbg !3108
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !3109

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %led_cdev, align 8, !dbg !3110
  call void @led_trigger_remove(ptr noundef %6) #8, !dbg !3111
  br label %if.end7, !dbg !3111

if.end7:                                          ; preds = %if.then6, %if.end4
  %7 = load ptr, ptr %led_cdev, align 8, !dbg !3112
  %8 = load i64, ptr %state, align 8, !dbg !3113
  %conv8 = trunc i64 %8 to i32, !dbg !3113
  call void @led_set_brightness(ptr noundef %7, i32 noundef %conv8) #8, !dbg !3114
  %9 = load ptr, ptr %led_cdev, align 8, !dbg !3115
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 22, !dbg !3116
  %call9 = call zeroext i1 @flush_work(ptr noundef %set_brightness_work) #8, !dbg !3117
  %10 = load i64, ptr %size.addr, align 8, !dbg !3118
  store i64 %10, ptr %ret, align 8, !dbg !3119
  br label %unlock, !dbg !3120

unlock:                                           ; preds = %if.end7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !3076), !dbg !3121
  %11 = load ptr, ptr %led_cdev, align 8, !dbg !3122
  %led_access10 = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 37, !dbg !3123
  call void @mutex_unlock(ptr noundef %led_access10) #8, !dbg !3124
  %12 = load i64, ptr %ret, align 8, !dbg !3125
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !3126
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #9, !dbg !3126
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #9, !dbg !3126
  ret i64 %12, !dbg !3127
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #4 align 16 !dbg !3128 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3132, metadata !DIExpression()), !dbg !3133
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3134
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !3135
  %1 = load ptr, ptr %driver_data, align 8, !dbg !3135
  ret ptr %1, !dbg !3136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3137 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @led_sysfs_is_disabled(ptr noundef %led_cdev) #4 align 16 !dbg !3141 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !3145, metadata !DIExpression()), !dbg !3146
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3147
  %flags = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4, !dbg !3148
  %1 = load i32, ptr %flags, align 4, !dbg !3148
  %conv = sext i32 %1 to i64, !dbg !3147
  %and = and i64 %conv, 131072, !dbg !3149
  %tobool = icmp ne i64 %and, 0, !dbg !3147
  ret i1 %tobool, !dbg !3150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #4 align 16 !dbg !3151 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3156, metadata !DIExpression()), !dbg !3159
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !3157, metadata !DIExpression()), !dbg !3160
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3158, metadata !DIExpression()), !dbg !3161
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3162
  %1 = load i32, ptr %base.addr, align 4, !dbg !3164
  %2 = load ptr, ptr %res.addr, align 8, !dbg !3165
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8, !dbg !3166
  ret i32 %call, !dbg !3167
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3168 dso_local void @led_trigger_remove(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3169 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_brightness_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3172 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %max_brightness = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3174, metadata !DIExpression()), !dbg !3179
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3175, metadata !DIExpression()), !dbg !3180
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3176, metadata !DIExpression()), !dbg !3181
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #9, !dbg !3182
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !3177, metadata !DIExpression()), !dbg !3183
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3184
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #8, !dbg !3185
  store ptr %call, ptr %led_cdev, align 8, !dbg !3183
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_brightness) #9, !dbg !3186
  call void @llvm.dbg.declare(metadata ptr %max_brightness, metadata !3178, metadata !DIExpression()), !dbg !3187
  %1 = load ptr, ptr %led_cdev, align 8, !dbg !3188
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 37, !dbg !3189
  call void @mutex_lock(ptr noundef %led_access) #8, !dbg !3190
  %2 = load ptr, ptr %led_cdev, align 8, !dbg !3191
  %max_brightness1 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 2, !dbg !3192
  %3 = load i32, ptr %max_brightness1, align 4, !dbg !3192
  store i32 %3, ptr %max_brightness, align 4, !dbg !3193
  %4 = load ptr, ptr %led_cdev, align 8, !dbg !3194
  %led_access2 = getelementptr inbounds %struct.led_classdev, ptr %4, i32 0, i32 37, !dbg !3195
  call void @mutex_unlock(ptr noundef %led_access2) #8, !dbg !3196
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3197
  %6 = load i32, ptr %max_brightness, align 4, !dbg !3198
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.15, i32 noundef %6) #8, !dbg !3199
  %conv = sext i32 %call3 to i64, !dbg !3199
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_brightness) #9, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #9, !dbg !3200
  ret i64 %conv, !dbg !3201
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @led_trigger_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @led_trigger_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_suspend(ptr noundef %dev) #0 align 16 !dbg !3202 {
entry:
  %dev.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #9, !dbg !3207
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !3205, metadata !DIExpression()), !dbg !3208
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3209
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #8, !dbg !3210
  store ptr %call, ptr %led_cdev, align 8, !dbg !3208
  %1 = load ptr, ptr %led_cdev, align 8, !dbg !3211
  %flags = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 4, !dbg !3213
  %2 = load i32, ptr %flags, align 4, !dbg !3213
  %conv = sext i32 %2 to i64, !dbg !3211
  %and = and i64 %conv, 65536, !dbg !3214
  %tobool = icmp ne i64 %and, 0, !dbg !3214
  br i1 %tobool, label %if.then, label %if.end, !dbg !3215

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %led_cdev, align 8, !dbg !3216
  call void @led_classdev_suspend(ptr noundef %3) #8, !dbg !3217
  br label %if.end, !dbg !3217

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #9, !dbg !3218
  ret i32 0, !dbg !3219
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_resume(ptr noundef %dev) #0 align 16 !dbg !3220 {
entry:
  %dev.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3222, metadata !DIExpression()), !dbg !3224
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #9, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !3223, metadata !DIExpression()), !dbg !3226
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3227
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #8, !dbg !3228
  store ptr %call, ptr %led_cdev, align 8, !dbg !3226
  %1 = load ptr, ptr %led_cdev, align 8, !dbg !3229
  %flags = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 4, !dbg !3231
  %2 = load i32, ptr %flags, align 4, !dbg !3231
  %conv = sext i32 %2 to i64, !dbg !3229
  %and = and i64 %conv, 65536, !dbg !3232
  %tobool = icmp ne i64 %and, 0, !dbg !3232
  br i1 %tobool, label %if.then, label %if.end, !dbg !3233

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %led_cdev, align 8, !dbg !3234
  call void @led_classdev_resume(ptr noundef %3) #8, !dbg !3235
  br label %if.end, !dbg !3235

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #9, !dbg !3236
  ret i32 0, !dbg !3237
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3238 dso_local zeroext i1 @try_module_get(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_led_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !3241 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3243, metadata !DIExpression()), !dbg !3246
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3244, metadata !DIExpression()), !dbg !3247
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !3248
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3245, metadata !DIExpression()), !dbg !3249
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3250
  store ptr %0, ptr %p, align 8, !dbg !3249
  %1 = load ptr, ptr %p, align 8, !dbg !3251
  %2 = load ptr, ptr %1, align 8, !dbg !3252
  call void @led_put(ptr noundef %2) #8, !dbg !3253
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !3254
  ret void, !dbg !3254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !3255 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3257, metadata !DIExpression()), !dbg !3258
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3259
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !3260
  %1 = load ptr, ptr %name, align 8, !dbg !3260
  ret ptr %1, !dbg !3261
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3262 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3266, metadata !DIExpression()), !dbg !3269
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3267, metadata !DIExpression()), !dbg !3270
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3268, metadata !DIExpression()), !dbg !3271
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3272
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3274
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3275
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8, !dbg !3276
  br i1 %call, label %if.end, label %if.then, !dbg !3277

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3278

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3279
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3280
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3281
  store ptr %3, ptr %prev1, align 8, !dbg !3282
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3283
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3284
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3285
  store ptr %5, ptr %next2, align 8, !dbg !3286
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3287
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3288
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3289
  store ptr %7, ptr %prev3, align 8, !dbg !3290
  br label %do.body, !dbg !3291

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3292

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3294

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3292

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3296
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3296
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3296
  store volatile ptr %9, ptr %next6, align 8, !dbg !3296
  br label %do.end7, !dbg !3296

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3292

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3298
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3299 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3303, metadata !DIExpression()), !dbg !3306
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3304, metadata !DIExpression()), !dbg !3307
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3305, metadata !DIExpression()), !dbg !3308
  ret i1 true, !dbg !3309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !3310 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3312, metadata !DIExpression()), !dbg !3313
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3314
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #8, !dbg !3316
  br i1 %call, label %if.end, label %if.then, !dbg !3317

if.then:                                          ; preds = %entry
  br label %return, !dbg !3318

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3319
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3320
  %2 = load ptr, ptr %prev, align 8, !dbg !3320
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3321
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3322
  %4 = load ptr, ptr %next, align 8, !dbg !3322
  call void @__list_del(ptr noundef %2, ptr noundef %4) #8, !dbg !3323
  br label %return, !dbg !3324

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3324
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !3325 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3329, metadata !DIExpression()), !dbg !3330
  ret i1 true, !dbg !3331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3332 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3334, metadata !DIExpression()), !dbg !3336
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3335, metadata !DIExpression()), !dbg !3337
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3338
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3339
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3340
  store ptr %0, ptr %prev1, align 8, !dbg !3341
  br label %do.body, !dbg !3342

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3343

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3345

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3343

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3347
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3347
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3347
  store volatile ptr %2, ptr %next4, align 8, !dbg !3347
  br label %do.end5, !dbg !3347

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3343

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3349
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3350 dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3353 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3356 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3359 dso_local i32 @class_register(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!llvm.ident = !{!2011}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_classdev_suspend205", scope: !2, file: !3, line: 186, type: !97, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/leds/.led-class.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/leds/led-class\22 -D KBUILD_BASENAME=\22led_class\22 -D KBUILD_MODNAME=\22led_class\22 -D __KBUILD_MODNAME=kmod_led_class -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/leds/led-class.ll drivers/leds/led-class.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !96, globals: !1816, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/leds/led-class.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1791ca6cddbf2e4bc58b37093b7031b8")
!4 = !{!5, !13, !19, !26, !32, !39, !44, !52, !60, !66, !75, !80, !85, !91}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !6, line: 33, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "LED_OFF", value: 0)
!10 = !DIEnumerator(name: "LED_ON", value: 1)
!11 = !DIEnumerator(name: "LED_HALF", value: 127)
!12 = !DIEnumerator(name: "LED_FULL", value: 255)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !27, line: 45, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!30 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!31 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !33, line: 487, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!36 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!37 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!38 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !40, line: 65, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!43 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !45, line: 620, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!46 = !{!47, !48, !49, !50, !51}
!47 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!48 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!49 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!50 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!51 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !45, line: 597, baseType: !53, size: 32, elements: !54)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!56 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!57 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!58 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!59 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !61, line: 30, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!64 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!65 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !33, line: 547, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!69 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!70 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!71 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!72 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!73 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!74 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !33, line: 564, baseType: !7, size: 32, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!78 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!79 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !33, line: 577, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!83 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!84 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !33, line: 503, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!88 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!89 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!90 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 10, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!93 = !{!94, !95}
!94 = !DIEnumerator(name: "false", value: 0)
!95 = !DIEnumerator(name: "true", value: 1)
!96 = !{!97, !98, !114, !115, !117, !118, !120, !121}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_lookup_data", file: !6, line: 54, size: 320, elements: !100)
!100 = !{!101, !108, !112, !113}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !99, file: !6, line: 55, baseType: !102, size: 128)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 190, size: 128, elements: !104)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !103, line: 191, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !103, line: 191, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !99, file: !6, line: 56, baseType: !109, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !99, file: !6, line: 57, baseType: !109, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "con_id", scope: !99, file: !6, line: 58, baseType: !109, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 154, baseType: !7)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!120 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !6, line: 99, size: 3264, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !135, !139, !143, !148, !161, !165, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1775, !1776, !1777, !1778, !1779, !1780, !1797, !1798, !1799, !1800, !1801, !1802, !1806, !1807, !1811, !1815}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !6, line: 100, baseType: !109, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !123, file: !6, line: 101, baseType: !7, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !123, file: !6, line: 102, baseType: !7, size: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !123, file: !6, line: 103, baseType: !7, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !6, line: 104, baseType: !53, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !123, file: !6, line: 120, baseType: !117, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !123, file: !6, line: 137, baseType: !132, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !122, !5}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !123, file: !6, line: 143, baseType: !136, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!53, !122, !5}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !123, file: !6, line: 146, baseType: !140, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!5, !122}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !123, file: !6, line: 160, baseType: !144, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!53, !122, !147, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !123, file: !6, line: 164, baseType: !149, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!53, !122, !152, !156, !53}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !6, line: 713, size: 64, elements: !154)
!154 = !{!155, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !153, file: !6, line: 714, baseType: !156, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !157, line: 21, baseType: !158)
!157 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !159, line: 27, baseType: !7)
!159 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !153, file: !6, line: 715, baseType: !53, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !123, file: !6, line: 166, baseType: !162, size: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!53, !122}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !123, file: !6, line: 168, baseType: !166, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !33, line: 705, size: 5824, elements: !168)
!168 = !{!169, !823, !824, !827, !828, !881, !1346, !1347, !1348, !1349, !1350, !1357, !1527, !1540, !1550, !1554, !1556, !1557, !1558, !1562, !1569, !1570, !1573, !1576, !1702, !1703, !1704, !1707, !1708, !1709, !1710, !1740, !1741, !1742, !1745, !1748, !1757, !1758, !1759, !1760, !1761, !1762}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !167, file: !33, line: 706, baseType: !170, size: 512)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !171, line: 64, size: 512, elements: !172)
!171 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!172 = !{!173, !174, !175, !177, !264, !694, !808, !818, !819, !820, !821, !822}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !171, line: 65, baseType: !109, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !170, file: !171, line: 66, baseType: !102, size: 128, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !171, line: 67, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !170, file: !171, line: 68, baseType: !178, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !171, line: 168, size: 768, elements: !180)
!180 = !{!181, !182, !223, !224}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !179, file: !171, line: 169, baseType: !102, size: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !179, file: !171, line: 170, baseType: !183, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !184, line: 29, baseType: !185)
!184 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !184, line: 17, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !184, line: 18, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !184, line: 18, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !188, file: !184, line: 19, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !192, line: 14, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !191, file: !192, line: 15, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !196, line: 44, baseType: !197)
!196 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !196, line: 14, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !196, line: 15, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !196, line: 15, size: 32, elements: !201)
!201 = !{!202, !207, !215}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !196, line: 16, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 174, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 172, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !204, file: !103, line: 173, baseType: !53, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !196, line: 24, baseType: !208, size: 16)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !196, line: 24, size: 16, elements: !209)
!209 = !{!210, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !208, file: !196, line: 25, baseType: !211, size: 8)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !157, line: 17, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !159, line: 21, baseType: !213)
!213 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !208, file: !196, line: 26, baseType: !211, size: 8, offset: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !196, line: 28, baseType: !216, size: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !196, line: 28, size: 32, elements: !217)
!217 = !{!218, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !216, file: !196, line: 29, baseType: !219, size: 16)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !157, line: 19, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !159, line: 24, baseType: !221)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !216, file: !196, line: 30, baseType: !219, size: 16, offset: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !179, file: !171, line: 171, baseType: !170, size: 512, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !179, file: !171, line: 172, baseType: !225, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !171, line: 133, size: 192, elements: !228)
!228 = !{!229, !236, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !227, file: !171, line: 134, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!53, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !171, line: 135, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!109, !234}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !227, file: !171, line: 136, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!53, !234, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !171, line: 125, size: 20736, elements: !248)
!248 = !{!249, !254, !258, !259, !263}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !247, file: !171, line: 126, baseType: !250, size: 192)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 192, elements: !252)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!252 = !{!253}
!253 = !DISubrange(count: 3)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !247, file: !171, line: 127, baseType: !255, size: 4096, offset: 192)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 4096, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !247, file: !171, line: 128, baseType: !53, size: 32, offset: 4288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !247, file: !171, line: 129, baseType: !260, size: 16384, offset: 4320)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 16384, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 2048)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !247, file: !171, line: 130, baseType: !53, size: 32, offset: 20704)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !170, file: !171, line: 69, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !171, line: 116, size: 384, elements: !268)
!268 = !{!269, !273, !300, !641, !672, !676}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !267, file: !171, line: 117, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !176}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !267, file: !171, line: 118, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !277, line: 254, size: 128, elements: !278)
!277 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!278 = !{!279, !293}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !276, file: !277, line: 255, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !176, !287, !251}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 66, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !285, line: 73, baseType: !286)
!285 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !285, line: 15, baseType: !120)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !277, line: 30, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !277, line: 31, baseType: !109, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !288, file: !277, line: 32, baseType: !292, size: 16, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 24, baseType: !221)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !276, file: !277, line: 256, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!283, !176, !287, !109, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 61, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !285, line: 72, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !285, line: 16, baseType: !117)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !267, file: !171, line: 119, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !277, line: 84, size: 320, elements: !305)
!305 = !{!306, !307, !311, !637, !639}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !277, line: 85, baseType: !109, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !304, file: !277, line: 86, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!292, !176, !287, !53}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !304, file: !277, line: 88, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!292, !176, !315, !53}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !277, line: 175, size: 512, elements: !317)
!317 = !{!318, !319, !320, !321, !328, !338, !339}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !316, file: !277, line: 176, baseType: !288, size: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !316, file: !277, line: 177, baseType: !297, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !316, file: !277, line: 178, baseType: !97, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !316, file: !277, line: 179, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !327, line: 32, flags: DIFlagFwdDecl)
!327 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !316, file: !277, line: 180, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!283, !332, !176, !315, !251, !335, !297}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !334, line: 537, flags: DIFlagFwdDecl)
!334 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 52, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !285, line: 88, baseType: !337)
!337 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !316, file: !277, line: 182, baseType: !329, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !316, file: !277, line: 184, baseType: !340, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!53, !332, !176, !315, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !327, line: 625, size: 1344, elements: !345)
!345 = !{!346, !363, !585, !591, !598, !599, !604, !607, !619, !620, !623, !627, !628, !629, !630, !631, !635}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !327, line: 628, baseType: !347, size: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !327, line: 628, size: 128, elements: !348)
!348 = !{!349, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !327, line: 629, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !327, line: 629, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !350, file: !327, line: 631, baseType: !117, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !350, file: !327, line: 632, baseType: !117, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !347, file: !327, line: 635, baseType: !355, size: 128, align: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 232, size: 128, align: 64, elements: !356)
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !103, line: 233, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !355, file: !103, line: 234, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !358}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !344, file: !327, line: 639, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !327, line: 733, size: 10240, elements: !366)
!366 = !{!367, !581}
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !327, line: 734, baseType: !368, size: 10240)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !327, line: 734, size: 10240, elements: !369)
!369 = !{!370, !374, !388, !392, !393, !394, !395, !396, !397, !405, !406, !407, !415, !416, !425, !426, !427, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !474, !488, !491, !546, !547, !548, !551, !555, !556, !559, !560, !561, !568, !569}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !327, line: 739, baseType: !371, size: 512, align: 512)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !327, line: 739, size: 512, align: 512, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !371, file: !327, line: 747, baseType: !203, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !368, file: !327, line: 750, baseType: !375, size: 128, offset: 512)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !376, line: 218, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!377 = !{!378, !386, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 219, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 219, size: 32, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !379, file: !376, line: 220, baseType: !183, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !379, file: !376, line: 221, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !376, line: 197, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 197, elements: !385)
!385 = !{}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !375, file: !376, line: 223, baseType: !7, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !375, file: !376, line: 224, baseType: !97, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !368, file: !327, line: 752, baseType: !389, size: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!117, !332, !117, !117, !117, !117}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !368, file: !327, line: 756, baseType: !117, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !368, file: !327, line: 757, baseType: !117, size: 64, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !368, file: !327, line: 760, baseType: !117, size: 64, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !368, file: !327, line: 761, baseType: !117, size: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !368, file: !327, line: 763, baseType: !117, size: 64, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !368, file: !327, line: 764, baseType: !398, size: 64, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !334, line: 299, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 299, size: 64, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !400, file: !334, line: 299, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !404, line: 18, baseType: !117)
!404 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !368, file: !327, line: 773, baseType: !203, size: 32, offset: 1088)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !368, file: !327, line: 785, baseType: !203, size: 32, offset: 1120)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !368, file: !327, line: 795, baseType: !408, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !327, line: 726, size: 128, elements: !410)
!410 = !{!411, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !409, file: !327, line: 727, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !157, line: 23, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !159, line: 31, baseType: !116)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !409, file: !327, line: 728, baseType: !53, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !368, file: !327, line: 801, baseType: !117, size: 64, offset: 1216)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !368, file: !327, line: 804, baseType: !417, size: 64, offset: 1280)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !418, line: 13, baseType: !419)
!418 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 181, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 179, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !420, file: !103, line: 180, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !157, line: 22, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !159, line: 30, baseType: !337)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !368, file: !327, line: 806, baseType: !53, size: 32, offset: 1344)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !368, file: !327, line: 808, baseType: !183, size: 32, offset: 1376)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !368, file: !327, line: 823, baseType: !428, size: 320, offset: 1408)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !429, line: 48, size: 320, elements: !430)
!429 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!430 = !{!431, !432, !433, !438, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !428, file: !429, line: 49, baseType: !417, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !428, file: !429, line: 55, baseType: !417, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !428, file: !429, line: 57, baseType: !434, size: 32, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !435, line: 15, size: 32, elements: !436)
!435 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !434, file: !435, line: 20, baseType: !203, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !428, file: !429, line: 59, baseType: !439, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !192, line: 23, baseType: !191)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !428, file: !429, line: 60, baseType: !102, size: 128, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !368, file: !327, line: 825, baseType: !102, size: 128, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !368, file: !327, line: 845, baseType: !53, size: 32, offset: 1856)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !368, file: !327, line: 849, baseType: !117, size: 64, offset: 1920)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !368, file: !327, line: 850, baseType: !117, size: 64, offset: 1984)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !368, file: !327, line: 852, baseType: !117, size: 64, offset: 2048)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !368, file: !327, line: 853, baseType: !117, size: 64, offset: 2112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !368, file: !327, line: 854, baseType: !419, size: 64, offset: 2176)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !368, file: !327, line: 855, baseType: !117, size: 64, offset: 2240)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !368, file: !327, line: 856, baseType: !117, size: 64, offset: 2304)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !368, file: !327, line: 857, baseType: !117, size: 64, offset: 2368)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !368, file: !327, line: 858, baseType: !117, size: 64, offset: 2432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !368, file: !327, line: 865, baseType: !453, size: 32, offset: 2496)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !454, line: 69, baseType: !455)
!454 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !454, line: 64, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !455, file: !454, line: 65, baseType: !7, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !368, file: !327, line: 867, baseType: !183, size: 32, offset: 2528)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !368, file: !327, line: 869, baseType: !117, size: 64, offset: 2560)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !368, file: !327, line: 869, baseType: !117, size: 64, offset: 2624)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !368, file: !327, line: 869, baseType: !117, size: 64, offset: 2688)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !368, file: !327, line: 869, baseType: !117, size: 64, offset: 2752)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !368, file: !327, line: 870, baseType: !117, size: 64, offset: 2816)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !368, file: !327, line: 870, baseType: !117, size: 64, offset: 2880)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !368, file: !327, line: 870, baseType: !117, size: 64, offset: 2944)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !368, file: !327, line: 871, baseType: !117, size: 64, offset: 3008)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !368, file: !327, line: 871, baseType: !117, size: 64, offset: 3072)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !368, file: !327, line: 871, baseType: !117, size: 64, offset: 3136)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !368, file: !327, line: 871, baseType: !117, size: 64, offset: 3200)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !368, file: !327, line: 873, baseType: !471, size: 3328, offset: 3264)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 3328, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 52)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !368, file: !327, line: 875, baseType: !475, size: 1280, offset: 6592)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 1280, elements: !486)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !477, line: 22, size: 320, elements: !478)
!477 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!478 = !{!479, !480, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !476, file: !477, line: 23, baseType: !439, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !476, file: !477, line: 24, baseType: !423, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !476, file: !477, line: 26, baseType: !102, size: 128, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !476, file: !477, line: 28, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !157, line: 20, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !159, line: 26, baseType: !53)
!486 = !{!487}
!487 = !DISubrange(count: 4)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !368, file: !327, line: 877, baseType: !489, size: 64, offset: 7872)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !327, line: 877, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !368, file: !327, line: 880, baseType: !492, size: 1088, offset: 7936)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !493, line: 72, baseType: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 23, size: 1088, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !503, !504, !512, !513, !540, !541, !542}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !494, file: !493, line: 28, baseType: !412, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !494, file: !493, line: 38, baseType: !419, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !494, file: !493, line: 40, baseType: !117, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !494, file: !493, line: 43, baseType: !428, size: 320, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !494, file: !493, line: 44, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !493, line: 44, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !493, line: 48, baseType: !117, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !494, file: !493, line: 59, baseType: !505, size: 256, offset: 640)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !506, line: 66, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !506, line: 67, baseType: !417, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !505, file: !506, line: 68, baseType: !439, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !505, file: !506, line: 70, baseType: !434, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !505, file: !506, line: 72, baseType: !102, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !494, file: !493, line: 60, baseType: !97, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !494, file: !493, line: 61, baseType: !514, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !517, line: 13, size: 1216, elements: !518)
!517 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!518 = !{!519, !520, !521, !522, !523, !524, !525, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !517, line: 14, baseType: !97, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !517, line: 15, baseType: !117, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !516, file: !517, line: 17, baseType: !117, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !516, file: !517, line: 17, baseType: !117, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !516, file: !517, line: 18, baseType: !117, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !516, file: !517, line: 18, baseType: !117, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !516, file: !517, line: 19, baseType: !526, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !516, file: !517, line: 21, baseType: !120, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !516, file: !517, line: 23, baseType: !120, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !516, file: !517, line: 24, baseType: !120, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !516, file: !517, line: 25, baseType: !120, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !516, file: !517, line: 26, baseType: !120, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !516, file: !517, line: 27, baseType: !120, size: 64, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !516, file: !517, line: 28, baseType: !120, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !516, file: !517, line: 29, baseType: !120, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !516, file: !517, line: 30, baseType: !120, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !516, file: !517, line: 31, baseType: !120, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !516, file: !517, line: 32, baseType: !120, size: 64, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !516, file: !517, line: 33, baseType: !120, size: 64, offset: 1152)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !494, file: !493, line: 63, baseType: !203, size: 32, offset: 1024)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !494, file: !493, line: 69, baseType: !219, size: 16, offset: 1056)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !494, file: !493, line: 70, baseType: !543, size: 16, offset: 1072)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !157, line: 18, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !159, line: 23, baseType: !545)
!545 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !327, line: 882, baseType: !117, size: 64, offset: 9024)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !368, file: !327, line: 885, baseType: !183, size: 32, offset: 9088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !368, file: !327, line: 886, baseType: !549, size: 64, offset: 9152)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !327, line: 732, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !368, file: !327, line: 901, baseType: !552, size: 64, offset: 9216)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !554, line: 18, flags: DIFlagFwdDecl)
!554 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !368, file: !327, line: 904, baseType: !332, size: 64, offset: 9280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !368, file: !327, line: 906, baseType: !557, size: 64, offset: 9344)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !327, line: 906, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !368, file: !327, line: 930, baseType: !203, size: 32, offset: 9408)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !368, file: !327, line: 933, baseType: !203, size: 32, offset: 9440)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !368, file: !327, line: 935, baseType: !562, size: 64, offset: 9472)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !563, line: 103, size: 64, elements: !564)
!563 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !562, file: !563, line: 104, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !563, line: 101, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !368, file: !327, line: 940, baseType: !417, size: 64, offset: 9536)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !368, file: !327, line: 942, baseType: !570, size: 256, offset: 9600)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !571, line: 98, size: 256, elements: !572)
!571 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!572 = !{!573, !574, !575}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !570, file: !571, line: 99, baseType: !417, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !570, file: !571, line: 100, baseType: !102, size: 128, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !570, file: !571, line: 101, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !571, line: 21, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !365, file: !327, line: 986, baseType: !582, offset: 10240)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: -1)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !344, file: !327, line: 640, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !334, line: 297, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !334, line: 297, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !587, file: !334, line: 297, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !404, line: 19, baseType: !117)
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !327, line: 646, baseType: !592, size: 64, offset: 256)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !327, line: 646, size: 64, elements: !593)
!593 = !{!594, !597}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !592, file: !327, line: 647, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !327, line: 542, baseType: !117)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !592, file: !327, line: 648, baseType: !596, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !344, file: !327, line: 666, baseType: !53, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !344, file: !327, line: 667, baseType: !600, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !327, line: 579, size: 320, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !601, file: !327, line: 580, baseType: !428, size: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !344, file: !327, line: 670, baseType: !605, size: 8, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 35, baseType: !606)
!606 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !344, file: !327, line: 681, baseType: !608, size: 256, offset: 512)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !327, line: 678, size: 256, elements: !609)
!609 = !{!610, !618}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !608, file: !327, line: 679, baseType: !611, size: 192, align: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !612, line: 5, size: 192, align: 64, elements: !613)
!612 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!613 = !{!614, !615, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !611, file: !612, line: 6, baseType: !117, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !611, file: !612, line: 7, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !611, file: !612, line: 8, baseType: !616, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !608, file: !327, line: 680, baseType: !117, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !344, file: !327, line: 689, baseType: !102, size: 128, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !344, file: !327, line: 691, baseType: !621, size: 64, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !327, line: 691, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !344, file: !327, line: 694, baseType: !624, size: 64, offset: 960)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !327, line: 694, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !344, file: !327, line: 697, baseType: !117, size: 64, offset: 1024)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !344, file: !327, line: 699, baseType: !332, size: 64, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !344, file: !327, line: 700, baseType: !97, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !344, file: !327, line: 711, baseType: !417, size: 64, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !344, file: !327, line: 717, baseType: !632, size: 64, offset: 1280)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !634, line: 54, flags: DIFlagFwdDecl)
!634 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !344, file: !327, line: 722, baseType: !636, offset: 1344)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !327, line: 570, elements: !385)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !304, file: !277, line: 90, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !304, file: !277, line: 91, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !267, file: !171, line: 120, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !234}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !648)
!648 = !{!649, !650, !654, !658, !664, !668}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !14, line: 40, baseType: !13, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !647, file: !14, line: 41, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!605}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !647, file: !14, line: 42, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!97}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !647, file: !14, line: 43, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!526, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !647, file: !14, line: 44, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!526}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !647, file: !14, line: 45, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !97}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !267, file: !171, line: 121, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!526, !234}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !267, file: !171, line: 122, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !234, !680, !687}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !554, line: 23, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 21, size: 32, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !682, file: !554, line: 22, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 37, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !285, line: 49, baseType: !7)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !554, line: 28, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 26, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !689, file: !554, line: 27, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 38, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !285, line: 50, baseType: !7)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !170, file: !171, line: 70, baseType: !695, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !697, line: 190, size: 1152, elements: !698)
!697 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !800, !801, !802, !803, !804, !807}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !696, file: !697, line: 191, baseType: !203, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !696, file: !697, line: 192, baseType: !203, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !696, file: !697, line: 202, baseType: !695, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !696, file: !697, line: 203, baseType: !109, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !696, file: !697, line: 205, baseType: !611, size: 192, align: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !696, file: !697, line: 207, baseType: !526, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !696, file: !697, line: 208, baseType: !7, size: 32, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !697, line: 209, baseType: !707, size: 256, offset: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !697, line: 209, size: 256, elements: !708)
!708 = !{!709, !721, !725}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !707, file: !697, line: 210, baseType: !710, size: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !697, line: 153, size: 256, elements: !711)
!711 = !{!712, !713, !717, !720}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !710, file: !697, line: 154, baseType: !117, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !710, file: !697, line: 156, baseType: !714, size: 64, offset: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !612, line: 12, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !714, file: !612, line: 13, baseType: !616, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !710, file: !697, line: 162, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !697, line: 162, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !710, file: !697, line: 167, baseType: !117, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !707, file: !697, line: 211, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !697, line: 170, size: 64, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !722, file: !697, line: 171, baseType: !695, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !707, file: !697, line: 212, baseType: !726, size: 256)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !697, line: 174, size: 256, elements: !727)
!727 = !{!728, !795, !798, !799}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !726, file: !697, line: 175, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !697, line: 271, size: 768, elements: !732)
!732 = !{!733, !755, !759, !763, !768, !772, !776, !780, !781, !782, !783, !791}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !731, file: !697, line: 276, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!53, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !697, line: 251, size: 1216, elements: !739)
!739 = !{!740, !741, !742, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !738, file: !697, line: 253, baseType: !695, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !738, file: !697, line: 254, baseType: !332, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !738, file: !697, line: 255, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !634, line: 66, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !738, file: !697, line: 256, baseType: !97, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !738, file: !697, line: 259, baseType: !505, size: 256, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !738, file: !697, line: 260, baseType: !505, size: 256, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !738, file: !697, line: 261, baseType: !53, size: 32, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !738, file: !697, line: 262, baseType: !102, size: 128, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !738, file: !697, line: 263, baseType: !251, size: 64, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !738, file: !697, line: 265, baseType: !297, size: 64, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !738, file: !697, line: 266, baseType: !605, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !738, file: !697, line: 267, baseType: !605, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !738, file: !697, line: 268, baseType: !624, size: 64, offset: 1152)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !731, file: !697, line: 277, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !737}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !731, file: !697, line: 290, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!53, !743, !97}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !731, file: !697, line: 292, baseType: !764, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!97, !743, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !731, file: !697, line: 293, baseType: !769, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!97, !743, !97, !767}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !731, file: !697, line: 294, baseType: !773, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !743, !97}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !731, file: !697, line: 296, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!283, !737, !251, !297, !335}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !731, file: !697, line: 306, baseType: !297, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !731, file: !697, line: 313, baseType: !605, size: 8, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !731, file: !697, line: 314, baseType: !777, size: 64, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !731, file: !697, line: 317, baseType: !784, size: 64, offset: 640)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!787, !737, !789}
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !788, line: 59, baseType: !7)
!788 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !697, line: 31, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !731, file: !697, line: 320, baseType: !792, size: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!53, !737, !343}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !726, file: !697, line: 176, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !697, line: 35, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !726, file: !697, line: 177, baseType: !335, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !726, file: !697, line: 178, baseType: !695, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !696, file: !697, line: 215, baseType: !97, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !696, file: !697, line: 221, baseType: !412, size: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !697, line: 223, baseType: !221, size: 16, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !696, file: !697, line: 224, baseType: !292, size: 16, offset: 912)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !696, file: !697, line: 225, baseType: !805, size: 64, offset: 960)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !697, line: 36, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !696, file: !697, line: 227, baseType: !355, size: 128, align: 64, offset: 1024)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !170, file: !171, line: 71, baseType: !809, size: 32, offset: 448)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !810, line: 19, size: 32, elements: !811)
!810 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !809, file: !810, line: 20, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !814, line: 113, baseType: !815)
!814 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !814, line: 111, size: 32, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !815, file: !814, line: 112, baseType: !203, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !170, file: !171, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !170, file: !171, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !170, file: !171, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !170, file: !171, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !170, file: !171, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !33, line: 707, baseType: !166, size: 64, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !33, line: 709, baseType: !825, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !33, line: 37, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !167, file: !33, line: 711, baseType: !109, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !33, line: 712, baseType: !829, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !33, line: 89, size: 384, elements: !832)
!832 = !{!833, !834, !835, !841, !846, !850}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !831, file: !33, line: 90, baseType: !109, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !831, file: !33, line: 91, baseType: !301, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !831, file: !33, line: 92, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!53, !839, !246}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !831, file: !33, line: 93, baseType: !842, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!251, !839, !845, !680, !687}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !831, file: !33, line: 95, baseType: !847, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !166}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !831, file: !33, line: 97, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !45, line: 286, size: 1472, elements: !854)
!854 = !{!855, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !853, file: !45, line: 287, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!53, !166}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !853, file: !45, line: 288, baseType: !847, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !853, file: !45, line: 289, baseType: !856, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !853, file: !45, line: 290, baseType: !856, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !853, file: !45, line: 291, baseType: !856, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !853, file: !45, line: 292, baseType: !856, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !853, file: !45, line: 293, baseType: !856, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !853, file: !45, line: 294, baseType: !856, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !853, file: !45, line: 295, baseType: !856, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !853, file: !45, line: 296, baseType: !856, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !853, file: !45, line: 297, baseType: !856, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !853, file: !45, line: 298, baseType: !856, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !853, file: !45, line: 299, baseType: !856, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !853, file: !45, line: 300, baseType: !856, size: 64, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !853, file: !45, line: 301, baseType: !856, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !853, file: !45, line: 302, baseType: !856, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !853, file: !45, line: 303, baseType: !856, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !853, file: !45, line: 304, baseType: !856, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !853, file: !45, line: 305, baseType: !856, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !853, file: !45, line: 306, baseType: !856, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !853, file: !45, line: 307, baseType: !856, size: 64, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !853, file: !45, line: 308, baseType: !856, size: 64, offset: 1344)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !853, file: !45, line: 309, baseType: !856, size: 64, offset: 1408)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !167, file: !33, line: 714, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !885, line: 80, size: 1344, elements: !886)
!885 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!886 = !{!887, !888, !889, !890, !891, !892, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1345}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !884, file: !885, line: 81, baseType: !109, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !884, file: !885, line: 82, baseType: !109, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !884, file: !885, line: 83, baseType: !301, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !884, file: !885, line: 84, baseType: !301, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !884, file: !885, line: 85, baseType: !301, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !884, file: !885, line: 87, baseType: !893, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!53, !166, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !27, line: 96, size: 1152, elements: !898)
!898 = !{!899, !900, !901, !1276, !1277, !1278, !1279, !1295, !1308, !1309, !1310, !1311, !1312, !1320, !1321, !1322, !1323, !1324, !1325}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !897, file: !27, line: 97, baseType: !109, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !897, file: !27, line: 98, baseType: !882, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !27, line: 100, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !904)
!904 = !{!905, !906, !907, !911, !932, !958, !959, !960, !961, !965, !968, !969, !970, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1033, !1037, !1057, !1075, !1076, !1077, !1078, !1087, !1110, !1111, !1114, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1128, !1129, !1235, !1243, !1244, !1245, !1247, !1251, !1252, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1269, !1270, !1271, !1275}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !903, file: !20, line: 403, baseType: !19, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !903, file: !20, line: 406, baseType: !102, size: 128, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !903, file: !20, line: 409, baseType: !908, size: 448, offset: 192)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 448, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 56)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !903, file: !20, line: 417, baseType: !912, size: 768, offset: 640)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !913)
!913 = !{!914, !915, !916, !917, !920}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !912, file: !20, line: 46, baseType: !170, size: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !912, file: !20, line: 47, baseType: !902, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !912, file: !20, line: 48, baseType: !176, size: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !912, file: !20, line: 49, baseType: !918, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !912, file: !20, line: 50, baseType: !921, size: 64, offset: 704)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !923, line: 26, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !922, file: !923, line: 27, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !922, file: !923, line: 28, baseType: !927, size: 192, offset: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !928, line: 43, size: 192, elements: !929)
!928 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !927, file: !928, line: 44, baseType: !439, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !927, file: !928, line: 45, baseType: !102, size: 128, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !903, file: !20, line: 418, baseType: !933, size: 64, offset: 1408)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !935)
!935 = !{!936, !937, !942, !946, !950, !954}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !934, file: !20, line: 54, baseType: !288, size: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !934, file: !20, line: 55, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!283, !933, !941, !251}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !934, file: !20, line: 57, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!283, !933, !941, !109, !297}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !934, file: !20, line: 59, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !902, !109}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !934, file: !20, line: 60, baseType: !951, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!53, !902}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !934, file: !20, line: 61, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !902}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !903, file: !20, line: 419, baseType: !109, size: 64, offset: 1472)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !903, file: !20, line: 420, baseType: !109, size: 64, offset: 1536)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !903, file: !20, line: 421, baseType: !176, size: 64, offset: 1600)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !903, file: !20, line: 424, baseType: !962, size: 64, offset: 1664)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !903, file: !20, line: 425, baseType: !966, size: 64, offset: 1728)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !903, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !903, file: !20, line: 435, baseType: !505, size: 256, offset: 1856)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !903, file: !20, line: 437, baseType: !971, size: 64, offset: 2112)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !973, line: 69, size: 320, elements: !974)
!973 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!974 = !{!975, !976, !977, !994, !996, !1000, !1001}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !972, file: !973, line: 70, baseType: !109, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !972, file: !973, line: 71, baseType: !902, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !972, file: !973, line: 72, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !973, line: 47, size: 256, elements: !981)
!981 = !{!982, !983, !989, !993}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !973, line: 49, baseType: !7, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !980, file: !973, line: 51, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!53, !109, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !980, file: !973, line: 53, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!53, !251, !987}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !980, file: !973, line: 55, baseType: !669, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !972, file: !973, line: 73, baseType: !995, size: 16, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !972, file: !973, line: 74, baseType: !997, size: 8, offset: 208)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !157, line: 16, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !159, line: 20, baseType: !999)
!999 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 75, baseType: !211, size: 8, offset: 216)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !973, line: 76, baseType: !1002, size: 64, offset: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !973, line: 76, size: 64, elements: !1003)
!1003 = !{!1004, !1005, !1012}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1002, file: !973, line: 77, baseType: !97, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1002, file: !973, line: 78, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !973, line: 86, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1008, file: !973, line: 87, baseType: !7, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1008, file: !973, line: 88, baseType: !251, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1002, file: !973, line: 79, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !973, line: 92, size: 256, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1021, !1022}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1015, file: !973, line: 94, baseType: !7, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1015, file: !973, line: 95, baseType: !7, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1015, file: !973, line: 96, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1015, file: !973, line: 97, baseType: !978, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1015, file: !973, line: 98, baseType: !97, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !903, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !903, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !903, file: !20, line: 442, baseType: !962, size: 64, offset: 2240)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !903, file: !20, line: 443, baseType: !966, size: 64, offset: 2304)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !903, file: !20, line: 444, baseType: !605, size: 8, offset: 2368)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !903, file: !20, line: 451, baseType: !605, size: 8, offset: 2376)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !903, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !903, file: !20, line: 455, baseType: !1031, size: 64, offset: 2432)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !20, line: 43, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !903, file: !20, line: 458, baseType: !1034, size: 64, offset: 2496)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!53}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !903, file: !20, line: 460, baseType: !1038, size: 4032, align: 512, offset: 2560)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 4032, elements: !1055)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1039, file: !20, line: 363, baseType: !97, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1039, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1039, file: !20, line: 367, baseType: !1044, size: 448, offset: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1044, file: !20, line: 320, baseType: !902, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1044, file: !20, line: 321, baseType: !1048, size: 384, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1049, line: 40, size: 384, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1048, file: !1049, line: 41, baseType: !1052, size: 384, align: 64)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 384, align: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 2)
!1055 = !{!1056}
!1056 = !DISubrange(count: 7)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !903, file: !20, line: 463, baseType: !1058, size: 192, offset: 6592)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1059, line: 8, size: 192, elements: !1060)
!1059 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1060 = !{!1061, !1062, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1058, file: !1059, line: 10, baseType: !7, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1058, file: !1059, line: 11, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1058, file: !1059, line: 12, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1067, line: 59, size: 48, elements: !1068)
!1067 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1066, file: !1067, line: 60, baseType: !543, size: 16)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1066, file: !1067, line: 61, baseType: !543, size: 16, offset: 16)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1066, file: !1067, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1066, file: !1067, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !1067, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1066, file: !1067, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !903, file: !20, line: 465, baseType: !117, size: 64, offset: 6784)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !903, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !903, file: !20, line: 470, baseType: !102, size: 128, offset: 6912)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !903, file: !20, line: 471, baseType: !1079, size: 64, offset: 7040)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1081, line: 33, size: 96, elements: !1082)
!1081 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1080, file: !1081, line: 37, baseType: !53, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1080, file: !1081, line: 43, baseType: !53, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1080, file: !1081, line: 45, baseType: !221, size: 16, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !1081, line: 47, baseType: !221, size: 16, offset: 80)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !903, file: !20, line: 476, baseType: !1088, size: 64, offset: 7104)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !1090)
!1090 = !{!1091, !1107, !1108, !1109}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1089, file: !20, line: 379, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1094, line: 204, baseType: !1095)
!1094 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1094, line: 197, size: 192, elements: !1096)
!1096 = !{!1097, !1099, !1100, !1101, !1103, !1105}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1095, file: !1094, line: 198, baseType: !1098, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1094, line: 21, baseType: !158)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1095, file: !1094, line: 199, baseType: !213, size: 8, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1095, file: !1094, line: 200, baseType: !213, size: 8, offset: 40)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1095, file: !1094, line: 201, baseType: !1102, size: 16, offset: 48)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1094, line: 17, baseType: !220)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1095, file: !1094, line: 202, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1094, line: 16, baseType: !413)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1095, file: !1094, line: 203, baseType: !1106, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1094, line: 22, baseType: !413)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1089, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1089, file: !20, line: 381, baseType: !251, size: 64, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1089, file: !20, line: 382, baseType: !251, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !903, file: !20, line: 477, baseType: !1089, size: 256, offset: 7168)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !903, file: !20, line: 480, baseType: !1112, size: 64, offset: 7424)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !903, file: !20, line: 483, baseType: !1115, size: 64, offset: 7488)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !903, file: !20, line: 488, baseType: !251, size: 64, offset: 7552)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !903, file: !20, line: 492, baseType: !97, size: 64, offset: 7616)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !903, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !903, file: !20, line: 495, baseType: !97, size: 64, offset: 7744)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !903, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !903, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !903, file: !20, line: 500, baseType: !1124, size: 64, offset: 7872)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1126, line: 45, baseType: !1127)
!1126 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !903, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !903, file: !20, line: 504, baseType: !1130, size: 64, offset: 8000)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1133, line: 96, size: 192, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1134 = !{!1135, !1136, !1196, !1199}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1132, file: !1133, line: 97, baseType: !7, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1132, file: !1133, line: 98, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1133, line: 24, size: 3072, elements: !1139)
!1139 = !{!1140, !1142, !1143, !1144, !1145, !1159, !1160, !1161, !1162, !1180, !1181, !1182, !1193, !1194, !1195}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1138, file: !1133, line: 26, baseType: !1141, size: 128)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !1053)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1138, file: !1133, line: 27, baseType: !1141, size: 128, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1138, file: !1133, line: 28, baseType: !53, size: 32, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1138, file: !1133, line: 31, baseType: !183, size: 32, align: 512, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1138, file: !1133, line: 32, baseType: !1146, size: 960, offset: 576)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1147, line: 206, size: 960, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1148 = !{!1149, !1150, !1153, !1155, !1156, !1158}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1146, file: !1147, line: 207, baseType: !358, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1146, file: !1147, line: 208, baseType: !1151, size: 256, offset: 64)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 256, elements: !486)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1146, file: !1147, line: 209, baseType: !1154, size: 256, offset: 320)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !486)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1146, file: !1147, line: 213, baseType: !120, size: 64, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1146, file: !1147, line: 215, baseType: !1157, size: 256, offset: 640)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !486)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1146, file: !1147, line: 216, baseType: !211, size: 8, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1138, file: !1133, line: 33, baseType: !117, size: 64, offset: 1536)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1138, file: !1133, line: 34, baseType: !117, size: 64, offset: 1600)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1138, file: !1133, line: 35, baseType: !605, size: 8, offset: 1664)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1138, file: !1133, line: 36, baseType: !1163, size: 320, offset: 1728)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1164, line: 11, size: 320, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1165 = !{!1166, !1173, !1174, !1179}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1163, file: !1164, line: 16, baseType: !1167, size: 128)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 198, size: 128, elements: !1168)
!1168 = !{!1169, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1167, file: !103, line: 199, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1167, file: !103, line: 199, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1163, file: !1164, line: 17, baseType: !117, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1163, file: !1164, line: 18, baseType: !1175, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1163, file: !1164, line: 19, baseType: !156, size: 32, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1138, file: !1133, line: 37, baseType: !570, size: 256, offset: 2048)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1138, file: !1133, line: 38, baseType: !355, size: 128, align: 64, offset: 2304)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1138, file: !1133, line: 39, baseType: !1183, size: 64, offset: 2432)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1133, line: 49, size: 768, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1184, file: !1133, line: 50, baseType: !183, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1184, file: !1133, line: 51, baseType: !1154, size: 256, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1184, file: !1133, line: 53, baseType: !1154, size: 256, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1184, file: !1133, line: 54, baseType: !117, size: 64, offset: 576)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1184, file: !1133, line: 55, baseType: !1183, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1184, file: !1133, line: 56, baseType: !53, size: 32, offset: 704)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1184, file: !1133, line: 57, baseType: !53, size: 32, offset: 736)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1138, file: !1133, line: 40, baseType: !117, size: 64, offset: 2496)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1138, file: !1133, line: 42, baseType: !53, size: 32, offset: 2560)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1138, file: !1133, line: 43, baseType: !1131, size: 64, offset: 2624)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1132, file: !1133, line: 99, baseType: !1197, offset: 128)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1198, line: 211, elements: !385)
!1198 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1132, file: !1133, line: 100, baseType: !1200, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1133, line: 63, size: 3008, elements: !1202)
!1202 = !{!1203, !1204, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1234}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1201, file: !1133, line: 64, baseType: !1183, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1201, file: !1133, line: 65, baseType: !1205, size: 192, offset: 64)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 192, elements: !252)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1201, file: !1133, line: 67, baseType: !53, size: 32, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1201, file: !1133, line: 68, baseType: !505, size: 256, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1201, file: !1133, line: 69, baseType: !183, size: 32, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1201, file: !1133, line: 70, baseType: !505, size: 256, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1201, file: !1133, line: 71, baseType: !117, size: 64, offset: 896)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1201, file: !1133, line: 72, baseType: !117, size: 64, offset: 960)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1201, file: !1133, line: 73, baseType: !117, size: 64, offset: 1024)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1201, file: !1133, line: 74, baseType: !117, size: 64, offset: 1088)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1201, file: !1133, line: 75, baseType: !117, size: 64, offset: 1152)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1201, file: !1133, line: 76, baseType: !117, size: 64, offset: 1216)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1201, file: !1133, line: 77, baseType: !117, size: 64, offset: 1280)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1201, file: !1133, line: 78, baseType: !117, size: 64, offset: 1344)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1201, file: !1133, line: 79, baseType: !605, size: 8, offset: 1408)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1201, file: !1133, line: 80, baseType: !117, size: 64, offset: 1472)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1201, file: !1133, line: 81, baseType: !505, size: 256, offset: 1536)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1201, file: !1133, line: 82, baseType: !922, size: 256, offset: 1792)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1201, file: !1133, line: 84, baseType: !203, size: 32, offset: 2048)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1201, file: !1133, line: 87, baseType: !117, size: 64, offset: 2112)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1201, file: !1133, line: 88, baseType: !117, size: 64, offset: 2176)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1201, file: !1133, line: 89, baseType: !1226, size: 704, offset: 2240)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !571, line: 111, size: 704, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1233}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1226, file: !571, line: 112, baseType: !570, size: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1226, file: !571, line: 113, baseType: !1163, size: 320, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1226, file: !571, line: 116, baseType: !1231, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !571, line: 18, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1226, file: !571, line: 117, baseType: !53, size: 32, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1201, file: !1133, line: 90, baseType: !1131, size: 64, offset: 2944)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !903, file: !20, line: 515, baseType: !1236, size: 64, offset: 8064)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1238, line: 117, size: 128, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1237, file: !1238, line: 118, baseType: !484, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1237, file: !1238, line: 119, baseType: !484, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1237, file: !1238, line: 120, baseType: !120, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !903, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !903, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !903, file: !20, line: 520, baseType: !1246, size: 64, offset: 8192)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !903, file: !20, line: 523, baseType: !1248, size: 64, offset: 8256)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !903, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !903, file: !20, line: 525, baseType: !1253, size: 64, offset: 8384)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !903, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !903, file: !20, line: 533, baseType: !97, size: 64, offset: 8512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !903, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !903, file: !20, line: 535, baseType: !147, size: 64, offset: 8640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !903, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !903, file: !20, line: 539, baseType: !53, size: 32, offset: 8736)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !903, file: !20, line: 540, baseType: !1263, size: 64, offset: 8768)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1265, line: 32, size: 64, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1264, file: !1265, line: 33, baseType: !484, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1264, file: !1265, line: 34, baseType: !484, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !903, file: !20, line: 563, baseType: !102, size: 128, offset: 8832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !903, file: !20, line: 565, baseType: !102, size: 128, offset: 8960)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !903, file: !20, line: 568, baseType: !1272, size: 64, offset: 9088)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !903, file: !20, line: 570, baseType: !203, size: 32, offset: 9152)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !897, file: !27, line: 101, baseType: !109, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !897, file: !27, line: 103, baseType: !605, size: 8, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !897, file: !27, line: 104, baseType: !26, size: 32, offset: 288)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !897, file: !27, line: 106, baseType: !1280, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1283, line: 282, size: 1600, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1284 = !{!1285, !1289, !1290, !1294}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1282, file: !1283, line: 283, baseType: !1286, size: 256)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1282, file: !1283, line: 284, baseType: !1286, size: 256, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1282, file: !1283, line: 285, baseType: !1291, size: 1024, offset: 512)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1024, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1282, file: !1283, line: 286, baseType: !526, size: 64, offset: 1536)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !897, file: !27, line: 107, baseType: !1296, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1283, line: 217, size: 256, elements: !1299)
!1299 = !{!1300, !1304, !1306, !1307}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1298, file: !1283, line: 218, baseType: !1301, size: 128)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 16)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1298, file: !1283, line: 219, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1283, line: 15, baseType: !117)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1298, file: !1283, line: 220, baseType: !158, size: 32, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1298, file: !1283, line: 221, baseType: !158, size: 32, offset: 224)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !897, file: !27, line: 109, baseType: !856, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !897, file: !27, line: 110, baseType: !847, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !897, file: !27, line: 111, baseType: !856, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !897, file: !27, line: 112, baseType: !847, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !897, file: !27, line: 113, baseType: !1313, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!53, !166, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !45, line: 60, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !45, line: 58, size: 32, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1317, file: !45, line: 59, baseType: !53, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !897, file: !27, line: 114, baseType: !856, size: 64, offset: 768)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !897, file: !27, line: 115, baseType: !301, size: 64, offset: 832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !897, file: !27, line: 116, baseType: !301, size: 64, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !897, file: !27, line: 118, baseType: !851, size: 64, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !897, file: !27, line: 119, baseType: !847, size: 64, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !897, file: !27, line: 121, baseType: !1326, size: 64, offset: 1088)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !27, line: 121, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !884, file: !885, line: 88, baseType: !836, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !884, file: !885, line: 89, baseType: !856, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !884, file: !885, line: 90, baseType: !847, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !884, file: !885, line: 91, baseType: !847, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !884, file: !885, line: 92, baseType: !847, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !884, file: !885, line: 94, baseType: !856, size: 64, offset: 704)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !884, file: !885, line: 95, baseType: !856, size: 64, offset: 768)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !884, file: !885, line: 97, baseType: !1313, size: 64, offset: 832)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !884, file: !885, line: 98, baseType: !856, size: 64, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !884, file: !885, line: 100, baseType: !856, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !884, file: !885, line: 102, baseType: !856, size: 64, offset: 1024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !884, file: !885, line: 103, baseType: !847, size: 64, offset: 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !884, file: !885, line: 105, baseType: !851, size: 64, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !884, file: !885, line: 107, baseType: !1342, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !885, line: 107, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !884, file: !885, line: 109, baseType: !605, size: 8, offset: 1280)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !167, file: !33, line: 715, baseType: !896, size: 64, offset: 832)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !167, file: !33, line: 717, baseType: !97, size: 64, offset: 896)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !167, file: !33, line: 719, baseType: !97, size: 64, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !167, file: !33, line: 721, baseType: !505, size: 256, offset: 1024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !167, file: !33, line: 725, baseType: !1351, size: 448, offset: 1280)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !33, line: 517, size: 448, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1351, file: !33, line: 518, baseType: !102, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1351, file: !33, line: 519, baseType: !102, size: 128, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1351, file: !33, line: 520, baseType: !102, size: 128, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1351, file: !33, line: 521, baseType: !32, size: 32, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !167, file: !33, line: 726, baseType: !1358, size: 2496, offset: 1728)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !45, line: 663, size: 2496, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1404, !1405, !1406, !1407, !1408, !1409, !1480, !1481, !1482, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1520, !1524}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1358, file: !45, line: 664, baseType: !1316, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1358, file: !45, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1358, file: !45, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1358, file: !45, line: 667, baseType: !605, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1358, file: !45, line: 668, baseType: !605, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1358, file: !45, line: 669, baseType: !605, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1358, file: !45, line: 670, baseType: !605, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1358, file: !45, line: 671, baseType: !605, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1358, file: !45, line: 672, baseType: !605, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1358, file: !45, line: 673, baseType: !605, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1358, file: !45, line: 674, baseType: !605, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1358, file: !45, line: 675, baseType: !156, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1358, file: !45, line: 676, baseType: !183, size: 32, offset: 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1358, file: !45, line: 678, baseType: !102, size: 128, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1358, file: !45, line: 679, baseType: !922, size: 256, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1358, file: !45, line: 680, baseType: !1376, size: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1378, line: 43, size: 1536, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1387, !1388, !1389, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1377, file: !1378, line: 44, baseType: !109, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1377, file: !1378, line: 45, baseType: !53, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1377, file: !1378, line: 46, baseType: !102, size: 128, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1377, file: !1378, line: 47, baseType: !183, size: 32, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1377, file: !1378, line: 48, baseType: !1385, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !45, line: 629, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1377, file: !1378, line: 49, baseType: !1163, size: 320, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1377, file: !1378, line: 50, baseType: !117, size: 64, offset: 704)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1377, file: !1378, line: 51, baseType: !1390, size: 64, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1391, line: 29, baseType: !423)
!1391 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1377, file: !1378, line: 52, baseType: !1390, size: 64, offset: 832)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1377, file: !1378, line: 53, baseType: !1390, size: 64, offset: 896)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1377, file: !1378, line: 54, baseType: !1390, size: 64, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1377, file: !1378, line: 55, baseType: !1390, size: 64, offset: 1024)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1377, file: !1378, line: 56, baseType: !117, size: 64, offset: 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1377, file: !1378, line: 57, baseType: !117, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1377, file: !1378, line: 58, baseType: !117, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1377, file: !1378, line: 59, baseType: !117, size: 64, offset: 1280)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1377, file: !1378, line: 60, baseType: !117, size: 64, offset: 1344)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1377, file: !1378, line: 61, baseType: !166, size: 64, offset: 1408)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1377, file: !1378, line: 62, baseType: !605, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1377, file: !1378, line: 63, baseType: !605, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1358, file: !45, line: 681, baseType: !605, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1358, file: !45, line: 682, baseType: !605, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1358, file: !45, line: 683, baseType: !605, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1358, file: !45, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1358, file: !45, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1358, file: !45, line: 690, baseType: !1410, size: 512, offset: 640)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !40, line: 118, size: 512, elements: !1411)
!1411 = !{!1412, !1418, !1419, !1424, !1476, !1477, !1478, !1479}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1410, file: !40, line: 119, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1414, line: 9, size: 256, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1413, file: !1414, line: 10, baseType: !611, size: 192, align: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1413, file: !1414, line: 11, baseType: !1390, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1410, file: !40, line: 120, baseType: !1390, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1410, file: !40, line: 121, baseType: !1420, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!39, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1410, file: !40, line: 122, baseType: !1425, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !40, line: 159, size: 512, align: 512, elements: !1427)
!1427 = !{!1428, !1453, !1454, !1457, !1462, !1463, !1471, !1475}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1426, file: !40, line: 160, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !40, line: 215, size: 4608, align: 512, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1430, file: !40, line: 216, baseType: !439, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1430, file: !40, line: 217, baseType: !7, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1430, file: !40, line: 218, baseType: !7, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1430, file: !40, line: 219, baseType: !7, size: 32, offset: 96)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1430, file: !40, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1430, file: !40, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1430, file: !40, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1430, file: !40, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1430, file: !40, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1430, file: !40, line: 226, baseType: !7, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1430, file: !40, line: 227, baseType: !221, size: 16, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1430, file: !40, line: 228, baseType: !221, size: 16, offset: 208)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1430, file: !40, line: 229, baseType: !7, size: 32, offset: 224)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1430, file: !40, line: 235, baseType: !1390, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1430, file: !40, line: 236, baseType: !1423, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1430, file: !40, line: 237, baseType: !1390, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1430, file: !40, line: 238, baseType: !1423, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1430, file: !40, line: 239, baseType: !1450, size: 4096, align: 512, offset: 512)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 4096, align: 512, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 8)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1426, file: !40, line: 161, baseType: !7, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1426, file: !40, line: 162, baseType: !1455, size: 32, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 32, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !285, line: 96, baseType: !53)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1426, file: !40, line: 163, baseType: !1458, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !454, line: 274, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !454, line: 274, size: 32, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1459, file: !454, line: 274, baseType: !453, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1426, file: !40, line: 164, baseType: !1423, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1426, file: !40, line: 165, baseType: !1464, size: 128, offset: 256)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1414, line: 14, size: 128, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1464, file: !1414, line: 15, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !612, line: 26, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1467, file: !612, line: 27, baseType: !714, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1467, file: !612, line: 28, baseType: !616, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1426, file: !40, line: 166, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1390}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1426, file: !40, line: 167, baseType: !1390, size: 64, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1410, file: !40, line: 123, baseType: !211, size: 8, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1410, file: !40, line: 124, baseType: !211, size: 8, offset: 456)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1410, file: !40, line: 125, baseType: !211, size: 8, offset: 464)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1410, file: !40, line: 126, baseType: !211, size: 8, offset: 472)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1358, file: !45, line: 691, baseType: !412, size: 64, offset: 1152)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1358, file: !45, line: 692, baseType: !570, size: 256, offset: 1216)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1358, file: !45, line: 693, baseType: !1483, size: 192, offset: 1472)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1484, line: 41, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1484, line: 37, size: 192, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1485, file: !1484, line: 38, baseType: !183, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1485, file: !1484, line: 39, baseType: !102, size: 128, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1358, file: !45, line: 694, baseType: !1385, size: 64, offset: 1664)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1358, file: !45, line: 695, baseType: !203, size: 32, offset: 1728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1358, file: !45, line: 696, baseType: !203, size: 32, offset: 1760)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1358, file: !45, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1358, file: !45, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1358, file: !45, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1358, file: !45, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1358, file: !45, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1358, file: !45, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1358, file: !45, line: 703, baseType: !605, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1358, file: !45, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1358, file: !45, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1358, file: !45, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1358, file: !45, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1358, file: !45, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1358, file: !45, line: 709, baseType: !7, size: 32, offset: 1824)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1358, file: !45, line: 710, baseType: !44, size: 32, offset: 1856)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1358, file: !45, line: 711, baseType: !52, size: 32, offset: 1888)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1358, file: !45, line: 712, baseType: !52, size: 32, offset: 1920)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1358, file: !45, line: 713, baseType: !53, size: 32, offset: 1952)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1358, file: !45, line: 714, baseType: !53, size: 32, offset: 1984)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1358, file: !45, line: 715, baseType: !412, size: 64, offset: 2048)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1358, file: !45, line: 716, baseType: !412, size: 64, offset: 2112)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1358, file: !45, line: 717, baseType: !412, size: 64, offset: 2176)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1358, file: !45, line: 718, baseType: !412, size: 64, offset: 2240)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1358, file: !45, line: 720, baseType: !1515, size: 64, offset: 2304)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !45, line: 632, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !45, line: 633, baseType: !183, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1516, file: !45, line: 634, baseType: !7, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1358, file: !45, line: 721, baseType: !1521, size: 64, offset: 2368)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !166, !484}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1358, file: !45, line: 722, baseType: !1525, size: 64, offset: 2432)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !45, line: 722, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !167, file: !33, line: 727, baseType: !1528, size: 64, offset: 4224)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !45, line: 742, size: 1792, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1537, !1538, !1539}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1529, file: !45, line: 743, baseType: !853, size: 1472)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1529, file: !45, line: 744, baseType: !856, size: 64, offset: 1472)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1529, file: !45, line: 745, baseType: !1534, size: 64, offset: 1536)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !166, !605}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1529, file: !45, line: 746, baseType: !856, size: 64, offset: 1600)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1529, file: !45, line: 747, baseType: !847, size: 64, offset: 1664)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1529, file: !45, line: 748, baseType: !847, size: 64, offset: 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !167, file: !33, line: 736, baseType: !1541, size: 128, offset: 4288)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !33, line: 529, size: 128, elements: !1542)
!1542 = !{!1543, !1547}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1541, file: !33, line: 531, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1546, line: 13, flags: DIFlagFwdDecl)
!1546 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1541, file: !33, line: 532, baseType: !1548, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !33, line: 49, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !167, file: !33, line: 738, baseType: !1551, size: 64, offset: 4416)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !33, line: 738, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !167, file: !33, line: 740, baseType: !1555, size: 64, offset: 4480)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !167, file: !33, line: 741, baseType: !412, size: 64, offset: 4544)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !167, file: !33, line: 746, baseType: !412, size: 64, offset: 4608)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !167, file: !33, line: 747, baseType: !1559, size: 64, offset: 4672)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !33, line: 747, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !167, file: !33, line: 749, baseType: !1563, size: 64, offset: 4736)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !33, line: 428, size: 128, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1564, file: !33, line: 433, baseType: !7, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1564, file: !33, line: 434, baseType: !7, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1564, file: !33, line: 435, baseType: !117, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !167, file: !33, line: 751, baseType: !102, size: 128, offset: 4800)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !167, file: !33, line: 762, baseType: !1571, size: 64, offset: 4928)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !33, line: 762, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !167, file: !33, line: 770, baseType: !1574, offset: 4992)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1575, line: 5, elements: !385)
!1575 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !167, file: !33, line: 772, baseType: !1577, size: 64, offset: 4992)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1579, line: 48, size: 1152, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1580 = !{!1581, !1582, !1584, !1585, !1688, !1696, !1697, !1698, !1699, !1700, !1701}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1578, file: !1579, line: 49, baseType: !109, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1578, file: !1579, line: 50, baseType: !1583, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1579, line: 25, baseType: !156)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1578, file: !1579, line: 51, baseType: !109, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1578, file: !1579, line: 52, baseType: !1586, size: 512, offset: 192)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1587, line: 41, size: 512, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1588 = !{!1589, !1591, !1684, !1685, !1686, !1687}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1586, file: !1587, line: 42, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1586, file: !1587, line: 43, baseType: !1592, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1587, line: 125, size: 1408, elements: !1595)
!1595 = !{!1596, !1600, !1604, !1610, !1614, !1615, !1619, !1623, !1627, !1631, !1635, !1636, !1640, !1644, !1648, !1659, !1660, !1661, !1662, !1672, !1676, !1680}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1594, file: !1587, line: 126, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1590, !1590}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1594, file: !1587, line: 127, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !1590}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1594, file: !1587, line: 128, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!605, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1594, file: !1587, line: 129, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!526, !1608, !839}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1594, file: !1587, line: 131, baseType: !1605, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1594, file: !1587, line: 133, baseType: !1616, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!60, !1608}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1594, file: !1587, line: 134, baseType: !1620, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!605, !1608, !109}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1594, file: !1587, line: 136, baseType: !1624, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!53, !1608, !109, !7, !97, !297}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1594, file: !1587, line: 141, baseType: !1628, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!53, !1608, !109, !1246, !297}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1594, file: !1587, line: 144, baseType: !1632, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!109, !1608}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1594, file: !1587, line: 145, baseType: !1632, size: 64, offset: 640)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1594, file: !1587, line: 146, baseType: !1637, size: 64, offset: 704)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!1590, !1608}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1594, file: !1587, line: 148, baseType: !1641, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1590, !1608, !1590}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1594, file: !1587, line: 151, baseType: !1645, size: 64, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1590, !1608, !109}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1594, file: !1587, line: 153, baseType: !1649, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!53, !1608, !109, !109, !7, !7, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1587, line: 94, size: 640, elements: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1653, file: !1587, line: 95, baseType: !1590, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1653, file: !1587, line: 96, baseType: !7, size: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1653, file: !1587, line: 97, baseType: !1658, size: 512, offset: 128)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 512, elements: !1451)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1594, file: !1587, line: 158, baseType: !1641, size: 64, offset: 960)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1594, file: !1587, line: 161, baseType: !1637, size: 64, offset: 1024)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1594, file: !1587, line: 163, baseType: !1597, size: 64, offset: 1088)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1594, file: !1587, line: 164, baseType: !1663, size: 64, offset: 1152)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!53, !1608, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1587, line: 73, size: 128, elements: !1668)
!1668 = !{!1669, !1670, !1671}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1667, file: !1587, line: 74, baseType: !7, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1667, file: !1587, line: 75, baseType: !7, size: 32, offset: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1667, file: !1587, line: 76, baseType: !1608, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1594, file: !1587, line: 166, baseType: !1673, size: 64, offset: 1216)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!97, !1590, !53}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1594, file: !1587, line: 167, baseType: !1677, size: 64, offset: 1280)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!53, !1608, !7}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1594, file: !1587, line: 168, baseType: !1681, size: 64, offset: 1344)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!53, !1590}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1586, file: !1587, line: 44, baseType: !166, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1586, file: !1587, line: 45, baseType: !102, size: 128, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1586, file: !1587, line: 46, baseType: !102, size: 128, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1586, file: !1587, line: 47, baseType: !211, size: 8, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1578, file: !1579, line: 54, baseType: !1689, size: 64, offset: 704)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1579, line: 28, size: 256, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1690, file: !1579, line: 29, baseType: !251, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1690, file: !1579, line: 30, baseType: !53, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1690, file: !1579, line: 31, baseType: !97, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1690, file: !1579, line: 32, baseType: !1689, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1578, file: !1579, line: 55, baseType: !1689, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1578, file: !1579, line: 56, baseType: !1577, size: 64, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1578, file: !1579, line: 57, baseType: !1577, size: 64, offset: 896)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1578, file: !1579, line: 58, baseType: !1577, size: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1578, file: !1579, line: 62, baseType: !117, size: 64, offset: 1024)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1578, file: !1579, line: 63, baseType: !97, size: 64, offset: 1088)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !167, file: !33, line: 773, baseType: !1590, size: 64, offset: 5056)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !167, file: !33, line: 776, baseType: !53, size: 32, offset: 5120)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !167, file: !33, line: 778, baseType: !1705, size: 32, offset: 5152)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 21, baseType: !1706)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 18, baseType: !156)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !167, file: !33, line: 779, baseType: !156, size: 32, offset: 5184)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !167, file: !33, line: 781, baseType: !183, size: 32, offset: 5216)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !167, file: !33, line: 782, baseType: !102, size: 128, offset: 5248)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !167, file: !33, line: 784, baseType: !1711, size: 64, offset: 5376)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1714, line: 52, size: 768, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1724, !1728, !1729, !1730, !1731, !1735, !1739}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1713, file: !1714, line: 53, baseType: !109, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1713, file: !1714, line: 55, baseType: !301, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1713, file: !1714, line: 56, baseType: !301, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1713, file: !1714, line: 58, baseType: !836, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1713, file: !1714, line: 59, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!251, !839, !845}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1713, file: !1714, line: 61, baseType: !1725, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1711}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1713, file: !1714, line: 62, baseType: !847, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1713, file: !1714, line: 64, baseType: !856, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1713, file: !1714, line: 66, baseType: !645, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1713, file: !1714, line: 67, baseType: !1732, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!526, !839}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1713, file: !1714, line: 69, baseType: !1736, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !839, !680, !687}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1713, file: !1714, line: 71, baseType: !851, size: 64, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !167, file: !33, line: 785, baseType: !301, size: 64, offset: 5440)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !167, file: !33, line: 787, baseType: !847, size: 64, offset: 5504)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !167, file: !33, line: 788, baseType: !1743, size: 64, offset: 5568)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !33, line: 46, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !167, file: !33, line: 789, baseType: !1746, size: 64, offset: 5632)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !33, line: 48, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !167, file: !33, line: 791, baseType: !1749, size: 64, offset: 5696)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !33, line: 597, size: 128, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755, !1756}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1750, file: !33, line: 598, baseType: !66, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1750, file: !33, line: 599, baseType: !75, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1750, file: !33, line: 600, baseType: !80, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1750, file: !33, line: 601, baseType: !605, size: 8, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1750, file: !33, line: 602, baseType: !605, size: 8, offset: 104)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !167, file: !33, line: 793, baseType: !85, size: 32, offset: 5760)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !167, file: !33, line: 795, baseType: !605, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !167, file: !33, line: 796, baseType: !605, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !167, file: !33, line: 797, baseType: !605, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !167, file: !33, line: 798, baseType: !605, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !167, file: !33, line: 799, baseType: !605, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !123, file: !6, line: 169, baseType: !301, size: 64, offset: 704)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !6, line: 171, baseType: !102, size: 128, offset: 768)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !123, file: !6, line: 172, baseType: !109, size: 64, offset: 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !123, file: !6, line: 174, baseType: !117, size: 64, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !123, file: !6, line: 174, baseType: !117, size: 64, offset: 1024)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !123, file: !6, line: 175, baseType: !1163, size: 320, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !123, file: !6, line: 176, baseType: !53, size: 32, offset: 1408)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !123, file: !6, line: 177, baseType: !53, size: 32, offset: 1440)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !123, file: !6, line: 178, baseType: !1772, size: 64, offset: 1472)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !122}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !123, file: !6, line: 180, baseType: !570, size: 256, offset: 1536)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !123, file: !6, line: 181, baseType: !53, size: 32, offset: 1792)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_on", scope: !123, file: !6, line: 182, baseType: !117, size: 64, offset: 1856)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_off", scope: !123, file: !6, line: 183, baseType: !117, size: 64, offset: 1920)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_lock", scope: !123, file: !6, line: 187, baseType: !428, size: 320, offset: 1984)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !123, file: !6, line: 189, baseType: !1781, size: 64, offset: 2304)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !6, line: 471, size: 704, elements: !1783)
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1793, !1794, !1795, !1796}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1782, file: !6, line: 473, baseType: !109, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1782, file: !6, line: 474, baseType: !162, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1782, file: !6, line: 475, baseType: !1772, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1782, file: !6, line: 478, baseType: !5, size: 32, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !1782, file: !6, line: 481, baseType: !1789, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_hw_trigger_type", file: !6, line: 95, size: 32, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1790, file: !6, line: 96, baseType: !53, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "leddev_list_lock", scope: !1782, file: !6, line: 484, baseType: !183, size: 32, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "led_cdevs", scope: !1782, file: !6, line: 485, baseType: !102, size: 128, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "next_trig", scope: !1782, file: !6, line: 488, baseType: !102, size: 128, offset: 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1782, file: !6, line: 490, baseType: !301, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "trig_list", scope: !123, file: !6, line: 190, baseType: !102, size: 128, offset: 2368)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_data", scope: !123, file: !6, line: 191, baseType: !97, size: 64, offset: 2496)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "activated", scope: !123, file: !6, line: 193, baseType: !605, size: 8, offset: 2560)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !123, file: !6, line: 196, baseType: !1789, size: 64, offset: 2624)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_trigger", scope: !123, file: !6, line: 199, baseType: !109, size: 64, offset: 2688)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_is_supported", scope: !123, file: !6, line: 209, baseType: !1803, size: 64, offset: 2752)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!53, !122, !117}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_set", scope: !123, file: !6, line: 220, baseType: !1803, size: 64, offset: 2816)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get", scope: !123, file: !6, line: 232, baseType: !1808, size: 64, offset: 2880)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!53, !122, !147}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get_device", scope: !123, file: !6, line: 239, baseType: !1812, size: 64, offset: 2944)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!166, !122}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !123, file: !6, line: 248, baseType: !505, size: 256, offset: 3008)
!1816 = !{!0, !1817, !1819, !1824, !1826, !1828, !1830, !1832, !1834, !1836, !1838, !1840, !1845, !1850, !1852, !1857, !1862, !1867, !1889, !1891, !1894, !1899, !1901, !1906, !1908, !1910, !1915, !1917, !1922, !1924, !1926, !1930, !1933, !1936, !1939, !1944, !1946, !1949, !1951, !1954, !1959, !1973, !1976, !1978, !1980, !1982, !1985, !1988, !1990, !1992, !1997, !1999, !2001}
!1817 = !DIGlobalVariableExpression(var: !1818, expr: !DIExpression())
!1818 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_classdev_resume206", scope: !2, file: !3, line: 201, type: !97, isLocal: true, isDefinition: true)
!1819 = !DIGlobalVariableExpression(var: !1820, expr: !DIExpression())
!1820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !1821, isLocal: true, isDefinition: true)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 40, elements: !1822)
!1822 = !{!1823}
!1823 = !DISubrange(count: 5)
!1824 = !DIGlobalVariableExpression(var: !1825, expr: !DIExpression())
!1825 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_of_led_get207", scope: !2, file: !3, line: 272, type: !97, isLocal: true, isDefinition: true)
!1826 = !DIGlobalVariableExpression(var: !1827, expr: !DIExpression())
!1827 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_put208", scope: !2, file: !3, line: 283, type: !97, isLocal: true, isDefinition: true)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_of_led_get209", scope: !2, file: !3, line: 333, type: !97, isLocal: true, isDefinition: true)
!1830 = !DIGlobalVariableExpression(var: !1831, expr: !DIExpression())
!1831 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_get210", scope: !2, file: !3, line: 366, type: !97, isLocal: true, isDefinition: true)
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_led_get211", scope: !2, file: !3, line: 388, type: !97, isLocal: true, isDefinition: true)
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_add_lookup212", scope: !2, file: !3, line: 403, type: !97, isLocal: true, isDefinition: true)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_remove_lookup213", scope: !2, file: !3, line: 415, type: !97, isLocal: true, isDefinition: true)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_of_led_get_optional214", scope: !2, file: !3, line: 440, type: !97, isLocal: true, isDefinition: true)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 482, type: !1842, isLocal: true, isDefinition: true)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 264, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 33)
!1845 = !DIGlobalVariableExpression(var: !1846, expr: !DIExpression())
!1846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !1847, isLocal: true, isDefinition: true)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 176, elements: !1848)
!1848 = !{!1849}
!1849 = !DISubrange(count: 22)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !1847, isLocal: true, isDefinition: true)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !1854, isLocal: true, isDefinition: true)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 120, elements: !1855)
!1855 = !{!1856}
!1856 = !DISubrange(count: 15)
!1857 = !DIGlobalVariableExpression(var: !1858, expr: !DIExpression())
!1858 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !1859, isLocal: true, isDefinition: true)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 48, elements: !1860)
!1860 = !{!1861}
!1861 = !DISubrange(count: 6)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !1864, isLocal: true, isDefinition: true)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 304, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 38)
!1867 = !DIGlobalVariableExpression(var: !1868, expr: !DIExpression())
!1868 = distinct !DIGlobalVariable(name: "__key", scope: !1869, file: !3, line: 517, type: !1888, isLocal: true, isDefinition: true)
!1869 = distinct !DISubprogram(name: "led_classdev_register_ext", scope: !3, file: !3, line: 471, type: !1870, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!53, !166, !122, !1872}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_init_data", file: !6, line: 61, size: 256, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1873, file: !6, line: 63, baseType: !1590, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "default_label", scope: !1873, file: !6, line: 70, baseType: !109, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "devicename", scope: !1873, file: !6, line: 76, baseType: !109, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "devname_mandatory", scope: !1873, file: !6, line: 82, baseType: !605, size: 8, offset: 192)
!1879 = !{!1880, !1881, !1882, !1883, !1885, !1886, !1887}
!1880 = !DILocalVariable(name: "parent", arg: 1, scope: !1869, file: !3, line: 471, type: !166)
!1881 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !1869, file: !3, line: 472, type: !122)
!1882 = !DILocalVariable(name: "init_data", arg: 3, scope: !1869, file: !3, line: 473, type: !1872)
!1883 = !DILocalVariable(name: "composed_name", scope: !1869, file: !3, line: 475, type: !1884)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 512, elements: !256)
!1885 = !DILocalVariable(name: "final_name", scope: !1869, file: !3, line: 476, type: !1884)
!1886 = !DILocalVariable(name: "proposed_name", scope: !1869, file: !3, line: 477, type: !109)
!1887 = !DILocalVariable(name: "ret", scope: !1869, file: !3, line: 478, type: !53)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1198, line: 206, elements: !385)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(scope: null, file: !3, line: 517, type: !1847, isLocal: true, isDefinition: true)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !3, line: 520, type: !1893, isLocal: true, isDefinition: true)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !252)
!1894 = !DIGlobalVariableExpression(var: !1895, expr: !DIExpression())
!1895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 529, type: !1896, isLocal: true, isDefinition: true)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 344, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 43)
!1899 = !DIGlobalVariableExpression(var: !1900, expr: !DIExpression())
!1900 = distinct !DIGlobalVariable(name: "__key", scope: !1869, file: !3, line: 544, type: !1888, isLocal: true, isDefinition: true)
!1901 = !DIGlobalVariableExpression(var: !1902, expr: !DIExpression())
!1902 = distinct !DIGlobalVariable(scope: null, file: !3, line: 544, type: !1903, isLocal: true, isDefinition: true)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 192, elements: !1904)
!1904 = !{!1905}
!1905 = !DISubrange(count: 24)
!1906 = !DIGlobalVariableExpression(var: !1907, expr: !DIExpression())
!1907 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_classdev_register_ext215", scope: !2, file: !3, line: 572, type: !97, isLocal: true, isDefinition: true)
!1908 = !DIGlobalVariableExpression(var: !1909, expr: !DIExpression())
!1909 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_classdev_unregister216", scope: !2, file: !3, line: 613, type: !97, isLocal: true, isDefinition: true)
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(scope: null, file: !3, line: 634, type: !1912, isLocal: true, isDefinition: true)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 208, elements: !1913)
!1913 = !{!1914}
!1914 = !DISubrange(count: 26)
!1915 = !DIGlobalVariableExpression(var: !1916, expr: !DIExpression())
!1916 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_led_classdev_register_ext217", scope: !2, file: !3, line: 649, type: !97, isLocal: true, isDefinition: true)
!1917 = !DIGlobalVariableExpression(var: !1918, expr: !DIExpression())
!1918 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !1919, isLocal: true, isDefinition: true)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 200, elements: !1920)
!1920 = !{!1921}
!1921 = !DISubrange(count: 25)
!1922 = !DIGlobalVariableExpression(var: !1923, expr: !DIExpression())
!1923 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_led_classdev_unregister218", scope: !2, file: !3, line: 673, type: !97, isLocal: true, isDefinition: true)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_led_class__219_685_leds_init4220", scope: !2, file: !3, line: 685, type: !97, isLocal: true, isDefinition: true)
!1926 = !DIGlobalVariableExpression(var: !1927, expr: !DIExpression())
!1927 = distinct !DIGlobalVariable(name: "__exitcall_leds_exit", scope: !2, file: !3, line: 686, type: !1928, isLocal: true, isDefinition: true)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1929, line: 120, baseType: !1272)
!1929 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1930 = !DIGlobalVariableExpression(var: !1931, expr: !DIExpression())
!1931 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author221", scope: !2, file: !3, line: 688, type: !1932, isLocal: true, isDefinition: true, align: 8)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 344, elements: !1897)
!1933 = !DIGlobalVariableExpression(var: !1934, expr: !DIExpression())
!1934 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file222", scope: !2, file: !3, line: 689, type: !1935, isLocal: true, isDefinition: true, align: 8)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 304, elements: !1865)
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license223", scope: !2, file: !3, line: 689, type: !1938, isLocal: true, isDefinition: true, align: 8)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 176, elements: !1848)
!1939 = !DIGlobalVariableExpression(var: !1940, expr: !DIExpression())
!1940 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description224", scope: !2, file: !3, line: 690, type: !1941, isLocal: true, isDefinition: true, align: 8)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 336, elements: !1942)
!1942 = !{!1943}
!1943 = !DISubrange(count: 42)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(name: "leds_class", scope: !2, file: !3, line: 244, type: !1712, isLocal: true, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "led_groups", scope: !2, file: !3, line: 107, type: !1948, isLocal: true, isDefinition: true)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 192, elements: !252)
!1949 = !DIGlobalVariableExpression(var: !1950, expr: !DIExpression())
!1950 = distinct !DIGlobalVariable(name: "led_group", scope: !2, file: !3, line: 103, type: !303, isLocal: true, isDefinition: true)
!1951 = !DIGlobalVariableExpression(var: !1952, expr: !DIExpression())
!1952 = distinct !DIGlobalVariable(name: "led_class_attrs", scope: !2, file: !3, line: 97, type: !1953, isLocal: true, isDefinition: true)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 192, elements: !252)
!1954 = !DIGlobalVariableExpression(var: !1955, expr: !DIExpression())
!1955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !1956, isLocal: true, isDefinition: true)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 88, elements: !1957)
!1957 = !{!1958}
!1958 = !DISubrange(count: 11)
!1959 = !DIGlobalVariableExpression(var: !1960, expr: !DIExpression())
!1960 = distinct !DIGlobalVariable(name: "dev_attr_brightness", scope: !2, file: !3, line: 70, type: !1961, isLocal: true, isDefinition: true)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !33, line: 106, size: 256, elements: !1962)
!1962 = !{!1963, !1964, !1969}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1961, file: !33, line: 107, baseType: !288, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1961, file: !33, line: 108, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!283, !166, !1968, !251}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1961, file: !33, line: 110, baseType: !1970, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!283, !166, !1968, !109, !297}
!1973 = !DIGlobalVariableExpression(var: !1974, expr: !DIExpression())
!1974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !1975, isLocal: true, isDefinition: true)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !486)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !1854, isLocal: true, isDefinition: true)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(name: "dev_attr_max_brightness", scope: !2, file: !3, line: 84, type: !1961, isLocal: true, isDefinition: true)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(name: "led_trigger_group", scope: !2, file: !3, line: 92, type: !303, isLocal: true, isDefinition: true)
!1982 = !DIGlobalVariableExpression(var: !1983, expr: !DIExpression())
!1983 = distinct !DIGlobalVariable(name: "led_trigger_bin_attrs", scope: !2, file: !3, line: 88, type: !1984, isLocal: true, isDefinition: true)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 128, elements: !1053)
!1985 = !DIGlobalVariableExpression(var: !1986, expr: !DIExpression())
!1986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !1987, isLocal: true, isDefinition: true)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !1451)
!1988 = !DIGlobalVariableExpression(var: !1989, expr: !DIExpression())
!1989 = distinct !DIGlobalVariable(name: "bin_attr_trigger", scope: !2, file: !3, line: 87, type: !316, isLocal: true, isDefinition: true)
!1990 = !DIGlobalVariableExpression(var: !1991, expr: !DIExpression())
!1991 = distinct !DIGlobalVariable(name: "leds_class_dev_pm_ops", scope: !2, file: !3, line: 225, type: !852, isLocal: true, isDefinition: true)
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !1994, isLocal: true, isDefinition: true)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 136, elements: !1995)
!1995 = !{!1996}
!1996 = !DISubrange(count: 17)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(name: "leds_lookup_lock", scope: !2, file: !3, line: 25, type: !505, isLocal: true, isDefinition: true)
!1999 = !DIGlobalVariableExpression(var: !2000, expr: !DIExpression())
!2000 = distinct !DIGlobalVariable(name: "leds_lookup_list", scope: !2, file: !3, line: 26, type: !102, isLocal: true, isDefinition: true)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !1859, isLocal: true, isDefinition: true)
!2003 = !{i32 7, !"Dwarf Version", i32 5}
!2004 = !{i32 2, !"Debug Info Version", i32 3}
!2005 = !{i32 1, !"wchar_size", i32 2}
!2006 = !{i32 8, !"cf-protection-branch", i32 1}
!2007 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2008 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2009 = !{i32 1, !"Code Model", i32 2}
!2010 = !{i32 1, !"override-stack-alignment", i32 8}
!2011 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2012 = distinct !DISubprogram(name: "led_classdev_suspend", scope: !3, file: !3, line: 180, type: !1773, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2012, file: !3, line: 180, type: !122)
!2015 = !DILocation(line: 180, column: 48, scope: !2012)
!2016 = !DILocation(line: 182, column: 2, scope: !2012)
!2017 = !DILocation(line: 182, column: 12, scope: !2012)
!2018 = !DILocation(line: 182, column: 18, scope: !2012)
!2019 = !DILocation(line: 183, column: 26, scope: !2012)
!2020 = !DILocation(line: 183, column: 2, scope: !2012)
!2021 = !DILocation(line: 184, column: 14, scope: !2012)
!2022 = !DILocation(line: 184, column: 24, scope: !2012)
!2023 = !DILocation(line: 184, column: 2, scope: !2012)
!2024 = !DILocation(line: 185, column: 1, scope: !2012)
!2025 = !DISubprogram(name: "led_set_brightness_nopm", scope: !2026, file: !2026, line: 22, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2026 = !DIFile(filename: "drivers/leds/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d3b3fbc2bcfa7e8304de2e053dc4308")
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !122, !7}
!2029 = !DISubprogram(name: "flush_work", scope: !571, file: !571, line: 513, type: !2030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!605, !580}
!2032 = distinct !DISubprogram(name: "led_classdev_resume", scope: !3, file: !3, line: 192, type: !1773, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2033 = !{!2034}
!2034 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2032, file: !3, line: 192, type: !122)
!2035 = !DILocation(line: 192, column: 47, scope: !2032)
!2036 = !DILocation(line: 194, column: 26, scope: !2032)
!2037 = !DILocation(line: 194, column: 36, scope: !2032)
!2038 = !DILocation(line: 194, column: 46, scope: !2032)
!2039 = !DILocation(line: 194, column: 2, scope: !2032)
!2040 = !DILocation(line: 196, column: 6, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 196, column: 6)
!2042 = !DILocation(line: 196, column: 16, scope: !2041)
!2043 = !DILocation(line: 196, column: 6, scope: !2032)
!2044 = !DILocation(line: 197, column: 3, scope: !2041)
!2045 = !DILocation(line: 197, column: 13, scope: !2041)
!2046 = !DILocation(line: 197, column: 26, scope: !2041)
!2047 = !DILocation(line: 199, column: 2, scope: !2032)
!2048 = !DILocation(line: 199, column: 12, scope: !2032)
!2049 = !DILocation(line: 199, column: 18, scope: !2032)
!2050 = !DILocation(line: 200, column: 1, scope: !2032)
!2051 = distinct !DISubprogram(name: "of_led_get", scope: !3, file: !3, line: 258, type: !2052, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!122, !1577, !53}
!2054 = !{!2055, !2056, !2057, !2058}
!2055 = !DILocalVariable(name: "np", arg: 1, scope: !2051, file: !3, line: 258, type: !1577)
!2056 = !DILocalVariable(name: "index", arg: 2, scope: !2051, file: !3, line: 258, type: !53)
!2057 = !DILocalVariable(name: "led_dev", scope: !2051, file: !3, line: 260, type: !166)
!2058 = !DILocalVariable(name: "led_node", scope: !2051, file: !3, line: 261, type: !1577)
!2059 = !DILocation(line: 258, column: 53, scope: !2051)
!2060 = !DILocation(line: 258, column: 61, scope: !2051)
!2061 = !DILocation(line: 260, column: 2, scope: !2051)
!2062 = !DILocation(line: 260, column: 17, scope: !2051)
!2063 = !DILocation(line: 261, column: 2, scope: !2051)
!2064 = !DILocation(line: 261, column: 22, scope: !2051)
!2065 = !DILocation(line: 263, column: 30, scope: !2051)
!2066 = !DILocation(line: 263, column: 42, scope: !2051)
!2067 = !DILocation(line: 263, column: 13, scope: !2051)
!2068 = !DILocation(line: 263, column: 11, scope: !2051)
!2069 = !DILocation(line: 264, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 264, column: 6)
!2071 = !DILocation(line: 264, column: 6, scope: !2051)
!2072 = !DILocation(line: 265, column: 10, scope: !2070)
!2073 = !DILocation(line: 265, column: 3, scope: !2070)
!2074 = !DILocation(line: 267, column: 54, scope: !2051)
!2075 = !DILocation(line: 267, column: 12, scope: !2051)
!2076 = !DILocation(line: 267, column: 10, scope: !2051)
!2077 = !DILocation(line: 268, column: 14, scope: !2051)
!2078 = !DILocation(line: 268, column: 2, scope: !2051)
!2079 = !DILocation(line: 270, column: 24, scope: !2051)
!2080 = !DILocation(line: 270, column: 9, scope: !2051)
!2081 = !DILocation(line: 270, column: 2, scope: !2051)
!2082 = !DILocation(line: 271, column: 1, scope: !2051)
!2083 = distinct !DISubprogram(name: "of_parse_phandle", scope: !1579, file: !1579, line: 942, type: !2084, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2088)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!1577, !2086, !109, !53}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!2088 = !{!2089, !2090, !2091, !2092}
!2089 = !DILocalVariable(name: "np", arg: 1, scope: !2083, file: !1579, line: 942, type: !2086)
!2090 = !DILocalVariable(name: "phandle_name", arg: 2, scope: !2083, file: !1579, line: 943, type: !109)
!2091 = !DILocalVariable(name: "index", arg: 3, scope: !2083, file: !1579, line: 944, type: !53)
!2092 = !DILocalVariable(name: "args", scope: !2083, file: !1579, line: 946, type: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1579, line: 71, size: 640, elements: !2094)
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2093, file: !1579, line: 72, baseType: !1577, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !2093, file: !1579, line: 73, baseType: !53, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2093, file: !1579, line: 74, baseType: !2098, size: 512, offset: 96)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2099, size: 512, elements: !1302)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !103, line: 110, baseType: !156)
!2100 = !DILocation(line: 942, column: 78, scope: !2083)
!2101 = !DILocation(line: 943, column: 22, scope: !2083)
!2102 = !DILocation(line: 944, column: 14, scope: !2083)
!2103 = !DILocation(line: 946, column: 2, scope: !2083)
!2104 = !DILocation(line: 946, column: 25, scope: !2083)
!2105 = !DILocation(line: 948, column: 35, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2083, file: !1579, line: 948, column: 6)
!2107 = !DILocation(line: 948, column: 39, scope: !2106)
!2108 = !DILocation(line: 949, column: 7, scope: !2106)
!2109 = !DILocation(line: 948, column: 6, scope: !2106)
!2110 = !DILocation(line: 948, column: 6, scope: !2083)
!2111 = !DILocation(line: 950, column: 3, scope: !2106)
!2112 = !DILocation(line: 952, column: 14, scope: !2083)
!2113 = !DILocation(line: 952, column: 2, scope: !2083)
!2114 = !DILocation(line: 953, column: 1, scope: !2083)
!2115 = distinct !DISubprogram(name: "ERR_PTR", scope: !2116, file: !2116, line: 39, type: !2117, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2119)
!2116 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!97, !120}
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "error", arg: 1, scope: !2115, file: !2116, line: 39, type: !120)
!2121 = !DILocation(line: 39, column: 48, scope: !2115)
!2122 = !DILocation(line: 41, column: 18, scope: !2115)
!2123 = !DILocation(line: 41, column: 9, scope: !2115)
!2124 = !DILocation(line: 41, column: 2, scope: !2115)
!2125 = distinct !DISubprogram(name: "class_find_device_by_of_node", scope: !1714, file: !1714, line: 120, type: !2126, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!166, !1711, !2086}
!2128 = !{!2129, !2130}
!2129 = !DILocalVariable(name: "class", arg: 1, scope: !2125, file: !1714, line: 120, type: !1711)
!2130 = !DILocalVariable(name: "np", arg: 2, scope: !2125, file: !1714, line: 121, type: !2086)
!2131 = !DILocation(line: 120, column: 79, scope: !2125)
!2132 = !DILocation(line: 121, column: 36, scope: !2125)
!2133 = !DILocation(line: 123, column: 27, scope: !2125)
!2134 = !DILocation(line: 123, column: 40, scope: !2125)
!2135 = !DILocation(line: 123, column: 9, scope: !2125)
!2136 = !DILocation(line: 123, column: 2, scope: !2125)
!2137 = distinct !DISubprogram(name: "of_node_put", scope: !1579, file: !1579, line: 136, type: !2138, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !1577}
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "node", arg: 1, scope: !2137, file: !1579, line: 136, type: !1577)
!2142 = !DILocation(line: 136, column: 52, scope: !2137)
!2143 = !DILocation(line: 136, column: 60, scope: !2137)
!2144 = distinct !DISubprogram(name: "led_module_get", scope: !3, file: !3, line: 227, type: !2145, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!122, !166}
!2147 = !{!2148, !2149}
!2148 = !DILocalVariable(name: "led_dev", arg: 1, scope: !2144, file: !3, line: 227, type: !166)
!2149 = !DILocalVariable(name: "led_cdev", scope: !2144, file: !3, line: 229, type: !122)
!2150 = !DILocation(line: 227, column: 59, scope: !2144)
!2151 = !DILocation(line: 229, column: 2, scope: !2144)
!2152 = !DILocation(line: 229, column: 23, scope: !2144)
!2153 = !DILocation(line: 231, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 231, column: 6)
!2155 = !DILocation(line: 231, column: 6, scope: !2144)
!2156 = !DILocation(line: 232, column: 10, scope: !2154)
!2157 = !DILocation(line: 232, column: 3, scope: !2154)
!2158 = !DILocation(line: 234, column: 29, scope: !2144)
!2159 = !DILocation(line: 234, column: 13, scope: !2144)
!2160 = !DILocation(line: 234, column: 11, scope: !2144)
!2161 = !DILocation(line: 236, column: 22, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 236, column: 6)
!2163 = !DILocation(line: 236, column: 32, scope: !2162)
!2164 = !DILocation(line: 236, column: 37, scope: !2162)
!2165 = !DILocation(line: 236, column: 45, scope: !2162)
!2166 = !DILocation(line: 236, column: 53, scope: !2162)
!2167 = !DILocation(line: 236, column: 7, scope: !2162)
!2168 = !DILocation(line: 236, column: 6, scope: !2144)
!2169 = !DILocation(line: 237, column: 14, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 236, column: 61)
!2171 = !DILocation(line: 237, column: 24, scope: !2170)
!2172 = !DILocation(line: 237, column: 3, scope: !2170)
!2173 = !DILocation(line: 238, column: 10, scope: !2170)
!2174 = !DILocation(line: 238, column: 3, scope: !2170)
!2175 = !DILocation(line: 241, column: 9, scope: !2144)
!2176 = !DILocation(line: 241, column: 2, scope: !2144)
!2177 = !DILocation(line: 242, column: 1, scope: !2144)
!2178 = distinct !DISubprogram(name: "led_put", scope: !3, file: !3, line: 278, type: !1773, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2178, file: !3, line: 278, type: !122)
!2181 = !DILocation(line: 278, column: 35, scope: !2178)
!2182 = !DILocation(line: 280, column: 13, scope: !2178)
!2183 = !DILocation(line: 280, column: 23, scope: !2178)
!2184 = !DILocation(line: 280, column: 28, scope: !2178)
!2185 = !DILocation(line: 280, column: 36, scope: !2178)
!2186 = !DILocation(line: 280, column: 44, scope: !2178)
!2187 = !DILocation(line: 280, column: 2, scope: !2178)
!2188 = !DILocation(line: 281, column: 13, scope: !2178)
!2189 = !DILocation(line: 281, column: 23, scope: !2178)
!2190 = !DILocation(line: 281, column: 2, scope: !2178)
!2191 = !DILocation(line: 282, column: 1, scope: !2178)
!2192 = !DISubprogram(name: "module_put", scope: !20, file: !20, line: 706, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2193 = !DISubprogram(name: "put_device", scope: !33, file: !33, line: 1231, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2194 = distinct !DISubprogram(name: "devm_of_led_get", scope: !3, file: !3, line: 319, type: !2195, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!122, !166, !53}
!2197 = !{!2198, !2199, !2200}
!2198 = !DILocalVariable(name: "dev", arg: 1, scope: !2194, file: !3, line: 319, type: !166)
!2199 = !DILocalVariable(name: "index", arg: 2, scope: !2194, file: !3, line: 320, type: !53)
!2200 = !DILocalVariable(name: "led", scope: !2194, file: !3, line: 322, type: !122)
!2201 = !DILocation(line: 319, column: 66, scope: !2194)
!2202 = !DILocation(line: 320, column: 13, scope: !2194)
!2203 = !DILocation(line: 322, column: 2, scope: !2194)
!2204 = !DILocation(line: 322, column: 23, scope: !2194)
!2205 = !DILocation(line: 324, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 324, column: 6)
!2207 = !DILocation(line: 324, column: 6, scope: !2194)
!2208 = !DILocation(line: 325, column: 10, scope: !2206)
!2209 = !DILocation(line: 325, column: 3, scope: !2206)
!2210 = !DILocation(line: 327, column: 19, scope: !2194)
!2211 = !DILocation(line: 327, column: 24, scope: !2194)
!2212 = !DILocation(line: 327, column: 33, scope: !2194)
!2213 = !DILocation(line: 327, column: 8, scope: !2194)
!2214 = !DILocation(line: 327, column: 6, scope: !2194)
!2215 = !DILocation(line: 328, column: 13, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 328, column: 6)
!2217 = !DILocation(line: 328, column: 6, scope: !2216)
!2218 = !DILocation(line: 328, column: 6, scope: !2194)
!2219 = !DILocation(line: 329, column: 10, scope: !2216)
!2220 = !DILocation(line: 329, column: 3, scope: !2216)
!2221 = !DILocation(line: 331, column: 24, scope: !2194)
!2222 = !DILocation(line: 331, column: 29, scope: !2194)
!2223 = !DILocation(line: 331, column: 9, scope: !2194)
!2224 = !DILocation(line: 331, column: 2, scope: !2194)
!2225 = !DILocation(line: 332, column: 1, scope: !2194)
!2226 = distinct !DISubprogram(name: "IS_ERR", scope: !2116, file: !2116, line: 59, type: !2227, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!605, !526}
!2229 = !{!2230}
!2230 = !DILocalVariable(name: "ptr", arg: 1, scope: !2226, file: !2116, line: 59, type: !526)
!2231 = !DILocation(line: 59, column: 60, scope: !2226)
!2232 = !DILocation(line: 61, column: 9, scope: !2226)
!2233 = !DILocation(line: 61, column: 2, scope: !2226)
!2234 = distinct !DISubprogram(name: "__devm_led_get", scope: !3, file: !3, line: 292, type: !2235, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!122, !166, !122}
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "dev", arg: 1, scope: !2234, file: !3, line: 292, type: !166)
!2239 = !DILocalVariable(name: "led", arg: 2, scope: !2234, file: !3, line: 292, type: !122)
!2240 = !DILocalVariable(name: "dr", scope: !2234, file: !3, line: 294, type: !121)
!2241 = !DILocation(line: 292, column: 59, scope: !2234)
!2242 = !DILocation(line: 292, column: 85, scope: !2234)
!2243 = !DILocation(line: 294, column: 2, scope: !2234)
!2244 = !DILocation(line: 294, column: 24, scope: !2234)
!2245 = !DILocation(line: 296, column: 7, scope: !2234)
!2246 = !DILocation(line: 296, column: 5, scope: !2234)
!2247 = !DILocation(line: 297, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 297, column: 6)
!2249 = !DILocation(line: 297, column: 6, scope: !2234)
!2250 = !DILocation(line: 298, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 297, column: 11)
!2252 = !DILocation(line: 298, column: 3, scope: !2251)
!2253 = !DILocation(line: 299, column: 10, scope: !2251)
!2254 = !DILocation(line: 299, column: 3, scope: !2251)
!2255 = !DILocation(line: 302, column: 8, scope: !2234)
!2256 = !DILocation(line: 302, column: 3, scope: !2234)
!2257 = !DILocation(line: 302, column: 6, scope: !2234)
!2258 = !DILocation(line: 303, column: 13, scope: !2234)
!2259 = !DILocation(line: 303, column: 18, scope: !2234)
!2260 = !DILocation(line: 303, column: 2, scope: !2234)
!2261 = !DILocation(line: 305, column: 9, scope: !2234)
!2262 = !DILocation(line: 305, column: 2, scope: !2234)
!2263 = !DILocation(line: 306, column: 1, scope: !2234)
!2264 = distinct !DISubprogram(name: "led_get", scope: !3, file: !3, line: 342, type: !2265, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!122, !166, !251}
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2276}
!2268 = !DILocalVariable(name: "dev", arg: 1, scope: !2264, file: !3, line: 342, type: !166)
!2269 = !DILocalVariable(name: "con_id", arg: 2, scope: !2264, file: !3, line: 342, type: !251)
!2270 = !DILocalVariable(name: "lookup", scope: !2264, file: !3, line: 344, type: !98)
!2271 = !DILocalVariable(name: "provider", scope: !2264, file: !3, line: 345, type: !109)
!2272 = !DILocalVariable(name: "led_dev", scope: !2264, file: !3, line: 346, type: !166)
!2273 = !DILocalVariable(name: "__mptr", scope: !2274, file: !3, line: 349, type: !97)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 349, column: 2)
!2275 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 349, column: 2)
!2276 = !DILocalVariable(name: "__mptr", scope: !2277, file: !3, line: 349, type: !97)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 349, column: 2)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 349, column: 2)
!2279 = !DILocation(line: 342, column: 45, scope: !2264)
!2280 = !DILocation(line: 342, column: 56, scope: !2264)
!2281 = !DILocation(line: 344, column: 2, scope: !2264)
!2282 = !DILocation(line: 344, column: 26, scope: !2264)
!2283 = !DILocation(line: 345, column: 2, scope: !2264)
!2284 = !DILocation(line: 345, column: 14, scope: !2264)
!2285 = !DILocation(line: 346, column: 2, scope: !2264)
!2286 = !DILocation(line: 346, column: 17, scope: !2264)
!2287 = !DILocation(line: 348, column: 2, scope: !2264)
!2288 = !DILocation(line: 349, column: 2, scope: !2274)
!2289 = !DILocation(line: 349, column: 2, scope: !2275)
!2290 = !DILocation(line: 349, column: 2, scope: !2278)
!2291 = !DILocation(line: 350, column: 15, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 350, column: 7)
!2293 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 349, column: 55)
!2294 = !DILocation(line: 350, column: 23, scope: !2292)
!2295 = !DILocation(line: 350, column: 40, scope: !2292)
!2296 = !DILocation(line: 350, column: 31, scope: !2292)
!2297 = !DILocation(line: 350, column: 8, scope: !2292)
!2298 = !DILocation(line: 350, column: 46, scope: !2292)
!2299 = !DILocation(line: 351, column: 15, scope: !2292)
!2300 = !DILocation(line: 351, column: 23, scope: !2292)
!2301 = !DILocation(line: 351, column: 31, scope: !2292)
!2302 = !DILocation(line: 351, column: 8, scope: !2292)
!2303 = !DILocation(line: 350, column: 7, scope: !2293)
!2304 = !DILocation(line: 352, column: 29, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 351, column: 40)
!2306 = !DILocation(line: 352, column: 37, scope: !2305)
!2307 = !DILocation(line: 352, column: 15, scope: !2305)
!2308 = !DILocation(line: 352, column: 13, scope: !2305)
!2309 = !DILocation(line: 353, column: 4, scope: !2305)
!2310 = !DILocation(line: 355, column: 2, scope: !2293)
!2311 = !DILocation(line: 349, column: 2, scope: !2277)
!2312 = distinct !{!2312, !2289, !2313, !2314, !2315}
!2313 = !DILocation(line: 355, column: 2, scope: !2275)
!2314 = !{!"llvm.loop.mustprogress"}
!2315 = !{!"llvm.loop.unroll.disable"}
!2316 = !DILocation(line: 356, column: 2, scope: !2264)
!2317 = !DILocation(line: 358, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 358, column: 6)
!2319 = !DILocation(line: 358, column: 6, scope: !2264)
!2320 = !DILocation(line: 359, column: 10, scope: !2318)
!2321 = !DILocation(line: 359, column: 3, scope: !2318)
!2322 = !DILocation(line: 361, column: 51, scope: !2264)
!2323 = !DILocation(line: 361, column: 12, scope: !2264)
!2324 = !DILocation(line: 361, column: 10, scope: !2264)
!2325 = !DILocation(line: 362, column: 14, scope: !2264)
!2326 = !DILocation(line: 362, column: 2, scope: !2264)
!2327 = !DILocation(line: 364, column: 24, scope: !2264)
!2328 = !DILocation(line: 364, column: 9, scope: !2264)
!2329 = !DILocation(line: 364, column: 2, scope: !2264)
!2330 = !DILocation(line: 365, column: 1, scope: !2264)
!2331 = !DISubprogram(name: "mutex_lock", scope: !506, file: !506, line: 227, type: !2332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!2335 = !DISubprogram(name: "strcmp", scope: !2336, file: !2336, line: 88, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2336 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!53, !109, !109}
!2339 = distinct !DISubprogram(name: "dev_name", scope: !33, file: !33, line: 858, type: !2340, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!109, !839}
!2342 = !{!2343}
!2343 = !DILocalVariable(name: "dev", arg: 1, scope: !2339, file: !33, line: 858, type: !839)
!2344 = !DILocation(line: 858, column: 57, scope: !2339)
!2345 = !DILocation(line: 861, column: 6, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2339, file: !33, line: 861, column: 6)
!2347 = !DILocation(line: 861, column: 11, scope: !2346)
!2348 = !DILocation(line: 861, column: 6, scope: !2339)
!2349 = !DILocation(line: 862, column: 10, scope: !2346)
!2350 = !DILocation(line: 862, column: 15, scope: !2346)
!2351 = !DILocation(line: 862, column: 3, scope: !2346)
!2352 = !DILocation(line: 864, column: 23, scope: !2339)
!2353 = !DILocation(line: 864, column: 28, scope: !2339)
!2354 = !DILocation(line: 864, column: 9, scope: !2339)
!2355 = !DILocation(line: 864, column: 2, scope: !2339)
!2356 = !DILocation(line: 865, column: 1, scope: !2339)
!2357 = !DISubprogram(name: "kstrdup_const", scope: !2336, file: !2336, line: 217, type: !2358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!109, !109, !114}
!2360 = !DISubprogram(name: "mutex_unlock", scope: !506, file: !506, line: 246, type: !2332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = distinct !DISubprogram(name: "class_find_device_by_name", scope: !1714, file: !1714, line: 108, type: !2362, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!166, !1711, !109}
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "class", arg: 1, scope: !2361, file: !1714, line: 108, type: !1711)
!2366 = !DILocalVariable(name: "name", arg: 2, scope: !2361, file: !1714, line: 109, type: !109)
!2367 = !DILocation(line: 108, column: 76, scope: !2361)
!2368 = !DILocation(line: 109, column: 26, scope: !2361)
!2369 = !DILocation(line: 111, column: 27, scope: !2361)
!2370 = !DILocation(line: 111, column: 40, scope: !2361)
!2371 = !DILocation(line: 111, column: 9, scope: !2361)
!2372 = !DILocation(line: 111, column: 2, scope: !2361)
!2373 = !DISubprogram(name: "kfree_const", scope: !2336, file: !2336, line: 214, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !526}
!2376 = distinct !DISubprogram(name: "devm_led_get", scope: !3, file: !3, line: 378, type: !2265, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "dev", arg: 1, scope: !2376, file: !3, line: 378, type: !166)
!2379 = !DILocalVariable(name: "con_id", arg: 2, scope: !2376, file: !3, line: 378, type: !251)
!2380 = !DILocalVariable(name: "led", scope: !2376, file: !3, line: 380, type: !122)
!2381 = !DILocation(line: 378, column: 50, scope: !2376)
!2382 = !DILocation(line: 378, column: 61, scope: !2376)
!2383 = !DILocation(line: 380, column: 2, scope: !2376)
!2384 = !DILocation(line: 380, column: 23, scope: !2376)
!2385 = !DILocation(line: 382, column: 16, scope: !2376)
!2386 = !DILocation(line: 382, column: 21, scope: !2376)
!2387 = !DILocation(line: 382, column: 8, scope: !2376)
!2388 = !DILocation(line: 382, column: 6, scope: !2376)
!2389 = !DILocation(line: 383, column: 13, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 383, column: 6)
!2391 = !DILocation(line: 383, column: 6, scope: !2390)
!2392 = !DILocation(line: 383, column: 6, scope: !2376)
!2393 = !DILocation(line: 384, column: 10, scope: !2390)
!2394 = !DILocation(line: 384, column: 3, scope: !2390)
!2395 = !DILocation(line: 386, column: 24, scope: !2376)
!2396 = !DILocation(line: 386, column: 29, scope: !2376)
!2397 = !DILocation(line: 386, column: 9, scope: !2376)
!2398 = !DILocation(line: 386, column: 2, scope: !2376)
!2399 = !DILocation(line: 387, column: 1, scope: !2376)
!2400 = distinct !DISubprogram(name: "led_add_lookup", scope: !3, file: !3, line: 397, type: !2401, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !98}
!2403 = !{!2404}
!2404 = !DILocalVariable(name: "led_lookup", arg: 1, scope: !2400, file: !3, line: 397, type: !98)
!2405 = !DILocation(line: 397, column: 45, scope: !2400)
!2406 = !DILocation(line: 399, column: 2, scope: !2400)
!2407 = !DILocation(line: 400, column: 17, scope: !2400)
!2408 = !DILocation(line: 400, column: 29, scope: !2400)
!2409 = !DILocation(line: 400, column: 2, scope: !2400)
!2410 = !DILocation(line: 401, column: 2, scope: !2400)
!2411 = !DILocation(line: 402, column: 1, scope: !2400)
!2412 = distinct !DISubprogram(name: "list_add_tail", scope: !2413, file: !2413, line: 181, type: !2414, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2416)
!2413 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !106, !106}
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "new", arg: 1, scope: !2412, file: !2413, line: 181, type: !106)
!2418 = !DILocalVariable(name: "head", arg: 2, scope: !2412, file: !2413, line: 181, type: !106)
!2419 = !DILocation(line: 181, column: 52, scope: !2412)
!2420 = !DILocation(line: 181, column: 75, scope: !2412)
!2421 = !DILocation(line: 183, column: 13, scope: !2412)
!2422 = !DILocation(line: 183, column: 18, scope: !2412)
!2423 = !DILocation(line: 183, column: 24, scope: !2412)
!2424 = !DILocation(line: 183, column: 30, scope: !2412)
!2425 = !DILocation(line: 183, column: 2, scope: !2412)
!2426 = !DILocation(line: 184, column: 1, scope: !2412)
!2427 = distinct !DISubprogram(name: "led_remove_lookup", scope: !3, file: !3, line: 409, type: !2401, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2428)
!2428 = !{!2429}
!2429 = !DILocalVariable(name: "led_lookup", arg: 1, scope: !2427, file: !3, line: 409, type: !98)
!2430 = !DILocation(line: 409, column: 48, scope: !2427)
!2431 = !DILocation(line: 411, column: 2, scope: !2427)
!2432 = !DILocation(line: 412, column: 12, scope: !2427)
!2433 = !DILocation(line: 412, column: 24, scope: !2427)
!2434 = !DILocation(line: 412, column: 2, scope: !2427)
!2435 = !DILocation(line: 413, column: 2, scope: !2427)
!2436 = !DILocation(line: 414, column: 1, scope: !2427)
!2437 = distinct !DISubprogram(name: "list_del", scope: !2413, file: !2413, line: 227, type: !2438, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !106}
!2440 = !{!2441}
!2441 = !DILocalVariable(name: "entry", arg: 1, scope: !2437, file: !2413, line: 227, type: !106)
!2442 = !DILocation(line: 227, column: 47, scope: !2437)
!2443 = !DILocation(line: 229, column: 19, scope: !2437)
!2444 = !DILocation(line: 229, column: 2, scope: !2437)
!2445 = !DILocation(line: 230, column: 2, scope: !2437)
!2446 = !DILocation(line: 230, column: 9, scope: !2437)
!2447 = !DILocation(line: 230, column: 14, scope: !2437)
!2448 = !DILocation(line: 231, column: 2, scope: !2437)
!2449 = !DILocation(line: 231, column: 9, scope: !2437)
!2450 = !DILocation(line: 231, column: 14, scope: !2437)
!2451 = !DILocation(line: 232, column: 1, scope: !2437)
!2452 = distinct !DISubprogram(name: "devm_of_led_get_optional", scope: !3, file: !3, line: 429, type: !2195, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "dev", arg: 1, scope: !2452, file: !3, line: 429, type: !166)
!2455 = !DILocalVariable(name: "index", arg: 2, scope: !2452, file: !3, line: 430, type: !53)
!2456 = !DILocalVariable(name: "led", scope: !2452, file: !3, line: 432, type: !122)
!2457 = !DILocation(line: 429, column: 75, scope: !2452)
!2458 = !DILocation(line: 430, column: 12, scope: !2452)
!2459 = !DILocation(line: 432, column: 2, scope: !2452)
!2460 = !DILocation(line: 432, column: 23, scope: !2452)
!2461 = !DILocation(line: 434, column: 24, scope: !2452)
!2462 = !DILocation(line: 434, column: 29, scope: !2452)
!2463 = !DILocation(line: 434, column: 8, scope: !2452)
!2464 = !DILocation(line: 434, column: 6, scope: !2452)
!2465 = !DILocation(line: 435, column: 13, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 435, column: 6)
!2467 = !DILocation(line: 435, column: 6, scope: !2466)
!2468 = !DILocation(line: 435, column: 18, scope: !2466)
!2469 = !DILocation(line: 435, column: 29, scope: !2466)
!2470 = !DILocation(line: 435, column: 21, scope: !2466)
!2471 = !DILocation(line: 435, column: 34, scope: !2466)
!2472 = !DILocation(line: 435, column: 6, scope: !2452)
!2473 = !DILocation(line: 436, column: 3, scope: !2466)
!2474 = !DILocation(line: 438, column: 9, scope: !2452)
!2475 = !DILocation(line: 438, column: 2, scope: !2452)
!2476 = !DILocation(line: 439, column: 1, scope: !2452)
!2477 = distinct !DISubprogram(name: "PTR_ERR", scope: !2116, file: !2116, line: 49, type: !2478, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!120, !526}
!2480 = !{!2481}
!2481 = !DILocalVariable(name: "ptr", arg: 1, scope: !2477, file: !2116, line: 49, type: !526)
!2482 = !DILocation(line: 49, column: 61, scope: !2477)
!2483 = !DILocation(line: 51, column: 16, scope: !2477)
!2484 = !DILocation(line: 51, column: 9, scope: !2477)
!2485 = !DILocation(line: 51, column: 2, scope: !2477)
!2486 = !DILocation(line: 471, column: 46, scope: !1869)
!2487 = !DILocation(line: 472, column: 31, scope: !1869)
!2488 = !DILocation(line: 473, column: 32, scope: !1869)
!2489 = !DILocation(line: 475, column: 2, scope: !1869)
!2490 = !DILocation(line: 475, column: 7, scope: !1869)
!2491 = !DILocation(line: 476, column: 2, scope: !1869)
!2492 = !DILocation(line: 476, column: 7, scope: !1869)
!2493 = !DILocation(line: 477, column: 2, scope: !1869)
!2494 = !DILocation(line: 477, column: 14, scope: !1869)
!2495 = !DILocation(line: 477, column: 30, scope: !1869)
!2496 = !DILocation(line: 478, column: 2, scope: !1869)
!2497 = !DILocation(line: 478, column: 6, scope: !1869)
!2498 = !DILocation(line: 480, column: 6, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 480, column: 6)
!2500 = !DILocation(line: 480, column: 6, scope: !1869)
!2501 = !DILocation(line: 481, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 481, column: 7)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 480, column: 17)
!2504 = !DILocation(line: 481, column: 18, scope: !2502)
!2505 = !{i8 0, i8 2}
!2506 = !DILocation(line: 481, column: 36, scope: !2502)
!2507 = !DILocation(line: 481, column: 40, scope: !2502)
!2508 = !DILocation(line: 481, column: 51, scope: !2502)
!2509 = !DILocation(line: 481, column: 7, scope: !2503)
!2510 = !DILocation(line: 482, column: 4, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 482, column: 4)
!2512 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 481, column: 63)
!2513 = !DILocation(line: 482, column: 4, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 482, column: 4)
!2515 = !DILocation(line: 483, column: 4, scope: !2512)
!2516 = !DILocation(line: 485, column: 26, scope: !2503)
!2517 = !DILocation(line: 485, column: 34, scope: !2503)
!2518 = !DILocation(line: 485, column: 45, scope: !2503)
!2519 = !DILocation(line: 485, column: 9, scope: !2503)
!2520 = !DILocation(line: 485, column: 7, scope: !2503)
!2521 = !DILocation(line: 486, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 486, column: 7)
!2523 = !DILocation(line: 486, column: 11, scope: !2522)
!2524 = !DILocation(line: 486, column: 7, scope: !2503)
!2525 = !DILocation(line: 487, column: 11, scope: !2522)
!2526 = !DILocation(line: 487, column: 4, scope: !2522)
!2527 = !DILocation(line: 489, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 489, column: 7)
!2529 = !DILocation(line: 489, column: 18, scope: !2528)
!2530 = !DILocation(line: 489, column: 7, scope: !2503)
!2531 = !DILocation(line: 490, column: 32, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 489, column: 26)
!2533 = !DILocation(line: 490, column: 43, scope: !2532)
!2534 = !DILocation(line: 492, column: 6, scope: !2532)
!2535 = !DILocation(line: 492, column: 16, scope: !2532)
!2536 = !DILocation(line: 490, column: 4, scope: !2532)
!2537 = !DILocation(line: 494, column: 32, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 494, column: 8)
!2539 = !DILocation(line: 494, column: 43, scope: !2538)
!2540 = !DILocation(line: 494, column: 8, scope: !2538)
!2541 = !DILocation(line: 494, column: 8, scope: !2532)
!2542 = !DILocation(line: 496, column: 5, scope: !2538)
!2543 = !DILocation(line: 496, column: 15, scope: !2538)
!2544 = !DILocation(line: 496, column: 21, scope: !2538)
!2545 = !DILocation(line: 498, column: 29, scope: !2532)
!2546 = !DILocation(line: 498, column: 40, scope: !2532)
!2547 = !DILocation(line: 500, column: 6, scope: !2532)
!2548 = !DILocation(line: 500, column: 16, scope: !2532)
!2549 = !DILocation(line: 498, column: 4, scope: !2532)
!2550 = !DILocation(line: 502, column: 32, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 502, column: 8)
!2552 = !DILocation(line: 502, column: 43, scope: !2551)
!2553 = !DILocation(line: 502, column: 8, scope: !2551)
!2554 = !DILocation(line: 502, column: 8, scope: !2532)
!2555 = !DILocation(line: 503, column: 30, scope: !2551)
!2556 = !DILocation(line: 503, column: 41, scope: !2551)
!2557 = !DILocation(line: 504, column: 10, scope: !2551)
!2558 = !DILocation(line: 504, column: 20, scope: !2551)
!2559 = !DILocation(line: 503, column: 5, scope: !2551)
!2560 = !DILocation(line: 505, column: 3, scope: !2532)
!2561 = !DILocation(line: 506, column: 2, scope: !2503)
!2562 = !DILocation(line: 507, column: 19, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 506, column: 9)
!2564 = !DILocation(line: 507, column: 29, scope: !2563)
!2565 = !DILocation(line: 507, column: 17, scope: !2563)
!2566 = !DILocation(line: 510, column: 31, scope: !1869)
!2567 = !DILocation(line: 510, column: 46, scope: !1869)
!2568 = !DILocation(line: 510, column: 8, scope: !1869)
!2569 = !DILocation(line: 510, column: 6, scope: !1869)
!2570 = !DILocation(line: 511, column: 6, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 511, column: 6)
!2572 = !DILocation(line: 511, column: 10, scope: !2571)
!2573 = !DILocation(line: 511, column: 6, scope: !1869)
!2574 = !DILocation(line: 512, column: 10, scope: !2571)
!2575 = !DILocation(line: 512, column: 3, scope: !2571)
!2576 = !DILocation(line: 514, column: 6, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 514, column: 6)
!2578 = !DILocation(line: 514, column: 16, scope: !2577)
!2579 = !DILocation(line: 514, column: 22, scope: !2577)
!2580 = !DILocation(line: 514, column: 6, scope: !1869)
!2581 = !DILocation(line: 515, column: 3, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 515, column: 3)
!2583 = !DILocation(line: 515, column: 3, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 515, column: 3)
!2585 = !DILocation(line: 515, column: 3, scope: !2577)
!2586 = !DILocation(line: 517, column: 2, scope: !1869)
!2587 = !DILocation(line: 517, column: 2, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 517, column: 2)
!2589 = !DILocation(line: 518, column: 14, scope: !1869)
!2590 = !DILocation(line: 518, column: 24, scope: !1869)
!2591 = !DILocation(line: 518, column: 2, scope: !1869)
!2592 = !DILocation(line: 519, column: 57, scope: !1869)
!2593 = !DILocation(line: 520, column: 9, scope: !1869)
!2594 = !DILocation(line: 520, column: 19, scope: !1869)
!2595 = !DILocation(line: 520, column: 29, scope: !1869)
!2596 = !DILocation(line: 520, column: 43, scope: !1869)
!2597 = !DILocation(line: 519, column: 18, scope: !1869)
!2598 = !DILocation(line: 519, column: 2, scope: !1869)
!2599 = !DILocation(line: 519, column: 12, scope: !1869)
!2600 = !DILocation(line: 519, column: 16, scope: !1869)
!2601 = !DILocation(line: 521, column: 13, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 521, column: 6)
!2603 = !DILocation(line: 521, column: 23, scope: !2602)
!2604 = !DILocation(line: 521, column: 6, scope: !2602)
!2605 = !DILocation(line: 521, column: 6, scope: !1869)
!2606 = !DILocation(line: 522, column: 17, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 521, column: 29)
!2608 = !DILocation(line: 522, column: 27, scope: !2607)
!2609 = !DILocation(line: 522, column: 3, scope: !2607)
!2610 = !DILocation(line: 523, column: 18, scope: !2607)
!2611 = !DILocation(line: 523, column: 28, scope: !2607)
!2612 = !DILocation(line: 523, column: 10, scope: !2607)
!2613 = !DILocation(line: 523, column: 3, scope: !2607)
!2614 = !DILocation(line: 525, column: 6, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 525, column: 6)
!2616 = !DILocation(line: 525, column: 16, scope: !2615)
!2617 = !DILocation(line: 525, column: 19, scope: !2615)
!2618 = !DILocation(line: 525, column: 30, scope: !2615)
!2619 = !DILocation(line: 525, column: 6, scope: !1869)
!2620 = !DILocation(line: 526, column: 19, scope: !2615)
!2621 = !DILocation(line: 526, column: 29, scope: !2615)
!2622 = !DILocation(line: 526, column: 34, scope: !2615)
!2623 = !DILocation(line: 526, column: 45, scope: !2615)
!2624 = !DILocation(line: 526, column: 3, scope: !2615)
!2625 = !DILocation(line: 528, column: 6, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 528, column: 6)
!2627 = !DILocation(line: 528, column: 6, scope: !1869)
!2628 = !DILocation(line: 529, column: 3, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 529, column: 3)
!2630 = !DILocation(line: 529, column: 3, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 529, column: 3)
!2632 = !DILocation(line: 529, column: 3, scope: !2626)
!2633 = !DILocation(line: 532, column: 6, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 532, column: 6)
!2635 = !DILocation(line: 532, column: 16, scope: !2634)
!2636 = !DILocation(line: 532, column: 22, scope: !2634)
!2637 = !DILocation(line: 532, column: 6, scope: !1869)
!2638 = !DILocation(line: 533, column: 39, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 532, column: 47)
!2640 = !DILocation(line: 533, column: 9, scope: !2639)
!2641 = !DILocation(line: 533, column: 7, scope: !2639)
!2642 = !DILocation(line: 534, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 534, column: 7)
!2644 = !DILocation(line: 534, column: 7, scope: !2639)
!2645 = !DILocation(line: 535, column: 22, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 534, column: 12)
!2647 = !DILocation(line: 535, column: 32, scope: !2646)
!2648 = !DILocation(line: 535, column: 4, scope: !2646)
!2649 = !DILocation(line: 536, column: 4, scope: !2646)
!2650 = !DILocation(line: 536, column: 14, scope: !2646)
!2651 = !DILocation(line: 536, column: 18, scope: !2646)
!2652 = !DILocation(line: 537, column: 18, scope: !2646)
!2653 = !DILocation(line: 537, column: 28, scope: !2646)
!2654 = !DILocation(line: 537, column: 4, scope: !2646)
!2655 = !DILocation(line: 538, column: 11, scope: !2646)
!2656 = !DILocation(line: 538, column: 4, scope: !2646)
!2657 = !DILocation(line: 540, column: 2, scope: !2639)
!2658 = !DILocation(line: 542, column: 2, scope: !1869)
!2659 = !DILocation(line: 542, column: 12, scope: !1869)
!2660 = !DILocation(line: 542, column: 23, scope: !1869)
!2661 = !DILocation(line: 544, column: 2, scope: !1869)
!2662 = !DILocation(line: 544, column: 2, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 544, column: 2)
!2664 = !DILocation(line: 550, column: 2, scope: !1869)
!2665 = !DILocation(line: 551, column: 17, scope: !1869)
!2666 = !DILocation(line: 551, column: 27, scope: !1869)
!2667 = !DILocation(line: 551, column: 2, scope: !1869)
!2668 = !DILocation(line: 552, column: 2, scope: !1869)
!2669 = !DILocation(line: 554, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 554, column: 6)
!2671 = !DILocation(line: 554, column: 17, scope: !2670)
!2672 = !DILocation(line: 554, column: 6, scope: !1869)
!2673 = !DILocation(line: 555, column: 3, scope: !2670)
!2674 = !DILocation(line: 555, column: 13, scope: !2670)
!2675 = !DILocation(line: 555, column: 28, scope: !2670)
!2676 = !DILocation(line: 557, column: 24, scope: !1869)
!2677 = !DILocation(line: 557, column: 2, scope: !1869)
!2678 = !DILocation(line: 559, column: 16, scope: !1869)
!2679 = !DILocation(line: 559, column: 2, scope: !1869)
!2680 = !DILocation(line: 562, column: 26, scope: !1869)
!2681 = !DILocation(line: 562, column: 2, scope: !1869)
!2682 = !DILocation(line: 565, column: 16, scope: !1869)
!2683 = !DILocation(line: 565, column: 26, scope: !1869)
!2684 = !DILocation(line: 565, column: 2, scope: !1869)
!2685 = !DILocation(line: 570, column: 2, scope: !1869)
!2686 = !DILocation(line: 571, column: 1, scope: !1869)
!2687 = !DISubprogram(name: "_dev_err", scope: !2688, file: !2688, line: 50, type: !2689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2688 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !839, !109, null}
!2691 = !DISubprogram(name: "led_compose_name", scope: !6, file: !6, line: 446, type: !2692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!53, !166, !1872, !251}
!2694 = !DISubprogram(name: "fwnode_property_read_string", scope: !61, file: !61, line: 76, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!53, !1608, !109, !1246}
!2697 = !DISubprogram(name: "fwnode_property_present", scope: !61, file: !61, line: 59, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2698 = distinct !DISubprogram(name: "fwnode_property_read_u32", scope: !61, file: !61, line: 265, type: !2699, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!53, !1608, !109, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!2702 = !{!2703, !2704, !2705}
!2703 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2698, file: !61, line: 265, type: !1608)
!2704 = !DILocalVariable(name: "propname", arg: 2, scope: !2698, file: !61, line: 266, type: !109)
!2705 = !DILocalVariable(name: "val", arg: 3, scope: !2698, file: !61, line: 266, type: !2701)
!2706 = !DILocation(line: 265, column: 72, scope: !2698)
!2707 = !DILocation(line: 266, column: 21, scope: !2698)
!2708 = !DILocation(line: 266, column: 36, scope: !2698)
!2709 = !DILocation(line: 268, column: 40, scope: !2698)
!2710 = !DILocation(line: 268, column: 48, scope: !2698)
!2711 = !DILocation(line: 268, column: 58, scope: !2698)
!2712 = !DILocation(line: 268, column: 9, scope: !2698)
!2713 = !DILocation(line: 268, column: 2, scope: !2698)
!2714 = distinct !DISubprogram(name: "led_classdev_next_name", scope: !3, file: !3, line: 442, type: !2715, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!53, !109, !251, !297}
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723}
!2718 = !DILocalVariable(name: "init_name", arg: 1, scope: !2714, file: !3, line: 442, type: !109)
!2719 = !DILocalVariable(name: "name", arg: 2, scope: !2714, file: !3, line: 442, type: !251)
!2720 = !DILocalVariable(name: "len", arg: 3, scope: !2714, file: !3, line: 443, type: !297)
!2721 = !DILocalVariable(name: "i", scope: !2714, file: !3, line: 445, type: !7)
!2722 = !DILocalVariable(name: "ret", scope: !2714, file: !3, line: 446, type: !53)
!2723 = !DILocalVariable(name: "dev", scope: !2714, file: !3, line: 447, type: !166)
!2724 = !DILocation(line: 442, column: 47, scope: !2714)
!2725 = !DILocation(line: 442, column: 64, scope: !2714)
!2726 = !DILocation(line: 443, column: 14, scope: !2714)
!2727 = !DILocation(line: 445, column: 2, scope: !2714)
!2728 = !DILocation(line: 445, column: 15, scope: !2714)
!2729 = !DILocation(line: 446, column: 2, scope: !2714)
!2730 = !DILocation(line: 446, column: 6, scope: !2714)
!2731 = !DILocation(line: 447, column: 2, scope: !2714)
!2732 = !DILocation(line: 447, column: 17, scope: !2714)
!2733 = !DILocation(line: 449, column: 10, scope: !2714)
!2734 = !DILocation(line: 449, column: 16, scope: !2714)
!2735 = !DILocation(line: 449, column: 27, scope: !2714)
!2736 = !DILocation(line: 449, column: 2, scope: !2714)
!2737 = !DILocation(line: 451, column: 2, scope: !2714)
!2738 = !DILocation(line: 451, column: 10, scope: !2714)
!2739 = !DILocation(line: 451, column: 16, scope: !2714)
!2740 = !DILocation(line: 451, column: 14, scope: !2714)
!2741 = !DILocation(line: 451, column: 21, scope: !2714)
!2742 = !DILocation(line: 452, column: 55, scope: !2714)
!2743 = !DILocation(line: 452, column: 16, scope: !2714)
!2744 = !DILocation(line: 452, column: 14, scope: !2714)
!2745 = !DILocation(line: 0, scope: !2714)
!2746 = !DILocation(line: 453, column: 14, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 452, column: 63)
!2748 = !DILocation(line: 453, column: 3, scope: !2747)
!2749 = !DILocation(line: 454, column: 18, scope: !2747)
!2750 = !DILocation(line: 454, column: 24, scope: !2747)
!2751 = !DILocation(line: 454, column: 38, scope: !2747)
!2752 = !DILocation(line: 454, column: 49, scope: !2747)
!2753 = !DILocation(line: 454, column: 9, scope: !2747)
!2754 = !DILocation(line: 454, column: 7, scope: !2747)
!2755 = distinct !{!2755, !2737, !2756, !2314, !2315}
!2756 = !DILocation(line: 455, column: 2, scope: !2714)
!2757 = !DILocation(line: 457, column: 6, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 457, column: 6)
!2759 = !DILocation(line: 457, column: 13, scope: !2758)
!2760 = !DILocation(line: 457, column: 10, scope: !2758)
!2761 = !DILocation(line: 457, column: 6, scope: !2714)
!2762 = !DILocation(line: 458, column: 3, scope: !2758)
!2763 = !DILocation(line: 460, column: 9, scope: !2714)
!2764 = !DILocation(line: 460, column: 2, scope: !2714)
!2765 = !DILocation(line: 461, column: 1, scope: !2714)
!2766 = !DISubprogram(name: "_dev_warn", scope: !2688, file: !2688, line: 52, type: !2689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2767 = !DISubprogram(name: "__mutex_init", scope: !506, file: !506, line: 121, type: !2768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2334, !109, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!2771 = !DISubprogram(name: "device_create_with_groups", scope: !33, file: !33, line: 1184, type: !2772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!166, !1711, !166, !1705, !97, !301, !109, null}
!2774 = !DISubprogram(name: "device_set_node", scope: !33, file: !33, line: 1137, type: !2775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !166, !1590}
!2777 = distinct !DISubprogram(name: "led_add_brightness_hw_changed", scope: !3, file: !3, line: 167, type: !163, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2778 = !{!2779}
!2779 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2777, file: !3, line: 167, type: !122)
!2780 = !DILocation(line: 167, column: 63, scope: !2777)
!2781 = !DILocation(line: 169, column: 2, scope: !2777)
!2782 = !DISubprogram(name: "device_unregister", scope: !33, file: !33, line: 1055, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2783 = !DISubprogram(name: "__init_rwsem", scope: !429, file: !429, line: 104, type: !2784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2786, !109, !2770}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2787 = !DISubprogram(name: "down_write", scope: !429, file: !429, line: 187, type: !2788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2786}
!2790 = !DISubprogram(name: "up_write", scope: !429, file: !429, line: 203, type: !2788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2791 = !DISubprogram(name: "led_update_brightness", scope: !6, file: !6, line: 404, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2792 = !DISubprogram(name: "led_init_core", scope: !2026, file: !2026, line: 20, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2793 = !DISubprogram(name: "led_trigger_set_default", scope: !6, file: !6, line: 518, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2794 = distinct !DISubprogram(name: "led_classdev_unregister", scope: !3, file: !3, line: 580, type: !1773, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2795)
!2795 = !{!2796}
!2796 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2794, file: !3, line: 580, type: !122)
!2797 = !DILocation(line: 580, column: 51, scope: !2794)
!2798 = !DILocation(line: 582, column: 21, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 582, column: 6)
!2800 = !DILocation(line: 582, column: 31, scope: !2799)
!2801 = !DILocation(line: 582, column: 6, scope: !2799)
!2802 = !DILocation(line: 582, column: 6, scope: !2794)
!2803 = !DILocation(line: 583, column: 3, scope: !2799)
!2804 = !DILocation(line: 586, column: 14, scope: !2794)
!2805 = !DILocation(line: 586, column: 24, scope: !2794)
!2806 = !DILocation(line: 586, column: 2, scope: !2794)
!2807 = !DILocation(line: 587, column: 6, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 587, column: 6)
!2809 = !DILocation(line: 587, column: 16, scope: !2808)
!2810 = !DILocation(line: 587, column: 6, scope: !2794)
!2811 = !DILocation(line: 588, column: 19, scope: !2808)
!2812 = !DILocation(line: 588, column: 3, scope: !2808)
!2813 = !DILocation(line: 589, column: 12, scope: !2794)
!2814 = !DILocation(line: 589, column: 22, scope: !2794)
!2815 = !DILocation(line: 589, column: 2, scope: !2794)
!2816 = !DILocation(line: 592, column: 2, scope: !2794)
!2817 = !DILocation(line: 592, column: 12, scope: !2794)
!2818 = !DILocation(line: 592, column: 18, scope: !2794)
!2819 = !DILocation(line: 595, column: 26, scope: !2794)
!2820 = !DILocation(line: 595, column: 2, scope: !2794)
!2821 = !DILocation(line: 597, column: 8, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 597, column: 6)
!2823 = !DILocation(line: 597, column: 18, scope: !2822)
!2824 = !DILocation(line: 597, column: 24, scope: !2822)
!2825 = !DILocation(line: 597, column: 6, scope: !2794)
!2826 = !DILocation(line: 598, column: 22, scope: !2822)
!2827 = !DILocation(line: 598, column: 3, scope: !2822)
!2828 = !DILocation(line: 600, column: 14, scope: !2794)
!2829 = !DILocation(line: 600, column: 24, scope: !2794)
!2830 = !DILocation(line: 600, column: 2, scope: !2794)
!2831 = !DILocation(line: 602, column: 6, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 602, column: 6)
!2833 = !DILocation(line: 602, column: 16, scope: !2832)
!2834 = !DILocation(line: 602, column: 22, scope: !2832)
!2835 = !DILocation(line: 602, column: 6, scope: !2794)
!2836 = !DILocation(line: 603, column: 36, scope: !2832)
!2837 = !DILocation(line: 603, column: 3, scope: !2832)
!2838 = !DILocation(line: 605, column: 20, scope: !2794)
!2839 = !DILocation(line: 605, column: 30, scope: !2794)
!2840 = !DILocation(line: 605, column: 2, scope: !2794)
!2841 = !DILocation(line: 607, column: 2, scope: !2794)
!2842 = !DILocation(line: 608, column: 12, scope: !2794)
!2843 = !DILocation(line: 608, column: 22, scope: !2794)
!2844 = !DILocation(line: 608, column: 2, scope: !2794)
!2845 = !DILocation(line: 609, column: 2, scope: !2794)
!2846 = !DILocation(line: 611, column: 17, scope: !2794)
!2847 = !DILocation(line: 611, column: 27, scope: !2794)
!2848 = !DILocation(line: 611, column: 2, scope: !2794)
!2849 = !DILocation(line: 612, column: 1, scope: !2794)
!2850 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2116, file: !2116, line: 70, type: !2227, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2851)
!2851 = !{!2852}
!2852 = !DILocalVariable(name: "ptr", arg: 1, scope: !2850, file: !2116, line: 70, type: !526)
!2853 = !DILocation(line: 70, column: 68, scope: !2850)
!2854 = !DILocation(line: 72, column: 9, scope: !2850)
!2855 = !DILocation(line: 72, column: 24, scope: !2850)
!2856 = !DILocation(line: 72, column: 27, scope: !2850)
!2857 = !DILocation(line: 72, column: 2, scope: !2850)
!2858 = !DISubprogram(name: "led_trigger_set", scope: !6, file: !6, line: 519, type: !2859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!53, !122, !1781}
!2861 = !DISubprogram(name: "led_stop_software_blink", scope: !2026, file: !2026, line: 21, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2862 = !DISubprogram(name: "led_set_brightness", scope: !6, file: !6, line: 380, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2863 = distinct !DISubprogram(name: "led_remove_brightness_hw_changed", scope: !3, file: !3, line: 171, type: !1773, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2864)
!2864 = !{!2865}
!2865 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2863, file: !3, line: 171, type: !122)
!2866 = !DILocation(line: 171, column: 67, scope: !2863)
!2867 = !DILocation(line: 173, column: 1, scope: !2863)
!2868 = distinct !DISubprogram(name: "mutex_destroy", scope: !506, file: !506, line: 92, type: !2332, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2869)
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "lock", arg: 1, scope: !2868, file: !506, line: 92, type: !2334)
!2871 = !DILocation(line: 92, column: 48, scope: !2868)
!2872 = !DILocation(line: 92, column: 55, scope: !2868)
!2873 = distinct !DISubprogram(name: "devm_led_classdev_register_ext", scope: !3, file: !3, line: 627, type: !1870, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2874)
!2874 = !{!2875, !2876, !2877, !2878, !2879}
!2875 = !DILocalVariable(name: "parent", arg: 1, scope: !2873, file: !3, line: 627, type: !166)
!2876 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !2873, file: !3, line: 628, type: !122)
!2877 = !DILocalVariable(name: "init_data", arg: 3, scope: !2873, file: !3, line: 629, type: !1872)
!2878 = !DILocalVariable(name: "dr", scope: !2873, file: !3, line: 631, type: !121)
!2879 = !DILocalVariable(name: "rc", scope: !2873, file: !3, line: 632, type: !53)
!2880 = !DILocation(line: 627, column: 51, scope: !2873)
!2881 = !DILocation(line: 628, column: 29, scope: !2873)
!2882 = !DILocation(line: 629, column: 30, scope: !2873)
!2883 = !DILocation(line: 631, column: 2, scope: !2873)
!2884 = !DILocation(line: 631, column: 24, scope: !2873)
!2885 = !DILocation(line: 632, column: 2, scope: !2873)
!2886 = !DILocation(line: 632, column: 6, scope: !2873)
!2887 = !DILocation(line: 634, column: 7, scope: !2873)
!2888 = !DILocation(line: 634, column: 5, scope: !2873)
!2889 = !DILocation(line: 635, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 635, column: 6)
!2891 = !DILocation(line: 635, column: 6, scope: !2873)
!2892 = !DILocation(line: 636, column: 3, scope: !2890)
!2893 = !DILocation(line: 638, column: 33, scope: !2873)
!2894 = !DILocation(line: 638, column: 41, scope: !2873)
!2895 = !DILocation(line: 638, column: 51, scope: !2873)
!2896 = !DILocation(line: 638, column: 7, scope: !2873)
!2897 = !DILocation(line: 638, column: 5, scope: !2873)
!2898 = !DILocation(line: 639, column: 6, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 639, column: 6)
!2900 = !DILocation(line: 639, column: 6, scope: !2873)
!2901 = !DILocation(line: 640, column: 15, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 639, column: 10)
!2903 = !DILocation(line: 640, column: 3, scope: !2902)
!2904 = !DILocation(line: 641, column: 10, scope: !2902)
!2905 = !DILocation(line: 641, column: 3, scope: !2902)
!2906 = !DILocation(line: 644, column: 8, scope: !2873)
!2907 = !DILocation(line: 644, column: 3, scope: !2873)
!2908 = !DILocation(line: 644, column: 6, scope: !2873)
!2909 = !DILocation(line: 645, column: 13, scope: !2873)
!2910 = !DILocation(line: 645, column: 21, scope: !2873)
!2911 = !DILocation(line: 645, column: 2, scope: !2873)
!2912 = !DILocation(line: 647, column: 2, scope: !2873)
!2913 = !DILocation(line: 648, column: 1, scope: !2873)
!2914 = !DISubprogram(name: "__devres_alloc_node", scope: !33, file: !33, line: 274, type: !2915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!97, !2917, !297, !114, !53, !109}
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !33, line: 271, baseType: !2918)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !166, !97}
!2921 = distinct !DISubprogram(name: "devm_led_classdev_release", scope: !3, file: !3, line: 615, type: !2919, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2922)
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "dev", arg: 1, scope: !2921, file: !3, line: 615, type: !166)
!2924 = !DILocalVariable(name: "res", arg: 2, scope: !2921, file: !3, line: 615, type: !97)
!2925 = !DILocation(line: 615, column: 54, scope: !2921)
!2926 = !DILocation(line: 615, column: 65, scope: !2921)
!2927 = !DILocation(line: 617, column: 51, scope: !2921)
!2928 = !DILocation(line: 617, column: 26, scope: !2921)
!2929 = !DILocation(line: 617, column: 2, scope: !2921)
!2930 = !DILocation(line: 618, column: 1, scope: !2921)
!2931 = !DISubprogram(name: "devres_free", scope: !33, file: !33, line: 285, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2932 = !DISubprogram(name: "devres_add", scope: !33, file: !33, line: 286, type: !2919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2933 = distinct !DISubprogram(name: "devm_led_classdev_unregister", scope: !3, file: !3, line: 666, type: !2934, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !166, !122}
!2936 = !{!2937, !2938, !2939, !2941}
!2937 = !DILocalVariable(name: "dev", arg: 1, scope: !2933, file: !3, line: 666, type: !166)
!2938 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !2933, file: !3, line: 667, type: !122)
!2939 = !DILocalVariable(name: "__ret_warn_on", scope: !2940, file: !3, line: 669, type: !53)
!2940 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 669, column: 2)
!2941 = !DILocalVariable(name: "__flags", scope: !2942, file: !3, line: 669, type: !53)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 669, column: 2)
!2943 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 669, column: 2)
!2944 = !DILocation(line: 666, column: 50, scope: !2933)
!2945 = !DILocation(line: 667, column: 28, scope: !2933)
!2946 = !DILocation(line: 669, column: 2, scope: !2940)
!2947 = !DILocation(line: 669, column: 2, scope: !2943)
!2948 = !DILocation(line: 669, column: 2, scope: !2942)
!2949 = !DILocation(line: 669, column: 2, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 669, column: 2)
!2951 = !DILocation(line: 669, column: 2, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 669, column: 2)
!2953 = !{i64 2152890755, i64 2152890784, i64 2152890830, i64 2152890888, i64 2152890942, i64 2152890996, i64 2152891051, i64 2152891082, i64 2152891390, i64 2152891396, i64 2152891443, i64 2152891466, i64 2152891492}
!2954 = !DILocation(line: 669, column: 2, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 669, column: 2)
!2956 = !DILocation(line: 669, column: 2, scope: !2933)
!2957 = !DILocation(line: 672, column: 1, scope: !2933)
!2958 = !DISubprogram(name: "devres_release", scope: !33, file: !33, line: 295, type: !2959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!53, !166, !2917, !2961, !97}
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !33, line: 272, baseType: !2962)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!53, !166, !97, !97}
!2965 = distinct !DISubprogram(name: "devm_led_classdev_match", scope: !3, file: !3, line: 651, type: !2963, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2974}
!2967 = !DILocalVariable(name: "dev", arg: 1, scope: !2965, file: !3, line: 651, type: !166)
!2968 = !DILocalVariable(name: "res", arg: 2, scope: !2965, file: !3, line: 651, type: !97)
!2969 = !DILocalVariable(name: "data", arg: 3, scope: !2965, file: !3, line: 651, type: !97)
!2970 = !DILocalVariable(name: "p", scope: !2965, file: !3, line: 653, type: !121)
!2971 = !DILocalVariable(name: "__ret_warn_on", scope: !2972, file: !3, line: 655, type: !53)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 655, column: 6)
!2973 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 655, column: 6)
!2974 = !DILocalVariable(name: "__flags", scope: !2975, file: !3, line: 655, type: !53)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 655, column: 6)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 655, column: 6)
!2977 = !DILocation(line: 651, column: 51, scope: !2965)
!2978 = !DILocation(line: 651, column: 62, scope: !2965)
!2979 = !DILocation(line: 651, column: 73, scope: !2965)
!2980 = !DILocation(line: 653, column: 2, scope: !2965)
!2981 = !DILocation(line: 653, column: 24, scope: !2965)
!2982 = !DILocation(line: 653, column: 28, scope: !2965)
!2983 = !DILocation(line: 655, column: 6, scope: !2972)
!2984 = !DILocation(line: 655, column: 6, scope: !2976)
!2985 = !DILocation(line: 655, column: 6, scope: !2975)
!2986 = !DILocation(line: 655, column: 6, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 655, column: 6)
!2988 = !DILocation(line: 655, column: 6, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 655, column: 6)
!2990 = !{i64 2152889166, i64 2152889195, i64 2152889241, i64 2152889299, i64 2152889353, i64 2152889407, i64 2152889462, i64 2152889493, i64 2152889801, i64 2152889807, i64 2152889854, i64 2152889877, i64 2152889903}
!2991 = !DILocation(line: 655, column: 6, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 655, column: 6)
!2993 = !DILocation(line: 655, column: 6, scope: !2973)
!2994 = !DILocation(line: 655, column: 6, scope: !2965)
!2995 = !DILocation(line: 656, column: 3, scope: !2973)
!2996 = !DILocation(line: 658, column: 10, scope: !2965)
!2997 = !DILocation(line: 658, column: 9, scope: !2965)
!2998 = !DILocation(line: 658, column: 15, scope: !2965)
!2999 = !DILocation(line: 658, column: 12, scope: !2965)
!3000 = !DILocation(line: 658, column: 2, scope: !2965)
!3001 = !DILocation(line: 659, column: 1, scope: !2965)
!3002 = distinct !DISubprogram(name: "leds_exit", scope: !3, file: !3, line: 680, type: !1273, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3003 = !DILocation(line: 682, column: 2, scope: !3002)
!3004 = !DILocation(line: 683, column: 1, scope: !3002)
!3005 = !DISubprogram(name: "class_unregister", scope: !1714, file: !1714, line: 81, type: !1726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3006 = distinct !DISubprogram(name: "__initstub__kmod_led_class__219_685_leds_init4", scope: !3, file: !3, line: 685, type: !1035, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3007 = !DILocation(line: 685, column: 1, scope: !3006)
!3008 = distinct !DISubprogram(name: "leds_init", scope: !3, file: !3, line: 675, type: !1035, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3009 = !DILocation(line: 677, column: 9, scope: !3008)
!3010 = !DILocation(line: 677, column: 2, scope: !3008)
!3011 = distinct !DISubprogram(name: "__of_parse_phandle_with_args", scope: !1579, file: !1579, line: 728, type: !3012, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3015)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!53, !2086, !109, !109, !53, !53, !3014}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021}
!3016 = !DILocalVariable(name: "np", arg: 1, scope: !3011, file: !1579, line: 728, type: !2086)
!3017 = !DILocalVariable(name: "list_name", arg: 2, scope: !3011, file: !1579, line: 729, type: !109)
!3018 = !DILocalVariable(name: "cells_name", arg: 3, scope: !3011, file: !1579, line: 730, type: !109)
!3019 = !DILocalVariable(name: "cell_count", arg: 4, scope: !3011, file: !1579, line: 731, type: !53)
!3020 = !DILocalVariable(name: "index", arg: 5, scope: !3011, file: !1579, line: 732, type: !53)
!3021 = !DILocalVariable(name: "out_args", arg: 6, scope: !3011, file: !1579, line: 733, type: !3014)
!3022 = !DILocation(line: 728, column: 74, scope: !3011)
!3023 = !DILocation(line: 729, column: 25, scope: !3011)
!3024 = !DILocation(line: 730, column: 25, scope: !3011)
!3025 = !DILocation(line: 731, column: 17, scope: !3011)
!3026 = !DILocation(line: 732, column: 17, scope: !3011)
!3027 = !DILocation(line: 733, column: 37, scope: !3011)
!3028 = !DILocation(line: 735, column: 2, scope: !3011)
!3029 = !DISubprogram(name: "class_find_device", scope: !1714, file: !1714, line: 99, type: !3030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!166, !1711, !839, !526, !3032}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!53, !166, !526}
!3035 = distinct !DISubprogram(name: "brightness_show", scope: !3, file: !3, line: 28, type: !1966, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3036 = !{!3037, !3038, !3039, !3040, !3041}
!3037 = !DILocalVariable(name: "dev", arg: 1, scope: !3035, file: !3, line: 28, type: !166)
!3038 = !DILocalVariable(name: "attr", arg: 2, scope: !3035, file: !3, line: 29, type: !1968)
!3039 = !DILocalVariable(name: "buf", arg: 3, scope: !3035, file: !3, line: 29, type: !251)
!3040 = !DILocalVariable(name: "led_cdev", scope: !3035, file: !3, line: 31, type: !122)
!3041 = !DILocalVariable(name: "brightness", scope: !3035, file: !3, line: 32, type: !7)
!3042 = !DILocation(line: 28, column: 47, scope: !3035)
!3043 = !DILocation(line: 29, column: 28, scope: !3035)
!3044 = !DILocation(line: 29, column: 40, scope: !3035)
!3045 = !DILocation(line: 31, column: 2, scope: !3035)
!3046 = !DILocation(line: 31, column: 23, scope: !3035)
!3047 = !DILocation(line: 31, column: 50, scope: !3035)
!3048 = !DILocation(line: 31, column: 34, scope: !3035)
!3049 = !DILocation(line: 32, column: 2, scope: !3035)
!3050 = !DILocation(line: 32, column: 15, scope: !3035)
!3051 = !DILocation(line: 34, column: 14, scope: !3035)
!3052 = !DILocation(line: 34, column: 24, scope: !3035)
!3053 = !DILocation(line: 34, column: 2, scope: !3035)
!3054 = !DILocation(line: 35, column: 24, scope: !3035)
!3055 = !DILocation(line: 35, column: 2, scope: !3035)
!3056 = !DILocation(line: 36, column: 15, scope: !3035)
!3057 = !DILocation(line: 36, column: 25, scope: !3035)
!3058 = !DILocation(line: 36, column: 13, scope: !3035)
!3059 = !DILocation(line: 37, column: 16, scope: !3035)
!3060 = !DILocation(line: 37, column: 26, scope: !3035)
!3061 = !DILocation(line: 37, column: 2, scope: !3035)
!3062 = !DILocation(line: 39, column: 17, scope: !3035)
!3063 = !DILocation(line: 39, column: 30, scope: !3035)
!3064 = !DILocation(line: 39, column: 9, scope: !3035)
!3065 = !DILocation(line: 40, column: 1, scope: !3035)
!3066 = !DILocation(line: 39, column: 2, scope: !3035)
!3067 = distinct !DISubprogram(name: "brightness_store", scope: !3, file: !3, line: 42, type: !1971, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3068)
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076}
!3069 = !DILocalVariable(name: "dev", arg: 1, scope: !3067, file: !3, line: 42, type: !166)
!3070 = !DILocalVariable(name: "attr", arg: 2, scope: !3067, file: !3, line: 43, type: !1968)
!3071 = !DILocalVariable(name: "buf", arg: 3, scope: !3067, file: !3, line: 43, type: !109)
!3072 = !DILocalVariable(name: "size", arg: 4, scope: !3067, file: !3, line: 43, type: !297)
!3073 = !DILocalVariable(name: "led_cdev", scope: !3067, file: !3, line: 45, type: !122)
!3074 = !DILocalVariable(name: "state", scope: !3067, file: !3, line: 46, type: !117)
!3075 = !DILocalVariable(name: "ret", scope: !3067, file: !3, line: 47, type: !283)
!3076 = !DILabel(scope: !3067, name: "unlock", file: !3, line: 66)
!3077 = !DILocation(line: 42, column: 48, scope: !3067)
!3078 = !DILocation(line: 43, column: 28, scope: !3067)
!3079 = !DILocation(line: 43, column: 46, scope: !3067)
!3080 = !DILocation(line: 43, column: 58, scope: !3067)
!3081 = !DILocation(line: 45, column: 2, scope: !3067)
!3082 = !DILocation(line: 45, column: 23, scope: !3067)
!3083 = !DILocation(line: 45, column: 50, scope: !3067)
!3084 = !DILocation(line: 45, column: 34, scope: !3067)
!3085 = !DILocation(line: 46, column: 2, scope: !3067)
!3086 = !DILocation(line: 46, column: 16, scope: !3067)
!3087 = !DILocation(line: 47, column: 2, scope: !3067)
!3088 = !DILocation(line: 47, column: 10, scope: !3067)
!3089 = !DILocation(line: 49, column: 14, scope: !3067)
!3090 = !DILocation(line: 49, column: 24, scope: !3067)
!3091 = !DILocation(line: 49, column: 2, scope: !3067)
!3092 = !DILocation(line: 51, column: 28, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 51, column: 6)
!3094 = !DILocation(line: 51, column: 6, scope: !3093)
!3095 = !DILocation(line: 51, column: 6, scope: !3067)
!3096 = !DILocation(line: 52, column: 7, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 51, column: 39)
!3098 = !DILocation(line: 53, column: 3, scope: !3097)
!3099 = !DILocation(line: 56, column: 17, scope: !3067)
!3100 = !DILocation(line: 56, column: 8, scope: !3067)
!3101 = !DILocation(line: 56, column: 6, scope: !3067)
!3102 = !DILocation(line: 57, column: 6, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 57, column: 6)
!3104 = !DILocation(line: 57, column: 6, scope: !3067)
!3105 = !DILocation(line: 58, column: 3, scope: !3103)
!3106 = !DILocation(line: 60, column: 6, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 60, column: 6)
!3108 = !DILocation(line: 60, column: 12, scope: !3107)
!3109 = !DILocation(line: 60, column: 6, scope: !3067)
!3110 = !DILocation(line: 61, column: 22, scope: !3107)
!3111 = !DILocation(line: 61, column: 3, scope: !3107)
!3112 = !DILocation(line: 62, column: 21, scope: !3067)
!3113 = !DILocation(line: 62, column: 31, scope: !3067)
!3114 = !DILocation(line: 62, column: 2, scope: !3067)
!3115 = !DILocation(line: 63, column: 14, scope: !3067)
!3116 = !DILocation(line: 63, column: 24, scope: !3067)
!3117 = !DILocation(line: 63, column: 2, scope: !3067)
!3118 = !DILocation(line: 65, column: 8, scope: !3067)
!3119 = !DILocation(line: 65, column: 6, scope: !3067)
!3120 = !DILocation(line: 65, column: 2, scope: !3067)
!3121 = !DILocation(line: 66, column: 1, scope: !3067)
!3122 = !DILocation(line: 67, column: 16, scope: !3067)
!3123 = !DILocation(line: 67, column: 26, scope: !3067)
!3124 = !DILocation(line: 67, column: 2, scope: !3067)
!3125 = !DILocation(line: 68, column: 9, scope: !3067)
!3126 = !DILocation(line: 69, column: 1, scope: !3067)
!3127 = !DILocation(line: 68, column: 2, scope: !3067)
!3128 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !33, file: !33, line: 916, type: !3129, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!97, !839}
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "dev", arg: 1, scope: !3128, file: !33, line: 916, type: !839)
!3133 = !DILocation(line: 916, column: 58, scope: !3128)
!3134 = !DILocation(line: 918, column: 9, scope: !3128)
!3135 = !DILocation(line: 918, column: 14, scope: !3128)
!3136 = !DILocation(line: 918, column: 2, scope: !3128)
!3137 = !DISubprogram(name: "sprintf", scope: !3138, file: !3138, line: 10, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3138 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!53, !251, !109, null}
!3141 = distinct !DISubprogram(name: "led_sysfs_is_disabled", scope: !6, file: !6, line: 455, type: !3142, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!605, !122}
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3141, file: !6, line: 455, type: !122)
!3146 = !DILocation(line: 455, column: 63, scope: !3141)
!3147 = !DILocation(line: 457, column: 9, scope: !3141)
!3148 = !DILocation(line: 457, column: 19, scope: !3141)
!3149 = !DILocation(line: 457, column: 25, scope: !3141)
!3150 = !DILocation(line: 457, column: 2, scope: !3141)
!3151 = distinct !DISubprogram(name: "kstrtoul", scope: !3152, file: !3152, line: 30, type: !3153, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3155)
!3152 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!53, !109, !7, !147}
!3155 = !{!3156, !3157, !3158}
!3156 = !DILocalVariable(name: "s", arg: 1, scope: !3151, file: !3152, line: 30, type: !109)
!3157 = !DILocalVariable(name: "base", arg: 2, scope: !3151, file: !3152, line: 30, type: !7)
!3158 = !DILocalVariable(name: "res", arg: 3, scope: !3151, file: !3152, line: 30, type: !147)
!3159 = !DILocation(line: 30, column: 53, scope: !3151)
!3160 = !DILocation(line: 30, column: 69, scope: !3151)
!3161 = !DILocation(line: 30, column: 90, scope: !3151)
!3162 = !DILocation(line: 38, column: 20, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3151, file: !3152, line: 36, column: 6)
!3164 = !DILocation(line: 38, column: 23, scope: !3163)
!3165 = !DILocation(line: 38, column: 51, scope: !3163)
!3166 = !DILocation(line: 38, column: 10, scope: !3163)
!3167 = !DILocation(line: 38, column: 3, scope: !3163)
!3168 = !DISubprogram(name: "led_trigger_remove", scope: !6, file: !6, line: 520, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3169 = !DISubprogram(name: "kstrtoull", scope: !3152, file: !3152, line: 12, type: !3170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!53, !109, !7, !115}
!3172 = distinct !DISubprogram(name: "max_brightness_show", scope: !3, file: !3, line: 72, type: !1966, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178}
!3174 = !DILocalVariable(name: "dev", arg: 1, scope: !3172, file: !3, line: 72, type: !166)
!3175 = !DILocalVariable(name: "attr", arg: 2, scope: !3172, file: !3, line: 73, type: !1968)
!3176 = !DILocalVariable(name: "buf", arg: 3, scope: !3172, file: !3, line: 73, type: !251)
!3177 = !DILocalVariable(name: "led_cdev", scope: !3172, file: !3, line: 75, type: !122)
!3178 = !DILocalVariable(name: "max_brightness", scope: !3172, file: !3, line: 76, type: !7)
!3179 = !DILocation(line: 72, column: 51, scope: !3172)
!3180 = !DILocation(line: 73, column: 28, scope: !3172)
!3181 = !DILocation(line: 73, column: 40, scope: !3172)
!3182 = !DILocation(line: 75, column: 2, scope: !3172)
!3183 = !DILocation(line: 75, column: 23, scope: !3172)
!3184 = !DILocation(line: 75, column: 50, scope: !3172)
!3185 = !DILocation(line: 75, column: 34, scope: !3172)
!3186 = !DILocation(line: 76, column: 2, scope: !3172)
!3187 = !DILocation(line: 76, column: 15, scope: !3172)
!3188 = !DILocation(line: 78, column: 14, scope: !3172)
!3189 = !DILocation(line: 78, column: 24, scope: !3172)
!3190 = !DILocation(line: 78, column: 2, scope: !3172)
!3191 = !DILocation(line: 79, column: 19, scope: !3172)
!3192 = !DILocation(line: 79, column: 29, scope: !3172)
!3193 = !DILocation(line: 79, column: 17, scope: !3172)
!3194 = !DILocation(line: 80, column: 16, scope: !3172)
!3195 = !DILocation(line: 80, column: 26, scope: !3172)
!3196 = !DILocation(line: 80, column: 2, scope: !3172)
!3197 = !DILocation(line: 82, column: 17, scope: !3172)
!3198 = !DILocation(line: 82, column: 30, scope: !3172)
!3199 = !DILocation(line: 82, column: 9, scope: !3172)
!3200 = !DILocation(line: 83, column: 1, scope: !3172)
!3201 = !DILocation(line: 82, column: 2, scope: !3172)
!3202 = distinct !DISubprogram(name: "led_suspend", scope: !3, file: !3, line: 204, type: !857, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3203)
!3203 = !{!3204, !3205}
!3204 = !DILocalVariable(name: "dev", arg: 1, scope: !3202, file: !3, line: 204, type: !166)
!3205 = !DILocalVariable(name: "led_cdev", scope: !3202, file: !3, line: 206, type: !122)
!3206 = !DILocation(line: 204, column: 39, scope: !3202)
!3207 = !DILocation(line: 206, column: 2, scope: !3202)
!3208 = !DILocation(line: 206, column: 23, scope: !3202)
!3209 = !DILocation(line: 206, column: 50, scope: !3202)
!3210 = !DILocation(line: 206, column: 34, scope: !3202)
!3211 = !DILocation(line: 208, column: 6, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 208, column: 6)
!3213 = !DILocation(line: 208, column: 16, scope: !3212)
!3214 = !DILocation(line: 208, column: 22, scope: !3212)
!3215 = !DILocation(line: 208, column: 6, scope: !3202)
!3216 = !DILocation(line: 209, column: 24, scope: !3212)
!3217 = !DILocation(line: 209, column: 3, scope: !3212)
!3218 = !DILocation(line: 212, column: 1, scope: !3202)
!3219 = !DILocation(line: 211, column: 2, scope: !3202)
!3220 = distinct !DISubprogram(name: "led_resume", scope: !3, file: !3, line: 214, type: !857, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3221)
!3221 = !{!3222, !3223}
!3222 = !DILocalVariable(name: "dev", arg: 1, scope: !3220, file: !3, line: 214, type: !166)
!3223 = !DILocalVariable(name: "led_cdev", scope: !3220, file: !3, line: 216, type: !122)
!3224 = !DILocation(line: 214, column: 38, scope: !3220)
!3225 = !DILocation(line: 216, column: 2, scope: !3220)
!3226 = !DILocation(line: 216, column: 23, scope: !3220)
!3227 = !DILocation(line: 216, column: 50, scope: !3220)
!3228 = !DILocation(line: 216, column: 34, scope: !3220)
!3229 = !DILocation(line: 218, column: 6, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 218, column: 6)
!3231 = !DILocation(line: 218, column: 16, scope: !3230)
!3232 = !DILocation(line: 218, column: 22, scope: !3230)
!3233 = !DILocation(line: 218, column: 6, scope: !3220)
!3234 = !DILocation(line: 219, column: 23, scope: !3230)
!3235 = !DILocation(line: 219, column: 3, scope: !3230)
!3236 = !DILocation(line: 222, column: 1, scope: !3220)
!3237 = !DILocation(line: 221, column: 2, scope: !3220)
!3238 = !DISubprogram(name: "try_module_get", scope: !20, file: !20, line: 696, type: !3239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!605, !902}
!3241 = distinct !DISubprogram(name: "devm_led_release", scope: !3, file: !3, line: 285, type: !2919, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DILocalVariable(name: "dev", arg: 1, scope: !3241, file: !3, line: 285, type: !166)
!3244 = !DILocalVariable(name: "res", arg: 2, scope: !3241, file: !3, line: 285, type: !97)
!3245 = !DILocalVariable(name: "p", scope: !3241, file: !3, line: 287, type: !121)
!3246 = !DILocation(line: 285, column: 45, scope: !3241)
!3247 = !DILocation(line: 285, column: 56, scope: !3241)
!3248 = !DILocation(line: 287, column: 2, scope: !3241)
!3249 = !DILocation(line: 287, column: 24, scope: !3241)
!3250 = !DILocation(line: 287, column: 28, scope: !3241)
!3251 = !DILocation(line: 289, column: 11, scope: !3241)
!3252 = !DILocation(line: 289, column: 10, scope: !3241)
!3253 = !DILocation(line: 289, column: 2, scope: !3241)
!3254 = !DILocation(line: 290, column: 1, scope: !3241)
!3255 = distinct !DISubprogram(name: "kobject_name", scope: !171, file: !171, line: 87, type: !239, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3256)
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "kobj", arg: 1, scope: !3255, file: !171, line: 87, type: !234)
!3258 = !DILocation(line: 87, column: 62, scope: !3255)
!3259 = !DILocation(line: 89, column: 9, scope: !3255)
!3260 = !DILocation(line: 89, column: 15, scope: !3255)
!3261 = !DILocation(line: 89, column: 2, scope: !3255)
!3262 = distinct !DISubprogram(name: "__list_add", scope: !2413, file: !2413, line: 146, type: !3263, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !106, !106, !106}
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "new", arg: 1, scope: !3262, file: !2413, line: 146, type: !106)
!3267 = !DILocalVariable(name: "prev", arg: 2, scope: !3262, file: !2413, line: 147, type: !106)
!3268 = !DILocalVariable(name: "next", arg: 3, scope: !3262, file: !2413, line: 148, type: !106)
!3269 = !DILocation(line: 146, column: 49, scope: !3262)
!3270 = !DILocation(line: 147, column: 28, scope: !3262)
!3271 = !DILocation(line: 148, column: 28, scope: !3262)
!3272 = !DILocation(line: 150, column: 24, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3262, file: !2413, line: 150, column: 6)
!3274 = !DILocation(line: 150, column: 29, scope: !3273)
!3275 = !DILocation(line: 150, column: 35, scope: !3273)
!3276 = !DILocation(line: 150, column: 7, scope: !3273)
!3277 = !DILocation(line: 150, column: 6, scope: !3262)
!3278 = !DILocation(line: 151, column: 3, scope: !3273)
!3279 = !DILocation(line: 153, column: 15, scope: !3262)
!3280 = !DILocation(line: 153, column: 2, scope: !3262)
!3281 = !DILocation(line: 153, column: 8, scope: !3262)
!3282 = !DILocation(line: 153, column: 13, scope: !3262)
!3283 = !DILocation(line: 154, column: 14, scope: !3262)
!3284 = !DILocation(line: 154, column: 2, scope: !3262)
!3285 = !DILocation(line: 154, column: 7, scope: !3262)
!3286 = !DILocation(line: 154, column: 12, scope: !3262)
!3287 = !DILocation(line: 155, column: 14, scope: !3262)
!3288 = !DILocation(line: 155, column: 2, scope: !3262)
!3289 = !DILocation(line: 155, column: 7, scope: !3262)
!3290 = !DILocation(line: 155, column: 12, scope: !3262)
!3291 = !DILocation(line: 156, column: 2, scope: !3262)
!3292 = !DILocation(line: 156, column: 2, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3262, file: !2413, line: 156, column: 2)
!3294 = !DILocation(line: 156, column: 2, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3293, file: !2413, line: 156, column: 2)
!3296 = !DILocation(line: 156, column: 2, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !2413, line: 156, column: 2)
!3298 = !DILocation(line: 157, column: 1, scope: !3262)
!3299 = distinct !DISubprogram(name: "__list_add_valid", scope: !2413, file: !2413, line: 128, type: !3300, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!605, !106, !106, !106}
!3302 = !{!3303, !3304, !3305}
!3303 = !DILocalVariable(name: "new", arg: 1, scope: !3299, file: !2413, line: 128, type: !106)
!3304 = !DILocalVariable(name: "prev", arg: 2, scope: !3299, file: !2413, line: 129, type: !106)
!3305 = !DILocalVariable(name: "next", arg: 3, scope: !3299, file: !2413, line: 130, type: !106)
!3306 = !DILocation(line: 128, column: 55, scope: !3299)
!3307 = !DILocation(line: 129, column: 23, scope: !3299)
!3308 = !DILocation(line: 130, column: 23, scope: !3299)
!3309 = !DILocation(line: 132, column: 2, scope: !3299)
!3310 = distinct !DISubprogram(name: "__list_del_entry", scope: !2413, file: !2413, line: 213, type: !2438, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3311)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "entry", arg: 1, scope: !3310, file: !2413, line: 213, type: !106)
!3313 = !DILocation(line: 213, column: 55, scope: !3310)
!3314 = !DILocation(line: 215, column: 30, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !2413, line: 215, column: 6)
!3316 = !DILocation(line: 215, column: 7, scope: !3315)
!3317 = !DILocation(line: 215, column: 6, scope: !3310)
!3318 = !DILocation(line: 216, column: 3, scope: !3315)
!3319 = !DILocation(line: 218, column: 13, scope: !3310)
!3320 = !DILocation(line: 218, column: 20, scope: !3310)
!3321 = !DILocation(line: 218, column: 26, scope: !3310)
!3322 = !DILocation(line: 218, column: 33, scope: !3310)
!3323 = !DILocation(line: 218, column: 2, scope: !3310)
!3324 = !DILocation(line: 219, column: 1, scope: !3310)
!3325 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2413, file: !2413, line: 134, type: !3326, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!605, !106}
!3328 = !{!3329}
!3329 = !DILocalVariable(name: "entry", arg: 1, scope: !3325, file: !2413, line: 134, type: !106)
!3330 = !DILocation(line: 134, column: 61, scope: !3325)
!3331 = !DILocation(line: 136, column: 2, scope: !3325)
!3332 = distinct !DISubprogram(name: "__list_del", scope: !2413, file: !2413, line: 193, type: !2414, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3333)
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "prev", arg: 1, scope: !3332, file: !2413, line: 193, type: !106)
!3335 = !DILocalVariable(name: "next", arg: 2, scope: !3332, file: !2413, line: 193, type: !106)
!3336 = !DILocation(line: 193, column: 50, scope: !3332)
!3337 = !DILocation(line: 193, column: 75, scope: !3332)
!3338 = !DILocation(line: 195, column: 15, scope: !3332)
!3339 = !DILocation(line: 195, column: 2, scope: !3332)
!3340 = !DILocation(line: 195, column: 8, scope: !3332)
!3341 = !DILocation(line: 195, column: 13, scope: !3332)
!3342 = !DILocation(line: 196, column: 2, scope: !3332)
!3343 = !DILocation(line: 196, column: 2, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3332, file: !2413, line: 196, column: 2)
!3345 = !DILocation(line: 196, column: 2, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3344, file: !2413, line: 196, column: 2)
!3347 = !DILocation(line: 196, column: 2, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !2413, line: 196, column: 2)
!3349 = !DILocation(line: 197, column: 1, scope: !3332)
!3350 = !DISubprogram(name: "fwnode_property_read_u32_array", scope: !61, file: !61, line: 67, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!53, !1608, !109, !2701, !297}
!3353 = !DISubprogram(name: "strscpy", scope: !2336, file: !2336, line: 72, type: !3354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!283, !251, !109, !297}
!3356 = !DISubprogram(name: "snprintf", scope: !3138, file: !3138, line: 12, type: !3357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!53, !251, !297, !109, null}
!3359 = !DISubprogram(name: "class_register", scope: !1714, file: !1714, line: 80, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!53, !1711}
