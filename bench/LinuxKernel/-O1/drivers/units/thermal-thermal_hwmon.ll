; ModuleID = 'drivers/thermal/thermal_hwmon.c'
source_filename = "drivers/thermal/thermal_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_thermal_add_hwmon_sysfs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad thermal_add_hwmon_sysfs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_thermal_remove_hwmon_sysfs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad thermal_remove_hwmon_sysfs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_thermal_add_hwmon_sysfs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_thermal_add_hwmon_sysfs ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.thermal_hwmon_device = type { [20 x i8], ptr, i32, %struct.list_head, %struct.list_head }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.completion, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_hwmon_temp = type { %struct.list_head, ptr, %struct.thermal_hwmon_attr, %struct.thermal_hwmon_attr }
%struct.thermal_hwmon_attr = type { %struct.device_attribute, [16 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"temp%d_input\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"temp%d_crit\00", align 1, !dbg !7
@thermal_hwmon_list_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @thermal_hwmon_list_lock, i64 16), ptr getelementptr (i8, ptr @thermal_hwmon_list_lock, i64 16) } }, align 8, !dbg !12
@thermal_hwmon_list = internal global %struct.list_head { ptr @thermal_hwmon_list, ptr @thermal_hwmon_list }, align 8, !dbg !1993
@__UNIQUE_ID___addressable_thermal_add_hwmon_sysfs205 = internal global ptr @thermal_add_hwmon_sysfs, section ".discard.addressable", align 8, !dbg !1959
@__UNIQUE_ID___addressable_thermal_remove_hwmon_sysfs206 = internal global ptr @thermal_remove_hwmon_sysfs, section ".discard.addressable", align 8, !dbg !1961
@.str.2 = private unnamed_addr constant [27 x i8] c"devm_thermal_hwmon_release\00", align 1, !dbg !1963
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to allocate device resource data\0A\00", align 1, !dbg !1968
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to add hwmon sysfs attributes\0A\00", align 1, !dbg !1973
@__UNIQUE_ID___addressable_devm_thermal_add_hwmon_sysfs207 = internal global ptr @devm_thermal_add_hwmon_sysfs, section ".discard.addressable", align 8, !dbg !1978
@__UNIQUE_ID_import_ns208 = internal constant [36 x i8] c"thermal_sys.import_ns=HWMON_THERMAL\00", section ".modinfo", align 1, !dbg !1980
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1985
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !1990
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_thermal_add_hwmon_sysfs205, ptr @__UNIQUE_ID___addressable_thermal_remove_hwmon_sysfs206, ptr @__UNIQUE_ID___addressable_devm_thermal_add_hwmon_sysfs207, ptr @__UNIQUE_ID_import_ns208], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_add_hwmon_sysfs(ptr noundef %tz) #0 align 16 !dbg !2004 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %hwmon = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %new_hwmon_device = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2006, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwmon) #14, !dbg !2017
  call void @llvm.dbg.declare(metadata ptr %hwmon, metadata !2007, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #14, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !2008, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_hwmon_device) #14, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %new_hwmon_device, metadata !2009, metadata !DIExpression()), !dbg !2022
  store i32 1, ptr %new_hwmon_device, align 4, !dbg !2022
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2023
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2010, metadata !DIExpression()), !dbg !2024
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2025
  %call = call ptr @thermal_hwmon_lookup_by_type(ptr noundef %0) #15, !dbg !2026
  store ptr %call, ptr %hwmon, align 8, !dbg !2027
  %1 = load ptr, ptr %hwmon, align 8, !dbg !2028
  %tobool = icmp ne ptr %1, null, !dbg !2028
  br i1 %tobool, label %if.then, label %if.end, !dbg !2030

if.then:                                          ; preds = %entry
  store i32 0, ptr %new_hwmon_device, align 4, !dbg !2031
  br label %register_sys_interface, !dbg !2033

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #16, !dbg !2034
  store ptr %call1, ptr %hwmon, align 8, !dbg !2035
  %2 = load ptr, ptr %hwmon, align 8, !dbg !2036
  %tobool2 = icmp ne ptr %2, null, !dbg !2036
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2038

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2039

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %hwmon, align 8, !dbg !2040
  %tz_list = getelementptr inbounds %struct.thermal_hwmon_device, ptr %3, i32 0, i32 3, !dbg !2041
  call void @INIT_LIST_HEAD(ptr noundef %tz_list) #15, !dbg !2042
  %4 = load ptr, ptr %hwmon, align 8, !dbg !2043
  %type = getelementptr inbounds %struct.thermal_hwmon_device, ptr %4, i32 0, i32 0, !dbg !2044
  %arraydecay = getelementptr inbounds [20 x i8], ptr %type, i64 0, i64 0, !dbg !2043
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2045
  %type5 = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 1, !dbg !2046
  %arraydecay6 = getelementptr inbounds [20 x i8], ptr %type5, i64 0, i64 0, !dbg !2045
  %call7 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %arraydecay6, i64 noundef 20) #15, !dbg !2047
  %6 = load ptr, ptr %hwmon, align 8, !dbg !2048
  %type8 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %6, i32 0, i32 0, !dbg !2049
  %arraydecay9 = getelementptr inbounds [20 x i8], ptr %type8, i64 0, i64 0, !dbg !2048
  %call10 = call ptr @strreplace(ptr noundef %arraydecay9, i8 noundef zeroext 45, i8 noundef zeroext 95) #15, !dbg !2050
  %7 = load ptr, ptr %tz.addr, align 8, !dbg !2051
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 2, !dbg !2052
  %8 = load ptr, ptr %hwmon, align 8, !dbg !2053
  %type11 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %8, i32 0, i32 0, !dbg !2054
  %arraydecay12 = getelementptr inbounds [20 x i8], ptr %type11, i64 0, i64 0, !dbg !2053
  %9 = load ptr, ptr %hwmon, align 8, !dbg !2055
  %call13 = call ptr @hwmon_device_register_for_thermal(ptr noundef %device, ptr noundef %arraydecay12, ptr noundef %9) #15, !dbg !2056
  %10 = load ptr, ptr %hwmon, align 8, !dbg !2057
  %device14 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %10, i32 0, i32 1, !dbg !2058
  store ptr %call13, ptr %device14, align 8, !dbg !2059
  %11 = load ptr, ptr %hwmon, align 8, !dbg !2060
  %device15 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %11, i32 0, i32 1, !dbg !2062
  %12 = load ptr, ptr %device15, align 8, !dbg !2062
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %12) #15, !dbg !2063
  br i1 %call16, label %if.then17, label %if.end20, !dbg !2064

if.then17:                                        ; preds = %if.end4
  %13 = load ptr, ptr %hwmon, align 8, !dbg !2065
  %device18 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %13, i32 0, i32 1, !dbg !2067
  %14 = load ptr, ptr %device18, align 8, !dbg !2067
  %call19 = call i64 @PTR_ERR(ptr noundef %14) #15, !dbg !2068
  %conv = trunc i64 %call19 to i32, !dbg !2068
  store i32 %conv, ptr %result, align 4, !dbg !2069
  br label %free_mem, !dbg !2070

if.end20:                                         ; preds = %if.end4
  br label %register_sys_interface, !dbg !2071

register_sys_interface:                           ; preds = %if.end20, %if.then
  call void @llvm.dbg.label(metadata !2011), !dbg !2072
  %call21 = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #16, !dbg !2073
  store ptr %call21, ptr %temp, align 8, !dbg !2074
  %15 = load ptr, ptr %temp, align 8, !dbg !2075
  %tobool22 = icmp ne ptr %15, null, !dbg !2075
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2077

if.then23:                                        ; preds = %register_sys_interface
  store i32 -12, ptr %result, align 4, !dbg !2078
  br label %unregister_name, !dbg !2080

if.end24:                                         ; preds = %register_sys_interface
  %16 = load ptr, ptr %tz.addr, align 8, !dbg !2081
  %17 = load ptr, ptr %temp, align 8, !dbg !2082
  %tz25 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %17, i32 0, i32 1, !dbg !2083
  store ptr %16, ptr %tz25, align 8, !dbg !2084
  %18 = load ptr, ptr %hwmon, align 8, !dbg !2085
  %count = getelementptr inbounds %struct.thermal_hwmon_device, ptr %18, i32 0, i32 2, !dbg !2086
  %19 = load i32, ptr %count, align 8, !dbg !2087
  %inc = add i32 %19, 1, !dbg !2087
  store i32 %inc, ptr %count, align 8, !dbg !2087
  %20 = load ptr, ptr %temp, align 8, !dbg !2088
  %temp_input = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %20, i32 0, i32 2, !dbg !2089
  %name = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input, i32 0, i32 1, !dbg !2090
  %arraydecay26 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !2088
  %21 = load ptr, ptr %hwmon, align 8, !dbg !2091
  %count27 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %21, i32 0, i32 2, !dbg !2092
  %22 = load i32, ptr %count27, align 8, !dbg !2092
  %call28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay26, i64 noundef 16, ptr noundef @.str, i32 noundef %22) #15, !dbg !2093
  %23 = load ptr, ptr %temp, align 8, !dbg !2094
  %temp_input29 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %23, i32 0, i32 2, !dbg !2095
  %name30 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input29, i32 0, i32 1, !dbg !2096
  %arraydecay31 = getelementptr inbounds [16 x i8], ptr %name30, i64 0, i64 0, !dbg !2094
  %24 = load ptr, ptr %temp, align 8, !dbg !2097
  %temp_input32 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %24, i32 0, i32 2, !dbg !2098
  %attr = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input32, i32 0, i32 0, !dbg !2099
  %attr33 = getelementptr inbounds %struct.device_attribute, ptr %attr, i32 0, i32 0, !dbg !2100
  %name34 = getelementptr inbounds %struct.attribute, ptr %attr33, i32 0, i32 0, !dbg !2101
  store ptr %arraydecay31, ptr %name34, align 8, !dbg !2102
  %25 = load ptr, ptr %temp, align 8, !dbg !2103
  %temp_input35 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %25, i32 0, i32 2, !dbg !2104
  %attr36 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input35, i32 0, i32 0, !dbg !2105
  %attr37 = getelementptr inbounds %struct.device_attribute, ptr %attr36, i32 0, i32 0, !dbg !2106
  %mode = getelementptr inbounds %struct.attribute, ptr %attr37, i32 0, i32 1, !dbg !2107
  store i16 292, ptr %mode, align 8, !dbg !2108
  %26 = load ptr, ptr %temp, align 8, !dbg !2109
  %temp_input38 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %26, i32 0, i32 2, !dbg !2110
  %attr39 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input38, i32 0, i32 0, !dbg !2111
  %show = getelementptr inbounds %struct.device_attribute, ptr %attr39, i32 0, i32 1, !dbg !2112
  store ptr @temp_input_show, ptr %show, align 8, !dbg !2113
  br label %do.body, !dbg !2114

do.body:                                          ; preds = %if.end24
  br label %do.cond, !dbg !2115

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2115

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %hwmon, align 8, !dbg !2117
  %device40 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %27, i32 0, i32 1, !dbg !2118
  %28 = load ptr, ptr %device40, align 8, !dbg !2118
  %29 = load ptr, ptr %temp, align 8, !dbg !2119
  %temp_input41 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %29, i32 0, i32 2, !dbg !2120
  %attr42 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input41, i32 0, i32 0, !dbg !2121
  %call43 = call i32 @device_create_file(ptr noundef %28, ptr noundef %attr42) #15, !dbg !2122
  store i32 %call43, ptr %result, align 4, !dbg !2123
  %30 = load i32, ptr %result, align 4, !dbg !2124
  %tobool44 = icmp ne i32 %30, 0, !dbg !2124
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !2126

if.then45:                                        ; preds = %do.end
  br label %free_temp_mem, !dbg !2127

if.end46:                                         ; preds = %do.end
  %31 = load ptr, ptr %tz.addr, align 8, !dbg !2128
  %call47 = call zeroext i1 @thermal_zone_crit_temp_valid(ptr noundef %31) #15, !dbg !2130
  br i1 %call47, label %if.then48, label %if.end77, !dbg !2131

if.then48:                                        ; preds = %if.end46
  %32 = load ptr, ptr %temp, align 8, !dbg !2132
  %temp_crit = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %32, i32 0, i32 3, !dbg !2134
  %name49 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_crit, i32 0, i32 1, !dbg !2135
  %arraydecay50 = getelementptr inbounds [16 x i8], ptr %name49, i64 0, i64 0, !dbg !2132
  %33 = load ptr, ptr %hwmon, align 8, !dbg !2136
  %count51 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %33, i32 0, i32 2, !dbg !2137
  %34 = load i32, ptr %count51, align 8, !dbg !2137
  %call52 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay50, i64 noundef 16, ptr noundef @.str.1, i32 noundef %34) #15, !dbg !2138
  %35 = load ptr, ptr %temp, align 8, !dbg !2139
  %temp_crit53 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %35, i32 0, i32 3, !dbg !2140
  %name54 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_crit53, i32 0, i32 1, !dbg !2141
  %arraydecay55 = getelementptr inbounds [16 x i8], ptr %name54, i64 0, i64 0, !dbg !2139
  %36 = load ptr, ptr %temp, align 8, !dbg !2142
  %temp_crit56 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %36, i32 0, i32 3, !dbg !2143
  %attr57 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_crit56, i32 0, i32 0, !dbg !2144
  %attr58 = getelementptr inbounds %struct.device_attribute, ptr %attr57, i32 0, i32 0, !dbg !2145
  %name59 = getelementptr inbounds %struct.attribute, ptr %attr58, i32 0, i32 0, !dbg !2146
  store ptr %arraydecay55, ptr %name59, align 8, !dbg !2147
  %37 = load ptr, ptr %temp, align 8, !dbg !2148
  %temp_crit60 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %37, i32 0, i32 3, !dbg !2149
  %attr61 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_crit60, i32 0, i32 0, !dbg !2150
  %attr62 = getelementptr inbounds %struct.device_attribute, ptr %attr61, i32 0, i32 0, !dbg !2151
  %mode63 = getelementptr inbounds %struct.attribute, ptr %attr62, i32 0, i32 1, !dbg !2152
  store i16 292, ptr %mode63, align 8, !dbg !2153
  %38 = load ptr, ptr %temp, align 8, !dbg !2154
  %temp_crit64 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %38, i32 0, i32 3, !dbg !2155
  %attr65 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_crit64, i32 0, i32 0, !dbg !2156
  %show66 = getelementptr inbounds %struct.device_attribute, ptr %attr65, i32 0, i32 1, !dbg !2157
  store ptr @temp_crit_show, ptr %show66, align 8, !dbg !2158
  br label %do.body67, !dbg !2159

do.body67:                                        ; preds = %if.then48
  br label %do.cond68, !dbg !2160

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !2160

do.end69:                                         ; preds = %do.cond68
  %39 = load ptr, ptr %hwmon, align 8, !dbg !2162
  %device70 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %39, i32 0, i32 1, !dbg !2163
  %40 = load ptr, ptr %device70, align 8, !dbg !2163
  %41 = load ptr, ptr %temp, align 8, !dbg !2164
  %temp_crit71 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %41, i32 0, i32 3, !dbg !2165
  %attr72 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_crit71, i32 0, i32 0, !dbg !2166
  %call73 = call i32 @device_create_file(ptr noundef %40, ptr noundef %attr72) #15, !dbg !2167
  store i32 %call73, ptr %result, align 4, !dbg !2168
  %42 = load i32, ptr %result, align 4, !dbg !2169
  %tobool74 = icmp ne i32 %42, 0, !dbg !2169
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !2171

if.then75:                                        ; preds = %do.end69
  br label %unregister_input, !dbg !2172

if.end76:                                         ; preds = %do.end69
  br label %if.end77, !dbg !2173

if.end77:                                         ; preds = %if.end76, %if.end46
  call void @mutex_lock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2174
  %43 = load i32, ptr %new_hwmon_device, align 4, !dbg !2175
  %tobool78 = icmp ne i32 %43, 0, !dbg !2175
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !2177

if.then79:                                        ; preds = %if.end77
  %44 = load ptr, ptr %hwmon, align 8, !dbg !2178
  %node = getelementptr inbounds %struct.thermal_hwmon_device, ptr %44, i32 0, i32 4, !dbg !2179
  call void @list_add_tail(ptr noundef %node, ptr noundef @thermal_hwmon_list) #15, !dbg !2180
  br label %if.end80, !dbg !2180

if.end80:                                         ; preds = %if.then79, %if.end77
  %45 = load ptr, ptr %temp, align 8, !dbg !2181
  %hwmon_node = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %45, i32 0, i32 0, !dbg !2182
  %46 = load ptr, ptr %hwmon, align 8, !dbg !2183
  %tz_list81 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %46, i32 0, i32 3, !dbg !2184
  call void @list_add_tail(ptr noundef %hwmon_node, ptr noundef %tz_list81) #15, !dbg !2185
  call void @mutex_unlock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2186
  store i32 0, ptr %retval, align 4, !dbg !2187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2187

unregister_input:                                 ; preds = %if.then75
  call void @llvm.dbg.label(metadata !2012), !dbg !2188
  %47 = load ptr, ptr %hwmon, align 8, !dbg !2189
  %device82 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %47, i32 0, i32 1, !dbg !2190
  %48 = load ptr, ptr %device82, align 8, !dbg !2190
  %49 = load ptr, ptr %temp, align 8, !dbg !2191
  %temp_input83 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %49, i32 0, i32 2, !dbg !2192
  %attr84 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input83, i32 0, i32 0, !dbg !2193
  call void @device_remove_file(ptr noundef %48, ptr noundef %attr84) #15, !dbg !2194
  br label %free_temp_mem, !dbg !2194

free_temp_mem:                                    ; preds = %unregister_input, %if.then45
  call void @llvm.dbg.label(metadata !2013), !dbg !2195
  %50 = load ptr, ptr %temp, align 8, !dbg !2196
  call void @kfree(ptr noundef %50) #15, !dbg !2197
  br label %unregister_name, !dbg !2197

unregister_name:                                  ; preds = %free_temp_mem, %if.then23
  call void @llvm.dbg.label(metadata !2014), !dbg !2198
  %51 = load i32, ptr %new_hwmon_device, align 4, !dbg !2199
  %tobool85 = icmp ne i32 %51, 0, !dbg !2199
  br i1 %tobool85, label %if.then86, label %if.end88, !dbg !2201

if.then86:                                        ; preds = %unregister_name
  %52 = load ptr, ptr %hwmon, align 8, !dbg !2202
  %device87 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %52, i32 0, i32 1, !dbg !2203
  %53 = load ptr, ptr %device87, align 8, !dbg !2203
  call void @hwmon_device_unregister(ptr noundef %53) #15, !dbg !2204
  br label %if.end88, !dbg !2204

if.end88:                                         ; preds = %if.then86, %unregister_name
  br label %free_mem, !dbg !2199

free_mem:                                         ; preds = %if.end88, %if.then17
  call void @llvm.dbg.label(metadata !2015), !dbg !2205
  %54 = load ptr, ptr %hwmon, align 8, !dbg !2206
  call void @kfree(ptr noundef %54) #15, !dbg !2207
  %55 = load i32, ptr %result, align 4, !dbg !2208
  store i32 %55, ptr %retval, align 4, !dbg !2209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2209

cleanup:                                          ; preds = %free_mem, %if.end80, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_hwmon_device) #14, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #14, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwmon) #14, !dbg !2210
  %56 = load i32, ptr %retval, align 4, !dbg !2210
  ret i32 %56, !dbg !2210
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @thermal_hwmon_lookup_by_type(ptr noundef %tz) #0 align 16 !dbg !2211 {
entry:
  %retval = alloca ptr, align 8
  %tz.addr = alloca ptr, align 8
  %hwmon = alloca ptr, align 8
  %type = alloca [20 x i8], align 16
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr9 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2217, metadata !DIExpression()), !dbg !2226
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwmon) #14, !dbg !2227
  call void @llvm.dbg.declare(metadata ptr %hwmon, metadata !2218, metadata !DIExpression()), !dbg !2228
  call void @llvm.lifetime.start.p0(i64 20, ptr %type) #14, !dbg !2229
  call void @llvm.dbg.declare(metadata ptr %type, metadata !2219, metadata !DIExpression()), !dbg !2230
  call void @mutex_lock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2231
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2220, metadata !DIExpression()), !dbg !2232
  %0 = load ptr, ptr @thermal_hwmon_list, align 8, !dbg !2232
  store ptr %0, ptr %__mptr, align 8, !dbg !2232
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2232
  %add.ptr = getelementptr i8, ptr %1, i64 -56, !dbg !2232
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2232
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2233
  %2 = load ptr, ptr %tmp, align 8, !dbg !2232
  store ptr %2, ptr %hwmon, align 8, !dbg !2233
  br label %for.cond, !dbg !2233

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %hwmon, align 8, !dbg !2234
  %node = getelementptr inbounds %struct.thermal_hwmon_device, ptr %3, i32 0, i32 4, !dbg !2234
  %cmp = icmp eq ptr %node, @thermal_hwmon_list, !dbg !2234
  %lnot = xor i1 %cmp, true, !dbg !2234
  br i1 %lnot, label %for.body, label %for.end, !dbg !2233

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i8], ptr %type, i64 0, i64 0, !dbg !2235
  %4 = load ptr, ptr %tz.addr, align 8, !dbg !2237
  %type1 = getelementptr inbounds %struct.thermal_zone_device, ptr %4, i32 0, i32 1, !dbg !2238
  %arraydecay2 = getelementptr inbounds [20 x i8], ptr %type1, i64 0, i64 0, !dbg !2237
  %call = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef %arraydecay2) #15, !dbg !2239
  %arraydecay3 = getelementptr inbounds [20 x i8], ptr %type, i64 0, i64 0, !dbg !2240
  %call4 = call ptr @strreplace(ptr noundef %arraydecay3, i8 noundef zeroext 45, i8 noundef zeroext 95) #15, !dbg !2241
  %5 = load ptr, ptr %hwmon, align 8, !dbg !2242
  %type5 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %5, i32 0, i32 0, !dbg !2244
  %arraydecay6 = getelementptr inbounds [20 x i8], ptr %type5, i64 0, i64 0, !dbg !2242
  %arraydecay7 = getelementptr inbounds [20 x i8], ptr %type, i64 0, i64 0, !dbg !2245
  %call8 = call i32 @strcmp(ptr noundef %arraydecay6, ptr noundef %arraydecay7) #15, !dbg !2246
  %tobool = icmp ne i32 %call8, 0, !dbg !2246
  br i1 %tobool, label %if.end, label %if.then, !dbg !2247

