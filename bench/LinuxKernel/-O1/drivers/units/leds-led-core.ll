; ModuleID = 'drivers/leds/led-core.c'
source_filename = "drivers/leds/led-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_leds_list_lock: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad leds_list_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_leds_list: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad leds_list ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_colors: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_colors ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_init_core: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_init_core ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_blink_set: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_blink_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_blink_set_oneshot: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_blink_set_oneshot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_blink_set_nosleep: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_blink_set_nosleep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_stop_software_blink: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_stop_software_blink ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_set_brightness: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_set_brightness ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_set_brightness_nopm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_set_brightness_nopm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_set_brightness_nosleep: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_set_brightness_nosleep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_set_brightness_sync: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_set_brightness_sync ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_update_brightness: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_update_brightness ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_get_default_pattern: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_get_default_pattern ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_sysfs_disable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_sysfs_disable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_sysfs_enable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_sysfs_enable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_compose_name: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_compose_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_init_default_state_get: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_init_default_state_get ; .previous"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.led_classdev = type { ptr, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i64, i64, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, i64, i64, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.led_properties = type { i32, i8, ptr, i32, i8, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@leds_list_lock = hidden global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @leds_list_lock, i64 24), ptr getelementptr (i8, ptr @leds_list_lock, i64 24) } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_leds_list_lock205 = internal global ptr @leds_list_lock, section ".discard.addressable", align 8, !dbg !1858
@leds_list = hidden global %struct.list_head { ptr @leds_list, ptr @leds_list }, align 8, !dbg !1860
@__UNIQUE_ID___addressable_leds_list206 = internal global ptr @leds_list, section ".discard.addressable", align 8, !dbg !1862
@.str = private unnamed_addr constant [6 x i8] c"white\00", align 1, !dbg !1864
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1, !dbg !1869
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1, !dbg !1872
@.str.3 = private unnamed_addr constant [5 x i8] c"blue\00", align 1, !dbg !1874
@.str.4 = private unnamed_addr constant [6 x i8] c"amber\00", align 1, !dbg !1879
@.str.5 = private unnamed_addr constant [7 x i8] c"violet\00", align 1, !dbg !1881
@.str.6 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1, !dbg !1884
@.str.7 = private unnamed_addr constant [3 x i8] c"ir\00", align 1, !dbg !1886
@.str.8 = private unnamed_addr constant [11 x i8] c"multicolor\00", align 1, !dbg !1889
@.str.9 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1, !dbg !1894
@led_colors = hidden constant [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null], align 16, !dbg !1896
@__UNIQUE_ID___addressable_led_colors207 = internal global ptr @led_colors, section ".discard.addressable", align 8, !dbg !1902
@led_init_core.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1904
@__UNIQUE_ID___addressable_led_init_core208 = internal global ptr @led_init_core, section ".discard.addressable", align 8, !dbg !1910
@__UNIQUE_ID___addressable_led_blink_set209 = internal global ptr @led_blink_set, section ".discard.addressable", align 8, !dbg !1912
@__UNIQUE_ID___addressable_led_blink_set_oneshot210 = internal global ptr @led_blink_set_oneshot, section ".discard.addressable", align 8, !dbg !1914
@__UNIQUE_ID___addressable_led_blink_set_nosleep211 = internal global ptr @led_blink_set_nosleep, section ".discard.addressable", align 8, !dbg !1916
@__UNIQUE_ID___addressable_led_stop_software_blink212 = internal global ptr @led_stop_software_blink, section ".discard.addressable", align 8, !dbg !1918
@__UNIQUE_ID___addressable_led_set_brightness213 = internal global ptr @led_set_brightness, section ".discard.addressable", align 8, !dbg !1920
@__UNIQUE_ID___addressable_led_set_brightness_nopm214 = internal global ptr @led_set_brightness_nopm, section ".discard.addressable", align 8, !dbg !1922
@__UNIQUE_ID___addressable_led_set_brightness_nosleep217 = internal global ptr @led_set_brightness_nosleep, section ".discard.addressable", align 8, !dbg !1924
@__UNIQUE_ID___addressable_led_set_brightness_sync220 = internal global ptr @led_set_brightness_sync, section ".discard.addressable", align 8, !dbg !1926
@__UNIQUE_ID___addressable_led_update_brightness221 = internal global ptr @led_update_brightness, section ".discard.addressable", align 8, !dbg !1928
@.str.10 = private unnamed_addr constant [12 x i8] c"led-pattern\00", align 1, !dbg !1930
@__UNIQUE_ID___addressable_led_get_default_pattern222 = internal global ptr @led_get_default_pattern, section ".discard.addressable", align 8, !dbg !1935
@__UNIQUE_ID___addressable_led_sysfs_disable223 = internal global ptr @led_sysfs_disable, section ".discard.addressable", align 8, !dbg !1937
@__UNIQUE_ID___addressable_led_sysfs_enable224 = internal global ptr @led_sysfs_enable, section ".discard.addressable", align 8, !dbg !1939
@.str.11 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1, !dbg !1941
@.str.12 = private unnamed_addr constant [9 x i8] c"%s:%s-%d\00", align 1, !dbg !1943
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !1948
@.str.14 = private unnamed_addr constant [46 x i8] c"Legacy LED naming requires devicename segment\00", align 1, !dbg !1953
@__UNIQUE_ID___addressable_led_compose_name225 = internal global ptr @led_compose_name, section ".discard.addressable", align 8, !dbg !1958
@.str.15 = private unnamed_addr constant [14 x i8] c"default-state\00", align 1, !dbg !1960
@.str.16 = private unnamed_addr constant [5 x i8] c"keep\00", align 1, !dbg !1965
@.str.17 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !1967
@__UNIQUE_ID___addressable_led_init_default_state_get226 = internal global ptr @led_init_default_state_get, section ".discard.addressable", align 8, !dbg !1969
@.str.18 = private unnamed_addr constant [41 x i8] c"Setting an LED's brightness failed (%d)\0A\00", align 1, !dbg !1971
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@system_wq = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.19 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1976
@.str.20 = private unnamed_addr constant [6 x i8] c"label\00", align 1, !dbg !1981
@.str.21 = private unnamed_addr constant [37 x i8] c"Error parsing 'label' property (%d)\0A\00", align 1, !dbg !1983
@.str.22 = private unnamed_addr constant [6 x i8] c"color\00", align 1, !dbg !1988
@.str.23 = private unnamed_addr constant [37 x i8] c"Error parsing 'color' property (%d)\0A\00", align 1, !dbg !1990
@.str.24 = private unnamed_addr constant [35 x i8] c"LED color identifier out of range\0A\00", align 1, !dbg !1992
@.str.25 = private unnamed_addr constant [9 x i8] c"function\00", align 1, !dbg !1997
@.str.26 = private unnamed_addr constant [40 x i8] c"Error parsing 'function' property (%d)\0A\00", align 1, !dbg !1999
@.str.27 = private unnamed_addr constant [20 x i8] c"function-enumerator\00", align 1, !dbg !2004
@.str.28 = private unnamed_addr constant [51 x i8] c"Error parsing 'function-enumerator' property (%d)\0A\00", align 1, !dbg !2009
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID___addressable_leds_list_lock205, ptr @__UNIQUE_ID___addressable_leds_list206, ptr @__UNIQUE_ID___addressable_led_colors207, ptr @__UNIQUE_ID___addressable_led_init_core208, ptr @__UNIQUE_ID___addressable_led_blink_set209, ptr @__UNIQUE_ID___addressable_led_blink_set_oneshot210, ptr @__UNIQUE_ID___addressable_led_blink_set_nosleep211, ptr @__UNIQUE_ID___addressable_led_stop_software_blink212, ptr @__UNIQUE_ID___addressable_led_set_brightness213, ptr @__UNIQUE_ID___addressable_led_set_brightness_nopm214, ptr @__UNIQUE_ID___addressable_led_set_brightness_nosleep217, ptr @__UNIQUE_ID___addressable_led_set_brightness_sync220, ptr @__UNIQUE_ID___addressable_led_update_brightness221, ptr @__UNIQUE_ID___addressable_led_get_default_pattern222, ptr @__UNIQUE_ID___addressable_led_sysfs_disable223, ptr @__UNIQUE_ID___addressable_led_sysfs_enable224, ptr @__UNIQUE_ID___addressable_led_compose_name225, ptr @__UNIQUE_ID___addressable_led_init_default_state_get226], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_init_core(ptr noundef %led_cdev) #0 align 16 !dbg !1906 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !1908, metadata !DIExpression()), !dbg !2023
  br label %do.body, !dbg !2024

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2025

do.body1:                                         ; preds = %do.body
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2027
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 22, !dbg !2027
  call void @__init_work(ptr noundef %set_brightness_work, i32 noundef 0) #17, !dbg !2027
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2027
  %set_brightness_work2 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 22, !dbg !2027
  %data = getelementptr inbounds %struct.work_struct, ptr %set_brightness_work2, i32 0, i32 0, !dbg !2027
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !2027
  store i64 68719476704, ptr %counter, align 8, !dbg !2027
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !2027
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2027
  %set_brightness_work3 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 22, !dbg !2027
  %entry4 = getelementptr inbounds %struct.work_struct, ptr %set_brightness_work3, i32 0, i32 1, !dbg !2027
  call void @INIT_LIST_HEAD(ptr noundef %entry4) #17, !dbg !2027
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2027
  %set_brightness_work5 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 22, !dbg !2027
  %func = getelementptr inbounds %struct.work_struct, ptr %set_brightness_work5, i32 0, i32 2, !dbg !2027
  store ptr @set_brightness_delayed, ptr %func, align 8, !dbg !2027
  br label %do.end, !dbg !2027

do.end:                                           ; preds = %do.body1
  br label %do.end6, !dbg !2025

do.end6:                                          ; preds = %do.end
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2029
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %4, i32 0, i32 18, !dbg !2029
  call void @init_timer_key(ptr noundef %blink_timer, ptr noundef @led_timer_function, i32 noundef 0, ptr noundef null, ptr noundef null) #17, !dbg !2029
  ret void, !dbg !2030
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #2 align 16 !dbg !2031 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2035, metadata !DIExpression()), !dbg !2037
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !2036, metadata !DIExpression()), !dbg !2038
  ret void, !dbg !2039
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #2 align 16 !dbg !2040 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2045, metadata !DIExpression()), !dbg !2046
  br label %do.body, !dbg !2047

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2048

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2050

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2048

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2052
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2052
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2052
  store volatile ptr %0, ptr %next, align 8, !dbg !2052
  br label %do.end3, !dbg !2052

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2048

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2054

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2055

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2057

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2055

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2059
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2059
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2059
  store volatile ptr %2, ptr %prev, align 8, !dbg !2059
  br label %do.end9, !dbg !2059

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2055

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2061
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_brightness_delayed(ptr noundef %ws) #0 align 16 !dbg !2062 {
entry:
  %ws.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %delay_on = alloca i64, align 8
  %delay_off = alloca i64, align 8
  store ptr %ws, ptr %ws.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ws.addr, metadata !2064, metadata !DIExpression()), !dbg !2072
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #18, !dbg !2073
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !2065, metadata !DIExpression()), !dbg !2074
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2075
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2066, metadata !DIExpression()), !dbg !2075
  %0 = load ptr, ptr %ws.addr, align 8, !dbg !2075
  store ptr %0, ptr %__mptr, align 8, !dbg !2075
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2075
  %add.ptr = getelementptr i8, ptr %1, i64 -192, !dbg !2075
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2075
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2076
  %2 = load ptr, ptr %tmp, align 8, !dbg !2075
  store ptr %2, ptr %led_cdev, align 8, !dbg !2074
  %3 = load ptr, ptr %led_cdev, align 8, !dbg !2077
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 5, !dbg !2079
  %call = call zeroext i1 @test_and_clear_bit(i64 noundef 5, ptr noundef %work_flags) #17, !dbg !2080
  br i1 %call, label %if.then, label %if.end, !dbg !2081

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %led_cdev, align 8, !dbg !2082
  call void @led_stop_software_blink(ptr noundef %4) #17, !dbg !2084
  %5 = load ptr, ptr %led_cdev, align 8, !dbg !2085
  %work_flags1 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 5, !dbg !2086
  call void @set_bit(i64 noundef 6, ptr noundef %work_flags1) #17, !dbg !2087
  br label %if.end, !dbg !2088

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %led_cdev, align 8, !dbg !2089
  %work_flags2 = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 5, !dbg !2091
  %call3 = call zeroext i1 @test_and_clear_bit(i64 noundef 6, ptr noundef %work_flags2) #17, !dbg !2092
  br i1 %call3, label %if.then4, label %if.end5, !dbg !2093

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %led_cdev, align 8, !dbg !2094
  call void @set_brightness_delayed_set_brightness(ptr noundef %7, i32 noundef 0) #17, !dbg !2095
  br label %if.end5, !dbg !2095

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load ptr, ptr %led_cdev, align 8, !dbg !2096
  %work_flags6 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 5, !dbg !2098
  %call7 = call zeroext i1 @test_and_clear_bit(i64 noundef 7, ptr noundef %work_flags6) #17, !dbg !2099
  br i1 %call7, label %if.then8, label %if.end9, !dbg !2100

if.then8:                                         ; preds = %if.end5
  %9 = load ptr, ptr %led_cdev, align 8, !dbg !2101
  %10 = load ptr, ptr %led_cdev, align 8, !dbg !2102
  %delayed_set_value = getelementptr inbounds %struct.led_classdev, ptr %10, i32 0, i32 23, !dbg !2103
  %11 = load i32, ptr %delayed_set_value, align 8, !dbg !2103
  call void @set_brightness_delayed_set_brightness(ptr noundef %9, i32 noundef %11) #17, !dbg !2104
  br label %if.end9, !dbg !2104

if.end9:                                          ; preds = %if.then8, %if.end5
  %12 = load ptr, ptr %led_cdev, align 8, !dbg !2105
  %work_flags10 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 5, !dbg !2106
  %call11 = call zeroext i1 @test_and_clear_bit(i64 noundef 8, ptr noundef %work_flags10) #17, !dbg !2107
  br i1 %call11, label %if.then12, label %if.end13, !dbg !2108

if.then12:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %delay_on) #18, !dbg !2109
  call void @llvm.dbg.declare(metadata ptr %delay_on, metadata !2068, metadata !DIExpression()), !dbg !2110
  %13 = load ptr, ptr %led_cdev, align 8, !dbg !2111
  %delayed_delay_on = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 24, !dbg !2112
  %14 = load i64, ptr %delayed_delay_on, align 8, !dbg !2112
  store i64 %14, ptr %delay_on, align 8, !dbg !2110
  call void @llvm.lifetime.start.p0(i64 8, ptr %delay_off) #18, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %delay_off, metadata !2071, metadata !DIExpression()), !dbg !2114
  %15 = load ptr, ptr %led_cdev, align 8, !dbg !2115
  %delayed_delay_off = getelementptr inbounds %struct.led_classdev, ptr %15, i32 0, i32 25, !dbg !2116
  %16 = load i64, ptr %delayed_delay_off, align 8, !dbg !2116
  store i64 %16, ptr %delay_off, align 8, !dbg !2114
  %17 = load ptr, ptr %led_cdev, align 8, !dbg !2117
  call void @led_blink_set(ptr noundef %17, ptr noundef %delay_on, ptr noundef %delay_off) #17, !dbg !2118
  call void @llvm.lifetime.end.p0(i64 8, ptr %delay_off) #18, !dbg !2119
  call void @llvm.lifetime.end.p0(i64 8, ptr %delay_on) #18, !dbg !2119
  br label %if.end13, !dbg !2120

if.end13:                                         ; preds = %if.then12, %if.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #18, !dbg !2121
  ret void, !dbg !2121
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2122 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @led_timer_function(ptr noundef %t) #0 align 16 !dbg !2126 {
entry:
  %t.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %brightness = alloca i64, align 8
  %delay = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2128, metadata !DIExpression()), !dbg !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #18, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !2129, metadata !DIExpression()), !dbg !2136
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2130, metadata !DIExpression()), !dbg !2137
  %0 = load ptr, ptr %t.addr, align 8, !dbg !2137
  store ptr %0, ptr %__mptr, align 8, !dbg !2137
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2137
  %add.ptr = getelementptr i8, ptr %1, i64 -136, !dbg !2137
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2138
  %2 = load ptr, ptr %tmp, align 8, !dbg !2137
  store ptr %2, ptr %led_cdev, align 8, !dbg !2136
  call void @llvm.lifetime.start.p0(i64 8, ptr %brightness) #18, !dbg !2139
  call void @llvm.dbg.declare(metadata ptr %brightness, metadata !2132, metadata !DIExpression()), !dbg !2140
  call void @llvm.lifetime.start.p0(i64 8, ptr %delay) #18, !dbg !2141
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !2133, metadata !DIExpression()), !dbg !2142
  %3 = load ptr, ptr %led_cdev, align 8, !dbg !2143
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 16, !dbg !2145
  %4 = load i64, ptr %blink_delay_on, align 8, !dbg !2145
  %tobool = icmp ne i64 %4, 0, !dbg !2143
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2146

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %led_cdev, align 8, !dbg !2147
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 17, !dbg !2148
  %6 = load i64, ptr %blink_delay_off, align 8, !dbg !2148
  %tobool1 = icmp ne i64 %6, 0, !dbg !2147
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2149

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %led_cdev, align 8, !dbg !2150
  call void @led_set_brightness_nosleep(ptr noundef %7, i32 noundef 0) #17, !dbg !2152
  %8 = load ptr, ptr %led_cdev, align 8, !dbg !2153
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 5, !dbg !2154
  call void @clear_bit(i64 noundef 0, ptr noundef %work_flags) #17, !dbg !2155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2156

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %led_cdev, align 8, !dbg !2157
  %work_flags2 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 5, !dbg !2159
  %call = call zeroext i1 @test_and_clear_bit(i64 noundef 2, ptr noundef %work_flags2) #17, !dbg !2160
  br i1 %call, label %if.then3, label %if.end5, !dbg !2161

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %led_cdev, align 8, !dbg !2162
  %work_flags4 = getelementptr inbounds %struct.led_classdev, ptr %10, i32 0, i32 5, !dbg !2164
  call void @clear_bit(i64 noundef 0, ptr noundef %work_flags4) #17, !dbg !2165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2166

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %led_cdev, align 8, !dbg !2167
  %call6 = call i32 @led_get_brightness(ptr noundef %11) #17, !dbg !2168
  %conv = sext i32 %call6 to i64, !dbg !2168
  store i64 %conv, ptr %brightness, align 8, !dbg !2169
  %12 = load i64, ptr %brightness, align 8, !dbg !2170
  %tobool7 = icmp ne i64 %12, 0, !dbg !2170
  br i1 %tobool7, label %if.else16, label %if.then8, !dbg !2172

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %led_cdev, align 8, !dbg !2173
  %work_flags9 = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 5, !dbg !2176
  %call10 = call zeroext i1 @test_and_clear_bit(i64 noundef 4, ptr noundef %work_flags9) #17, !dbg !2177
  br i1 %call10, label %if.then11, label %if.else, !dbg !2178

if.then11:                                        ; preds = %if.then8
  %14 = load ptr, ptr %led_cdev, align 8, !dbg !2179
  %new_blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %14, i32 0, i32 20, !dbg !2180
  %15 = load i32, ptr %new_blink_brightness, align 4, !dbg !2180
  %conv12 = sext i32 %15 to i64, !dbg !2179
  store i64 %conv12, ptr %brightness, align 8, !dbg !2181
  br label %if.end14, !dbg !2182

if.else:                                          ; preds = %if.then8
  %16 = load ptr, ptr %led_cdev, align 8, !dbg !2183
  %blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %16, i32 0, i32 19, !dbg !2184
  %17 = load i32, ptr %blink_brightness, align 8, !dbg !2184
  %conv13 = sext i32 %17 to i64, !dbg !2183
  store i64 %conv13, ptr %brightness, align 8, !dbg !2185
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %18 = load ptr, ptr %led_cdev, align 8, !dbg !2186
  %blink_delay_on15 = getelementptr inbounds %struct.led_classdev, ptr %18, i32 0, i32 16, !dbg !2187
  %19 = load i64, ptr %blink_delay_on15, align 8, !dbg !2187
  store i64 %19, ptr %delay, align 8, !dbg !2188
  br label %if.end20, !dbg !2189

if.else16:                                        ; preds = %if.end5
  %20 = load i64, ptr %brightness, align 8, !dbg !2190
  %conv17 = trunc i64 %20 to i32, !dbg !2190
  %21 = load ptr, ptr %led_cdev, align 8, !dbg !2192
  %blink_brightness18 = getelementptr inbounds %struct.led_classdev, ptr %21, i32 0, i32 19, !dbg !2193
  store i32 %conv17, ptr %blink_brightness18, align 8, !dbg !2194
  store i64 0, ptr %brightness, align 8, !dbg !2195
  %22 = load ptr, ptr %led_cdev, align 8, !dbg !2196
  %blink_delay_off19 = getelementptr inbounds %struct.led_classdev, ptr %22, i32 0, i32 17, !dbg !2197
  %23 = load i64, ptr %blink_delay_off19, align 8, !dbg !2197
  store i64 %23, ptr %delay, align 8, !dbg !2198
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.end14
  %24 = load ptr, ptr %led_cdev, align 8, !dbg !2199
  %25 = load i64, ptr %brightness, align 8, !dbg !2200
  %conv21 = trunc i64 %25 to i32, !dbg !2200
  call void @led_set_brightness_nosleep(ptr noundef %24, i32 noundef %conv21) #17, !dbg !2201
  %26 = load ptr, ptr %led_cdev, align 8, !dbg !2202
  %work_flags22 = getelementptr inbounds %struct.led_classdev, ptr %26, i32 0, i32 5, !dbg !2202
  %27 = ptrtoint ptr %work_flags22 to i64, !dbg !2202
  %cmp = icmp ne i64 %27, 0, !dbg !2202
  %conv23 = zext i1 %cmp to i32, !dbg !2202
  %28 = call i1 @llvm.is.constant.i32(i32 %conv23), !dbg !2202
  br i1 %28, label %land.lhs.true, label %cond.false, !dbg !2202

land.lhs.true:                                    ; preds = %if.end20
  %29 = load ptr, ptr %led_cdev, align 8, !dbg !2202
  %work_flags24 = getelementptr inbounds %struct.led_classdev, ptr %29, i32 0, i32 5, !dbg !2202
  %30 = ptrtoint ptr %work_flags24 to i64, !dbg !2202
  %cmp25 = icmp ne i64 %30, 0, !dbg !2202
  br i1 %cmp25, label %land.lhs.true27, label %cond.false, !dbg !2202

land.lhs.true27:                                  ; preds = %land.lhs.true
  %31 = load ptr, ptr %led_cdev, align 8, !dbg !2202
  %work_flags28 = getelementptr inbounds %struct.led_classdev, ptr %31, i32 0, i32 5, !dbg !2202
  %32 = load i64, ptr %work_flags28, align 8, !dbg !2202
  %33 = call i1 @llvm.is.constant.i64(i64 %32), !dbg !2202
  br i1 %33, label %cond.true, label %cond.false, !dbg !2204

cond.true:                                        ; preds = %land.lhs.true27
  %34 = load ptr, ptr %led_cdev, align 8, !dbg !2202
  %work_flags29 = getelementptr inbounds %struct.led_classdev, ptr %34, i32 0, i32 5, !dbg !2202
  %call30 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %work_flags29) #17, !dbg !2202
  br i1 %call30, label %if.then35, label %if.end64, !dbg !2202

cond.false:                                       ; preds = %land.lhs.true27, %land.lhs.true, %if.end20
  %35 = load ptr, ptr %led_cdev, align 8, !dbg !2202
  %work_flags32 = getelementptr inbounds %struct.led_classdev, ptr %35, i32 0, i32 5, !dbg !2202
  %call33 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %work_flags32) #17, !dbg !2202
  br i1 %call33, label %if.then35, label %if.end64, !dbg !2204

if.then35:                                        ; preds = %cond.false, %cond.true
  %36 = load ptr, ptr %led_cdev, align 8, !dbg !2205
  %work_flags36 = getelementptr inbounds %struct.led_classdev, ptr %36, i32 0, i32 5, !dbg !2205
  %37 = ptrtoint ptr %work_flags36 to i64, !dbg !2205
  %cmp37 = icmp ne i64 %37, 0, !dbg !2205
  %conv38 = zext i1 %cmp37 to i32, !dbg !2205
  %38 = call i1 @llvm.is.constant.i32(i32 %conv38), !dbg !2205
  br i1 %38, label %land.lhs.true39, label %cond.false49, !dbg !2205

land.lhs.true39:                                  ; preds = %if.then35
  %39 = load ptr, ptr %led_cdev, align 8, !dbg !2205
  %work_flags40 = getelementptr inbounds %struct.led_classdev, ptr %39, i32 0, i32 5, !dbg !2205
  %40 = ptrtoint ptr %work_flags40 to i64, !dbg !2205
  %cmp41 = icmp ne i64 %40, 0, !dbg !2205
  br i1 %cmp41, label %land.lhs.true43, label %cond.false49, !dbg !2205

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %41 = load ptr, ptr %led_cdev, align 8, !dbg !2205
  %work_flags44 = getelementptr inbounds %struct.led_classdev, ptr %41, i32 0, i32 5, !dbg !2205
  %42 = load i64, ptr %work_flags44, align 8, !dbg !2205
  %43 = call i1 @llvm.is.constant.i64(i64 %42), !dbg !2205
  br i1 %43, label %cond.true45, label %cond.false49, !dbg !2208

cond.true45:                                      ; preds = %land.lhs.true43
  %44 = load ptr, ptr %led_cdev, align 8, !dbg !2205
  %work_flags46 = getelementptr inbounds %struct.led_classdev, ptr %44, i32 0, i32 5, !dbg !2205
  %call47 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %work_flags46) #17, !dbg !2205
  br i1 %call47, label %if.then53, label %if.else58, !dbg !2205

cond.false49:                                     ; preds = %land.lhs.true43, %land.lhs.true39, %if.then35
  %45 = load ptr, ptr %led_cdev, align 8, !dbg !2205
  %work_flags50 = getelementptr inbounds %struct.led_classdev, ptr %45, i32 0, i32 5, !dbg !2205
  %call51 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %work_flags50) #17, !dbg !2205
  br i1 %call51, label %if.then53, label %if.else58, !dbg !2208

if.then53:                                        ; preds = %cond.false49, %cond.true45
  %46 = load i64, ptr %brightness, align 8, !dbg !2209
  %tobool54 = icmp ne i64 %46, 0, !dbg !2209
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !2212

if.then55:                                        ; preds = %if.then53
  %47 = load ptr, ptr %led_cdev, align 8, !dbg !2213
  %work_flags56 = getelementptr inbounds %struct.led_classdev, ptr %47, i32 0, i32 5, !dbg !2214
  call void @set_bit(i64 noundef 2, ptr noundef %work_flags56) #17, !dbg !2215
  br label %if.end57, !dbg !2215

if.end57:                                         ; preds = %if.then55, %if.then53
  br label %if.end63, !dbg !2216

if.else58:                                        ; preds = %cond.false49, %cond.true45
  %48 = load i64, ptr %brightness, align 8, !dbg !2217
  %tobool59 = icmp ne i64 %48, 0, !dbg !2217
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !2220

if.then60:                                        ; preds = %if.else58
  %49 = load ptr, ptr %led_cdev, align 8, !dbg !2221
  %work_flags61 = getelementptr inbounds %struct.led_classdev, ptr %49, i32 0, i32 5, !dbg !2222
  call void @set_bit(i64 noundef 2, ptr noundef %work_flags61) #17, !dbg !2223
  br label %if.end62, !dbg !2223

if.end62:                                         ; preds = %if.then60, %if.else58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end57
  br label %if.end64, !dbg !2224

if.end64:                                         ; preds = %if.end63, %cond.false, %cond.true
  %50 = load ptr, ptr %led_cdev, align 8, !dbg !2225
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %50, i32 0, i32 18, !dbg !2226
  %51 = load volatile i64, ptr @jiffies, align 64, !dbg !2227
  %52 = load i64, ptr %delay, align 8, !dbg !2228
  %conv65 = trunc i64 %52 to i32, !dbg !2228
  %call66 = call i64 @msecs_to_jiffies(i32 noundef %conv65) #17, !dbg !2229
  %add = add i64 %51, %call66, !dbg !2230
  %call67 = call i32 @mod_timer(ptr noundef %blink_timer, i64 noundef %add) #17, !dbg !2231
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2232
  br label %cleanup, !dbg !2232

cleanup:                                          ; preds = %if.end64, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %delay) #18, !dbg !2232
  call void @llvm.lifetime.end.p0(i64 8, ptr %brightness) #18, !dbg !2232
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #18, !dbg !2232
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2232

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_blink_set(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off) #0 align 16 !dbg !2233 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %delay_on.addr = alloca ptr, align 8
  %delay_off.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2237, metadata !DIExpression()), !dbg !2240
  store ptr %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !2238, metadata !DIExpression()), !dbg !2241
  store ptr %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !2239, metadata !DIExpression()), !dbg !2242
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2243
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 18, !dbg !2244
  %call = call i32 @del_timer_sync(ptr noundef %blink_timer) #17, !dbg !2245
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2246
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 5, !dbg !2247
  call void @clear_bit(i64 noundef 0, ptr noundef %work_flags) #17, !dbg !2248
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2249
  %work_flags1 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 5, !dbg !2250
  call void @clear_bit(i64 noundef 1, ptr noundef %work_flags1) #17, !dbg !2251
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2252
  %work_flags2 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 5, !dbg !2253
  call void @clear_bit(i64 noundef 2, ptr noundef %work_flags2) #17, !dbg !2254
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2255
  %5 = load ptr, ptr %delay_on.addr, align 8, !dbg !2256
  %6 = load ptr, ptr %delay_off.addr, align 8, !dbg !2257
  call void @led_blink_setup(ptr noundef %4, ptr noundef %5, ptr noundef %6) #17, !dbg !2258
  ret void, !dbg !2259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @del_timer_sync(ptr noundef %timer) #2 align 16 !dbg !2260 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !2264, metadata !DIExpression()), !dbg !2265
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !2266
  %call = call i32 @timer_delete_sync(ptr noundef %0) #17, !dbg !2267
  ret i32 %call, !dbg !2268
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2269 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2276, metadata !DIExpression()), !dbg !2278
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2277, metadata !DIExpression()), !dbg !2279
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2280
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2281
  %div = sdiv i64 %1, 64, !dbg !2281
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2282
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !2283
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2284
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2285
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !2286
  ret void, !dbg !2287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @led_blink_setup(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off) #0 align 16 !dbg !2288 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %delay_on.addr = alloca ptr, align 8
  %delay_off.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2290, metadata !DIExpression()), !dbg !2293
  store ptr %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !2291, metadata !DIExpression()), !dbg !2294
  store ptr %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !2292, metadata !DIExpression()), !dbg !2295
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2296
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5, !dbg !2296
  %1 = ptrtoint ptr %work_flags to i64, !dbg !2296
  %cmp = icmp ne i64 %1, 0, !dbg !2296
  %conv = zext i1 %cmp to i32, !dbg !2296
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2296
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2296

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2296
  %work_flags1 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 5, !dbg !2296
  %4 = ptrtoint ptr %work_flags1 to i64, !dbg !2296
  %cmp2 = icmp ne i64 %4, 0, !dbg !2296
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2296

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2296
  %work_flags5 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 5, !dbg !2296
  %6 = load i64, ptr %work_flags5, align 8, !dbg !2296
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2296
  br i1 %7, label %cond.true, label %cond.false, !dbg !2298

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2296
  %work_flags6 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 5, !dbg !2296
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %work_flags6) #17, !dbg !2296
  br i1 %call, label %if.end, label %land.lhs.true11, !dbg !2296

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2296
  %work_flags8 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 5, !dbg !2296
  %call9 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %work_flags8) #17, !dbg !2296
  br i1 %call9, label %if.end, label %land.lhs.true11, !dbg !2298

land.lhs.true11:                                  ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2299
  %blink_set = getelementptr inbounds %struct.led_classdev, ptr %10, i32 0, i32 9, !dbg !2300
  %11 = load ptr, ptr %blink_set, align 8, !dbg !2300
  %tobool = icmp ne ptr %11, null, !dbg !2299
  br i1 %tobool, label %land.lhs.true12, label %if.end, !dbg !2301

land.lhs.true12:                                  ; preds = %land.lhs.true11
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2302
  %blink_set13 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 9, !dbg !2303
  %13 = load ptr, ptr %blink_set13, align 8, !dbg !2303
  %14 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2304
  %15 = load ptr, ptr %delay_on.addr, align 8, !dbg !2305
  %16 = load ptr, ptr %delay_off.addr, align 8, !dbg !2306
  %call14 = call i32 %13(ptr noundef %14, ptr noundef %15, ptr noundef %16) #17, !dbg !2302
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2302
  br i1 %tobool15, label %if.end, label %if.then, !dbg !2307

if.then:                                          ; preds = %land.lhs.true12
  br label %return, !dbg !2308

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true11, %cond.false, %cond.true
  %17 = load ptr, ptr %delay_on.addr, align 8, !dbg !2309
  %18 = load i64, ptr %17, align 8, !dbg !2311
  %tobool16 = icmp ne i64 %18, 0, !dbg !2311
  br i1 %tobool16, label %if.end20, label %land.lhs.true17, !dbg !2312

land.lhs.true17:                                  ; preds = %if.end
  %19 = load ptr, ptr %delay_off.addr, align 8, !dbg !2313
  %20 = load i64, ptr %19, align 8, !dbg !2314
  %tobool18 = icmp ne i64 %20, 0, !dbg !2314
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !2315

if.then19:                                        ; preds = %land.lhs.true17
  %21 = load ptr, ptr %delay_off.addr, align 8, !dbg !2316
  store i64 500, ptr %21, align 8, !dbg !2317
  %22 = load ptr, ptr %delay_on.addr, align 8, !dbg !2318
  store i64 500, ptr %22, align 8, !dbg !2319
  br label %if.end20, !dbg !2320

if.end20:                                         ; preds = %if.then19, %land.lhs.true17, %if.end
  %23 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2321
  %24 = load ptr, ptr %delay_on.addr, align 8, !dbg !2322
  %25 = load i64, ptr %24, align 8, !dbg !2323
  %26 = load ptr, ptr %delay_off.addr, align 8, !dbg !2324
  %27 = load i64, ptr %26, align 8, !dbg !2325
  call void @led_set_software_blink(ptr noundef %23, i64 noundef %25, i64 noundef %27) #17, !dbg !2326
  br label %return, !dbg !2327

return:                                           ; preds = %if.end20, %if.then
  ret void, !dbg !2327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_blink_set_oneshot(ptr noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off, i32 noundef %invert) #0 align 16 !dbg !2328 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %delay_on.addr = alloca ptr, align 8
  %delay_off.addr = alloca ptr, align 8
  %invert.addr = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2332, metadata !DIExpression()), !dbg !2336
  store ptr %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !2333, metadata !DIExpression()), !dbg !2337
  store ptr %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !2334, metadata !DIExpression()), !dbg !2338
  store i32 %invert, ptr %invert.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %invert.addr, metadata !2335, metadata !DIExpression()), !dbg !2339
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2340
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5, !dbg !2340
  %1 = ptrtoint ptr %work_flags to i64, !dbg !2340
  %cmp = icmp ne i64 %1, 0, !dbg !2340
  %conv = zext i1 %cmp to i32, !dbg !2340
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2340
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2340

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2340
  %work_flags1 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 5, !dbg !2340
  %4 = ptrtoint ptr %work_flags1 to i64, !dbg !2340
  %cmp2 = icmp ne i64 %4, 0, !dbg !2340
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2340

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2340
  %work_flags5 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 5, !dbg !2340
  %6 = load i64, ptr %work_flags5, align 8, !dbg !2340
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2340
  br i1 %7, label %cond.true, label %cond.false, !dbg !2342

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2340
  %work_flags6 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 5, !dbg !2340
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %work_flags6) #17, !dbg !2340
  br i1 %call, label %land.lhs.true11, label %if.end, !dbg !2340

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2340
  %work_flags8 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 5, !dbg !2340
  %call9 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %work_flags8) #17, !dbg !2340
  br i1 %call9, label %land.lhs.true11, label %if.end, !dbg !2342

land.lhs.true11:                                  ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2343
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %10, i32 0, i32 18, !dbg !2344
  %call12 = call i32 @timer_pending(ptr noundef %blink_timer) #17, !dbg !2345
  %tobool = icmp ne i32 %call12, 0, !dbg !2345
  br i1 %tobool, label %if.then, label %if.end, !dbg !2346

if.then:                                          ; preds = %land.lhs.true11
  br label %return, !dbg !2347

if.end:                                           ; preds = %land.lhs.true11, %cond.false, %cond.true
  %11 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2348
  %work_flags13 = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 5, !dbg !2349
  call void @set_bit(i64 noundef 1, ptr noundef %work_flags13) #17, !dbg !2350
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2351
  %work_flags14 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 5, !dbg !2352
  call void @clear_bit(i64 noundef 2, ptr noundef %work_flags14) #17, !dbg !2353
  %13 = load i32, ptr %invert.addr, align 4, !dbg !2354
  %tobool15 = icmp ne i32 %13, 0, !dbg !2354
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !2356