if.then:                                          ; preds = %for.body
  call void @mutex_unlock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2248
  %6 = load ptr, ptr %hwmon, align 8, !dbg !2250
  store ptr %6, ptr %retval, align 8, !dbg !2251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2251

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2252

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #14, !dbg !2253
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2223, metadata !DIExpression()), !dbg !2253
  %7 = load ptr, ptr %hwmon, align 8, !dbg !2253
  %node10 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %7, i32 0, i32 4, !dbg !2253
  %next = getelementptr inbounds %struct.list_head, ptr %node10, i32 0, i32 0, !dbg !2253
  %8 = load ptr, ptr %next, align 8, !dbg !2253
  store ptr %8, ptr %__mptr9, align 8, !dbg !2253
  %9 = load ptr, ptr %__mptr9, align 8, !dbg !2253
  %add.ptr12 = getelementptr i8, ptr %9, i64 -56, !dbg !2253
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !2253
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #14, !dbg !2234
  %10 = load ptr, ptr %tmp11, align 8, !dbg !2253
  store ptr %10, ptr %hwmon, align 8, !dbg !2234
  br label %for.cond, !dbg !2234, !llvm.loop !2254

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2258
  store ptr null, ptr %retval, align 8, !dbg !2259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2259

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr %type) #14, !dbg !2260
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwmon) #14, !dbg !2260
  %11 = load ptr, ptr %retval, align 8, !dbg !2260
  ret ptr %11, !dbg !2260
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !2261 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2265, metadata !DIExpression()), !dbg !2267
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2266, metadata !DIExpression()), !dbg !2268
  %0 = load i64, ptr %size.addr, align 8, !dbg !2269
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2270
  %or = or i32 %1, 256, !dbg !2271
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !2272
  ret ptr %call, !dbg !2273
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !2274 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2279, metadata !DIExpression()), !dbg !2280
  br label %do.body, !dbg !2281

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2282

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2284

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2282

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2286
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2286
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2286
  store volatile ptr %0, ptr %next, align 8, !dbg !2286
  br label %do.end3, !dbg !2286

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2282

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2288

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2289

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2291

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2289

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2293
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2293
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2293
  store volatile ptr %2, ptr %prev, align 8, !dbg !2293
  br label %do.end9, !dbg !2293

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2289

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2296 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2300 dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2303 dso_local ptr @hwmon_device_register_for_thermal(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !2307 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2312, metadata !DIExpression()), !dbg !2313
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2314
  %1 = ptrtoint ptr %0 to i64, !dbg !2314
  %2 = inttoptr i64 %1 to ptr, !dbg !2314
  %3 = ptrtoint ptr %2 to i64, !dbg !2314
  %cmp = icmp uge i64 %3, -4095, !dbg !2314
  %lnot = xor i1 %cmp, true, !dbg !2314
  %lnot1 = xor i1 %lnot, true, !dbg !2314
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2314
  %conv = sext i32 %lnot.ext to i64, !dbg !2314
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2314
  %tobool = icmp ne i64 %expval, 0, !dbg !2314
  ret i1 %tobool, !dbg !2315
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !2316 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2320, metadata !DIExpression()), !dbg !2321
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2322
  %1 = ptrtoint ptr %0 to i64, !dbg !2323
  ret i64 %1, !dbg !2324
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2325 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @temp_input_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2329 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %temperature = alloca i32, align 4
  %ret = alloca i32, align 4
  %hwmon_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2331, metadata !DIExpression()), !dbg !2343
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2332, metadata !DIExpression()), !dbg !2344
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2333, metadata !DIExpression()), !dbg !2345
  call void @llvm.lifetime.start.p0(i64 4, ptr %temperature) #14, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %temperature, metadata !2334, metadata !DIExpression()), !dbg !2347
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2348
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2335, metadata !DIExpression()), !dbg !2349
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwmon_attr) #14, !dbg !2350
  call void @llvm.dbg.declare(metadata ptr %hwmon_attr, metadata !2336, metadata !DIExpression()), !dbg !2351
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2337, metadata !DIExpression()), !dbg !2352
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2352
  store ptr %0, ptr %__mptr, align 8, !dbg !2352
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2352
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2352
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2353
  %2 = load ptr, ptr %tmp, align 8, !dbg !2352
  store ptr %2, ptr %hwmon_attr, align 8, !dbg !2351
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #14, !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !2339, metadata !DIExpression()), !dbg !2355
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #14, !dbg !2356
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2340, metadata !DIExpression()), !dbg !2356
  %3 = load ptr, ptr %hwmon_attr, align 8, !dbg !2356
  store ptr %3, ptr %__mptr1, align 8, !dbg !2356
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !2356
  %add.ptr3 = getelementptr i8, ptr %4, i64 -24, !dbg !2356
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #14, !dbg !2357
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2356
  store ptr %5, ptr %temp, align 8, !dbg !2355
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #14, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2342, metadata !DIExpression()), !dbg !2359
  %6 = load ptr, ptr %temp, align 8, !dbg !2360
  %tz4 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %6, i32 0, i32 1, !dbg !2361
  %7 = load ptr, ptr %tz4, align 8, !dbg !2361
  store ptr %7, ptr %tz, align 8, !dbg !2359
  %8 = load ptr, ptr %tz, align 8, !dbg !2362
  %call = call i32 @thermal_zone_get_temp(ptr noundef %8, ptr noundef %temperature) #15, !dbg !2363
  store i32 %call, ptr %ret, align 4, !dbg !2364
  %9 = load i32, ptr %ret, align 4, !dbg !2365
  %tobool = icmp ne i32 %9, 0, !dbg !2365
  br i1 %tobool, label %if.then, label %if.end, !dbg !2367

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %ret, align 4, !dbg !2368
  %conv = sext i32 %10 to i64, !dbg !2368
  store i64 %conv, ptr %retval, align 8, !dbg !2369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2369

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !2370
  %12 = load i32, ptr %temperature, align 4, !dbg !2371
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %11, ptr noundef @.str.6, i32 noundef %12) #15, !dbg !2372
  %conv6 = sext i32 %call5 to i64, !dbg !2372
  store i64 %conv6, ptr %retval, align 8, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #14, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #14, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwmon_attr) #14, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 4, ptr %temperature) #14, !dbg !2374
  %13 = load i64, ptr %retval, align 8, !dbg !2374
  ret i64 %13, !dbg !2374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2375 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @thermal_zone_crit_temp_valid(ptr noundef %tz) #0 align 16 !dbg !2380 {
entry:
  %tz.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #14, !dbg !2387
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !2385, metadata !DIExpression()), !dbg !2388
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2389
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 22, !dbg !2390
  %1 = load ptr, ptr %ops, align 8, !dbg !2390
  %get_crit_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %1, i32 0, i32 7, !dbg !2391
  %2 = load ptr, ptr %get_crit_temp, align 8, !dbg !2391
  %tobool = icmp ne ptr %2, null, !dbg !2389
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2392

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2393
  %ops1 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 22, !dbg !2394
  %4 = load ptr, ptr %ops1, align 8, !dbg !2394
  %get_crit_temp2 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 7, !dbg !2395
  %5 = load ptr, ptr %get_crit_temp2, align 8, !dbg !2395
  %6 = load ptr, ptr %tz.addr, align 8, !dbg !2396
  %call = call i32 %5(ptr noundef %6, ptr noundef %temp) #15, !dbg !2393
  %tobool3 = icmp ne i32 %call, 0, !dbg !2397
  %lnot = xor i1 %tobool3, true, !dbg !2397
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2398
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #14, !dbg !2399
  ret i1 %7, !dbg !2400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @temp_crit_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2401 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %hwmon_attr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %temperature = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2403, metadata !DIExpression()), !dbg !2415
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2404, metadata !DIExpression()), !dbg !2416
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2405, metadata !DIExpression()), !dbg !2417
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwmon_attr) #14, !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %hwmon_attr, metadata !2406, metadata !DIExpression()), !dbg !2419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2407, metadata !DIExpression()), !dbg !2420
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2420
  store ptr %0, ptr %__mptr, align 8, !dbg !2420
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2420
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2420
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2421
  %2 = load ptr, ptr %tmp, align 8, !dbg !2420
  store ptr %2, ptr %hwmon_attr, align 8, !dbg !2419
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #14, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !2409, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #14, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2410, metadata !DIExpression()), !dbg !2424
  %3 = load ptr, ptr %hwmon_attr, align 8, !dbg !2424
  store ptr %3, ptr %__mptr1, align 8, !dbg !2424
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !2424
  %add.ptr3 = getelementptr i8, ptr %4, i64 -72, !dbg !2424
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2424
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #14, !dbg !2425
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2424
  store ptr %5, ptr %temp, align 8, !dbg !2423
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #14, !dbg !2426
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2412, metadata !DIExpression()), !dbg !2427
  %6 = load ptr, ptr %temp, align 8, !dbg !2428
  %tz4 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %6, i32 0, i32 1, !dbg !2429
  %7 = load ptr, ptr %tz4, align 8, !dbg !2429
  store ptr %7, ptr %tz, align 8, !dbg !2427
  call void @llvm.lifetime.start.p0(i64 4, ptr %temperature) #14, !dbg !2430
  call void @llvm.dbg.declare(metadata ptr %temperature, metadata !2413, metadata !DIExpression()), !dbg !2431
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2432
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2414, metadata !DIExpression()), !dbg !2433
  %8 = load ptr, ptr %tz, align 8, !dbg !2434
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %8, i32 0, i32 28, !dbg !2435
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !2436
  %9 = load ptr, ptr %tz, align 8, !dbg !2437
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 2, !dbg !2439
  %call = call i32 @device_is_registered(ptr noundef %device) #15, !dbg !2440
  %tobool = icmp ne i32 %call, 0, !dbg !2440
  br i1 %tobool, label %if.then, label %if.else, !dbg !2441

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %tz, align 8, !dbg !2442
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %10, i32 0, i32 22, !dbg !2443
  %11 = load ptr, ptr %ops, align 8, !dbg !2443
  %get_crit_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %11, i32 0, i32 7, !dbg !2444
  %12 = load ptr, ptr %get_crit_temp, align 8, !dbg !2444
  %13 = load ptr, ptr %tz, align 8, !dbg !2445
  %call5 = call i32 %12(ptr noundef %13, ptr noundef %temperature) #15, !dbg !2442
  store i32 %call5, ptr %ret, align 4, !dbg !2446
  br label %if.end, !dbg !2447

if.else:                                          ; preds = %entry
  store i32 -19, ptr %ret, align 4, !dbg !2448
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %tz, align 8, !dbg !2449
  %lock6 = getelementptr inbounds %struct.thermal_zone_device, ptr %14, i32 0, i32 28, !dbg !2450
  call void @mutex_unlock(ptr noundef %lock6) #15, !dbg !2451
  %15 = load i32, ptr %ret, align 4, !dbg !2452
  %tobool7 = icmp ne i32 %15, 0, !dbg !2452
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2454

if.then8:                                         ; preds = %if.end
  %16 = load i32, ptr %ret, align 4, !dbg !2455
  %conv = sext i32 %16 to i64, !dbg !2455
  store i64 %conv, ptr %retval, align 8, !dbg !2456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2456

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !2457
  %18 = load i32, ptr %temperature, align 4, !dbg !2458
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef @.str.6, i32 noundef %18) #15, !dbg !2459
  %conv11 = sext i32 %call10 to i64, !dbg !2459
  store i64 %conv11, ptr %retval, align 8, !dbg !2460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2460

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 4, ptr %temperature) #14, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #14, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #14, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwmon_attr) #14, !dbg !2461
  %19 = load i64, ptr %retval, align 8, !dbg !2461
  ret i64 %19, !dbg !2461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2462 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !2466 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2470, metadata !DIExpression()), !dbg !2472
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2471, metadata !DIExpression()), !dbg !2473
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2474
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2475
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2476
  %2 = load ptr, ptr %prev, align 8, !dbg !2476
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2477
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #15, !dbg !2478
  ret void, !dbg !2479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2480 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2481 dso_local void @device_remove_file(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2484 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2487 dso_local void @hwmon_device_unregister(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thermal_remove_hwmon_sysfs(ptr noundef %tz) #0 align 16 !dbg !2488 {
entry:
  %tz.addr = alloca ptr, align 8
  %hwmon = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwmon) #14, !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %hwmon, metadata !2491, metadata !DIExpression()), !dbg !2495
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #14, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !2492, metadata !DIExpression()), !dbg !2497
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2498
  %call = call ptr @thermal_hwmon_lookup_by_type(ptr noundef %0) #15, !dbg !2499
  store ptr %call, ptr %hwmon, align 8, !dbg !2500
  %1 = load ptr, ptr %hwmon, align 8, !dbg !2501
  %tobool = icmp ne ptr %1, null, !dbg !2501
  %lnot = xor i1 %tobool, true, !dbg !2501
  %lnot1 = xor i1 %lnot, true, !dbg !2501
  %lnot2 = xor i1 %lnot1, true, !dbg !2501
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2501
  %conv = sext i32 %lnot.ext to i64, !dbg !2501
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2501
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2501
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2503

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2504

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %hwmon, align 8, !dbg !2506
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2507
  %call4 = call ptr @thermal_hwmon_lookup_temp(ptr noundef %2, ptr noundef %3) #15, !dbg !2508
  store ptr %call4, ptr %temp, align 8, !dbg !2509
  %4 = load ptr, ptr %temp, align 8, !dbg !2510
  %tobool5 = icmp ne ptr %4, null, !dbg !2510
  %lnot6 = xor i1 %tobool5, true, !dbg !2510
  %lnot8 = xor i1 %lnot6, true, !dbg !2510
  %lnot10 = xor i1 %lnot8, true, !dbg !2510
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !2510
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !2510
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !2510
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !2510
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2512

if.then15:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2513

if.end16:                                         ; preds = %if.end
  %5 = load ptr, ptr %hwmon, align 8, !dbg !2515
  %device = getelementptr inbounds %struct.thermal_hwmon_device, ptr %5, i32 0, i32 1, !dbg !2516
  %6 = load ptr, ptr %device, align 8, !dbg !2516
  %7 = load ptr, ptr %temp, align 8, !dbg !2517
  %temp_input = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %7, i32 0, i32 2, !dbg !2518
  %attr = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_input, i32 0, i32 0, !dbg !2519
  call void @device_remove_file(ptr noundef %6, ptr noundef %attr) #15, !dbg !2520
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !2521
  %call17 = call zeroext i1 @thermal_zone_crit_temp_valid(ptr noundef %8) #15, !dbg !2523
  br i1 %call17, label %if.then18, label %if.end21, !dbg !2524

if.then18:                                        ; preds = %if.end16
  %9 = load ptr, ptr %hwmon, align 8, !dbg !2525
  %device19 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %9, i32 0, i32 1, !dbg !2526
  %10 = load ptr, ptr %device19, align 8, !dbg !2526
  %11 = load ptr, ptr %temp, align 8, !dbg !2527
  %temp_crit = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %11, i32 0, i32 3, !dbg !2528
  %attr20 = getelementptr inbounds %struct.thermal_hwmon_attr, ptr %temp_crit, i32 0, i32 0, !dbg !2529
  call void @device_remove_file(ptr noundef %10, ptr noundef %attr20) #15, !dbg !2530
  br label %if.end21, !dbg !2530

if.end21:                                         ; preds = %if.then18, %if.end16
  call void @mutex_lock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2531
  %12 = load ptr, ptr %temp, align 8, !dbg !2532
  %hwmon_node = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %12, i32 0, i32 0, !dbg !2533
  call void @list_del(ptr noundef %hwmon_node) #15, !dbg !2534
  %13 = load ptr, ptr %temp, align 8, !dbg !2535
  call void @kfree(ptr noundef %13) #15, !dbg !2536
  %14 = load ptr, ptr %hwmon, align 8, !dbg !2537
  %tz_list = getelementptr inbounds %struct.thermal_hwmon_device, ptr %14, i32 0, i32 3, !dbg !2539
  %call22 = call i32 @list_empty(ptr noundef %tz_list) #15, !dbg !2540
  %tobool23 = icmp ne i32 %call22, 0, !dbg !2540
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !2541

if.then24:                                        ; preds = %if.end21
  call void @mutex_unlock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2544

if.end25:                                         ; preds = %if.end21
  %15 = load ptr, ptr %hwmon, align 8, !dbg !2545
  %node = getelementptr inbounds %struct.thermal_hwmon_device, ptr %15, i32 0, i32 4, !dbg !2546
  call void @list_del(ptr noundef %node) #15, !dbg !2547
  call void @mutex_unlock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2548
  %16 = load ptr, ptr %hwmon, align 8, !dbg !2549
  %device26 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %16, i32 0, i32 1, !dbg !2550
  %17 = load ptr, ptr %device26, align 8, !dbg !2550
  call void @hwmon_device_unregister(ptr noundef %17) #15, !dbg !2551
  %18 = load ptr, ptr %hwmon, align 8, !dbg !2552
  call void @kfree(ptr noundef %18) #15, !dbg !2553
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2554
  br label %cleanup, !dbg !2554

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #14, !dbg !2554
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwmon) #14, !dbg !2554
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2554

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @thermal_hwmon_lookup_temp(ptr noundef %hwmon, ptr noundef %tz) #0 align 16 !dbg !2555 {
entry:
  %retval = alloca ptr, align 8
  %hwmon.addr = alloca ptr, align 8
  %tz.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %hwmon, ptr %hwmon.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwmon.addr, metadata !2561, metadata !DIExpression()), !dbg !2570
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2562, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #14, !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !2563, metadata !DIExpression()), !dbg !2573
  call void @mutex_lock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2574
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2564, metadata !DIExpression()), !dbg !2575
  %0 = load ptr, ptr %hwmon.addr, align 8, !dbg !2575
  %tz_list = getelementptr inbounds %struct.thermal_hwmon_device, ptr %0, i32 0, i32 3, !dbg !2575
  %next = getelementptr inbounds %struct.list_head, ptr %tz_list, i32 0, i32 0, !dbg !2575
  %1 = load ptr, ptr %next, align 8, !dbg !2575
  store ptr %1, ptr %__mptr, align 8, !dbg !2575
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2575
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2575
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2576
  %3 = load ptr, ptr %tmp, align 8, !dbg !2575
  store ptr %3, ptr %temp, align 8, !dbg !2576
  br label %for.cond, !dbg !2576

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %temp, align 8, !dbg !2577
  %hwmon_node = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %4, i32 0, i32 0, !dbg !2577
  %5 = load ptr, ptr %hwmon.addr, align 8, !dbg !2577
  %tz_list1 = getelementptr inbounds %struct.thermal_hwmon_device, ptr %5, i32 0, i32 3, !dbg !2577
  %cmp = icmp eq ptr %hwmon_node, %tz_list1, !dbg !2577
  %lnot = xor i1 %cmp, true, !dbg !2577
  br i1 %lnot, label %for.body, label %for.end, !dbg !2576

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %temp, align 8, !dbg !2578
  %tz2 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %6, i32 0, i32 1, !dbg !2580
  %7 = load ptr, ptr %tz2, align 8, !dbg !2580
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !2581
  %cmp3 = icmp eq ptr %7, %8, !dbg !2582
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2583

if.then:                                          ; preds = %for.body
  call void @mutex_unlock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2584
  %9 = load ptr, ptr %temp, align 8, !dbg !2586
  store ptr %9, ptr %retval, align 8, !dbg !2587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2587

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2581

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #14, !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !2567, metadata !DIExpression()), !dbg !2588
  %10 = load ptr, ptr %temp, align 8, !dbg !2588
  %hwmon_node5 = getelementptr inbounds %struct.thermal_hwmon_temp, ptr %10, i32 0, i32 0, !dbg !2588
  %next6 = getelementptr inbounds %struct.list_head, ptr %hwmon_node5, i32 0, i32 0, !dbg !2588
  %11 = load ptr, ptr %next6, align 8, !dbg !2588
  store ptr %11, ptr %__mptr4, align 8, !dbg !2588
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !2588
  %add.ptr8 = getelementptr i8, ptr %12, i64 0, !dbg !2588
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #14, !dbg !2577
  %13 = load ptr, ptr %tmp7, align 8, !dbg !2588
  store ptr %13, ptr %temp, align 8, !dbg !2577
  br label %for.cond, !dbg !2577, !llvm.loop !2589

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @thermal_hwmon_list_lock) #15, !dbg !2591
  store ptr null, ptr %retval, align 8, !dbg !2592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2592

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #14, !dbg !2593
  %14 = load ptr, ptr %retval, align 8, !dbg !2593
  ret ptr %14, !dbg !2593
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !2594 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2596, metadata !DIExpression()), !dbg !2597
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2598
  call void @__list_del_entry(ptr noundef %0) #15, !dbg !2599
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2600
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2601
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2602
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2603
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2604
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2605
  ret void, !dbg !2606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !2607 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  br label %do.body, !dbg !2615

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2617

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2615
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2615
  %1 = load volatile ptr, ptr %next, align 8, !dbg !2615
  store ptr %1, ptr %tmp, align 8, !dbg !2617
  %2 = load ptr, ptr %tmp, align 8, !dbg !2615
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2619
  %cmp = icmp eq ptr %2, %3, !dbg !2620
  %conv = zext i1 %cmp to i32, !dbg !2620
  ret i32 %conv, !dbg !2621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %dev, ptr noundef %tz) #0 align 16 !dbg !2622 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %tz.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2626, metadata !DIExpression()), !dbg !2630
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2627, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2628, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2629, metadata !DIExpression()), !dbg !2635
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_thermal_hwmon_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.2) #15, !dbg !2636
  store ptr %call, ptr %ptr, align 8, !dbg !2637
  %0 = load ptr, ptr %ptr, align 8, !dbg !2638
  %tobool = icmp ne ptr %0, null, !dbg !2638
  br i1 %tobool, label %if.end, label %if.then, !dbg !2640

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2641

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2644

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2641
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef @.str.3) #17, !dbg !2641
  store i32 -12, ptr %retval, align 4, !dbg !2646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2646

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2647
  %call1 = call i32 @thermal_add_hwmon_sysfs(ptr noundef %2) #15, !dbg !2648
  store i32 %call1, ptr %ret, align 4, !dbg !2649
  %3 = load i32, ptr %ret, align 4, !dbg !2650
  %tobool2 = icmp ne i32 %3, 0, !dbg !2650
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !2652

if.then3:                                         ; preds = %if.end
  br label %do.body4, !dbg !2653

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !2656

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2656

do.end6:                                          ; preds = %do.cond5
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2653
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef @.str.4) #17, !dbg !2653
  %5 = load ptr, ptr %ptr, align 8, !dbg !2658
  call void @devres_free(ptr noundef %5) #15, !dbg !2659
  %6 = load i32, ptr %ret, align 4, !dbg !2660
  store i32 %6, ptr %retval, align 4, !dbg !2661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2661

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %tz.addr, align 8, !dbg !2662
  %8 = load ptr, ptr %ptr, align 8, !dbg !2663
  store ptr %7, ptr %8, align 8, !dbg !2664
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2665
  %10 = load ptr, ptr %ptr, align 8, !dbg !2666
  call void @devres_add(ptr noundef %9, ptr noundef %10) #15, !dbg !2667
  %11 = load i32, ptr %ret, align 4, !dbg !2668
  store i32 %11, ptr %retval, align 4, !dbg !2669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2669

cleanup:                                          ; preds = %if.end7, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2670
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !2670
  %12 = load i32, ptr %retval, align 4, !dbg !2670
  ret i32 %12, !dbg !2670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2671 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_thermal_hwmon_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !2678 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2680, metadata !DIExpression()), !dbg !2682
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2681, metadata !DIExpression()), !dbg !2683
  %0 = load ptr, ptr %res.addr, align 8, !dbg !2684
  %1 = load ptr, ptr %0, align 8, !dbg !2685
  call void @thermal_remove_hwmon_sysfs(ptr noundef %1) #15, !dbg !2686
  ret void, !dbg !2687
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2688 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2692 dso_local void @devres_free(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2693 dso_local void @devres_add(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2694 dso_local ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2697 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2700 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2702, metadata !DIExpression()), !dbg !2707
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2703, metadata !DIExpression()), !dbg !2708
  %0 = load i64, ptr %size.addr, align 8, !dbg !2709
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2710
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2711

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2712
  %tobool = icmp ne i64 %2, 0, !dbg !2712
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2713

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2714
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2704, metadata !DIExpression()), !dbg !2715
  %3 = load i64, ptr %size.addr, align 8, !dbg !2716
  %cmp = icmp ugt i64 %3, 8192, !dbg !2718
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2719

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2720
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2721
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2722
  store ptr %call, ptr %retval, align 8, !dbg !2723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2723

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2724
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2724
  store i32 %call2, ptr %index, align 4, !dbg !2725
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2726
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2727
  %9 = ptrtoint ptr %8 to i64, !dbg !2727
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2728
  %idxprom = zext i32 %call3 to i64, !dbg !2729
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2729
  %10 = load i32, ptr %index, align 4, !dbg !2730
  %idxprom4 = zext i32 %10 to i64, !dbg !2729
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2729
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2729
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2731
  %13 = load i64, ptr %size.addr, align 8, !dbg !2732
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2733
  store ptr %call6, ptr %retval, align 8, !dbg !2734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2734

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2735
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2736
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2737
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2738
  store ptr %call8, ptr %retval, align 8, !dbg !2739
  br label %return, !dbg !2739

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2740
  ret ptr %16, !dbg !2740
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2741 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !2742 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2746, metadata !DIExpression()), !dbg !2748
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2747, metadata !DIExpression()), !dbg !2749
  %0 = load i64, ptr %size.addr, align 8, !dbg !2750
  %tobool = icmp ne i64 %0, 0, !dbg !2750
  br i1 %tobool, label %if.end, label %if.then, !dbg !2752

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2753
  br label %return, !dbg !2753

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2754
  %cmp = icmp ule i64 %1, 8, !dbg !2756
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2757

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2759
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2761
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2762

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2763
  %cmp4 = icmp ule i64 %3, 96, !dbg !2764
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2765

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2766
  br label %return, !dbg !2766

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2767
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2769
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2770

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2771
  %cmp9 = icmp ule i64 %5, 192, !dbg !2772
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2773

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2774
  br label %return, !dbg !2774

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2775
  %cmp12 = icmp ule i64 %6, 8, !dbg !2777
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2778

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2779
  br label %return, !dbg !2779

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2780
  %cmp15 = icmp ule i64 %7, 16, !dbg !2782
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2783

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2784
  br label %return, !dbg !2784

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2785
  %cmp18 = icmp ule i64 %8, 32, !dbg !2787
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2788

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2789
  br label %return, !dbg !2789

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2790
  %cmp21 = icmp ule i64 %9, 64, !dbg !2792
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2793

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2794
  br label %return, !dbg !2794

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2795
  %cmp24 = icmp ule i64 %10, 128, !dbg !2797
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2798

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2799
  br label %return, !dbg !2799

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2800
  %cmp27 = icmp ule i64 %11, 256, !dbg !2802
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2803

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2804
  br label %return, !dbg !2804

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2805
  %cmp30 = icmp ule i64 %12, 512, !dbg !2807
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2808

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2809
  br label %return, !dbg !2809

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2810
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2812
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2813

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2814
  br label %return, !dbg !2814

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2815
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2817
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2818

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2819
  br label %return, !dbg !2819

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2820
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2822
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2823

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2824
  br label %return, !dbg !2824

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2825
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2827
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2828

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2829
  br label %return, !dbg !2829

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2830
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2832
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2833

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2834
  br label %return, !dbg !2834

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2835
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2837
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2838

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2839
  br label %return, !dbg !2839

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2840
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2842
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2843

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2844
  br label %return, !dbg !2844

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2845
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2847
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2848

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2850
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2852
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2853

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2854
  br label %return, !dbg !2854

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2855
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2857
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2858

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2859
  br label %return, !dbg !2859

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2860
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2862
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2863

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2864
  br label %return, !dbg !2864

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2865
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2867
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2868

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2869
  br label %return, !dbg !2869

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2870, !range !2872, !noundef !380
  %tobool69 = trunc i8 %25 to i1, !dbg !2870
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2873

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2874

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !2875, !srcloc !2878
  unreachable, !dbg !2875

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2879

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2880

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2881

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2883

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2881

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #14, !dbg !2885, !srcloc !2887
  br label %do.end75, !dbg !2885

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2881

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2888
  br label %return, !dbg !2888

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2889
  ret i32 %26, !dbg !2889
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2890 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !2896 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2900, metadata !DIExpression()), !dbg !2902
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2901, metadata !DIExpression()), !dbg !2903
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2904
  %and = and i32 %0, 17, !dbg !2904
  %cmp = icmp eq i32 %and, 0, !dbg !2904
  %lnot = xor i1 %cmp, true, !dbg !2904
  %lnot1 = xor i1 %lnot, true, !dbg !2904
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2904
  %conv = sext i32 %lnot.ext to i64, !dbg !2904
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2904
  %tobool = icmp ne i64 %expval, 0, !dbg !2904
  br i1 %tobool, label %if.then, label %if.end, !dbg !2906

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2907
  br label %return, !dbg !2907

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2908
  %and2 = and i32 %1, 1, !dbg !2910
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2910
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2911

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2912
  br label %return, !dbg !2912

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2913
  br label %return, !dbg !2913

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2915
  ret i32 %2, !dbg !2915
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2916 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2917 dso_local void @__compiletime_assert_117() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2918 dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2919 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_is_registered(ptr noundef %dev) #4 align 16 !dbg !2922 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2924, metadata !DIExpression()), !dbg !2925
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2926
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2927
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !2928
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !2928
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !2928
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2928
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2928
  ret i32 %bf.cast, !dbg !2929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !2930 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2934, metadata !DIExpression()), !dbg !2937
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2935, metadata !DIExpression()), !dbg !2938
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2936, metadata !DIExpression()), !dbg !2939
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2940
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2942
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2943
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !dbg !2944
  br i1 %call, label %if.end, label %if.then, !dbg !2945

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2946

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2947
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2948
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2949
  store ptr %3, ptr %prev1, align 8, !dbg !2950
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2951
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2952
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2953
  store ptr %5, ptr %next2, align 8, !dbg !2954
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2955
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2956
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2957
  store ptr %7, ptr %prev3, align 8, !dbg !2958
  br label %do.body, !dbg !2959

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2960

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2962

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2960

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2964
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2964
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2964
  store volatile ptr %9, ptr %next6, align 8, !dbg !2964
  br label %do.end7, !dbg !2964

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2960

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !2967 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2971, metadata !DIExpression()), !dbg !2974
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2972, metadata !DIExpression()), !dbg !2975
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2973, metadata !DIExpression()), !dbg !2976
  ret i1 true, !dbg !2977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !2978 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2980, metadata !DIExpression()), !dbg !2981
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2982
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #15, !dbg !2984
  br i1 %call, label %if.end, label %if.then, !dbg !2985