if.then16:                                        ; preds = %if.end
  %14 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2357
  %work_flags17 = getelementptr inbounds %struct.led_classdev, ptr %14, i32 0, i32 5, !dbg !2358
  call void @set_bit(i64 noundef 3, ptr noundef %work_flags17) #17, !dbg !2359
  br label %if.end19, !dbg !2359

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2360
  %work_flags18 = getelementptr inbounds %struct.led_classdev, ptr %15, i32 0, i32 5, !dbg !2361
  call void @clear_bit(i64 noundef 3, ptr noundef %work_flags18) #17, !dbg !2362
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %16 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2363
  %17 = load ptr, ptr %delay_on.addr, align 8, !dbg !2364
  %18 = load ptr, ptr %delay_off.addr, align 8, !dbg !2365
  call void @led_blink_setup(ptr noundef %16, ptr noundef %17, ptr noundef %18) #17, !dbg !2366
  br label %return, !dbg !2367

return:                                           ; preds = %if.end19, %if.then
  ret void, !dbg !2367
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2368 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2375, metadata !DIExpression()), !dbg !2380
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2376, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2377, metadata !DIExpression()), !dbg !2383
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2384
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2385
  %div = udiv i64 %1, 64, !dbg !2385
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2386
  store ptr %add.ptr, ptr %p, align 8, !dbg !2383
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !2387
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2378, metadata !DIExpression()), !dbg !2388
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2389
  %rem = urem i64 %2, 64, !dbg !2389
  %shl = shl i64 1, %rem, !dbg !2389
  store i64 %shl, ptr %mask, align 8, !dbg !2388
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2379, metadata !DIExpression()), !dbg !2391
  %3 = load ptr, ptr %p, align 8, !dbg !2392
  %4 = load i64, ptr %3, align 8, !dbg !2393
  store i64 %4, ptr %val, align 8, !dbg !2391
  %5 = load i64, ptr %val, align 8, !dbg !2394
  %6 = load i64, ptr %mask, align 8, !dbg !2395
  %and = and i64 %5, %6, !dbg !2396
  %tobool = icmp ne i64 %and, 0, !dbg !2397
  %lnot = xor i1 %tobool, true, !dbg !2397
  %lnot1 = xor i1 %lnot, true, !dbg !2398
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !2399
  ret i1 %lnot1, !dbg !2400
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2401 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2404, metadata !DIExpression()), !dbg !2406
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2405, metadata !DIExpression()), !dbg !2407
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2408
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2409
  %div = udiv i64 %1, 64, !dbg !2409
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2410
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !2411
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2412
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2413
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !2414
  ret i1 %call, !dbg !2415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @timer_pending(ptr noundef %timer) #2 align 16 !dbg !2416 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !2422, metadata !DIExpression()), !dbg !2423
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !2424
  %entry1 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 0, !dbg !2425
  %call = call i32 @hlist_unhashed_lockless(ptr noundef %entry1) #17, !dbg !2426
  %tobool = icmp ne i32 %call, 0, !dbg !2427
  %lnot = xor i1 %tobool, true, !dbg !2427
  %lnot.ext = zext i1 %lnot to i32, !dbg !2427
  ret i32 %lnot.ext, !dbg !2428
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2429 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2431, metadata !DIExpression()), !dbg !2433
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2432, metadata !DIExpression()), !dbg !2434
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2435
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2436
  %div = sdiv i64 %1, 64, !dbg !2436
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2437
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !2438
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2439
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2440
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !2441
  ret void, !dbg !2442
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_blink_set_nosleep(ptr noundef %led_cdev, i64 noundef %delay_on, i64 noundef %delay_off) #0 align 16 !dbg !2443 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %delay_on.addr = alloca i64, align 8
  %delay_off.addr = alloca i64, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2447, metadata !DIExpression()), !dbg !2450
  store i64 %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !2448, metadata !DIExpression()), !dbg !2451
  store i64 %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !2449, metadata !DIExpression()), !dbg !2452
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2453
  %blink_set = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 9, !dbg !2455
  %1 = load ptr, ptr %blink_set, align 8, !dbg !2455
  %tobool = icmp ne ptr %1, null, !dbg !2453
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2456

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2457
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 7, !dbg !2458
  %3 = load ptr, ptr %brightness_set_blocking, align 8, !dbg !2458
  %tobool1 = icmp ne ptr %3, null, !dbg !2457
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2459

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, ptr %delay_on.addr, align 8, !dbg !2460
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2462
  %delayed_delay_on = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 24, !dbg !2463
  store i64 %4, ptr %delayed_delay_on, align 8, !dbg !2464
  %6 = load i64, ptr %delay_off.addr, align 8, !dbg !2465
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2466
  %delayed_delay_off = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 25, !dbg !2467
  store i64 %6, ptr %delayed_delay_off, align 8, !dbg !2468
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2469
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 5, !dbg !2470
  call void @set_bit(i64 noundef 8, ptr noundef %work_flags) #17, !dbg !2471
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2472
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 22, !dbg !2473
  %call = call zeroext i1 @schedule_work(ptr noundef %set_brightness_work) #17, !dbg !2474
  br label %return, !dbg !2475

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2476
  call void @led_blink_set(ptr noundef %10, ptr noundef %delay_on.addr, ptr noundef %delay_off.addr) #17, !dbg !2477
  br label %return, !dbg !2478

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #2 align 16 !dbg !2479 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2483, metadata !DIExpression()), !dbg !2484
  %0 = load ptr, ptr @system_wq, align 8, !dbg !2485
  %1 = load ptr, ptr %work.addr, align 8, !dbg !2486
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #17, !dbg !2487
  ret i1 %call, !dbg !2488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_stop_software_blink(ptr noundef %led_cdev) #0 align 16 !dbg !2489 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2493
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 18, !dbg !2494
  %call = call i32 @del_timer_sync(ptr noundef %blink_timer) #17, !dbg !2495
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2496
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 16, !dbg !2497
  store i64 0, ptr %blink_delay_on, align 8, !dbg !2498
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2499
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 17, !dbg !2500
  store i64 0, ptr %blink_delay_off, align 8, !dbg !2501
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2502
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 5, !dbg !2503
  call void @clear_bit(i64 noundef 0, ptr noundef %work_flags) #17, !dbg !2504
  ret void, !dbg !2505
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_set_brightness(ptr noundef %led_cdev, i32 noundef %brightness) #0 align 16 !dbg !2506 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %brightness.addr = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2510, metadata !DIExpression()), !dbg !2512
  store i32 %brightness, ptr %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %brightness.addr, metadata !2511, metadata !DIExpression()), !dbg !2513
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2514
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 5, !dbg !2514
  %1 = ptrtoint ptr %work_flags to i64, !dbg !2514
  %cmp = icmp ne i64 %1, 0, !dbg !2514
  %conv = zext i1 %cmp to i32, !dbg !2514
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2514
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2514

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2514
  %work_flags1 = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 5, !dbg !2514
  %4 = ptrtoint ptr %work_flags1 to i64, !dbg !2514
  %cmp2 = icmp ne i64 %4, 0, !dbg !2514
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2514

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2514
  %work_flags5 = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 5, !dbg !2514
  %6 = load i64, ptr %work_flags5, align 8, !dbg !2514
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2514
  br i1 %7, label %cond.true, label %cond.false, !dbg !2516

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2514
  %work_flags6 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 5, !dbg !2514
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %work_flags6) #17, !dbg !2514
  br i1 %call, label %if.then, label %if.end15, !dbg !2514

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2514
  %work_flags8 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 5, !dbg !2514
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %work_flags8) #17, !dbg !2514
  br i1 %call9, label %if.then, label %if.end15, !dbg !2516

if.then:                                          ; preds = %cond.false, %cond.true
  %10 = load i32, ptr %brightness.addr, align 4, !dbg !2517
  %tobool = icmp ne i32 %10, 0, !dbg !2517
  br i1 %tobool, label %if.else, label %if.then11, !dbg !2520

if.then11:                                        ; preds = %if.then
  %11 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2521
  %work_flags12 = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 5, !dbg !2523
  call void @set_bit(i64 noundef 5, ptr noundef %work_flags12) #17, !dbg !2524
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2525
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 22, !dbg !2526
  %call13 = call zeroext i1 @schedule_work(ptr noundef %set_brightness_work) #17, !dbg !2527
  br label %if.end, !dbg !2528

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2529
  %work_flags14 = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 5, !dbg !2531
  call void @set_bit(i64 noundef 4, ptr noundef %work_flags14) #17, !dbg !2532
  %14 = load i32, ptr %brightness.addr, align 4, !dbg !2533
  %15 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2534
  %new_blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %15, i32 0, i32 20, !dbg !2535
  store i32 %14, ptr %new_blink_brightness, align 4, !dbg !2536
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %return, !dbg !2537

if.end15:                                         ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2538
  %17 = load i32, ptr %brightness.addr, align 4, !dbg !2539
  call void @led_set_brightness_nosleep(ptr noundef %16, i32 noundef %17) #17, !dbg !2540
  br label %return, !dbg !2541

return:                                           ; preds = %if.end15, %if.end
  ret void, !dbg !2541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_set_brightness_nosleep(ptr noundef %led_cdev, i32 noundef %value) #0 align 16 !dbg !2542 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %__UNIQUE_ID___x215 = alloca i32, align 4
  %__UNIQUE_ID___y216 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2544, metadata !DIExpression()), !dbg !2549
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2545, metadata !DIExpression()), !dbg !2550
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x215) #18, !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x215, metadata !2546, metadata !DIExpression()), !dbg !2551
  %0 = load i32, ptr %value.addr, align 4, !dbg !2551
  store i32 %0, ptr %__UNIQUE_ID___x215, align 4, !dbg !2551
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y216) #18, !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y216, metadata !2548, metadata !DIExpression()), !dbg !2551
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2551
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 2, !dbg !2551
  %2 = load i32, ptr %max_brightness, align 4, !dbg !2551
  store i32 %2, ptr %__UNIQUE_ID___y216, align 4, !dbg !2551
  %3 = load i32, ptr %__UNIQUE_ID___x215, align 4, !dbg !2551
  %4 = load i32, ptr %__UNIQUE_ID___y216, align 4, !dbg !2551
  %cmp = icmp ult i32 %3, %4, !dbg !2551
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2551

cond.true:                                        ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___x215, align 4, !dbg !2551
  br label %cond.end, !dbg !2551

cond.false:                                       ; preds = %entry
  %6 = load i32, ptr %__UNIQUE_ID___y216, align 4, !dbg !2551
  br label %cond.end, !dbg !2551

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !2551
  store i32 %cond, ptr %tmp, align 4, !dbg !2551
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y216) #18, !dbg !2552
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x215) #18, !dbg !2552
  %7 = load i32, ptr %tmp, align 4, !dbg !2551
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2553
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 1, !dbg !2554
  store i32 %7, ptr %brightness, align 8, !dbg !2555
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2556
  %flags = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 4, !dbg !2558
  %10 = load i32, ptr %flags, align 4, !dbg !2558
  %conv = sext i32 %10 to i64, !dbg !2556
  %and = and i64 %conv, 1, !dbg !2559
  %tobool = icmp ne i64 %and, 0, !dbg !2559
  br i1 %tobool, label %if.then, label %if.end, !dbg !2560

if.then:                                          ; preds = %cond.end
  br label %return, !dbg !2561

if.end:                                           ; preds = %cond.end
  %11 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2562
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2563
  %brightness1 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 1, !dbg !2564
  %13 = load i32, ptr %brightness1, align 8, !dbg !2564
  call void @led_set_brightness_nopm(ptr noundef %11, i32 noundef %13) #17, !dbg !2565
  br label %return, !dbg !2566

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_set_brightness_nopm(ptr noundef %led_cdev, i32 noundef %value) #0 align 16 !dbg !2567 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2569, metadata !DIExpression()), !dbg !2571
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2570, metadata !DIExpression()), !dbg !2572
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2573
  %1 = load i32, ptr %value.addr, align 4, !dbg !2575
  %call = call i32 @__led_set_brightness(ptr noundef %0, i32 noundef %1) #17, !dbg !2576
  %tobool = icmp ne i32 %call, 0, !dbg !2576
  br i1 %tobool, label %if.end, label %if.then, !dbg !2577

if.then:                                          ; preds = %entry
  br label %return, !dbg !2578

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %value.addr, align 4, !dbg !2579
  %tobool1 = icmp ne i32 %2, 0, !dbg !2579
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2581

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %value.addr, align 4, !dbg !2582
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2584
  %delayed_set_value = getelementptr inbounds %struct.led_classdev, ptr %4, i32 0, i32 23, !dbg !2585
  store i32 %3, ptr %delayed_set_value, align 8, !dbg !2586
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2587
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 5, !dbg !2588
  call void @set_bit(i64 noundef 7, ptr noundef %work_flags) #17, !dbg !2589
  br label %if.end6, !dbg !2590

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2591
  %work_flags3 = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 5, !dbg !2593
  call void @clear_bit(i64 noundef 7, ptr noundef %work_flags3) #17, !dbg !2594
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2595
  %work_flags4 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 5, !dbg !2596
  call void @clear_bit(i64 noundef 8, ptr noundef %work_flags4) #17, !dbg !2597
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2598
  %work_flags5 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 5, !dbg !2599
  call void @set_bit(i64 noundef 6, ptr noundef %work_flags5) #17, !dbg !2600
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2601
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 22, !dbg !2602
  %call7 = call zeroext i1 @schedule_work(ptr noundef %set_brightness_work) #17, !dbg !2603
  br label %return, !dbg !2604

return:                                           ; preds = %if.end6, %if.then
  ret void, !dbg !2604
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__led_set_brightness(ptr noundef %led_cdev, i32 noundef %value) #0 align 16 !dbg !2605 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2609, metadata !DIExpression()), !dbg !2611
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2610, metadata !DIExpression()), !dbg !2612
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2613
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 6, !dbg !2615
  %1 = load ptr, ptr %brightness_set, align 8, !dbg !2615
  %tobool = icmp ne ptr %1, null, !dbg !2613
  br i1 %tobool, label %if.end, label %if.then, !dbg !2616

if.then:                                          ; preds = %entry
  store i32 -524, ptr %retval, align 4, !dbg !2617
  br label %return, !dbg !2617

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2618
  %brightness_set1 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 6, !dbg !2619
  %3 = load ptr, ptr %brightness_set1, align 8, !dbg !2619
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2620
  %5 = load i32, ptr %value.addr, align 4, !dbg !2621
  call void %3(ptr noundef %4, i32 noundef %5) #17, !dbg !2618
  store i32 0, ptr %retval, align 4, !dbg !2622
  br label %return, !dbg !2622

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !2623
  ret i32 %6, !dbg !2623
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @led_set_brightness_sync(ptr noundef %led_cdev, i32 noundef %value) #0 align 16 !dbg !2624 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %__UNIQUE_ID___x218 = alloca i32, align 4
  %__UNIQUE_ID___y219 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2626, metadata !DIExpression()), !dbg !2631
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2627, metadata !DIExpression()), !dbg !2632
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2633
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 16, !dbg !2635
  %1 = load i64, ptr %blink_delay_on, align 8, !dbg !2635
  %tobool = icmp ne i64 %1, 0, !dbg !2633
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2636

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2637
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 17, !dbg !2638
  %3 = load i64, ptr %blink_delay_off, align 8, !dbg !2638
  %tobool1 = icmp ne i64 %3, 0, !dbg !2637
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2639

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -16, ptr %retval, align 4, !dbg !2640
  br label %return, !dbg !2640

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x218) #18, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x218, metadata !2628, metadata !DIExpression()), !dbg !2641
  %4 = load i32, ptr %value.addr, align 4, !dbg !2641
  store i32 %4, ptr %__UNIQUE_ID___x218, align 4, !dbg !2641
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y219) #18, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y219, metadata !2630, metadata !DIExpression()), !dbg !2641
  %5 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2641
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 2, !dbg !2641
  %6 = load i32, ptr %max_brightness, align 4, !dbg !2641
  store i32 %6, ptr %__UNIQUE_ID___y219, align 4, !dbg !2641
  %7 = load i32, ptr %__UNIQUE_ID___x218, align 4, !dbg !2641
  %8 = load i32, ptr %__UNIQUE_ID___y219, align 4, !dbg !2641
  %cmp = icmp ult i32 %7, %8, !dbg !2641
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2641

cond.true:                                        ; preds = %if.end
  %9 = load i32, ptr %__UNIQUE_ID___x218, align 4, !dbg !2641
  br label %cond.end, !dbg !2641

cond.false:                                       ; preds = %if.end
  %10 = load i32, ptr %__UNIQUE_ID___y219, align 4, !dbg !2641
  br label %cond.end, !dbg !2641

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !2641
  store i32 %cond, ptr %tmp, align 4, !dbg !2641
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y219) #18, !dbg !2642
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x218) #18, !dbg !2642
  %11 = load i32, ptr %tmp, align 4, !dbg !2641
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2643
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 1, !dbg !2644
  store i32 %11, ptr %brightness, align 8, !dbg !2645
  %13 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2646
  %flags = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 4, !dbg !2648
  %14 = load i32, ptr %flags, align 4, !dbg !2648
  %conv = sext i32 %14 to i64, !dbg !2646
  %and = and i64 %conv, 1, !dbg !2649
  %tobool2 = icmp ne i64 %and, 0, !dbg !2649
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2650

if.then3:                                         ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !2651
  br label %return, !dbg !2651

if.end4:                                          ; preds = %cond.end
  %15 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2652
  %16 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2653
  %brightness5 = getelementptr inbounds %struct.led_classdev, ptr %16, i32 0, i32 1, !dbg !2654
  %17 = load i32, ptr %brightness5, align 8, !dbg !2654
  %call = call i32 @__led_set_brightness_blocking(ptr noundef %15, i32 noundef %17) #17, !dbg !2655
  store i32 %call, ptr %retval, align 4, !dbg !2656
  br label %return, !dbg !2656

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %18 = load i32, ptr %retval, align 4, !dbg !2657
  ret i32 %18, !dbg !2657
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__led_set_brightness_blocking(ptr noundef %led_cdev, i32 noundef %value) #0 align 16 !dbg !2658 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2660, metadata !DIExpression()), !dbg !2662
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2661, metadata !DIExpression()), !dbg !2663
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2664
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 7, !dbg !2666
  %1 = load ptr, ptr %brightness_set_blocking, align 8, !dbg !2666
  %tobool = icmp ne ptr %1, null, !dbg !2664
  br i1 %tobool, label %if.end, label %if.then, !dbg !2667

if.then:                                          ; preds = %entry
  store i32 -524, ptr %retval, align 4, !dbg !2668
  br label %return, !dbg !2668

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2669
  %brightness_set_blocking1 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 7, !dbg !2670
  %3 = load ptr, ptr %brightness_set_blocking1, align 8, !dbg !2670
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2671
  %5 = load i32, ptr %value.addr, align 4, !dbg !2672
  %call = call i32 %3(ptr noundef %4, i32 noundef %5) #17, !dbg !2669
  store i32 %call, ptr %retval, align 4, !dbg !2673
  br label %return, !dbg !2673

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !2674
  ret i32 %6, !dbg !2674
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @led_update_brightness(ptr noundef %led_cdev) #0 align 16 !dbg !2675 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2680
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2678, metadata !DIExpression()), !dbg !2681
  store i32 0, ptr %ret, align 4, !dbg !2681
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2682
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 8, !dbg !2684
  %1 = load ptr, ptr %brightness_get, align 8, !dbg !2684
  %tobool = icmp ne ptr %1, null, !dbg !2682
  br i1 %tobool, label %if.then, label %if.end3, !dbg !2685

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2686
  %brightness_get1 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 8, !dbg !2688
  %3 = load ptr, ptr %brightness_get1, align 8, !dbg !2688
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2689
  %call = call i32 %3(ptr noundef %4) #17, !dbg !2686
  store i32 %call, ptr %ret, align 4, !dbg !2690
  %5 = load i32, ptr %ret, align 4, !dbg !2691
  %cmp = icmp sge i32 %5, 0, !dbg !2693
  br i1 %cmp, label %if.then2, label %if.end, !dbg !2694

if.then2:                                         ; preds = %if.then
  %6 = load i32, ptr %ret, align 4, !dbg !2695
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2697
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 1, !dbg !2698
  store i32 %6, ptr %brightness, align 8, !dbg !2699
  store i32 0, ptr %retval, align 4, !dbg !2700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2700

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !2701

if.end3:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %ret, align 4, !dbg !2702
  store i32 %8, ptr %retval, align 4, !dbg !2703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2703

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2704
  %9 = load i32, ptr %retval, align 4, !dbg !2704
  ret i32 %9, !dbg !2704
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @led_get_default_pattern(ptr noundef %led_cdev, ptr noundef %size) #0 align 16 !dbg !2705 {
entry:
  %retval = alloca ptr, align 8
  %led_cdev.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %fwnode = alloca ptr, align 8
  %pattern = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2710, metadata !DIExpression()), !dbg !2715
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2711, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 8, ptr %fwnode) #18, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %fwnode, metadata !2712, metadata !DIExpression()), !dbg !2718
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2719
  %dev = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 12, !dbg !2720
  %1 = load ptr, ptr %dev, align 8, !dbg !2720
  %fwnode1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 24, !dbg !2721
  %2 = load ptr, ptr %fwnode1, align 8, !dbg !2721
  store ptr %2, ptr %fwnode, align 8, !dbg !2718
  call void @llvm.lifetime.start.p0(i64 8, ptr %pattern) #18, !dbg !2722
  call void @llvm.dbg.declare(metadata ptr %pattern, metadata !2713, metadata !DIExpression()), !dbg !2723
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #18, !dbg !2724
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2714, metadata !DIExpression()), !dbg !2725
  %3 = load ptr, ptr %fwnode, align 8, !dbg !2726
  %call = call i32 @fwnode_property_count_u32(ptr noundef %3, ptr noundef @.str.10) #17, !dbg !2727
  store i32 %call, ptr %count, align 4, !dbg !2728
  %4 = load i32, ptr %count, align 4, !dbg !2729
  %cmp = icmp slt i32 %4, 0, !dbg !2731
  br i1 %cmp, label %if.then, label %if.end, !dbg !2732

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2733

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %count, align 4, !dbg !2734
  %conv = sext i32 %5 to i64, !dbg !2734
  %call2 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 4, i32 noundef 3264) #19, !dbg !2735
  store ptr %call2, ptr %pattern, align 8, !dbg !2736
  %6 = load ptr, ptr %pattern, align 8, !dbg !2737
  %tobool = icmp ne ptr %6, null, !dbg !2737
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !2739

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2740

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %fwnode, align 8, !dbg !2741
  %8 = load ptr, ptr %pattern, align 8, !dbg !2743
  %9 = load i32, ptr %count, align 4, !dbg !2744
  %conv5 = sext i32 %9 to i64, !dbg !2744
  %call6 = call i32 @fwnode_property_read_u32_array(ptr noundef %7, ptr noundef @.str.10, ptr noundef %8, i64 noundef %conv5) #17, !dbg !2745
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2745
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2746

if.then8:                                         ; preds = %if.end4
  %10 = load ptr, ptr %pattern, align 8, !dbg !2747
  call void @kfree(ptr noundef %10) #17, !dbg !2749
  store ptr null, ptr %retval, align 8, !dbg !2750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2750

if.end9:                                          ; preds = %if.end4
  %11 = load i32, ptr %count, align 4, !dbg !2751
  %12 = load ptr, ptr %size.addr, align 8, !dbg !2752
  store i32 %11, ptr %12, align 4, !dbg !2753
  %13 = load ptr, ptr %pattern, align 8, !dbg !2754
  store ptr %13, ptr %retval, align 8, !dbg !2755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2755

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #18, !dbg !2756
  call void @llvm.lifetime.end.p0(i64 8, ptr %pattern) #18, !dbg !2756
  call void @llvm.lifetime.end.p0(i64 8, ptr %fwnode) #18, !dbg !2756
  %14 = load ptr, ptr %retval, align 8, !dbg !2756
  ret ptr %14, !dbg !2756
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fwnode_property_count_u32(ptr noundef %fwnode, ptr noundef %propname) #2 align 16 !dbg !2757 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !2761, metadata !DIExpression()), !dbg !2763
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !2762, metadata !DIExpression()), !dbg !2764
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !2765
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !2766
  %call = call i32 @fwnode_property_read_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 0) #17, !dbg !2767
  ret i32 %call, !dbg !2768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2769 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2773, metadata !DIExpression()), !dbg !2776
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2774, metadata !DIExpression()), !dbg !2777
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2775, metadata !DIExpression()), !dbg !2778
  %0 = load i64, ptr %n.addr, align 8, !dbg !2779
  %1 = load i64, ptr %size.addr, align 8, !dbg !2780
  %2 = load i32, ptr %flags.addr, align 4, !dbg !2781
  %or = or i32 %2, 256, !dbg !2782
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !2783
  ret ptr %call, !dbg !2784
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2785 dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2788 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_sysfs_disable(ptr noundef %led_cdev) #0 align 16 !dbg !2791 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2793, metadata !DIExpression()), !dbg !2794
  br label %do.body, !dbg !2795

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2796
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 37, !dbg !2796
  br label %do.end, !dbg !2796

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2798
  %flags = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 4, !dbg !2799
  %2 = load i32, ptr %flags, align 4, !dbg !2800
  %conv = sext i32 %2 to i64, !dbg !2800
  %or = or i64 %conv, 131072, !dbg !2800
  %conv1 = trunc i64 %or to i32, !dbg !2800
  store i32 %conv1, ptr %flags, align 4, !dbg !2800
  ret void, !dbg !2801
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_sysfs_enable(ptr noundef %led_cdev) #0 align 16 !dbg !2802 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !2804, metadata !DIExpression()), !dbg !2805
  br label %do.body, !dbg !2806

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2807
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 37, !dbg !2807
  br label %do.end, !dbg !2807

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !2809
  %flags = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 4, !dbg !2810
  %2 = load i32, ptr %flags, align 4, !dbg !2811
  %conv = sext i32 %2 to i64, !dbg !2811
  %and = and i64 %conv, -131073, !dbg !2811
  %conv1 = trunc i64 %and to i32, !dbg !2811
  store i32 %conv1, ptr %flags, align 4, !dbg !2811
  ret void, !dbg !2812
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @led_compose_name(ptr noundef %dev, ptr noundef %init_data, ptr noundef %led_classdev_name) #0 align 16 !dbg !2813 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %init_data.addr = alloca ptr, align 8
  %led_classdev_name.addr = alloca ptr, align 8
  %props = alloca %struct.led_properties, align 8
  %fwnode = alloca ptr, align 8
  %devicename = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp_buf = alloca [64 x i8], align 16
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2824, metadata !DIExpression()), !dbg !2843
  store ptr %init_data, ptr %init_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %init_data.addr, metadata !2825, metadata !DIExpression()), !dbg !2844
  store ptr %led_classdev_name, ptr %led_classdev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_classdev_name.addr, metadata !2826, metadata !DIExpression()), !dbg !2845
  call void @llvm.lifetime.start.p0(i64 32, ptr %props) #18, !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %props, metadata !2827, metadata !DIExpression()), !dbg !2847
  call void @llvm.memset.p0.i64(ptr align 8 %props, i8 0, i64 32, i1 false), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 8, ptr %fwnode) #18, !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %fwnode, metadata !2836, metadata !DIExpression()), !dbg !2849
  %0 = load ptr, ptr %init_data.addr, align 8, !dbg !2850
  %fwnode1 = getelementptr inbounds %struct.led_init_data, ptr %0, i32 0, i32 0, !dbg !2851
  %1 = load ptr, ptr %fwnode1, align 8, !dbg !2851
  store ptr %1, ptr %fwnode, align 8, !dbg !2849
  call void @llvm.lifetime.start.p0(i64 8, ptr %devicename) #18, !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %devicename, metadata !2837, metadata !DIExpression()), !dbg !2853
  %2 = load ptr, ptr %init_data.addr, align 8, !dbg !2854
  %devicename2 = getelementptr inbounds %struct.led_init_data, ptr %2, i32 0, i32 2, !dbg !2855
  %3 = load ptr, ptr %devicename2, align 8, !dbg !2855
  store ptr %3, ptr %devicename, align 8, !dbg !2853
  %4 = load ptr, ptr %led_classdev_name.addr, align 8, !dbg !2856
  %tobool = icmp ne ptr %4, null, !dbg !2856
  br i1 %tobool, label %if.end, label %if.then, !dbg !2858

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2859

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2860
  %6 = load ptr, ptr %fwnode, align 8, !dbg !2861
  call void @led_parse_fwnode_props(ptr noundef %5, ptr noundef %6, ptr noundef %props) #17, !dbg !2862
  %label = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 5, !dbg !2863
  %7 = load ptr, ptr %label, align 8, !dbg !2863
  %tobool3 = icmp ne ptr %7, null, !dbg !2864
  br i1 %tobool3, label %if.then4, label %if.else11, !dbg !2865

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %devicename, align 8, !dbg !2866
  %tobool5 = icmp ne ptr %8, null, !dbg !2866
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !2869

if.then6:                                         ; preds = %if.then4
  %9 = load ptr, ptr %led_classdev_name.addr, align 8, !dbg !2870
  %label7 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 5, !dbg !2872
  %10 = load ptr, ptr %label7, align 8, !dbg !2872
  %call = call i64 @strscpy(ptr noundef %9, ptr noundef %10, i64 noundef 64) #17, !dbg !2873
  br label %if.end10, !dbg !2874

if.else:                                          ; preds = %if.then4
  %11 = load ptr, ptr %led_classdev_name.addr, align 8, !dbg !2875
  %12 = load ptr, ptr %devicename, align 8, !dbg !2877
  %label8 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 5, !dbg !2878
  %13 = load ptr, ptr %label8, align 8, !dbg !2878
  %call9 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 64, ptr noundef @.str.11, ptr noundef %12, ptr noundef %13) #17, !dbg !2879
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  br label %if.end70, !dbg !2880

if.else11:                                        ; preds = %if.end
  %function = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 2, !dbg !2881
  %14 = load ptr, ptr %function, align 8, !dbg !2881
  %tobool12 = icmp ne ptr %14, null, !dbg !2882
  br i1 %tobool12, label %if.then14, label %lor.lhs.false, !dbg !2883

lor.lhs.false:                                    ; preds = %if.else11
  %color_present = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 1, !dbg !2884
  %15 = load i8, ptr %color_present, align 4, !dbg !2884, !range !2885, !noundef !419
  %tobool13 = trunc i8 %15 to i1, !dbg !2884
  br i1 %tobool13, label %if.then14, label %if.else53, !dbg !2886

if.then14:                                        ; preds = %lor.lhs.false, %if.else11
  call void @llvm.lifetime.start.p0(i64 64, ptr %tmp_buf) #18, !dbg !2887
  call void @llvm.dbg.declare(metadata ptr %tmp_buf, metadata !2838, metadata !DIExpression()), !dbg !2888
  %func_enum_present = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 4, !dbg !2889
  %16 = load i8, ptr %func_enum_present, align 4, !dbg !2889, !range !2885, !noundef !419
  %tobool15 = trunc i8 %16 to i1, !dbg !2889
  br i1 %tobool15, label %if.then16, label %if.else26, !dbg !2891

if.then16:                                        ; preds = %if.then14
  %arraydecay = getelementptr inbounds [64 x i8], ptr %tmp_buf, i64 0, i64 0, !dbg !2892
  %color_present17 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 1, !dbg !2894
  %17 = load i8, ptr %color_present17, align 4, !dbg !2894, !range !2885, !noundef !419
  %tobool18 = trunc i8 %17 to i1, !dbg !2894
  br i1 %tobool18, label %cond.true, label %cond.false, !dbg !2895

cond.true:                                        ; preds = %if.then16
  %color = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 0, !dbg !2896
  %18 = load i32, ptr %color, align 8, !dbg !2896
  %idxprom = zext i32 %18 to i64, !dbg !2897
  %arrayidx = getelementptr [15 x ptr], ptr @led_colors, i64 0, i64 %idxprom, !dbg !2897
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !2897
  br label %cond.end, !dbg !2895

cond.false:                                       ; preds = %if.then16
  br label %cond.end, !dbg !2895

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %19, %cond.true ], [ @.str.13, %cond.false ], !dbg !2895
  %function19 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 2, !dbg !2898
  %20 = load ptr, ptr %function19, align 8, !dbg !2898
  %tobool20 = icmp ne ptr %20, null, !dbg !2899
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2899

cond.true21:                                      ; preds = %cond.end
  br label %cond.end23, !dbg !2899

cond.false22:                                     ; preds = %cond.end
  br label %cond.end23, !dbg !2899

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi ptr [ %20, %cond.true21 ], [ @.str.13, %cond.false22 ], !dbg !2899
  %func_enum = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 3, !dbg !2900
  %21 = load i32, ptr %func_enum, align 8, !dbg !2900
  %call25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 64, ptr noundef @.str.12, ptr noundef %cond, ptr noundef %cond24, i32 noundef %21) #17, !dbg !2901
  br label %if.end44, !dbg !2902

if.else26:                                        ; preds = %if.then14
  %arraydecay27 = getelementptr inbounds [64 x i8], ptr %tmp_buf, i64 0, i64 0, !dbg !2903
  %color_present28 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 1, !dbg !2905
  %22 = load i8, ptr %color_present28, align 4, !dbg !2905, !range !2885, !noundef !419
  %tobool29 = trunc i8 %22 to i1, !dbg !2905
  br i1 %tobool29, label %cond.true30, label %cond.false34, !dbg !2906

cond.true30:                                      ; preds = %if.else26
  %color31 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 0, !dbg !2907
  %23 = load i32, ptr %color31, align 8, !dbg !2907
  %idxprom32 = zext i32 %23 to i64, !dbg !2908
  %arrayidx33 = getelementptr [15 x ptr], ptr @led_colors, i64 0, i64 %idxprom32, !dbg !2908
  %24 = load ptr, ptr %arrayidx33, align 8, !dbg !2908
  br label %cond.end35, !dbg !2906

cond.false34:                                     ; preds = %if.else26
  br label %cond.end35, !dbg !2906

cond.end35:                                       ; preds = %cond.false34, %cond.true30
  %cond36 = phi ptr [ %24, %cond.true30 ], [ @.str.13, %cond.false34 ], !dbg !2906
  %function37 = getelementptr inbounds %struct.led_properties, ptr %props, i32 0, i32 2, !dbg !2909
  %25 = load ptr, ptr %function37, align 8, !dbg !2909
  %tobool38 = icmp ne ptr %25, null, !dbg !2910
  br i1 %tobool38, label %cond.true39, label %cond.false40, !dbg !2910

cond.true39:                                      ; preds = %cond.end35
  br label %cond.end41, !dbg !2910

cond.false40:                                     ; preds = %cond.end35
  br label %cond.end41, !dbg !2910

cond.end41:                                       ; preds = %cond.false40, %cond.true39
  %cond42 = phi ptr [ %25, %cond.true39 ], [ @.str.13, %cond.false40 ], !dbg !2910
  %call43 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay27, i64 noundef 64, ptr noundef @.str.11, ptr noundef %cond36, ptr noundef %cond42) #17, !dbg !2911
  br label %if.end44

if.end44:                                         ; preds = %cond.end41, %cond.end23
  %26 = load ptr, ptr %init_data.addr, align 8, !dbg !2912
  %devname_mandatory = getelementptr inbounds %struct.led_init_data, ptr %26, i32 0, i32 3, !dbg !2914
  %27 = load i8, ptr %devname_mandatory, align 8, !dbg !2914, !range !2885, !noundef !419
  %tobool45 = trunc i8 %27 to i1, !dbg !2914
  br i1 %tobool45, label %if.then46, label %if.else49, !dbg !2915

if.then46:                                        ; preds = %if.end44
  %28 = load ptr, ptr %led_classdev_name.addr, align 8, !dbg !2916
  %29 = load ptr, ptr %devicename, align 8, !dbg !2918
  %arraydecay47 = getelementptr inbounds [64 x i8], ptr %tmp_buf, i64 0, i64 0, !dbg !2919
  %call48 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef 64, ptr noundef @.str.11, ptr noundef %29, ptr noundef %arraydecay47) #17, !dbg !2920
  br label %if.end52, !dbg !2921

if.else49:                                        ; preds = %if.end44
  %30 = load ptr, ptr %led_classdev_name.addr, align 8, !dbg !2922
  %arraydecay50 = getelementptr inbounds [64 x i8], ptr %tmp_buf, i64 0, i64 0, !dbg !2924
  %call51 = call i64 @strscpy(ptr noundef %30, ptr noundef %arraydecay50, i64 noundef 64) #17, !dbg !2925
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then46
  call void @llvm.lifetime.end.p0(i64 64, ptr %tmp_buf) #18, !dbg !2926
  br label %if.end69, !dbg !2927

if.else53:                                        ; preds = %lor.lhs.false
  %31 = load ptr, ptr %init_data.addr, align 8, !dbg !2928
  %default_label = getelementptr inbounds %struct.led_init_data, ptr %31, i32 0, i32 1, !dbg !2930
  %32 = load ptr, ptr %default_label, align 8, !dbg !2930
  %tobool54 = icmp ne ptr %32, null, !dbg !2928
  br i1 %tobool54, label %if.then55, label %if.else61, !dbg !2931

if.then55:                                        ; preds = %if.else53
  %33 = load ptr, ptr %devicename, align 8, !dbg !2932
  %tobool56 = icmp ne ptr %33, null, !dbg !2932
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !2935

if.then57:                                        ; preds = %if.then55
  br label %do.body, !dbg !2936

do.body:                                          ; preds = %if.then57
  br label %do.cond, !dbg !2939

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2939

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %dev.addr, align 8, !dbg !2936
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef @.str.14) #20, !dbg !2936
  store i32 -22, ptr %retval, align 4, !dbg !2941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2941