if.then:                                          ; preds = %entry
  br label %return, !dbg !2986

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2987
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2988
  %2 = load ptr, ptr %prev, align 8, !dbg !2988
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2989
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2990
  %4 = load ptr, ptr %next, align 8, !dbg !2990
  call void @__list_del(ptr noundef %2, ptr noundef %4) #15, !dbg !2991
  br label %return, !dbg !2992

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2992
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !2993 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2997, metadata !DIExpression()), !dbg !2998
  ret i1 true, !dbg !2999
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3000 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3002, metadata !DIExpression()), !dbg !3004
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3003, metadata !DIExpression()), !dbg !3005
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3006
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3007
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3008
  store ptr %0, ptr %prev1, align 8, !dbg !3009
  br label %do.body, !dbg !3010

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3011

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3013

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3011

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3015
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3015
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3015
  store volatile ptr %2, ptr %next4, align 8, !dbg !3015
  br label %do.end5, !dbg !3015

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3011

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3017
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!llvm.ident = !{!2003}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/thermal/thermal_hwmon.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ae81d131f43a9230a467b2a3cb2d591")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "thermal_hwmon_list_lock", scope: !14, file: !2, line: 47, type: !501, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/thermal/.thermal_hwmon.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/thermal/thermal_sys\22 -D KBUILD_BASENAME=\22thermal_hwmon\22 -D KBUILD_MODNAME=\22thermal_sys\22 -D __KBUILD_MODNAME=kmod_thermal_sys -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/thermal/thermal_hwmon.ll drivers/thermal/thermal_hwmon.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !138, globals: !1958, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !23, !30, !36, !43, !48, !56, !64, !70, !79, !84, !89, !95, !100, !106, !112, !123, !128}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !17, line: 26, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!21 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!22 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !24, line: 312, baseType: !18, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!27 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!28 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!29 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !31, line: 45, baseType: !18, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!34 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!35 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !37, line: 487, baseType: !18, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!40 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!41 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!42 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !44, line: 65, baseType: !18, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!47 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !49, line: 620, baseType: !18, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!52 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!53 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!54 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!55 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !49, line: 597, baseType: !57, size: 32, elements: !58)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!60 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!61 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!62 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!63 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !65, line: 30, baseType: !18, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!68 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!69 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !37, line: 547, baseType: !18, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!73 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!74 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!75 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!76 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!77 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!78 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !37, line: 564, baseType: !18, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!82 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !37, line: 577, baseType: !18, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!87 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!88 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !37, line: 503, baseType: !18, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!92 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!93 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!94 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !96, line: 7, baseType: !18, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0988915424caf116c4c8a170acf5e63")
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0)
!99 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !96, line: 12, baseType: !18, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0)
!103 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1)
!104 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2)
!105 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !107, line: 37, baseType: !18, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0)
!110 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1)
!111 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !107, line: 44, baseType: !18, size: 32, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122}
!114 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0)
!115 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1)
!116 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2)
!117 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3)
!118 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4)
!119 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5)
!120 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6)
!121 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7)
!122 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 10, baseType: !18, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "false", value: 0)
!127 = !DIEnumerator(name: "true", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !129, line: 364, baseType: !18, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!132 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!133 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!134 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!135 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!136 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!137 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!138 = !{!139, !141, !142, !294, !1765, !280, !1767, !1785, !1955, !1957}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !140, line: 154, baseType: !18)
!140 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_hwmon_device", file: !2, line: 24, size: 576, elements: !144)
!144 = !{!145, !149, !1762, !1763, !1764}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !2, line: 25, baseType: !146, size: 160)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 20)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !143, file: !2, line: 26, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !37, line: 705, size: 5824, elements: !152)
!152 = !{!153, !819, !820, !823, !824, !877, !1345, !1346, !1347, !1348, !1349, !1356, !1526, !1539, !1549, !1553, !1555, !1556, !1557, !1561, !1568, !1569, !1572, !1575, !1701, !1702, !1703, !1706, !1707, !1708, !1709, !1739, !1740, !1741, !1744, !1747, !1756, !1757, !1758, !1759, !1760, !1761}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !151, file: !37, line: 706, baseType: !154, size: 512)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !155, line: 64, size: 512, elements: !156)
!155 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!156 = !{!157, !160, !166, !168, !257, !689, !804, !814, !815, !816, !817, !818}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !155, line: 65, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !154, file: !155, line: 66, baseType: !161, size: 128, offset: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !140, line: 190, size: 128, elements: !162)
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !140, line: 191, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !140, line: 191, baseType: !164, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !155, line: 67, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !154, file: !155, line: 68, baseType: !169, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !155, line: 168, size: 768, elements: !171)
!171 = !{!172, !173, !216, !217}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !170, file: !155, line: 169, baseType: !161, size: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !170, file: !155, line: 170, baseType: !174, size: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !175, line: 29, baseType: !176)
!175 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !175, line: 17, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !175, line: 18, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !175, line: 18, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !179, file: !175, line: 19, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !183, line: 14, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !182, file: !183, line: 15, baseType: !186, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !187, line: 44, baseType: !188)
!187 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !187, line: 14, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !187, line: 15, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !188, file: !187, line: 15, size: 32, elements: !192)
!192 = !{!193, !198, !208}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !191, file: !187, line: 16, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !140, line: 174, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 172, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !195, file: !140, line: 173, baseType: !57, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !187, line: 24, baseType: !199, size: 16)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !187, line: 24, size: 16, elements: !200)
!200 = !{!201, !207}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !199, file: !187, line: 25, baseType: !202, size: 8)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !203, line: 17, baseType: !204)
!203 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !205, line: 21, baseType: !206)
!205 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!206 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !199, file: !187, line: 26, baseType: !202, size: 8, offset: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !187, line: 28, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !187, line: 28, size: 32, elements: !210)
!210 = !{!211, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !209, file: !187, line: 29, baseType: !212, size: 16)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !203, line: 19, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !205, line: 24, baseType: !214)
!214 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !209, file: !187, line: 30, baseType: !212, size: 16, offset: 16)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !155, line: 171, baseType: !154, size: 512, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !170, file: !155, line: 172, baseType: !218, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !155, line: 133, size: 192, elements: !221)
!221 = !{!222, !229, !234}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !220, file: !155, line: 134, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!57, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !155, line: 135, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!158, !227}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !220, file: !155, line: 136, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!57, !227, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !155, line: 125, size: 20736, elements: !241)
!241 = !{!242, !247, !251, !252, !256}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !240, file: !155, line: 126, baseType: !243, size: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !245)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!245 = !{!246}
!246 = !DISubrange(count: 3)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !240, file: !155, line: 127, baseType: !248, size: 4096, offset: 192)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 4096, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !240, file: !155, line: 128, baseType: !57, size: 32, offset: 4288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !240, file: !155, line: 129, baseType: !253, size: 16384, offset: 4320)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2048)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !240, file: !155, line: 130, baseType: !57, size: 32, offset: 20704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !154, file: !155, line: 69, baseType: !258, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !155, line: 116, size: 384, elements: !261)
!261 = !{!262, !266, !295, !635, !666, !670}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !260, file: !155, line: 117, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !167}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !260, file: !155, line: 118, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !270, line: 254, size: 128, elements: !271)
!270 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!271 = !{!272, !287}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !269, file: !270, line: 255, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !167, !281, !244}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !140, line: 66, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !278, line: 73, baseType: !279)
!278 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !278, line: 15, baseType: !280)
!280 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !270, line: 30, size: 128, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !270, line: 31, baseType: !158, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !282, file: !270, line: 32, baseType: !286, size: 16, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !140, line: 24, baseType: !214)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !269, file: !270, line: 256, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!276, !167, !281, !158, !291}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 61, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !278, line: 72, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !278, line: 16, baseType: !294)
!294 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !260, file: !155, line: 119, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !270, line: 84, size: 320, elements: !300)
!300 = !{!301, !302, !306, !631, !633}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !270, line: 85, baseType: !158, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !299, file: !270, line: 86, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!286, !167, !281, !57}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !299, file: !270, line: 88, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!286, !167, !310, !57}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !270, line: 175, size: 512, elements: !312)
!312 = !{!313, !314, !315, !316, !323, !333, !334}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !311, file: !270, line: 176, baseType: !282, size: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !311, file: !270, line: 177, baseType: !291, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !311, file: !270, line: 178, baseType: !141, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !311, file: !270, line: 179, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !322, line: 32, flags: DIFlagFwdDecl)
!322 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!323 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !311, file: !270, line: 180, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!276, !327, !167, !310, !244, !330, !291}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !329, line: 537, flags: DIFlagFwdDecl)
!329 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !140, line: 52, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !278, line: 88, baseType: !332)
!332 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !311, file: !270, line: 182, baseType: !324, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !311, file: !270, line: 184, baseType: !335, size: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!57, !327, !167, !310, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !322, line: 625, size: 1344, elements: !340)
!340 = !{!341, !358, !580, !586, !593, !594, !599, !602, !614, !615, !618, !622, !623, !624, !625, !626, !629}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !322, line: 628, baseType: !342, size: 128)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !322, line: 628, size: 128, elements: !343)
!343 = !{!344, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !322, line: 629, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !322, line: 629, size: 128, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !345, file: !322, line: 631, baseType: !294, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !345, file: !322, line: 632, baseType: !294, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !342, file: !322, line: 635, baseType: !350, size: 128, align: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !140, line: 232, size: 128, align: 64, elements: !351)
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !140, line: 233, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !350, file: !140, line: 234, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !353}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !339, file: !322, line: 639, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !322, line: 733, size: 10240, elements: !361)
!361 = !{!362, !576}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !322, line: 734, baseType: !363, size: 10240)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !322, line: 734, size: 10240, elements: !364)
!364 = !{!365, !369, !383, !387, !388, !389, !390, !391, !392, !400, !401, !402, !411, !412, !421, !422, !423, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !470, !484, !487, !542, !543, !544, !547, !550, !551, !554, !555, !556, !563, !564}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !322, line: 739, baseType: !366, size: 512, align: 512)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !322, line: 739, size: 512, align: 512, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !366, file: !322, line: 747, baseType: !194, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !363, file: !322, line: 750, baseType: !370, size: 128, offset: 512)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !371, line: 218, size: 128, elements: !372)
!371 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!372 = !{!373, !381, !382}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !371, line: 219, baseType: !374, size: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !371, line: 219, size: 32, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !374, file: !371, line: 220, baseType: !174, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !374, file: !371, line: 221, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !371, line: 197, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 197, elements: !380)
!380 = !{}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !370, file: !371, line: 223, baseType: !18, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !370, file: !371, line: 224, baseType: !141, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !363, file: !322, line: 752, baseType: !384, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!294, !327, !294, !294, !294, !294}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !363, file: !322, line: 756, baseType: !294, size: 64, offset: 704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !363, file: !322, line: 757, baseType: !294, size: 64, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !363, file: !322, line: 760, baseType: !294, size: 64, offset: 832)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !363, file: !322, line: 761, baseType: !294, size: 64, offset: 896)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !363, file: !322, line: 763, baseType: !294, size: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !363, file: !322, line: 764, baseType: !393, size: 64, offset: 1024)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !329, line: 299, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 299, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !395, file: !329, line: 299, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !399, line: 18, baseType: !294)
!399 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !363, file: !322, line: 773, baseType: !194, size: 32, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !363, file: !322, line: 785, baseType: !194, size: 32, offset: 1120)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !363, file: !322, line: 795, baseType: !403, size: 64, offset: 1152)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !322, line: 726, size: 128, elements: !405)
!405 = !{!406, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !404, file: !322, line: 727, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !203, line: 23, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !205, line: 31, baseType: !409)
!409 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !404, file: !322, line: 728, baseType: !57, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !363, file: !322, line: 801, baseType: !294, size: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !363, file: !322, line: 804, baseType: !413, size: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !414, line: 13, baseType: !415)
!414 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !140, line: 181, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 179, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !416, file: !140, line: 180, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !203, line: 22, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !205, line: 30, baseType: !332)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !363, file: !322, line: 806, baseType: !57, size: 32, offset: 1344)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !363, file: !322, line: 808, baseType: !174, size: 32, offset: 1376)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !363, file: !322, line: 823, baseType: !424, size: 320, offset: 1408)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !425, line: 48, size: 320, elements: !426)
!425 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!426 = !{!427, !428, !429, !434, !436}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !424, file: !425, line: 49, baseType: !413, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !424, file: !425, line: 55, baseType: !413, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !424, file: !425, line: 57, baseType: !430, size: 32, offset: 128)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !431, line: 15, size: 32, elements: !432)
!431 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !430, file: !431, line: 20, baseType: !194, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !424, file: !425, line: 59, baseType: !435, size: 32, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !183, line: 23, baseType: !182)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !424, file: !425, line: 60, baseType: !161, size: 128, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !363, file: !322, line: 825, baseType: !161, size: 128, offset: 1728)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !363, file: !322, line: 845, baseType: !57, size: 32, offset: 1856)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !363, file: !322, line: 849, baseType: !294, size: 64, offset: 1920)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !363, file: !322, line: 850, baseType: !294, size: 64, offset: 1984)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !363, file: !322, line: 852, baseType: !294, size: 64, offset: 2048)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !363, file: !322, line: 853, baseType: !294, size: 64, offset: 2112)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !363, file: !322, line: 854, baseType: !415, size: 64, offset: 2176)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !363, file: !322, line: 855, baseType: !294, size: 64, offset: 2240)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !363, file: !322, line: 856, baseType: !294, size: 64, offset: 2304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !363, file: !322, line: 857, baseType: !294, size: 64, offset: 2368)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !363, file: !322, line: 858, baseType: !294, size: 64, offset: 2432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !363, file: !322, line: 865, baseType: !449, size: 32, offset: 2496)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !450, line: 69, baseType: !451)
!450 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !450, line: 64, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !451, file: !450, line: 65, baseType: !18, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !363, file: !322, line: 867, baseType: !174, size: 32, offset: 2528)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !363, file: !322, line: 869, baseType: !294, size: 64, offset: 2560)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !363, file: !322, line: 869, baseType: !294, size: 64, offset: 2624)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !363, file: !322, line: 869, baseType: !294, size: 64, offset: 2688)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !363, file: !322, line: 869, baseType: !294, size: 64, offset: 2752)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !363, file: !322, line: 870, baseType: !294, size: 64, offset: 2816)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !363, file: !322, line: 870, baseType: !294, size: 64, offset: 2880)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !363, file: !322, line: 870, baseType: !294, size: 64, offset: 2944)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !363, file: !322, line: 871, baseType: !294, size: 64, offset: 3008)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !363, file: !322, line: 871, baseType: !294, size: 64, offset: 3072)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !363, file: !322, line: 871, baseType: !294, size: 64, offset: 3136)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !363, file: !322, line: 871, baseType: !294, size: 64, offset: 3200)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !363, file: !322, line: 873, baseType: !467, size: 3328, offset: 3264)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 3328, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 52)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !363, file: !322, line: 875, baseType: !471, size: 1280, offset: 6592)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 1280, elements: !482)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !473, line: 22, size: 320, elements: !474)
!473 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!474 = !{!475, !476, !477, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !473, line: 23, baseType: !435, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !472, file: !473, line: 24, baseType: !419, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !472, file: !473, line: 26, baseType: !161, size: 128, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !472, file: !473, line: 28, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !203, line: 20, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !205, line: 26, baseType: !57)
!482 = !{!483}
!483 = !DISubrange(count: 4)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !363, file: !322, line: 877, baseType: !485, size: 64, offset: 7872)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !322, line: 877, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !363, file: !322, line: 880, baseType: !488, size: 1088, offset: 7936)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !489, line: 72, baseType: !490)
!489 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 23, size: 1088, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !499, !500, !508, !509, !536, !537, !538}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !490, file: !489, line: 28, baseType: !407, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !490, file: !489, line: 38, baseType: !415, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !490, file: !489, line: 40, baseType: !294, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !490, file: !489, line: 43, baseType: !424, size: 320, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !490, file: !489, line: 44, baseType: !497, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !489, line: 44, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !489, line: 48, baseType: !294, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !490, file: !489, line: 59, baseType: !501, size: 256, offset: 640)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !502, line: 66, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!503 = !{!504, !505, !506, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !501, file: !502, line: 67, baseType: !413, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !501, file: !502, line: 68, baseType: !435, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !501, file: !502, line: 70, baseType: !430, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !501, file: !502, line: 72, baseType: !161, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !490, file: !489, line: 60, baseType: !141, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !490, file: !489, line: 61, baseType: !510, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !513, line: 13, size: 1216, elements: !514)
!513 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!514 = !{!515, !516, !517, !518, !519, !520, !521, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !512, file: !513, line: 14, baseType: !141, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !512, file: !513, line: 15, baseType: !294, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !512, file: !513, line: 17, baseType: !294, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !512, file: !513, line: 17, baseType: !294, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !512, file: !513, line: 18, baseType: !294, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !512, file: !513, line: 18, baseType: !294, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !512, file: !513, line: 19, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !512, file: !513, line: 21, baseType: !280, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !512, file: !513, line: 23, baseType: !280, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !512, file: !513, line: 24, baseType: !280, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !512, file: !513, line: 25, baseType: !280, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !512, file: !513, line: 26, baseType: !280, size: 64, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !512, file: !513, line: 27, baseType: !280, size: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !512, file: !513, line: 28, baseType: !280, size: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !512, file: !513, line: 29, baseType: !280, size: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !512, file: !513, line: 30, baseType: !280, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !512, file: !513, line: 31, baseType: !280, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !512, file: !513, line: 32, baseType: !280, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !512, file: !513, line: 33, baseType: !280, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !490, file: !489, line: 63, baseType: !194, size: 32, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !490, file: !489, line: 69, baseType: !212, size: 16, offset: 1056)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !490, file: !489, line: 70, baseType: !539, size: 16, offset: 1072)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !203, line: 18, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !205, line: 23, baseType: !541)
!541 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !322, line: 882, baseType: !294, size: 64, offset: 9024)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !363, file: !322, line: 885, baseType: !174, size: 32, offset: 9088)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !363, file: !322, line: 886, baseType: !545, size: 64, offset: 9152)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !322, line: 732, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !363, file: !322, line: 901, baseType: !548, size: 64, offset: 9216)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !322, line: 901, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !363, file: !322, line: 904, baseType: !327, size: 64, offset: 9280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !363, file: !322, line: 906, baseType: !552, size: 64, offset: 9344)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !322, line: 906, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !363, file: !322, line: 930, baseType: !194, size: 32, offset: 9408)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !363, file: !322, line: 933, baseType: !194, size: 32, offset: 9440)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !363, file: !322, line: 935, baseType: !557, size: 64, offset: 9472)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !558, line: 103, size: 64, elements: !559)
!558 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !557, file: !558, line: 104, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !558, line: 101, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !363, file: !322, line: 940, baseType: !413, size: 64, offset: 9536)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !363, file: !322, line: 942, baseType: !565, size: 256, offset: 9600)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !566, line: 98, size: 256, elements: !567)
!566 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!567 = !{!568, !569, !570}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !565, file: !566, line: 99, baseType: !413, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !565, file: !566, line: 100, baseType: !161, size: 128, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !565, file: !566, line: 101, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !566, line: 21, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !360, file: !322, line: 986, baseType: !577, offset: 10240)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: -1)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !339, file: !322, line: 640, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !329, line: 297, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !329, line: 297, size: 64, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !582, file: !329, line: 297, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !399, line: 19, baseType: !294)
!586 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !322, line: 646, baseType: !587, size: 64, offset: 256)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !322, line: 646, size: 64, elements: !588)
!588 = !{!589, !592}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !587, file: !322, line: 647, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !322, line: 542, baseType: !294)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !587, file: !322, line: 648, baseType: !591, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !339, file: !322, line: 666, baseType: !57, size: 32, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !339, file: !322, line: 667, baseType: !595, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !322, line: 579, size: 320, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !322, line: 580, baseType: !424, size: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !339, file: !322, line: 670, baseType: !600, size: 8, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !140, line: 35, baseType: !601)
!601 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !339, file: !322, line: 681, baseType: !603, size: 256, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !322, line: 678, size: 256, elements: !604)
!604 = !{!605, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !603, file: !322, line: 679, baseType: !606, size: 192, align: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !607, line: 5, size: 192, align: 64, elements: !608)
!607 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!608 = !{!609, !610, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !606, file: !607, line: 6, baseType: !294, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !606, file: !607, line: 7, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !606, file: !607, line: 8, baseType: !611, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !603, file: !322, line: 680, baseType: !294, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !339, file: !322, line: 689, baseType: !161, size: 128, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !339, file: !322, line: 691, baseType: !616, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !322, line: 691, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !339, file: !322, line: 694, baseType: !619, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !322, line: 694, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !339, file: !322, line: 697, baseType: !294, size: 64, offset: 1024)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !339, file: !322, line: 699, baseType: !327, size: 64, offset: 1088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !339, file: !322, line: 700, baseType: !141, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !339, file: !322, line: 711, baseType: !413, size: 64, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !339, file: !322, line: 717, baseType: !627, size: 64, offset: 1280)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !322, line: 717, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !339, file: !322, line: 722, baseType: !630, offset: 1344)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !322, line: 570, elements: !380)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !299, file: !270, line: 90, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !299, file: !270, line: 91, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !260, file: !155, line: 120, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!639, !227}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !17, line: 39, size: 384, elements: !642)
!642 = !{!643, !644, !648, !652, !658, !662}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !17, line: 40, baseType: !16, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !641, file: !17, line: 41, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!600}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !641, file: !17, line: 42, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!141}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !641, file: !17, line: 43, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!522, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !17, line: 19, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !641, file: !17, line: 44, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!522}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !641, file: !17, line: 45, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !141}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !260, file: !155, line: 121, baseType: !667, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!522, !227}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !260, file: !155, line: 122, baseType: !671, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !227, !674, !682}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !676, line: 23, baseType: !677)
!676 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 21, size: 32, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !677, file: !676, line: 22, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !140, line: 37, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !278, line: 49, baseType: !18)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !676, line: 28, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 26, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !676, line: 27, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !140, line: 38, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !278, line: 50, baseType: !18)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !154, file: !155, line: 70, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !692, line: 190, size: 1152, elements: !693)
!692 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !796, !797, !798, !799, !800, !803}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !691, file: !692, line: 191, baseType: !194, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !691, file: !692, line: 192, baseType: !194, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !691, file: !692, line: 202, baseType: !690, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !691, file: !692, line: 203, baseType: !158, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !691, file: !692, line: 205, baseType: !606, size: 192, align: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !691, file: !692, line: 207, baseType: !522, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !691, file: !692, line: 208, baseType: !18, size: 32, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 209, baseType: !702, size: 256, offset: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 209, size: 256, elements: !703)
!703 = !{!704, !716, !720}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !702, file: !692, line: 210, baseType: !705, size: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !692, line: 153, size: 256, elements: !706)
!706 = !{!707, !708, !712, !715}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !705, file: !692, line: 154, baseType: !294, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !705, file: !692, line: 156, baseType: !709, size: 64, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !607, line: 12, size: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !709, file: !607, line: 13, baseType: !611, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !705, file: !692, line: 162, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !692, line: 162, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !705, file: !692, line: 167, baseType: !294, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !702, file: !692, line: 211, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !692, line: 170, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !717, file: !692, line: 171, baseType: !690, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !702, file: !692, line: 212, baseType: !721, size: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !692, line: 174, size: 256, elements: !722)
!722 = !{!723, !791, !794, !795}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !721, file: !692, line: 175, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !692, line: 271, size: 768, elements: !727)
!727 = !{!728, !751, !755, !759, !764, !768, !772, !776, !777, !778, !779, !787}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !726, file: !692, line: 276, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!57, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !692, line: 251, size: 1216, elements: !734)
!734 = !{!735, !736, !737, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !733, file: !692, line: 253, baseType: !690, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !733, file: !692, line: 254, baseType: !327, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !733, file: !692, line: 255, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !740, line: 66, flags: DIFlagFwdDecl)
!740 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !733, file: !692, line: 256, baseType: !141, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !733, file: !692, line: 259, baseType: !501, size: 256, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !733, file: !692, line: 260, baseType: !501, size: 256, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !733, file: !692, line: 261, baseType: !57, size: 32, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !733, file: !692, line: 262, baseType: !161, size: 128, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !733, file: !692, line: 263, baseType: !244, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !733, file: !692, line: 265, baseType: !291, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !733, file: !692, line: 266, baseType: !600, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !733, file: !692, line: 267, baseType: !600, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !733, file: !692, line: 268, baseType: !619, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !726, file: !692, line: 277, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !732}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !726, file: !692, line: 290, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!57, !738, !141}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !726, file: !692, line: 292, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!141, !738, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !726, file: !692, line: 293, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!141, !738, !141, !763}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !726, file: !692, line: 294, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !738, !141}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !726, file: !692, line: 296, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!276, !732, !244, !291, !330}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !726, file: !692, line: 306, baseType: !291, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !726, file: !692, line: 313, baseType: !600, size: 8, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !726, file: !692, line: 314, baseType: !773, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !726, file: !692, line: 317, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !732, !785}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !784, line: 59, baseType: !18)
!784 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !692, line: 31, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !726, file: !692, line: 320, baseType: !788, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!57, !732, !338}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !721, file: !692, line: 176, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !692, line: 35, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !721, file: !692, line: 177, baseType: !330, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !721, file: !692, line: 178, baseType: !690, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !691, file: !692, line: 215, baseType: !141, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !691, file: !692, line: 221, baseType: !407, size: 64, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !692, line: 223, baseType: !214, size: 16, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !691, file: !692, line: 224, baseType: !286, size: 16, offset: 912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !691, file: !692, line: 225, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !692, line: 36, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !691, file: !692, line: 227, baseType: !350, size: 128, align: 64, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !154, file: !155, line: 71, baseType: !805, size: 32, offset: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !806, line: 19, size: 32, elements: !807)
!806 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !805, file: !806, line: 20, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !810, line: 113, baseType: !811)
!810 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !810, line: 111, size: 32, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !811, file: !810, line: 112, baseType: !194, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !154, file: !155, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !154, file: !155, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !154, file: !155, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !154, file: !155, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !154, file: !155, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !37, line: 707, baseType: !150, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !151, file: !37, line: 709, baseType: !821, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !37, line: 37, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !151, file: !37, line: 711, baseType: !158, size: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !37, line: 712, baseType: !825, size: 64, offset: 704)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !37, line: 89, size: 384, elements: !828)
!828 = !{!829, !830, !831, !837, !842, !846}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !827, file: !37, line: 90, baseType: !158, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !827, file: !37, line: 91, baseType: !296, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !827, file: !37, line: 92, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!57, !835, !239}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !827, file: !37, line: 93, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!244, !835, !841, !674, !682}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !827, file: !37, line: 95, baseType: !843, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !150}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !827, file: !37, line: 97, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !49, line: 286, size: 1472, elements: !850)
!850 = !{!851, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !849, file: !49, line: 287, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!57, !150}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !849, file: !49, line: 288, baseType: !843, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !849, file: !49, line: 289, baseType: !852, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !849, file: !49, line: 290, baseType: !852, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !849, file: !49, line: 291, baseType: !852, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !849, file: !49, line: 292, baseType: !852, size: 64, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !849, file: !49, line: 293, baseType: !852, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !849, file: !49, line: 294, baseType: !852, size: 64, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !849, file: !49, line: 295, baseType: !852, size: 64, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !849, file: !49, line: 296, baseType: !852, size: 64, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !849, file: !49, line: 297, baseType: !852, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !849, file: !49, line: 298, baseType: !852, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !849, file: !49, line: 299, baseType: !852, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !849, file: !49, line: 300, baseType: !852, size: 64, offset: 832)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !849, file: !49, line: 301, baseType: !852, size: 64, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !849, file: !49, line: 302, baseType: !852, size: 64, offset: 960)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !849, file: !49, line: 303, baseType: !852, size: 64, offset: 1024)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !849, file: !49, line: 304, baseType: !852, size: 64, offset: 1088)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !849, file: !49, line: 305, baseType: !852, size: 64, offset: 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !849, file: !49, line: 306, baseType: !852, size: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !849, file: !49, line: 307, baseType: !852, size: 64, offset: 1280)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !849, file: !49, line: 308, baseType: !852, size: 64, offset: 1344)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !849, file: !49, line: 309, baseType: !852, size: 64, offset: 1408)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !151, file: !37, line: 714, baseType: !878, size: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !881, line: 80, size: 1344, elements: !882)
!881 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!882 = !{!883, !884, !885, !886, !887, !888, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1344}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !881, line: 81, baseType: !158, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !880, file: !881, line: 82, baseType: !158, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !880, file: !881, line: 83, baseType: !296, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !880, file: !881, line: 84, baseType: !296, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !880, file: !881, line: 85, baseType: !296, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !880, file: !881, line: 87, baseType: !889, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!57, !150, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !31, line: 96, size: 1152, elements: !894)
!894 = !{!895, !896, !897, !1275, !1276, !1277, !1278, !1294, !1307, !1308, !1309, !1310, !1311, !1319, !1320, !1321, !1322, !1323, !1324}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !893, file: !31, line: 97, baseType: !158, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !893, file: !31, line: 98, baseType: !878, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !893, file: !31, line: 100, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !24, line: 402, size: 9216, align: 512, elements: !900)
!900 = !{!901, !902, !903, !907, !928, !954, !955, !956, !957, !961, !964, !965, !966, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1029, !1033, !1053, !1071, !1072, !1073, !1074, !1083, !1107, !1108, !1111, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1125, !1126, !1233, !1241, !1242, !1243, !1245, !1249, !1250, !1254, !1255, !1256, !1257, !1259, !1260, !1261, !1268, !1269, !1270, !1274}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !899, file: !24, line: 403, baseType: !23, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !899, file: !24, line: 406, baseType: !161, size: 128, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !899, file: !24, line: 409, baseType: !904, size: 448, offset: 192)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 56)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !899, file: !24, line: 417, baseType: !908, size: 768, offset: 640)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !24, line: 45, size: 768, elements: !909)
!909 = !{!910, !911, !912, !913, !916}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !908, file: !24, line: 46, baseType: !154, size: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !908, file: !24, line: 47, baseType: !898, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !908, file: !24, line: 48, baseType: !167, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !908, file: !24, line: 49, baseType: !914, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !24, line: 49, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !908, file: !24, line: 50, baseType: !917, size: 64, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !919, line: 26, size: 256, elements: !920)
!919 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !918, file: !919, line: 27, baseType: !18, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !918, file: !919, line: 28, baseType: !923, size: 192, offset: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !924, line: 43, size: 192, elements: !925)
!924 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !924, line: 44, baseType: !435, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !923, file: !924, line: 45, baseType: !161, size: 128, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !899, file: !24, line: 418, baseType: !929, size: 64, offset: 1408)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !24, line: 53, size: 448, elements: !931)
!931 = !{!932, !933, !938, !942, !946, !950}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !930, file: !24, line: 54, baseType: !282, size: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !930, file: !24, line: 55, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!276, !929, !937, !244}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !930, file: !24, line: 57, baseType: !939, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!276, !929, !937, !158, !291}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !930, file: !24, line: 59, baseType: !943, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !898, !158}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !930, file: !24, line: 60, baseType: !947, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!57, !898}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !930, file: !24, line: 61, baseType: !951, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !898}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !899, file: !24, line: 419, baseType: !158, size: 64, offset: 1472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !899, file: !24, line: 420, baseType: !158, size: 64, offset: 1536)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !899, file: !24, line: 421, baseType: !167, size: 64, offset: 1600)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !899, file: !24, line: 424, baseType: !958, size: 64, offset: 1664)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !24, line: 424, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !899, file: !24, line: 425, baseType: !962, size: 64, offset: 1728)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !899, file: !24, line: 426, baseType: !18, size: 32, offset: 1792)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !899, file: !24, line: 435, baseType: !501, size: 256, offset: 1856)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !899, file: !24, line: 437, baseType: !967, size: 64, offset: 2112)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !969, line: 69, size: 320, elements: !970)
!969 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!970 = !{!971, !972, !973, !990, !992, !996, !997}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !968, file: !969, line: 70, baseType: !158, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !968, file: !969, line: 71, baseType: !898, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !968, file: !969, line: 72, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !969, line: 47, size: 256, elements: !977)
!977 = !{!978, !979, !985, !989}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !969, line: 49, baseType: !18, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !976, file: !969, line: 51, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!57, !158, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !976, file: !969, line: 53, baseType: !986, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!57, !244, !983}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !976, file: !969, line: 55, baseType: !663, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !968, file: !969, line: 73, baseType: !991, size: 16, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !968, file: !969, line: 74, baseType: !993, size: 8, offset: 208)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !203, line: 16, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !205, line: 20, baseType: !995)
!995 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 75, baseType: !202, size: 8, offset: 216)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !969, line: 76, baseType: !998, size: 64, offset: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !969, line: 76, size: 64, elements: !999)
!999 = !{!1000, !1001, !1008}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !998, file: !969, line: 77, baseType: !141, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !998, file: !969, line: 78, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !969, line: 86, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1004, file: !969, line: 87, baseType: !18, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1004, file: !969, line: 88, baseType: !244, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !998, file: !969, line: 79, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !969, line: 92, size: 256, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1017, !1018}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1011, file: !969, line: 94, baseType: !18, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1011, file: !969, line: 95, baseType: !18, size: 32, offset: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1011, file: !969, line: 96, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1011, file: !969, line: 97, baseType: !974, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1011, file: !969, line: 98, baseType: !141, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !899, file: !24, line: 438, baseType: !18, size: 32, offset: 2176)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !899, file: !24, line: 441, baseType: !18, size: 32, offset: 2208)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !899, file: !24, line: 442, baseType: !958, size: 64, offset: 2240)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !899, file: !24, line: 443, baseType: !962, size: 64, offset: 2304)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !899, file: !24, line: 444, baseType: !600, size: 8, offset: 2368)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !899, file: !24, line: 451, baseType: !600, size: 8, offset: 2376)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !899, file: !24, line: 454, baseType: !18, size: 32, offset: 2400)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !899, file: !24, line: 455, baseType: !1027, size: 64, offset: 2432)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !24, line: 43, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !899, file: !24, line: 458, baseType: !1030, size: 64, offset: 2496)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!57}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !899, file: !24, line: 460, baseType: !1034, size: 4032, align: 512, offset: 2560)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 4032, elements: !1051)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !24, line: 362, size: 576, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1035, file: !24, line: 363, baseType: !141, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1035, file: !24, line: 364, baseType: !18, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1035, file: !24, line: 367, baseType: !1040, size: 448, offset: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !24, line: 319, size: 448, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1040, file: !24, line: 320, baseType: !898, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1040, file: !24, line: 321, baseType: !1044, size: 384, offset: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1045, line: 40, size: 384, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1044, file: !1045, line: 41, baseType: !1048, size: 384, align: 64)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 384, align: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DISubrange(count: 2)
!1051 = !{!1052}
!1052 = !DISubrange(count: 7)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !899, file: !24, line: 463, baseType: !1054, size: 192, offset: 6592)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1055, line: 8, size: 192, elements: !1056)
!1055 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1056 = !{!1057, !1058, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1054, file: !1055, line: 10, baseType: !18, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1054, file: !1055, line: 11, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1054, file: !1055, line: 12, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1063, line: 59, size: 48, elements: !1064)
!1063 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1062, file: !1063, line: 60, baseType: !539, size: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1062, file: !1063, line: 61, baseType: !539, size: 16, offset: 16)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1062, file: !1063, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1062, file: !1063, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1062, file: !1063, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1062, file: !1063, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !899, file: !24, line: 465, baseType: !294, size: 64, offset: 6784)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !899, file: !24, line: 469, baseType: !18, size: 32, offset: 6848)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !899, file: !24, line: 470, baseType: !161, size: 128, offset: 6912)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !899, file: !24, line: 471, baseType: !1075, size: 64, offset: 7040)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1077, line: 33, size: 96, elements: !1078)
!1077 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1076, file: !1077, line: 37, baseType: !57, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1076, file: !1077, line: 43, baseType: !57, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1076, file: !1077, line: 45, baseType: !214, size: 16, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1076, file: !1077, line: 47, baseType: !214, size: 16, offset: 80)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !899, file: !24, line: 476, baseType: !1084, size: 64, offset: 7104)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !24, line: 378, size: 256, elements: !1086)
!1086 = !{!1087, !1104, !1105, !1106}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1085, file: !24, line: 379, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1090, line: 204, baseType: !1091)
!1090 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1090, line: 197, size: 192, elements: !1092)
!1092 = !{!1093, !1096, !1097, !1098, !1100, !1102}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1091, file: !1090, line: 198, baseType: !1094, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1090, line: 21, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !205, line: 27, baseType: !18)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1091, file: !1090, line: 199, baseType: !206, size: 8, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1091, file: !1090, line: 200, baseType: !206, size: 8, offset: 40)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1091, file: !1090, line: 201, baseType: !1099, size: 16, offset: 48)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1090, line: 17, baseType: !213)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1091, file: !1090, line: 202, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1090, line: 16, baseType: !408)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1091, file: !1090, line: 203, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1090, line: 22, baseType: !408)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1085, file: !24, line: 380, baseType: !18, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1085, file: !24, line: 381, baseType: !244, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1085, file: !24, line: 382, baseType: !244, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !899, file: !24, line: 477, baseType: !1085, size: 256, offset: 7168)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !899, file: !24, line: 480, baseType: !1109, size: 64, offset: 7424)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !24, line: 480, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !899, file: !24, line: 483, baseType: !1112, size: 64, offset: 7488)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !24, line: 483, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !899, file: !24, line: 488, baseType: !244, size: 64, offset: 7552)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !899, file: !24, line: 492, baseType: !141, size: 64, offset: 7616)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !899, file: !24, line: 493, baseType: !18, size: 32, offset: 7680)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !899, file: !24, line: 495, baseType: !141, size: 64, offset: 7744)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !899, file: !24, line: 496, baseType: !18, size: 32, offset: 7808)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !899, file: !24, line: 499, baseType: !18, size: 32, offset: 7840)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !899, file: !24, line: 500, baseType: !1121, size: 64, offset: 7872)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1123, line: 45, baseType: !1124)
!1123 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !899, file: !24, line: 503, baseType: !18, size: 32, offset: 7936)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !899, file: !24, line: 504, baseType: !1127, size: 64, offset: 8000)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1130, line: 96, size: 192, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1131 = !{!1132, !1133, !1194, !1197}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1129, file: !1130, line: 97, baseType: !18, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1129, file: !1130, line: 98, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1130, line: 24, size: 3072, elements: !1136)
!1136 = !{!1137, !1139, !1140, !1141, !1142, !1156, !1157, !1158, !1159, !1178, !1179, !1180, !1191, !1192, !1193}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1135, file: !1130, line: 26, baseType: !1138, size: 128)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 128, elements: !1049)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1135, file: !1130, line: 27, baseType: !1138, size: 128, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1135, file: !1130, line: 28, baseType: !57, size: 32, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1135, file: !1130, line: 31, baseType: !174, size: 32, align: 512, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1135, file: !1130, line: 32, baseType: !1143, size: 960, offset: 576)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1144, line: 206, size: 960, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1145 = !{!1146, !1147, !1150, !1152, !1153, !1155}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1143, file: !1144, line: 207, baseType: !353, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1143, file: !1144, line: 208, baseType: !1148, size: 256, offset: 64)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 256, elements: !482)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1143, file: !1144, line: 209, baseType: !1151, size: 256, offset: 320)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 256, elements: !482)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1143, file: !1144, line: 213, baseType: !280, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1143, file: !1144, line: 215, baseType: !1154, size: 256, offset: 640)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 256, elements: !482)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1144, line: 216, baseType: !202, size: 8, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1135, file: !1130, line: 33, baseType: !294, size: 64, offset: 1536)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1135, file: !1130, line: 34, baseType: !294, size: 64, offset: 1600)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1135, file: !1130, line: 35, baseType: !600, size: 8, offset: 1664)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1135, file: !1130, line: 36, baseType: !1160, size: 320, offset: 1728)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1161, line: 11, size: 320, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1162 = !{!1163, !1170, !1171, !1176}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1160, file: !1161, line: 16, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !140, line: 198, size: 128, elements: !1165)
!1165 = !{!1166, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !140, line: 199, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1164, file: !140, line: 199, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1160, file: !1161, line: 17, baseType: !294, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1160, file: !1161, line: 18, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1160, file: !1161, line: 19, baseType: !1177, size: 32, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !203, line: 21, baseType: !1095)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1135, file: !1130, line: 37, baseType: !565, size: 256, offset: 2048)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1135, file: !1130, line: 38, baseType: !350, size: 128, align: 64, offset: 2304)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1135, file: !1130, line: 39, baseType: !1181, size: 64, offset: 2432)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1130, line: 49, size: 768, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1182, file: !1130, line: 50, baseType: !174, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1182, file: !1130, line: 51, baseType: !1151, size: 256, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1182, file: !1130, line: 53, baseType: !1151, size: 256, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1182, file: !1130, line: 54, baseType: !294, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1182, file: !1130, line: 55, baseType: !1181, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1182, file: !1130, line: 56, baseType: !57, size: 32, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1182, file: !1130, line: 57, baseType: !57, size: 32, offset: 736)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1135, file: !1130, line: 40, baseType: !294, size: 64, offset: 2496)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1135, file: !1130, line: 42, baseType: !57, size: 32, offset: 2560)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1135, file: !1130, line: 43, baseType: !1128, size: 64, offset: 2624)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1129, file: !1130, line: 99, baseType: !1195, offset: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1196, line: 211, elements: !380)
!1196 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1129, file: !1130, line: 100, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1130, line: 63, size: 3008, elements: !1200)
!1200 = !{!1201, !1202, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1232}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1199, file: !1130, line: 64, baseType: !1181, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1199, file: !1130, line: 65, baseType: !1203, size: 192, offset: 64)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, size: 192, elements: !245)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1199, file: !1130, line: 67, baseType: !57, size: 32, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1199, file: !1130, line: 68, baseType: !501, size: 256, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1199, file: !1130, line: 69, baseType: !174, size: 32, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1199, file: !1130, line: 70, baseType: !501, size: 256, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1199, file: !1130, line: 71, baseType: !294, size: 64, offset: 896)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1199, file: !1130, line: 72, baseType: !294, size: 64, offset: 960)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1199, file: !1130, line: 73, baseType: !294, size: 64, offset: 1024)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1199, file: !1130, line: 74, baseType: !294, size: 64, offset: 1088)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1199, file: !1130, line: 75, baseType: !294, size: 64, offset: 1152)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1199, file: !1130, line: 76, baseType: !294, size: 64, offset: 1216)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1199, file: !1130, line: 77, baseType: !294, size: 64, offset: 1280)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1199, file: !1130, line: 78, baseType: !294, size: 64, offset: 1344)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1199, file: !1130, line: 79, baseType: !600, size: 8, offset: 1408)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1199, file: !1130, line: 80, baseType: !294, size: 64, offset: 1472)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1199, file: !1130, line: 81, baseType: !501, size: 256, offset: 1536)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1199, file: !1130, line: 82, baseType: !918, size: 256, offset: 1792)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1199, file: !1130, line: 84, baseType: !194, size: 32, offset: 2048)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1199, file: !1130, line: 87, baseType: !294, size: 64, offset: 2112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1199, file: !1130, line: 88, baseType: !294, size: 64, offset: 2176)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1199, file: !1130, line: 89, baseType: !1224, size: 704, offset: 2240)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !566, line: 111, size: 704, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1231}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1224, file: !566, line: 112, baseType: !565, size: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1224, file: !566, line: 113, baseType: !1160, size: 320, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1224, file: !566, line: 116, baseType: !1229, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !566, line: 18, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1224, file: !566, line: 117, baseType: !57, size: 32, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1199, file: !1130, line: 90, baseType: !1128, size: 64, offset: 2944)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !899, file: !24, line: 515, baseType: !1234, size: 64, offset: 8064)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1236, line: 117, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1235, file: !1236, line: 118, baseType: !480, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1235, file: !1236, line: 119, baseType: !480, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1235, file: !1236, line: 120, baseType: !280, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !899, file: !24, line: 516, baseType: !18, size: 32, offset: 8128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !899, file: !24, line: 519, baseType: !18, size: 32, offset: 8160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !899, file: !24, line: 520, baseType: !1244, size: 64, offset: 8192)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !899, file: !24, line: 523, baseType: !1246, size: 64, offset: 8256)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !24, line: 523, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !899, file: !24, line: 524, baseType: !18, size: 32, offset: 8320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !899, file: !24, line: 525, baseType: !1251, size: 64, offset: 8384)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !24, line: 525, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !899, file: !24, line: 526, baseType: !18, size: 32, offset: 8448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !899, file: !24, line: 533, baseType: !141, size: 64, offset: 8512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !899, file: !24, line: 534, baseType: !18, size: 32, offset: 8576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !899, file: !24, line: 535, baseType: !1258, size: 64, offset: 8640)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !899, file: !24, line: 536, baseType: !18, size: 32, offset: 8704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !899, file: !24, line: 539, baseType: !57, size: 32, offset: 8736)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !899, file: !24, line: 540, baseType: !1262, size: 64, offset: 8768)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1264, line: 32, size: 64, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1263, file: !1264, line: 33, baseType: !480, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1263, file: !1264, line: 34, baseType: !480, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !899, file: !24, line: 563, baseType: !161, size: 128, offset: 8832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !899, file: !24, line: 565, baseType: !161, size: 128, offset: 8960)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !899, file: !24, line: 568, baseType: !1271, size: 64, offset: 9088)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !899, file: !24, line: 570, baseType: !194, size: 32, offset: 9152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !893, file: !31, line: 101, baseType: !158, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !893, file: !31, line: 103, baseType: !600, size: 8, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !893, file: !31, line: 104, baseType: !30, size: 32, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !893, file: !31, line: 106, baseType: !1279, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1282, line: 282, size: 1600, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1283 = !{!1284, !1288, !1289, !1293}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1281, file: !1282, line: 283, baseType: !1285, size: 256)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1281, file: !1282, line: 284, baseType: !1285, size: 256, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1281, file: !1282, line: 285, baseType: !1290, size: 1024, offset: 512)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1281, file: !1282, line: 286, baseType: !522, size: 64, offset: 1536)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !893, file: !31, line: 107, baseType: !1295, size: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1282, line: 217, size: 256, elements: !1298)
!1298 = !{!1299, !1303, !1305, !1306}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1297, file: !1282, line: 218, baseType: !1300, size: 128)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 16)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1297, file: !1282, line: 219, baseType: !1304, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1282, line: 15, baseType: !294)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1297, file: !1282, line: 220, baseType: !1095, size: 32, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1297, file: !1282, line: 221, baseType: !1095, size: 32, offset: 224)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !893, file: !31, line: 109, baseType: !852, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !893, file: !31, line: 110, baseType: !843, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !893, file: !31, line: 111, baseType: !852, size: 64, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !893, file: !31, line: 112, baseType: !843, size: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !893, file: !31, line: 113, baseType: !1312, size: 64, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!57, !150, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !49, line: 60, baseType: !1316)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !49, line: 58, size: 32, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1316, file: !49, line: 59, baseType: !57, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !893, file: !31, line: 114, baseType: !852, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !893, file: !31, line: 115, baseType: !296, size: 64, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !893, file: !31, line: 116, baseType: !296, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !893, file: !31, line: 118, baseType: !847, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !893, file: !31, line: 119, baseType: !843, size: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !893, file: !31, line: 121, baseType: !1325, size: 64, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !31, line: 121, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !880, file: !881, line: 88, baseType: !832, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !880, file: !881, line: 89, baseType: !852, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !880, file: !881, line: 90, baseType: !843, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !880, file: !881, line: 91, baseType: !843, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !880, file: !881, line: 92, baseType: !843, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !880, file: !881, line: 94, baseType: !852, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !880, file: !881, line: 95, baseType: !852, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !880, file: !881, line: 97, baseType: !1312, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !880, file: !881, line: 98, baseType: !852, size: 64, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !880, file: !881, line: 100, baseType: !852, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !880, file: !881, line: 102, baseType: !852, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !880, file: !881, line: 103, baseType: !843, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !880, file: !881, line: 105, baseType: !847, size: 64, offset: 1152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !880, file: !881, line: 107, baseType: !1341, size: 64, offset: 1216)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !881, line: 107, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !880, file: !881, line: 109, baseType: !600, size: 8, offset: 1280)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !151, file: !37, line: 715, baseType: !892, size: 64, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !151, file: !37, line: 717, baseType: !141, size: 64, offset: 896)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !151, file: !37, line: 719, baseType: !141, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !151, file: !37, line: 721, baseType: !501, size: 256, offset: 1024)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !151, file: !37, line: 725, baseType: !1350, size: 448, offset: 1280)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !37, line: 517, size: 448, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1350, file: !37, line: 518, baseType: !161, size: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1350, file: !37, line: 519, baseType: !161, size: 128, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1350, file: !37, line: 520, baseType: !161, size: 128, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1350, file: !37, line: 521, baseType: !36, size: 32, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !151, file: !37, line: 726, baseType: !1357, size: 2496, offset: 1728)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !49, line: 663, size: 2496, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1403, !1404, !1405, !1406, !1407, !1408, !1479, !1480, !1481, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1519, !1523}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1357, file: !49, line: 664, baseType: !1315, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1357, file: !49, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1357, file: !49, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1357, file: !49, line: 667, baseType: !600, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1357, file: !49, line: 668, baseType: !600, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1357, file: !49, line: 669, baseType: !600, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1357, file: !49, line: 670, baseType: !600, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1357, file: !49, line: 671, baseType: !600, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1357, file: !49, line: 672, baseType: !600, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1357, file: !49, line: 673, baseType: !600, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1357, file: !49, line: 674, baseType: !600, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1357, file: !49, line: 675, baseType: !1177, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !49, line: 676, baseType: !174, size: 32, offset: 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1357, file: !49, line: 678, baseType: !161, size: 128, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1357, file: !49, line: 679, baseType: !918, size: 256, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1357, file: !49, line: 680, baseType: !1375, size: 64, offset: 512)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1377, line: 43, size: 1536, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1386, !1387, !1388, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1376, file: !1377, line: 44, baseType: !158, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1376, file: !1377, line: 45, baseType: !57, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1376, file: !1377, line: 46, baseType: !161, size: 128, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1376, file: !1377, line: 47, baseType: !174, size: 32, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1376, file: !1377, line: 48, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !49, line: 629, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1376, file: !1377, line: 49, baseType: !1160, size: 320, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1376, file: !1377, line: 50, baseType: !294, size: 64, offset: 704)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1376, file: !1377, line: 51, baseType: !1389, size: 64, offset: 768)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1390, line: 29, baseType: !419)
!1390 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1376, file: !1377, line: 52, baseType: !1389, size: 64, offset: 832)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1376, file: !1377, line: 53, baseType: !1389, size: 64, offset: 896)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1376, file: !1377, line: 54, baseType: !1389, size: 64, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1376, file: !1377, line: 55, baseType: !1389, size: 64, offset: 1024)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1376, file: !1377, line: 56, baseType: !294, size: 64, offset: 1088)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1376, file: !1377, line: 57, baseType: !294, size: 64, offset: 1152)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1376, file: !1377, line: 58, baseType: !294, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1376, file: !1377, line: 59, baseType: !294, size: 64, offset: 1280)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1376, file: !1377, line: 60, baseType: !294, size: 64, offset: 1344)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1376, file: !1377, line: 61, baseType: !150, size: 64, offset: 1408)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1376, file: !1377, line: 62, baseType: !600, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1376, file: !1377, line: 63, baseType: !600, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1357, file: !49, line: 681, baseType: !600, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1357, file: !49, line: 682, baseType: !600, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1357, file: !49, line: 683, baseType: !600, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1357, file: !49, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1357, file: !49, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1357, file: !49, line: 690, baseType: !1409, size: 512, offset: 640)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !44, line: 118, size: 512, elements: !1410)
!1410 = !{!1411, !1417, !1418, !1423, !1475, !1476, !1477, !1478}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1409, file: !44, line: 119, baseType: !1412, size: 256)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1413, line: 9, size: 256, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1412, file: !1413, line: 10, baseType: !606, size: 192, align: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1412, file: !1413, line: 11, baseType: !1389, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1409, file: !44, line: 120, baseType: !1389, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1409, file: !44, line: 121, baseType: !1419, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!43, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1409, file: !44, line: 122, baseType: !1424, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !44, line: 159, size: 512, align: 512, elements: !1426)
!1426 = !{!1427, !1452, !1453, !1456, !1461, !1462, !1470, !1474}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1425, file: !44, line: 160, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !44, line: 215, size: 4608, align: 512, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1429, file: !44, line: 216, baseType: !435, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1429, file: !44, line: 217, baseType: !18, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1429, file: !44, line: 218, baseType: !18, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1429, file: !44, line: 219, baseType: !18, size: 32, offset: 96)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1429, file: !44, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1429, file: !44, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1429, file: !44, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1429, file: !44, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1429, file: !44, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1429, file: !44, line: 226, baseType: !18, size: 32, offset: 160)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1429, file: !44, line: 227, baseType: !214, size: 16, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1429, file: !44, line: 228, baseType: !214, size: 16, offset: 208)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1429, file: !44, line: 229, baseType: !18, size: 32, offset: 224)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1429, file: !44, line: 235, baseType: !1389, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1429, file: !44, line: 236, baseType: !1422, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1429, file: !44, line: 237, baseType: !1389, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1429, file: !44, line: 238, baseType: !1422, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1429, file: !44, line: 239, baseType: !1449, size: 4096, align: 512, offset: 512)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1425, size: 4096, align: 512, elements: !1450)
!1450 = !{!1451}
!1451 = !DISubrange(count: 8)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1425, file: !44, line: 161, baseType: !18, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1425, file: !44, line: 162, baseType: !1454, size: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !140, line: 32, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !278, line: 96, baseType: !57)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1425, file: !44, line: 163, baseType: !1457, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !450, line: 274, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !450, line: 274, size: 32, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1458, file: !450, line: 274, baseType: !449, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1425, file: !44, line: 164, baseType: !1422, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1425, file: !44, line: 165, baseType: !1463, size: 128, offset: 256)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1413, line: 14, size: 128, elements: !1464)
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1463, file: !1413, line: 15, baseType: !1466, size: 128)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !607, line: 26, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1466, file: !607, line: 27, baseType: !709, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1466, file: !607, line: 28, baseType: !611, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1425, file: !44, line: 166, baseType: !1471, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1389}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1425, file: !44, line: 167, baseType: !1389, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1409, file: !44, line: 123, baseType: !202, size: 8, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1409, file: !44, line: 124, baseType: !202, size: 8, offset: 456)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1409, file: !44, line: 125, baseType: !202, size: 8, offset: 464)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1409, file: !44, line: 126, baseType: !202, size: 8, offset: 472)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1357, file: !49, line: 691, baseType: !407, size: 64, offset: 1152)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1357, file: !49, line: 692, baseType: !565, size: 256, offset: 1216)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1357, file: !49, line: 693, baseType: !1482, size: 192, offset: 1472)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1483, line: 41, baseType: !1484)
!1483 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1483, line: 37, size: 192, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1484, file: !1483, line: 38, baseType: !174, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1484, file: !1483, line: 39, baseType: !161, size: 128, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1357, file: !49, line: 694, baseType: !1384, size: 64, offset: 1664)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1357, file: !49, line: 695, baseType: !194, size: 32, offset: 1728)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1357, file: !49, line: 696, baseType: !194, size: 32, offset: 1760)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1357, file: !49, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1357, file: !49, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1357, file: !49, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1357, file: !49, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1357, file: !49, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1357, file: !49, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1357, file: !49, line: 703, baseType: !600, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1357, file: !49, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1357, file: !49, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1357, file: !49, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1357, file: !49, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1357, file: !49, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1357, file: !49, line: 709, baseType: !18, size: 32, offset: 1824)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1357, file: !49, line: 710, baseType: !48, size: 32, offset: 1856)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1357, file: !49, line: 711, baseType: !56, size: 32, offset: 1888)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1357, file: !49, line: 712, baseType: !56, size: 32, offset: 1920)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1357, file: !49, line: 713, baseType: !57, size: 32, offset: 1952)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1357, file: !49, line: 714, baseType: !57, size: 32, offset: 1984)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1357, file: !49, line: 715, baseType: !407, size: 64, offset: 2048)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1357, file: !49, line: 716, baseType: !407, size: 64, offset: 2112)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1357, file: !49, line: 717, baseType: !407, size: 64, offset: 2176)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1357, file: !49, line: 718, baseType: !407, size: 64, offset: 2240)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1357, file: !49, line: 720, baseType: !1514, size: 64, offset: 2304)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !49, line: 632, size: 64, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !49, line: 633, baseType: !174, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1515, file: !49, line: 634, baseType: !18, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1357, file: !49, line: 721, baseType: !1520, size: 64, offset: 2368)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !150, !480}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1357, file: !49, line: 722, baseType: !1524, size: 64, offset: 2432)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !49, line: 722, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !151, file: !37, line: 727, baseType: !1527, size: 64, offset: 4224)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !49, line: 742, size: 1792, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1536, !1537, !1538}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1528, file: !49, line: 743, baseType: !849, size: 1472)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1528, file: !49, line: 744, baseType: !852, size: 64, offset: 1472)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1528, file: !49, line: 745, baseType: !1533, size: 64, offset: 1536)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !150, !600}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1528, file: !49, line: 746, baseType: !852, size: 64, offset: 1600)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1528, file: !49, line: 747, baseType: !843, size: 64, offset: 1664)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1528, file: !49, line: 748, baseType: !843, size: 64, offset: 1728)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !151, file: !37, line: 736, baseType: !1540, size: 128, offset: 4288)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !37, line: 529, size: 128, elements: !1541)
!1541 = !{!1542, !1546}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1540, file: !37, line: 531, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1545, line: 13, flags: DIFlagFwdDecl)
!1545 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1540, file: !37, line: 532, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !37, line: 49, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !151, file: !37, line: 738, baseType: !1550, size: 64, offset: 4416)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !37, line: 738, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !151, file: !37, line: 740, baseType: !1554, size: 64, offset: 4480)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !151, file: !37, line: 741, baseType: !407, size: 64, offset: 4544)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !151, file: !37, line: 746, baseType: !407, size: 64, offset: 4608)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !151, file: !37, line: 747, baseType: !1558, size: 64, offset: 4672)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !37, line: 747, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !151, file: !37, line: 749, baseType: !1562, size: 64, offset: 4736)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !37, line: 428, size: 128, elements: !1564)
!1564 = !{!1565, !1566, !1567}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1563, file: !37, line: 433, baseType: !18, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1563, file: !37, line: 434, baseType: !18, size: 32, offset: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1563, file: !37, line: 435, baseType: !294, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !151, file: !37, line: 751, baseType: !161, size: 128, offset: 4800)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !151, file: !37, line: 762, baseType: !1570, size: 64, offset: 4928)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !37, line: 762, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !151, file: !37, line: 770, baseType: !1573, offset: 4992)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1574, line: 5, elements: !380)
!1574 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !151, file: !37, line: 772, baseType: !1576, size: 64, offset: 4992)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1578, line: 48, size: 1152, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1579 = !{!1580, !1581, !1583, !1584, !1687, !1695, !1696, !1697, !1698, !1699, !1700}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1577, file: !1578, line: 49, baseType: !158, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1577, file: !1578, line: 50, baseType: !1582, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1578, line: 25, baseType: !1177)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1577, file: !1578, line: 51, baseType: !158, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1577, file: !1578, line: 52, baseType: !1585, size: 512, offset: 192)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1586, line: 41, size: 512, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1587 = !{!1588, !1590, !1683, !1684, !1685, !1686}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1585, file: !1586, line: 42, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1585, file: !1586, line: 43, baseType: !1591, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1586, line: 125, size: 1408, elements: !1594)
!1594 = !{!1595, !1599, !1603, !1609, !1613, !1614, !1618, !1622, !1626, !1630, !1634, !1635, !1639, !1643, !1647, !1658, !1659, !1660, !1661, !1671, !1675, !1679}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1593, file: !1586, line: 126, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1589, !1589}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1593, file: !1586, line: 127, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1589}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1593, file: !1586, line: 128, baseType: !1604, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!600, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1593, file: !1586, line: 129, baseType: !1610, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!522, !1607, !835}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1593, file: !1586, line: 131, baseType: !1604, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1593, file: !1586, line: 133, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!64, !1607}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1593, file: !1586, line: 134, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!600, !1607, !158}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1593, file: !1586, line: 136, baseType: !1623, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!57, !1607, !158, !18, !141, !291}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1593, file: !1586, line: 141, baseType: !1627, size: 64, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!57, !1607, !158, !1244, !291}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1593, file: !1586, line: 144, baseType: !1631, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!158, !1607}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1593, file: !1586, line: 145, baseType: !1631, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1593, file: !1586, line: 146, baseType: !1636, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!1589, !1607}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1593, file: !1586, line: 148, baseType: !1640, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1589, !1607, !1589}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1593, file: !1586, line: 151, baseType: !1644, size: 64, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1589, !1607, !158}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1593, file: !1586, line: 153, baseType: !1648, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!57, !1607, !158, !158, !18, !18, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1586, line: 94, size: 640, elements: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1652, file: !1586, line: 95, baseType: !1589, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1652, file: !1586, line: 96, baseType: !18, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1652, file: !1586, line: 97, baseType: !1657, size: 512, offset: 128)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 512, elements: !1450)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1593, file: !1586, line: 158, baseType: !1640, size: 64, offset: 960)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1593, file: !1586, line: 161, baseType: !1636, size: 64, offset: 1024)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1593, file: !1586, line: 163, baseType: !1596, size: 64, offset: 1088)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1593, file: !1586, line: 164, baseType: !1662, size: 64, offset: 1152)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!57, !1607, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1586, line: 73, size: 128, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1666, file: !1586, line: 74, baseType: !18, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1666, file: !1586, line: 75, baseType: !18, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1666, file: !1586, line: 76, baseType: !1607, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1593, file: !1586, line: 166, baseType: !1672, size: 64, offset: 1216)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!141, !1589, !57}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1593, file: !1586, line: 167, baseType: !1676, size: 64, offset: 1280)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!57, !1607, !18}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1593, file: !1586, line: 168, baseType: !1680, size: 64, offset: 1344)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!57, !1589}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1585, file: !1586, line: 44, baseType: !150, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1585, file: !1586, line: 45, baseType: !161, size: 128, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1585, file: !1586, line: 46, baseType: !161, size: 128, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1586, line: 47, baseType: !202, size: 8, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1577, file: !1578, line: 54, baseType: !1688, size: 64, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1578, line: 28, size: 256, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1689, file: !1578, line: 29, baseType: !244, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1689, file: !1578, line: 30, baseType: !57, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1689, file: !1578, line: 31, baseType: !141, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1689, file: !1578, line: 32, baseType: !1688, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1577, file: !1578, line: 55, baseType: !1688, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1577, file: !1578, line: 56, baseType: !1576, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1577, file: !1578, line: 57, baseType: !1576, size: 64, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1577, file: !1578, line: 58, baseType: !1576, size: 64, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1577, file: !1578, line: 62, baseType: !294, size: 64, offset: 1024)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1577, file: !1578, line: 63, baseType: !141, size: 64, offset: 1088)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !151, file: !37, line: 773, baseType: !1589, size: 64, offset: 5056)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !151, file: !37, line: 776, baseType: !57, size: 32, offset: 5120)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !151, file: !37, line: 778, baseType: !1704, size: 32, offset: 5152)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !140, line: 21, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !140, line: 18, baseType: !1177)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !151, file: !37, line: 779, baseType: !1177, size: 32, offset: 5184)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !151, file: !37, line: 781, baseType: !174, size: 32, offset: 5216)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !151, file: !37, line: 782, baseType: !161, size: 128, offset: 5248)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !151, file: !37, line: 784, baseType: !1710, size: 64, offset: 5376)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1713, line: 52, size: 768, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1723, !1727, !1728, !1729, !1730, !1734, !1738}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1712, file: !1713, line: 53, baseType: !158, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1712, file: !1713, line: 55, baseType: !296, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1712, file: !1713, line: 56, baseType: !296, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1712, file: !1713, line: 58, baseType: !832, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1712, file: !1713, line: 59, baseType: !1720, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!244, !835, !841}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1712, file: !1713, line: 61, baseType: !1724, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !1710}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1712, file: !1713, line: 62, baseType: !843, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1712, file: !1713, line: 64, baseType: !852, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1712, file: !1713, line: 66, baseType: !639, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1712, file: !1713, line: 67, baseType: !1731, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!522, !835}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1712, file: !1713, line: 69, baseType: !1735, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !835, !674, !682}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1712, file: !1713, line: 71, baseType: !847, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !151, file: !37, line: 785, baseType: !296, size: 64, offset: 5440)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !151, file: !37, line: 787, baseType: !843, size: 64, offset: 5504)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !151, file: !37, line: 788, baseType: !1742, size: 64, offset: 5568)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !37, line: 46, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !151, file: !37, line: 789, baseType: !1745, size: 64, offset: 5632)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !37, line: 48, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !151, file: !37, line: 791, baseType: !1748, size: 64, offset: 5696)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !37, line: 597, size: 128, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1749, file: !37, line: 598, baseType: !70, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1749, file: !37, line: 599, baseType: !79, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1749, file: !37, line: 600, baseType: !84, size: 32, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1749, file: !37, line: 601, baseType: !600, size: 8, offset: 96)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1749, file: !37, line: 602, baseType: !600, size: 8, offset: 104)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !151, file: !37, line: 793, baseType: !89, size: 32, offset: 5760)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !151, file: !37, line: 795, baseType: !600, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !151, file: !37, line: 796, baseType: !600, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !151, file: !37, line: 797, baseType: !600, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !151, file: !37, line: 798, baseType: !600, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !151, file: !37, line: 799, baseType: !600, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !143, file: !2, line: 27, baseType: !57, size: 32, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "tz_list", scope: !143, file: !2, line: 28, baseType: !161, size: 128, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !2, line: 29, baseType: !161, size: 128, offset: 448)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_hwmon_attr", file: !2, line: 32, size: 384, elements: !1769)
!1769 = !{!1770, !1783}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1768, file: !2, line: 33, baseType: !1771, size: 256)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !37, line: 106, size: 256, elements: !1772)
!1772 = !{!1773, !1774, !1779}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1771, file: !37, line: 107, baseType: !282, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1771, file: !37, line: 108, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!276, !150, !1778, !244}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1771, file: !37, line: 110, baseType: !1780, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!276, !150, !1778, !158, !291}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1768, file: !2, line: 34, baseType: !1784, size: 128, offset: 256)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1301)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_hwmon_temp", file: !2, line: 38, size: 960, elements: !1787)
!1787 = !{!1788, !1789, !1953, !1954}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "hwmon_node", scope: !1786, file: !2, line: 39, baseType: !161, size: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "tz", scope: !1786, file: !2, line: 40, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !107, line: 156, size: 9152, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1805, !1806, !1807, !1808, !1809, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1909, !1923, !1935, !1936, !1937, !1948, !1949, !1950, !1951, !1952}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1791, file: !107, line: 157, baseType: !57, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1791, file: !107, line: 158, baseType: !146, size: 160, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1791, file: !107, line: 159, baseType: !151, size: 5824, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "removal", scope: !1791, file: !107, line: 160, baseType: !918, size: 256, offset: 6016)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !1791, file: !107, line: 161, baseType: !299, size: 320, offset: 6272)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !1791, file: !107, line: 162, baseType: !1799, size: 64, offset: 6592)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !1801, line: 59, size: 448, elements: !1802)
!1801 = !DIFile(filename: "drivers/thermal/thermal_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f61e469943239d2bc6fea21f68a30bb4")
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1800, file: !1801, line: 60, baseType: !1771, size: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1800, file: !1801, line: 61, baseType: !146, size: 160, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !1791, file: !107, line: 163, baseType: !1799, size: 64, offset: 6656)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !1791, file: !107, line: 164, baseType: !1799, size: 64, offset: 6720)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1791, file: !107, line: 165, baseType: !95, size: 32, offset: 6784)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !1791, file: !107, line: 166, baseType: !141, size: 64, offset: 6848)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !1791, file: !107, line: 167, baseType: !1810, size: 64, offset: 6912)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_trip", file: !107, line: 63, size: 192, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !1811, file: !107, line: 64, baseType: !57, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !1811, file: !107, line: 65, baseType: !57, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1811, file: !107, line: 66, baseType: !100, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1811, file: !107, line: 67, baseType: !141, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "num_trips", scope: !1791, file: !107, line: 168, baseType: !57, size: 32, offset: 6976)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !1791, file: !107, line: 169, baseType: !294, size: 64, offset: 7040)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay_jiffies", scope: !1791, file: !107, line: 170, baseType: !294, size: 64, offset: 7104)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay_jiffies", scope: !1791, file: !107, line: 171, baseType: !294, size: 64, offset: 7168)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !1791, file: !107, line: 172, baseType: !57, size: 32, offset: 7232)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !1791, file: !107, line: 173, baseType: !57, size: 32, offset: 7264)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !1791, file: !107, line: 174, baseType: !57, size: 32, offset: 7296)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !1791, file: !107, line: 175, baseType: !57, size: 32, offset: 7328)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !1791, file: !107, line: 176, baseType: !57, size: 32, offset: 7360)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !1791, file: !107, line: 177, baseType: !57, size: 32, offset: 7392)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !1791, file: !107, line: 178, baseType: !194, size: 32, offset: 7424)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1791, file: !107, line: 179, baseType: !1829, size: 64, offset: 7488)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !107, line: 70, size: 768, elements: !1831)
!1831 = !{!1832, !1877, !1878, !1882, !1886, !1890, !1891, !1892, !1893, !1897, !1904, !1908}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1830, file: !107, line: 71, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!57, !1790, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !107, line: 98, size: 6848, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1873, !1874, !1875, !1876}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1837, file: !107, line: 99, baseType: !57, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1837, file: !107, line: 100, baseType: !244, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !1837, file: !107, line: 101, baseType: !294, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1837, file: !107, line: 102, baseType: !151, size: 5824, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1837, file: !107, line: 103, baseType: !1576, size: 64, offset: 6016)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !1837, file: !107, line: 104, baseType: !141, size: 64, offset: 6080)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1837, file: !107, line: 105, baseType: !141, size: 64, offset: 6144)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1837, file: !107, line: 106, baseType: !1847, size: 64, offset: 6208)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !107, line: 89, size: 384, elements: !1850)
!1850 = !{!1851, !1855, !1856, !1860, !1865, !1869}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !1849, file: !107, line: 90, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!57, !1836, !1258}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !1849, file: !107, line: 91, baseType: !1852, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !1849, file: !107, line: 92, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!57, !1836, !294}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !1849, file: !107, line: 93, baseType: !1861, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!57, !1836, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !1849, file: !107, line: 94, baseType: !1866, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!57, !1836, !294, !1864}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !1849, file: !107, line: 95, baseType: !1870, size: 64, offset: 320)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!57, !1836, !1177, !1258}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !1837, file: !107, line: 107, baseType: !600, size: 8, offset: 6272)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1837, file: !107, line: 108, baseType: !501, size: 256, offset: 6336)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !1837, file: !107, line: 109, baseType: !161, size: 128, offset: 6592)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1837, file: !107, line: 110, baseType: !161, size: 128, offset: 6720)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1830, file: !107, line: 73, baseType: !1833, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !1830, file: !107, line: 75, baseType: !1879, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!57, !1790, !1059}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !1830, file: !107, line: 76, baseType: !1883, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!57, !1790, !57, !57}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !1830, file: !107, line: 77, baseType: !1887, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!57, !1790, !95}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !1830, file: !107, line: 79, baseType: !1883, size: 64, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !1830, file: !107, line: 80, baseType: !1883, size: 64, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !1830, file: !107, line: 81, baseType: !1879, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !1830, file: !107, line: 82, baseType: !1894, size: 64, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!57, !1790, !57}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !1830, file: !107, line: 83, baseType: !1898, size: 64, offset: 576)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!57, !1790, !1901, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !1830, file: !107, line: 85, baseType: !1905, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1790}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !1830, file: !107, line: 86, baseType: !1905, size: 64, offset: 704)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !1791, file: !107, line: 180, baseType: !1910, size: 64, offset: 7552)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !107, line: 213, size: 448, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !1911, file: !107, line: 214, baseType: !146, size: 160)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !1911, file: !107, line: 221, baseType: !600, size: 8, offset: 160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !1911, file: !107, line: 227, baseType: !1177, size: 32, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !1911, file: !107, line: 233, baseType: !480, size: 32, offset: 224)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !1911, file: !107, line: 239, baseType: !480, size: 32, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !1911, file: !107, line: 242, baseType: !480, size: 32, offset: 288)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !1911, file: !107, line: 245, baseType: !480, size: 32, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !1911, file: !107, line: 248, baseType: !480, size: 32, offset: 352)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !1911, file: !107, line: 254, baseType: !57, size: 32, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1911, file: !107, line: 259, baseType: !57, size: 32, offset: 416)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !1791, file: !107, line: 181, baseType: !1924, size: 64, offset: 7616)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !107, line: 204, size: 512, elements: !1926)
!1926 = !{!1927, !1928, !1932, !1933, !1934}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1925, file: !107, line: 205, baseType: !146, size: 160)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !1925, file: !107, line: 206, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!57, !1790}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !1925, file: !107, line: 207, baseType: !1905, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !1925, file: !107, line: 208, baseType: !1894, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !1925, file: !107, line: 209, baseType: !161, size: 128, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !1791, file: !107, line: 182, baseType: !141, size: 64, offset: 7680)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !1791, file: !107, line: 183, baseType: !161, size: 128, offset: 7744)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !1791, file: !107, line: 184, baseType: !1938, size: 128, offset: 7872)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1939, line: 246, size: 128, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1940 = !{!1941}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1938, file: !1939, line: 247, baseType: !1942, size: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1943, line: 296, size: 128, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1942, file: !1943, line: 297, baseType: !174, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1942, file: !1943, line: 299, baseType: !139, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1942, file: !1943, line: 300, baseType: !141, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1791, file: !107, line: 185, baseType: !501, size: 256, offset: 8000)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1791, file: !107, line: 186, baseType: !161, size: 128, offset: 8256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !1791, file: !107, line: 187, baseType: !1224, size: 704, offset: 8384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !1791, file: !107, line: 188, baseType: !112, size: 32, offset: 9088)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !1791, file: !107, line: 189, baseType: !600, size: 8, offset: 9120)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "temp_input", scope: !1786, file: !2, line: 41, baseType: !1768, size: 384, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "temp_crit", scope: !1786, file: !2, line: 42, baseType: !1768, size: 384, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1958 = !{!0, !7, !1959, !1961, !1963, !1968, !1973, !1978, !1980, !1985, !1990, !12, !1993}
!1959 = !DIGlobalVariableExpression(var: !1960, expr: !DIExpression())
!1960 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_thermal_add_hwmon_sysfs205", scope: !14, file: !2, line: 222, type: !141, isLocal: true, isDefinition: true)
!1961 = !DIGlobalVariableExpression(var: !1962, expr: !DIExpression())
!1962 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_thermal_remove_hwmon_sysfs206", scope: !14, file: !2, line: 260, type: !141, isLocal: true, isDefinition: true)
!1963 = !DIGlobalVariableExpression(var: !1964, expr: !DIExpression())
!1964 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !1965, isLocal: true, isDefinition: true)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !1966)
!1966 = !{!1967}
!1967 = !DISubrange(count: 27)
!1968 = !DIGlobalVariableExpression(var: !1969, expr: !DIExpression())
!1969 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !1970, isLocal: true, isDefinition: true)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !1971)
!1971 = !{!1972}
!1972 = !DISubrange(count: 41)
!1973 = !DIGlobalVariableExpression(var: !1974, expr: !DIExpression())
!1974 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !1975, isLocal: true, isDefinition: true)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !1976)
!1976 = !{!1977}
!1977 = !DISubrange(count: 38)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_thermal_add_hwmon_sysfs207", scope: !14, file: !2, line: 291, type: !141, isLocal: true, isDefinition: true)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_import_ns208", scope: !14, file: !2, line: 293, type: !1982, isLocal: true, isDefinition: true, align: 8)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 288, elements: !1983)
!1983 = !{!1984}
!1984 = !DISubrange(count: 36)
!1985 = !DIGlobalVariableExpression(var: !1986, expr: !DIExpression())
!1986 = distinct !DIGlobalVariable(scope: null, file: !129, line: 480, type: !1987, isLocal: true, isDefinition: true)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1988)
!1988 = !{!1989}
!1989 = !DISubrange(count: 21)
!1990 = !DIGlobalVariableExpression(var: !1991, expr: !DIExpression())
!1991 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !1992, isLocal: true, isDefinition: true)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !482)
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(name: "thermal_hwmon_list", scope: !14, file: !2, line: 45, type: !161, isLocal: true, isDefinition: true)
!1995 = !{i32 7, !"Dwarf Version", i32 5}
!1996 = !{i32 2, !"Debug Info Version", i32 3}
!1997 = !{i32 1, !"wchar_size", i32 2}
!1998 = !{i32 8, !"cf-protection-branch", i32 1}
!1999 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2000 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2001 = !{i32 1, !"Code Model", i32 2}
!2002 = !{i32 1, !"override-stack-alignment", i32 8}
!2003 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2004 = distinct !DISubprogram(name: "thermal_add_hwmon_sysfs", scope: !2, file: !2, line: 141, type: !1930, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015}
!2006 = !DILocalVariable(name: "tz", arg: 1, scope: !2004, file: !2, line: 141, type: !1790)
!2007 = !DILocalVariable(name: "hwmon", scope: !2004, file: !2, line: 143, type: !142)
!2008 = !DILocalVariable(name: "temp", scope: !2004, file: !2, line: 144, type: !1785)
!2009 = !DILocalVariable(name: "new_hwmon_device", scope: !2004, file: !2, line: 145, type: !57)
!2010 = !DILocalVariable(name: "result", scope: !2004, file: !2, line: 146, type: !57)
!2011 = !DILabel(scope: !2004, name: "register_sys_interface", file: !2, line: 168)
!2012 = !DILabel(scope: !2004, name: "unregister_input", file: !2, line: 210)
!2013 = !DILabel(scope: !2004, name: "free_temp_mem", file: !2, line: 212)
!2014 = !DILabel(scope: !2004, name: "unregister_name", file: !2, line: 214)
!2015 = !DILabel(scope: !2004, name: "free_mem", file: !2, line: 217)
!2016 = !DILocation(line: 141, column: 57, scope: !2004)
!2017 = !DILocation(line: 143, column: 2, scope: !2004)
!2018 = !DILocation(line: 143, column: 31, scope: !2004)
!2019 = !DILocation(line: 144, column: 2, scope: !2004)
!2020 = !DILocation(line: 144, column: 29, scope: !2004)
!2021 = !DILocation(line: 145, column: 2, scope: !2004)
!2022 = !DILocation(line: 145, column: 6, scope: !2004)
!2023 = !DILocation(line: 146, column: 2, scope: !2004)
!2024 = !DILocation(line: 146, column: 6, scope: !2004)
!2025 = !DILocation(line: 148, column: 39, scope: !2004)
!2026 = !DILocation(line: 148, column: 10, scope: !2004)
!2027 = !DILocation(line: 148, column: 8, scope: !2004)
!2028 = !DILocation(line: 149, column: 6, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 149, column: 6)
!2030 = !DILocation(line: 149, column: 6, scope: !2004)
!2031 = !DILocation(line: 150, column: 20, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 149, column: 13)
!2033 = !DILocation(line: 151, column: 3, scope: !2032)
!2034 = !DILocation(line: 154, column: 10, scope: !2004)
!2035 = !DILocation(line: 154, column: 8, scope: !2004)
!2036 = !DILocation(line: 155, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 155, column: 6)
!2038 = !DILocation(line: 155, column: 6, scope: !2004)
!2039 = !DILocation(line: 156, column: 3, scope: !2037)
!2040 = !DILocation(line: 158, column: 18, scope: !2004)
!2041 = !DILocation(line: 158, column: 25, scope: !2004)
!2042 = !DILocation(line: 158, column: 2, scope: !2004)
!2043 = !DILocation(line: 159, column: 10, scope: !2004)
!2044 = !DILocation(line: 159, column: 17, scope: !2004)
!2045 = !DILocation(line: 159, column: 23, scope: !2004)
!2046 = !DILocation(line: 159, column: 27, scope: !2004)
!2047 = !DILocation(line: 159, column: 2, scope: !2004)
!2048 = !DILocation(line: 160, column: 13, scope: !2004)
!2049 = !DILocation(line: 160, column: 20, scope: !2004)
!2050 = !DILocation(line: 160, column: 2, scope: !2004)
!2051 = !DILocation(line: 161, column: 53, scope: !2004)
!2052 = !DILocation(line: 161, column: 57, scope: !2004)
!2053 = !DILocation(line: 162, column: 10, scope: !2004)
!2054 = !DILocation(line: 162, column: 17, scope: !2004)
!2055 = !DILocation(line: 162, column: 23, scope: !2004)
!2056 = !DILocation(line: 161, column: 18, scope: !2004)
!2057 = !DILocation(line: 161, column: 2, scope: !2004)
!2058 = !DILocation(line: 161, column: 9, scope: !2004)
!2059 = !DILocation(line: 161, column: 16, scope: !2004)
!2060 = !DILocation(line: 163, column: 13, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 163, column: 6)
!2062 = !DILocation(line: 163, column: 20, scope: !2061)
!2063 = !DILocation(line: 163, column: 6, scope: !2061)
!2064 = !DILocation(line: 163, column: 6, scope: !2004)
!2065 = !DILocation(line: 164, column: 20, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 163, column: 29)
!2067 = !DILocation(line: 164, column: 27, scope: !2066)
!2068 = !DILocation(line: 164, column: 12, scope: !2066)
!2069 = !DILocation(line: 164, column: 10, scope: !2066)
!2070 = !DILocation(line: 165, column: 3, scope: !2066)
!2071 = !DILocation(line: 163, column: 26, scope: !2061)
!2072 = !DILocation(line: 168, column: 2, scope: !2004)
!2073 = !DILocation(line: 169, column: 9, scope: !2004)
!2074 = !DILocation(line: 169, column: 7, scope: !2004)
!2075 = !DILocation(line: 170, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 170, column: 6)
!2077 = !DILocation(line: 170, column: 6, scope: !2004)
!2078 = !DILocation(line: 171, column: 10, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2076, file: !2, line: 170, column: 13)
!2080 = !DILocation(line: 172, column: 3, scope: !2079)
!2081 = !DILocation(line: 175, column: 13, scope: !2004)
!2082 = !DILocation(line: 175, column: 2, scope: !2004)
!2083 = !DILocation(line: 175, column: 8, scope: !2004)
!2084 = !DILocation(line: 175, column: 11, scope: !2004)
!2085 = !DILocation(line: 176, column: 2, scope: !2004)
!2086 = !DILocation(line: 176, column: 9, scope: !2004)
!2087 = !DILocation(line: 176, column: 14, scope: !2004)
!2088 = !DILocation(line: 178, column: 11, scope: !2004)
!2089 = !DILocation(line: 178, column: 17, scope: !2004)
!2090 = !DILocation(line: 178, column: 28, scope: !2004)
!2091 = !DILocation(line: 179, column: 20, scope: !2004)
!2092 = !DILocation(line: 179, column: 27, scope: !2004)
!2093 = !DILocation(line: 178, column: 2, scope: !2004)
!2094 = !DILocation(line: 180, column: 36, scope: !2004)
!2095 = !DILocation(line: 180, column: 42, scope: !2004)
!2096 = !DILocation(line: 180, column: 53, scope: !2004)
!2097 = !DILocation(line: 180, column: 2, scope: !2004)
!2098 = !DILocation(line: 180, column: 8, scope: !2004)
!2099 = !DILocation(line: 180, column: 19, scope: !2004)
!2100 = !DILocation(line: 180, column: 24, scope: !2004)
!2101 = !DILocation(line: 180, column: 29, scope: !2004)
!2102 = !DILocation(line: 180, column: 34, scope: !2004)
!2103 = !DILocation(line: 181, column: 2, scope: !2004)
!2104 = !DILocation(line: 181, column: 8, scope: !2004)
!2105 = !DILocation(line: 181, column: 19, scope: !2004)
!2106 = !DILocation(line: 181, column: 24, scope: !2004)
!2107 = !DILocation(line: 181, column: 29, scope: !2004)
!2108 = !DILocation(line: 181, column: 34, scope: !2004)
!2109 = !DILocation(line: 182, column: 2, scope: !2004)
!2110 = !DILocation(line: 182, column: 8, scope: !2004)
!2111 = !DILocation(line: 182, column: 19, scope: !2004)
!2112 = !DILocation(line: 182, column: 24, scope: !2004)
!2113 = !DILocation(line: 182, column: 29, scope: !2004)
!2114 = !DILocation(line: 183, column: 2, scope: !2004)
!2115 = !DILocation(line: 183, column: 2, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 183, column: 2)
!2117 = !DILocation(line: 184, column: 30, scope: !2004)
!2118 = !DILocation(line: 184, column: 37, scope: !2004)
!2119 = !DILocation(line: 184, column: 46, scope: !2004)
!2120 = !DILocation(line: 184, column: 52, scope: !2004)
!2121 = !DILocation(line: 184, column: 63, scope: !2004)
!2122 = !DILocation(line: 184, column: 11, scope: !2004)
!2123 = !DILocation(line: 184, column: 9, scope: !2004)
!2124 = !DILocation(line: 185, column: 6, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 185, column: 6)
!2126 = !DILocation(line: 185, column: 6, scope: !2004)
!2127 = !DILocation(line: 186, column: 3, scope: !2125)
!2128 = !DILocation(line: 188, column: 35, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 188, column: 6)
!2130 = !DILocation(line: 188, column: 6, scope: !2129)
!2131 = !DILocation(line: 188, column: 6, scope: !2004)
!2132 = !DILocation(line: 189, column: 12, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 188, column: 40)
!2134 = !DILocation(line: 189, column: 18, scope: !2133)
!2135 = !DILocation(line: 189, column: 28, scope: !2133)
!2136 = !DILocation(line: 191, column: 20, scope: !2133)
!2137 = !DILocation(line: 191, column: 27, scope: !2133)
!2138 = !DILocation(line: 189, column: 3, scope: !2133)
!2139 = !DILocation(line: 192, column: 36, scope: !2133)
!2140 = !DILocation(line: 192, column: 42, scope: !2133)
!2141 = !DILocation(line: 192, column: 52, scope: !2133)
!2142 = !DILocation(line: 192, column: 3, scope: !2133)
!2143 = !DILocation(line: 192, column: 9, scope: !2133)
!2144 = !DILocation(line: 192, column: 19, scope: !2133)
!2145 = !DILocation(line: 192, column: 24, scope: !2133)
!2146 = !DILocation(line: 192, column: 29, scope: !2133)
!2147 = !DILocation(line: 192, column: 34, scope: !2133)
!2148 = !DILocation(line: 193, column: 3, scope: !2133)
!2149 = !DILocation(line: 193, column: 9, scope: !2133)
!2150 = !DILocation(line: 193, column: 19, scope: !2133)
!2151 = !DILocation(line: 193, column: 24, scope: !2133)
!2152 = !DILocation(line: 193, column: 29, scope: !2133)
!2153 = !DILocation(line: 193, column: 34, scope: !2133)
!2154 = !DILocation(line: 194, column: 3, scope: !2133)
!2155 = !DILocation(line: 194, column: 9, scope: !2133)
!2156 = !DILocation(line: 194, column: 19, scope: !2133)
!2157 = !DILocation(line: 194, column: 24, scope: !2133)
!2158 = !DILocation(line: 194, column: 29, scope: !2133)
!2159 = !DILocation(line: 195, column: 3, scope: !2133)
!2160 = !DILocation(line: 195, column: 3, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 195, column: 3)
!2162 = !DILocation(line: 196, column: 31, scope: !2133)
!2163 = !DILocation(line: 196, column: 38, scope: !2133)
!2164 = !DILocation(line: 197, column: 11, scope: !2133)
!2165 = !DILocation(line: 197, column: 17, scope: !2133)
!2166 = !DILocation(line: 197, column: 27, scope: !2133)
!2167 = !DILocation(line: 196, column: 12, scope: !2133)
!2168 = !DILocation(line: 196, column: 10, scope: !2133)
!2169 = !DILocation(line: 198, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 198, column: 7)
!2171 = !DILocation(line: 198, column: 7, scope: !2133)
!2172 = !DILocation(line: 199, column: 4, scope: !2170)
!2173 = !DILocation(line: 200, column: 2, scope: !2133)
!2174 = !DILocation(line: 202, column: 2, scope: !2004)
!2175 = !DILocation(line: 203, column: 6, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 203, column: 6)
!2177 = !DILocation(line: 203, column: 6, scope: !2004)
!2178 = !DILocation(line: 204, column: 18, scope: !2176)
!2179 = !DILocation(line: 204, column: 25, scope: !2176)
!2180 = !DILocation(line: 204, column: 3, scope: !2176)
!2181 = !DILocation(line: 205, column: 17, scope: !2004)
!2182 = !DILocation(line: 205, column: 23, scope: !2004)
!2183 = !DILocation(line: 205, column: 36, scope: !2004)
!2184 = !DILocation(line: 205, column: 43, scope: !2004)
!2185 = !DILocation(line: 205, column: 2, scope: !2004)
!2186 = !DILocation(line: 206, column: 2, scope: !2004)
!2187 = !DILocation(line: 208, column: 2, scope: !2004)
!2188 = !DILocation(line: 210, column: 2, scope: !2004)
!2189 = !DILocation(line: 211, column: 21, scope: !2004)
!2190 = !DILocation(line: 211, column: 28, scope: !2004)
!2191 = !DILocation(line: 211, column: 37, scope: !2004)
!2192 = !DILocation(line: 211, column: 43, scope: !2004)
!2193 = !DILocation(line: 211, column: 54, scope: !2004)
!2194 = !DILocation(line: 211, column: 2, scope: !2004)
!2195 = !DILocation(line: 212, column: 2, scope: !2004)
!2196 = !DILocation(line: 213, column: 8, scope: !2004)
!2197 = !DILocation(line: 213, column: 2, scope: !2004)
!2198 = !DILocation(line: 214, column: 2, scope: !2004)
!2199 = !DILocation(line: 215, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 215, column: 6)
!2201 = !DILocation(line: 215, column: 6, scope: !2004)
!2202 = !DILocation(line: 216, column: 27, scope: !2200)
!2203 = !DILocation(line: 216, column: 34, scope: !2200)
!2204 = !DILocation(line: 216, column: 3, scope: !2200)
!2205 = !DILocation(line: 217, column: 2, scope: !2004)
!2206 = !DILocation(line: 218, column: 8, scope: !2004)
!2207 = !DILocation(line: 218, column: 2, scope: !2004)
!2208 = !DILocation(line: 220, column: 9, scope: !2004)
!2209 = !DILocation(line: 220, column: 2, scope: !2004)
!2210 = !DILocation(line: 221, column: 1, scope: !2004)
!2211 = distinct !DISubprogram(name: "thermal_hwmon_lookup_by_type", scope: !2, file: !2, line: 98, type: !2212, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2216)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!142, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!2216 = !{!2217, !2218, !2219, !2220, !2223}
!2217 = !DILocalVariable(name: "tz", arg: 1, scope: !2211, file: !2, line: 98, type: !2214)
!2218 = !DILocalVariable(name: "hwmon", scope: !2211, file: !2, line: 100, type: !142)
!2219 = !DILocalVariable(name: "type", scope: !2211, file: !2, line: 101, type: !146)
!2220 = !DILocalVariable(name: "__mptr", scope: !2221, file: !2, line: 104, type: !141)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2, line: 104, column: 2)
!2222 = distinct !DILexicalBlock(scope: !2211, file: !2, line: 104, column: 2)
!2223 = !DILocalVariable(name: "__mptr", scope: !2224, file: !2, line: 104, type: !141)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 104, column: 2)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !2, line: 104, column: 2)
!2226 = !DILocation(line: 98, column: 64, scope: !2211)
!2227 = !DILocation(line: 100, column: 2, scope: !2211)
!2228 = !DILocation(line: 100, column: 31, scope: !2211)
!2229 = !DILocation(line: 101, column: 2, scope: !2211)
!2230 = !DILocation(line: 101, column: 7, scope: !2211)
!2231 = !DILocation(line: 103, column: 2, scope: !2211)
!2232 = !DILocation(line: 104, column: 2, scope: !2221)
!2233 = !DILocation(line: 104, column: 2, scope: !2222)
!2234 = !DILocation(line: 104, column: 2, scope: !2225)
!2235 = !DILocation(line: 105, column: 10, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 104, column: 56)
!2237 = !DILocation(line: 105, column: 16, scope: !2236)
!2238 = !DILocation(line: 105, column: 20, scope: !2236)
!2239 = !DILocation(line: 105, column: 3, scope: !2236)
!2240 = !DILocation(line: 106, column: 14, scope: !2236)
!2241 = !DILocation(line: 106, column: 3, scope: !2236)
!2242 = !DILocation(line: 107, column: 15, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 107, column: 7)
!2244 = !DILocation(line: 107, column: 22, scope: !2243)
!2245 = !DILocation(line: 107, column: 28, scope: !2243)
!2246 = !DILocation(line: 107, column: 8, scope: !2243)
!2247 = !DILocation(line: 107, column: 7, scope: !2236)
!2248 = !DILocation(line: 108, column: 4, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 107, column: 35)
!2250 = !DILocation(line: 109, column: 11, scope: !2249)
!2251 = !DILocation(line: 109, column: 4, scope: !2249)
!2252 = !DILocation(line: 111, column: 2, scope: !2236)
!2253 = !DILocation(line: 104, column: 2, scope: !2224)
!2254 = distinct !{!2254, !2233, !2255, !2256, !2257}
!2255 = !DILocation(line: 111, column: 2, scope: !2222)
!2256 = !{!"llvm.loop.mustprogress"}
!2257 = !{!"llvm.loop.unroll.disable"}
!2258 = !DILocation(line: 112, column: 2, scope: !2211)
!2259 = !DILocation(line: 114, column: 2, scope: !2211)
!2260 = !DILocation(line: 115, column: 1, scope: !2211)
!2261 = distinct !DISubprogram(name: "kzalloc", scope: !129, file: !129, line: 719, type: !2262, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!141, !291, !139}
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "size", arg: 1, scope: !2261, file: !129, line: 719, type: !291)
!2266 = !DILocalVariable(name: "flags", arg: 2, scope: !2261, file: !129, line: 719, type: !139)
!2267 = !DILocation(line: 719, column: 52, scope: !2261)
!2268 = !DILocation(line: 719, column: 64, scope: !2261)
!2269 = !DILocation(line: 721, column: 17, scope: !2261)
!2270 = !DILocation(line: 721, column: 23, scope: !2261)
!2271 = !DILocation(line: 721, column: 29, scope: !2261)
!2272 = !DILocation(line: 721, column: 9, scope: !2261)
!2273 = !DILocation(line: 721, column: 2, scope: !2261)
!2274 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2275, file: !2275, line: 35, type: !2276, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2278)
!2275 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !164}
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "list", arg: 1, scope: !2274, file: !2275, line: 35, type: !164)
!2280 = !DILocation(line: 35, column: 53, scope: !2274)
!2281 = !DILocation(line: 37, column: 2, scope: !2274)
!2282 = !DILocation(line: 37, column: 2, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2274, file: !2275, line: 37, column: 2)
!2284 = !DILocation(line: 37, column: 2, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2283, file: !2275, line: 37, column: 2)
!2286 = !DILocation(line: 37, column: 2, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !2275, line: 37, column: 2)
!2288 = !DILocation(line: 38, column: 2, scope: !2274)
!2289 = !DILocation(line: 38, column: 2, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2274, file: !2275, line: 38, column: 2)
!2291 = !DILocation(line: 38, column: 2, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2290, file: !2275, line: 38, column: 2)
!2293 = !DILocation(line: 38, column: 2, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !2275, line: 38, column: 2)
!2295 = !DILocation(line: 39, column: 1, scope: !2274)
!2296 = !DISubprogram(name: "strscpy", scope: !2297, file: !2297, line: 72, type: !2298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2297 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!276, !244, !158, !291}
!2300 = !DISubprogram(name: "strreplace", scope: !2297, file: !2297, line: 212, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!244, !244, !4, !4}
!2303 = !DISubprogram(name: "hwmon_device_register_for_thermal", scope: !2304, file: !2304, line: 467, type: !2305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2304 = !DIFile(filename: "./include/linux/hwmon.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f56bc649189c3754549c248a0c9d40f")
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!150, !150, !158, !141}
!2307 = distinct !DISubprogram(name: "IS_ERR", scope: !2308, file: !2308, line: 59, type: !2309, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2311)
!2308 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!600, !522}
!2311 = !{!2312}
!2312 = !DILocalVariable(name: "ptr", arg: 1, scope: !2307, file: !2308, line: 59, type: !522)
!2313 = !DILocation(line: 59, column: 60, scope: !2307)
!2314 = !DILocation(line: 61, column: 9, scope: !2307)
!2315 = !DILocation(line: 61, column: 2, scope: !2307)
!2316 = distinct !DISubprogram(name: "PTR_ERR", scope: !2308, file: !2308, line: 49, type: !2317, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!280, !522}
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "ptr", arg: 1, scope: !2316, file: !2308, line: 49, type: !522)
!2321 = !DILocation(line: 49, column: 61, scope: !2316)
!2322 = !DILocation(line: 51, column: 16, scope: !2316)
!2323 = !DILocation(line: 51, column: 9, scope: !2316)
!2324 = !DILocation(line: 51, column: 2, scope: !2316)
!2325 = !DISubprogram(name: "snprintf", scope: !2326, file: !2326, line: 12, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2326 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!57, !244, !291, !158, null}
!2329 = distinct !DISubprogram(name: "temp_input_show", scope: !2, file: !2, line: 50, type: !1776, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2339, !2340, !2342}
!2331 = !DILocalVariable(name: "dev", arg: 1, scope: !2329, file: !2, line: 50, type: !150)
!2332 = !DILocalVariable(name: "attr", arg: 2, scope: !2329, file: !2, line: 50, type: !1778)
!2333 = !DILocalVariable(name: "buf", arg: 3, scope: !2329, file: !2, line: 50, type: !244)
!2334 = !DILocalVariable(name: "temperature", scope: !2329, file: !2, line: 52, type: !57)
!2335 = !DILocalVariable(name: "ret", scope: !2329, file: !2, line: 53, type: !57)
!2336 = !DILocalVariable(name: "hwmon_attr", scope: !2329, file: !2, line: 54, type: !1767)
!2337 = !DILocalVariable(name: "__mptr", scope: !2338, file: !2, line: 55, type: !141)
!2338 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 55, column: 6)
!2339 = !DILocalVariable(name: "temp", scope: !2329, file: !2, line: 56, type: !1785)
!2340 = !DILocalVariable(name: "__mptr", scope: !2341, file: !2, line: 57, type: !141)
!2341 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 57, column: 6)
!2342 = !DILocalVariable(name: "tz", scope: !2329, file: !2, line: 59, type: !1790)
!2343 = !DILocation(line: 50, column: 32, scope: !2329)
!2344 = !DILocation(line: 50, column: 62, scope: !2329)
!2345 = !DILocation(line: 50, column: 74, scope: !2329)
!2346 = !DILocation(line: 52, column: 2, scope: !2329)
!2347 = !DILocation(line: 52, column: 6, scope: !2329)
!2348 = !DILocation(line: 53, column: 2, scope: !2329)
!2349 = !DILocation(line: 53, column: 6, scope: !2329)
!2350 = !DILocation(line: 54, column: 2, scope: !2329)
!2351 = !DILocation(line: 54, column: 29, scope: !2329)
!2352 = !DILocation(line: 55, column: 6, scope: !2338)
!2353 = !DILocation(line: 55, column: 6, scope: !2329)
!2354 = !DILocation(line: 56, column: 2, scope: !2329)
!2355 = !DILocation(line: 56, column: 29, scope: !2329)
!2356 = !DILocation(line: 57, column: 6, scope: !2341)
!2357 = !DILocation(line: 57, column: 6, scope: !2329)
!2358 = !DILocation(line: 59, column: 2, scope: !2329)
!2359 = !DILocation(line: 59, column: 30, scope: !2329)
!2360 = !DILocation(line: 59, column: 35, scope: !2329)
!2361 = !DILocation(line: 59, column: 41, scope: !2329)
!2362 = !DILocation(line: 61, column: 30, scope: !2329)
!2363 = !DILocation(line: 61, column: 8, scope: !2329)
!2364 = !DILocation(line: 61, column: 6, scope: !2329)
!2365 = !DILocation(line: 63, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 63, column: 6)
!2367 = !DILocation(line: 63, column: 6, scope: !2329)
!2368 = !DILocation(line: 64, column: 10, scope: !2366)
!2369 = !DILocation(line: 64, column: 3, scope: !2366)
!2370 = !DILocation(line: 66, column: 17, scope: !2329)
!2371 = !DILocation(line: 66, column: 30, scope: !2329)
!2372 = !DILocation(line: 66, column: 9, scope: !2329)
!2373 = !DILocation(line: 66, column: 2, scope: !2329)
!2374 = !DILocation(line: 67, column: 1, scope: !2329)
!2375 = !DISubprogram(name: "device_create_file", scope: !37, file: !37, line: 259, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!57, !150, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!2380 = distinct !DISubprogram(name: "thermal_zone_crit_temp_valid", scope: !2, file: !2, line: 135, type: !2381, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!600, !1790}
!2383 = !{!2384, !2385}
!2384 = !DILocalVariable(name: "tz", arg: 1, scope: !2380, file: !2, line: 135, type: !1790)
!2385 = !DILocalVariable(name: "temp", scope: !2380, file: !2, line: 137, type: !57)
!2386 = !DILocation(line: 135, column: 70, scope: !2380)
!2387 = !DILocation(line: 137, column: 2, scope: !2380)
!2388 = !DILocation(line: 137, column: 6, scope: !2380)
!2389 = !DILocation(line: 138, column: 9, scope: !2380)
!2390 = !DILocation(line: 138, column: 13, scope: !2380)
!2391 = !DILocation(line: 138, column: 18, scope: !2380)
!2392 = !DILocation(line: 138, column: 32, scope: !2380)
!2393 = !DILocation(line: 138, column: 36, scope: !2380)
!2394 = !DILocation(line: 138, column: 40, scope: !2380)
!2395 = !DILocation(line: 138, column: 45, scope: !2380)
!2396 = !DILocation(line: 138, column: 59, scope: !2380)
!2397 = !DILocation(line: 138, column: 35, scope: !2380)
!2398 = !DILocation(line: 0, scope: !2380)
!2399 = !DILocation(line: 139, column: 1, scope: !2380)
!2400 = !DILocation(line: 138, column: 2, scope: !2380)
!2401 = distinct !DISubprogram(name: "temp_crit_show", scope: !2, file: !2, line: 70, type: !1776, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2402)
!2402 = !{!2403, !2404, !2405, !2406, !2407, !2409, !2410, !2412, !2413, !2414}
!2403 = !DILocalVariable(name: "dev", arg: 1, scope: !2401, file: !2, line: 70, type: !150)
!2404 = !DILocalVariable(name: "attr", arg: 2, scope: !2401, file: !2, line: 70, type: !1778)
!2405 = !DILocalVariable(name: "buf", arg: 3, scope: !2401, file: !2, line: 70, type: !244)
!2406 = !DILocalVariable(name: "hwmon_attr", scope: !2401, file: !2, line: 72, type: !1767)
!2407 = !DILocalVariable(name: "__mptr", scope: !2408, file: !2, line: 73, type: !141)
!2408 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 73, column: 6)
!2409 = !DILocalVariable(name: "temp", scope: !2401, file: !2, line: 74, type: !1785)
!2410 = !DILocalVariable(name: "__mptr", scope: !2411, file: !2, line: 75, type: !141)
!2411 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 75, column: 6)
!2412 = !DILocalVariable(name: "tz", scope: !2401, file: !2, line: 77, type: !1790)
!2413 = !DILocalVariable(name: "temperature", scope: !2401, file: !2, line: 78, type: !57)
!2414 = !DILocalVariable(name: "ret", scope: !2401, file: !2, line: 79, type: !57)
!2415 = !DILocation(line: 70, column: 31, scope: !2401)
!2416 = !DILocation(line: 70, column: 61, scope: !2401)
!2417 = !DILocation(line: 70, column: 73, scope: !2401)
!2418 = !DILocation(line: 72, column: 2, scope: !2401)
!2419 = !DILocation(line: 72, column: 29, scope: !2401)
!2420 = !DILocation(line: 73, column: 6, scope: !2408)
!2421 = !DILocation(line: 73, column: 6, scope: !2401)
!2422 = !DILocation(line: 74, column: 2, scope: !2401)
!2423 = !DILocation(line: 74, column: 29, scope: !2401)
!2424 = !DILocation(line: 75, column: 6, scope: !2411)
!2425 = !DILocation(line: 75, column: 6, scope: !2401)
!2426 = !DILocation(line: 77, column: 2, scope: !2401)
!2427 = !DILocation(line: 77, column: 30, scope: !2401)
!2428 = !DILocation(line: 77, column: 35, scope: !2401)
!2429 = !DILocation(line: 77, column: 41, scope: !2401)
!2430 = !DILocation(line: 78, column: 2, scope: !2401)
!2431 = !DILocation(line: 78, column: 6, scope: !2401)
!2432 = !DILocation(line: 79, column: 2, scope: !2401)
!2433 = !DILocation(line: 79, column: 6, scope: !2401)
!2434 = !DILocation(line: 81, column: 14, scope: !2401)
!2435 = !DILocation(line: 81, column: 18, scope: !2401)
!2436 = !DILocation(line: 81, column: 2, scope: !2401)
!2437 = !DILocation(line: 83, column: 28, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 83, column: 6)
!2439 = !DILocation(line: 83, column: 32, scope: !2438)
!2440 = !DILocation(line: 83, column: 6, scope: !2438)
!2441 = !DILocation(line: 83, column: 6, scope: !2401)
!2442 = !DILocation(line: 84, column: 9, scope: !2438)
!2443 = !DILocation(line: 84, column: 13, scope: !2438)
!2444 = !DILocation(line: 84, column: 18, scope: !2438)
!2445 = !DILocation(line: 84, column: 32, scope: !2438)
!2446 = !DILocation(line: 84, column: 7, scope: !2438)
!2447 = !DILocation(line: 84, column: 3, scope: !2438)
!2448 = !DILocation(line: 86, column: 7, scope: !2438)
!2449 = !DILocation(line: 88, column: 16, scope: !2401)
!2450 = !DILocation(line: 88, column: 20, scope: !2401)
!2451 = !DILocation(line: 88, column: 2, scope: !2401)
!2452 = !DILocation(line: 90, column: 6, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 90, column: 6)
!2454 = !DILocation(line: 90, column: 6, scope: !2401)
!2455 = !DILocation(line: 91, column: 10, scope: !2453)
!2456 = !DILocation(line: 91, column: 3, scope: !2453)
!2457 = !DILocation(line: 93, column: 17, scope: !2401)
!2458 = !DILocation(line: 93, column: 30, scope: !2401)
!2459 = !DILocation(line: 93, column: 9, scope: !2401)
!2460 = !DILocation(line: 93, column: 2, scope: !2401)
!2461 = !DILocation(line: 94, column: 1, scope: !2401)
!2462 = !DISubprogram(name: "mutex_lock", scope: !502, file: !502, line: 227, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!2466 = distinct !DISubprogram(name: "list_add_tail", scope: !2275, file: !2275, line: 181, type: !2467, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !164, !164}
!2469 = !{!2470, !2471}
!2470 = !DILocalVariable(name: "new", arg: 1, scope: !2466, file: !2275, line: 181, type: !164)
!2471 = !DILocalVariable(name: "head", arg: 2, scope: !2466, file: !2275, line: 181, type: !164)
!2472 = !DILocation(line: 181, column: 52, scope: !2466)
!2473 = !DILocation(line: 181, column: 75, scope: !2466)
!2474 = !DILocation(line: 183, column: 13, scope: !2466)
!2475 = !DILocation(line: 183, column: 18, scope: !2466)
!2476 = !DILocation(line: 183, column: 24, scope: !2466)
!2477 = !DILocation(line: 183, column: 30, scope: !2466)
!2478 = !DILocation(line: 183, column: 2, scope: !2466)
!2479 = !DILocation(line: 184, column: 1, scope: !2466)
!2480 = !DISubprogram(name: "mutex_unlock", scope: !502, file: !502, line: 246, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2481 = !DISubprogram(name: "device_remove_file", scope: !37, file: !37, line: 261, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !150, !2378}
!2484 = !DISubprogram(name: "kfree", scope: !129, file: !129, line: 227, type: !2485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{null, !522}
!2487 = !DISubprogram(name: "hwmon_device_unregister", scope: !2304, file: !2304, line: 475, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = distinct !DISubprogram(name: "thermal_remove_hwmon_sysfs", scope: !2, file: !2, line: 224, type: !1906, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "tz", arg: 1, scope: !2488, file: !2, line: 224, type: !1790)
!2491 = !DILocalVariable(name: "hwmon", scope: !2488, file: !2, line: 226, type: !142)
!2492 = !DILocalVariable(name: "temp", scope: !2488, file: !2, line: 227, type: !1785)
!2493 = !DILocation(line: 224, column: 61, scope: !2488)
!2494 = !DILocation(line: 226, column: 2, scope: !2488)
!2495 = !DILocation(line: 226, column: 31, scope: !2488)
!2496 = !DILocation(line: 227, column: 2, scope: !2488)
!2497 = !DILocation(line: 227, column: 29, scope: !2488)
!2498 = !DILocation(line: 229, column: 39, scope: !2488)
!2499 = !DILocation(line: 229, column: 10, scope: !2488)
!2500 = !DILocation(line: 229, column: 8, scope: !2488)
!2501 = !DILocation(line: 230, column: 6, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 230, column: 6)
!2503 = !DILocation(line: 230, column: 6, scope: !2488)
!2504 = !DILocation(line: 233, column: 3, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 230, column: 24)
!2506 = !DILocation(line: 236, column: 35, scope: !2488)
!2507 = !DILocation(line: 236, column: 42, scope: !2488)
!2508 = !DILocation(line: 236, column: 9, scope: !2488)
!2509 = !DILocation(line: 236, column: 7, scope: !2488)
!2510 = !DILocation(line: 237, column: 6, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 237, column: 6)
!2512 = !DILocation(line: 237, column: 6, scope: !2488)
!2513 = !DILocation(line: 240, column: 3, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !2, line: 237, column: 23)
!2515 = !DILocation(line: 243, column: 21, scope: !2488)
!2516 = !DILocation(line: 243, column: 28, scope: !2488)
!2517 = !DILocation(line: 243, column: 37, scope: !2488)
!2518 = !DILocation(line: 243, column: 43, scope: !2488)
!2519 = !DILocation(line: 243, column: 54, scope: !2488)
!2520 = !DILocation(line: 243, column: 2, scope: !2488)
!2521 = !DILocation(line: 244, column: 35, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 244, column: 6)
!2523 = !DILocation(line: 244, column: 6, scope: !2522)
!2524 = !DILocation(line: 244, column: 6, scope: !2488)
!2525 = !DILocation(line: 245, column: 22, scope: !2522)
!2526 = !DILocation(line: 245, column: 29, scope: !2522)
!2527 = !DILocation(line: 245, column: 38, scope: !2522)
!2528 = !DILocation(line: 245, column: 44, scope: !2522)
!2529 = !DILocation(line: 245, column: 54, scope: !2522)
!2530 = !DILocation(line: 245, column: 3, scope: !2522)
!2531 = !DILocation(line: 247, column: 2, scope: !2488)
!2532 = !DILocation(line: 248, column: 12, scope: !2488)
!2533 = !DILocation(line: 248, column: 18, scope: !2488)
!2534 = !DILocation(line: 248, column: 2, scope: !2488)
!2535 = !DILocation(line: 249, column: 8, scope: !2488)
!2536 = !DILocation(line: 249, column: 2, scope: !2488)
!2537 = !DILocation(line: 250, column: 19, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 250, column: 6)
!2539 = !DILocation(line: 250, column: 26, scope: !2538)
!2540 = !DILocation(line: 250, column: 7, scope: !2538)
!2541 = !DILocation(line: 250, column: 6, scope: !2488)
!2542 = !DILocation(line: 251, column: 3, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !2, line: 250, column: 36)
!2544 = !DILocation(line: 252, column: 3, scope: !2543)
!2545 = !DILocation(line: 254, column: 12, scope: !2488)
!2546 = !DILocation(line: 254, column: 19, scope: !2488)
!2547 = !DILocation(line: 254, column: 2, scope: !2488)
!2548 = !DILocation(line: 255, column: 2, scope: !2488)
!2549 = !DILocation(line: 257, column: 26, scope: !2488)
!2550 = !DILocation(line: 257, column: 33, scope: !2488)
!2551 = !DILocation(line: 257, column: 2, scope: !2488)
!2552 = !DILocation(line: 258, column: 8, scope: !2488)
!2553 = !DILocation(line: 258, column: 2, scope: !2488)
!2554 = !DILocation(line: 259, column: 1, scope: !2488)
!2555 = distinct !DISubprogram(name: "thermal_hwmon_lookup_temp", scope: !2, file: !2, line: 119, type: !2556, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2560)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!1785, !2558, !2214}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!2560 = !{!2561, !2562, !2563, !2564, !2567}
!2561 = !DILocalVariable(name: "hwmon", arg: 1, scope: !2555, file: !2, line: 119, type: !2558)
!2562 = !DILocalVariable(name: "tz", arg: 2, scope: !2555, file: !2, line: 120, type: !2214)
!2563 = !DILocalVariable(name: "temp", scope: !2555, file: !2, line: 122, type: !1785)
!2564 = !DILocalVariable(name: "__mptr", scope: !2565, file: !2, line: 125, type: !141)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !2, line: 125, column: 2)
!2566 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 125, column: 2)
!2567 = !DILocalVariable(name: "__mptr", scope: !2568, file: !2, line: 125, type: !141)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 125, column: 2)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !2, line: 125, column: 2)
!2570 = !DILocation(line: 119, column: 62, scope: !2555)
!2571 = !DILocation(line: 120, column: 40, scope: !2555)
!2572 = !DILocation(line: 122, column: 2, scope: !2555)
!2573 = !DILocation(line: 122, column: 29, scope: !2555)
!2574 = !DILocation(line: 124, column: 2, scope: !2555)
!2575 = !DILocation(line: 125, column: 2, scope: !2565)
!2576 = !DILocation(line: 125, column: 2, scope: !2566)
!2577 = !DILocation(line: 125, column: 2, scope: !2569)
!2578 = !DILocation(line: 126, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 126, column: 7)
!2580 = !DILocation(line: 126, column: 13, scope: !2579)
!2581 = !DILocation(line: 126, column: 19, scope: !2579)
!2582 = !DILocation(line: 126, column: 16, scope: !2579)
!2583 = !DILocation(line: 126, column: 7, scope: !2569)
!2584 = !DILocation(line: 127, column: 4, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 126, column: 23)
!2586 = !DILocation(line: 128, column: 11, scope: !2585)
!2587 = !DILocation(line: 128, column: 4, scope: !2585)
!2588 = !DILocation(line: 125, column: 2, scope: !2568)
!2589 = distinct !{!2589, !2576, !2590, !2256, !2257}
!2590 = !DILocation(line: 129, column: 3, scope: !2566)
!2591 = !DILocation(line: 130, column: 2, scope: !2555)
!2592 = !DILocation(line: 132, column: 2, scope: !2555)
!2593 = !DILocation(line: 133, column: 1, scope: !2555)
!2594 = distinct !DISubprogram(name: "list_del", scope: !2275, file: !2275, line: 227, type: !2276, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2595)
!2595 = !{!2596}
!2596 = !DILocalVariable(name: "entry", arg: 1, scope: !2594, file: !2275, line: 227, type: !164)
!2597 = !DILocation(line: 227, column: 47, scope: !2594)
!2598 = !DILocation(line: 229, column: 19, scope: !2594)
!2599 = !DILocation(line: 229, column: 2, scope: !2594)
!2600 = !DILocation(line: 230, column: 2, scope: !2594)
!2601 = !DILocation(line: 230, column: 9, scope: !2594)
!2602 = !DILocation(line: 230, column: 14, scope: !2594)
!2603 = !DILocation(line: 231, column: 2, scope: !2594)
!2604 = !DILocation(line: 231, column: 9, scope: !2594)
!2605 = !DILocation(line: 231, column: 14, scope: !2594)
!2606 = !DILocation(line: 232, column: 1, scope: !2594)
!2607 = distinct !DISubprogram(name: "list_empty", scope: !2275, file: !2275, line: 371, type: !2608, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2612)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!57, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!2612 = !{!2613}
!2613 = !DILocalVariable(name: "head", arg: 1, scope: !2607, file: !2275, line: 371, type: !2610)
!2614 = !DILocation(line: 371, column: 54, scope: !2607)
!2615 = !DILocation(line: 373, column: 9, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2607, file: !2275, line: 373, column: 9)
!2617 = !DILocation(line: 373, column: 9, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2616, file: !2275, line: 373, column: 9)
!2619 = !DILocation(line: 373, column: 34, scope: !2607)
!2620 = !DILocation(line: 373, column: 31, scope: !2607)
!2621 = !DILocation(line: 373, column: 2, scope: !2607)
!2622 = distinct !DISubprogram(name: "devm_thermal_add_hwmon_sysfs", scope: !2, file: !2, line: 267, type: !2623, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!57, !150, !1790}
!2625 = !{!2626, !2627, !2628, !2629}
!2626 = !DILocalVariable(name: "dev", arg: 1, scope: !2622, file: !2, line: 267, type: !150)
!2627 = !DILocalVariable(name: "tz", arg: 2, scope: !2622, file: !2, line: 267, type: !1790)
!2628 = !DILocalVariable(name: "ptr", scope: !2622, file: !2, line: 269, type: !1957)
!2629 = !DILocalVariable(name: "ret", scope: !2622, file: !2, line: 270, type: !57)
!2630 = !DILocation(line: 267, column: 49, scope: !2622)
!2631 = !DILocation(line: 267, column: 82, scope: !2622)
!2632 = !DILocation(line: 269, column: 2, scope: !2622)
!2633 = !DILocation(line: 269, column: 31, scope: !2622)
!2634 = !DILocation(line: 270, column: 2, scope: !2622)
!2635 = !DILocation(line: 270, column: 6, scope: !2622)
!2636 = !DILocation(line: 272, column: 8, scope: !2622)
!2637 = !DILocation(line: 272, column: 6, scope: !2622)
!2638 = !DILocation(line: 274, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2622, file: !2, line: 274, column: 6)
!2640 = !DILocation(line: 274, column: 6, scope: !2622)
!2641 = !DILocation(line: 275, column: 3, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 275, column: 3)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 274, column: 12)
!2644 = !DILocation(line: 275, column: 3, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !2, line: 275, column: 3)
!2646 = !DILocation(line: 276, column: 3, scope: !2643)
!2647 = !DILocation(line: 279, column: 32, scope: !2622)
!2648 = !DILocation(line: 279, column: 8, scope: !2622)
!2649 = !DILocation(line: 279, column: 6, scope: !2622)
!2650 = !DILocation(line: 280, column: 6, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2622, file: !2, line: 280, column: 6)
!2652 = !DILocation(line: 280, column: 6, scope: !2622)
!2653 = !DILocation(line: 281, column: 3, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 281, column: 3)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 280, column: 11)
!2656 = !DILocation(line: 281, column: 3, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 281, column: 3)
!2658 = !DILocation(line: 282, column: 15, scope: !2655)
!2659 = !DILocation(line: 282, column: 3, scope: !2655)
!2660 = !DILocation(line: 283, column: 10, scope: !2655)
!2661 = !DILocation(line: 283, column: 3, scope: !2655)
!2662 = !DILocation(line: 286, column: 9, scope: !2622)
!2663 = !DILocation(line: 286, column: 3, scope: !2622)
!2664 = !DILocation(line: 286, column: 7, scope: !2622)
!2665 = !DILocation(line: 287, column: 13, scope: !2622)
!2666 = !DILocation(line: 287, column: 18, scope: !2622)
!2667 = !DILocation(line: 287, column: 2, scope: !2622)
!2668 = !DILocation(line: 289, column: 9, scope: !2622)
!2669 = !DILocation(line: 289, column: 2, scope: !2622)
!2670 = !DILocation(line: 290, column: 1, scope: !2622)
!2671 = !DISubprogram(name: "__devres_alloc_node", scope: !37, file: !37, line: 274, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!141, !2674, !291, !139, !57, !158}
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !37, line: 271, baseType: !2675)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !150, !141}
!2678 = distinct !DISubprogram(name: "devm_thermal_hwmon_release", scope: !2, file: !2, line: 262, type: !2676, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2679)
!2679 = !{!2680, !2681}
!2680 = !DILocalVariable(name: "dev", arg: 1, scope: !2678, file: !2, line: 262, type: !150)
!2681 = !DILocalVariable(name: "res", arg: 2, scope: !2678, file: !2, line: 262, type: !141)
!2682 = !DILocation(line: 262, column: 55, scope: !2678)
!2683 = !DILocation(line: 262, column: 66, scope: !2678)
!2684 = !DILocation(line: 264, column: 61, scope: !2678)
!2685 = !DILocation(line: 264, column: 29, scope: !2678)
!2686 = !DILocation(line: 264, column: 2, scope: !2678)
!2687 = !DILocation(line: 265, column: 1, scope: !2678)
!2688 = !DISubprogram(name: "_dev_warn", scope: !2689, file: !2689, line: 52, type: !2690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2689 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2690 = !DISubroutineType(types: !2691)
!2691 = !{null, !835, !158, null}
!2692 = !DISubprogram(name: "devres_free", scope: !37, file: !37, line: 285, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2693 = !DISubprogram(name: "devres_add", scope: !37, file: !37, line: 286, type: !2676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2694 = !DISubprogram(name: "strcpy", scope: !2297, file: !2297, line: 63, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!244, !244, !158}
!2697 = !DISubprogram(name: "strcmp", scope: !2297, file: !2297, line: 88, type: !2698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!57, !158, !158}
!2700 = distinct !DISubprogram(name: "kmalloc", scope: !129, file: !129, line: 591, type: !2262, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2701)
!2701 = !{!2702, !2703, !2704}
!2702 = !DILocalVariable(name: "size", arg: 1, scope: !2700, file: !129, line: 591, type: !291)
!2703 = !DILocalVariable(name: "flags", arg: 2, scope: !2700, file: !129, line: 591, type: !139)
!2704 = !DILocalVariable(name: "index", scope: !2705, file: !129, line: 594, type: !18)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !129, line: 593, column: 42)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !129, line: 593, column: 6)
!2707 = !DILocation(line: 591, column: 61, scope: !2700)
!2708 = !DILocation(line: 591, column: 73, scope: !2700)
!2709 = !DILocation(line: 593, column: 27, scope: !2706)
!2710 = !DILocation(line: 593, column: 6, scope: !2706)
!2711 = !DILocation(line: 593, column: 33, scope: !2706)
!2712 = !DILocation(line: 593, column: 36, scope: !2706)
!2713 = !DILocation(line: 593, column: 6, scope: !2700)
!2714 = !DILocation(line: 594, column: 3, scope: !2705)
!2715 = !DILocation(line: 594, column: 16, scope: !2705)
!2716 = !DILocation(line: 596, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2705, file: !129, line: 596, column: 7)
!2718 = !DILocation(line: 596, column: 12, scope: !2717)
!2719 = !DILocation(line: 596, column: 7, scope: !2705)
!2720 = !DILocation(line: 597, column: 25, scope: !2717)
!2721 = !DILocation(line: 597, column: 31, scope: !2717)
!2722 = !DILocation(line: 597, column: 11, scope: !2717)
!2723 = !DILocation(line: 597, column: 4, scope: !2717)
!2724 = !DILocation(line: 599, column: 11, scope: !2705)
!2725 = !DILocation(line: 599, column: 9, scope: !2705)
!2726 = !DILocation(line: 601, column: 33, scope: !2705)
!2727 = !DILocation(line: 601, column: 40, scope: !2705)
!2728 = !DILocation(line: 601, column: 20, scope: !2705)
!2729 = !DILocation(line: 601, column: 5, scope: !2705)
!2730 = !DILocation(line: 601, column: 51, scope: !2705)
!2731 = !DILocation(line: 602, column: 5, scope: !2705)
!2732 = !DILocation(line: 602, column: 12, scope: !2705)
!2733 = !DILocation(line: 600, column: 10, scope: !2705)
!2734 = !DILocation(line: 600, column: 3, scope: !2705)
!2735 = !DILocation(line: 603, column: 2, scope: !2706)
!2736 = !DILocation(line: 604, column: 19, scope: !2700)
!2737 = !DILocation(line: 604, column: 25, scope: !2700)
!2738 = !DILocation(line: 604, column: 9, scope: !2700)
!2739 = !DILocation(line: 604, column: 2, scope: !2700)
!2740 = !DILocation(line: 605, column: 1, scope: !2700)
!2741 = !DISubprogram(name: "kmalloc_large", scope: !129, file: !129, line: 531, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2742 = distinct !DISubprogram(name: "__kmalloc_index", scope: !129, file: !129, line: 444, type: !2743, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!18, !291, !600}
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "size", arg: 1, scope: !2742, file: !129, line: 444, type: !291)
!2747 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2742, file: !129, line: 445, type: !600)
!2748 = !DILocation(line: 444, column: 60, scope: !2742)
!2749 = !DILocation(line: 445, column: 16, scope: !2742)
!2750 = !DILocation(line: 447, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 447, column: 6)
!2752 = !DILocation(line: 447, column: 6, scope: !2742)
!2753 = !DILocation(line: 448, column: 3, scope: !2751)
!2754 = !DILocation(line: 450, column: 6, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 450, column: 6)
!2756 = !DILocation(line: 450, column: 11, scope: !2755)
!2757 = !DILocation(line: 450, column: 6, scope: !2742)
!2758 = !DILocation(line: 451, column: 3, scope: !2755)
!2759 = !DILocation(line: 453, column: 32, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 453, column: 6)
!2761 = !DILocation(line: 453, column: 37, scope: !2760)
!2762 = !DILocation(line: 453, column: 42, scope: !2760)
!2763 = !DILocation(line: 453, column: 45, scope: !2760)
!2764 = !DILocation(line: 453, column: 50, scope: !2760)
!2765 = !DILocation(line: 453, column: 6, scope: !2742)
!2766 = !DILocation(line: 454, column: 3, scope: !2760)
!2767 = !DILocation(line: 455, column: 32, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 455, column: 6)
!2769 = !DILocation(line: 455, column: 37, scope: !2768)
!2770 = !DILocation(line: 455, column: 43, scope: !2768)
!2771 = !DILocation(line: 455, column: 46, scope: !2768)
!2772 = !DILocation(line: 455, column: 51, scope: !2768)
!2773 = !DILocation(line: 455, column: 6, scope: !2742)
!2774 = !DILocation(line: 456, column: 3, scope: !2768)
!2775 = !DILocation(line: 457, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 457, column: 6)
!2777 = !DILocation(line: 457, column: 11, scope: !2776)
!2778 = !DILocation(line: 457, column: 6, scope: !2742)
!2779 = !DILocation(line: 457, column: 26, scope: !2776)
!2780 = !DILocation(line: 458, column: 6, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 458, column: 6)
!2782 = !DILocation(line: 458, column: 11, scope: !2781)
!2783 = !DILocation(line: 458, column: 6, scope: !2742)
!2784 = !DILocation(line: 458, column: 26, scope: !2781)
!2785 = !DILocation(line: 459, column: 6, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 459, column: 6)
!2787 = !DILocation(line: 459, column: 11, scope: !2786)
!2788 = !DILocation(line: 459, column: 6, scope: !2742)
!2789 = !DILocation(line: 459, column: 26, scope: !2786)
!2790 = !DILocation(line: 460, column: 6, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 460, column: 6)
!2792 = !DILocation(line: 460, column: 11, scope: !2791)
!2793 = !DILocation(line: 460, column: 6, scope: !2742)
!2794 = !DILocation(line: 460, column: 26, scope: !2791)
!2795 = !DILocation(line: 461, column: 6, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 461, column: 6)
!2797 = !DILocation(line: 461, column: 11, scope: !2796)
!2798 = !DILocation(line: 461, column: 6, scope: !2742)
!2799 = !DILocation(line: 461, column: 26, scope: !2796)
!2800 = !DILocation(line: 462, column: 6, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 462, column: 6)
!2802 = !DILocation(line: 462, column: 11, scope: !2801)
!2803 = !DILocation(line: 462, column: 6, scope: !2742)
!2804 = !DILocation(line: 462, column: 26, scope: !2801)
!2805 = !DILocation(line: 463, column: 6, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 463, column: 6)
!2807 = !DILocation(line: 463, column: 11, scope: !2806)
!2808 = !DILocation(line: 463, column: 6, scope: !2742)
!2809 = !DILocation(line: 463, column: 26, scope: !2806)
!2810 = !DILocation(line: 464, column: 6, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 464, column: 6)
!2812 = !DILocation(line: 464, column: 11, scope: !2811)
!2813 = !DILocation(line: 464, column: 6, scope: !2742)
!2814 = !DILocation(line: 464, column: 26, scope: !2811)
!2815 = !DILocation(line: 465, column: 6, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 465, column: 6)
!2817 = !DILocation(line: 465, column: 11, scope: !2816)
!2818 = !DILocation(line: 465, column: 6, scope: !2742)
!2819 = !DILocation(line: 465, column: 26, scope: !2816)
!2820 = !DILocation(line: 466, column: 6, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 466, column: 6)
!2822 = !DILocation(line: 466, column: 11, scope: !2821)
!2823 = !DILocation(line: 466, column: 6, scope: !2742)
!2824 = !DILocation(line: 466, column: 26, scope: !2821)
!2825 = !DILocation(line: 467, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 467, column: 6)
!2827 = !DILocation(line: 467, column: 11, scope: !2826)
!2828 = !DILocation(line: 467, column: 6, scope: !2742)
!2829 = !DILocation(line: 467, column: 26, scope: !2826)
!2830 = !DILocation(line: 468, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 468, column: 6)
!2832 = !DILocation(line: 468, column: 11, scope: !2831)
!2833 = !DILocation(line: 468, column: 6, scope: !2742)
!2834 = !DILocation(line: 468, column: 26, scope: !2831)
!2835 = !DILocation(line: 469, column: 6, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 469, column: 6)
!2837 = !DILocation(line: 469, column: 11, scope: !2836)
!2838 = !DILocation(line: 469, column: 6, scope: !2742)
!2839 = !DILocation(line: 469, column: 26, scope: !2836)
!2840 = !DILocation(line: 470, column: 6, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 470, column: 6)
!2842 = !DILocation(line: 470, column: 11, scope: !2841)
!2843 = !DILocation(line: 470, column: 6, scope: !2742)
!2844 = !DILocation(line: 470, column: 26, scope: !2841)
!2845 = !DILocation(line: 471, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 471, column: 6)
!2847 = !DILocation(line: 471, column: 11, scope: !2846)
!2848 = !DILocation(line: 471, column: 6, scope: !2742)
!2849 = !DILocation(line: 471, column: 26, scope: !2846)
!2850 = !DILocation(line: 472, column: 6, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 472, column: 6)
!2852 = !DILocation(line: 472, column: 11, scope: !2851)
!2853 = !DILocation(line: 472, column: 6, scope: !2742)
!2854 = !DILocation(line: 472, column: 26, scope: !2851)
!2855 = !DILocation(line: 473, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 473, column: 6)
!2857 = !DILocation(line: 473, column: 11, scope: !2856)
!2858 = !DILocation(line: 473, column: 6, scope: !2742)
!2859 = !DILocation(line: 473, column: 26, scope: !2856)
!2860 = !DILocation(line: 474, column: 6, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 474, column: 6)
!2862 = !DILocation(line: 474, column: 11, scope: !2861)
!2863 = !DILocation(line: 474, column: 6, scope: !2742)
!2864 = !DILocation(line: 474, column: 27, scope: !2861)
!2865 = !DILocation(line: 475, column: 6, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 475, column: 6)
!2867 = !DILocation(line: 475, column: 11, scope: !2866)
!2868 = !DILocation(line: 475, column: 6, scope: !2742)
!2869 = !DILocation(line: 475, column: 32, scope: !2866)
!2870 = !DILocation(line: 477, column: 50, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2742, file: !129, line: 477, column: 6)
!2872 = !{i8 0, i8 2}
!2873 = !DILocation(line: 477, column: 6, scope: !2742)
!2874 = !DILocation(line: 478, column: 3, scope: !2871)
!2875 = !DILocation(line: 478, column: 3, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !129, line: 478, column: 3)
!2877 = distinct !DILexicalBlock(scope: !2871, file: !129, line: 478, column: 3)
!2878 = !{i32 -2143546927}
!2879 = !DILocation(line: 478, column: 3, scope: !2877)
!2880 = !DILocation(line: 480, column: 3, scope: !2871)
!2881 = !DILocation(line: 480, column: 3, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2871, file: !129, line: 480, column: 3)
!2883 = !DILocation(line: 480, column: 3, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2882, file: !129, line: 480, column: 3)
!2885 = !DILocation(line: 480, column: 3, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !129, line: 480, column: 3)
!2887 = !{i64 2151420572, i64 2151420601, i64 2151420647, i64 2151420705, i64 2151420759, i64 2151420813, i64 2151420868, i64 2151420899}
!2888 = !DILocation(line: 483, column: 2, scope: !2742)
!2889 = !DILocation(line: 484, column: 1, scope: !2742)
!2890 = !DISubprogram(name: "kmalloc_trace", scope: !129, file: !129, line: 525, type: !2891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!141, !2893, !139, !291}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2895, line: 11, flags: DIFlagFwdDecl)
!2895 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2896 = distinct !DISubprogram(name: "kmalloc_type", scope: !129, file: !129, line: 401, type: !2897, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!128, !139, !294}
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "flags", arg: 1, scope: !2896, file: !129, line: 401, type: !139)
!2901 = !DILocalVariable(name: "caller", arg: 2, scope: !2896, file: !129, line: 401, type: !294)
!2902 = !DILocation(line: 401, column: 67, scope: !2896)
!2903 = !DILocation(line: 401, column: 88, scope: !2896)
!2904 = !DILocation(line: 407, column: 6, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2896, file: !129, line: 407, column: 6)
!2906 = !DILocation(line: 407, column: 6, scope: !2896)
!2907 = !DILocation(line: 413, column: 3, scope: !2905)
!2908 = !DILocation(line: 423, column: 38, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2896, file: !129, line: 423, column: 6)
!2910 = !DILocation(line: 423, column: 44, scope: !2909)
!2911 = !DILocation(line: 423, column: 6, scope: !2896)
!2912 = !DILocation(line: 424, column: 3, scope: !2909)
!2913 = !DILocation(line: 426, column: 3, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2896, file: !129, line: 425, column: 6)
!2915 = !DILocation(line: 429, column: 1, scope: !2896)
!2916 = !DISubprogram(name: "__kmalloc", scope: !129, file: !129, line: 488, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2917 = !DISubprogram(name: "__compiletime_assert_117", scope: !129, file: !129, line: 478, type: !1272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2918 = !DISubprogram(name: "thermal_zone_get_temp", scope: !107, file: !107, line: 355, type: !1880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2919 = !DISubprogram(name: "sprintf", scope: !2326, file: !2326, line: 10, type: !2920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!57, !244, !158, null}
!2922 = distinct !DISubprogram(name: "device_is_registered", scope: !37, file: !37, line: 941, type: !853, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2923)
!2923 = !{!2924}
!2924 = !DILocalVariable(name: "dev", arg: 1, scope: !2922, file: !37, line: 941, type: !150)
!2925 = !DILocation(line: 941, column: 55, scope: !2922)
!2926 = !DILocation(line: 943, column: 9, scope: !2922)
!2927 = !DILocation(line: 943, column: 14, scope: !2922)
!2928 = !DILocation(line: 943, column: 19, scope: !2922)
!2929 = !DILocation(line: 943, column: 2, scope: !2922)
!2930 = distinct !DISubprogram(name: "__list_add", scope: !2275, file: !2275, line: 146, type: !2931, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{null, !164, !164, !164}
!2933 = !{!2934, !2935, !2936}
!2934 = !DILocalVariable(name: "new", arg: 1, scope: !2930, file: !2275, line: 146, type: !164)
!2935 = !DILocalVariable(name: "prev", arg: 2, scope: !2930, file: !2275, line: 147, type: !164)
!2936 = !DILocalVariable(name: "next", arg: 3, scope: !2930, file: !2275, line: 148, type: !164)
!2937 = !DILocation(line: 146, column: 49, scope: !2930)
!2938 = !DILocation(line: 147, column: 28, scope: !2930)
!2939 = !DILocation(line: 148, column: 28, scope: !2930)
!2940 = !DILocation(line: 150, column: 24, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2930, file: !2275, line: 150, column: 6)
!2942 = !DILocation(line: 150, column: 29, scope: !2941)
!2943 = !DILocation(line: 150, column: 35, scope: !2941)
!2944 = !DILocation(line: 150, column: 7, scope: !2941)
!2945 = !DILocation(line: 150, column: 6, scope: !2930)
!2946 = !DILocation(line: 151, column: 3, scope: !2941)
!2947 = !DILocation(line: 153, column: 15, scope: !2930)
!2948 = !DILocation(line: 153, column: 2, scope: !2930)
!2949 = !DILocation(line: 153, column: 8, scope: !2930)
!2950 = !DILocation(line: 153, column: 13, scope: !2930)
!2951 = !DILocation(line: 154, column: 14, scope: !2930)
!2952 = !DILocation(line: 154, column: 2, scope: !2930)
!2953 = !DILocation(line: 154, column: 7, scope: !2930)
!2954 = !DILocation(line: 154, column: 12, scope: !2930)
!2955 = !DILocation(line: 155, column: 14, scope: !2930)
!2956 = !DILocation(line: 155, column: 2, scope: !2930)
!2957 = !DILocation(line: 155, column: 7, scope: !2930)
!2958 = !DILocation(line: 155, column: 12, scope: !2930)
!2959 = !DILocation(line: 156, column: 2, scope: !2930)
!2960 = !DILocation(line: 156, column: 2, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2930, file: !2275, line: 156, column: 2)
!2962 = !DILocation(line: 156, column: 2, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2961, file: !2275, line: 156, column: 2)
!2964 = !DILocation(line: 156, column: 2, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !2275, line: 156, column: 2)
!2966 = !DILocation(line: 157, column: 1, scope: !2930)
!2967 = distinct !DISubprogram(name: "__list_add_valid", scope: !2275, file: !2275, line: 128, type: !2968, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!600, !164, !164, !164}
!2970 = !{!2971, !2972, !2973}
!2971 = !DILocalVariable(name: "new", arg: 1, scope: !2967, file: !2275, line: 128, type: !164)
!2972 = !DILocalVariable(name: "prev", arg: 2, scope: !2967, file: !2275, line: 129, type: !164)
!2973 = !DILocalVariable(name: "next", arg: 3, scope: !2967, file: !2275, line: 130, type: !164)
!2974 = !DILocation(line: 128, column: 55, scope: !2967)
!2975 = !DILocation(line: 129, column: 23, scope: !2967)
!2976 = !DILocation(line: 130, column: 23, scope: !2967)
!2977 = !DILocation(line: 132, column: 2, scope: !2967)
!2978 = distinct !DISubprogram(name: "__list_del_entry", scope: !2275, file: !2275, line: 213, type: !2276, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2979)
!2979 = !{!2980}
!2980 = !DILocalVariable(name: "entry", arg: 1, scope: !2978, file: !2275, line: 213, type: !164)
!2981 = !DILocation(line: 213, column: 55, scope: !2978)
!2982 = !DILocation(line: 215, column: 30, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2978, file: !2275, line: 215, column: 6)
!2984 = !DILocation(line: 215, column: 7, scope: !2983)
!2985 = !DILocation(line: 215, column: 6, scope: !2978)
!2986 = !DILocation(line: 216, column: 3, scope: !2983)
!2987 = !DILocation(line: 218, column: 13, scope: !2978)
!2988 = !DILocation(line: 218, column: 20, scope: !2978)
!2989 = !DILocation(line: 218, column: 26, scope: !2978)
!2990 = !DILocation(line: 218, column: 33, scope: !2978)
!2991 = !DILocation(line: 218, column: 2, scope: !2978)
!2992 = !DILocation(line: 219, column: 1, scope: !2978)
!2993 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2275, file: !2275, line: 134, type: !2994, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!600, !164}
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "entry", arg: 1, scope: !2993, file: !2275, line: 134, type: !164)
!2998 = !DILocation(line: 134, column: 61, scope: !2993)
!2999 = !DILocation(line: 136, column: 2, scope: !2993)
!3000 = distinct !DISubprogram(name: "__list_del", scope: !2275, file: !2275, line: 193, type: !2467, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3001)
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "prev", arg: 1, scope: !3000, file: !2275, line: 193, type: !164)
!3003 = !DILocalVariable(name: "next", arg: 2, scope: !3000, file: !2275, line: 193, type: !164)
!3004 = !DILocation(line: 193, column: 50, scope: !3000)
!3005 = !DILocation(line: 193, column: 75, scope: !3000)
!3006 = !DILocation(line: 195, column: 15, scope: !3000)
!3007 = !DILocation(line: 195, column: 2, scope: !3000)
!3008 = !DILocation(line: 195, column: 8, scope: !3000)
!3009 = !DILocation(line: 195, column: 13, scope: !3000)
!3010 = !DILocation(line: 196, column: 2, scope: !3000)
!3011 = !DILocation(line: 196, column: 2, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3000, file: !2275, line: 196, column: 2)
!3013 = !DILocation(line: 196, column: 2, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3012, file: !2275, line: 196, column: 2)
!3015 = !DILocation(line: 196, column: 2, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !2275, line: 196, column: 2)
!3017 = !DILocation(line: 197, column: 1, scope: !3000)