if.end58:                                         ; preds = %if.then55
  %35 = load ptr, ptr %led_classdev_name.addr, align 8, !dbg !2942
  %36 = load ptr, ptr %devicename, align 8, !dbg !2943
  %37 = load ptr, ptr %init_data.addr, align 8, !dbg !2944
  %default_label59 = getelementptr inbounds %struct.led_init_data, ptr %37, i32 0, i32 1, !dbg !2945
  %38 = load ptr, ptr %default_label59, align 8, !dbg !2945
  %call60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %35, i64 noundef 64, ptr noundef @.str.11, ptr noundef %36, ptr noundef %38) #17, !dbg !2946
  br label %if.end68, !dbg !2947

if.else61:                                        ; preds = %if.else53
  %39 = load ptr, ptr %fwnode, align 8, !dbg !2948
  %call62 = call zeroext i1 @is_of_node(ptr noundef %39) #17, !dbg !2950
  br i1 %call62, label %if.then63, label %if.else66, !dbg !2951

if.then63:                                        ; preds = %if.else61
  %40 = load ptr, ptr %led_classdev_name.addr, align 8, !dbg !2952
  %41 = load ptr, ptr %fwnode, align 8, !dbg !2954
  %call64 = call ptr @to_of_node(ptr noundef %41) #17, !dbg !2955
  %name = getelementptr inbounds %struct.device_node, ptr %call64, i32 0, i32 0, !dbg !2956
  %42 = load ptr, ptr %name, align 8, !dbg !2956
  %call65 = call i64 @strscpy(ptr noundef %40, ptr noundef %42, i64 noundef 64) #17, !dbg !2957
  br label %if.end67, !dbg !2958

if.else66:                                        ; preds = %if.else61
  store i32 -22, ptr %retval, align 4, !dbg !2959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2959

if.end67:                                         ; preds = %if.then63
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end58
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end52
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !2960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2960

cleanup:                                          ; preds = %if.end70, %if.else66, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %devicename) #18, !dbg !2961
  call void @llvm.lifetime.end.p0(i64 8, ptr %fwnode) #18, !dbg !2961
  call void @llvm.lifetime.end.p0(i64 32, ptr %props) #18, !dbg !2961
  %43 = load i32, ptr %retval, align 4, !dbg !2961
  ret i32 %43, !dbg !2961
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @led_parse_fwnode_props(ptr noundef %dev, ptr noundef %fwnode, ptr noundef %props) #0 align 16 !dbg !2962 {
entry:
  %dev.addr = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %props.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2967, metadata !DIExpression()), !dbg !2971
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !2968, metadata !DIExpression()), !dbg !2972
  store ptr %props, ptr %props.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2974
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2970, metadata !DIExpression()), !dbg !2975
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !2976
  %tobool = icmp ne ptr %0, null, !dbg !2976
  br i1 %tobool, label %if.end, label %if.then, !dbg !2978

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2979

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !2980
  %call = call zeroext i1 @fwnode_property_present(ptr noundef %1, ptr noundef @.str.20) #17, !dbg !2982
  br i1 %call, label %if.then1, label %if.end6, !dbg !2983

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %fwnode.addr, align 8, !dbg !2984
  %3 = load ptr, ptr %props.addr, align 8, !dbg !2986
  %label = getelementptr inbounds %struct.led_properties, ptr %3, i32 0, i32 5, !dbg !2987
  %call2 = call i32 @fwnode_property_read_string(ptr noundef %2, ptr noundef @.str.20, ptr noundef %label) #17, !dbg !2988
  store i32 %call2, ptr %ret, align 4, !dbg !2989
  %4 = load i32, ptr %ret, align 4, !dbg !2990
  %tobool3 = icmp ne i32 %4, 0, !dbg !2990
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2992

if.then4:                                         ; preds = %if.then1
  br label %do.body, !dbg !2993

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !2995

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2995

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2993
  %6 = load i32, ptr %ret, align 4, !dbg !2993
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef @.str.21, i32 noundef %6) #20, !dbg !2993
  br label %if.end5, !dbg !2997

if.end5:                                          ; preds = %do.end, %if.then1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2998

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %fwnode.addr, align 8, !dbg !2999
  %call7 = call zeroext i1 @fwnode_property_present(ptr noundef %7, ptr noundef @.str.22) #17, !dbg !3001
  br i1 %call7, label %if.then8, label %if.end23, !dbg !3002

if.then8:                                         ; preds = %if.end6
  %8 = load ptr, ptr %fwnode.addr, align 8, !dbg !3003
  %9 = load ptr, ptr %props.addr, align 8, !dbg !3005
  %color = getelementptr inbounds %struct.led_properties, ptr %9, i32 0, i32 0, !dbg !3006
  %call9 = call i32 @fwnode_property_read_u32(ptr noundef %8, ptr noundef @.str.22, ptr noundef %color) #17, !dbg !3007
  store i32 %call9, ptr %ret, align 4, !dbg !3008
  %10 = load i32, ptr %ret, align 4, !dbg !3009
  %tobool10 = icmp ne i32 %10, 0, !dbg !3009
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !3011

if.then11:                                        ; preds = %if.then8
  br label %do.body12, !dbg !3012

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !3014

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3014

do.end14:                                         ; preds = %do.cond13
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !3012
  %12 = load i32, ptr %ret, align 4, !dbg !3012
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef @.str.23, i32 noundef %12) #20, !dbg !3012
  br label %if.end22, !dbg !3016

if.else:                                          ; preds = %if.then8
  %13 = load ptr, ptr %props.addr, align 8, !dbg !3017
  %color15 = getelementptr inbounds %struct.led_properties, ptr %13, i32 0, i32 0, !dbg !3019
  %14 = load i32, ptr %color15, align 8, !dbg !3019
  %cmp = icmp uge i32 %14, 15, !dbg !3020
  br i1 %cmp, label %if.then16, label %if.else20, !dbg !3021

if.then16:                                        ; preds = %if.else
  br label %do.body17, !dbg !3022

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !3024

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !3024

do.end19:                                         ; preds = %do.cond18
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !3022
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef @.str.24) #20, !dbg !3022
  br label %if.end21, !dbg !3026

if.else20:                                        ; preds = %if.else
  %16 = load ptr, ptr %props.addr, align 8, !dbg !3027
  %color_present = getelementptr inbounds %struct.led_properties, ptr %16, i32 0, i32 1, !dbg !3028
  store i8 1, ptr %color_present, align 4, !dbg !3029
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %do.end19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %do.end14
  br label %if.end23, !dbg !3030

if.end23:                                         ; preds = %if.end22, %if.end6
  %17 = load ptr, ptr %fwnode.addr, align 8, !dbg !3031
  %call24 = call zeroext i1 @fwnode_property_present(ptr noundef %17, ptr noundef @.str.25) #17, !dbg !3033
  br i1 %call24, label %if.end26, label %if.then25, !dbg !3034

if.then25:                                        ; preds = %if.end23
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3035

if.end26:                                         ; preds = %if.end23
  %18 = load ptr, ptr %fwnode.addr, align 8, !dbg !3036
  %19 = load ptr, ptr %props.addr, align 8, !dbg !3037
  %function = getelementptr inbounds %struct.led_properties, ptr %19, i32 0, i32 2, !dbg !3038
  %call27 = call i32 @fwnode_property_read_string(ptr noundef %18, ptr noundef @.str.25, ptr noundef %function) #17, !dbg !3039
  store i32 %call27, ptr %ret, align 4, !dbg !3040
  %20 = load i32, ptr %ret, align 4, !dbg !3041
  %tobool28 = icmp ne i32 %20, 0, !dbg !3041
  br i1 %tobool28, label %if.then29, label %if.end33, !dbg !3043

if.then29:                                        ; preds = %if.end26
  br label %do.body30, !dbg !3044

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !3047

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !3047

do.end32:                                         ; preds = %do.cond31
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !3044
  %22 = load i32, ptr %ret, align 4, !dbg !3044
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef @.str.26, i32 noundef %22) #20, !dbg !3044
  br label %if.end33, !dbg !3049

if.end33:                                         ; preds = %do.end32, %if.end26
  %23 = load ptr, ptr %fwnode.addr, align 8, !dbg !3050
  %call34 = call zeroext i1 @fwnode_property_present(ptr noundef %23, ptr noundef @.str.27) #17, !dbg !3052
  br i1 %call34, label %if.end36, label %if.then35, !dbg !3053

if.then35:                                        ; preds = %if.end33
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3054

if.end36:                                         ; preds = %if.end33
  %24 = load ptr, ptr %fwnode.addr, align 8, !dbg !3055
  %25 = load ptr, ptr %props.addr, align 8, !dbg !3056
  %func_enum = getelementptr inbounds %struct.led_properties, ptr %25, i32 0, i32 3, !dbg !3057
  %call37 = call i32 @fwnode_property_read_u32(ptr noundef %24, ptr noundef @.str.27, ptr noundef %func_enum) #17, !dbg !3058
  store i32 %call37, ptr %ret, align 4, !dbg !3059
  %26 = load i32, ptr %ret, align 4, !dbg !3060
  %tobool38 = icmp ne i32 %26, 0, !dbg !3060
  br i1 %tobool38, label %if.then39, label %if.else43, !dbg !3062

if.then39:                                        ; preds = %if.end36
  br label %do.body40, !dbg !3063

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !3066

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !3066

do.end42:                                         ; preds = %do.cond41
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !3063
  %28 = load i32, ptr %ret, align 4, !dbg !3063
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef @.str.28, i32 noundef %28) #20, !dbg !3063
  br label %if.end44, !dbg !3068

if.else43:                                        ; preds = %if.end36
  %29 = load ptr, ptr %props.addr, align 8, !dbg !3069
  %func_enum_present = getelementptr inbounds %struct.led_properties, ptr %29, i32 0, i32 4, !dbg !3071
  store i8 1, ptr %func_enum_present, align 4, !dbg !3072
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %do.end42
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3073
  br label %cleanup, !dbg !3073

cleanup:                                          ; preds = %if.end44, %if.then35, %if.then25, %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !3073
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3073

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3074 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3078 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3082 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_of_node(ptr noundef %fwnode) #2 align 16 !dbg !3086 {
entry:
  %fwnode.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3088, metadata !DIExpression()), !dbg !3089
  ret i1 false, !dbg !3090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_of_node(ptr noundef %fwnode) #2 align 16 !dbg !3091 {
entry:
  %fwnode.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3095, metadata !DIExpression()), !dbg !3096
  ret ptr null, !dbg !3097
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @led_init_default_state_get(ptr noundef %fwnode) #0 align 16 !dbg !3098 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #18, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3103, metadata !DIExpression()), !dbg !3106
  store ptr null, ptr %state, align 8, !dbg !3106
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3107
  %call = call i32 @fwnode_property_read_string(ptr noundef %0, ptr noundef @.str.15, ptr noundef %state) #17, !dbg !3109
  %tobool = icmp ne i32 %call, 0, !dbg !3109
  br i1 %tobool, label %if.end8, label %if.then, !dbg !3110

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %state, align 8, !dbg !3111
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.16) #17, !dbg !3114
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3114
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !3115

if.then3:                                         ; preds = %if.then
  store i32 2, ptr %retval, align 4, !dbg !3116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3116

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %state, align 8, !dbg !3117
  %call4 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.17) #17, !dbg !3119
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3119
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3120

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3121

if.end7:                                          ; preds = %if.end
  br label %if.end8, !dbg !3122

if.end8:                                          ; preds = %if.end7, %entry
  store i32 0, ptr %retval, align 4, !dbg !3123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3123

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #18, !dbg !3124
  %3 = load i32, ptr %retval, align 4, !dbg !3124
  ret i32 %3, !dbg !3124
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3125 dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3128 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3131 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3135, metadata !DIExpression()), !dbg !3137
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3136, metadata !DIExpression()), !dbg !3138
  br label %do.body, !dbg !3139

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3140

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3142
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3143
  %div = sdiv i64 %1, 64, !dbg !3143
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3144
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !3145
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3146
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3147
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3148
  ret i1 %call, !dbg !3149
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_brightness_delayed_set_brightness(ptr noundef %led_cdev, i32 noundef %value) #0 align 16 !dbg !3150 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !3152, metadata !DIExpression()), !dbg !3155
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3153, metadata !DIExpression()), !dbg !3156
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !3157
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3154, metadata !DIExpression()), !dbg !3158
  store i32 0, ptr %ret, align 4, !dbg !3158
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3159
  %1 = load i32, ptr %value.addr, align 4, !dbg !3160
  %call = call i32 @__led_set_brightness(ptr noundef %0, i32 noundef %1) #17, !dbg !3161
  store i32 %call, ptr %ret, align 4, !dbg !3162
  %2 = load i32, ptr %ret, align 4, !dbg !3163
  %cmp = icmp eq i32 %2, -524, !dbg !3165
  br i1 %cmp, label %if.then, label %if.end, !dbg !3166

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3167
  %4 = load i32, ptr %value.addr, align 4, !dbg !3168
  %call1 = call i32 @__led_set_brightness_blocking(ptr noundef %3, i32 noundef %4) #17, !dbg !3169
  store i32 %call1, ptr %ret, align 4, !dbg !3170
  br label %if.end, !dbg !3171

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %ret, align 4, !dbg !3172
  %cmp2 = icmp slt i32 %5, 0, !dbg !3174
  br i1 %cmp2, label %land.lhs.true, label %if.end11, !dbg !3175

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !3176
  %cmp3 = icmp eq i32 %6, -19, !dbg !3177
  br i1 %cmp3, label %land.lhs.true4, label %if.then10, !dbg !3178

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3179
  %flags = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 4, !dbg !3180
  %8 = load i32, ptr %flags, align 4, !dbg !3180
  %conv = sext i32 %8 to i64, !dbg !3179
  %and = and i64 %conv, 2, !dbg !3181
  %tobool = icmp ne i64 %and, 0, !dbg !3181
  br i1 %tobool, label %land.lhs.true5, label %if.then10, !dbg !3182

land.lhs.true5:                                   ; preds = %land.lhs.true4
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3183
  %flags6 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 4, !dbg !3184
  %10 = load i32, ptr %flags6, align 4, !dbg !3184
  %conv7 = sext i32 %10 to i64, !dbg !3183
  %and8 = and i64 %conv7, 524288, !dbg !3185
  %tobool9 = icmp ne i64 %and8, 0, !dbg !3185
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3186

if.then10:                                        ; preds = %land.lhs.true5, %land.lhs.true4, %land.lhs.true
  br label %do.body, !dbg !3187

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !3189

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3189

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3187
  %dev = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 12, !dbg !3187
  %12 = load ptr, ptr %dev, align 8, !dbg !3187
  %13 = load i32, ptr %ret, align 4, !dbg !3187
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef @.str.18, i32 noundef %13) #20, !dbg !3187
  br label %if.end11, !dbg !3191

if.end11:                                         ; preds = %do.end, %land.lhs.true5, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !3192
  ret void, !dbg !3192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3193 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3201, metadata !DIExpression()), !dbg !3203
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3202, metadata !DIExpression()), !dbg !3204
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3205
  %1 = load i64, ptr %size.addr, align 8, !dbg !3206
  %conv = trunc i64 %1 to i32, !dbg !3206
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !3207
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3208
  %3 = load i64, ptr %size.addr, align 8, !dbg !3208
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !3208
  ret void, !dbg !3209
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3210 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3213, metadata !DIExpression()), !dbg !3217
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3214, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !3219
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3215, metadata !DIExpression()), !dbg !3219
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3219
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3219
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #18, !dbg !3219, !srcloc !3220
  %3 = icmp ult i8 %2, 2, !dbg !3219
  call void @llvm.assume(i1 %3), !dbg !3219
  store i8 %2, ptr %c, align 1, !dbg !3219
  %4 = load i8, ptr %c, align 1, !dbg !3219, !range !2885, !noundef !419
  %tobool = trunc i8 %4 to i1, !dbg !3219
  %frombool = zext i1 %tobool to i8, !dbg !3219
  store i8 %frombool, ptr %tmp, align 1, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !3221
  %5 = load i8, ptr %tmp, align 1, !dbg !3219, !range !2885, !noundef !419
  %tobool1 = trunc i8 %5 to i1, !dbg !3219
  ret i1 %tobool1, !dbg !3222
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !3223 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3228, metadata !DIExpression()), !dbg !3230
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3229, metadata !DIExpression()), !dbg !3231
  ret i1 true, !dbg !3232
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !3233 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3238, metadata !DIExpression()), !dbg !3241
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3239, metadata !DIExpression()), !dbg !3242
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3240, metadata !DIExpression()), !dbg !3243
  ret void, !dbg !3244
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_get_brightness(ptr noundef %led_cdev) #2 align 16 !dbg !3245 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !3248, metadata !DIExpression()), !dbg !3249
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3250
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 1, !dbg !3251
  %1 = load i32, ptr %brightness, align 8, !dbg !3251
  ret i32 %1, !dbg !3252
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3253 dso_local i32 @mod_timer(ptr noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !3256 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3262, metadata !DIExpression()), !dbg !3263
  %0 = load i32, ptr %m.addr, align 4, !dbg !3264
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3266
  br i1 %1, label %if.then, label %if.else, !dbg !3267

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !3268
  %cmp = icmp slt i32 %2, 0, !dbg !3271
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3272

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !3273
  br label %return, !dbg !3273

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !3274
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #17, !dbg !3275
  store i64 %call, ptr %retval, align 8, !dbg !3276
  br label %return, !dbg !3276

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !3277
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #17, !dbg !3279
  store i64 %call2, ptr %retval, align 8, !dbg !3280
  br label %return, !dbg !3280

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !3281
  ret i64 %5, !dbg !3281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #2 align 16 !dbg !3282 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3284, metadata !DIExpression()), !dbg !3285
  %0 = load i32, ptr %m.addr, align 4, !dbg !3286
  %conv = zext i32 %0 to i64, !dbg !3286
  %add = add i64 %conv, 1, !dbg !3287
  %sub = sub i64 %add, 1, !dbg !3288
  %div = sdiv i64 %sub, 1, !dbg !3289
  ret i64 %div, !dbg !3290
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3291 dso_local i64 @__msecs_to_jiffies(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3292 dso_local i32 @timer_delete_sync(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3293 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3295, metadata !DIExpression()), !dbg !3297
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3296, metadata !DIExpression()), !dbg !3298
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3299
  %1 = load i64, ptr %size.addr, align 8, !dbg !3300
  %conv = trunc i64 %1 to i32, !dbg !3300
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !3301
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3302
  %3 = load i64, ptr %size.addr, align 8, !dbg !3302
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !3302
  ret void, !dbg !3303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3304 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3306, metadata !DIExpression()), !dbg !3308
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3307, metadata !DIExpression()), !dbg !3309
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3310
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3312
  br i1 %1, label %if.then, label %if.else, !dbg !3313

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3314
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3314
  %shr = ashr i64 %3, 3, !dbg !3314
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3314
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3316
  %and = and i64 %4, 7, !dbg !3316
  %sh_prom = trunc i64 %and to i32, !dbg !3316
  %shl = shl i32 1, %sh_prom, !dbg !3316
  %not = xor i32 %shl, -1, !dbg !3317
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #18, !dbg !3318, !srcloc !3319
  br label %if.end, !dbg !3320

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3321
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3323
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !3324, !srcloc !3325
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @led_set_software_blink(ptr noundef %led_cdev, i64 noundef %delay_on, i64 noundef %delay_off) #0 align 16 !dbg !3327 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %delay_on.addr = alloca i64, align 8
  %delay_off.addr = alloca i64, align 8
  %current_brightness = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !3329, metadata !DIExpression()), !dbg !3333
  store i64 %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !3330, metadata !DIExpression()), !dbg !3334
  store i64 %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !3331, metadata !DIExpression()), !dbg !3335
  call void @llvm.lifetime.start.p0(i64 4, ptr %current_brightness) #18, !dbg !3336
  call void @llvm.dbg.declare(metadata ptr %current_brightness, metadata !3332, metadata !DIExpression()), !dbg !3337
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3338
  %call = call i32 @led_get_brightness(ptr noundef %0) #17, !dbg !3339
  store i32 %call, ptr %current_brightness, align 4, !dbg !3340
  %1 = load i32, ptr %current_brightness, align 4, !dbg !3341
  %tobool = icmp ne i32 %1, 0, !dbg !3341
  br i1 %tobool, label %if.then, label %if.end, !dbg !3343

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %current_brightness, align 4, !dbg !3344
  %3 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3345
  %blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %3, i32 0, i32 19, !dbg !3346
  store i32 %2, ptr %blink_brightness, align 8, !dbg !3347
  br label %if.end, !dbg !3345

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3348
  %blink_brightness1 = getelementptr inbounds %struct.led_classdev, ptr %4, i32 0, i32 19, !dbg !3350
  %5 = load i32, ptr %blink_brightness1, align 8, !dbg !3350
  %tobool2 = icmp ne i32 %5, 0, !dbg !3348
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3351

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3352
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 2, !dbg !3353
  %7 = load i32, ptr %max_brightness, align 4, !dbg !3353
  %8 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3354
  %blink_brightness4 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 19, !dbg !3355
  store i32 %7, ptr %blink_brightness4, align 8, !dbg !3356
  br label %if.end5, !dbg !3354

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load i64, ptr %delay_on.addr, align 8, !dbg !3357
  %10 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3358
  %blink_delay_on = getelementptr inbounds %struct.led_classdev, ptr %10, i32 0, i32 16, !dbg !3359
  store i64 %9, ptr %blink_delay_on, align 8, !dbg !3360
  %11 = load i64, ptr %delay_off.addr, align 8, !dbg !3361
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3362
  %blink_delay_off = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 17, !dbg !3363
  store i64 %11, ptr %blink_delay_off, align 8, !dbg !3364
  %13 = load i64, ptr %delay_on.addr, align 8, !dbg !3365
  %tobool6 = icmp ne i64 %13, 0, !dbg !3365
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3367

if.then7:                                         ; preds = %if.end5
  %14 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3368
  call void @led_set_brightness_nosleep(ptr noundef %14, i32 noundef 0) #17, !dbg !3370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3371

if.end8:                                          ; preds = %if.end5
  %15 = load i64, ptr %delay_off.addr, align 8, !dbg !3372
  %tobool9 = icmp ne i64 %15, 0, !dbg !3372
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !3374

if.then10:                                        ; preds = %if.end8
  %16 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3375
  %17 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3377
  %blink_brightness11 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 19, !dbg !3378
  %18 = load i32, ptr %blink_brightness11, align 8, !dbg !3378
  call void @led_set_brightness_nosleep(ptr noundef %16, i32 noundef %18) #17, !dbg !3379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3380

if.end12:                                         ; preds = %if.end8
  %19 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3381
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %19, i32 0, i32 5, !dbg !3382
  call void @set_bit(i64 noundef 0, ptr noundef %work_flags) #17, !dbg !3383
  %20 = load ptr, ptr %led_cdev.addr, align 8, !dbg !3384
  %blink_timer = getelementptr inbounds %struct.led_classdev, ptr %20, i32 0, i32 18, !dbg !3385
  %21 = load volatile i64, ptr @jiffies, align 64, !dbg !3386
  %add = add i64 %21, 1, !dbg !3387
  %call13 = call i32 @mod_timer(ptr noundef %blink_timer, i64 noundef %add) #17, !dbg !3388
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3389
  br label %cleanup, !dbg !3389

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %current_brightness) #18, !dbg !3389
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3389

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3390 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3392, metadata !DIExpression()), !dbg !3394
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3393, metadata !DIExpression()), !dbg !3395
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3396
  %1 = load i64, ptr %size.addr, align 8, !dbg !3397
  %conv = trunc i64 %1 to i32, !dbg !3397
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !3398
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3399
  %3 = load i64, ptr %size.addr, align 8, !dbg !3399
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !3399
  ret void, !dbg !3400
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3401 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3403, metadata !DIExpression()), !dbg !3405
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3404, metadata !DIExpression()), !dbg !3406
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3407
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3408
  br i1 %1, label %cond.true, label %cond.false, !dbg !3408

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3409
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3410
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3411
  %conv = zext i1 %call to i32, !dbg !3411
  br label %cond.end, !dbg !3408

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3412
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3413
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !3414
  %conv2 = zext i1 %call1 to i32, !dbg !3414
  br label %cond.end, !dbg !3408

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3408
  %tobool = icmp ne i32 %cond, 0, !dbg !3408
  ret i1 %tobool, !dbg !3415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !3416 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3418, metadata !DIExpression()), !dbg !3420
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3419, metadata !DIExpression()), !dbg !3421
  ret i1 true, !dbg !3422
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3423 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3427, metadata !DIExpression()), !dbg !3429
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3428, metadata !DIExpression()), !dbg !3430
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3431
  %and = and i64 %0, 63, !dbg !3432
  %shl = shl i64 1, %and, !dbg !3433
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3434
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3435
  %shr = ashr i64 %2, 6, !dbg !3436
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3434
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3434
  %and1 = and i64 %shl, %3, !dbg !3437
  %cmp = icmp ne i64 %and1, 0, !dbg !3438
  ret i1 %cmp, !dbg !3439
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3440 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3442, metadata !DIExpression()), !dbg !3445
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3443, metadata !DIExpression()), !dbg !3446
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !3447
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3444, metadata !DIExpression()), !dbg !3448
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3449
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3450
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !3451, !srcloc !3452
  %3 = icmp ult i8 %2, 2, !dbg !3451
  call void @llvm.assume(i1 %3), !dbg !3451
  store i8 %2, ptr %oldbit, align 1, !dbg !3451
  %4 = load i8, ptr %oldbit, align 1, !dbg !3453, !range !2885, !noundef !419
  %tobool = trunc i8 %4 to i1, !dbg !3453
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !3454
  ret i1 %tobool, !dbg !3455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed_lockless(ptr noundef %h) #2 align 16 !dbg !3456 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3462, metadata !DIExpression()), !dbg !3463
  br label %do.body, !dbg !3464

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3466

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3464
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !3464
  %1 = load volatile ptr, ptr %pprev, align 8, !dbg !3464
  store ptr %1, ptr %tmp, align 8, !dbg !3466
  %2 = load ptr, ptr %tmp, align 8, !dbg !3464
  %tobool = icmp ne ptr %2, null, !dbg !3468
  %lnot = xor i1 %tobool, true, !dbg !3468
  %lnot.ext = zext i1 %lnot to i32, !dbg !3468
  ret i32 %lnot.ext, !dbg !3469
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3470 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3472, metadata !DIExpression()), !dbg !3474
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3473, metadata !DIExpression()), !dbg !3475
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3476
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3478
  br i1 %1, label %if.then, label %if.else, !dbg !3479

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3480
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3480
  %shr = ashr i64 %3, 3, !dbg !3480
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3480
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3482
  %and = and i64 %4, 7, !dbg !3482
  %sh_prom = trunc i64 %and to i32, !dbg !3482
  %shl = shl i32 1, %sh_prom, !dbg !3482
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #18, !dbg !3483, !srcloc !3484
  br label %if.end, !dbg !3485

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3486
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3488
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !3489, !srcloc !3490
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #2 align 16 !dbg !3492 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !3496, metadata !DIExpression()), !dbg !3498
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3497, metadata !DIExpression()), !dbg !3499
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !3500
  %1 = load ptr, ptr %work.addr, align 8, !dbg !3501
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #17, !dbg !3502
  ret i1 %call, !dbg !3503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3504 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !3507 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3509, metadata !DIExpression()), !dbg !3513
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3510, metadata !DIExpression()), !dbg !3514
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3511, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !3512, metadata !DIExpression()), !dbg !3517
  %0 = load i64, ptr %n.addr, align 8, !dbg !3518
  %1 = load i64, ptr %size.addr, align 8, !dbg !3518
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !3518
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !3518
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !3518
  store i64 %4, ptr %bytes, align 8, !dbg !3518
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !3518
  %lnot = xor i1 %call, true, !dbg !3518
  %lnot1 = xor i1 %lnot, true, !dbg !3518
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3518
  %conv = sext i32 %lnot.ext to i64, !dbg !3518
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3518
  %tobool = icmp ne i64 %expval, 0, !dbg !3518
  br i1 %tobool, label %if.then, label %if.end, !dbg !3520

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3521

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3522
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !3524
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !3525

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !3526
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3527
  br i1 %8, label %if.then2, label %if.end4, !dbg !3528

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !3529
  %10 = load i32, ptr %flags.addr, align 4, !dbg !3530
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #21, !dbg !3531
  store ptr %call3, ptr %retval, align 8, !dbg !3532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3532

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !3533
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3534
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #21, !dbg !3535
  store ptr %call5, ptr %retval, align 8, !dbg !3536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3536

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !3537
  %13 = load ptr, ptr %retval, align 8, !dbg !3537
  ret ptr %13, !dbg !3537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #2 align 16 !dbg !3538 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !3543, metadata !DIExpression()), !dbg !3544
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !3545, !range !2885, !noundef !419
  %tobool = trunc i8 %0 to i1, !dbg !3545
  %lnot = xor i1 %tobool, true, !dbg !3545
  %lnot1 = xor i1 %lnot, true, !dbg !3545
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3545
  %conv = sext i32 %lnot.ext to i64, !dbg !3545
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3545
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3545
  ret i1 %tobool2, !dbg !3546
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !3547 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3551, metadata !DIExpression()), !dbg !3556
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3552, metadata !DIExpression()), !dbg !3557
  %0 = load i64, ptr %size.addr, align 8, !dbg !3558
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3559
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3560

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3561
  %tobool = icmp ne i64 %2, 0, !dbg !3561
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3562

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !3563
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3553, metadata !DIExpression()), !dbg !3564
  %3 = load i64, ptr %size.addr, align 8, !dbg !3565
  %cmp = icmp ugt i64 %3, 8192, !dbg !3567
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3568

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3569
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3570
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !3571
  store ptr %call, ptr %retval, align 8, !dbg !3572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3572

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3573
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !3573
  store i32 %call2, ptr %index, align 4, !dbg !3574
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3575
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3576
  %9 = ptrtoint ptr %8 to i64, !dbg !3576
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !3577
  %idxprom = zext i32 %call3 to i64, !dbg !3578
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3578
  %10 = load i32, ptr %index, align 4, !dbg !3579
  %idxprom4 = zext i32 %10 to i64, !dbg !3578
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3578
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3578
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3580
  %13 = load i64, ptr %size.addr, align 8, !dbg !3581
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !3582
  store ptr %call6, ptr %retval, align 8, !dbg !3583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3583

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !3584
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3585
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3586
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !3587
  store ptr %call8, ptr %retval, align 8, !dbg !3588
  br label %return, !dbg !3588

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3589
  ret ptr %16, !dbg !3589
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3590 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3591 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !3592 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3596, metadata !DIExpression()), !dbg !3598
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3597, metadata !DIExpression()), !dbg !3599
  %0 = load i64, ptr %size.addr, align 8, !dbg !3600
  %tobool = icmp ne i64 %0, 0, !dbg !3600
  br i1 %tobool, label %if.end, label %if.then, !dbg !3602

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3603
  br label %return, !dbg !3603

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3604
  %cmp = icmp ule i64 %1, 8, !dbg !3606
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3607

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3608
  br label %return, !dbg !3608

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3609
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3611
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3612

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3613
  %cmp4 = icmp ule i64 %3, 96, !dbg !3614
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3615

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3616
  br label %return, !dbg !3616

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3617
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3619
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3620

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3621
  %cmp9 = icmp ule i64 %5, 192, !dbg !3622
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3623

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3624
  br label %return, !dbg !3624

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3625
  %cmp12 = icmp ule i64 %6, 8, !dbg !3627
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3628

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3629
  br label %return, !dbg !3629

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3630
  %cmp15 = icmp ule i64 %7, 16, !dbg !3632
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3633

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3634
  br label %return, !dbg !3634

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3635
  %cmp18 = icmp ule i64 %8, 32, !dbg !3637
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3638

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3639
  br label %return, !dbg !3639

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3640
  %cmp21 = icmp ule i64 %9, 64, !dbg !3642
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3643

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3644
  br label %return, !dbg !3644

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3645
  %cmp24 = icmp ule i64 %10, 128, !dbg !3647
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3648

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3649
  br label %return, !dbg !3649

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3650
  %cmp27 = icmp ule i64 %11, 256, !dbg !3652
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3653

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3654
  br label %return, !dbg !3654

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3655
  %cmp30 = icmp ule i64 %12, 512, !dbg !3657
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3658

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3659
  br label %return, !dbg !3659

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3660
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3662
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3663

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3664
  br label %return, !dbg !3664

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3665
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3667
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3668

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3669
  br label %return, !dbg !3669

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3670
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3672
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3673

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3674
  br label %return, !dbg !3674

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3675
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3677
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3678

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3679
  br label %return, !dbg !3679

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3680
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3682
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3683

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3684
  br label %return, !dbg !3684

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3685
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3687
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3688

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3689
  br label %return, !dbg !3689

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3690
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3692
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3693

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3694
  br label %return, !dbg !3694

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3695
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3697
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3698

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3699
  br label %return, !dbg !3699

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3700
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3702
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3703

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3704
  br label %return, !dbg !3704

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3705
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3707
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3708

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3709
  br label %return, !dbg !3709

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3710
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3712
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3713

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3714
  br label %return, !dbg !3714

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3715
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3717
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3718

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3719
  br label %return, !dbg !3719

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3720, !range !2885, !noundef !419
  %tobool69 = trunc i8 %25 to i1, !dbg !3720
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3722

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3723

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #23, !dbg !3724, !srcloc !3727
  unreachable, !dbg !3724

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3728

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3729

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3730

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3732

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3730

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, i32 480, i32 0, i64 12) #18, !dbg !3734, !srcloc !3736
  br label %do.end75, !dbg !3734

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3730

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3737
  br label %return, !dbg !3737

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3738
  ret i32 %26, !dbg !3738
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3739 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !3745 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3749, metadata !DIExpression()), !dbg !3751
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3750, metadata !DIExpression()), !dbg !3752
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3753
  %and = and i32 %0, 17, !dbg !3753
  %cmp = icmp eq i32 %and, 0, !dbg !3753
  %lnot = xor i1 %cmp, true, !dbg !3753
  %lnot1 = xor i1 %lnot, true, !dbg !3753
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3753
  %conv = sext i32 %lnot.ext to i64, !dbg !3753
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3753
  %tobool = icmp ne i64 %expval, 0, !dbg !3753
  br i1 %tobool, label %if.then, label %if.end, !dbg !3755

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3756
  br label %return, !dbg !3756

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3757
  %and2 = and i32 %1, 1, !dbg !3759
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3759
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3760

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3761
  br label %return, !dbg !3761

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3762
  br label %return, !dbg !3762

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3764
  ret i32 %2, !dbg !3764
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3765 dso_local void @__compiletime_assert_204() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3766 dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fwnode_property_read_u32(ptr noundef %fwnode, ptr noundef %propname, ptr noundef %val) #2 align 16 !dbg !3767 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3771, metadata !DIExpression()), !dbg !3774
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3772, metadata !DIExpression()), !dbg !3775
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3773, metadata !DIExpression()), !dbg !3776
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3777
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !3778
  %2 = load ptr, ptr %val.addr, align 8, !dbg !3779
  %call = call i32 @fwnode_property_read_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 1) #17, !dbg !3780
  ret i32 %call, !dbg !3781
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021}
!llvm.ident = !{!2022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "leds_list_lock", scope: !2, file: !3, line: 22, type: !463, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/leds/.led-core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/leds/led-core\22 -D KBUILD_BASENAME=\22led_core\22 -D KBUILD_MODNAME=\22led_core\22 -D __KBUILD_MODNAME=kmod_led_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/leds/led-core.ll drivers/leds/led-core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !137, globals: !1857, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/leds/led-core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fa717405357307ea60375235b0d0461")
!4 = !{!5, !13, !19, !26, !32, !39, !44, !52, !60, !66, !75, !80, !85, !91, !117, !122, !127}
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 30, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!94 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!95 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!96 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!97 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!98 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!99 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!100 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!101 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!102 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!103 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!104 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!105 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!106 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!107 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!108 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!109 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!110 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!111 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!112 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!113 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!114 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!115 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!116 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_default_state", file: !6, line: 40, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "LEDS_DEFSTATE_OFF", value: 0)
!120 = !DIEnumerator(name: "LEDS_DEFSTATE_ON", value: 1)
!121 = !DIEnumerator(name: "LEDS_DEFSTATE_KEEP", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 10, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "false", value: 0)
!126 = !DIEnumerator(name: "true", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !128, line: 364, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!129 = !{!130, !131, !132, !133, !134, !135, !136}
!130 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!131 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!132 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!133 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!134 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!135 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!136 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!137 = !{!138, !139, !140, !142, !144, !145, !152, !53, !320, !1850, !1852, !180, !1854}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !141, line: 42, baseType: !139)
!141 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !141, line: 154, baseType: !7)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !141, line: 190, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !141, line: 191, baseType: !147, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !141, line: 191, baseType: !147, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !6, line: 99, size: 3264, elements: !154)
!154 = !{!155, !159, !160, !161, !162, !163, !164, !168, !172, !176, !181, !194, !198, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1809, !1810, !1811, !1812, !1813, !1814, !1831, !1832, !1833, !1834, !1835, !1836, !1840, !1841, !1845, !1849}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !6, line: 100, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !153, file: !6, line: 101, baseType: !7, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !153, file: !6, line: 102, baseType: !7, size: 32, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !153, file: !6, line: 103, baseType: !7, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !6, line: 104, baseType: !53, size: 32, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !153, file: !6, line: 120, baseType: !139, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !153, file: !6, line: 137, baseType: !165, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !152, !5}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !153, file: !6, line: 143, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!53, !152, !5}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !153, file: !6, line: 146, baseType: !173, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!5, !152}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !153, file: !6, line: 160, baseType: !177, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!53, !152, !180, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !153, file: !6, line: 164, baseType: !182, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!53, !152, !185, !189, !53}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !6, line: 713, size: 64, elements: !187)
!187 = !{!188, !193}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !186, file: !6, line: 714, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !190, line: 21, baseType: !191)
!190 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !192, line: 27, baseType: !7)
!192 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !186, file: !6, line: 715, baseType: !53, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !153, file: !6, line: 166, baseType: !195, size: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!53, !152}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !153, file: !6, line: 168, baseType: !199, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !33, line: 705, size: 5824, elements: !201)
!201 = !{!202, !857, !858, !861, !862, !915, !1380, !1381, !1382, !1383, !1384, !1391, !1561, !1574, !1584, !1588, !1590, !1591, !1592, !1596, !1603, !1604, !1607, !1610, !1736, !1737, !1738, !1741, !1742, !1743, !1744, !1774, !1775, !1776, !1779, !1782, !1791, !1792, !1793, !1794, !1795, !1796}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !200, file: !33, line: 706, baseType: !203, size: 512)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !204, line: 64, size: 512, elements: !205)
!204 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!205 = !{!206, !207, !208, !210, !297, !728, !842, !852, !853, !854, !855, !856}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !204, line: 65, baseType: !156, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !203, file: !204, line: 66, baseType: !148, size: 128, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !204, line: 67, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !203, file: !204, line: 68, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !204, line: 168, size: 768, elements: !213)
!213 = !{!214, !215, !256, !257}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !204, line: 169, baseType: !148, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !212, file: !204, line: 170, baseType: !216, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !217, line: 29, baseType: !218)
!217 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !217, line: 17, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 18, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 18, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !221, file: !217, line: 19, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !225, line: 14, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !224, file: !225, line: 15, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !229, line: 44, baseType: !230)
!229 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !229, line: 14, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 15, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 15, size: 32, elements: !234)
!234 = !{!235, !240, !248}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !233, file: !229, line: 16, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !141, line: 174, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 172, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !237, file: !141, line: 173, baseType: !53, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 24, baseType: !241, size: 16)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 24, size: 16, elements: !242)
!242 = !{!243, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !241, file: !229, line: 25, baseType: !244, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !190, line: 17, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !192, line: 21, baseType: !246)
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !241, file: !229, line: 26, baseType: !244, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 28, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 28, size: 32, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !249, file: !229, line: 29, baseType: !252, size: 16)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !190, line: 19, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !192, line: 24, baseType: !254)
!254 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !249, file: !229, line: 30, baseType: !252, size: 16, offset: 16)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !204, line: 171, baseType: !203, size: 512, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !212, file: !204, line: 172, baseType: !258, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !204, line: 133, size: 192, elements: !261)
!261 = !{!262, !269, !274}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !260, file: !204, line: 134, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!53, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !204, line: 135, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!156, !267}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !260, file: !204, line: 136, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!53, !267, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !204, line: 125, size: 20736, elements: !281)
!281 = !{!282, !287, !291, !292, !296}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !280, file: !204, line: 126, baseType: !283, size: 192)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 192, elements: !285)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!285 = !{!286}
!286 = !DISubrange(count: 3)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !280, file: !204, line: 127, baseType: !288, size: 4096, offset: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 4096, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !280, file: !204, line: 128, baseType: !53, size: 32, offset: 4288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !280, file: !204, line: 129, baseType: !293, size: 16384, offset: 4320)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 16384, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 2048)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !280, file: !204, line: 130, baseType: !53, size: 32, offset: 20704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !203, file: !204, line: 69, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !204, line: 116, size: 384, elements: !301)
!301 = !{!302, !306, !334, !675, !706, !710}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !300, file: !204, line: 117, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !209}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !300, file: !204, line: 118, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !310, line: 254, size: 128, elements: !311)
!310 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!311 = !{!312, !327}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !309, file: !310, line: 255, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !209, !321, !284}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !141, line: 66, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !318, line: 73, baseType: !319)
!318 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !318, line: 15, baseType: !320)
!320 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !310, line: 30, size: 128, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !310, line: 31, baseType: !156, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !322, file: !310, line: 32, baseType: !326, size: 16, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !141, line: 24, baseType: !254)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !309, file: !310, line: 256, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!316, !209, !321, !156, !331}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 61, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !318, line: 72, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !318, line: 16, baseType: !139)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !300, file: !204, line: 119, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !310, line: 84, size: 320, elements: !339)
!339 = !{!340, !341, !345, !671, !673}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !310, line: 85, baseType: !156, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !338, file: !310, line: 86, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!326, !209, !321, !53}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !338, file: !310, line: 88, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!326, !209, !349, !53}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !310, line: 175, size: 512, elements: !351)
!351 = !{!352, !353, !354, !355, !362, !372, !373}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !350, file: !310, line: 176, baseType: !322, size: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !350, file: !310, line: 177, baseType: !331, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !350, file: !310, line: 178, baseType: !138, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !350, file: !310, line: 179, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !361, line: 32, flags: DIFlagFwdDecl)
!361 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!362 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !350, file: !310, line: 180, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!316, !366, !209, !349, !284, !369, !331}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !368, line: 537, flags: DIFlagFwdDecl)
!368 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !141, line: 52, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !318, line: 88, baseType: !371)
!371 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !350, file: !310, line: 182, baseType: !363, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !350, file: !310, line: 184, baseType: !374, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!53, !366, !209, !349, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !361, line: 625, size: 1344, elements: !379)
!379 = !{!380, !397, !619, !625, !632, !633, !638, !641, !653, !654, !657, !661, !662, !663, !664, !665, !669}
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !361, line: 628, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !361, line: 628, size: 128, elements: !382)
!382 = !{!383, !388}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !361, line: 629, baseType: !384, size: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !361, line: 629, size: 128, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !384, file: !361, line: 631, baseType: !139, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !384, file: !361, line: 632, baseType: !139, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !381, file: !361, line: 635, baseType: !389, size: 128, align: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !141, line: 232, size: 128, align: 64, elements: !390)
!390 = !{!391, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !141, line: 233, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !389, file: !141, line: 234, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !392}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !378, file: !361, line: 639, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !361, line: 733, size: 10240, elements: !400)
!400 = !{!401, !615}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !361, line: 734, baseType: !402, size: 10240)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !361, line: 734, size: 10240, elements: !403)
!403 = !{!404, !408, !422, !426, !427, !428, !429, !430, !431, !439, !440, !441, !450, !451, !460, !461, !462, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !509, !523, !526, !581, !582, !583, !586, !590, !591, !594, !595, !596, !603, !604}
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !361, line: 739, baseType: !405, size: 512, align: 512)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !361, line: 739, size: 512, align: 512, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !405, file: !361, line: 747, baseType: !236, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !402, file: !361, line: 750, baseType: !409, size: 128, offset: 512)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !410, line: 218, size: 128, elements: !411)
!410 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!411 = !{!412, !420, !421}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !410, line: 219, baseType: !413, size: 32)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !410, line: 219, size: 32, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !413, file: !410, line: 220, baseType: !216, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !413, file: !410, line: 221, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !410, line: 197, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 197, elements: !419)
!419 = !{}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !409, file: !410, line: 223, baseType: !7, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !409, file: !410, line: 224, baseType: !138, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !402, file: !361, line: 752, baseType: !423, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!139, !366, !139, !139, !139, !139}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !402, file: !361, line: 756, baseType: !139, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !402, file: !361, line: 757, baseType: !139, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !402, file: !361, line: 760, baseType: !139, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !402, file: !361, line: 761, baseType: !139, size: 64, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !402, file: !361, line: 763, baseType: !139, size: 64, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !402, file: !361, line: 764, baseType: !432, size: 64, offset: 1024)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !368, line: 299, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 299, size: 64, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !434, file: !368, line: 299, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !438, line: 18, baseType: !139)
!438 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!439 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !402, file: !361, line: 773, baseType: !236, size: 32, offset: 1088)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !402, file: !361, line: 785, baseType: !236, size: 32, offset: 1120)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !402, file: !361, line: 795, baseType: !442, size: 64, offset: 1152)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !361, line: 726, size: 128, elements: !444)
!444 = !{!445, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !443, file: !361, line: 727, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !190, line: 23, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !192, line: 31, baseType: !448)
!448 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !443, file: !361, line: 728, baseType: !53, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !402, file: !361, line: 801, baseType: !139, size: 64, offset: 1216)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !402, file: !361, line: 804, baseType: !452, size: 64, offset: 1280)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !453, line: 13, baseType: !454)
!453 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !141, line: 181, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 179, size: 64, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !455, file: !141, line: 180, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !190, line: 22, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !192, line: 30, baseType: !371)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !402, file: !361, line: 806, baseType: !53, size: 32, offset: 1344)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !402, file: !361, line: 808, baseType: !216, size: 32, offset: 1376)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !402, file: !361, line: 823, baseType: !463, size: 320, offset: 1408)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !464, line: 48, size: 320, elements: !465)
!464 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!465 = !{!466, !467, !468, !473, !475}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !463, file: !464, line: 49, baseType: !452, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !463, file: !464, line: 55, baseType: !452, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !463, file: !464, line: 57, baseType: !469, size: 32, offset: 128)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !470, line: 15, size: 32, elements: !471)
!470 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !469, file: !470, line: 20, baseType: !236, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !463, file: !464, line: 59, baseType: !474, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !225, line: 23, baseType: !224)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !463, file: !464, line: 60, baseType: !148, size: 128, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !402, file: !361, line: 825, baseType: !148, size: 128, offset: 1728)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !402, file: !361, line: 845, baseType: !53, size: 32, offset: 1856)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !402, file: !361, line: 849, baseType: !139, size: 64, offset: 1920)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !402, file: !361, line: 850, baseType: !139, size: 64, offset: 1984)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !402, file: !361, line: 852, baseType: !139, size: 64, offset: 2048)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !402, file: !361, line: 853, baseType: !139, size: 64, offset: 2112)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !402, file: !361, line: 854, baseType: !454, size: 64, offset: 2176)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !402, file: !361, line: 855, baseType: !139, size: 64, offset: 2240)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !402, file: !361, line: 856, baseType: !139, size: 64, offset: 2304)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !402, file: !361, line: 857, baseType: !139, size: 64, offset: 2368)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !402, file: !361, line: 858, baseType: !139, size: 64, offset: 2432)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !402, file: !361, line: 865, baseType: !488, size: 32, offset: 2496)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !489, line: 69, baseType: !490)
!489 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !489, line: 64, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !490, file: !489, line: 65, baseType: !7, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !402, file: !361, line: 867, baseType: !216, size: 32, offset: 2528)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !402, file: !361, line: 869, baseType: !139, size: 64, offset: 2560)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !402, file: !361, line: 869, baseType: !139, size: 64, offset: 2624)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !402, file: !361, line: 869, baseType: !139, size: 64, offset: 2688)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !402, file: !361, line: 869, baseType: !139, size: 64, offset: 2752)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !402, file: !361, line: 870, baseType: !139, size: 64, offset: 2816)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !402, file: !361, line: 870, baseType: !139, size: 64, offset: 2880)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !402, file: !361, line: 870, baseType: !139, size: 64, offset: 2944)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !402, file: !361, line: 871, baseType: !139, size: 64, offset: 3008)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !402, file: !361, line: 871, baseType: !139, size: 64, offset: 3072)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !402, file: !361, line: 871, baseType: !139, size: 64, offset: 3136)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !402, file: !361, line: 871, baseType: !139, size: 64, offset: 3200)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !402, file: !361, line: 873, baseType: !506, size: 3328, offset: 3264)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 3328, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 52)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !402, file: !361, line: 875, baseType: !510, size: 1280, offset: 6592)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 1280, elements: !521)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !512, line: 22, size: 320, elements: !513)
!512 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!513 = !{!514, !515, !516, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !511, file: !512, line: 23, baseType: !474, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !512, line: 24, baseType: !458, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !511, file: !512, line: 26, baseType: !148, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !511, file: !512, line: 28, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !190, line: 20, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !192, line: 26, baseType: !53)
!521 = !{!522}
!522 = !DISubrange(count: 4)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !402, file: !361, line: 877, baseType: !524, size: 64, offset: 7872)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !361, line: 877, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !402, file: !361, line: 880, baseType: !527, size: 1088, offset: 7936)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !528, line: 72, baseType: !529)
!528 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 23, size: 1088, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !538, !539, !547, !548, !575, !576, !577}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !529, file: !528, line: 28, baseType: !446, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !529, file: !528, line: 38, baseType: !454, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !529, file: !528, line: 40, baseType: !139, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !529, file: !528, line: 43, baseType: !463, size: 320, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !529, file: !528, line: 44, baseType: !536, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !528, line: 44, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !528, line: 48, baseType: !139, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !529, file: !528, line: 59, baseType: !540, size: 256, offset: 640)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !541, line: 66, size: 256, elements: !542)
!541 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!542 = !{!543, !544, !545, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !540, file: !541, line: 67, baseType: !452, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !540, file: !541, line: 68, baseType: !474, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !540, file: !541, line: 70, baseType: !469, size: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !540, file: !541, line: 72, baseType: !148, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !529, file: !528, line: 60, baseType: !138, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !529, file: !528, line: 61, baseType: !549, size: 64, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !552, line: 13, size: 1216, elements: !553)
!552 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!553 = !{!554, !555, !556, !557, !558, !559, !560, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !551, file: !552, line: 14, baseType: !138, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !551, file: !552, line: 15, baseType: !139, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !551, file: !552, line: 17, baseType: !139, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !551, file: !552, line: 17, baseType: !139, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !551, file: !552, line: 18, baseType: !139, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !551, file: !552, line: 18, baseType: !139, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !551, file: !552, line: 19, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !551, file: !552, line: 21, baseType: !320, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !551, file: !552, line: 23, baseType: !320, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !551, file: !552, line: 24, baseType: !320, size: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !551, file: !552, line: 25, baseType: !320, size: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !551, file: !552, line: 26, baseType: !320, size: 64, offset: 704)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !551, file: !552, line: 27, baseType: !320, size: 64, offset: 768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !551, file: !552, line: 28, baseType: !320, size: 64, offset: 832)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !551, file: !552, line: 29, baseType: !320, size: 64, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !551, file: !552, line: 30, baseType: !320, size: 64, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !551, file: !552, line: 31, baseType: !320, size: 64, offset: 1024)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !551, file: !552, line: 32, baseType: !320, size: 64, offset: 1088)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !551, file: !552, line: 33, baseType: !320, size: 64, offset: 1152)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !529, file: !528, line: 63, baseType: !236, size: 32, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !529, file: !528, line: 69, baseType: !252, size: 16, offset: 1056)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !529, file: !528, line: 70, baseType: !578, size: 16, offset: 1072)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !190, line: 18, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !192, line: 23, baseType: !580)
!580 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !402, file: !361, line: 882, baseType: !139, size: 64, offset: 9024)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !402, file: !361, line: 885, baseType: !216, size: 32, offset: 9088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !402, file: !361, line: 886, baseType: !584, size: 64, offset: 9152)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !361, line: 732, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !402, file: !361, line: 901, baseType: !587, size: 64, offset: 9216)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !589, line: 18, flags: DIFlagFwdDecl)
!589 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!590 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !402, file: !361, line: 904, baseType: !366, size: 64, offset: 9280)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !402, file: !361, line: 906, baseType: !592, size: 64, offset: 9344)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !361, line: 906, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !402, file: !361, line: 930, baseType: !236, size: 32, offset: 9408)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !402, file: !361, line: 933, baseType: !236, size: 32, offset: 9440)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !402, file: !361, line: 935, baseType: !597, size: 64, offset: 9472)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !598, line: 103, size: 64, elements: !599)
!598 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !597, file: !598, line: 104, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !598, line: 101, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !402, file: !361, line: 940, baseType: !452, size: 64, offset: 9536)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !402, file: !361, line: 942, baseType: !605, size: 256, offset: 9600)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !92, line: 98, size: 256, elements: !606)
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !605, file: !92, line: 99, baseType: !452, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !605, file: !92, line: 100, baseType: !148, size: 128, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !605, file: !92, line: 101, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !92, line: 21, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !399, file: !361, line: 986, baseType: !616, offset: 10240)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: -1)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !378, file: !361, line: 640, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !368, line: 297, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !368, line: 297, size: 64, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !621, file: !368, line: 297, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !438, line: 19, baseType: !139)
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !361, line: 646, baseType: !626, size: 64, offset: 256)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !361, line: 646, size: 64, elements: !627)
!627 = !{!628, !631}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !626, file: !361, line: 647, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !361, line: 542, baseType: !139)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !626, file: !361, line: 648, baseType: !630, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !378, file: !361, line: 666, baseType: !53, size: 32, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !378, file: !361, line: 667, baseType: !634, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !361, line: 579, size: 320, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !635, file: !361, line: 580, baseType: !463, size: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !378, file: !361, line: 670, baseType: !639, size: 8, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !141, line: 35, baseType: !640)
!640 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !378, file: !361, line: 681, baseType: !642, size: 256, offset: 512)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !361, line: 678, size: 256, elements: !643)
!643 = !{!644, !652}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !642, file: !361, line: 679, baseType: !645, size: 192, align: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !646, line: 5, size: 192, align: 64, elements: !647)
!646 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!647 = !{!648, !649, !651}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !645, file: !646, line: 6, baseType: !139, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !645, file: !646, line: 7, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !645, file: !646, line: 8, baseType: !650, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !642, file: !361, line: 680, baseType: !139, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !378, file: !361, line: 689, baseType: !148, size: 128, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !378, file: !361, line: 691, baseType: !655, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !361, line: 691, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !378, file: !361, line: 694, baseType: !658, size: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !361, line: 694, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !378, file: !361, line: 697, baseType: !139, size: 64, offset: 1024)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !378, file: !361, line: 699, baseType: !366, size: 64, offset: 1088)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !378, file: !361, line: 700, baseType: !138, size: 64, offset: 1152)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !378, file: !361, line: 711, baseType: !452, size: 64, offset: 1216)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !378, file: !361, line: 717, baseType: !666, size: 64, offset: 1280)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !668, line: 54, flags: DIFlagFwdDecl)
!668 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !378, file: !361, line: 722, baseType: !670, offset: 1344)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !361, line: 570, elements: !419)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !338, file: !310, line: 90, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !338, file: !310, line: 91, baseType: !674, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !300, file: !204, line: 120, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!679, !267}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !682)
!682 = !{!683, !684, !688, !692, !698, !702}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !14, line: 40, baseType: !13, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !681, file: !14, line: 41, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!639}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !681, file: !14, line: 42, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!138}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !681, file: !14, line: 43, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!561, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !681, file: !14, line: 44, baseType: !699, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!561}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !681, file: !14, line: 45, baseType: !703, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !138}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !300, file: !204, line: 121, baseType: !707, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!561, !267}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !300, file: !204, line: 122, baseType: !711, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !267, !714, !721}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !589, line: 23, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 21, size: 32, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !716, file: !589, line: 22, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !141, line: 37, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !318, line: 49, baseType: !7)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !589, line: 28, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 26, size: 32, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !723, file: !589, line: 27, baseType: !726, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !141, line: 38, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !318, line: 50, baseType: !7)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !203, file: !204, line: 70, baseType: !729, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !731, line: 190, size: 1152, elements: !732)
!731 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !834, !835, !836, !837, !838, !841}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !730, file: !731, line: 191, baseType: !236, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !730, file: !731, line: 192, baseType: !236, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !730, file: !731, line: 202, baseType: !729, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !730, file: !731, line: 203, baseType: !156, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !730, file: !731, line: 205, baseType: !645, size: 192, align: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !730, file: !731, line: 207, baseType: !561, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !730, file: !731, line: 208, baseType: !7, size: 32, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !731, line: 209, baseType: !741, size: 256, offset: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !730, file: !731, line: 209, size: 256, elements: !742)
!742 = !{!743, !755, !759}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !741, file: !731, line: 210, baseType: !744, size: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !731, line: 153, size: 256, elements: !745)
!745 = !{!746, !747, !751, !754}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !744, file: !731, line: 154, baseType: !139, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !744, file: !731, line: 156, baseType: !748, size: 64, offset: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !646, line: 12, size: 64, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !748, file: !646, line: 13, baseType: !650, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !744, file: !731, line: 162, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !731, line: 162, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !744, file: !731, line: 167, baseType: !139, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !741, file: !731, line: 211, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !731, line: 170, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !756, file: !731, line: 171, baseType: !729, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !741, file: !731, line: 212, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !731, line: 174, size: 256, elements: !761)
!761 = !{!762, !829, !832, !833}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !760, file: !731, line: 175, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !731, line: 271, size: 768, elements: !766)
!766 = !{!767, !789, !793, !797, !802, !806, !810, !814, !815, !816, !817, !825}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !765, file: !731, line: 276, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!53, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !731, line: 251, size: 1216, elements: !773)
!773 = !{!774, !775, !776, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !772, file: !731, line: 253, baseType: !729, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !772, file: !731, line: 254, baseType: !366, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !772, file: !731, line: 255, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !668, line: 66, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !772, file: !731, line: 256, baseType: !138, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !772, file: !731, line: 259, baseType: !540, size: 256, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !772, file: !731, line: 260, baseType: !540, size: 256, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !772, file: !731, line: 261, baseType: !53, size: 32, offset: 768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !772, file: !731, line: 262, baseType: !148, size: 128, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !772, file: !731, line: 263, baseType: !284, size: 64, offset: 960)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !772, file: !731, line: 265, baseType: !331, size: 64, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !772, file: !731, line: 266, baseType: !639, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !772, file: !731, line: 267, baseType: !639, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !772, file: !731, line: 268, baseType: !658, size: 64, offset: 1152)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !765, file: !731, line: 277, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !771}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !765, file: !731, line: 290, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!53, !777, !138}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !765, file: !731, line: 292, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!138, !777, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !765, file: !731, line: 293, baseType: !803, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!138, !777, !138, !801}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !765, file: !731, line: 294, baseType: !807, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !777, !138}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !765, file: !731, line: 296, baseType: !811, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!316, !771, !284, !331, !369}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !765, file: !731, line: 306, baseType: !331, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !765, file: !731, line: 313, baseType: !639, size: 8, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !765, file: !731, line: 314, baseType: !811, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !765, file: !731, line: 317, baseType: !818, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!821, !771, !823}
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !822, line: 59, baseType: !7)
!822 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !731, line: 31, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !765, file: !731, line: 320, baseType: !826, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!53, !771, !377}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !760, file: !731, line: 176, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !731, line: 35, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !760, file: !731, line: 177, baseType: !369, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !760, file: !731, line: 178, baseType: !729, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !730, file: !731, line: 215, baseType: !138, size: 64, offset: 768)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !730, file: !731, line: 221, baseType: !446, size: 64, offset: 832)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !731, line: 223, baseType: !254, size: 16, offset: 896)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !730, file: !731, line: 224, baseType: !326, size: 16, offset: 912)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !730, file: !731, line: 225, baseType: !839, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !731, line: 36, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !730, file: !731, line: 227, baseType: !389, size: 128, align: 64, offset: 1024)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !203, file: !204, line: 71, baseType: !843, size: 32, offset: 448)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !844, line: 19, size: 32, elements: !845)
!844 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!845 = !{!846}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !843, file: !844, line: 20, baseType: !847, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !848, line: 113, baseType: !849)
!848 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !848, line: 111, size: 32, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !849, file: !848, line: 112, baseType: !236, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !203, file: !204, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !203, file: !204, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !203, file: !204, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !203, file: !204, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !203, file: !204, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !33, line: 707, baseType: !199, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !200, file: !33, line: 709, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !33, line: 37, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !200, file: !33, line: 711, baseType: !156, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !33, line: 712, baseType: !863, size: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !33, line: 89, size: 384, elements: !866)
!866 = !{!867, !868, !869, !875, !880, !884}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !865, file: !33, line: 90, baseType: !156, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !865, file: !33, line: 91, baseType: !335, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !865, file: !33, line: 92, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!53, !873, !279}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !865, file: !33, line: 93, baseType: !876, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!284, !873, !879, !714, !721}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !865, file: !33, line: 95, baseType: !881, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !199}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !865, file: !33, line: 97, baseType: !885, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !45, line: 286, size: 1472, elements: !888)
!888 = !{!889, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !887, file: !45, line: 287, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!53, !199}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !887, file: !45, line: 288, baseType: !881, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !887, file: !45, line: 289, baseType: !890, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !887, file: !45, line: 290, baseType: !890, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !887, file: !45, line: 291, baseType: !890, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !887, file: !45, line: 292, baseType: !890, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !887, file: !45, line: 293, baseType: !890, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !887, file: !45, line: 294, baseType: !890, size: 64, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !887, file: !45, line: 295, baseType: !890, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !887, file: !45, line: 296, baseType: !890, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !887, file: !45, line: 297, baseType: !890, size: 64, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !887, file: !45, line: 298, baseType: !890, size: 64, offset: 704)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !887, file: !45, line: 299, baseType: !890, size: 64, offset: 768)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !887, file: !45, line: 300, baseType: !890, size: 64, offset: 832)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !887, file: !45, line: 301, baseType: !890, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !887, file: !45, line: 302, baseType: !890, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !887, file: !45, line: 303, baseType: !890, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !887, file: !45, line: 304, baseType: !890, size: 64, offset: 1088)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !887, file: !45, line: 305, baseType: !890, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !887, file: !45, line: 306, baseType: !890, size: 64, offset: 1216)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !887, file: !45, line: 307, baseType: !890, size: 64, offset: 1280)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !887, file: !45, line: 308, baseType: !890, size: 64, offset: 1344)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !887, file: !45, line: 309, baseType: !890, size: 64, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !200, file: !33, line: 714, baseType: !916, size: 64, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !919, line: 80, size: 1344, elements: !920)
!919 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!920 = !{!921, !922, !923, !924, !925, !926, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1379}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !918, file: !919, line: 81, baseType: !156, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !918, file: !919, line: 82, baseType: !156, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !918, file: !919, line: 83, baseType: !335, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !918, file: !919, line: 84, baseType: !335, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !918, file: !919, line: 85, baseType: !335, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !918, file: !919, line: 87, baseType: !927, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!53, !199, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !27, line: 96, size: 1152, elements: !932)
!932 = !{!933, !934, !935, !1310, !1311, !1312, !1313, !1329, !1342, !1343, !1344, !1345, !1346, !1354, !1355, !1356, !1357, !1358, !1359}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !931, file: !27, line: 97, baseType: !156, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !931, file: !27, line: 98, baseType: !916, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !931, file: !27, line: 100, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !938)
!938 = !{!939, !940, !941, !945, !966, !992, !993, !994, !995, !999, !1002, !1003, !1004, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1067, !1071, !1091, !1109, !1110, !1111, !1112, !1121, !1144, !1145, !1148, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1162, !1163, !1269, !1277, !1278, !1279, !1281, !1285, !1286, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1303, !1304, !1305, !1309}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !937, file: !20, line: 403, baseType: !19, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !937, file: !20, line: 406, baseType: !148, size: 128, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !937, file: !20, line: 409, baseType: !942, size: 448, offset: 192)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 448, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 56)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !937, file: !20, line: 417, baseType: !946, size: 768, offset: 640)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !947)
!947 = !{!948, !949, !950, !951, !954}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !946, file: !20, line: 46, baseType: !203, size: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !946, file: !20, line: 47, baseType: !936, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !946, file: !20, line: 48, baseType: !209, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !946, file: !20, line: 49, baseType: !952, size: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !946, file: !20, line: 50, baseType: !955, size: 64, offset: 704)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !957, line: 26, size: 256, elements: !958)
!957 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !956, file: !957, line: 27, baseType: !7, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !956, file: !957, line: 28, baseType: !961, size: 192, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !962, line: 43, size: 192, elements: !963)
!962 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !962, line: 44, baseType: !474, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !961, file: !962, line: 45, baseType: !148, size: 128, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !937, file: !20, line: 418, baseType: !967, size: 64, offset: 1408)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !969)
!969 = !{!970, !971, !976, !980, !984, !988}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !968, file: !20, line: 54, baseType: !322, size: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !968, file: !20, line: 55, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!316, !967, !975, !284}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !968, file: !20, line: 57, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!316, !967, !975, !156, !331}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !968, file: !20, line: 59, baseType: !981, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !936, !156}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !968, file: !20, line: 60, baseType: !985, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!53, !936}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !968, file: !20, line: 61, baseType: !989, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !936}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !937, file: !20, line: 419, baseType: !156, size: 64, offset: 1472)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !937, file: !20, line: 420, baseType: !156, size: 64, offset: 1536)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !937, file: !20, line: 421, baseType: !209, size: 64, offset: 1600)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !937, file: !20, line: 424, baseType: !996, size: 64, offset: 1664)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !937, file: !20, line: 425, baseType: !1000, size: 64, offset: 1728)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !937, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !937, file: !20, line: 435, baseType: !540, size: 256, offset: 1856)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !937, file: !20, line: 437, baseType: !1005, size: 64, offset: 2112)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1007, line: 69, size: 320, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1008 = !{!1009, !1010, !1011, !1028, !1030, !1034, !1035}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1006, file: !1007, line: 70, baseType: !156, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1006, file: !1007, line: 71, baseType: !936, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1006, file: !1007, line: 72, baseType: !1012, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1007, line: 47, size: 256, elements: !1015)
!1015 = !{!1016, !1017, !1023, !1027}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !1007, line: 49, baseType: !7, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1014, file: !1007, line: 51, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!53, !156, !1021}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1014, file: !1007, line: 53, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!53, !284, !1021}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1014, file: !1007, line: 55, baseType: !703, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1006, file: !1007, line: 73, baseType: !1029, size: 16, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1006, file: !1007, line: 74, baseType: !1031, size: 8, offset: 208)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !190, line: 16, baseType: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !192, line: 20, baseType: !1033)
!1033 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1006, file: !1007, line: 75, baseType: !244, size: 8, offset: 216)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !1007, line: 76, baseType: !1036, size: 64, offset: 256)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !1007, line: 76, size: 64, elements: !1037)
!1037 = !{!1038, !1039, !1046}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1036, file: !1007, line: 77, baseType: !138, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1036, file: !1007, line: 78, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1007, line: 86, size: 128, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1042, file: !1007, line: 87, baseType: !7, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1042, file: !1007, line: 88, baseType: !284, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1036, file: !1007, line: 79, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1007, line: 92, size: 256, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1055, !1056}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1049, file: !1007, line: 94, baseType: !7, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1049, file: !1007, line: 95, baseType: !7, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1049, file: !1007, line: 96, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1049, file: !1007, line: 97, baseType: !1012, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1049, file: !1007, line: 98, baseType: !138, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !937, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !937, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !937, file: !20, line: 442, baseType: !996, size: 64, offset: 2240)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !937, file: !20, line: 443, baseType: !1000, size: 64, offset: 2304)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !937, file: !20, line: 444, baseType: !639, size: 8, offset: 2368)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !937, file: !20, line: 451, baseType: !639, size: 8, offset: 2376)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !937, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !937, file: !20, line: 455, baseType: !1065, size: 64, offset: 2432)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !20, line: 43, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !937, file: !20, line: 458, baseType: !1068, size: 64, offset: 2496)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!53}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !937, file: !20, line: 460, baseType: !1072, size: 4032, align: 512, offset: 2560)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1073, size: 4032, elements: !1089)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1073, file: !20, line: 363, baseType: !138, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1073, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1073, file: !20, line: 367, baseType: !1078, size: 448, offset: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1078, file: !20, line: 320, baseType: !936, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1078, file: !20, line: 321, baseType: !1082, size: 384, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1083, line: 40, size: 384, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1084 = !{!1085}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1082, file: !1083, line: 41, baseType: !1086, size: 384, align: 64)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 384, align: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DISubrange(count: 2)
!1089 = !{!1090}
!1090 = !DISubrange(count: 7)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !937, file: !20, line: 463, baseType: !1092, size: 192, offset: 6592)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1093, line: 8, size: 192, elements: !1094)
!1093 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1094 = !{!1095, !1096, !1098}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1092, file: !1093, line: 10, baseType: !7, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1092, file: !1093, line: 11, baseType: !1097, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1092, file: !1093, line: 12, baseType: !1099, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1101, line: 59, size: 48, elements: !1102)
!1101 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1100, file: !1101, line: 60, baseType: !578, size: 16)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1100, file: !1101, line: 61, baseType: !578, size: 16, offset: 16)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1100, file: !1101, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1100, file: !1101, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1100, file: !1101, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1100, file: !1101, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !937, file: !20, line: 465, baseType: !139, size: 64, offset: 6784)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !937, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !937, file: !20, line: 470, baseType: !148, size: 128, offset: 6912)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !937, file: !20, line: 471, baseType: !1113, size: 64, offset: 7040)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1115, line: 33, size: 96, elements: !1116)
!1115 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1116 = !{!1117, !1118, !1119, !1120}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1114, file: !1115, line: 37, baseType: !53, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1114, file: !1115, line: 43, baseType: !53, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1114, file: !1115, line: 45, baseType: !254, size: 16, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1114, file: !1115, line: 47, baseType: !254, size: 16, offset: 80)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !937, file: !20, line: 476, baseType: !1122, size: 64, offset: 7104)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !1124)
!1124 = !{!1125, !1141, !1142, !1143}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1123, file: !20, line: 379, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1128, line: 204, baseType: !1129)
!1128 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1128, line: 197, size: 192, elements: !1130)
!1130 = !{!1131, !1133, !1134, !1135, !1137, !1139}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1129, file: !1128, line: 198, baseType: !1132, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1128, line: 21, baseType: !191)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1129, file: !1128, line: 199, baseType: !246, size: 8, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1129, file: !1128, line: 200, baseType: !246, size: 8, offset: 40)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1129, file: !1128, line: 201, baseType: !1136, size: 16, offset: 48)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1128, line: 17, baseType: !253)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1129, file: !1128, line: 202, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1128, line: 16, baseType: !447)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1129, file: !1128, line: 203, baseType: !1140, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1128, line: 22, baseType: !447)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1123, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1123, file: !20, line: 381, baseType: !284, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1123, file: !20, line: 382, baseType: !284, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !937, file: !20, line: 477, baseType: !1123, size: 256, offset: 7168)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !937, file: !20, line: 480, baseType: !1146, size: 64, offset: 7424)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !937, file: !20, line: 483, baseType: !1149, size: 64, offset: 7488)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !937, file: !20, line: 488, baseType: !284, size: 64, offset: 7552)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !937, file: !20, line: 492, baseType: !138, size: 64, offset: 7616)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !937, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !937, file: !20, line: 495, baseType: !138, size: 64, offset: 7744)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !937, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !937, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !937, file: !20, line: 500, baseType: !1158, size: 64, offset: 7872)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1160, line: 45, baseType: !1161)
!1160 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !937, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !937, file: !20, line: 504, baseType: !1164, size: 64, offset: 8000)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1167, line: 96, size: 192, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1168 = !{!1169, !1170, !1230, !1233}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1166, file: !1167, line: 97, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1166, file: !1167, line: 98, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1167, line: 24, size: 3072, elements: !1173)
!1173 = !{!1174, !1176, !1177, !1178, !1179, !1193, !1194, !1195, !1196, !1214, !1215, !1216, !1227, !1228, !1229}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1172, file: !1167, line: 26, baseType: !1175, size: 128)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 128, elements: !1087)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1172, file: !1167, line: 27, baseType: !1175, size: 128, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1172, file: !1167, line: 28, baseType: !53, size: 32, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1172, file: !1167, line: 31, baseType: !216, size: 32, align: 512, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1172, file: !1167, line: 32, baseType: !1180, size: 960, offset: 576)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1181, line: 206, size: 960, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1182 = !{!1183, !1184, !1187, !1189, !1190, !1192}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1180, file: !1181, line: 207, baseType: !392, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1180, file: !1181, line: 208, baseType: !1185, size: 256, offset: 64)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 256, elements: !521)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1180, file: !1181, line: 209, baseType: !1188, size: 256, offset: 320)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !521)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1180, file: !1181, line: 213, baseType: !320, size: 64, offset: 576)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1180, file: !1181, line: 215, baseType: !1191, size: 256, offset: 640)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !521)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 216, baseType: !244, size: 8, offset: 896)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1172, file: !1167, line: 33, baseType: !139, size: 64, offset: 1536)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1172, file: !1167, line: 34, baseType: !139, size: 64, offset: 1600)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1172, file: !1167, line: 35, baseType: !639, size: 8, offset: 1664)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1172, file: !1167, line: 36, baseType: !1197, size: 320, offset: 1728)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1198, line: 11, size: 320, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1199 = !{!1200, !1207, !1208, !1213}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1197, file: !1198, line: 16, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !141, line: 198, size: 128, elements: !1202)
!1202 = !{!1203, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1201, file: !141, line: 199, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1201, file: !141, line: 199, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1197, file: !1198, line: 17, baseType: !139, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1197, file: !1198, line: 18, baseType: !1209, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !1198, line: 19, baseType: !189, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1172, file: !1167, line: 37, baseType: !605, size: 256, offset: 2048)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1172, file: !1167, line: 38, baseType: !389, size: 128, align: 64, offset: 2304)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1172, file: !1167, line: 39, baseType: !1217, size: 64, offset: 2432)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1167, line: 49, size: 768, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1218, file: !1167, line: 50, baseType: !216, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1218, file: !1167, line: 51, baseType: !1188, size: 256, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1218, file: !1167, line: 53, baseType: !1188, size: 256, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1218, file: !1167, line: 54, baseType: !139, size: 64, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1218, file: !1167, line: 55, baseType: !1217, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1218, file: !1167, line: 56, baseType: !53, size: 32, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1218, file: !1167, line: 57, baseType: !53, size: 32, offset: 736)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1172, file: !1167, line: 40, baseType: !139, size: 64, offset: 2496)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1172, file: !1167, line: 42, baseType: !53, size: 32, offset: 2560)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1172, file: !1167, line: 43, baseType: !1165, size: 64, offset: 2624)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1166, file: !1167, line: 99, baseType: !1231, offset: 128)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1232, line: 211, elements: !419)
!1232 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1166, file: !1167, line: 100, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1167, line: 63, size: 3008, elements: !1236)
!1236 = !{!1237, !1238, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1268}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1235, file: !1167, line: 64, baseType: !1217, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1235, file: !1167, line: 65, baseType: !1239, size: 192, offset: 64)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1217, size: 192, elements: !285)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1235, file: !1167, line: 67, baseType: !53, size: 32, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1235, file: !1167, line: 68, baseType: !540, size: 256, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1235, file: !1167, line: 69, baseType: !216, size: 32, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1235, file: !1167, line: 70, baseType: !540, size: 256, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1235, file: !1167, line: 71, baseType: !139, size: 64, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1235, file: !1167, line: 72, baseType: !139, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1235, file: !1167, line: 73, baseType: !139, size: 64, offset: 1024)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1235, file: !1167, line: 74, baseType: !139, size: 64, offset: 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1235, file: !1167, line: 75, baseType: !139, size: 64, offset: 1152)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1235, file: !1167, line: 76, baseType: !139, size: 64, offset: 1216)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1235, file: !1167, line: 77, baseType: !139, size: 64, offset: 1280)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1235, file: !1167, line: 78, baseType: !139, size: 64, offset: 1344)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1235, file: !1167, line: 79, baseType: !639, size: 8, offset: 1408)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1235, file: !1167, line: 80, baseType: !139, size: 64, offset: 1472)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1235, file: !1167, line: 81, baseType: !540, size: 256, offset: 1536)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1235, file: !1167, line: 82, baseType: !956, size: 256, offset: 1792)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1235, file: !1167, line: 84, baseType: !236, size: 32, offset: 2048)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1235, file: !1167, line: 87, baseType: !139, size: 64, offset: 2112)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1235, file: !1167, line: 88, baseType: !139, size: 64, offset: 2176)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1235, file: !1167, line: 89, baseType: !1260, size: 704, offset: 2240)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !92, line: 111, size: 704, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1267}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1260, file: !92, line: 112, baseType: !605, size: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1260, file: !92, line: 113, baseType: !1197, size: 320, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1260, file: !92, line: 116, baseType: !1265, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !92, line: 18, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1260, file: !92, line: 117, baseType: !53, size: 32, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1235, file: !1167, line: 90, baseType: !1165, size: 64, offset: 2944)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !937, file: !20, line: 515, baseType: !1270, size: 64, offset: 8064)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1272, line: 117, size: 128, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1271, file: !1272, line: 118, baseType: !519, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1271, file: !1272, line: 119, baseType: !519, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1271, file: !1272, line: 120, baseType: !320, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !937, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !937, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !937, file: !20, line: 520, baseType: !1280, size: 64, offset: 8192)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !937, file: !20, line: 523, baseType: !1282, size: 64, offset: 8256)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !937, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !937, file: !20, line: 525, baseType: !1287, size: 64, offset: 8384)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !937, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !937, file: !20, line: 533, baseType: !138, size: 64, offset: 8512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !937, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !937, file: !20, line: 535, baseType: !180, size: 64, offset: 8640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !937, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !937, file: !20, line: 539, baseType: !53, size: 32, offset: 8736)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !937, file: !20, line: 540, baseType: !1297, size: 64, offset: 8768)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1299, line: 32, size: 64, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1298, file: !1299, line: 33, baseType: !519, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1298, file: !1299, line: 34, baseType: !519, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !937, file: !20, line: 563, baseType: !148, size: 128, offset: 8832)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !937, file: !20, line: 565, baseType: !148, size: 128, offset: 8960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !937, file: !20, line: 568, baseType: !1306, size: 64, offset: 9088)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !937, file: !20, line: 570, baseType: !236, size: 32, offset: 9152)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !931, file: !27, line: 101, baseType: !156, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !931, file: !27, line: 103, baseType: !639, size: 8, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !931, file: !27, line: 104, baseType: !26, size: 32, offset: 288)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !931, file: !27, line: 106, baseType: !1314, size: 64, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1317, line: 282, size: 1600, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1318 = !{!1319, !1323, !1324, !1328}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1316, file: !1317, line: 283, baseType: !1320, size: 256)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1316, file: !1317, line: 284, baseType: !1320, size: 256, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1316, file: !1317, line: 285, baseType: !1325, size: 1024, offset: 512)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1316, file: !1317, line: 286, baseType: !561, size: 64, offset: 1536)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !931, file: !27, line: 107, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1317, line: 217, size: 256, elements: !1333)
!1333 = !{!1334, !1338, !1340, !1341}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1332, file: !1317, line: 218, baseType: !1335, size: 128)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 16)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1332, file: !1317, line: 219, baseType: !1339, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1317, line: 15, baseType: !139)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1332, file: !1317, line: 220, baseType: !191, size: 32, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1332, file: !1317, line: 221, baseType: !191, size: 32, offset: 224)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !931, file: !27, line: 109, baseType: !890, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !931, file: !27, line: 110, baseType: !881, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !931, file: !27, line: 111, baseType: !890, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !931, file: !27, line: 112, baseType: !881, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !931, file: !27, line: 113, baseType: !1347, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!53, !199, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !45, line: 60, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !45, line: 58, size: 32, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1351, file: !45, line: 59, baseType: !53, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !931, file: !27, line: 114, baseType: !890, size: 64, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !931, file: !27, line: 115, baseType: !335, size: 64, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !931, file: !27, line: 116, baseType: !335, size: 64, offset: 896)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !931, file: !27, line: 118, baseType: !885, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !931, file: !27, line: 119, baseType: !881, size: 64, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !931, file: !27, line: 121, baseType: !1360, size: 64, offset: 1088)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !27, line: 121, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !918, file: !919, line: 88, baseType: !870, size: 64, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !918, file: !919, line: 89, baseType: !890, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !918, file: !919, line: 90, baseType: !881, size: 64, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !918, file: !919, line: 91, baseType: !881, size: 64, offset: 576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !918, file: !919, line: 92, baseType: !881, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !918, file: !919, line: 94, baseType: !890, size: 64, offset: 704)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !918, file: !919, line: 95, baseType: !890, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !918, file: !919, line: 97, baseType: !1347, size: 64, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !918, file: !919, line: 98, baseType: !890, size: 64, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !918, file: !919, line: 100, baseType: !890, size: 64, offset: 960)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !918, file: !919, line: 102, baseType: !890, size: 64, offset: 1024)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !918, file: !919, line: 103, baseType: !881, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !918, file: !919, line: 105, baseType: !885, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !918, file: !919, line: 107, baseType: !1376, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !919, line: 107, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !918, file: !919, line: 109, baseType: !639, size: 8, offset: 1280)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !200, file: !33, line: 715, baseType: !930, size: 64, offset: 832)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !200, file: !33, line: 717, baseType: !138, size: 64, offset: 896)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !200, file: !33, line: 719, baseType: !138, size: 64, offset: 960)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !200, file: !33, line: 721, baseType: !540, size: 256, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !200, file: !33, line: 725, baseType: !1385, size: 448, offset: 1280)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !33, line: 517, size: 448, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1385, file: !33, line: 518, baseType: !148, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1385, file: !33, line: 519, baseType: !148, size: 128, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1385, file: !33, line: 520, baseType: !148, size: 128, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1385, file: !33, line: 521, baseType: !32, size: 32, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !200, file: !33, line: 726, baseType: !1392, size: 2496, offset: 1728)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !45, line: 663, size: 2496, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1438, !1439, !1440, !1441, !1442, !1443, !1514, !1515, !1516, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1554, !1558}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1392, file: !45, line: 664, baseType: !1350, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1392, file: !45, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1392, file: !45, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1392, file: !45, line: 667, baseType: !639, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1392, file: !45, line: 668, baseType: !639, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1392, file: !45, line: 669, baseType: !639, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1392, file: !45, line: 670, baseType: !639, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1392, file: !45, line: 671, baseType: !639, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1392, file: !45, line: 672, baseType: !639, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1392, file: !45, line: 673, baseType: !639, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1392, file: !45, line: 674, baseType: !639, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1392, file: !45, line: 675, baseType: !189, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !45, line: 676, baseType: !216, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1392, file: !45, line: 678, baseType: !148, size: 128, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1392, file: !45, line: 679, baseType: !956, size: 256, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1392, file: !45, line: 680, baseType: !1410, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1412, line: 43, size: 1536, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1421, !1422, !1423, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1411, file: !1412, line: 44, baseType: !156, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1411, file: !1412, line: 45, baseType: !53, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1411, file: !1412, line: 46, baseType: !148, size: 128, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1411, file: !1412, line: 47, baseType: !216, size: 32, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1411, file: !1412, line: 48, baseType: !1419, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !45, line: 629, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1411, file: !1412, line: 49, baseType: !1197, size: 320, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1411, file: !1412, line: 50, baseType: !139, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1411, file: !1412, line: 51, baseType: !1424, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1425, line: 29, baseType: !458)
!1425 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1411, file: !1412, line: 52, baseType: !1424, size: 64, offset: 832)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1411, file: !1412, line: 53, baseType: !1424, size: 64, offset: 896)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1411, file: !1412, line: 54, baseType: !1424, size: 64, offset: 960)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1411, file: !1412, line: 55, baseType: !1424, size: 64, offset: 1024)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1411, file: !1412, line: 56, baseType: !139, size: 64, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1411, file: !1412, line: 57, baseType: !139, size: 64, offset: 1152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1411, file: !1412, line: 58, baseType: !139, size: 64, offset: 1216)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1411, file: !1412, line: 59, baseType: !139, size: 64, offset: 1280)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1411, file: !1412, line: 60, baseType: !139, size: 64, offset: 1344)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1411, file: !1412, line: 61, baseType: !199, size: 64, offset: 1408)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1411, file: !1412, line: 62, baseType: !639, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1411, file: !1412, line: 63, baseType: !639, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1392, file: !45, line: 681, baseType: !639, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1392, file: !45, line: 682, baseType: !639, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1392, file: !45, line: 683, baseType: !639, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1392, file: !45, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1392, file: !45, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1392, file: !45, line: 690, baseType: !1444, size: 512, offset: 640)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !40, line: 118, size: 512, elements: !1445)
!1445 = !{!1446, !1452, !1453, !1458, !1510, !1511, !1512, !1513}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1444, file: !40, line: 119, baseType: !1447, size: 256)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1448, line: 9, size: 256, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1447, file: !1448, line: 10, baseType: !645, size: 192, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1447, file: !1448, line: 11, baseType: !1424, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1444, file: !40, line: 120, baseType: !1424, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1444, file: !40, line: 121, baseType: !1454, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!39, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1444, file: !40, line: 122, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !40, line: 159, size: 512, align: 512, elements: !1461)
!1461 = !{!1462, !1487, !1488, !1491, !1496, !1497, !1505, !1509}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1460, file: !40, line: 160, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !40, line: 215, size: 4608, align: 512, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1464, file: !40, line: 216, baseType: !474, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1464, file: !40, line: 217, baseType: !7, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1464, file: !40, line: 218, baseType: !7, size: 32, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1464, file: !40, line: 219, baseType: !7, size: 32, offset: 96)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1464, file: !40, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1464, file: !40, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1464, file: !40, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1464, file: !40, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1464, file: !40, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1464, file: !40, line: 226, baseType: !7, size: 32, offset: 160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1464, file: !40, line: 227, baseType: !254, size: 16, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1464, file: !40, line: 228, baseType: !254, size: 16, offset: 208)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1464, file: !40, line: 229, baseType: !7, size: 32, offset: 224)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1464, file: !40, line: 235, baseType: !1424, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1464, file: !40, line: 236, baseType: !1457, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1464, file: !40, line: 237, baseType: !1424, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1464, file: !40, line: 238, baseType: !1457, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1464, file: !40, line: 239, baseType: !1484, size: 4096, align: 512, offset: 512)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, size: 4096, align: 512, elements: !1485)
!1485 = !{!1486}
!1486 = !DISubrange(count: 8)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1460, file: !40, line: 161, baseType: !7, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1460, file: !40, line: 162, baseType: !1489, size: 32, offset: 96)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !141, line: 32, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !318, line: 96, baseType: !53)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1460, file: !40, line: 163, baseType: !1492, size: 32, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !489, line: 274, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !489, line: 274, size: 32, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1493, file: !489, line: 274, baseType: !488, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1460, file: !40, line: 164, baseType: !1457, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1460, file: !40, line: 165, baseType: !1498, size: 128, offset: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1448, line: 14, size: 128, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1498, file: !1448, line: 15, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !646, line: 26, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1501, file: !646, line: 27, baseType: !748, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1501, file: !646, line: 28, baseType: !650, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1460, file: !40, line: 166, baseType: !1506, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1424}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1460, file: !40, line: 167, baseType: !1424, size: 64, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1444, file: !40, line: 123, baseType: !244, size: 8, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1444, file: !40, line: 124, baseType: !244, size: 8, offset: 456)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1444, file: !40, line: 125, baseType: !244, size: 8, offset: 464)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1444, file: !40, line: 126, baseType: !244, size: 8, offset: 472)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1392, file: !45, line: 691, baseType: !446, size: 64, offset: 1152)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1392, file: !45, line: 692, baseType: !605, size: 256, offset: 1216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1392, file: !45, line: 693, baseType: !1517, size: 192, offset: 1472)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1518, line: 41, baseType: !1519)
!1518 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1518, line: 37, size: 192, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1518, line: 38, baseType: !216, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1519, file: !1518, line: 39, baseType: !148, size: 128, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1392, file: !45, line: 694, baseType: !1419, size: 64, offset: 1664)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1392, file: !45, line: 695, baseType: !236, size: 32, offset: 1728)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1392, file: !45, line: 696, baseType: !236, size: 32, offset: 1760)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1392, file: !45, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1392, file: !45, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1392, file: !45, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1392, file: !45, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1392, file: !45, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1392, file: !45, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1392, file: !45, line: 703, baseType: !639, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1392, file: !45, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1392, file: !45, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1392, file: !45, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1392, file: !45, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1392, file: !45, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1392, file: !45, line: 709, baseType: !7, size: 32, offset: 1824)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1392, file: !45, line: 710, baseType: !44, size: 32, offset: 1856)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1392, file: !45, line: 711, baseType: !52, size: 32, offset: 1888)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1392, file: !45, line: 712, baseType: !52, size: 32, offset: 1920)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1392, file: !45, line: 713, baseType: !53, size: 32, offset: 1952)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1392, file: !45, line: 714, baseType: !53, size: 32, offset: 1984)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1392, file: !45, line: 715, baseType: !446, size: 64, offset: 2048)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1392, file: !45, line: 716, baseType: !446, size: 64, offset: 2112)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1392, file: !45, line: 717, baseType: !446, size: 64, offset: 2176)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1392, file: !45, line: 718, baseType: !446, size: 64, offset: 2240)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1392, file: !45, line: 720, baseType: !1549, size: 64, offset: 2304)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !45, line: 632, size: 64, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !45, line: 633, baseType: !216, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1550, file: !45, line: 634, baseType: !7, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1392, file: !45, line: 721, baseType: !1555, size: 64, offset: 2368)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !199, !519}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1392, file: !45, line: 722, baseType: !1559, size: 64, offset: 2432)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !45, line: 722, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !200, file: !33, line: 727, baseType: !1562, size: 64, offset: 4224)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !45, line: 742, size: 1792, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1571, !1572, !1573}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1563, file: !45, line: 743, baseType: !887, size: 1472)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1563, file: !45, line: 744, baseType: !890, size: 64, offset: 1472)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1563, file: !45, line: 745, baseType: !1568, size: 64, offset: 1536)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !199, !639}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1563, file: !45, line: 746, baseType: !890, size: 64, offset: 1600)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1563, file: !45, line: 747, baseType: !881, size: 64, offset: 1664)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1563, file: !45, line: 748, baseType: !881, size: 64, offset: 1728)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !200, file: !33, line: 736, baseType: !1575, size: 128, offset: 4288)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !33, line: 529, size: 128, elements: !1576)
!1576 = !{!1577, !1581}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1575, file: !33, line: 531, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1580, line: 13, flags: DIFlagFwdDecl)
!1580 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1575, file: !33, line: 532, baseType: !1582, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !33, line: 49, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !200, file: !33, line: 738, baseType: !1585, size: 64, offset: 4416)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !33, line: 738, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !200, file: !33, line: 740, baseType: !1589, size: 64, offset: 4480)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !200, file: !33, line: 741, baseType: !446, size: 64, offset: 4544)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !200, file: !33, line: 746, baseType: !446, size: 64, offset: 4608)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !200, file: !33, line: 747, baseType: !1593, size: 64, offset: 4672)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !33, line: 747, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !200, file: !33, line: 749, baseType: !1597, size: 64, offset: 4736)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !33, line: 428, size: 128, elements: !1599)
!1599 = !{!1600, !1601, !1602}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1598, file: !33, line: 433, baseType: !7, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1598, file: !33, line: 434, baseType: !7, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1598, file: !33, line: 435, baseType: !139, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !200, file: !33, line: 751, baseType: !148, size: 128, offset: 4800)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !200, file: !33, line: 762, baseType: !1605, size: 64, offset: 4928)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !33, line: 762, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !200, file: !33, line: 770, baseType: !1608, offset: 4992)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1609, line: 5, elements: !419)
!1609 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !200, file: !33, line: 772, baseType: !1611, size: 64, offset: 4992)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1613, line: 48, size: 1152, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1614 = !{!1615, !1616, !1618, !1619, !1722, !1730, !1731, !1732, !1733, !1734, !1735}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1612, file: !1613, line: 49, baseType: !156, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1612, file: !1613, line: 50, baseType: !1617, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1613, line: 25, baseType: !189)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1612, file: !1613, line: 51, baseType: !156, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1612, file: !1613, line: 52, baseType: !1620, size: 512, offset: 192)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1621, line: 41, size: 512, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1622 = !{!1623, !1625, !1718, !1719, !1720, !1721}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1620, file: !1621, line: 42, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1620, file: !1621, line: 43, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1621, line: 125, size: 1408, elements: !1629)
!1629 = !{!1630, !1634, !1638, !1644, !1648, !1649, !1653, !1657, !1661, !1665, !1669, !1670, !1674, !1678, !1682, !1693, !1694, !1695, !1696, !1706, !1710, !1714}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1628, file: !1621, line: 126, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1624, !1624}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1628, file: !1621, line: 127, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1624}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1628, file: !1621, line: 128, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!639, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1628, file: !1621, line: 129, baseType: !1645, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!561, !1642, !873}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1628, file: !1621, line: 131, baseType: !1639, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1628, file: !1621, line: 133, baseType: !1650, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!60, !1642}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1628, file: !1621, line: 134, baseType: !1654, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!639, !1642, !156}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1628, file: !1621, line: 136, baseType: !1658, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!53, !1642, !156, !7, !138, !331}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1628, file: !1621, line: 141, baseType: !1662, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!53, !1642, !156, !1280, !331}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1628, file: !1621, line: 144, baseType: !1666, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!156, !1642}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1628, file: !1621, line: 145, baseType: !1666, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1628, file: !1621, line: 146, baseType: !1671, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!1624, !1642}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1628, file: !1621, line: 148, baseType: !1675, size: 64, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!1624, !1642, !1624}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1628, file: !1621, line: 151, baseType: !1679, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1624, !1642, !156}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1628, file: !1621, line: 153, baseType: !1683, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!53, !1642, !156, !156, !7, !7, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1621, line: 94, size: 640, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1687, file: !1621, line: 95, baseType: !1624, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1687, file: !1621, line: 96, baseType: !7, size: 32, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1687, file: !1621, line: 97, baseType: !1692, size: 512, offset: 128)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 512, elements: !1485)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1628, file: !1621, line: 158, baseType: !1675, size: 64, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1628, file: !1621, line: 161, baseType: !1671, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1628, file: !1621, line: 163, baseType: !1631, size: 64, offset: 1088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1628, file: !1621, line: 164, baseType: !1697, size: 64, offset: 1152)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!53, !1642, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1621, line: 73, size: 128, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1701, file: !1621, line: 74, baseType: !7, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1701, file: !1621, line: 75, baseType: !7, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1701, file: !1621, line: 76, baseType: !1642, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1628, file: !1621, line: 166, baseType: !1707, size: 64, offset: 1216)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!138, !1624, !53}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1628, file: !1621, line: 167, baseType: !1711, size: 64, offset: 1280)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!53, !1642, !7}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1628, file: !1621, line: 168, baseType: !1715, size: 64, offset: 1344)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!53, !1624}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1620, file: !1621, line: 44, baseType: !199, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1620, file: !1621, line: 45, baseType: !148, size: 128, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1620, file: !1621, line: 46, baseType: !148, size: 128, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !1621, line: 47, baseType: !244, size: 8, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1612, file: !1613, line: 54, baseType: !1723, size: 64, offset: 704)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1613, line: 28, size: 256, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1724, file: !1613, line: 29, baseType: !284, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1724, file: !1613, line: 30, baseType: !53, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1724, file: !1613, line: 31, baseType: !138, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1724, file: !1613, line: 32, baseType: !1723, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1612, file: !1613, line: 55, baseType: !1723, size: 64, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1612, file: !1613, line: 56, baseType: !1611, size: 64, offset: 832)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1612, file: !1613, line: 57, baseType: !1611, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1612, file: !1613, line: 58, baseType: !1611, size: 64, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1612, file: !1613, line: 62, baseType: !139, size: 64, offset: 1024)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1612, file: !1613, line: 63, baseType: !138, size: 64, offset: 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !200, file: !33, line: 773, baseType: !1624, size: 64, offset: 5056)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !200, file: !33, line: 776, baseType: !53, size: 32, offset: 5120)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !200, file: !33, line: 778, baseType: !1739, size: 32, offset: 5152)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !141, line: 21, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !141, line: 18, baseType: !189)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !200, file: !33, line: 779, baseType: !189, size: 32, offset: 5184)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !200, file: !33, line: 781, baseType: !216, size: 32, offset: 5216)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !200, file: !33, line: 782, baseType: !148, size: 128, offset: 5248)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !200, file: !33, line: 784, baseType: !1745, size: 64, offset: 5376)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1748, line: 52, size: 768, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1758, !1762, !1763, !1764, !1765, !1769, !1773}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1747, file: !1748, line: 53, baseType: !156, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1747, file: !1748, line: 55, baseType: !335, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1747, file: !1748, line: 56, baseType: !335, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1747, file: !1748, line: 58, baseType: !870, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1747, file: !1748, line: 59, baseType: !1755, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!284, !873, !879}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1747, file: !1748, line: 61, baseType: !1759, size: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !1745}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1747, file: !1748, line: 62, baseType: !881, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1747, file: !1748, line: 64, baseType: !890, size: 64, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1747, file: !1748, line: 66, baseType: !679, size: 64, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1747, file: !1748, line: 67, baseType: !1766, size: 64, offset: 576)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!561, !873}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1747, file: !1748, line: 69, baseType: !1770, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !873, !714, !721}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1747, file: !1748, line: 71, baseType: !885, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !200, file: !33, line: 785, baseType: !335, size: 64, offset: 5440)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !200, file: !33, line: 787, baseType: !881, size: 64, offset: 5504)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !200, file: !33, line: 788, baseType: !1777, size: 64, offset: 5568)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !33, line: 46, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !200, file: !33, line: 789, baseType: !1780, size: 64, offset: 5632)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !33, line: 48, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !200, file: !33, line: 791, baseType: !1783, size: 64, offset: 5696)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !33, line: 597, size: 128, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1784, file: !33, line: 598, baseType: !66, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1784, file: !33, line: 599, baseType: !75, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1784, file: !33, line: 600, baseType: !80, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1784, file: !33, line: 601, baseType: !639, size: 8, offset: 96)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1784, file: !33, line: 602, baseType: !639, size: 8, offset: 104)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !200, file: !33, line: 793, baseType: !85, size: 32, offset: 5760)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !200, file: !33, line: 795, baseType: !639, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !200, file: !33, line: 796, baseType: !639, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !200, file: !33, line: 797, baseType: !639, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !200, file: !33, line: 798, baseType: !639, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !200, file: !33, line: 799, baseType: !639, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !153, file: !6, line: 169, baseType: !335, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !153, file: !6, line: 171, baseType: !148, size: 128, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !153, file: !6, line: 172, baseType: !156, size: 64, offset: 896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !153, file: !6, line: 174, baseType: !139, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !153, file: !6, line: 174, baseType: !139, size: 64, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !153, file: !6, line: 175, baseType: !1197, size: 320, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !153, file: !6, line: 176, baseType: !53, size: 32, offset: 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !153, file: !6, line: 177, baseType: !53, size: 32, offset: 1440)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !153, file: !6, line: 178, baseType: !1806, size: 64, offset: 1472)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !152}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !153, file: !6, line: 180, baseType: !605, size: 256, offset: 1536)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !153, file: !6, line: 181, baseType: !53, size: 32, offset: 1792)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_on", scope: !153, file: !6, line: 182, baseType: !139, size: 64, offset: 1856)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_off", scope: !153, file: !6, line: 183, baseType: !139, size: 64, offset: 1920)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_lock", scope: !153, file: !6, line: 187, baseType: !463, size: 320, offset: 1984)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !153, file: !6, line: 189, baseType: !1815, size: 64, offset: 2304)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !6, line: 471, size: 704, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1827, !1828, !1829, !1830}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1816, file: !6, line: 473, baseType: !156, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1816, file: !6, line: 474, baseType: !195, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1816, file: !6, line: 475, baseType: !1806, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1816, file: !6, line: 478, baseType: !5, size: 32, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !1816, file: !6, line: 481, baseType: !1823, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_hw_trigger_type", file: !6, line: 95, size: 32, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1824, file: !6, line: 96, baseType: !53, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "leddev_list_lock", scope: !1816, file: !6, line: 484, baseType: !216, size: 32, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "led_cdevs", scope: !1816, file: !6, line: 485, baseType: !148, size: 128, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "next_trig", scope: !1816, file: !6, line: 488, baseType: !148, size: 128, offset: 512)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1816, file: !6, line: 490, baseType: !335, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "trig_list", scope: !153, file: !6, line: 190, baseType: !148, size: 128, offset: 2368)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_data", scope: !153, file: !6, line: 191, baseType: !138, size: 64, offset: 2496)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "activated", scope: !153, file: !6, line: 193, baseType: !639, size: 8, offset: 2560)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !153, file: !6, line: 196, baseType: !1823, size: 64, offset: 2624)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_trigger", scope: !153, file: !6, line: 199, baseType: !156, size: 64, offset: 2688)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_is_supported", scope: !153, file: !6, line: 209, baseType: !1837, size: 64, offset: 2752)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!53, !152, !139}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_set", scope: !153, file: !6, line: 220, baseType: !1837, size: 64, offset: 2816)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get", scope: !153, file: !6, line: 232, baseType: !1842, size: 64, offset: 2880)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!53, !152, !180}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get_device", scope: !153, file: !6, line: 239, baseType: !1846, size: 64, offset: 2944)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!199, !152}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !153, file: !6, line: 248, baseType: !540, size: 256, offset: 3008)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !320)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1206)
!1857 = !{!0, !1858, !1860, !1862, !1864, !1869, !1872, !1874, !1879, !1881, !1884, !1886, !1889, !1894, !1896, !1902, !1904, !1910, !1912, !1914, !1916, !1918, !1920, !1922, !1924, !1926, !1928, !1930, !1935, !1937, !1939, !1941, !1943, !1948, !1953, !1958, !1960, !1965, !1967, !1969, !1971, !1976, !1981, !1983, !1988, !1990, !1992, !1997, !1999, !2004, !2009}
!1858 = !DIGlobalVariableExpression(var: !1859, expr: !DIExpression())
!1859 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_leds_list_lock205", scope: !2, file: !3, line: 23, type: !138, isLocal: true, isDefinition: true)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(name: "leds_list", scope: !2, file: !3, line: 25, type: !148, isLocal: false, isDefinition: true)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_leds_list206", scope: !2, file: !3, line: 26, type: !138, isLocal: true, isDefinition: true)
!1864 = !DIGlobalVariableExpression(var: !1865, expr: !DIExpression())
!1865 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !1866, isLocal: true, isDefinition: true)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 48, elements: !1867)
!1867 = !{!1868}
!1868 = !DISubrange(count: 6)
!1869 = !DIGlobalVariableExpression(var: !1870, expr: !DIExpression())
!1870 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !1871, isLocal: true, isDefinition: true)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 32, elements: !521)
!1872 = !DIGlobalVariableExpression(var: !1873, expr: !DIExpression())
!1873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !1866, isLocal: true, isDefinition: true)
!1874 = !DIGlobalVariableExpression(var: !1875, expr: !DIExpression())
!1875 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !1876, isLocal: true, isDefinition: true)
!1876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 40, elements: !1877)
!1877 = !{!1878}
!1878 = !DISubrange(count: 5)
!1879 = !DIGlobalVariableExpression(var: !1880, expr: !DIExpression())
!1880 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !1866, isLocal: true, isDefinition: true)
!1881 = !DIGlobalVariableExpression(var: !1882, expr: !DIExpression())
!1882 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !1883, isLocal: true, isDefinition: true)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 56, elements: !1089)
!1884 = !DIGlobalVariableExpression(var: !1885, expr: !DIExpression())
!1885 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !1883, isLocal: true, isDefinition: true)
!1886 = !DIGlobalVariableExpression(var: !1887, expr: !DIExpression())
!1887 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !1888, isLocal: true, isDefinition: true)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 24, elements: !285)
!1889 = !DIGlobalVariableExpression(var: !1890, expr: !DIExpression())
!1890 = distinct !DIGlobalVariable(scope: null, file: !3, line: 37, type: !1891, isLocal: true, isDefinition: true)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 88, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 11)
!1894 = !DIGlobalVariableExpression(var: !1895, expr: !DIExpression())
!1895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !1871, isLocal: true, isDefinition: true)
!1896 = !DIGlobalVariableExpression(var: !1897, expr: !DIExpression())
!1897 = distinct !DIGlobalVariable(name: "led_colors", scope: !2, file: !3, line: 28, type: !1898, isLocal: false, isDefinition: true)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, size: 960, elements: !1900)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1900 = !{!1901}
!1901 = !DISubrange(count: 15)
!1902 = !DIGlobalVariableExpression(var: !1903, expr: !DIExpression())
!1903 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_colors207", scope: !2, file: !3, line: 40, type: !138, isLocal: true, isDefinition: true)
!1904 = !DIGlobalVariableExpression(var: !1905, expr: !DIExpression())
!1905 = distinct !DIGlobalVariable(name: "__key", scope: !1906, file: !3, line: 215, type: !1909, isLocal: true, isDefinition: true)
!1906 = distinct !DISubprogram(name: "led_init_core", scope: !3, file: !3, line: 213, type: !1807, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !1906, file: !3, line: 213, type: !152)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1232, line: 206, elements: !419)
!1910 = !DIGlobalVariableExpression(var: !1911, expr: !DIExpression())
!1911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_init_core208", scope: !2, file: !3, line: 219, type: !138, isLocal: true, isDefinition: true)
!1912 = !DIGlobalVariableExpression(var: !1913, expr: !DIExpression())
!1913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_blink_set209", scope: !2, file: !3, line: 233, type: !138, isLocal: true, isDefinition: true)
!1914 = !DIGlobalVariableExpression(var: !1915, expr: !DIExpression())
!1915 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_blink_set_oneshot210", scope: !2, file: !3, line: 254, type: !138, isLocal: true, isDefinition: true)
!1916 = !DIGlobalVariableExpression(var: !1917, expr: !DIExpression())
!1917 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_blink_set_nosleep211", scope: !2, file: !3, line: 270, type: !138, isLocal: true, isDefinition: true)
!1918 = !DIGlobalVariableExpression(var: !1919, expr: !DIExpression())
!1919 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_stop_software_blink212", scope: !2, file: !3, line: 279, type: !138, isLocal: true, isDefinition: true)
!1920 = !DIGlobalVariableExpression(var: !1921, expr: !DIExpression())
!1921 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_set_brightness213", scope: !2, file: !3, line: 306, type: !138, isLocal: true, isDefinition: true)
!1922 = !DIGlobalVariableExpression(var: !1923, expr: !DIExpression())
!1923 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_set_brightness_nopm214", scope: !2, file: !3, line: 333, type: !138, isLocal: true, isDefinition: true)
!1924 = !DIGlobalVariableExpression(var: !1925, expr: !DIExpression())
!1925 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_set_brightness_nosleep217", scope: !2, file: !3, line: 344, type: !138, isLocal: true, isDefinition: true)
!1926 = !DIGlobalVariableExpression(var: !1927, expr: !DIExpression())
!1927 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_set_brightness_sync220", scope: !2, file: !3, line: 358, type: !138, isLocal: true, isDefinition: true)
!1928 = !DIGlobalVariableExpression(var: !1929, expr: !DIExpression())
!1929 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_update_brightness221", scope: !2, file: !3, line: 374, type: !138, isLocal: true, isDefinition: true)
!1930 = !DIGlobalVariableExpression(var: !1931, expr: !DIExpression())
!1931 = distinct !DIGlobalVariable(scope: null, file: !3, line: 382, type: !1932, isLocal: true, isDefinition: true)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 96, elements: !1933)
!1933 = !{!1934}
!1934 = !DISubrange(count: 12)
!1935 = !DIGlobalVariableExpression(var: !1936, expr: !DIExpression())
!1936 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_get_default_pattern222", scope: !2, file: !3, line: 399, type: !138, isLocal: true, isDefinition: true)
!1937 = !DIGlobalVariableExpression(var: !1938, expr: !DIExpression())
!1938 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_sysfs_disable223", scope: !2, file: !3, line: 408, type: !138, isLocal: true, isDefinition: true)
!1939 = !DIGlobalVariableExpression(var: !1940, expr: !DIExpression())
!1940 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_sysfs_enable224", scope: !2, file: !3, line: 417, type: !138, isLocal: true, isDefinition: true)
!1941 = !DIGlobalVariableExpression(var: !1942, expr: !DIExpression())
!1942 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !1866, isLocal: true, isDefinition: true)
!1943 = !DIGlobalVariableExpression(var: !1944, expr: !DIExpression())
!1944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 500, type: !1945, isLocal: true, isDefinition: true)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 72, elements: !1946)
!1946 = !{!1947}
!1947 = !DISubrange(count: 9)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 501, type: !1950, isLocal: true, isDefinition: true)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 8, elements: !1951)
!1951 = !{!1952}
!1952 = !DISubrange(count: 1)
!1953 = !DIGlobalVariableExpression(var: !1954, expr: !DIExpression())
!1954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 517, type: !1955, isLocal: true, isDefinition: true)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 368, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 46)
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_compose_name225", scope: !2, file: !3, line: 530, type: !138, isLocal: true, isDefinition: true)
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 536, type: !1962, isLocal: true, isDefinition: true)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 112, elements: !1963)
!1963 = !{!1964}
!1964 = !DISubrange(count: 14)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 537, type: !1876, isLocal: true, isDefinition: true)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 539, type: !1888, isLocal: true, isDefinition: true)
!1969 = !DIGlobalVariableExpression(var: !1970, expr: !DIExpression())
!1970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_init_default_state_get226", scope: !2, file: !3, line: 545, type: !138, isLocal: true, isDefinition: true)
!1971 = !DIGlobalVariableExpression(var: !1972, expr: !DIExpression())
!1972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !1973, isLocal: true, isDefinition: true)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 328, elements: !1974)
!1974 = !{!1975}
!1975 = !DISubrange(count: 41)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(scope: null, file: !128, line: 480, type: !1978, isLocal: true, isDefinition: true)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 168, elements: !1979)
!1979 = !{!1980}
!1980 = !DISubrange(count: 21)
!1981 = !DIGlobalVariableExpression(var: !1982, expr: !DIExpression())
!1982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !1866, isLocal: true, isDefinition: true)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !1985, isLocal: true, isDefinition: true)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 296, elements: !1986)
!1986 = !{!1987}
!1987 = !DISubrange(count: 37)
!1988 = !DIGlobalVariableExpression(var: !1989, expr: !DIExpression())
!1989 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !1866, isLocal: true, isDefinition: true)
!1990 = !DIGlobalVariableExpression(var: !1991, expr: !DIExpression())
!1991 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !1985, isLocal: true, isDefinition: true)
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !1994, isLocal: true, isDefinition: true)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 280, elements: !1995)
!1995 = !{!1996}
!1996 = !DISubrange(count: 35)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 446, type: !1945, isLocal: true, isDefinition: true)
!1999 = !DIGlobalVariableExpression(var: !2000, expr: !DIExpression())
!2000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 451, type: !2001, isLocal: true, isDefinition: true)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 320, elements: !2002)
!2002 = !{!2003}
!2003 = !DISubrange(count: 40)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !2006, isLocal: true, isDefinition: true)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 160, elements: !2007)
!2007 = !{!2008}
!2008 = !DISubrange(count: 20)
!2009 = !DIGlobalVariableExpression(var: !2010, expr: !DIExpression())
!2010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !2011, isLocal: true, isDefinition: true)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 408, elements: !2012)
!2012 = !{!2013}
!2013 = !DISubrange(count: 51)
!2014 = !{i32 7, !"Dwarf Version", i32 5}
!2015 = !{i32 2, !"Debug Info Version", i32 3}
!2016 = !{i32 1, !"wchar_size", i32 2}
!2017 = !{i32 8, !"cf-protection-branch", i32 1}
!2018 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2019 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2020 = !{i32 1, !"Code Model", i32 2}
!2021 = !{i32 1, !"override-stack-alignment", i32 8}
!2022 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2023 = !DILocation(line: 213, column: 41, scope: !1906)
!2024 = !DILocation(line: 215, column: 2, scope: !1906)
!2025 = !DILocation(line: 215, column: 2, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 215, column: 2)
!2027 = !DILocation(line: 215, column: 2, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 215, column: 2)
!2029 = !DILocation(line: 217, column: 2, scope: !1906)
!2030 = !DILocation(line: 218, column: 1, scope: !1906)
!2031 = distinct !DISubprogram(name: "__init_work", scope: !92, file: !92, line: 263, type: !2032, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !614, !53}
!2034 = !{!2035, !2036}
!2035 = !DILocalVariable(name: "work", arg: 1, scope: !2031, file: !92, line: 263, type: !614)
!2036 = !DILocalVariable(name: "onstack", arg: 2, scope: !2031, file: !92, line: 263, type: !53)
!2037 = !DILocation(line: 263, column: 52, scope: !2031)
!2038 = !DILocation(line: 263, column: 62, scope: !2031)
!2039 = !DILocation(line: 263, column: 73, scope: !2031)
!2040 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2041, file: !2041, line: 35, type: !2042, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2041 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !147}
!2044 = !{!2045}
!2045 = !DILocalVariable(name: "list", arg: 1, scope: !2040, file: !2041, line: 35, type: !147)
!2046 = !DILocation(line: 35, column: 53, scope: !2040)
!2047 = !DILocation(line: 37, column: 2, scope: !2040)
!2048 = !DILocation(line: 37, column: 2, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2040, file: !2041, line: 37, column: 2)
!2050 = !DILocation(line: 37, column: 2, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2049, file: !2041, line: 37, column: 2)
!2052 = !DILocation(line: 37, column: 2, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !2041, line: 37, column: 2)
!2054 = !DILocation(line: 38, column: 2, scope: !2040)
!2055 = !DILocation(line: 38, column: 2, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2040, file: !2041, line: 38, column: 2)
!2057 = !DILocation(line: 38, column: 2, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !2041, line: 38, column: 2)
!2059 = !DILocation(line: 38, column: 2, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !2041, line: 38, column: 2)
!2061 = !DILocation(line: 39, column: 1, scope: !2040)
!2062 = distinct !DISubprogram(name: "set_brightness_delayed", scope: !3, file: !3, line: 133, type: !612, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2063)
!2063 = !{!2064, !2065, !2066, !2068, !2071}
!2064 = !DILocalVariable(name: "ws", arg: 1, scope: !2062, file: !3, line: 133, type: !614)
!2065 = !DILocalVariable(name: "led_cdev", scope: !2062, file: !3, line: 135, type: !152)
!2066 = !DILocalVariable(name: "__mptr", scope: !2067, file: !3, line: 136, type: !138)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 136, column: 3)
!2068 = !DILocalVariable(name: "delay_on", scope: !2069, file: !3, line: 157, type: !139)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 156, column: 64)
!2070 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 156, column: 6)
!2071 = !DILocalVariable(name: "delay_off", scope: !2069, file: !3, line: 158, type: !139)
!2072 = !DILocation(line: 133, column: 56, scope: !2062)
!2073 = !DILocation(line: 135, column: 2, scope: !2062)
!2074 = !DILocation(line: 135, column: 23, scope: !2062)
!2075 = !DILocation(line: 136, column: 3, scope: !2067)
!2076 = !DILocation(line: 136, column: 3, scope: !2062)
!2077 = !DILocation(line: 138, column: 45, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 138, column: 6)
!2079 = !DILocation(line: 138, column: 55, scope: !2078)
!2080 = !DILocation(line: 138, column: 6, scope: !2078)
!2081 = !DILocation(line: 138, column: 6, scope: !2062)
!2082 = !DILocation(line: 139, column: 27, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 138, column: 68)
!2084 = !DILocation(line: 139, column: 3, scope: !2083)
!2085 = !DILocation(line: 140, column: 36, scope: !2083)
!2086 = !DILocation(line: 140, column: 46, scope: !2083)
!2087 = !DILocation(line: 140, column: 3, scope: !2083)
!2088 = !DILocation(line: 141, column: 2, scope: !2083)
!2089 = !DILocation(line: 150, column: 50, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 150, column: 6)
!2091 = !DILocation(line: 150, column: 60, scope: !2090)
!2092 = !DILocation(line: 150, column: 6, scope: !2090)
!2093 = !DILocation(line: 150, column: 6, scope: !2062)
!2094 = !DILocation(line: 151, column: 41, scope: !2090)
!2095 = !DILocation(line: 151, column: 3, scope: !2090)
!2096 = !DILocation(line: 153, column: 46, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 153, column: 6)
!2098 = !DILocation(line: 153, column: 56, scope: !2097)
!2099 = !DILocation(line: 153, column: 6, scope: !2097)
!2100 = !DILocation(line: 153, column: 6, scope: !2062)
!2101 = !DILocation(line: 154, column: 41, scope: !2097)
!2102 = !DILocation(line: 154, column: 51, scope: !2097)
!2103 = !DILocation(line: 154, column: 61, scope: !2097)
!2104 = !DILocation(line: 154, column: 3, scope: !2097)
!2105 = !DILocation(line: 156, column: 41, scope: !2070)
!2106 = !DILocation(line: 156, column: 51, scope: !2070)
!2107 = !DILocation(line: 156, column: 6, scope: !2070)
!2108 = !DILocation(line: 156, column: 6, scope: !2062)
!2109 = !DILocation(line: 157, column: 3, scope: !2069)
!2110 = !DILocation(line: 157, column: 17, scope: !2069)
!2111 = !DILocation(line: 157, column: 28, scope: !2069)
!2112 = !DILocation(line: 157, column: 38, scope: !2069)
!2113 = !DILocation(line: 158, column: 3, scope: !2069)
!2114 = !DILocation(line: 158, column: 17, scope: !2069)
!2115 = !DILocation(line: 158, column: 29, scope: !2069)
!2116 = !DILocation(line: 158, column: 39, scope: !2069)
!2117 = !DILocation(line: 160, column: 17, scope: !2069)
!2118 = !DILocation(line: 160, column: 3, scope: !2069)
!2119 = !DILocation(line: 161, column: 2, scope: !2070)
!2120 = !DILocation(line: 161, column: 2, scope: !2069)
!2121 = !DILocation(line: 162, column: 1, scope: !2062)
!2122 = !DISubprogram(name: "init_timer_key", scope: !1198, file: !1198, line: 91, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !1212, !1209, !7, !156, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!2126 = distinct !DISubprogram(name: "led_timer_function", scope: !3, file: !3, line: 60, type: !1210, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2127 = !{!2128, !2129, !2130, !2132, !2133}
!2128 = !DILocalVariable(name: "t", arg: 1, scope: !2126, file: !3, line: 60, type: !1212)
!2129 = !DILocalVariable(name: "led_cdev", scope: !2126, file: !3, line: 62, type: !152)
!2130 = !DILocalVariable(name: "__mptr", scope: !2131, file: !3, line: 62, type: !138)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 62, column: 34)
!2132 = !DILocalVariable(name: "brightness", scope: !2126, file: !3, line: 63, type: !139)
!2133 = !DILocalVariable(name: "delay", scope: !2126, file: !3, line: 64, type: !139)
!2134 = !DILocation(line: 60, column: 51, scope: !2126)
!2135 = !DILocation(line: 62, column: 2, scope: !2126)
!2136 = !DILocation(line: 62, column: 23, scope: !2126)
!2137 = !DILocation(line: 62, column: 34, scope: !2131)
!2138 = !DILocation(line: 62, column: 34, scope: !2126)
!2139 = !DILocation(line: 63, column: 2, scope: !2126)
!2140 = !DILocation(line: 63, column: 16, scope: !2126)
!2141 = !DILocation(line: 64, column: 2, scope: !2126)
!2142 = !DILocation(line: 64, column: 16, scope: !2126)
!2143 = !DILocation(line: 66, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 66, column: 6)
!2145 = !DILocation(line: 66, column: 17, scope: !2144)
!2146 = !DILocation(line: 66, column: 32, scope: !2144)
!2147 = !DILocation(line: 66, column: 36, scope: !2144)
!2148 = !DILocation(line: 66, column: 46, scope: !2144)
!2149 = !DILocation(line: 66, column: 6, scope: !2126)
!2150 = !DILocation(line: 67, column: 30, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 66, column: 63)
!2152 = !DILocation(line: 67, column: 3, scope: !2151)
!2153 = !DILocation(line: 68, column: 28, scope: !2151)
!2154 = !DILocation(line: 68, column: 38, scope: !2151)
!2155 = !DILocation(line: 68, column: 3, scope: !2151)
!2156 = !DILocation(line: 69, column: 3, scope: !2151)
!2157 = !DILocation(line: 73, column: 12, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 72, column: 6)
!2159 = !DILocation(line: 73, column: 22, scope: !2158)
!2160 = !DILocation(line: 72, column: 6, scope: !2158)
!2161 = !DILocation(line: 72, column: 6, scope: !2126)
!2162 = !DILocation(line: 74, column: 28, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 73, column: 35)
!2164 = !DILocation(line: 74, column: 38, scope: !2163)
!2165 = !DILocation(line: 74, column: 3, scope: !2163)
!2166 = !DILocation(line: 75, column: 3, scope: !2163)
!2167 = !DILocation(line: 78, column: 34, scope: !2126)
!2168 = !DILocation(line: 78, column: 15, scope: !2126)
!2169 = !DILocation(line: 78, column: 13, scope: !2126)
!2170 = !DILocation(line: 79, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 79, column: 6)
!2172 = !DILocation(line: 79, column: 6, scope: !2126)
!2173 = !DILocation(line: 82, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 81, column: 7)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 79, column: 19)
!2176 = !DILocation(line: 82, column: 17, scope: !2174)
!2177 = !DILocation(line: 81, column: 7, scope: !2174)
!2178 = !DILocation(line: 81, column: 7, scope: !2175)
!2179 = !DILocation(line: 83, column: 17, scope: !2174)
!2180 = !DILocation(line: 83, column: 27, scope: !2174)
!2181 = !DILocation(line: 83, column: 15, scope: !2174)
!2182 = !DILocation(line: 83, column: 4, scope: !2174)
!2183 = !DILocation(line: 85, column: 17, scope: !2174)
!2184 = !DILocation(line: 85, column: 27, scope: !2174)
!2185 = !DILocation(line: 85, column: 15, scope: !2174)
!2186 = !DILocation(line: 86, column: 11, scope: !2175)
!2187 = !DILocation(line: 86, column: 21, scope: !2175)
!2188 = !DILocation(line: 86, column: 9, scope: !2175)
!2189 = !DILocation(line: 87, column: 2, scope: !2175)
!2190 = !DILocation(line: 91, column: 32, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 87, column: 9)
!2192 = !DILocation(line: 91, column: 3, scope: !2191)
!2193 = !DILocation(line: 91, column: 13, scope: !2191)
!2194 = !DILocation(line: 91, column: 30, scope: !2191)
!2195 = !DILocation(line: 92, column: 14, scope: !2191)
!2196 = !DILocation(line: 93, column: 11, scope: !2191)
!2197 = !DILocation(line: 93, column: 21, scope: !2191)
!2198 = !DILocation(line: 93, column: 9, scope: !2191)
!2199 = !DILocation(line: 96, column: 29, scope: !2126)
!2200 = !DILocation(line: 96, column: 39, scope: !2126)
!2201 = !DILocation(line: 96, column: 2, scope: !2126)
!2202 = !DILocation(line: 102, column: 6, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 102, column: 6)
!2204 = !DILocation(line: 102, column: 6, scope: !2126)
!2205 = !DILocation(line: 103, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 103, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 102, column: 58)
!2208 = !DILocation(line: 103, column: 7, scope: !2207)
!2209 = !DILocation(line: 104, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 104, column: 8)
!2211 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 103, column: 58)
!2212 = !DILocation(line: 104, column: 8, scope: !2211)
!2213 = !DILocation(line: 106, column: 7, scope: !2210)
!2214 = !DILocation(line: 106, column: 17, scope: !2210)
!2215 = !DILocation(line: 105, column: 5, scope: !2210)
!2216 = !DILocation(line: 107, column: 3, scope: !2211)
!2217 = !DILocation(line: 108, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 108, column: 8)
!2219 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 107, column: 10)
!2220 = !DILocation(line: 108, column: 8, scope: !2219)
!2221 = !DILocation(line: 110, column: 7, scope: !2218)
!2222 = !DILocation(line: 110, column: 17, scope: !2218)
!2223 = !DILocation(line: 109, column: 5, scope: !2218)
!2224 = !DILocation(line: 112, column: 2, scope: !2207)
!2225 = !DILocation(line: 114, column: 13, scope: !2126)
!2226 = !DILocation(line: 114, column: 23, scope: !2126)
!2227 = !DILocation(line: 114, column: 36, scope: !2126)
!2228 = !DILocation(line: 114, column: 63, scope: !2126)
!2229 = !DILocation(line: 114, column: 46, scope: !2126)
!2230 = !DILocation(line: 114, column: 44, scope: !2126)
!2231 = !DILocation(line: 114, column: 2, scope: !2126)
!2232 = !DILocation(line: 115, column: 1, scope: !2126)
!2233 = distinct !DISubprogram(name: "led_blink_set", scope: !3, file: !3, line: 221, type: !2234, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !152, !180, !180}
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2233, file: !3, line: 221, type: !152)
!2238 = !DILocalVariable(name: "delay_on", arg: 2, scope: !2233, file: !3, line: 222, type: !180)
!2239 = !DILocalVariable(name: "delay_off", arg: 3, scope: !2233, file: !3, line: 223, type: !180)
!2240 = !DILocation(line: 221, column: 41, scope: !2233)
!2241 = !DILocation(line: 222, column: 21, scope: !2233)
!2242 = !DILocation(line: 223, column: 21, scope: !2233)
!2243 = !DILocation(line: 225, column: 18, scope: !2233)
!2244 = !DILocation(line: 225, column: 28, scope: !2233)
!2245 = !DILocation(line: 225, column: 2, scope: !2233)
!2246 = !DILocation(line: 227, column: 27, scope: !2233)
!2247 = !DILocation(line: 227, column: 37, scope: !2233)
!2248 = !DILocation(line: 227, column: 2, scope: !2233)
!2249 = !DILocation(line: 228, column: 32, scope: !2233)
!2250 = !DILocation(line: 228, column: 42, scope: !2233)
!2251 = !DILocation(line: 228, column: 2, scope: !2233)
!2252 = !DILocation(line: 229, column: 37, scope: !2233)
!2253 = !DILocation(line: 229, column: 47, scope: !2233)
!2254 = !DILocation(line: 229, column: 2, scope: !2233)
!2255 = !DILocation(line: 231, column: 18, scope: !2233)
!2256 = !DILocation(line: 231, column: 28, scope: !2233)
!2257 = !DILocation(line: 231, column: 38, scope: !2233)
!2258 = !DILocation(line: 231, column: 2, scope: !2233)
!2259 = !DILocation(line: 232, column: 1, scope: !2233)
!2260 = distinct !DISubprogram(name: "del_timer_sync", scope: !1198, file: !1198, line: 198, type: !2261, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!53, !1212}
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "timer", arg: 1, scope: !2260, file: !1198, line: 198, type: !1212)
!2265 = !DILocation(line: 198, column: 53, scope: !2260)
!2266 = !DILocation(line: 200, column: 27, scope: !2260)
!2267 = !DILocation(line: 200, column: 9, scope: !2260)
!2268 = !DILocation(line: 200, column: 2, scope: !2260)
!2269 = distinct !DISubprogram(name: "clear_bit", scope: !2270, file: !2270, line: 39, type: !2271, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2275)
!2270 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !320, !2273}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !139)
!2275 = !{!2276, !2277}
!2276 = !DILocalVariable(name: "nr", arg: 1, scope: !2269, file: !2270, line: 39, type: !320)
!2277 = !DILocalVariable(name: "addr", arg: 2, scope: !2269, file: !2270, line: 39, type: !2273)
!2278 = !DILocation(line: 39, column: 44, scope: !2269)
!2279 = !DILocation(line: 39, column: 72, scope: !2269)
!2280 = !DILocation(line: 41, column: 26, scope: !2269)
!2281 = !DILocation(line: 41, column: 33, scope: !2269)
!2282 = !DILocation(line: 41, column: 31, scope: !2269)
!2283 = !DILocation(line: 41, column: 2, scope: !2269)
!2284 = !DILocation(line: 42, column: 17, scope: !2269)
!2285 = !DILocation(line: 42, column: 21, scope: !2269)
!2286 = !DILocation(line: 42, column: 2, scope: !2269)
!2287 = !DILocation(line: 43, column: 1, scope: !2269)
!2288 = distinct !DISubprogram(name: "led_blink_setup", scope: !3, file: !3, line: 197, type: !2234, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2289 = !{!2290, !2291, !2292}
!2290 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2288, file: !3, line: 197, type: !152)
!2291 = !DILocalVariable(name: "delay_on", arg: 2, scope: !2288, file: !3, line: 198, type: !180)
!2292 = !DILocalVariable(name: "delay_off", arg: 3, scope: !2288, file: !3, line: 199, type: !180)
!2293 = !DILocation(line: 197, column: 50, scope: !2288)
!2294 = !DILocation(line: 198, column: 23, scope: !2288)
!2295 = !DILocation(line: 199, column: 23, scope: !2288)
!2296 = !DILocation(line: 201, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 201, column: 6)
!2298 = !DILocation(line: 201, column: 58, scope: !2297)
!2299 = !DILocation(line: 202, column: 6, scope: !2297)
!2300 = !DILocation(line: 202, column: 16, scope: !2297)
!2301 = !DILocation(line: 202, column: 26, scope: !2297)
!2302 = !DILocation(line: 203, column: 7, scope: !2297)
!2303 = !DILocation(line: 203, column: 17, scope: !2297)
!2304 = !DILocation(line: 203, column: 27, scope: !2297)
!2305 = !DILocation(line: 203, column: 37, scope: !2297)
!2306 = !DILocation(line: 203, column: 47, scope: !2297)
!2307 = !DILocation(line: 201, column: 6, scope: !2288)
!2308 = !DILocation(line: 204, column: 3, scope: !2297)
!2309 = !DILocation(line: 207, column: 8, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 207, column: 6)
!2311 = !DILocation(line: 207, column: 7, scope: !2310)
!2312 = !DILocation(line: 207, column: 17, scope: !2310)
!2313 = !DILocation(line: 207, column: 22, scope: !2310)
!2314 = !DILocation(line: 207, column: 21, scope: !2310)
!2315 = !DILocation(line: 207, column: 6, scope: !2288)
!2316 = !DILocation(line: 208, column: 16, scope: !2310)
!2317 = !DILocation(line: 208, column: 26, scope: !2310)
!2318 = !DILocation(line: 208, column: 4, scope: !2310)
!2319 = !DILocation(line: 208, column: 13, scope: !2310)
!2320 = !DILocation(line: 208, column: 3, scope: !2310)
!2321 = !DILocation(line: 210, column: 25, scope: !2288)
!2322 = !DILocation(line: 210, column: 36, scope: !2288)
!2323 = !DILocation(line: 210, column: 35, scope: !2288)
!2324 = !DILocation(line: 210, column: 47, scope: !2288)
!2325 = !DILocation(line: 210, column: 46, scope: !2288)
!2326 = !DILocation(line: 210, column: 2, scope: !2288)
!2327 = !DILocation(line: 211, column: 1, scope: !2288)
!2328 = distinct !DISubprogram(name: "led_blink_set_oneshot", scope: !3, file: !3, line: 235, type: !2329, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !152, !180, !180, !53}
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2328, file: !3, line: 235, type: !152)
!2333 = !DILocalVariable(name: "delay_on", arg: 2, scope: !2328, file: !3, line: 236, type: !180)
!2334 = !DILocalVariable(name: "delay_off", arg: 3, scope: !2328, file: !3, line: 237, type: !180)
!2335 = !DILocalVariable(name: "invert", arg: 4, scope: !2328, file: !3, line: 238, type: !53)
!2336 = !DILocation(line: 235, column: 49, scope: !2328)
!2337 = !DILocation(line: 236, column: 22, scope: !2328)
!2338 = !DILocation(line: 237, column: 22, scope: !2328)
!2339 = !DILocation(line: 238, column: 11, scope: !2328)
!2340 = !DILocation(line: 240, column: 6, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 240, column: 6)
!2342 = !DILocation(line: 240, column: 57, scope: !2341)
!2343 = !DILocation(line: 241, column: 22, scope: !2341)
!2344 = !DILocation(line: 241, column: 32, scope: !2341)
!2345 = !DILocation(line: 241, column: 7, scope: !2341)
!2346 = !DILocation(line: 240, column: 6, scope: !2328)
!2347 = !DILocation(line: 242, column: 3, scope: !2341)
!2348 = !DILocation(line: 244, column: 30, scope: !2328)
!2349 = !DILocation(line: 244, column: 40, scope: !2328)
!2350 = !DILocation(line: 244, column: 2, scope: !2328)
!2351 = !DILocation(line: 245, column: 37, scope: !2328)
!2352 = !DILocation(line: 245, column: 47, scope: !2328)
!2353 = !DILocation(line: 245, column: 2, scope: !2328)
!2354 = !DILocation(line: 247, column: 6, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 247, column: 6)
!2356 = !DILocation(line: 247, column: 6, scope: !2328)
!2357 = !DILocation(line: 248, column: 30, scope: !2355)
!2358 = !DILocation(line: 248, column: 40, scope: !2355)
!2359 = !DILocation(line: 248, column: 3, scope: !2355)
!2360 = !DILocation(line: 250, column: 32, scope: !2355)
!2361 = !DILocation(line: 250, column: 42, scope: !2355)
!2362 = !DILocation(line: 250, column: 3, scope: !2355)
!2363 = !DILocation(line: 252, column: 18, scope: !2328)
!2364 = !DILocation(line: 252, column: 28, scope: !2328)
!2365 = !DILocation(line: 252, column: 38, scope: !2328)
!2366 = !DILocation(line: 252, column: 2, scope: !2328)
!2367 = !DILocation(line: 253, column: 1, scope: !2328)
!2368 = distinct !DISubprogram(name: "const_test_bit", scope: !2369, file: !2369, line: 166, type: !2370, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2374)
!2369 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!639, !139, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2374 = !{!2375, !2376, !2377, !2378, !2379}
!2375 = !DILocalVariable(name: "nr", arg: 1, scope: !2368, file: !2369, line: 166, type: !139)
!2376 = !DILocalVariable(name: "addr", arg: 2, scope: !2368, file: !2369, line: 166, type: !2372)
!2377 = !DILocalVariable(name: "p", scope: !2368, file: !2369, line: 168, type: !142)
!2378 = !DILocalVariable(name: "mask", scope: !2368, file: !2369, line: 169, type: !139)
!2379 = !DILocalVariable(name: "val", scope: !2368, file: !2369, line: 170, type: !139)
!2380 = !DILocation(line: 166, column: 30, scope: !2368)
!2381 = !DILocation(line: 166, column: 64, scope: !2368)
!2382 = !DILocation(line: 168, column: 2, scope: !2368)
!2383 = !DILocation(line: 168, column: 23, scope: !2368)
!2384 = !DILocation(line: 168, column: 50, scope: !2368)
!2385 = !DILocation(line: 168, column: 57, scope: !2368)
!2386 = !DILocation(line: 168, column: 55, scope: !2368)
!2387 = !DILocation(line: 169, column: 2, scope: !2368)
!2388 = !DILocation(line: 169, column: 16, scope: !2368)
!2389 = !DILocation(line: 169, column: 23, scope: !2368)
!2390 = !DILocation(line: 170, column: 2, scope: !2368)
!2391 = !DILocation(line: 170, column: 16, scope: !2368)
!2392 = !DILocation(line: 170, column: 23, scope: !2368)
!2393 = !DILocation(line: 170, column: 22, scope: !2368)
!2394 = !DILocation(line: 172, column: 12, scope: !2368)
!2395 = !DILocation(line: 172, column: 18, scope: !2368)
!2396 = !DILocation(line: 172, column: 16, scope: !2368)
!2397 = !DILocation(line: 172, column: 10, scope: !2368)
!2398 = !DILocation(line: 172, column: 9, scope: !2368)
!2399 = !DILocation(line: 173, column: 1, scope: !2368)
!2400 = !DILocation(line: 172, column: 2, scope: !2368)
!2401 = distinct !DISubprogram(name: "_test_bit", scope: !2402, file: !2402, line: 139, type: !2370, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2402 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "nr", arg: 1, scope: !2401, file: !2402, line: 139, type: !139)
!2405 = !DILocalVariable(name: "addr", arg: 2, scope: !2401, file: !2402, line: 139, type: !2372)
!2406 = !DILocation(line: 139, column: 25, scope: !2401)
!2407 = !DILocation(line: 139, column: 59, scope: !2401)
!2408 = !DILocation(line: 141, column: 25, scope: !2401)
!2409 = !DILocation(line: 141, column: 32, scope: !2401)
!2410 = !DILocation(line: 141, column: 30, scope: !2401)
!2411 = !DILocation(line: 141, column: 2, scope: !2401)
!2412 = !DILocation(line: 142, column: 23, scope: !2401)
!2413 = !DILocation(line: 142, column: 27, scope: !2401)
!2414 = !DILocation(line: 142, column: 9, scope: !2401)
!2415 = !DILocation(line: 142, column: 2, scope: !2401)
!2416 = distinct !DISubprogram(name: "timer_pending", scope: !1198, file: !1198, line: 166, type: !2417, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2421)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!53, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!2421 = !{!2422}
!2422 = !DILocalVariable(name: "timer", arg: 1, scope: !2416, file: !1198, line: 166, type: !2419)
!2423 = !DILocation(line: 166, column: 59, scope: !2416)
!2424 = !DILocation(line: 168, column: 35, scope: !2416)
!2425 = !DILocation(line: 168, column: 42, scope: !2416)
!2426 = !DILocation(line: 168, column: 10, scope: !2416)
!2427 = !DILocation(line: 168, column: 9, scope: !2416)
!2428 = !DILocation(line: 168, column: 2, scope: !2416)
!2429 = distinct !DISubprogram(name: "set_bit", scope: !2270, file: !2270, line: 26, type: !2271, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2430)
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "nr", arg: 1, scope: !2429, file: !2270, line: 26, type: !320)
!2432 = !DILocalVariable(name: "addr", arg: 2, scope: !2429, file: !2270, line: 26, type: !2273)
!2433 = !DILocation(line: 26, column: 42, scope: !2429)
!2434 = !DILocation(line: 26, column: 70, scope: !2429)
!2435 = !DILocation(line: 28, column: 26, scope: !2429)
!2436 = !DILocation(line: 28, column: 33, scope: !2429)
!2437 = !DILocation(line: 28, column: 31, scope: !2429)
!2438 = !DILocation(line: 28, column: 2, scope: !2429)
!2439 = !DILocation(line: 29, column: 15, scope: !2429)
!2440 = !DILocation(line: 29, column: 19, scope: !2429)
!2441 = !DILocation(line: 29, column: 2, scope: !2429)
!2442 = !DILocation(line: 30, column: 1, scope: !2429)
!2443 = distinct !DISubprogram(name: "led_blink_set_nosleep", scope: !3, file: !3, line: 256, type: !2444, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !152, !139, !139}
!2446 = !{!2447, !2448, !2449}
!2447 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2443, file: !3, line: 256, type: !152)
!2448 = !DILocalVariable(name: "delay_on", arg: 2, scope: !2443, file: !3, line: 256, type: !139)
!2449 = !DILocalVariable(name: "delay_off", arg: 3, scope: !2443, file: !3, line: 257, type: !139)
!2450 = !DILocation(line: 256, column: 49, scope: !2443)
!2451 = !DILocation(line: 256, column: 73, scope: !2443)
!2452 = !DILocation(line: 257, column: 21, scope: !2443)
!2453 = !DILocation(line: 260, column: 6, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 260, column: 6)
!2455 = !DILocation(line: 260, column: 16, scope: !2454)
!2456 = !DILocation(line: 260, column: 26, scope: !2454)
!2457 = !DILocation(line: 260, column: 29, scope: !2454)
!2458 = !DILocation(line: 260, column: 39, scope: !2454)
!2459 = !DILocation(line: 260, column: 6, scope: !2443)
!2460 = !DILocation(line: 261, column: 32, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 260, column: 64)
!2462 = !DILocation(line: 261, column: 3, scope: !2461)
!2463 = !DILocation(line: 261, column: 13, scope: !2461)
!2464 = !DILocation(line: 261, column: 30, scope: !2461)
!2465 = !DILocation(line: 262, column: 33, scope: !2461)
!2466 = !DILocation(line: 262, column: 3, scope: !2461)
!2467 = !DILocation(line: 262, column: 13, scope: !2461)
!2468 = !DILocation(line: 262, column: 31, scope: !2461)
!2469 = !DILocation(line: 263, column: 27, scope: !2461)
!2470 = !DILocation(line: 263, column: 37, scope: !2461)
!2471 = !DILocation(line: 263, column: 3, scope: !2461)
!2472 = !DILocation(line: 264, column: 18, scope: !2461)
!2473 = !DILocation(line: 264, column: 28, scope: !2461)
!2474 = !DILocation(line: 264, column: 3, scope: !2461)
!2475 = !DILocation(line: 265, column: 3, scope: !2461)
!2476 = !DILocation(line: 268, column: 16, scope: !2443)
!2477 = !DILocation(line: 268, column: 2, scope: !2443)
!2478 = !DILocation(line: 269, column: 1, scope: !2443)
!2479 = distinct !DISubprogram(name: "schedule_work", scope: !92, file: !92, line: 621, type: !2480, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!639, !614}
!2482 = !{!2483}
!2483 = !DILocalVariable(name: "work", arg: 1, scope: !2479, file: !92, line: 621, type: !614)
!2484 = !DILocation(line: 621, column: 54, scope: !2479)
!2485 = !DILocation(line: 623, column: 20, scope: !2479)
!2486 = !DILocation(line: 623, column: 31, scope: !2479)
!2487 = !DILocation(line: 623, column: 9, scope: !2479)
!2488 = !DILocation(line: 623, column: 2, scope: !2479)
!2489 = distinct !DISubprogram(name: "led_stop_software_blink", scope: !3, file: !3, line: 272, type: !1807, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2489, file: !3, line: 272, type: !152)
!2492 = !DILocation(line: 272, column: 51, scope: !2489)
!2493 = !DILocation(line: 274, column: 18, scope: !2489)
!2494 = !DILocation(line: 274, column: 28, scope: !2489)
!2495 = !DILocation(line: 274, column: 2, scope: !2489)
!2496 = !DILocation(line: 275, column: 2, scope: !2489)
!2497 = !DILocation(line: 275, column: 12, scope: !2489)
!2498 = !DILocation(line: 275, column: 27, scope: !2489)
!2499 = !DILocation(line: 276, column: 2, scope: !2489)
!2500 = !DILocation(line: 276, column: 12, scope: !2489)
!2501 = !DILocation(line: 276, column: 28, scope: !2489)
!2502 = !DILocation(line: 277, column: 27, scope: !2489)
!2503 = !DILocation(line: 277, column: 37, scope: !2489)
!2504 = !DILocation(line: 277, column: 2, scope: !2489)
!2505 = !DILocation(line: 278, column: 1, scope: !2489)
!2506 = distinct !DISubprogram(name: "led_set_brightness", scope: !3, file: !3, line: 281, type: !2507, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !152, !7}
!2509 = !{!2510, !2511}
!2510 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2506, file: !3, line: 281, type: !152)
!2511 = !DILocalVariable(name: "brightness", arg: 2, scope: !2506, file: !3, line: 281, type: !7)
!2512 = !DILocation(line: 281, column: 46, scope: !2506)
!2513 = !DILocation(line: 281, column: 69, scope: !2506)
!2514 = !DILocation(line: 287, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 287, column: 6)
!2516 = !DILocation(line: 287, column: 6, scope: !2506)
!2517 = !DILocation(line: 293, column: 8, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 293, column: 7)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 287, column: 53)
!2520 = !DILocation(line: 293, column: 7, scope: !2519)
!2521 = !DILocation(line: 294, column: 32, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 293, column: 20)
!2523 = !DILocation(line: 294, column: 42, scope: !2522)
!2524 = !DILocation(line: 294, column: 4, scope: !2522)
!2525 = !DILocation(line: 295, column: 19, scope: !2522)
!2526 = !DILocation(line: 295, column: 29, scope: !2522)
!2527 = !DILocation(line: 295, column: 4, scope: !2522)
!2528 = !DILocation(line: 296, column: 3, scope: !2522)
!2529 = !DILocation(line: 298, column: 6, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 296, column: 10)
!2531 = !DILocation(line: 298, column: 16, scope: !2530)
!2532 = !DILocation(line: 297, column: 4, scope: !2530)
!2533 = !DILocation(line: 299, column: 37, scope: !2530)
!2534 = !DILocation(line: 299, column: 4, scope: !2530)
!2535 = !DILocation(line: 299, column: 14, scope: !2530)
!2536 = !DILocation(line: 299, column: 35, scope: !2530)
!2537 = !DILocation(line: 301, column: 3, scope: !2519)
!2538 = !DILocation(line: 304, column: 29, scope: !2506)
!2539 = !DILocation(line: 304, column: 39, scope: !2506)
!2540 = !DILocation(line: 304, column: 2, scope: !2506)
!2541 = !DILocation(line: 305, column: 1, scope: !2506)
!2542 = distinct !DISubprogram(name: "led_set_brightness_nosleep", scope: !3, file: !3, line: 335, type: !2507, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2543)
!2543 = !{!2544, !2545, !2546, !2548}
!2544 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2542, file: !3, line: 335, type: !152)
!2545 = !DILocalVariable(name: "value", arg: 2, scope: !2542, file: !3, line: 335, type: !7)
!2546 = !DILocalVariable(name: "__UNIQUE_ID___x215", scope: !2547, file: !3, line: 337, type: !7)
!2547 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 337, column: 25)
!2548 = !DILocalVariable(name: "__UNIQUE_ID___y216", scope: !2547, file: !3, line: 337, type: !7)
!2549 = !DILocation(line: 335, column: 54, scope: !2542)
!2550 = !DILocation(line: 335, column: 77, scope: !2542)
!2551 = !DILocation(line: 337, column: 25, scope: !2547)
!2552 = !DILocation(line: 337, column: 25, scope: !2542)
!2553 = !DILocation(line: 337, column: 2, scope: !2542)
!2554 = !DILocation(line: 337, column: 12, scope: !2542)
!2555 = !DILocation(line: 337, column: 23, scope: !2542)
!2556 = !DILocation(line: 339, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 339, column: 6)
!2558 = !DILocation(line: 339, column: 16, scope: !2557)
!2559 = !DILocation(line: 339, column: 22, scope: !2557)
!2560 = !DILocation(line: 339, column: 6, scope: !2542)
!2561 = !DILocation(line: 340, column: 3, scope: !2557)
!2562 = !DILocation(line: 342, column: 26, scope: !2542)
!2563 = !DILocation(line: 342, column: 36, scope: !2542)
!2564 = !DILocation(line: 342, column: 46, scope: !2542)
!2565 = !DILocation(line: 342, column: 2, scope: !2542)
!2566 = !DILocation(line: 343, column: 1, scope: !2542)
!2567 = distinct !DISubprogram(name: "led_set_brightness_nopm", scope: !3, file: !3, line: 308, type: !2507, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2568)
!2568 = !{!2569, !2570}
!2569 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2567, file: !3, line: 308, type: !152)
!2570 = !DILocalVariable(name: "value", arg: 2, scope: !2567, file: !3, line: 308, type: !7)
!2571 = !DILocation(line: 308, column: 51, scope: !2567)
!2572 = !DILocation(line: 308, column: 74, scope: !2567)
!2573 = !DILocation(line: 311, column: 28, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 311, column: 6)
!2575 = !DILocation(line: 311, column: 38, scope: !2574)
!2576 = !DILocation(line: 311, column: 7, scope: !2574)
!2577 = !DILocation(line: 311, column: 6, scope: !2567)
!2578 = !DILocation(line: 312, column: 3, scope: !2574)
!2579 = !DILocation(line: 322, column: 6, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 322, column: 6)
!2581 = !DILocation(line: 322, column: 6, scope: !2567)
!2582 = !DILocation(line: 323, column: 33, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 322, column: 13)
!2584 = !DILocation(line: 323, column: 3, scope: !2583)
!2585 = !DILocation(line: 323, column: 13, scope: !2583)
!2586 = !DILocation(line: 323, column: 31, scope: !2583)
!2587 = !DILocation(line: 324, column: 32, scope: !2583)
!2588 = !DILocation(line: 324, column: 42, scope: !2583)
!2589 = !DILocation(line: 324, column: 3, scope: !2583)
!2590 = !DILocation(line: 325, column: 2, scope: !2583)
!2591 = !DILocation(line: 326, column: 34, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 325, column: 9)
!2593 = !DILocation(line: 326, column: 44, scope: !2592)
!2594 = !DILocation(line: 326, column: 3, scope: !2592)
!2595 = !DILocation(line: 327, column: 29, scope: !2592)
!2596 = !DILocation(line: 327, column: 39, scope: !2592)
!2597 = !DILocation(line: 327, column: 3, scope: !2592)
!2598 = !DILocation(line: 328, column: 36, scope: !2592)
!2599 = !DILocation(line: 328, column: 46, scope: !2592)
!2600 = !DILocation(line: 328, column: 3, scope: !2592)
!2601 = !DILocation(line: 331, column: 17, scope: !2567)
!2602 = !DILocation(line: 331, column: 27, scope: !2567)
!2603 = !DILocation(line: 331, column: 2, scope: !2567)
!2604 = !DILocation(line: 332, column: 1, scope: !2567)
!2605 = distinct !DISubprogram(name: "__led_set_brightness", scope: !3, file: !3, line: 42, type: !2606, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!53, !152, !7}
!2608 = !{!2609, !2610}
!2609 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2605, file: !3, line: 42, type: !152)
!2610 = !DILocalVariable(name: "value", arg: 2, scope: !2605, file: !3, line: 42, type: !7)
!2611 = !DILocation(line: 42, column: 54, scope: !2605)
!2612 = !DILocation(line: 42, column: 77, scope: !2605)
!2613 = !DILocation(line: 44, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 44, column: 6)
!2615 = !DILocation(line: 44, column: 17, scope: !2614)
!2616 = !DILocation(line: 44, column: 6, scope: !2605)
!2617 = !DILocation(line: 45, column: 3, scope: !2614)
!2618 = !DILocation(line: 47, column: 2, scope: !2605)
!2619 = !DILocation(line: 47, column: 12, scope: !2605)
!2620 = !DILocation(line: 47, column: 27, scope: !2605)
!2621 = !DILocation(line: 47, column: 37, scope: !2605)
!2622 = !DILocation(line: 49, column: 2, scope: !2605)
!2623 = !DILocation(line: 50, column: 1, scope: !2605)
!2624 = distinct !DISubprogram(name: "led_set_brightness_sync", scope: !3, file: !3, line: 346, type: !2606, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2625 = !{!2626, !2627, !2628, !2630}
!2626 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2624, file: !3, line: 346, type: !152)
!2627 = !DILocalVariable(name: "value", arg: 2, scope: !2624, file: !3, line: 346, type: !7)
!2628 = !DILocalVariable(name: "__UNIQUE_ID___x218", scope: !2629, file: !3, line: 351, type: !7)
!2629 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 351, column: 25)
!2630 = !DILocalVariable(name: "__UNIQUE_ID___y219", scope: !2629, file: !3, line: 351, type: !7)
!2631 = !DILocation(line: 346, column: 50, scope: !2624)
!2632 = !DILocation(line: 346, column: 73, scope: !2624)
!2633 = !DILocation(line: 348, column: 6, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 348, column: 6)
!2635 = !DILocation(line: 348, column: 16, scope: !2634)
!2636 = !DILocation(line: 348, column: 31, scope: !2634)
!2637 = !DILocation(line: 348, column: 34, scope: !2634)
!2638 = !DILocation(line: 348, column: 44, scope: !2634)
!2639 = !DILocation(line: 348, column: 6, scope: !2624)
!2640 = !DILocation(line: 349, column: 3, scope: !2634)
!2641 = !DILocation(line: 351, column: 25, scope: !2629)
!2642 = !DILocation(line: 351, column: 25, scope: !2624)
!2643 = !DILocation(line: 351, column: 2, scope: !2624)
!2644 = !DILocation(line: 351, column: 12, scope: !2624)
!2645 = !DILocation(line: 351, column: 23, scope: !2624)
!2646 = !DILocation(line: 353, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 353, column: 6)
!2648 = !DILocation(line: 353, column: 16, scope: !2647)
!2649 = !DILocation(line: 353, column: 22, scope: !2647)
!2650 = !DILocation(line: 353, column: 6, scope: !2624)
!2651 = !DILocation(line: 354, column: 3, scope: !2647)
!2652 = !DILocation(line: 356, column: 39, scope: !2624)
!2653 = !DILocation(line: 356, column: 49, scope: !2624)
!2654 = !DILocation(line: 356, column: 59, scope: !2624)
!2655 = !DILocation(line: 356, column: 9, scope: !2624)
!2656 = !DILocation(line: 356, column: 2, scope: !2624)
!2657 = !DILocation(line: 357, column: 1, scope: !2624)
!2658 = distinct !DISubprogram(name: "__led_set_brightness_blocking", scope: !3, file: !3, line: 52, type: !2606, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2658, file: !3, line: 52, type: !152)
!2661 = !DILocalVariable(name: "value", arg: 2, scope: !2658, file: !3, line: 52, type: !7)
!2662 = !DILocation(line: 52, column: 63, scope: !2658)
!2663 = !DILocation(line: 52, column: 86, scope: !2658)
!2664 = !DILocation(line: 54, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 54, column: 6)
!2666 = !DILocation(line: 54, column: 17, scope: !2665)
!2667 = !DILocation(line: 54, column: 6, scope: !2658)
!2668 = !DILocation(line: 55, column: 3, scope: !2665)
!2669 = !DILocation(line: 57, column: 9, scope: !2658)
!2670 = !DILocation(line: 57, column: 19, scope: !2658)
!2671 = !DILocation(line: 57, column: 43, scope: !2658)
!2672 = !DILocation(line: 57, column: 53, scope: !2658)
!2673 = !DILocation(line: 57, column: 2, scope: !2658)
!2674 = !DILocation(line: 58, column: 1, scope: !2658)
!2675 = distinct !DISubprogram(name: "led_update_brightness", scope: !3, file: !3, line: 360, type: !196, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2676)
!2676 = !{!2677, !2678}
!2677 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2675, file: !3, line: 360, type: !152)
!2678 = !DILocalVariable(name: "ret", scope: !2675, file: !3, line: 362, type: !53)
!2679 = !DILocation(line: 360, column: 48, scope: !2675)
!2680 = !DILocation(line: 362, column: 2, scope: !2675)
!2681 = !DILocation(line: 362, column: 6, scope: !2675)
!2682 = !DILocation(line: 364, column: 6, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 364, column: 6)
!2684 = !DILocation(line: 364, column: 16, scope: !2683)
!2685 = !DILocation(line: 364, column: 6, scope: !2675)
!2686 = !DILocation(line: 365, column: 9, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 364, column: 32)
!2688 = !DILocation(line: 365, column: 19, scope: !2687)
!2689 = !DILocation(line: 365, column: 34, scope: !2687)
!2690 = !DILocation(line: 365, column: 7, scope: !2687)
!2691 = !DILocation(line: 366, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 366, column: 7)
!2693 = !DILocation(line: 366, column: 11, scope: !2692)
!2694 = !DILocation(line: 366, column: 7, scope: !2687)
!2695 = !DILocation(line: 367, column: 27, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 366, column: 17)
!2697 = !DILocation(line: 367, column: 4, scope: !2696)
!2698 = !DILocation(line: 367, column: 14, scope: !2696)
!2699 = !DILocation(line: 367, column: 25, scope: !2696)
!2700 = !DILocation(line: 368, column: 4, scope: !2696)
!2701 = !DILocation(line: 370, column: 2, scope: !2687)
!2702 = !DILocation(line: 372, column: 9, scope: !2675)
!2703 = !DILocation(line: 372, column: 2, scope: !2675)
!2704 = !DILocation(line: 373, column: 1, scope: !2675)
!2705 = distinct !DISubprogram(name: "led_get_default_pattern", scope: !3, file: !3, line: 376, type: !2706, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2709)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!2708, !152, !1054}
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2709 = !{!2710, !2711, !2712, !2713, !2714}
!2710 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2705, file: !3, line: 376, type: !152)
!2711 = !DILocalVariable(name: "size", arg: 2, scope: !2705, file: !3, line: 376, type: !1054)
!2712 = !DILocalVariable(name: "fwnode", scope: !2705, file: !3, line: 378, type: !1624)
!2713 = !DILocalVariable(name: "pattern", scope: !2705, file: !3, line: 379, type: !2708)
!2714 = !DILocalVariable(name: "count", scope: !2705, file: !3, line: 380, type: !53)
!2715 = !DILocation(line: 376, column: 51, scope: !2705)
!2716 = !DILocation(line: 376, column: 75, scope: !2705)
!2717 = !DILocation(line: 378, column: 2, scope: !2705)
!2718 = !DILocation(line: 378, column: 24, scope: !2705)
!2719 = !DILocation(line: 378, column: 33, scope: !2705)
!2720 = !DILocation(line: 378, column: 43, scope: !2705)
!2721 = !DILocation(line: 378, column: 48, scope: !2705)
!2722 = !DILocation(line: 379, column: 2, scope: !2705)
!2723 = !DILocation(line: 379, column: 7, scope: !2705)
!2724 = !DILocation(line: 380, column: 2, scope: !2705)
!2725 = !DILocation(line: 380, column: 6, scope: !2705)
!2726 = !DILocation(line: 382, column: 36, scope: !2705)
!2727 = !DILocation(line: 382, column: 10, scope: !2705)
!2728 = !DILocation(line: 382, column: 8, scope: !2705)
!2729 = !DILocation(line: 383, column: 6, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 383, column: 6)
!2731 = !DILocation(line: 383, column: 12, scope: !2730)
!2732 = !DILocation(line: 383, column: 6, scope: !2705)
!2733 = !DILocation(line: 384, column: 3, scope: !2730)
!2734 = !DILocation(line: 386, column: 20, scope: !2705)
!2735 = !DILocation(line: 386, column: 12, scope: !2705)
!2736 = !DILocation(line: 386, column: 10, scope: !2705)
!2737 = !DILocation(line: 387, column: 7, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 387, column: 6)
!2739 = !DILocation(line: 387, column: 6, scope: !2705)
!2740 = !DILocation(line: 388, column: 3, scope: !2738)
!2741 = !DILocation(line: 390, column: 37, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 390, column: 6)
!2743 = !DILocation(line: 390, column: 60, scope: !2742)
!2744 = !DILocation(line: 390, column: 69, scope: !2742)
!2745 = !DILocation(line: 390, column: 6, scope: !2742)
!2746 = !DILocation(line: 390, column: 6, scope: !2705)
!2747 = !DILocation(line: 391, column: 9, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 390, column: 77)
!2749 = !DILocation(line: 391, column: 3, scope: !2748)
!2750 = !DILocation(line: 392, column: 3, scope: !2748)
!2751 = !DILocation(line: 395, column: 10, scope: !2705)
!2752 = !DILocation(line: 395, column: 3, scope: !2705)
!2753 = !DILocation(line: 395, column: 8, scope: !2705)
!2754 = !DILocation(line: 397, column: 9, scope: !2705)
!2755 = !DILocation(line: 397, column: 2, scope: !2705)
!2756 = !DILocation(line: 398, column: 1, scope: !2705)
!2757 = distinct !DISubprogram(name: "fwnode_property_count_u32", scope: !61, file: !61, line: 289, type: !2758, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!53, !1642, !156}
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2757, file: !61, line: 289, type: !1642)
!2762 = !DILocalVariable(name: "propname", arg: 2, scope: !2757, file: !61, line: 290, type: !156)
!2763 = !DILocation(line: 289, column: 73, scope: !2757)
!2764 = !DILocation(line: 290, column: 22, scope: !2757)
!2765 = !DILocation(line: 292, column: 40, scope: !2757)
!2766 = !DILocation(line: 292, column: 48, scope: !2757)
!2767 = !DILocation(line: 292, column: 9, scope: !2757)
!2768 = !DILocation(line: 292, column: 2, scope: !2757)
!2769 = distinct !DISubprogram(name: "kcalloc", scope: !128, file: !128, line: 666, type: !2770, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!138, !331, !331, !144}
!2772 = !{!2773, !2774, !2775}
!2773 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !128, line: 666, type: !331)
!2774 = !DILocalVariable(name: "size", arg: 2, scope: !2769, file: !128, line: 666, type: !331)
!2775 = !DILocalVariable(name: "flags", arg: 3, scope: !2769, file: !128, line: 666, type: !144)
!2776 = !DILocation(line: 666, column: 55, scope: !2769)
!2777 = !DILocation(line: 666, column: 65, scope: !2769)
!2778 = !DILocation(line: 666, column: 77, scope: !2769)
!2779 = !DILocation(line: 668, column: 23, scope: !2769)
!2780 = !DILocation(line: 668, column: 26, scope: !2769)
!2781 = !DILocation(line: 668, column: 32, scope: !2769)
!2782 = !DILocation(line: 668, column: 38, scope: !2769)
!2783 = !DILocation(line: 668, column: 9, scope: !2769)
!2784 = !DILocation(line: 668, column: 2, scope: !2769)
!2785 = !DISubprogram(name: "fwnode_property_read_u32_array", scope: !61, file: !61, line: 67, type: !2786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!53, !1642, !156, !2708, !331}
!2788 = !DISubprogram(name: "kfree", scope: !128, file: !128, line: 227, type: !2789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !561}
!2791 = distinct !DISubprogram(name: "led_sysfs_disable", scope: !3, file: !3, line: 402, type: !1807, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2792)
!2792 = !{!2793}
!2793 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2791, file: !3, line: 402, type: !152)
!2794 = !DILocation(line: 402, column: 45, scope: !2791)
!2795 = !DILocation(line: 404, column: 2, scope: !2791)
!2796 = !DILocation(line: 404, column: 2, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 404, column: 2)
!2798 = !DILocation(line: 406, column: 2, scope: !2791)
!2799 = !DILocation(line: 406, column: 12, scope: !2791)
!2800 = !DILocation(line: 406, column: 18, scope: !2791)
!2801 = !DILocation(line: 407, column: 1, scope: !2791)
!2802 = distinct !DISubprogram(name: "led_sysfs_enable", scope: !3, file: !3, line: 411, type: !1807, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2803)
!2803 = !{!2804}
!2804 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !2802, file: !3, line: 411, type: !152)
!2805 = !DILocation(line: 411, column: 44, scope: !2802)
!2806 = !DILocation(line: 413, column: 2, scope: !2802)
!2807 = !DILocation(line: 413, column: 2, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 413, column: 2)
!2809 = !DILocation(line: 415, column: 2, scope: !2802)
!2810 = !DILocation(line: 415, column: 12, scope: !2802)
!2811 = !DILocation(line: 415, column: 18, scope: !2802)
!2812 = !DILocation(line: 416, column: 1, scope: !2802)
!2813 = distinct !DISubprogram(name: "led_compose_name", scope: !3, file: !3, line: 470, type: !2814, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!53, !199, !2816, !284}
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_init_data", file: !6, line: 61, size: 256, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2817, file: !6, line: 63, baseType: !1624, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "default_label", scope: !2817, file: !6, line: 70, baseType: !156, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "devicename", scope: !2817, file: !6, line: 76, baseType: !156, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "devname_mandatory", scope: !2817, file: !6, line: 82, baseType: !639, size: 8, offset: 192)
!2823 = !{!2824, !2825, !2826, !2827, !2836, !2837, !2838}
!2824 = !DILocalVariable(name: "dev", arg: 1, scope: !2813, file: !3, line: 470, type: !199)
!2825 = !DILocalVariable(name: "init_data", arg: 2, scope: !2813, file: !3, line: 470, type: !2816)
!2826 = !DILocalVariable(name: "led_classdev_name", arg: 3, scope: !2813, file: !3, line: 471, type: !284)
!2827 = !DILocalVariable(name: "props", scope: !2813, file: !3, line: 473, type: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_properties", file: !6, line: 633, size: 256, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !2828, file: !6, line: 634, baseType: !189, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "color_present", scope: !2828, file: !6, line: 635, baseType: !639, size: 8, offset: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2828, file: !6, line: 636, baseType: !156, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "func_enum", scope: !2828, file: !6, line: 637, baseType: !189, size: 32, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "func_enum_present", scope: !2828, file: !6, line: 638, baseType: !639, size: 8, offset: 160)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2828, file: !6, line: 639, baseType: !156, size: 64, offset: 192)
!2836 = !DILocalVariable(name: "fwnode", scope: !2813, file: !3, line: 474, type: !1624)
!2837 = !DILocalVariable(name: "devicename", scope: !2813, file: !3, line: 475, type: !156)
!2838 = !DILocalVariable(name: "tmp_buf", scope: !2839, file: !3, line: 497, type: !2842)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 496, column: 52)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 496, column: 13)
!2841 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 482, column: 6)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 512, elements: !289)
!2843 = !DILocation(line: 470, column: 37, scope: !2813)
!2844 = !DILocation(line: 470, column: 64, scope: !2813)
!2845 = !DILocation(line: 471, column: 14, scope: !2813)
!2846 = !DILocation(line: 473, column: 2, scope: !2813)
!2847 = !DILocation(line: 473, column: 24, scope: !2813)
!2848 = !DILocation(line: 474, column: 2, scope: !2813)
!2849 = !DILocation(line: 474, column: 24, scope: !2813)
!2850 = !DILocation(line: 474, column: 33, scope: !2813)
!2851 = !DILocation(line: 474, column: 44, scope: !2813)
!2852 = !DILocation(line: 475, column: 2, scope: !2813)
!2853 = !DILocation(line: 475, column: 14, scope: !2813)
!2854 = !DILocation(line: 475, column: 27, scope: !2813)
!2855 = !DILocation(line: 475, column: 38, scope: !2813)
!2856 = !DILocation(line: 477, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 477, column: 6)
!2858 = !DILocation(line: 477, column: 6, scope: !2813)
!2859 = !DILocation(line: 478, column: 3, scope: !2857)
!2860 = !DILocation(line: 480, column: 25, scope: !2813)
!2861 = !DILocation(line: 480, column: 30, scope: !2813)
!2862 = !DILocation(line: 480, column: 2, scope: !2813)
!2863 = !DILocation(line: 482, column: 12, scope: !2841)
!2864 = !DILocation(line: 482, column: 6, scope: !2841)
!2865 = !DILocation(line: 482, column: 6, scope: !2813)
!2866 = !DILocation(line: 489, column: 8, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 489, column: 7)
!2868 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 482, column: 19)
!2869 = !DILocation(line: 489, column: 7, scope: !2868)
!2870 = !DILocation(line: 490, column: 12, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 489, column: 20)
!2872 = !DILocation(line: 490, column: 37, scope: !2871)
!2873 = !DILocation(line: 490, column: 4, scope: !2871)
!2874 = !DILocation(line: 492, column: 3, scope: !2871)
!2875 = !DILocation(line: 493, column: 13, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 492, column: 10)
!2877 = !DILocation(line: 494, column: 6, scope: !2876)
!2878 = !DILocation(line: 494, column: 24, scope: !2876)
!2879 = !DILocation(line: 493, column: 4, scope: !2876)
!2880 = !DILocation(line: 496, column: 2, scope: !2868)
!2881 = !DILocation(line: 496, column: 19, scope: !2840)
!2882 = !DILocation(line: 496, column: 13, scope: !2840)
!2883 = !DILocation(line: 496, column: 28, scope: !2840)
!2884 = !DILocation(line: 496, column: 37, scope: !2840)
!2885 = !{i8 0, i8 2}
!2886 = !DILocation(line: 496, column: 13, scope: !2841)
!2887 = !DILocation(line: 497, column: 3, scope: !2839)
!2888 = !DILocation(line: 497, column: 8, scope: !2839)
!2889 = !DILocation(line: 499, column: 13, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 499, column: 7)
!2891 = !DILocation(line: 499, column: 7, scope: !2839)
!2892 = !DILocation(line: 500, column: 13, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 499, column: 32)
!2894 = !DILocation(line: 501, column: 12, scope: !2893)
!2895 = !DILocation(line: 501, column: 6, scope: !2893)
!2896 = !DILocation(line: 501, column: 45, scope: !2893)
!2897 = !DILocation(line: 501, column: 28, scope: !2893)
!2898 = !DILocation(line: 502, column: 12, scope: !2893)
!2899 = !DILocation(line: 502, column: 6, scope: !2893)
!2900 = !DILocation(line: 502, column: 34, scope: !2893)
!2901 = !DILocation(line: 500, column: 4, scope: !2893)
!2902 = !DILocation(line: 503, column: 3, scope: !2893)
!2903 = !DILocation(line: 504, column: 13, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 503, column: 10)
!2905 = !DILocation(line: 505, column: 12, scope: !2904)
!2906 = !DILocation(line: 505, column: 6, scope: !2904)
!2907 = !DILocation(line: 505, column: 45, scope: !2904)
!2908 = !DILocation(line: 505, column: 28, scope: !2904)
!2909 = !DILocation(line: 506, column: 12, scope: !2904)
!2910 = !DILocation(line: 506, column: 6, scope: !2904)
!2911 = !DILocation(line: 504, column: 4, scope: !2904)
!2912 = !DILocation(line: 508, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 508, column: 7)
!2914 = !DILocation(line: 508, column: 18, scope: !2913)
!2915 = !DILocation(line: 508, column: 7, scope: !2839)
!2916 = !DILocation(line: 509, column: 13, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 508, column: 37)
!2918 = !DILocation(line: 510, column: 6, scope: !2917)
!2919 = !DILocation(line: 510, column: 18, scope: !2917)
!2920 = !DILocation(line: 509, column: 4, scope: !2917)
!2921 = !DILocation(line: 511, column: 3, scope: !2917)
!2922 = !DILocation(line: 512, column: 12, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 511, column: 10)
!2924 = !DILocation(line: 512, column: 31, scope: !2923)
!2925 = !DILocation(line: 512, column: 4, scope: !2923)
!2926 = !DILocation(line: 515, column: 2, scope: !2840)
!2927 = !DILocation(line: 515, column: 2, scope: !2839)
!2928 = !DILocation(line: 515, column: 13, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 515, column: 13)
!2930 = !DILocation(line: 515, column: 24, scope: !2929)
!2931 = !DILocation(line: 515, column: 13, scope: !2840)
!2932 = !DILocation(line: 516, column: 8, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 516, column: 7)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 515, column: 39)
!2935 = !DILocation(line: 516, column: 7, scope: !2934)
!2936 = !DILocation(line: 517, column: 4, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 517, column: 4)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 516, column: 20)
!2939 = !DILocation(line: 517, column: 4, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 517, column: 4)
!2941 = !DILocation(line: 518, column: 4, scope: !2938)
!2942 = !DILocation(line: 520, column: 12, scope: !2934)
!2943 = !DILocation(line: 521, column: 5, scope: !2934)
!2944 = !DILocation(line: 521, column: 17, scope: !2934)
!2945 = !DILocation(line: 521, column: 28, scope: !2934)
!2946 = !DILocation(line: 520, column: 3, scope: !2934)
!2947 = !DILocation(line: 522, column: 2, scope: !2934)
!2948 = !DILocation(line: 522, column: 24, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 522, column: 13)
!2950 = !DILocation(line: 522, column: 13, scope: !2949)
!2951 = !DILocation(line: 522, column: 13, scope: !2929)
!2952 = !DILocation(line: 523, column: 11, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 522, column: 33)
!2954 = !DILocation(line: 523, column: 41, scope: !2953)
!2955 = !DILocation(line: 523, column: 30, scope: !2953)
!2956 = !DILocation(line: 523, column: 50, scope: !2953)
!2957 = !DILocation(line: 523, column: 3, scope: !2953)
!2958 = !DILocation(line: 525, column: 2, scope: !2953)
!2959 = !DILocation(line: 526, column: 3, scope: !2949)
!2960 = !DILocation(line: 528, column: 2, scope: !2813)
!2961 = !DILocation(line: 529, column: 1, scope: !2813)
!2962 = distinct !DISubprogram(name: "led_parse_fwnode_props", scope: !3, file: !3, line: 419, type: !2963, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !199, !1624, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2966 = !{!2967, !2968, !2969, !2970}
!2967 = !DILocalVariable(name: "dev", arg: 1, scope: !2962, file: !3, line: 419, type: !199)
!2968 = !DILocalVariable(name: "fwnode", arg: 2, scope: !2962, file: !3, line: 420, type: !1624)
!2969 = !DILocalVariable(name: "props", arg: 3, scope: !2962, file: !3, line: 421, type: !2965)
!2970 = !DILocalVariable(name: "ret", scope: !2962, file: !3, line: 423, type: !53)
!2971 = !DILocation(line: 419, column: 51, scope: !2962)
!2972 = !DILocation(line: 420, column: 30, scope: !2962)
!2973 = !DILocation(line: 421, column: 31, scope: !2962)
!2974 = !DILocation(line: 423, column: 2, scope: !2962)
!2975 = !DILocation(line: 423, column: 6, scope: !2962)
!2976 = !DILocation(line: 425, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 425, column: 6)
!2978 = !DILocation(line: 425, column: 6, scope: !2962)
!2979 = !DILocation(line: 426, column: 3, scope: !2977)
!2980 = !DILocation(line: 428, column: 30, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 428, column: 6)
!2982 = !DILocation(line: 428, column: 6, scope: !2981)
!2983 = !DILocation(line: 428, column: 6, scope: !2962)
!2984 = !DILocation(line: 429, column: 37, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 428, column: 48)
!2986 = !DILocation(line: 429, column: 55, scope: !2985)
!2987 = !DILocation(line: 429, column: 62, scope: !2985)
!2988 = !DILocation(line: 429, column: 9, scope: !2985)
!2989 = !DILocation(line: 429, column: 7, scope: !2985)
!2990 = !DILocation(line: 430, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 430, column: 7)
!2992 = !DILocation(line: 430, column: 7, scope: !2985)
!2993 = !DILocation(line: 431, column: 4, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 431, column: 4)
!2995 = !DILocation(line: 431, column: 4, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 431, column: 4)
!2997 = !DILocation(line: 431, column: 4, scope: !2991)
!2998 = !DILocation(line: 432, column: 3, scope: !2985)
!2999 = !DILocation(line: 435, column: 30, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 435, column: 6)
!3001 = !DILocation(line: 435, column: 6, scope: !3000)
!3002 = !DILocation(line: 435, column: 6, scope: !2962)
!3003 = !DILocation(line: 436, column: 34, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 435, column: 48)
!3005 = !DILocation(line: 436, column: 52, scope: !3004)
!3006 = !DILocation(line: 436, column: 59, scope: !3004)
!3007 = !DILocation(line: 436, column: 9, scope: !3004)
!3008 = !DILocation(line: 436, column: 7, scope: !3004)
!3009 = !DILocation(line: 437, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 437, column: 7)
!3011 = !DILocation(line: 437, column: 7, scope: !3004)
!3012 = !DILocation(line: 438, column: 4, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 438, column: 4)
!3014 = !DILocation(line: 438, column: 4, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 438, column: 4)
!3016 = !DILocation(line: 438, column: 4, scope: !3010)
!3017 = !DILocation(line: 439, column: 12, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 439, column: 12)
!3019 = !DILocation(line: 439, column: 19, scope: !3018)
!3020 = !DILocation(line: 439, column: 25, scope: !3018)
!3021 = !DILocation(line: 439, column: 12, scope: !3010)
!3022 = !DILocation(line: 440, column: 4, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 440, column: 4)
!3024 = !DILocation(line: 440, column: 4, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 440, column: 4)
!3026 = !DILocation(line: 440, column: 4, scope: !3018)
!3027 = !DILocation(line: 442, column: 4, scope: !3018)
!3028 = !DILocation(line: 442, column: 11, scope: !3018)
!3029 = !DILocation(line: 442, column: 25, scope: !3018)
!3030 = !DILocation(line: 443, column: 2, scope: !3004)
!3031 = !DILocation(line: 446, column: 31, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 446, column: 6)
!3033 = !DILocation(line: 446, column: 7, scope: !3032)
!3034 = !DILocation(line: 446, column: 6, scope: !2962)
!3035 = !DILocation(line: 447, column: 3, scope: !3032)
!3036 = !DILocation(line: 449, column: 36, scope: !2962)
!3037 = !DILocation(line: 449, column: 57, scope: !2962)
!3038 = !DILocation(line: 449, column: 64, scope: !2962)
!3039 = !DILocation(line: 449, column: 8, scope: !2962)
!3040 = !DILocation(line: 449, column: 6, scope: !2962)
!3041 = !DILocation(line: 450, column: 6, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 450, column: 6)
!3043 = !DILocation(line: 450, column: 6, scope: !2962)
!3044 = !DILocation(line: 451, column: 3, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 451, column: 3)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 450, column: 11)
!3047 = !DILocation(line: 451, column: 3, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 451, column: 3)
!3049 = !DILocation(line: 454, column: 2, scope: !3046)
!3050 = !DILocation(line: 456, column: 31, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 456, column: 6)
!3052 = !DILocation(line: 456, column: 7, scope: !3051)
!3053 = !DILocation(line: 456, column: 6, scope: !2962)
!3054 = !DILocation(line: 457, column: 3, scope: !3051)
!3055 = !DILocation(line: 459, column: 33, scope: !2962)
!3056 = !DILocation(line: 460, column: 13, scope: !2962)
!3057 = !DILocation(line: 460, column: 20, scope: !2962)
!3058 = !DILocation(line: 459, column: 8, scope: !2962)
!3059 = !DILocation(line: 459, column: 6, scope: !2962)
!3060 = !DILocation(line: 461, column: 6, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 461, column: 6)
!3062 = !DILocation(line: 461, column: 6, scope: !2962)
!3063 = !DILocation(line: 462, column: 3, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 462, column: 3)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 461, column: 11)
!3066 = !DILocation(line: 462, column: 3, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 462, column: 3)
!3068 = !DILocation(line: 465, column: 2, scope: !3065)
!3069 = !DILocation(line: 466, column: 3, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 465, column: 9)
!3071 = !DILocation(line: 466, column: 10, scope: !3070)
!3072 = !DILocation(line: 466, column: 28, scope: !3070)
!3073 = !DILocation(line: 468, column: 1, scope: !2962)
!3074 = !DISubprogram(name: "strscpy", scope: !3075, file: !3075, line: 72, type: !3076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3075 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!316, !284, !156, !331}
!3078 = !DISubprogram(name: "snprintf", scope: !3079, file: !3079, line: 12, type: !3080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3079 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!53, !284, !331, !156, null}
!3082 = !DISubprogram(name: "_dev_err", scope: !3083, file: !3083, line: 50, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3083 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !873, !156, null}
!3086 = distinct !DISubprogram(name: "is_of_node", scope: !1613, file: !1613, line: 461, type: !1640, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3087)
!3087 = !{!3088}
!3088 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3086, file: !1613, line: 461, type: !1642)
!3089 = !DILocation(line: 461, column: 59, scope: !3086)
!3090 = !DILocation(line: 463, column: 2, scope: !3086)
!3091 = distinct !DISubprogram(name: "to_of_node", scope: !1613, file: !1613, line: 466, type: !3092, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!1611, !1642}
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3091, file: !1613, line: 466, type: !1642)
!3096 = !DILocation(line: 466, column: 74, scope: !3091)
!3097 = !DILocation(line: 468, column: 2, scope: !3091)
!3098 = distinct !DISubprogram(name: "led_init_default_state_get", scope: !3, file: !3, line: 532, type: !3099, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!117, !1624}
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3098, file: !3, line: 532, type: !1624)
!3103 = !DILocalVariable(name: "state", scope: !3098, file: !3, line: 534, type: !156)
!3104 = !DILocation(line: 532, column: 73, scope: !3098)
!3105 = !DILocation(line: 534, column: 2, scope: !3098)
!3106 = !DILocation(line: 534, column: 14, scope: !3098)
!3107 = !DILocation(line: 536, column: 35, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 536, column: 6)
!3109 = !DILocation(line: 536, column: 7, scope: !3108)
!3110 = !DILocation(line: 536, column: 6, scope: !3098)
!3111 = !DILocation(line: 537, column: 15, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 537, column: 7)
!3113 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 536, column: 69)
!3114 = !DILocation(line: 537, column: 8, scope: !3112)
!3115 = !DILocation(line: 537, column: 7, scope: !3113)
!3116 = !DILocation(line: 538, column: 4, scope: !3112)
!3117 = !DILocation(line: 539, column: 15, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 539, column: 7)
!3119 = !DILocation(line: 539, column: 8, scope: !3118)
!3120 = !DILocation(line: 539, column: 7, scope: !3113)
!3121 = !DILocation(line: 540, column: 4, scope: !3118)
!3122 = !DILocation(line: 541, column: 2, scope: !3113)
!3123 = !DILocation(line: 543, column: 2, scope: !3098)
!3124 = !DILocation(line: 544, column: 1, scope: !3098)
!3125 = !DISubprogram(name: "fwnode_property_read_string", scope: !61, file: !61, line: 76, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!53, !1642, !156, !1280}
!3128 = !DISubprogram(name: "strcmp", scope: !3075, file: !3075, line: 88, type: !3129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!53, !156, !156}
!3131 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !2270, file: !2270, line: 82, type: !3132, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!639, !320, !2273}
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "nr", arg: 1, scope: !3131, file: !2270, line: 82, type: !320)
!3136 = !DILocalVariable(name: "addr", arg: 2, scope: !3131, file: !2270, line: 82, type: !2273)
!3137 = !DILocation(line: 82, column: 53, scope: !3131)
!3138 = !DILocation(line: 82, column: 81, scope: !3131)
!3139 = !DILocation(line: 84, column: 2, scope: !3131)
!3140 = !DILocation(line: 84, column: 2, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3131, file: !2270, line: 84, column: 2)
!3142 = !DILocation(line: 85, column: 31, scope: !3131)
!3143 = !DILocation(line: 85, column: 38, scope: !3131)
!3144 = !DILocation(line: 85, column: 36, scope: !3131)
!3145 = !DILocation(line: 85, column: 2, scope: !3131)
!3146 = !DILocation(line: 86, column: 33, scope: !3131)
!3147 = !DILocation(line: 86, column: 37, scope: !3131)
!3148 = !DILocation(line: 86, column: 9, scope: !3131)
!3149 = !DILocation(line: 86, column: 2, scope: !3131)
!3150 = distinct !DISubprogram(name: "set_brightness_delayed_set_brightness", scope: !3, file: !3, line: 117, type: !2507, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3150, file: !3, line: 117, type: !152)
!3153 = !DILocalVariable(name: "value", arg: 2, scope: !3150, file: !3, line: 118, type: !7)
!3154 = !DILocalVariable(name: "ret", scope: !3150, file: !3, line: 120, type: !53)
!3155 = !DILocation(line: 117, column: 72, scope: !3150)
!3156 = !DILocation(line: 118, column: 22, scope: !3150)
!3157 = !DILocation(line: 120, column: 2, scope: !3150)
!3158 = !DILocation(line: 120, column: 6, scope: !3150)
!3159 = !DILocation(line: 122, column: 29, scope: !3150)
!3160 = !DILocation(line: 122, column: 39, scope: !3150)
!3161 = !DILocation(line: 122, column: 8, scope: !3150)
!3162 = !DILocation(line: 122, column: 6, scope: !3150)
!3163 = !DILocation(line: 123, column: 6, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 123, column: 6)
!3165 = !DILocation(line: 123, column: 10, scope: !3164)
!3166 = !DILocation(line: 123, column: 6, scope: !3150)
!3167 = !DILocation(line: 124, column: 39, scope: !3164)
!3168 = !DILocation(line: 124, column: 49, scope: !3164)
!3169 = !DILocation(line: 124, column: 9, scope: !3164)
!3170 = !DILocation(line: 124, column: 7, scope: !3164)
!3171 = !DILocation(line: 124, column: 3, scope: !3164)
!3172 = !DILocation(line: 125, column: 6, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 125, column: 6)
!3174 = !DILocation(line: 125, column: 10, scope: !3173)
!3175 = !DILocation(line: 125, column: 14, scope: !3173)
!3176 = !DILocation(line: 127, column: 8, scope: !3173)
!3177 = !DILocation(line: 127, column: 12, scope: !3173)
!3178 = !DILocation(line: 127, column: 23, scope: !3173)
!3179 = !DILocation(line: 127, column: 27, scope: !3173)
!3180 = !DILocation(line: 127, column: 37, scope: !3173)
!3181 = !DILocation(line: 127, column: 43, scope: !3173)
!3182 = !DILocation(line: 127, column: 64, scope: !3173)
!3183 = !DILocation(line: 128, column: 7, scope: !3173)
!3184 = !DILocation(line: 128, column: 17, scope: !3173)
!3185 = !DILocation(line: 128, column: 23, scope: !3173)
!3186 = !DILocation(line: 125, column: 6, scope: !3150)
!3187 = !DILocation(line: 129, column: 3, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 129, column: 3)
!3189 = !DILocation(line: 129, column: 3, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 129, column: 3)
!3191 = !DILocation(line: 129, column: 3, scope: !3173)
!3192 = !DILocation(line: 131, column: 1, scope: !3150)
!3193 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3194, file: !3194, line: 94, type: !3195, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3200)
!3194 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3197, !331}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "v", arg: 1, scope: !3193, file: !3194, line: 94, type: !3197)
!3202 = !DILocalVariable(name: "size", arg: 2, scope: !3193, file: !3194, line: 94, type: !331)
!3203 = !DILocation(line: 94, column: 79, scope: !3193)
!3204 = !DILocation(line: 94, column: 89, scope: !3193)
!3205 = !DILocation(line: 96, column: 20, scope: !3193)
!3206 = !DILocation(line: 96, column: 23, scope: !3193)
!3207 = !DILocation(line: 96, column: 2, scope: !3193)
!3208 = !DILocation(line: 97, column: 2, scope: !3193)
!3209 = !DILocation(line: 98, column: 1, scope: !3193)
!3210 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !3211, file: !3211, line: 160, type: !3132, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3211 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3212 = !{!3213, !3214, !3215}
!3213 = !DILocalVariable(name: "nr", arg: 1, scope: !3210, file: !3211, line: 160, type: !320)
!3214 = !DILocalVariable(name: "addr", arg: 2, scope: !3210, file: !3211, line: 160, type: !2273)
!3215 = !DILocalVariable(name: "c", scope: !3216, file: !3211, line: 162, type: !639)
!3216 = distinct !DILexicalBlock(scope: !3210, file: !3211, line: 162, column: 9)
!3217 = !DILocation(line: 160, column: 30, scope: !3210)
!3218 = !DILocation(line: 160, column: 58, scope: !3210)
!3219 = !DILocation(line: 162, column: 9, scope: !3216)
!3220 = !{i64 2147808853, i64 2147808892, i64 2147808913, i64 2147808950, i64 2147808973, i64 2147808982, i64 2147809085}
!3221 = !DILocation(line: 162, column: 9, scope: !3210)
!3222 = !DILocation(line: 162, column: 2, scope: !3210)
!3223 = distinct !DISubprogram(name: "kasan_check_write", scope: !3224, file: !3224, line: 44, type: !3225, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3227)
!3224 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!639, !3197, !7}
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "p", arg: 1, scope: !3223, file: !3224, line: 44, type: !3197)
!3229 = !DILocalVariable(name: "size", arg: 2, scope: !3223, file: !3224, line: 44, type: !7)
!3230 = !DILocation(line: 44, column: 59, scope: !3223)
!3231 = !DILocation(line: 44, column: 75, scope: !3223)
!3232 = !DILocation(line: 46, column: 2, scope: !3223)
!3233 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3234, file: !3234, line: 229, type: !3235, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3237)
!3234 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3197, !331, !53}
!3237 = !{!3238, !3239, !3240}
!3238 = !DILocalVariable(name: "ptr", arg: 1, scope: !3233, file: !3234, line: 229, type: !3197)
!3239 = !DILocalVariable(name: "size", arg: 2, scope: !3233, file: !3234, line: 229, type: !331)
!3240 = !DILocalVariable(name: "type", arg: 3, scope: !3233, file: !3234, line: 230, type: !53)
!3241 = !DILocation(line: 229, column: 60, scope: !3233)
!3242 = !DILocation(line: 229, column: 72, scope: !3233)
!3243 = !DILocation(line: 230, column: 15, scope: !3233)
!3244 = !DILocation(line: 230, column: 23, scope: !3233)
!3245 = distinct !DISubprogram(name: "led_get_brightness", scope: !3246, file: !3246, line: 15, type: !196, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3247)
!3246 = !DIFile(filename: "drivers/leds/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d3b3fbc2bcfa7e8304de2e053dc4308")
!3247 = !{!3248}
!3248 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3245, file: !3246, line: 15, type: !152)
!3249 = !DILocation(line: 15, column: 59, scope: !3245)
!3250 = !DILocation(line: 17, column: 9, scope: !3245)
!3251 = !DILocation(line: 17, column: 19, scope: !3245)
!3252 = !DILocation(line: 17, column: 2, scope: !3245)
!3253 = !DISubprogram(name: "mod_timer", scope: !1198, file: !1198, line: 172, type: !3254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!53, !1212, !139}
!3256 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !3257, file: !3257, line: 515, type: !3258, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3257 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!139, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3261 = !{!3262}
!3262 = !DILocalVariable(name: "m", arg: 1, scope: !3256, file: !3257, line: 515, type: !3260)
!3263 = !DILocation(line: 515, column: 74, scope: !3256)
!3264 = !DILocation(line: 517, column: 27, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3256, file: !3257, line: 517, column: 6)
!3266 = !DILocation(line: 517, column: 6, scope: !3265)
!3267 = !DILocation(line: 517, column: 6, scope: !3256)
!3268 = !DILocation(line: 518, column: 12, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3257, line: 518, column: 7)
!3270 = distinct !DILexicalBlock(scope: !3265, file: !3257, line: 517, column: 31)
!3271 = !DILocation(line: 518, column: 14, scope: !3269)
!3272 = !DILocation(line: 518, column: 7, scope: !3270)
!3273 = !DILocation(line: 519, column: 4, scope: !3269)
!3274 = !DILocation(line: 520, column: 28, scope: !3270)
!3275 = !DILocation(line: 520, column: 10, scope: !3270)
!3276 = !DILocation(line: 520, column: 3, scope: !3270)
!3277 = !DILocation(line: 522, column: 29, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3265, file: !3257, line: 521, column: 9)
!3279 = !DILocation(line: 522, column: 10, scope: !3278)
!3280 = !DILocation(line: 522, column: 3, scope: !3278)
!3281 = !DILocation(line: 524, column: 1, scope: !3256)
!3282 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !3257, file: !3257, line: 458, type: !3258, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3283)
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "m", arg: 1, scope: !3282, file: !3257, line: 458, type: !3260)
!3285 = !DILocation(line: 458, column: 66, scope: !3282)
!3286 = !DILocation(line: 460, column: 10, scope: !3282)
!3287 = !DILocation(line: 460, column: 12, scope: !3282)
!3288 = !DILocation(line: 460, column: 34, scope: !3282)
!3289 = !DILocation(line: 460, column: 39, scope: !3282)
!3290 = !DILocation(line: 460, column: 2, scope: !3282)
!3291 = !DISubprogram(name: "__msecs_to_jiffies", scope: !3257, file: !3257, line: 451, type: !3258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3292 = !DISubprogram(name: "timer_delete_sync", scope: !1198, file: !1198, line: 185, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3293 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3194, file: !3194, line: 80, type: !3195, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3294)
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "v", arg: 1, scope: !3293, file: !3194, line: 80, type: !3197)
!3296 = !DILocalVariable(name: "size", arg: 2, scope: !3293, file: !3194, line: 80, type: !331)
!3297 = !DILocation(line: 80, column: 74, scope: !3293)
!3298 = !DILocation(line: 80, column: 84, scope: !3293)
!3299 = !DILocation(line: 82, column: 20, scope: !3293)
!3300 = !DILocation(line: 82, column: 23, scope: !3293)
!3301 = !DILocation(line: 82, column: 2, scope: !3293)
!3302 = !DILocation(line: 83, column: 2, scope: !3293)
!3303 = !DILocation(line: 84, column: 1, scope: !3293)
!3304 = distinct !DISubprogram(name: "arch_clear_bit", scope: !3211, file: !3211, line: 72, type: !2271, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "nr", arg: 1, scope: !3304, file: !3211, line: 72, type: !320)
!3307 = !DILocalVariable(name: "addr", arg: 2, scope: !3304, file: !3211, line: 72, type: !2273)
!3308 = !DILocation(line: 72, column: 21, scope: !3304)
!3309 = !DILocation(line: 72, column: 49, scope: !3304)
!3310 = !DILocation(line: 74, column: 27, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3304, file: !3211, line: 74, column: 6)
!3312 = !DILocation(line: 74, column: 6, scope: !3311)
!3313 = !DILocation(line: 74, column: 6, scope: !3304)
!3314 = !DILocation(line: 76, column: 6, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !3211, line: 74, column: 32)
!3316 = !DILocation(line: 77, column: 13, scope: !3315)
!3317 = !DILocation(line: 77, column: 12, scope: !3315)
!3318 = !DILocation(line: 75, column: 3, scope: !3315)
!3319 = !{i64 2147800788, i64 2147800827, i64 2147800848, i64 2147800885, i64 2147800908, i64 2147800778}
!3320 = !DILocation(line: 78, column: 2, scope: !3315)
!3321 = !DILocation(line: 80, column: 8, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3311, file: !3211, line: 78, column: 9)
!3323 = !DILocation(line: 80, column: 32, scope: !3322)
!3324 = !DILocation(line: 79, column: 3, scope: !3322)
!3325 = !{i64 2147801073, i64 2147801112, i64 2147801133, i64 2147801170, i64 2147801193, i64 2147801063}
!3326 = !DILocation(line: 82, column: 1, scope: !3304)
!3327 = distinct !DISubprogram(name: "led_set_software_blink", scope: !3, file: !3, line: 164, type: !2444, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3328)
!3328 = !{!3329, !3330, !3331, !3332}
!3329 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !3327, file: !3, line: 164, type: !152)
!3330 = !DILocalVariable(name: "delay_on", arg: 2, scope: !3327, file: !3, line: 165, type: !139)
!3331 = !DILocalVariable(name: "delay_off", arg: 3, scope: !3327, file: !3, line: 166, type: !139)
!3332 = !DILocalVariable(name: "current_brightness", scope: !3327, file: !3, line: 168, type: !53)
!3333 = !DILocation(line: 164, column: 57, scope: !3327)
!3334 = !DILocation(line: 165, column: 22, scope: !3327)
!3335 = !DILocation(line: 166, column: 22, scope: !3327)
!3336 = !DILocation(line: 168, column: 2, scope: !3327)
!3337 = !DILocation(line: 168, column: 6, scope: !3327)
!3338 = !DILocation(line: 170, column: 42, scope: !3327)
!3339 = !DILocation(line: 170, column: 23, scope: !3327)
!3340 = !DILocation(line: 170, column: 21, scope: !3327)
!3341 = !DILocation(line: 171, column: 6, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 171, column: 6)
!3343 = !DILocation(line: 171, column: 6, scope: !3327)
!3344 = !DILocation(line: 172, column: 32, scope: !3342)
!3345 = !DILocation(line: 172, column: 3, scope: !3342)
!3346 = !DILocation(line: 172, column: 13, scope: !3342)
!3347 = !DILocation(line: 172, column: 30, scope: !3342)
!3348 = !DILocation(line: 173, column: 7, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 173, column: 6)
!3350 = !DILocation(line: 173, column: 17, scope: !3349)
!3351 = !DILocation(line: 173, column: 6, scope: !3327)
!3352 = !DILocation(line: 174, column: 32, scope: !3349)
!3353 = !DILocation(line: 174, column: 42, scope: !3349)
!3354 = !DILocation(line: 174, column: 3, scope: !3349)
!3355 = !DILocation(line: 174, column: 13, scope: !3349)
!3356 = !DILocation(line: 174, column: 30, scope: !3349)
!3357 = !DILocation(line: 176, column: 29, scope: !3327)
!3358 = !DILocation(line: 176, column: 2, scope: !3327)
!3359 = !DILocation(line: 176, column: 12, scope: !3327)
!3360 = !DILocation(line: 176, column: 27, scope: !3327)
!3361 = !DILocation(line: 177, column: 30, scope: !3327)
!3362 = !DILocation(line: 177, column: 2, scope: !3327)
!3363 = !DILocation(line: 177, column: 12, scope: !3327)
!3364 = !DILocation(line: 177, column: 28, scope: !3327)
!3365 = !DILocation(line: 180, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 180, column: 6)
!3367 = !DILocation(line: 180, column: 6, scope: !3327)
!3368 = !DILocation(line: 181, column: 30, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 180, column: 17)
!3370 = !DILocation(line: 181, column: 3, scope: !3369)
!3371 = !DILocation(line: 182, column: 3, scope: !3369)
!3372 = !DILocation(line: 186, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 186, column: 6)
!3374 = !DILocation(line: 186, column: 6, scope: !3327)
!3375 = !DILocation(line: 187, column: 30, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 186, column: 18)
!3377 = !DILocation(line: 188, column: 9, scope: !3376)
!3378 = !DILocation(line: 188, column: 19, scope: !3376)
!3379 = !DILocation(line: 187, column: 3, scope: !3376)
!3380 = !DILocation(line: 189, column: 3, scope: !3376)
!3381 = !DILocation(line: 192, column: 25, scope: !3327)
!3382 = !DILocation(line: 192, column: 35, scope: !3327)
!3383 = !DILocation(line: 192, column: 2, scope: !3327)
!3384 = !DILocation(line: 193, column: 13, scope: !3327)
!3385 = !DILocation(line: 193, column: 23, scope: !3327)
!3386 = !DILocation(line: 193, column: 36, scope: !3327)
!3387 = !DILocation(line: 193, column: 44, scope: !3327)
!3388 = !DILocation(line: 193, column: 2, scope: !3327)
!3389 = !DILocation(line: 194, column: 1, scope: !3327)
!3390 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3194, file: !3194, line: 66, type: !3195, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3391)
!3391 = !{!3392, !3393}
!3392 = !DILocalVariable(name: "v", arg: 1, scope: !3390, file: !3194, line: 66, type: !3197)
!3393 = !DILocalVariable(name: "size", arg: 2, scope: !3390, file: !3194, line: 66, type: !331)
!3394 = !DILocation(line: 66, column: 73, scope: !3390)
!3395 = !DILocation(line: 66, column: 83, scope: !3390)
!3396 = !DILocation(line: 68, column: 19, scope: !3390)
!3397 = !DILocation(line: 68, column: 22, scope: !3390)
!3398 = !DILocation(line: 68, column: 2, scope: !3390)
!3399 = !DILocation(line: 69, column: 2, scope: !3390)
!3400 = !DILocation(line: 70, column: 1, scope: !3390)
!3401 = distinct !DISubprogram(name: "arch_test_bit", scope: !3211, file: !3211, line: 237, type: !2370, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3402)
!3402 = !{!3403, !3404}
!3403 = !DILocalVariable(name: "nr", arg: 1, scope: !3401, file: !3211, line: 237, type: !139)
!3404 = !DILocalVariable(name: "addr", arg: 2, scope: !3401, file: !3211, line: 237, type: !2372)
!3405 = !DILocation(line: 237, column: 29, scope: !3401)
!3406 = !DILocation(line: 237, column: 63, scope: !3401)
!3407 = !DILocation(line: 239, column: 30, scope: !3401)
!3408 = !DILocation(line: 239, column: 9, scope: !3401)
!3409 = !DILocation(line: 239, column: 54, scope: !3401)
!3410 = !DILocation(line: 239, column: 58, scope: !3401)
!3411 = !DILocation(line: 239, column: 36, scope: !3401)
!3412 = !DILocation(line: 240, column: 26, scope: !3401)
!3413 = !DILocation(line: 240, column: 30, scope: !3401)
!3414 = !DILocation(line: 240, column: 8, scope: !3401)
!3415 = !DILocation(line: 239, column: 2, scope: !3401)
!3416 = distinct !DISubprogram(name: "kasan_check_read", scope: !3224, file: !3224, line: 40, type: !3225, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3417)
!3417 = !{!3418, !3419}
!3418 = !DILocalVariable(name: "p", arg: 1, scope: !3416, file: !3224, line: 40, type: !3197)
!3419 = !DILocalVariable(name: "size", arg: 2, scope: !3416, file: !3224, line: 40, type: !7)
!3420 = !DILocation(line: 40, column: 58, scope: !3416)
!3421 = !DILocation(line: 40, column: 74, scope: !3416)
!3422 = !DILocation(line: 42, column: 2, scope: !3416)
!3423 = distinct !DISubprogram(name: "constant_test_bit", scope: !3211, file: !3211, line: 204, type: !3424, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!639, !320, !2372}
!3426 = !{!3427, !3428}
!3427 = !DILocalVariable(name: "nr", arg: 1, scope: !3423, file: !3211, line: 204, type: !320)
!3428 = !DILocalVariable(name: "addr", arg: 2, scope: !3423, file: !3211, line: 204, type: !2372)
!3429 = !DILocation(line: 204, column: 52, scope: !3423)
!3430 = !DILocation(line: 204, column: 86, scope: !3423)
!3431 = !DILocation(line: 206, column: 19, scope: !3423)
!3432 = !DILocation(line: 206, column: 22, scope: !3423)
!3433 = !DILocation(line: 206, column: 15, scope: !3423)
!3434 = !DILocation(line: 207, column: 4, scope: !3423)
!3435 = !DILocation(line: 207, column: 9, scope: !3423)
!3436 = !DILocation(line: 207, column: 12, scope: !3423)
!3437 = !DILocation(line: 206, column: 44, scope: !3423)
!3438 = !DILocation(line: 207, column: 37, scope: !3423)
!3439 = !DILocation(line: 206, column: 2, scope: !3423)
!3440 = distinct !DISubprogram(name: "variable_test_bit", scope: !3211, file: !3211, line: 224, type: !3424, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3441)
!3441 = !{!3442, !3443, !3444}
!3442 = !DILocalVariable(name: "nr", arg: 1, scope: !3440, file: !3211, line: 224, type: !320)
!3443 = !DILocalVariable(name: "addr", arg: 2, scope: !3440, file: !3211, line: 224, type: !2372)
!3444 = !DILocalVariable(name: "oldbit", scope: !3440, file: !3211, line: 226, type: !639)
!3445 = !DILocation(line: 224, column: 52, scope: !3440)
!3446 = !DILocation(line: 224, column: 86, scope: !3440)
!3447 = !DILocation(line: 226, column: 2, scope: !3440)
!3448 = !DILocation(line: 226, column: 7, scope: !3440)
!3449 = !DILocation(line: 231, column: 33, scope: !3440)
!3450 = !DILocation(line: 231, column: 46, scope: !3440)
!3451 = !DILocation(line: 228, column: 2, scope: !3440)
!3452 = !{i64 2147813112, i64 2147813186}
!3453 = !DILocation(line: 233, column: 9, scope: !3440)
!3454 = !DILocation(line: 234, column: 1, scope: !3440)
!3455 = !DILocation(line: 233, column: 2, scope: !3440)
!3456 = distinct !DISubprogram(name: "hlist_unhashed_lockless", scope: !2041, file: !2041, line: 961, type: !3457, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3461)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!53, !3459}
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "h", arg: 1, scope: !3456, file: !2041, line: 961, type: !3459)
!3463 = !DILocation(line: 961, column: 68, scope: !3456)
!3464 = !DILocation(line: 963, column: 10, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3456, file: !2041, line: 963, column: 10)
!3466 = !DILocation(line: 963, column: 10, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3465, file: !2041, line: 963, column: 10)
!3468 = !DILocation(line: 963, column: 9, scope: !3456)
!3469 = !DILocation(line: 963, column: 2, scope: !3456)
!3470 = distinct !DISubprogram(name: "arch_set_bit", scope: !3211, file: !3211, line: 52, type: !2271, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3471)
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "nr", arg: 1, scope: !3470, file: !3211, line: 52, type: !320)
!3473 = !DILocalVariable(name: "addr", arg: 2, scope: !3470, file: !3211, line: 52, type: !2273)
!3474 = !DILocation(line: 52, column: 19, scope: !3470)
!3475 = !DILocation(line: 52, column: 47, scope: !3470)
!3476 = !DILocation(line: 54, column: 27, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3470, file: !3211, line: 54, column: 6)
!3478 = !DILocation(line: 54, column: 6, scope: !3477)
!3479 = !DILocation(line: 54, column: 6, scope: !3470)
!3480 = !DILocation(line: 56, column: 6, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !3211, line: 54, column: 32)
!3482 = !DILocation(line: 57, column: 12, scope: !3481)
!3483 = !DILocation(line: 55, column: 3, scope: !3481)
!3484 = !{i64 2147799500, i64 2147799539, i64 2147799560, i64 2147799597, i64 2147799620, i64 2147799490}
!3485 = !DILocation(line: 59, column: 2, scope: !3481)
!3486 = !DILocation(line: 61, column: 8, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3477, file: !3211, line: 59, column: 9)
!3488 = !DILocation(line: 61, column: 32, scope: !3487)
!3489 = !DILocation(line: 60, column: 3, scope: !3487)
!3490 = !{i64 2147799785, i64 2147799824, i64 2147799845, i64 2147799882, i64 2147799905, i64 2147799775}
!3491 = !DILocation(line: 63, column: 1, scope: !3470)
!3492 = distinct !DISubprogram(name: "queue_work", scope: !92, file: !92, line: 559, type: !3493, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!639, !1265, !614}
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "wq", arg: 1, scope: !3492, file: !92, line: 559, type: !1265)
!3497 = !DILocalVariable(name: "work", arg: 2, scope: !3492, file: !92, line: 560, type: !614)
!3498 = !DILocation(line: 559, column: 56, scope: !3492)
!3499 = !DILocation(line: 560, column: 30, scope: !3492)
!3500 = !DILocation(line: 562, column: 41, scope: !3492)
!3501 = !DILocation(line: 562, column: 45, scope: !3492)
!3502 = !DILocation(line: 562, column: 9, scope: !3492)
!3503 = !DILocation(line: 562, column: 2, scope: !3492)
!3504 = !DISubprogram(name: "queue_work_on", scope: !92, file: !92, line: 496, type: !3505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!639, !53, !1265, !614}
!3507 = distinct !DISubprogram(name: "kmalloc_array", scope: !128, file: !128, line: 629, type: !2770, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3508)
!3508 = !{!3509, !3510, !3511, !3512}
!3509 = !DILocalVariable(name: "n", arg: 1, scope: !3507, file: !128, line: 629, type: !331)
!3510 = !DILocalVariable(name: "size", arg: 2, scope: !3507, file: !128, line: 629, type: !331)
!3511 = !DILocalVariable(name: "flags", arg: 3, scope: !3507, file: !128, line: 629, type: !144)
!3512 = !DILocalVariable(name: "bytes", scope: !3507, file: !128, line: 631, type: !331)
!3513 = !DILocation(line: 629, column: 61, scope: !3507)
!3514 = !DILocation(line: 629, column: 71, scope: !3507)
!3515 = !DILocation(line: 629, column: 83, scope: !3507)
!3516 = !DILocation(line: 631, column: 2, scope: !3507)
!3517 = !DILocation(line: 631, column: 9, scope: !3507)
!3518 = !DILocation(line: 633, column: 6, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3507, file: !128, line: 633, column: 6)
!3520 = !DILocation(line: 633, column: 6, scope: !3507)
!3521 = !DILocation(line: 634, column: 3, scope: !3519)
!3522 = !DILocation(line: 635, column: 27, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3507, file: !128, line: 635, column: 6)
!3524 = !DILocation(line: 635, column: 6, scope: !3523)
!3525 = !DILocation(line: 635, column: 30, scope: !3523)
!3526 = !DILocation(line: 635, column: 54, scope: !3523)
!3527 = !DILocation(line: 635, column: 33, scope: !3523)
!3528 = !DILocation(line: 635, column: 6, scope: !3507)
!3529 = !DILocation(line: 636, column: 18, scope: !3523)
!3530 = !DILocation(line: 636, column: 25, scope: !3523)
!3531 = !DILocation(line: 636, column: 10, scope: !3523)
!3532 = !DILocation(line: 636, column: 3, scope: !3523)
!3533 = !DILocation(line: 637, column: 19, scope: !3507)
!3534 = !DILocation(line: 637, column: 26, scope: !3507)
!3535 = !DILocation(line: 637, column: 9, scope: !3507)
!3536 = !DILocation(line: 637, column: 2, scope: !3507)
!3537 = !DILocation(line: 638, column: 1, scope: !3507)
!3538 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3539, file: !3539, line: 51, type: !3540, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3542)
!3539 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!639, !639}
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "overflow", arg: 1, scope: !3538, file: !3539, line: 51, type: !639)
!3544 = !DILocation(line: 51, column: 60, scope: !3538)
!3545 = !DILocation(line: 53, column: 9, scope: !3538)
!3546 = !DILocation(line: 53, column: 2, scope: !3538)
!3547 = distinct !DISubprogram(name: "kmalloc", scope: !128, file: !128, line: 591, type: !3548, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!138, !331, !144}
!3550 = !{!3551, !3552, !3553}
!3551 = !DILocalVariable(name: "size", arg: 1, scope: !3547, file: !128, line: 591, type: !331)
!3552 = !DILocalVariable(name: "flags", arg: 2, scope: !3547, file: !128, line: 591, type: !144)
!3553 = !DILocalVariable(name: "index", scope: !3554, file: !128, line: 594, type: !7)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !128, line: 593, column: 42)
!3555 = distinct !DILexicalBlock(scope: !3547, file: !128, line: 593, column: 6)
!3556 = !DILocation(line: 591, column: 61, scope: !3547)
!3557 = !DILocation(line: 591, column: 73, scope: !3547)
!3558 = !DILocation(line: 593, column: 27, scope: !3555)
!3559 = !DILocation(line: 593, column: 6, scope: !3555)
!3560 = !DILocation(line: 593, column: 33, scope: !3555)
!3561 = !DILocation(line: 593, column: 36, scope: !3555)
!3562 = !DILocation(line: 593, column: 6, scope: !3547)
!3563 = !DILocation(line: 594, column: 3, scope: !3554)
!3564 = !DILocation(line: 594, column: 16, scope: !3554)
!3565 = !DILocation(line: 596, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3554, file: !128, line: 596, column: 7)
!3567 = !DILocation(line: 596, column: 12, scope: !3566)
!3568 = !DILocation(line: 596, column: 7, scope: !3554)
!3569 = !DILocation(line: 597, column: 25, scope: !3566)
!3570 = !DILocation(line: 597, column: 31, scope: !3566)
!3571 = !DILocation(line: 597, column: 11, scope: !3566)
!3572 = !DILocation(line: 597, column: 4, scope: !3566)
!3573 = !DILocation(line: 599, column: 11, scope: !3554)
!3574 = !DILocation(line: 599, column: 9, scope: !3554)
!3575 = !DILocation(line: 601, column: 33, scope: !3554)
!3576 = !DILocation(line: 601, column: 40, scope: !3554)
!3577 = !DILocation(line: 601, column: 20, scope: !3554)
!3578 = !DILocation(line: 601, column: 5, scope: !3554)
!3579 = !DILocation(line: 601, column: 51, scope: !3554)
!3580 = !DILocation(line: 602, column: 5, scope: !3554)
!3581 = !DILocation(line: 602, column: 12, scope: !3554)
!3582 = !DILocation(line: 600, column: 10, scope: !3554)
!3583 = !DILocation(line: 600, column: 3, scope: !3554)
!3584 = !DILocation(line: 603, column: 2, scope: !3555)
!3585 = !DILocation(line: 604, column: 19, scope: !3547)
!3586 = !DILocation(line: 604, column: 25, scope: !3547)
!3587 = !DILocation(line: 604, column: 9, scope: !3547)
!3588 = !DILocation(line: 604, column: 2, scope: !3547)
!3589 = !DILocation(line: 605, column: 1, scope: !3547)
!3590 = !DISubprogram(name: "__kmalloc", scope: !128, file: !128, line: 488, type: !3548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3591 = !DISubprogram(name: "kmalloc_large", scope: !128, file: !128, line: 531, type: !3548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3592 = distinct !DISubprogram(name: "__kmalloc_index", scope: !128, file: !128, line: 444, type: !3593, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!7, !331, !639}
!3595 = !{!3596, !3597}
!3596 = !DILocalVariable(name: "size", arg: 1, scope: !3592, file: !128, line: 444, type: !331)
!3597 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3592, file: !128, line: 445, type: !639)
!3598 = !DILocation(line: 444, column: 60, scope: !3592)
!3599 = !DILocation(line: 445, column: 16, scope: !3592)
!3600 = !DILocation(line: 447, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 447, column: 6)
!3602 = !DILocation(line: 447, column: 6, scope: !3592)
!3603 = !DILocation(line: 448, column: 3, scope: !3601)
!3604 = !DILocation(line: 450, column: 6, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 450, column: 6)
!3606 = !DILocation(line: 450, column: 11, scope: !3605)
!3607 = !DILocation(line: 450, column: 6, scope: !3592)
!3608 = !DILocation(line: 451, column: 3, scope: !3605)
!3609 = !DILocation(line: 453, column: 32, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 453, column: 6)
!3611 = !DILocation(line: 453, column: 37, scope: !3610)
!3612 = !DILocation(line: 453, column: 42, scope: !3610)
!3613 = !DILocation(line: 453, column: 45, scope: !3610)
!3614 = !DILocation(line: 453, column: 50, scope: !3610)
!3615 = !DILocation(line: 453, column: 6, scope: !3592)
!3616 = !DILocation(line: 454, column: 3, scope: !3610)
!3617 = !DILocation(line: 455, column: 32, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 455, column: 6)
!3619 = !DILocation(line: 455, column: 37, scope: !3618)
!3620 = !DILocation(line: 455, column: 43, scope: !3618)
!3621 = !DILocation(line: 455, column: 46, scope: !3618)
!3622 = !DILocation(line: 455, column: 51, scope: !3618)
!3623 = !DILocation(line: 455, column: 6, scope: !3592)
!3624 = !DILocation(line: 456, column: 3, scope: !3618)
!3625 = !DILocation(line: 457, column: 6, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 457, column: 6)
!3627 = !DILocation(line: 457, column: 11, scope: !3626)
!3628 = !DILocation(line: 457, column: 6, scope: !3592)
!3629 = !DILocation(line: 457, column: 26, scope: !3626)
!3630 = !DILocation(line: 458, column: 6, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 458, column: 6)
!3632 = !DILocation(line: 458, column: 11, scope: !3631)
!3633 = !DILocation(line: 458, column: 6, scope: !3592)
!3634 = !DILocation(line: 458, column: 26, scope: !3631)
!3635 = !DILocation(line: 459, column: 6, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 459, column: 6)
!3637 = !DILocation(line: 459, column: 11, scope: !3636)
!3638 = !DILocation(line: 459, column: 6, scope: !3592)
!3639 = !DILocation(line: 459, column: 26, scope: !3636)
!3640 = !DILocation(line: 460, column: 6, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 460, column: 6)
!3642 = !DILocation(line: 460, column: 11, scope: !3641)
!3643 = !DILocation(line: 460, column: 6, scope: !3592)
!3644 = !DILocation(line: 460, column: 26, scope: !3641)
!3645 = !DILocation(line: 461, column: 6, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 461, column: 6)
!3647 = !DILocation(line: 461, column: 11, scope: !3646)
!3648 = !DILocation(line: 461, column: 6, scope: !3592)
!3649 = !DILocation(line: 461, column: 26, scope: !3646)
!3650 = !DILocation(line: 462, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 462, column: 6)
!3652 = !DILocation(line: 462, column: 11, scope: !3651)
!3653 = !DILocation(line: 462, column: 6, scope: !3592)
!3654 = !DILocation(line: 462, column: 26, scope: !3651)
!3655 = !DILocation(line: 463, column: 6, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 463, column: 6)
!3657 = !DILocation(line: 463, column: 11, scope: !3656)
!3658 = !DILocation(line: 463, column: 6, scope: !3592)
!3659 = !DILocation(line: 463, column: 26, scope: !3656)
!3660 = !DILocation(line: 464, column: 6, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 464, column: 6)
!3662 = !DILocation(line: 464, column: 11, scope: !3661)
!3663 = !DILocation(line: 464, column: 6, scope: !3592)
!3664 = !DILocation(line: 464, column: 26, scope: !3661)
!3665 = !DILocation(line: 465, column: 6, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 465, column: 6)
!3667 = !DILocation(line: 465, column: 11, scope: !3666)
!3668 = !DILocation(line: 465, column: 6, scope: !3592)
!3669 = !DILocation(line: 465, column: 26, scope: !3666)
!3670 = !DILocation(line: 466, column: 6, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 466, column: 6)
!3672 = !DILocation(line: 466, column: 11, scope: !3671)
!3673 = !DILocation(line: 466, column: 6, scope: !3592)
!3674 = !DILocation(line: 466, column: 26, scope: !3671)
!3675 = !DILocation(line: 467, column: 6, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 467, column: 6)
!3677 = !DILocation(line: 467, column: 11, scope: !3676)
!3678 = !DILocation(line: 467, column: 6, scope: !3592)
!3679 = !DILocation(line: 467, column: 26, scope: !3676)
!3680 = !DILocation(line: 468, column: 6, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 468, column: 6)
!3682 = !DILocation(line: 468, column: 11, scope: !3681)
!3683 = !DILocation(line: 468, column: 6, scope: !3592)
!3684 = !DILocation(line: 468, column: 26, scope: !3681)
!3685 = !DILocation(line: 469, column: 6, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 469, column: 6)
!3687 = !DILocation(line: 469, column: 11, scope: !3686)
!3688 = !DILocation(line: 469, column: 6, scope: !3592)
!3689 = !DILocation(line: 469, column: 26, scope: !3686)
!3690 = !DILocation(line: 470, column: 6, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 470, column: 6)
!3692 = !DILocation(line: 470, column: 11, scope: !3691)
!3693 = !DILocation(line: 470, column: 6, scope: !3592)
!3694 = !DILocation(line: 470, column: 26, scope: !3691)
!3695 = !DILocation(line: 471, column: 6, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 471, column: 6)
!3697 = !DILocation(line: 471, column: 11, scope: !3696)
!3698 = !DILocation(line: 471, column: 6, scope: !3592)
!3699 = !DILocation(line: 471, column: 26, scope: !3696)
!3700 = !DILocation(line: 472, column: 6, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 472, column: 6)
!3702 = !DILocation(line: 472, column: 11, scope: !3701)
!3703 = !DILocation(line: 472, column: 6, scope: !3592)
!3704 = !DILocation(line: 472, column: 26, scope: !3701)
!3705 = !DILocation(line: 473, column: 6, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 473, column: 6)
!3707 = !DILocation(line: 473, column: 11, scope: !3706)
!3708 = !DILocation(line: 473, column: 6, scope: !3592)
!3709 = !DILocation(line: 473, column: 26, scope: !3706)
!3710 = !DILocation(line: 474, column: 6, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 474, column: 6)
!3712 = !DILocation(line: 474, column: 11, scope: !3711)
!3713 = !DILocation(line: 474, column: 6, scope: !3592)
!3714 = !DILocation(line: 474, column: 27, scope: !3711)
!3715 = !DILocation(line: 475, column: 6, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 475, column: 6)
!3717 = !DILocation(line: 475, column: 11, scope: !3716)
!3718 = !DILocation(line: 475, column: 6, scope: !3592)
!3719 = !DILocation(line: 475, column: 32, scope: !3716)
!3720 = !DILocation(line: 477, column: 50, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3592, file: !128, line: 477, column: 6)
!3722 = !DILocation(line: 477, column: 6, scope: !3592)
!3723 = !DILocation(line: 478, column: 3, scope: !3721)
!3724 = !DILocation(line: 478, column: 3, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !128, line: 478, column: 3)
!3726 = distinct !DILexicalBlock(scope: !3721, file: !128, line: 478, column: 3)
!3727 = !{i32 -2142142259}
!3728 = !DILocation(line: 478, column: 3, scope: !3726)
!3729 = !DILocation(line: 480, column: 3, scope: !3721)
!3730 = !DILocation(line: 480, column: 3, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3721, file: !128, line: 480, column: 3)
!3732 = !DILocation(line: 480, column: 3, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3731, file: !128, line: 480, column: 3)
!3734 = !DILocation(line: 480, column: 3, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3731, file: !128, line: 480, column: 3)
!3736 = !{i64 2152825240, i64 2152825269, i64 2152825315, i64 2152825373, i64 2152825427, i64 2152825481, i64 2152825536, i64 2152825567}
!3737 = !DILocation(line: 483, column: 2, scope: !3592)
!3738 = !DILocation(line: 484, column: 1, scope: !3592)
!3739 = !DISubprogram(name: "kmalloc_trace", scope: !128, file: !128, line: 525, type: !3740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!138, !3742, !144, !331}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3744, line: 11, flags: DIFlagFwdDecl)
!3744 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3745 = distinct !DISubprogram(name: "kmalloc_type", scope: !128, file: !128, line: 401, type: !3746, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!127, !144, !139}
!3748 = !{!3749, !3750}
!3749 = !DILocalVariable(name: "flags", arg: 1, scope: !3745, file: !128, line: 401, type: !144)
!3750 = !DILocalVariable(name: "caller", arg: 2, scope: !3745, file: !128, line: 401, type: !139)
!3751 = !DILocation(line: 401, column: 67, scope: !3745)
!3752 = !DILocation(line: 401, column: 88, scope: !3745)
!3753 = !DILocation(line: 407, column: 6, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3745, file: !128, line: 407, column: 6)
!3755 = !DILocation(line: 407, column: 6, scope: !3745)
!3756 = !DILocation(line: 413, column: 3, scope: !3754)
!3757 = !DILocation(line: 423, column: 38, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3745, file: !128, line: 423, column: 6)
!3759 = !DILocation(line: 423, column: 44, scope: !3758)
!3760 = !DILocation(line: 423, column: 6, scope: !3745)
!3761 = !DILocation(line: 424, column: 3, scope: !3758)
!3762 = !DILocation(line: 426, column: 3, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3745, file: !128, line: 425, column: 6)
!3764 = !DILocation(line: 429, column: 1, scope: !3745)
!3765 = !DISubprogram(name: "__compiletime_assert_204", scope: !128, file: !128, line: 478, type: !1307, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3766 = !DISubprogram(name: "fwnode_property_present", scope: !61, file: !61, line: 59, type: !1655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3767 = distinct !DISubprogram(name: "fwnode_property_read_u32", scope: !61, file: !61, line: 265, type: !3768, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!53, !1642, !156, !2708}
!3770 = !{!3771, !3772, !3773}
!3771 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3767, file: !61, line: 265, type: !1642)
!3772 = !DILocalVariable(name: "propname", arg: 2, scope: !3767, file: !61, line: 266, type: !156)
!3773 = !DILocalVariable(name: "val", arg: 3, scope: !3767, file: !61, line: 266, type: !2708)
!3774 = !DILocation(line: 265, column: 72, scope: !3767)
!3775 = !DILocation(line: 266, column: 21, scope: !3767)
!3776 = !DILocation(line: 266, column: 36, scope: !3767)
!3777 = !DILocation(line: 268, column: 40, scope: !3767)
!3778 = !DILocation(line: 268, column: 48, scope: !3767)
!3779 = !DILocation(line: 268, column: 58, scope: !3767)
!3780 = !DILocation(line: 268, column: 9, scope: !3767)
!3781 = !DILocation(line: 268, column: 2, scope: !3767)
