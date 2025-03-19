; ModuleID = 'drivers/acpi/device_sysfs.c'
source_filename = "drivers/acpi/device_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_device_uevent_modalias: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_device_uevent_modalias ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_device_modalias: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_device_modalias ; .previous"

%struct.acpi_buffer = type { i64, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.acpi_data_node_attr = type { %struct.attribute, ptr, ptr }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.2, i32, i32, %struct.list_head }
%struct.anon.2 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }
%struct.anon.7 = type { i32, i32, ptr }
%struct.anon.5 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i64, i32 }
%struct.acpi_hardware_id = type { %struct.list_head, ptr }
%struct.acpi_data_node = type { ptr, ptr, %struct.fwnode_handle, ptr, %struct.acpi_device_data, %struct.list_head, %struct.kobject, %struct.completion }
%struct.anon.6 = type { i32, i32, ptr }
%struct.acpi_scan_handler = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, ptr, ptr, i8 }

@.str = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_acpi_device_uevent_modalias206 = internal global ptr @acpi_device_uevent_modalias, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_acpi_device_modalias207 = internal global ptr @acpi_device_modalias, section ".discard.addressable", align 8, !dbg !1993
@__const.acpi_device_setup_files.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@dev_attr_path = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @path_show, ptr null }, align 8, !dbg !2022
@dev_attr_hid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @hid_show, ptr null }, align 8, !dbg !2040
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @modalias_show, ptr null }, align 8, !dbg !2047
@.str.1 = private unnamed_addr constant [5 x i8] c"_STR\00", align 1, !dbg !1995
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @description_show, ptr null }, align 8, !dbg !2054
@dev_attr_adr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @adr_show, ptr null }, align 8, !dbg !2058
@dev_attr_uid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @uid_show, ptr null }, align 8, !dbg !2069
@.str.2 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1, !dbg !1998
@dev_attr_sun = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @sun_show, ptr null }, align 8, !dbg !2073
@.str.3 = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1, !dbg !2000
@dev_attr_hrv = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @hrv_show, ptr null }, align 8, !dbg !2079
@.str.4 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1, !dbg !2002
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @status_show, ptr null }, align 8, !dbg !2084
@.str.5 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1, !dbg !2004
@dev_attr_eject = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 128 }, ptr null, ptr @eject_store }, align 8, !dbg !2088
@dev_attr_power_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @power_state_show, ptr null }, align 8, !dbg !2092
@dev_attr_real_power_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @real_power_state_show, ptr null }, align 8, !dbg !2099
@__const.create_of_modalias.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"of:N%sT\00", align 1, !dbg !2006
@.str.7 = private unnamed_addr constant [4 x i8] c"C%s\00", align 1, !dbg !2008
@_ctype = external dso_local constant [0 x i8], align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"PRP0001\00", align 1, !dbg !2011
@.str.9 = private unnamed_addr constant [6 x i8] c"acpi:\00", align 1, !dbg !2013
@.str.10 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !2018
@.str.11 = private unnamed_addr constant [5 x i8] c"path\00", align 1, !dbg !2020
@__const.acpi_object_path.path = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !2036
@.str.13 = private unnamed_addr constant [4 x i8] c"hid\00", align 1, !dbg !2038
@.str.14 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1, !dbg !2042
@.str.15 = private unnamed_addr constant [12 x i8] c"description\00", align 1, !dbg !2049
@.str.16 = private unnamed_addr constant [4 x i8] c"adr\00", align 1, !dbg !2056
@.str.17 = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1, !dbg !2060
@.str.18 = private unnamed_addr constant [10 x i8] c"0x%08llx\0A\00", align 1, !dbg !2065
@.str.19 = private unnamed_addr constant [4 x i8] c"uid\00", align 1, !dbg !2067
@.str.20 = private unnamed_addr constant [4 x i8] c"sun\00", align 1, !dbg !2071
@.str.21 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !2075
@.str.22 = private unnamed_addr constant [4 x i8] c"hrv\00", align 1, !dbg !2077
@.str.23 = private unnamed_addr constant [7 x i8] c"status\00", align 1, !dbg !2081
@.str.24 = private unnamed_addr constant [6 x i8] c"eject\00", align 1, !dbg !2086
@.str.25 = private unnamed_addr constant [12 x i8] c"power_state\00", align 1, !dbg !2090
@.str.26 = private unnamed_addr constant [17 x i8] c"real_power_state\00", align 1, !dbg !2094
@acpi_data_node_ktype = internal constant %struct.kobj_type { ptr @acpi_data_node_release, ptr @acpi_data_node_sysfs_ops, ptr @acpi_data_node_default_groups, ptr null, ptr null, ptr null }, align 8, !dbg !2121
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !2101
@.str.28 = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !2104
@.str.29 = private unnamed_addr constant [23 x i8] c"Failed to expose (%d)\0A\00", align 1, !dbg !2106
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2111
@.str.30 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !2119
@acpi_data_node_sysfs_ops = internal constant %struct.sysfs_ops { ptr @acpi_data_node_attr_show, ptr null }, align 8, !dbg !2123
@acpi_data_node_default_groups = internal global [2 x ptr] [ptr @acpi_data_node_default_group, ptr null], align 16, !dbg !2125
@acpi_data_node_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @acpi_data_node_default_attrs, ptr null }, align 8, !dbg !2128
@acpi_data_node_default_attrs = internal global [2 x ptr] [ptr @data_node_path, ptr null], align 16, !dbg !2130
@data_node_path = internal global %struct.acpi_data_node_attr { %struct.attribute { ptr @.str.11, i16 292 }, ptr @data_node_show_path, ptr null }, align 8, !dbg !2133
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_device_uevent_modalias206, ptr @__UNIQUE_ID___addressable_acpi_device_modalias207], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__acpi_device_uevent_modalias(ptr noundef %adev, ptr noundef %env) #0 align 16 !dbg !2144 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2150, metadata !DIExpression()), !dbg !2153
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2152, metadata !DIExpression()), !dbg !2156
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2157
  %tobool = icmp ne ptr %0, null, !dbg !2157
  br i1 %tobool, label %if.end, label %if.then, !dbg !2159

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2160

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2161
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 8, !dbg !2163
  %ids = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 5, !dbg !2164
  %call = call i32 @list_empty(ptr noundef %ids) #7, !dbg !2165
  %tobool1 = icmp ne i32 %call, 0, !dbg !2165
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2166

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2167

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %env.addr, align 8, !dbg !2168
  %call4 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %2, ptr noundef @.str) #7, !dbg !2170
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2170
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2171

if.then6:                                         ; preds = %if.end3
  store i32 -12, ptr %retval, align 4, !dbg !2172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2172

if.end7:                                          ; preds = %if.end3
  %3 = load ptr, ptr %adev.addr, align 8, !dbg !2173
  %data = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 13, !dbg !2175
  %of_compatible = getelementptr inbounds %struct.acpi_device_data, ptr %data, i32 0, i32 2, !dbg !2176
  %4 = load ptr, ptr %of_compatible, align 8, !dbg !2176
  %tobool8 = icmp ne ptr %4, null, !dbg !2173
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2177

if.then9:                                         ; preds = %if.end7
  %5 = load ptr, ptr %adev.addr, align 8, !dbg !2178
  %6 = load ptr, ptr %env.addr, align 8, !dbg !2179
  %buf = getelementptr inbounds %struct.kobj_uevent_env, ptr %6, i32 0, i32 3, !dbg !2180
  %7 = load ptr, ptr %env.addr, align 8, !dbg !2181
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, ptr %7, i32 0, i32 4, !dbg !2182
  %8 = load i32, ptr %buflen, align 4, !dbg !2182
  %sub = sub i32 %8, 1, !dbg !2183
  %idxprom = sext i32 %sub to i64, !dbg !2179
  %arrayidx = getelementptr [2048 x i8], ptr %buf, i64 0, i64 %idxprom, !dbg !2179
  %9 = load ptr, ptr %env.addr, align 8, !dbg !2184
  %buflen10 = getelementptr inbounds %struct.kobj_uevent_env, ptr %9, i32 0, i32 4, !dbg !2185
  %10 = load i32, ptr %buflen10, align 4, !dbg !2185
  %conv = sext i32 %10 to i64, !dbg !2184
  %sub11 = sub i64 2048, %conv, !dbg !2186
  %conv12 = trunc i64 %sub11 to i32, !dbg !2187
  %call13 = call i32 @create_of_modalias(ptr noundef %5, ptr noundef %arrayidx, i32 noundef %conv12) #7, !dbg !2188
  store i32 %call13, ptr %len, align 4, !dbg !2189
  br label %if.end24, !dbg !2190

if.else:                                          ; preds = %if.end7
  %11 = load ptr, ptr %adev.addr, align 8, !dbg !2191
  %12 = load ptr, ptr %env.addr, align 8, !dbg !2192
  %buf14 = getelementptr inbounds %struct.kobj_uevent_env, ptr %12, i32 0, i32 3, !dbg !2193
  %13 = load ptr, ptr %env.addr, align 8, !dbg !2194
  %buflen15 = getelementptr inbounds %struct.kobj_uevent_env, ptr %13, i32 0, i32 4, !dbg !2195
  %14 = load i32, ptr %buflen15, align 4, !dbg !2195
  %sub16 = sub i32 %14, 1, !dbg !2196
  %idxprom17 = sext i32 %sub16 to i64, !dbg !2192
  %arrayidx18 = getelementptr [2048 x i8], ptr %buf14, i64 0, i64 %idxprom17, !dbg !2192
  %15 = load ptr, ptr %env.addr, align 8, !dbg !2197
  %buflen19 = getelementptr inbounds %struct.kobj_uevent_env, ptr %15, i32 0, i32 4, !dbg !2198
  %16 = load i32, ptr %buflen19, align 4, !dbg !2198
  %conv20 = sext i32 %16 to i64, !dbg !2197
  %sub21 = sub i64 2048, %conv20, !dbg !2199
  %conv22 = trunc i64 %sub21 to i32, !dbg !2200
  %call23 = call i32 @create_pnp_modalias(ptr noundef %11, ptr noundef %arrayidx18, i32 noundef %conv22) #7, !dbg !2201
  store i32 %call23, ptr %len, align 4, !dbg !2202
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then9
  %17 = load i32, ptr %len, align 4, !dbg !2203
  %cmp = icmp slt i32 %17, 0, !dbg !2205
  br i1 %cmp, label %if.then26, label %if.end27, !dbg !2206

if.then26:                                        ; preds = %if.end24
  %18 = load i32, ptr %len, align 4, !dbg !2207
  store i32 %18, ptr %retval, align 4, !dbg !2208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2208

if.end27:                                         ; preds = %if.end24
  %19 = load i32, ptr %len, align 4, !dbg !2209
  %20 = load ptr, ptr %env.addr, align 8, !dbg !2210
  %buflen28 = getelementptr inbounds %struct.kobj_uevent_env, ptr %20, i32 0, i32 4, !dbg !2211
  %21 = load i32, ptr %buflen28, align 4, !dbg !2212
  %add = add i32 %21, %19, !dbg !2212
  store i32 %add, ptr %buflen28, align 4, !dbg !2212
  store i32 0, ptr %retval, align 4, !dbg !2213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2213

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !2214
  %22 = load i32, ptr %retval, align 4, !dbg !2214
  ret i32 %22, !dbg !2214
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !2215 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2222, metadata !DIExpression()), !dbg !2223
  br label %do.body, !dbg !2224

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2226

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2224
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2224
  %1 = load volatile ptr, ptr %next, align 8, !dbg !2224
  store ptr %1, ptr %tmp, align 8, !dbg !2226
  %2 = load ptr, ptr %tmp, align 8, !dbg !2224
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2228
  %cmp = icmp eq ptr %2, %3, !dbg !2229
  %conv = zext i1 %cmp to i32, !dbg !2229
  ret i32 %conv, !dbg !2230
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2231 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_of_modalias(ptr noundef %acpi_dev, ptr noundef %modalias, i32 noundef %size) #0 align 16 !dbg !2234 {
entry:
  %retval = alloca i32, align 4
  %acpi_dev.addr = alloca ptr, align 8
  %modalias.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %buf = alloca %struct.acpi_buffer, align 8
  %of_compatible = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %nval = alloca i32, align 4
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %acpi_dev, ptr %acpi_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acpi_dev.addr, metadata !2238, metadata !DIExpression()), !dbg !2254
  store ptr %modalias, ptr %modalias.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %modalias.addr, metadata !2239, metadata !DIExpression()), !dbg !2255
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2240, metadata !DIExpression()), !dbg !2256
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #6, !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2241, metadata !DIExpression()), !dbg !2258
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buf, ptr align 8 @__const.create_of_modalias.buf, i64 16, i1 false), !dbg !2258
  call void @llvm.lifetime.start.p0(i64 8, ptr %of_compatible) #6, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %of_compatible, metadata !2246, metadata !DIExpression()), !dbg !2260
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #6, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !2247, metadata !DIExpression()), !dbg !2261
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2262
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2248, metadata !DIExpression()), !dbg !2263
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2249, metadata !DIExpression()), !dbg !2265
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2250, metadata !DIExpression()), !dbg !2266
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2251, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.start.p0(i64 4, ptr %nval) #6, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %nval, metadata !2252, metadata !DIExpression()), !dbg !2269
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2253, metadata !DIExpression()), !dbg !2271
  %0 = load ptr, ptr %acpi_dev.addr, align 8, !dbg !2272
  %handle = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 2, !dbg !2273
  %1 = load ptr, ptr %handle, align 8, !dbg !2273
  %call = call i32 @acpi_get_name(ptr noundef %1, i32 noundef 1, ptr noundef %buf) #7, !dbg !2274
  store i32 %call, ptr %status, align 4, !dbg !2275
  %2 = load i32, ptr %status, align 4, !dbg !2276
  %tobool = icmp ne i32 %2, 0, !dbg !2276
  br i1 %tobool, label %if.then, label %if.end, !dbg !2278

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2279

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2280
  %3 = load ptr, ptr %pointer, align 8, !dbg !2280
  store ptr %3, ptr %c, align 8, !dbg !2282
  br label %for.cond, !dbg !2283

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %c, align 8, !dbg !2284
  %5 = load i8, ptr %4, align 1, !dbg !2286
  %conv = zext i8 %5 to i32, !dbg !2286
  %cmp = icmp ne i32 %conv, 0, !dbg !2287
  br i1 %cmp, label %for.body, label %for.end, !dbg !2288

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %c, align 8, !dbg !2289
  %7 = load i8, ptr %6, align 1, !dbg !2289
  %call2 = call zeroext i8 @__tolower(i8 noundef zeroext %7) #7, !dbg !2289
  %8 = load ptr, ptr %c, align 8, !dbg !2290
  store i8 %call2, ptr %8, align 1, !dbg !2291
  br label %for.inc, !dbg !2292

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %c, align 8, !dbg !2293
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !2293
  store ptr %incdec.ptr, ptr %c, align 8, !dbg !2293
  br label %for.cond, !dbg !2294, !llvm.loop !2295

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %modalias.addr, align 8, !dbg !2299
  %11 = load i32, ptr %size.addr, align 4, !dbg !2300
  %conv3 = sext i32 %11 to i64, !dbg !2300
  %pointer4 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2301
  %12 = load ptr, ptr %pointer4, align 8, !dbg !2301
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %10, i64 noundef %conv3, ptr noundef @.str.6, ptr noundef %12) #7, !dbg !2302
  store i32 %call5, ptr %len, align 4, !dbg !2303
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, ptr %buf, i32 0, i32 1, !dbg !2304
  %13 = load ptr, ptr %pointer6, align 8, !dbg !2304
  call void @acpi_os_free(ptr noundef %13) #7, !dbg !2304
  %14 = load i32, ptr %len, align 4, !dbg !2305
  %15 = load i32, ptr %size.addr, align 4, !dbg !2307
  %cmp7 = icmp sge i32 %14, %15, !dbg !2308
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !2309

if.then9:                                         ; preds = %for.end
  store i32 -12, ptr %retval, align 4, !dbg !2310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2310

if.end10:                                         ; preds = %for.end
  %16 = load i32, ptr %len, align 4, !dbg !2311
  %17 = load i32, ptr %size.addr, align 4, !dbg !2312
  %sub = sub i32 %17, %16, !dbg !2312
  store i32 %sub, ptr %size.addr, align 4, !dbg !2312
  %18 = load ptr, ptr %acpi_dev.addr, align 8, !dbg !2313
  %data = getelementptr inbounds %struct.acpi_device, ptr %18, i32 0, i32 13, !dbg !2314
  %of_compatible11 = getelementptr inbounds %struct.acpi_device_data, ptr %data, i32 0, i32 2, !dbg !2315
  %19 = load ptr, ptr %of_compatible11, align 8, !dbg !2315
  store ptr %19, ptr %of_compatible, align 8, !dbg !2316
  %20 = load ptr, ptr %of_compatible, align 8, !dbg !2317
  %21 = load i32, ptr %20, align 8, !dbg !2319
  %cmp12 = icmp eq i32 %21, 4, !dbg !2320
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !2321

if.then14:                                        ; preds = %if.end10
  %22 = load ptr, ptr %of_compatible, align 8, !dbg !2322
  %count15 = getelementptr inbounds %struct.anon.7, ptr %22, i32 0, i32 1, !dbg !2324
  %23 = load i32, ptr %count15, align 4, !dbg !2324
  store i32 %23, ptr %nval, align 4, !dbg !2325
  %24 = load ptr, ptr %of_compatible, align 8, !dbg !2326
  %elements = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 2, !dbg !2327
  %25 = load ptr, ptr %elements, align 8, !dbg !2327
  store ptr %25, ptr %obj, align 8, !dbg !2328
  br label %if.end16, !dbg !2329

if.else:                                          ; preds = %if.end10
  store i32 1, ptr %nval, align 4, !dbg !2330
  %26 = load ptr, ptr %of_compatible, align 8, !dbg !2332
  store ptr %26, ptr %obj, align 8, !dbg !2333
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  store i32 0, ptr %i, align 4, !dbg !2334
  br label %for.cond17, !dbg !2336

for.cond17:                                       ; preds = %for.inc33, %if.end16
  %27 = load i32, ptr %i, align 4, !dbg !2337
  %28 = load i32, ptr %nval, align 4, !dbg !2339
  %cmp18 = icmp slt i32 %27, %28, !dbg !2340
  br i1 %cmp18, label %for.body20, label %for.end35, !dbg !2341

for.body20:                                       ; preds = %for.cond17
  %29 = load ptr, ptr %modalias.addr, align 8, !dbg !2342
  %30 = load i32, ptr %len, align 4, !dbg !2344
  %idxprom = sext i32 %30 to i64, !dbg !2342
  %arrayidx = getelementptr i8, ptr %29, i64 %idxprom, !dbg !2342
  %31 = load i32, ptr %size.addr, align 4, !dbg !2345
  %conv21 = sext i32 %31 to i64, !dbg !2345
  %32 = load ptr, ptr %obj, align 8, !dbg !2346
  %pointer22 = getelementptr inbounds %struct.anon.5, ptr %32, i32 0, i32 2, !dbg !2347
  %33 = load ptr, ptr %pointer22, align 8, !dbg !2347
  %call23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx, i64 noundef %conv21, ptr noundef @.str.7, ptr noundef %33) #7, !dbg !2348
  store i32 %call23, ptr %count, align 4, !dbg !2349
  %34 = load i32, ptr %count, align 4, !dbg !2350
  %cmp24 = icmp slt i32 %34, 0, !dbg !2352
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2353

if.then26:                                        ; preds = %for.body20
  store i32 -22, ptr %retval, align 4, !dbg !2354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2354

if.end27:                                         ; preds = %for.body20
  %35 = load i32, ptr %count, align 4, !dbg !2355
  %36 = load i32, ptr %size.addr, align 4, !dbg !2357
  %cmp28 = icmp sge i32 %35, %36, !dbg !2358
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !2359

if.then30:                                        ; preds = %if.end27
  store i32 -12, ptr %retval, align 4, !dbg !2360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2360

if.end31:                                         ; preds = %if.end27
  %37 = load i32, ptr %count, align 4, !dbg !2361
  %38 = load i32, ptr %len, align 4, !dbg !2362
  %add = add i32 %38, %37, !dbg !2362
  store i32 %add, ptr %len, align 4, !dbg !2362
  %39 = load i32, ptr %count, align 4, !dbg !2363
  %40 = load i32, ptr %size.addr, align 4, !dbg !2364
  %sub32 = sub i32 %40, %39, !dbg !2364
  store i32 %sub32, ptr %size.addr, align 4, !dbg !2364
  br label %for.inc33, !dbg !2365

for.inc33:                                        ; preds = %if.end31
  %41 = load i32, ptr %i, align 4, !dbg !2366
  %inc = add i32 %41, 1, !dbg !2366
  store i32 %inc, ptr %i, align 4, !dbg !2366
  %42 = load ptr, ptr %obj, align 8, !dbg !2367
  %incdec.ptr34 = getelementptr %union.acpi_object, ptr %42, i32 1, !dbg !2367
  store ptr %incdec.ptr34, ptr %obj, align 8, !dbg !2367
  br label %for.cond17, !dbg !2368, !llvm.loop !2369

for.end35:                                        ; preds = %for.cond17
  %43 = load ptr, ptr %modalias.addr, align 8, !dbg !2371
  %44 = load i32, ptr %len, align 4, !dbg !2372
  %idxprom36 = sext i32 %44 to i64, !dbg !2371
  %arrayidx37 = getelementptr i8, ptr %43, i64 %idxprom36, !dbg !2371
  store i8 0, ptr %arrayidx37, align 1, !dbg !2373
  %45 = load i32, ptr %len, align 4, !dbg !2374
  store i32 %45, ptr %retval, align 4, !dbg !2375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2375

cleanup:                                          ; preds = %for.end35, %if.then30, %if.then26, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 4, ptr %nval) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 8, ptr %of_compatible) #6, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #6, !dbg !2376
  %46 = load i32, ptr %retval, align 4, !dbg !2376
  ret i32 %46, !dbg !2376
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_pnp_modalias(ptr noundef %acpi_dev, ptr noundef %modalias, i32 noundef %size) #0 align 16 !dbg !2377 {
entry:
  %retval = alloca i32, align 4
  %acpi_dev.addr = alloca ptr, align 8
  %modalias.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %id = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  %__mptr52 = alloca ptr, align 8
  %tmp55 = alloca ptr, align 8
  store ptr %acpi_dev, ptr %acpi_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acpi_dev.addr, metadata !2379, metadata !DIExpression()), !dbg !2397
  store ptr %modalias, ptr %modalias.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %modalias.addr, metadata !2380, metadata !DIExpression()), !dbg !2398
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2381, metadata !DIExpression()), !dbg !2399
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2382, metadata !DIExpression()), !dbg !2401
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2383, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #6, !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %id, metadata !2384, metadata !DIExpression()), !dbg !2405
  %0 = load ptr, ptr %acpi_dev.addr, align 8, !dbg !2406
  %call = call zeroext i1 @acpi_device_is_present(ptr noundef %0) #7, !dbg !2408
  br i1 %call, label %if.end, label %if.then, !dbg !2409

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2410

if.end:                                           ; preds = %entry
  store i32 0, ptr %count, align 4, !dbg !2411
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !2412
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2385, metadata !DIExpression()), !dbg !2412
  %1 = load ptr, ptr %acpi_dev.addr, align 8, !dbg !2412
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 8, !dbg !2412
  %ids = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 5, !dbg !2412
  %next = getelementptr inbounds %struct.list_head, ptr %ids, i32 0, i32 0, !dbg !2412
  %2 = load ptr, ptr %next, align 8, !dbg !2412
  store ptr %2, ptr %__mptr, align 8, !dbg !2412
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2412
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !2412
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !2413
  %4 = load ptr, ptr %tmp, align 8, !dbg !2412
  store ptr %4, ptr %id, align 8, !dbg !2413
  br label %for.cond, !dbg !2413

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %id, align 8, !dbg !2414
  %list = getelementptr inbounds %struct.acpi_hardware_id, ptr %5, i32 0, i32 0, !dbg !2414
  %6 = load ptr, ptr %acpi_dev.addr, align 8, !dbg !2414
  %pnp1 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 8, !dbg !2414
  %ids2 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp1, i32 0, i32 5, !dbg !2414
  %cmp = icmp eq ptr %list, %ids2, !dbg !2414
  %lnot = xor i1 %cmp, true, !dbg !2414
  br i1 %lnot, label %for.body, label %for.end, !dbg !2413

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %id, align 8, !dbg !2415
  %id3 = getelementptr inbounds %struct.acpi_hardware_id, ptr %7, i32 0, i32 1, !dbg !2417
  %8 = load ptr, ptr %id3, align 8, !dbg !2417
  %call4 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.8) #7, !dbg !2418
  %tobool = icmp ne i32 %call4, 0, !dbg !2418
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2419

if.then5:                                         ; preds = %for.body
  %9 = load i32, ptr %count, align 4, !dbg !2420
  %inc = add i32 %9, 1, !dbg !2420
  store i32 %inc, ptr %count, align 4, !dbg !2420
  br label %if.end6, !dbg !2421

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !2422

for.inc:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #6, !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !2388, metadata !DIExpression()), !dbg !2423
  %10 = load ptr, ptr %id, align 8, !dbg !2423
  %list8 = getelementptr inbounds %struct.acpi_hardware_id, ptr %10, i32 0, i32 0, !dbg !2423
  %next9 = getelementptr inbounds %struct.list_head, ptr %list8, i32 0, i32 0, !dbg !2423
  %11 = load ptr, ptr %next9, align 8, !dbg !2423
  store ptr %11, ptr %__mptr7, align 8, !dbg !2423
  %12 = load ptr, ptr %__mptr7, align 8, !dbg !2423
  %add.ptr11 = getelementptr i8, ptr %12, i64 0, !dbg !2423
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #6, !dbg !2414
  %13 = load ptr, ptr %tmp10, align 8, !dbg !2423
  store ptr %13, ptr %id, align 8, !dbg !2414
  br label %for.cond, !dbg !2414, !llvm.loop !2424

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %count, align 4, !dbg !2426
  %tobool12 = icmp ne i32 %14, 0, !dbg !2426
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2428

if.then13:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !2429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2429

if.end14:                                         ; preds = %for.end
  %15 = load ptr, ptr %modalias.addr, align 8, !dbg !2430
  %16 = load i32, ptr %size.addr, align 4, !dbg !2431
  %conv = sext i32 %16 to i64, !dbg !2431
  %call15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef %conv, ptr noundef @.str.9) #7, !dbg !2432
  store i32 %call15, ptr %len, align 4, !dbg !2433
  %17 = load i32, ptr %len, align 4, !dbg !2434
  %18 = load i32, ptr %size.addr, align 4, !dbg !2436
  %cmp16 = icmp sge i32 %17, %18, !dbg !2437
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2438

if.then18:                                        ; preds = %if.end14
  store i32 -12, ptr %retval, align 4, !dbg !2439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2439

if.end19:                                         ; preds = %if.end14
  %19 = load i32, ptr %len, align 4, !dbg !2440
  %20 = load i32, ptr %size.addr, align 4, !dbg !2441
  %sub = sub i32 %20, %19, !dbg !2441
  store i32 %sub, ptr %size.addr, align 4, !dbg !2441
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #6, !dbg !2442
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !2391, metadata !DIExpression()), !dbg !2442
  %21 = load ptr, ptr %acpi_dev.addr, align 8, !dbg !2442
  %pnp21 = getelementptr inbounds %struct.acpi_device, ptr %21, i32 0, i32 8, !dbg !2442
  %ids22 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp21, i32 0, i32 5, !dbg !2442
  %next23 = getelementptr inbounds %struct.list_head, ptr %ids22, i32 0, i32 0, !dbg !2442
  %22 = load ptr, ptr %next23, align 8, !dbg !2442
  store ptr %22, ptr %__mptr20, align 8, !dbg !2442
  %23 = load ptr, ptr %__mptr20, align 8, !dbg !2442
  %add.ptr25 = getelementptr i8, ptr %23, i64 0, !dbg !2442
  store ptr %add.ptr25, ptr %tmp24, align 8, !dbg !2442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #6, !dbg !2443
  %24 = load ptr, ptr %tmp24, align 8, !dbg !2442
  store ptr %24, ptr %id, align 8, !dbg !2443
  br label %for.cond26, !dbg !2443

for.cond26:                                       ; preds = %for.inc51, %if.end19
  %25 = load ptr, ptr %id, align 8, !dbg !2444
  %list27 = getelementptr inbounds %struct.acpi_hardware_id, ptr %25, i32 0, i32 0, !dbg !2444
  %26 = load ptr, ptr %acpi_dev.addr, align 8, !dbg !2444
  %pnp28 = getelementptr inbounds %struct.acpi_device, ptr %26, i32 0, i32 8, !dbg !2444
  %ids29 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp28, i32 0, i32 5, !dbg !2444
  %cmp30 = icmp eq ptr %list27, %ids29, !dbg !2444
  %lnot32 = xor i1 %cmp30, true, !dbg !2444
  br i1 %lnot32, label %for.body33, label %for.end57, !dbg !2443

for.body33:                                       ; preds = %for.cond26
  %27 = load ptr, ptr %id, align 8, !dbg !2445
  %id34 = getelementptr inbounds %struct.acpi_hardware_id, ptr %27, i32 0, i32 1, !dbg !2448
  %28 = load ptr, ptr %id34, align 8, !dbg !2448
  %call35 = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.8) #7, !dbg !2449
  %tobool36 = icmp ne i32 %call35, 0, !dbg !2449
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2450

if.then37:                                        ; preds = %for.body33
  br label %for.inc51, !dbg !2451

if.end38:                                         ; preds = %for.body33
  %29 = load ptr, ptr %modalias.addr, align 8, !dbg !2452
  %30 = load i32, ptr %len, align 4, !dbg !2453
  %idxprom = sext i32 %30 to i64, !dbg !2452
  %arrayidx = getelementptr i8, ptr %29, i64 %idxprom, !dbg !2452
  %31 = load i32, ptr %size.addr, align 4, !dbg !2454
  %conv39 = sext i32 %31 to i64, !dbg !2454
  %32 = load ptr, ptr %id, align 8, !dbg !2455
  %id40 = getelementptr inbounds %struct.acpi_hardware_id, ptr %32, i32 0, i32 1, !dbg !2456
  %33 = load ptr, ptr %id40, align 8, !dbg !2456
  %call41 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arrayidx, i64 noundef %conv39, ptr noundef @.str.10, ptr noundef %33) #7, !dbg !2457
  store i32 %call41, ptr %count, align 4, !dbg !2458
  %34 = load i32, ptr %count, align 4, !dbg !2459
  %cmp42 = icmp slt i32 %34, 0, !dbg !2461
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !2462

if.then44:                                        ; preds = %if.end38
  store i32 -22, ptr %retval, align 4, !dbg !2463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2463

if.end45:                                         ; preds = %if.end38
  %35 = load i32, ptr %count, align 4, !dbg !2464
  %36 = load i32, ptr %size.addr, align 4, !dbg !2466
  %cmp46 = icmp sge i32 %35, %36, !dbg !2467
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !2468

if.then48:                                        ; preds = %if.end45
  store i32 -12, ptr %retval, align 4, !dbg !2469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2469

if.end49:                                         ; preds = %if.end45
  %37 = load i32, ptr %count, align 4, !dbg !2470
  %38 = load i32, ptr %len, align 4, !dbg !2471
  %add = add i32 %38, %37, !dbg !2471
  store i32 %add, ptr %len, align 4, !dbg !2471
  %39 = load i32, ptr %count, align 4, !dbg !2472
  %40 = load i32, ptr %size.addr, align 4, !dbg !2473
  %sub50 = sub i32 %40, %39, !dbg !2473
  store i32 %sub50, ptr %size.addr, align 4, !dbg !2473
  br label %for.inc51, !dbg !2474

for.inc51:                                        ; preds = %if.end49, %if.then37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr52) #6, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %__mptr52, metadata !2394, metadata !DIExpression()), !dbg !2475
  %41 = load ptr, ptr %id, align 8, !dbg !2475
  %list53 = getelementptr inbounds %struct.acpi_hardware_id, ptr %41, i32 0, i32 0, !dbg !2475
  %next54 = getelementptr inbounds %struct.list_head, ptr %list53, i32 0, i32 0, !dbg !2475
  %42 = load ptr, ptr %next54, align 8, !dbg !2475
  store ptr %42, ptr %__mptr52, align 8, !dbg !2475
  %43 = load ptr, ptr %__mptr52, align 8, !dbg !2475
  %add.ptr56 = getelementptr i8, ptr %43, i64 0, !dbg !2475
  store ptr %add.ptr56, ptr %tmp55, align 8, !dbg !2475
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr52) #6, !dbg !2444
  %44 = load ptr, ptr %tmp55, align 8, !dbg !2475
  store ptr %44, ptr %id, align 8, !dbg !2444
  br label %for.cond26, !dbg !2444, !llvm.loop !2476

for.end57:                                        ; preds = %for.cond26
  %45 = load ptr, ptr %modalias.addr, align 8, !dbg !2478
  %46 = load i32, ptr %len, align 4, !dbg !2479
  %idxprom58 = sext i32 %46 to i64, !dbg !2478
  %arrayidx59 = getelementptr i8, ptr %45, i64 %idxprom58, !dbg !2478
  store i8 0, ptr %arrayidx59, align 1, !dbg !2480
  %47 = load i32, ptr %len, align 4, !dbg !2481
  store i32 %47, ptr %retval, align 4, !dbg !2482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2482

cleanup:                                          ; preds = %for.end57, %if.then48, %if.then44, %if.then18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #6, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !2483
  %48 = load i32, ptr %retval, align 4, !dbg !2483
  ret i32 %48, !dbg !2483
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_device_uevent_modalias(ptr noundef %dev, ptr noundef %env) #0 align 16 !dbg !2484 {
entry:
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2486, metadata !DIExpression()), !dbg !2488
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !2487, metadata !DIExpression()), !dbg !2489
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2490
  %call = call ptr @acpi_companion_match(ptr noundef %0) #7, !dbg !2491
  %1 = load ptr, ptr %env.addr, align 8, !dbg !2492
  %call1 = call i32 @__acpi_device_uevent_modalias(ptr noundef %call, ptr noundef %1) #7, !dbg !2493
  ret i32 %call1, !dbg !2494
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2495 dso_local ptr @acpi_companion_match(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_device_modalias(ptr noundef %dev, ptr noundef %buf, i32 noundef %size) #0 align 16 !dbg !2499 {
entry:
  %dev.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2503, metadata !DIExpression()), !dbg !2506
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2504, metadata !DIExpression()), !dbg !2507
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2505, metadata !DIExpression()), !dbg !2508
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2509
  %call = call ptr @acpi_companion_match(ptr noundef %0) #7, !dbg !2510
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2511
  %2 = load i32, ptr %size.addr, align 4, !dbg !2512
  %call1 = call i32 @__acpi_device_modalias(ptr noundef %call, ptr noundef %1, i32 noundef %2) #7, !dbg !2513
  ret i32 %call1, !dbg !2514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__acpi_device_modalias(ptr noundef %adev, ptr noundef %buf, i32 noundef %size) #0 align 16 !dbg !2515 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2517, metadata !DIExpression()), !dbg !2522
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2518, metadata !DIExpression()), !dbg !2523
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2519, metadata !DIExpression()), !dbg !2524
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !2525
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2520, metadata !DIExpression()), !dbg !2526
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !2525
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2521, metadata !DIExpression()), !dbg !2527
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2528
  %tobool = icmp ne ptr %0, null, !dbg !2528
  br i1 %tobool, label %if.end, label %if.then, !dbg !2530

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2531

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2532
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 8, !dbg !2534
  %ids = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 5, !dbg !2535
  %call = call i32 @list_empty(ptr noundef %ids) #7, !dbg !2536
  %tobool1 = icmp ne i32 %call, 0, !dbg !2536
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2537

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2538

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !2539
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2540
  %4 = load i32, ptr %size.addr, align 4, !dbg !2541
  %sub = sub i32 %4, 1, !dbg !2542
  %call4 = call i32 @create_pnp_modalias(ptr noundef %2, ptr noundef %3, i32 noundef %sub) #7, !dbg !2543
  store i32 %call4, ptr %len, align 4, !dbg !2544
  %5 = load i32, ptr %len, align 4, !dbg !2545
  %cmp = icmp slt i32 %5, 0, !dbg !2547
  br i1 %cmp, label %if.then5, label %if.else, !dbg !2548

if.then5:                                         ; preds = %if.end3
  %6 = load i32, ptr %len, align 4, !dbg !2549
  store i32 %6, ptr %retval, align 4, !dbg !2551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2551

if.else:                                          ; preds = %if.end3
  %7 = load i32, ptr %len, align 4, !dbg !2552
  %cmp6 = icmp sgt i32 %7, 0, !dbg !2554
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !2555

if.then7:                                         ; preds = %if.else
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2556
  %9 = load i32, ptr %len, align 4, !dbg !2558
  %inc = add i32 %9, 1, !dbg !2558
  store i32 %inc, ptr %len, align 4, !dbg !2558
  %idxprom = sext i32 %9 to i64, !dbg !2556
  %arrayidx = getelementptr i8, ptr %8, i64 %idxprom, !dbg !2556
  store i8 10, ptr %arrayidx, align 1, !dbg !2559
  %10 = load i32, ptr %len, align 4, !dbg !2560
  %11 = load i32, ptr %size.addr, align 4, !dbg !2561
  %sub8 = sub i32 %11, %10, !dbg !2561
  store i32 %sub8, ptr %size.addr, align 4, !dbg !2561
  br label %if.end9, !dbg !2562

if.end9:                                          ; preds = %if.then7, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  %12 = load ptr, ptr %adev.addr, align 8, !dbg !2563
  %data = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 13, !dbg !2565
  %of_compatible = getelementptr inbounds %struct.acpi_device_data, ptr %data, i32 0, i32 2, !dbg !2566
  %13 = load ptr, ptr %of_compatible, align 8, !dbg !2566
  %tobool11 = icmp ne ptr %13, null, !dbg !2563
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2567

if.then12:                                        ; preds = %if.end10
  %14 = load i32, ptr %len, align 4, !dbg !2568
  store i32 %14, ptr %retval, align 4, !dbg !2569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2569

if.end13:                                         ; preds = %if.end10
  %15 = load ptr, ptr %adev.addr, align 8, !dbg !2570
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !2571
  %17 = load i32, ptr %len, align 4, !dbg !2572
  %idx.ext = sext i32 %17 to i64, !dbg !2573
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !2573
  %18 = load i32, ptr %size.addr, align 4, !dbg !2574
  %sub14 = sub i32 %18, 1, !dbg !2575
  %call15 = call i32 @create_of_modalias(ptr noundef %15, ptr noundef %add.ptr, i32 noundef %sub14) #7, !dbg !2576
  store i32 %call15, ptr %count, align 4, !dbg !2577
  %19 = load i32, ptr %count, align 4, !dbg !2578
  %cmp16 = icmp slt i32 %19, 0, !dbg !2580
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !2581

if.then17:                                        ; preds = %if.end13
  %20 = load i32, ptr %count, align 4, !dbg !2582
  store i32 %20, ptr %retval, align 4, !dbg !2584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2584

if.else18:                                        ; preds = %if.end13
  %21 = load i32, ptr %count, align 4, !dbg !2585
  %cmp19 = icmp sgt i32 %21, 0, !dbg !2587
  br i1 %cmp19, label %if.then20, label %if.end24, !dbg !2588

if.then20:                                        ; preds = %if.else18
  %22 = load i32, ptr %count, align 4, !dbg !2589
  %23 = load i32, ptr %len, align 4, !dbg !2591
  %add = add i32 %23, %22, !dbg !2591
  store i32 %add, ptr %len, align 4, !dbg !2591
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !2592
  %25 = load i32, ptr %len, align 4, !dbg !2593
  %inc21 = add i32 %25, 1, !dbg !2593
  store i32 %inc21, ptr %len, align 4, !dbg !2593
  %idxprom22 = sext i32 %25 to i64, !dbg !2592
  %arrayidx23 = getelementptr i8, ptr %24, i64 %idxprom22, !dbg !2592
  store i8 10, ptr %arrayidx23, align 1, !dbg !2594
  br label %if.end24, !dbg !2595

if.end24:                                         ; preds = %if.then20, %if.else18
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %26 = load i32, ptr %len, align 4, !dbg !2596
  store i32 %26, ptr %retval, align 4, !dbg !2597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2597

cleanup:                                          ; preds = %if.end25, %if.then17, %if.then12, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !2598
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !2598
  %27 = load i32, ptr %retval, align 4, !dbg !2598
  ret i32 %27, !dbg !2598
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_device_setup_files(ptr noundef %dev) #0 align 16 !dbg !2599 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2601, metadata !DIExpression()), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #6, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2602, metadata !DIExpression()), !dbg !2608
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_device_setup_files.buffer, i64 16, i1 false), !dbg !2608
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !2609
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2603, metadata !DIExpression()), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #6, !dbg !2611
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2604, metadata !DIExpression()), !dbg !2612
  store i32 0, ptr %result, align 4, !dbg !2612
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2613
  %handle = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 2, !dbg !2615
  %1 = load ptr, ptr %handle, align 8, !dbg !2615
  %tobool = icmp ne ptr %1, null, !dbg !2613
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2616

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2617
  %dev1 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 18, !dbg !2619
  %call = call i32 @device_create_file(ptr noundef %dev1, ptr noundef @dev_attr_path) #7, !dbg !2620
  store i32 %call, ptr %result, align 4, !dbg !2621
  %3 = load i32, ptr %result, align 4, !dbg !2622
  %tobool2 = icmp ne i32 %3, 0, !dbg !2622
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2624

if.then3:                                         ; preds = %if.then
  br label %end, !dbg !2625

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2626

if.end4:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2627
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 8, !dbg !2629
  %ids = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 5, !dbg !2630
  %call5 = call i32 @list_empty(ptr noundef %ids) #7, !dbg !2631
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2631
  br i1 %tobool6, label %if.end18, label %if.then7, !dbg !2632

if.then7:                                         ; preds = %if.end4
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2633
  %dev8 = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 18, !dbg !2635
  %call9 = call i32 @device_create_file(ptr noundef %dev8, ptr noundef @dev_attr_hid) #7, !dbg !2636
  store i32 %call9, ptr %result, align 4, !dbg !2637
  %6 = load i32, ptr %result, align 4, !dbg !2638
  %tobool10 = icmp ne i32 %6, 0, !dbg !2638
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2640

if.then11:                                        ; preds = %if.then7
  br label %end, !dbg !2641

if.end12:                                         ; preds = %if.then7
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2642
  %dev13 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 18, !dbg !2643
  %call14 = call i32 @device_create_file(ptr noundef %dev13, ptr noundef @dev_attr_modalias) #7, !dbg !2644
  store i32 %call14, ptr %result, align 4, !dbg !2645
  %8 = load i32, ptr %result, align 4, !dbg !2646
  %tobool15 = icmp ne i32 %8, 0, !dbg !2646
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2648

if.then16:                                        ; preds = %if.end12
  br label %end, !dbg !2649

if.end17:                                         ; preds = %if.end12
  br label %if.end18, !dbg !2650

if.end18:                                         ; preds = %if.end17, %if.end4
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2651
  %handle19 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 2, !dbg !2653
  %10 = load ptr, ptr %handle19, align 8, !dbg !2653
  %call20 = call zeroext i1 @acpi_has_method(ptr noundef %10, ptr noundef @.str.1) #7, !dbg !2654
  br i1 %call20, label %if.then21, label %if.end34, !dbg !2655

if.then21:                                        ; preds = %if.end18
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2656
  %handle22 = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 2, !dbg !2658
  %12 = load ptr, ptr %handle22, align 8, !dbg !2658
  %call23 = call i32 @acpi_evaluate_object_typed(ptr noundef %12, ptr noundef @.str.1, ptr noundef null, ptr noundef %buffer, i32 noundef 3) #7, !dbg !2659
  store i32 %call23, ptr %status, align 4, !dbg !2660
  %13 = load i32, ptr %status, align 4, !dbg !2661
  %tobool24 = icmp ne i32 %13, 0, !dbg !2661
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2663

if.then25:                                        ; preds = %if.then21
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2664
  store ptr null, ptr %pointer, align 8, !dbg !2665
  br label %if.end26, !dbg !2666

if.end26:                                         ; preds = %if.then25, %if.then21
  %pointer27 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2667
  %14 = load ptr, ptr %pointer27, align 8, !dbg !2667
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2668
  %pnp28 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 8, !dbg !2669
  %str_obj = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp28, i32 0, i32 8, !dbg !2670
  store ptr %14, ptr %str_obj, align 8, !dbg !2671
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2672
  %dev29 = getelementptr inbounds %struct.acpi_device, ptr %16, i32 0, i32 18, !dbg !2673
  %call30 = call i32 @device_create_file(ptr noundef %dev29, ptr noundef @dev_attr_description) #7, !dbg !2674
  store i32 %call30, ptr %result, align 4, !dbg !2675
  %17 = load i32, ptr %result, align 4, !dbg !2676
  %tobool31 = icmp ne i32 %17, 0, !dbg !2676
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2678

if.then32:                                        ; preds = %if.end26
  br label %end, !dbg !2679

if.end33:                                         ; preds = %if.end26
  br label %if.end34, !dbg !2680

if.end34:                                         ; preds = %if.end33, %if.end18
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !2681
  %pnp35 = getelementptr inbounds %struct.acpi_device, ptr %18, i32 0, i32 8, !dbg !2683
  %type = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp35, i32 0, i32 2, !dbg !2684
  %bf.load = load i32, ptr %type, align 4, !dbg !2685
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !2685
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2685
  %tobool36 = icmp ne i32 %bf.clear, 0, !dbg !2681
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !2686

if.then37:                                        ; preds = %if.end34
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !2687
  %dev38 = getelementptr inbounds %struct.acpi_device, ptr %19, i32 0, i32 18, !dbg !2688
  %call39 = call i32 @device_create_file(ptr noundef %dev38, ptr noundef @dev_attr_adr) #7, !dbg !2689
  store i32 %call39, ptr %result, align 4, !dbg !2690
  br label %if.end40, !dbg !2691

if.end40:                                         ; preds = %if.then37, %if.end34
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !2692
  %pnp41 = getelementptr inbounds %struct.acpi_device, ptr %20, i32 0, i32 8, !dbg !2694
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp41, i32 0, i32 4, !dbg !2695
  %21 = load ptr, ptr %unique_id, align 8, !dbg !2695
  %tobool42 = icmp ne ptr %21, null, !dbg !2692
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !2696

if.then43:                                        ; preds = %if.end40
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2697
  %dev44 = getelementptr inbounds %struct.acpi_device, ptr %22, i32 0, i32 18, !dbg !2698
  %call45 = call i32 @device_create_file(ptr noundef %dev44, ptr noundef @dev_attr_uid) #7, !dbg !2699
  store i32 %call45, ptr %result, align 4, !dbg !2700
  br label %if.end46, !dbg !2701

if.end46:                                         ; preds = %if.then43, %if.end40
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2702
  %handle47 = getelementptr inbounds %struct.acpi_device, ptr %23, i32 0, i32 2, !dbg !2704
  %24 = load ptr, ptr %handle47, align 8, !dbg !2704
  %call48 = call zeroext i1 @acpi_has_method(ptr noundef %24, ptr noundef @.str.2) #7, !dbg !2705
  br i1 %call48, label %if.then49, label %if.end55, !dbg !2706

if.then49:                                        ; preds = %if.end46
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2707
  %dev50 = getelementptr inbounds %struct.acpi_device, ptr %25, i32 0, i32 18, !dbg !2709
  %call51 = call i32 @device_create_file(ptr noundef %dev50, ptr noundef @dev_attr_sun) #7, !dbg !2710
  store i32 %call51, ptr %result, align 4, !dbg !2711
  %26 = load i32, ptr %result, align 4, !dbg !2712
  %tobool52 = icmp ne i32 %26, 0, !dbg !2712
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !2714

if.then53:                                        ; preds = %if.then49
  br label %end, !dbg !2715

if.end54:                                         ; preds = %if.then49
  br label %if.end55, !dbg !2716

if.end55:                                         ; preds = %if.end54, %if.end46
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !2717
  %handle56 = getelementptr inbounds %struct.acpi_device, ptr %27, i32 0, i32 2, !dbg !2719
  %28 = load ptr, ptr %handle56, align 8, !dbg !2719
  %call57 = call zeroext i1 @acpi_has_method(ptr noundef %28, ptr noundef @.str.3) #7, !dbg !2720
  br i1 %call57, label %if.then58, label %if.end64, !dbg !2721

if.then58:                                        ; preds = %if.end55
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !2722
  %dev59 = getelementptr inbounds %struct.acpi_device, ptr %29, i32 0, i32 18, !dbg !2724
  %call60 = call i32 @device_create_file(ptr noundef %dev59, ptr noundef @dev_attr_hrv) #7, !dbg !2725
  store i32 %call60, ptr %result, align 4, !dbg !2726
  %30 = load i32, ptr %result, align 4, !dbg !2727
  %tobool61 = icmp ne i32 %30, 0, !dbg !2727
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !2729

if.then62:                                        ; preds = %if.then58
  br label %end, !dbg !2730

if.end63:                                         ; preds = %if.then58
  br label %if.end64, !dbg !2731

if.end64:                                         ; preds = %if.end63, %if.end55
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !2732
  %handle65 = getelementptr inbounds %struct.acpi_device, ptr %31, i32 0, i32 2, !dbg !2734
  %32 = load ptr, ptr %handle65, align 8, !dbg !2734
  %call66 = call zeroext i1 @acpi_has_method(ptr noundef %32, ptr noundef @.str.4) #7, !dbg !2735
  br i1 %call66, label %if.then67, label %if.end73, !dbg !2736

if.then67:                                        ; preds = %if.end64
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !2737
  %dev68 = getelementptr inbounds %struct.acpi_device, ptr %33, i32 0, i32 18, !dbg !2739
  %call69 = call i32 @device_create_file(ptr noundef %dev68, ptr noundef @dev_attr_status) #7, !dbg !2740
  store i32 %call69, ptr %result, align 4, !dbg !2741
  %34 = load i32, ptr %result, align 4, !dbg !2742
  %tobool70 = icmp ne i32 %34, 0, !dbg !2742
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !2744

if.then71:                                        ; preds = %if.then67
  br label %end, !dbg !2745

if.end72:                                         ; preds = %if.then67
  br label %if.end73, !dbg !2746

if.end73:                                         ; preds = %if.end72, %if.end64
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !2747
  %handle74 = getelementptr inbounds %struct.acpi_device, ptr %35, i32 0, i32 2, !dbg !2749
  %36 = load ptr, ptr %handle74, align 8, !dbg !2749
  %call75 = call zeroext i1 @acpi_has_method(ptr noundef %36, ptr noundef @.str.5) #7, !dbg !2750
  br i1 %call75, label %if.then76, label %if.end82, !dbg !2751

if.then76:                                        ; preds = %if.end73
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !2752
  %dev77 = getelementptr inbounds %struct.acpi_device, ptr %37, i32 0, i32 18, !dbg !2754
  %call78 = call i32 @device_create_file(ptr noundef %dev77, ptr noundef @dev_attr_eject) #7, !dbg !2755
  store i32 %call78, ptr %result, align 4, !dbg !2756
  %38 = load i32, ptr %result, align 4, !dbg !2757
  %tobool79 = icmp ne i32 %38, 0, !dbg !2757
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !2759

if.then80:                                        ; preds = %if.then76
  %39 = load i32, ptr %result, align 4, !dbg !2760
  store i32 %39, ptr %retval, align 4, !dbg !2761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2761

if.end81:                                         ; preds = %if.then76
  br label %if.end82, !dbg !2762

if.end82:                                         ; preds = %if.end81, %if.end73
  %40 = load ptr, ptr %dev.addr, align 8, !dbg !2763
  %flags = getelementptr inbounds %struct.acpi_device, ptr %40, i32 0, i32 7, !dbg !2765
  %bf.load83 = load i32, ptr %flags, align 4, !dbg !2766
  %bf.lshr84 = lshr i32 %bf.load83, 3, !dbg !2766
  %bf.clear85 = and i32 %bf.lshr84, 1, !dbg !2766
  %tobool86 = icmp ne i32 %bf.clear85, 0, !dbg !2763
  br i1 %tobool86, label %if.then87, label %if.end102, !dbg !2767

if.then87:                                        ; preds = %if.end82
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !2768
  %dev88 = getelementptr inbounds %struct.acpi_device, ptr %41, i32 0, i32 18, !dbg !2770
  %call89 = call i32 @device_create_file(ptr noundef %dev88, ptr noundef @dev_attr_power_state) #7, !dbg !2771
  store i32 %call89, ptr %result, align 4, !dbg !2772
  %42 = load i32, ptr %result, align 4, !dbg !2773
  %tobool90 = icmp ne i32 %42, 0, !dbg !2773
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !2775

if.then91:                                        ; preds = %if.then87
  %43 = load i32, ptr %result, align 4, !dbg !2776
  store i32 %43, ptr %retval, align 4, !dbg !2777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2777

if.end92:                                         ; preds = %if.then87
  %44 = load ptr, ptr %dev.addr, align 8, !dbg !2778
  %power = getelementptr inbounds %struct.acpi_device, ptr %44, i32 0, i32 9, !dbg !2780
  %flags93 = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 1, !dbg !2781
  %bf.load94 = load i32, ptr %flags93, align 4, !dbg !2782
  %bf.lshr95 = lshr i32 %bf.load94, 1, !dbg !2782
  %bf.clear96 = and i32 %bf.lshr95, 1, !dbg !2782
  %tobool97 = icmp ne i32 %bf.clear96, 0, !dbg !2778
  br i1 %tobool97, label %if.then98, label %if.end101, !dbg !2783

if.then98:                                        ; preds = %if.end92
  %45 = load ptr, ptr %dev.addr, align 8, !dbg !2784
  %dev99 = getelementptr inbounds %struct.acpi_device, ptr %45, i32 0, i32 18, !dbg !2785
  %call100 = call i32 @device_create_file(ptr noundef %dev99, ptr noundef @dev_attr_real_power_state) #7, !dbg !2786
  store i32 %call100, ptr %result, align 4, !dbg !2787
  br label %if.end101, !dbg !2788

if.end101:                                        ; preds = %if.then98, %if.end92
  br label %if.end102, !dbg !2789

if.end102:                                        ; preds = %if.end101, %if.end82
  %46 = load ptr, ptr %dev.addr, align 8, !dbg !2790
  %dev103 = getelementptr inbounds %struct.acpi_device, ptr %46, i32 0, i32 18, !dbg !2791
  %kobj = getelementptr inbounds %struct.device, ptr %dev103, i32 0, i32 0, !dbg !2792
  %47 = load ptr, ptr %dev.addr, align 8, !dbg !2793
  %data = getelementptr inbounds %struct.acpi_device, ptr %47, i32 0, i32 13, !dbg !2794
  call void @acpi_expose_nondev_subnodes(ptr noundef %kobj, ptr noundef %data) #7, !dbg !2795
  br label %end, !dbg !2795

end:                                              ; preds = %if.end102, %if.then71, %if.then62, %if.then53, %if.then32, %if.then16, %if.then11, %if.then3
  call void @llvm.dbg.label(metadata !2605), !dbg !2796
  %48 = load i32, ptr %result, align 4, !dbg !2797
  store i32 %48, ptr %retval, align 4, !dbg !2798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2798

cleanup:                                          ; preds = %end, %if.then91, %if.then80
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #6, !dbg !2799
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !2799
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #6, !dbg !2799
  %49 = load i32, ptr %retval, align 4, !dbg !2799
  ret i32 %49, !dbg !2799
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2800 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2805 dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2808 dso_local i32 @acpi_evaluate_object_typed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_expose_nondev_subnodes(ptr noundef %kobj, ptr noundef %data) #0 align 16 !dbg !2819 {
entry:
  %kobj.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2824, metadata !DIExpression()), !dbg !2836
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2825, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #6, !dbg !2838
  call void @llvm.dbg.declare(metadata ptr %list, metadata !2826, metadata !DIExpression()), !dbg !2839
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2840
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %0, i32 0, i32 3, !dbg !2841
  store ptr %subnodes, ptr %list, align 8, !dbg !2839
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #6, !dbg !2842
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !2827, metadata !DIExpression()), !dbg !2843
  %1 = load ptr, ptr %list, align 8, !dbg !2844
  %call = call i32 @list_empty(ptr noundef %1) #7, !dbg !2846
  %tobool = icmp ne i32 %call, 0, !dbg !2846
  br i1 %tobool, label %if.then, label %if.end, !dbg !2847

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2848

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !2849
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2828, metadata !DIExpression()), !dbg !2849
  %2 = load ptr, ptr %list, align 8, !dbg !2849
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !2849
  %3 = load ptr, ptr %next, align 8, !dbg !2849
  store ptr %3, ptr %__mptr, align 8, !dbg !2849
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2849
  %add.ptr = getelementptr i8, ptr %4, i64 -136, !dbg !2849
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !2850
  %5 = load ptr, ptr %tmp, align 8, !dbg !2849
  store ptr %5, ptr %dn, align 8, !dbg !2850
  br label %for.cond, !dbg !2850

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %dn, align 8, !dbg !2851
  %sibling = getelementptr inbounds %struct.acpi_data_node, ptr %6, i32 0, i32 5, !dbg !2851
  %7 = load ptr, ptr %list, align 8, !dbg !2851
  %cmp = icmp eq ptr %sibling, %7, !dbg !2851
  %lnot = xor i1 %cmp, true, !dbg !2851
  br i1 %lnot, label %for.body, label %for.end, !dbg !2850

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2831, metadata !DIExpression()), !dbg !2853
  %8 = load ptr, ptr %dn, align 8, !dbg !2854
  %kobj_done = getelementptr inbounds %struct.acpi_data_node, ptr %8, i32 0, i32 7, !dbg !2855
  call void @init_completion(ptr noundef %kobj_done) #7, !dbg !2856
  %9 = load ptr, ptr %dn, align 8, !dbg !2857
  %kobj1 = getelementptr inbounds %struct.acpi_data_node, ptr %9, i32 0, i32 6, !dbg !2858
  %10 = load ptr, ptr %kobj.addr, align 8, !dbg !2859
  %11 = load ptr, ptr %dn, align 8, !dbg !2860
  %name = getelementptr inbounds %struct.acpi_data_node, ptr %11, i32 0, i32 0, !dbg !2861
  %12 = load ptr, ptr %name, align 8, !dbg !2861
  %call2 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj1, ptr noundef @acpi_data_node_ktype, ptr noundef %10, ptr noundef @.str.27, ptr noundef %12) #7, !dbg !2862
  store i32 %call2, ptr %ret, align 4, !dbg !2863
  %13 = load i32, ptr %ret, align 4, !dbg !2864
  %tobool3 = icmp ne i32 %13, 0, !dbg !2864
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !2866

if.then4:                                         ; preds = %for.body
  %14 = load ptr, ptr %dn, align 8, !dbg !2867
  %kobj5 = getelementptr inbounds %struct.acpi_data_node, ptr %14, i32 0, i32 6, !dbg !2868
  %15 = load ptr, ptr %dn, align 8, !dbg !2869
  %data6 = getelementptr inbounds %struct.acpi_data_node, ptr %15, i32 0, i32 4, !dbg !2870
  call void @acpi_expose_nondev_subnodes(ptr noundef %kobj5, ptr noundef %data6) #7, !dbg !2871
  br label %if.end11, !dbg !2871

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %dn, align 8, !dbg !2872
  %handle = getelementptr inbounds %struct.acpi_data_node, ptr %16, i32 0, i32 1, !dbg !2874
  %17 = load ptr, ptr %handle, align 8, !dbg !2874
  %tobool7 = icmp ne ptr %17, null, !dbg !2872
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !2875

if.then8:                                         ; preds = %if.else
  %18 = load ptr, ptr %dn, align 8, !dbg !2876
  %handle9 = getelementptr inbounds %struct.acpi_data_node, ptr %18, i32 0, i32 1, !dbg !2876
  %19 = load ptr, ptr %handle9, align 8, !dbg !2876
  %20 = load i32, ptr %ret, align 4, !dbg !2876
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.28, ptr noundef %19, ptr noundef @.str.29, i32 noundef %20) #7, !dbg !2876
  br label %if.end10, !dbg !2876

if.end10:                                         ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !2877
  br label %for.inc, !dbg !2878

for.inc:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #6, !dbg !2879
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !2834, metadata !DIExpression()), !dbg !2879
  %21 = load ptr, ptr %dn, align 8, !dbg !2879
  %sibling13 = getelementptr inbounds %struct.acpi_data_node, ptr %21, i32 0, i32 5, !dbg !2879
  %next14 = getelementptr inbounds %struct.list_head, ptr %sibling13, i32 0, i32 0, !dbg !2879
  %22 = load ptr, ptr %next14, align 8, !dbg !2879
  store ptr %22, ptr %__mptr12, align 8, !dbg !2879
  %23 = load ptr, ptr %__mptr12, align 8, !dbg !2879
  %add.ptr16 = getelementptr i8, ptr %23, i64 -136, !dbg !2879
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !2879
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #6, !dbg !2851
  %24 = load ptr, ptr %tmp15, align 8, !dbg !2879
  store ptr %24, ptr %dn, align 8, !dbg !2851
  br label %for.cond, !dbg !2851, !llvm.loop !2880

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2882
  br label %cleanup, !dbg !2882

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #6, !dbg !2882
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #6, !dbg !2882
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2882

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_device_remove_files(ptr noundef %dev) #0 align 16 !dbg !2883 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2887
  %data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 13, !dbg !2888
  call void @acpi_hide_nondev_subnodes(ptr noundef %data) #7, !dbg !2889
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2890
  %flags = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 7, !dbg !2892
  %bf.load = load i32, ptr %flags, align 4, !dbg !2893
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !2893
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2893
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2890
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2894

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2895
  %dev1 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 18, !dbg !2897
  call void @device_remove_file(ptr noundef %dev1, ptr noundef @dev_attr_power_state) #7, !dbg !2898
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2899
  %power = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 9, !dbg !2901
  %flags2 = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 1, !dbg !2902
  %bf.load3 = load i32, ptr %flags2, align 4, !dbg !2903
  %bf.lshr4 = lshr i32 %bf.load3, 1, !dbg !2903
  %bf.clear5 = and i32 %bf.lshr4, 1, !dbg !2903
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !2899
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !2904

if.then7:                                         ; preds = %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2905
  %dev8 = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 18, !dbg !2906
  call void @device_remove_file(ptr noundef %dev8, ptr noundef @dev_attr_real_power_state) #7, !dbg !2907
  br label %if.end, !dbg !2907

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end9, !dbg !2908

if.end9:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2909
  %handle = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 2, !dbg !2911
  %6 = load ptr, ptr %handle, align 8, !dbg !2911
  %call = call zeroext i1 @acpi_has_method(ptr noundef %6, ptr noundef @.str.1) #7, !dbg !2912
  br i1 %call, label %if.then10, label %if.end12, !dbg !2913

if.then10:                                        ; preds = %if.end9
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2914
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 8, !dbg !2916
  %str_obj = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 8, !dbg !2917
  %8 = load ptr, ptr %str_obj, align 8, !dbg !2917
  call void @kfree(ptr noundef %8) #7, !dbg !2918
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2919
  %dev11 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 18, !dbg !2920
  call void @device_remove_file(ptr noundef %dev11, ptr noundef @dev_attr_description) #7, !dbg !2921
  br label %if.end12, !dbg !2922

if.end12:                                         ; preds = %if.then10, %if.end9
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2923
  %handle13 = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 2, !dbg !2925
  %11 = load ptr, ptr %handle13, align 8, !dbg !2925
  %call14 = call zeroext i1 @acpi_has_method(ptr noundef %11, ptr noundef @.str.5) #7, !dbg !2926
  br i1 %call14, label %if.then15, label %if.end17, !dbg !2927

if.then15:                                        ; preds = %if.end12
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2928
  %dev16 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 18, !dbg !2929
  call void @device_remove_file(ptr noundef %dev16, ptr noundef @dev_attr_eject) #7, !dbg !2930
  br label %if.end17, !dbg !2930

if.end17:                                         ; preds = %if.then15, %if.end12
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !2931
  %handle18 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 2, !dbg !2933
  %14 = load ptr, ptr %handle18, align 8, !dbg !2933
  %call19 = call zeroext i1 @acpi_has_method(ptr noundef %14, ptr noundef @.str.2) #7, !dbg !2934
  br i1 %call19, label %if.then20, label %if.end22, !dbg !2935

if.then20:                                        ; preds = %if.end17
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2936
  %dev21 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 18, !dbg !2937
  call void @device_remove_file(ptr noundef %dev21, ptr noundef @dev_attr_sun) #7, !dbg !2938
  br label %if.end22, !dbg !2938

if.end22:                                         ; preds = %if.then20, %if.end17
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2939
  %handle23 = getelementptr inbounds %struct.acpi_device, ptr %16, i32 0, i32 2, !dbg !2941
  %17 = load ptr, ptr %handle23, align 8, !dbg !2941
  %call24 = call zeroext i1 @acpi_has_method(ptr noundef %17, ptr noundef @.str.3) #7, !dbg !2942
  br i1 %call24, label %if.then25, label %if.end27, !dbg !2943

if.then25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !2944
  %dev26 = getelementptr inbounds %struct.acpi_device, ptr %18, i32 0, i32 18, !dbg !2945
  call void @device_remove_file(ptr noundef %dev26, ptr noundef @dev_attr_hrv) #7, !dbg !2946
  br label %if.end27, !dbg !2946

if.end27:                                         ; preds = %if.then25, %if.end22
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !2947
  %pnp28 = getelementptr inbounds %struct.acpi_device, ptr %19, i32 0, i32 8, !dbg !2949
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp28, i32 0, i32 4, !dbg !2950
  %20 = load ptr, ptr %unique_id, align 8, !dbg !2950
  %tobool29 = icmp ne ptr %20, null, !dbg !2947
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !2951

if.then30:                                        ; preds = %if.end27
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !2952
  %dev31 = getelementptr inbounds %struct.acpi_device, ptr %21, i32 0, i32 18, !dbg !2953
  call void @device_remove_file(ptr noundef %dev31, ptr noundef @dev_attr_uid) #7, !dbg !2954
  br label %if.end32, !dbg !2954

if.end32:                                         ; preds = %if.then30, %if.end27
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !2955
  %pnp33 = getelementptr inbounds %struct.acpi_device, ptr %22, i32 0, i32 8, !dbg !2957
  %type = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp33, i32 0, i32 2, !dbg !2958
  %bf.load34 = load i32, ptr %type, align 4, !dbg !2959
  %bf.lshr35 = lshr i32 %bf.load34, 1, !dbg !2959
  %bf.clear36 = and i32 %bf.lshr35, 1, !dbg !2959
  %tobool37 = icmp ne i32 %bf.clear36, 0, !dbg !2955
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2960

if.then38:                                        ; preds = %if.end32
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2961
  %dev39 = getelementptr inbounds %struct.acpi_device, ptr %23, i32 0, i32 18, !dbg !2962
  call void @device_remove_file(ptr noundef %dev39, ptr noundef @dev_attr_adr) #7, !dbg !2963
  br label %if.end40, !dbg !2963

if.end40:                                         ; preds = %if.then38, %if.end32
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2964
  %dev41 = getelementptr inbounds %struct.acpi_device, ptr %24, i32 0, i32 18, !dbg !2965
  call void @device_remove_file(ptr noundef %dev41, ptr noundef @dev_attr_modalias) #7, !dbg !2966
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2967
  %dev42 = getelementptr inbounds %struct.acpi_device, ptr %25, i32 0, i32 18, !dbg !2968
  call void @device_remove_file(ptr noundef %dev42, ptr noundef @dev_attr_hid) #7, !dbg !2969
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !2970
  %handle43 = getelementptr inbounds %struct.acpi_device, ptr %26, i32 0, i32 2, !dbg !2972
  %27 = load ptr, ptr %handle43, align 8, !dbg !2972
  %call44 = call zeroext i1 @acpi_has_method(ptr noundef %27, ptr noundef @.str.4) #7, !dbg !2973
  br i1 %call44, label %if.then45, label %if.end47, !dbg !2974

if.then45:                                        ; preds = %if.end40
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !2975
  %dev46 = getelementptr inbounds %struct.acpi_device, ptr %28, i32 0, i32 18, !dbg !2976
  call void @device_remove_file(ptr noundef %dev46, ptr noundef @dev_attr_status) #7, !dbg !2977
  br label %if.end47, !dbg !2977

if.end47:                                         ; preds = %if.then45, %if.end40
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !2978
  %handle48 = getelementptr inbounds %struct.acpi_device, ptr %29, i32 0, i32 2, !dbg !2980
  %30 = load ptr, ptr %handle48, align 8, !dbg !2980
  %tobool49 = icmp ne ptr %30, null, !dbg !2978
  br i1 %tobool49, label %if.then50, label %if.end52, !dbg !2981

if.then50:                                        ; preds = %if.end47
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !2982
  %dev51 = getelementptr inbounds %struct.acpi_device, ptr %31, i32 0, i32 18, !dbg !2983
  call void @device_remove_file(ptr noundef %dev51, ptr noundef @dev_attr_path) #7, !dbg !2984
  br label %if.end52, !dbg !2984

if.end52:                                         ; preds = %if.then50, %if.end47
  ret void, !dbg !2985
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_hide_nondev_subnodes(ptr noundef %data) #0 align 16 !dbg !2986 {
entry:
  %data.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2990, metadata !DIExpression()), !dbg !2999
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #6, !dbg !3000
  call void @llvm.dbg.declare(metadata ptr %list, metadata !2991, metadata !DIExpression()), !dbg !3001
  %0 = load ptr, ptr %data.addr, align 8, !dbg !3002
  %subnodes = getelementptr inbounds %struct.acpi_device_data, ptr %0, i32 0, i32 3, !dbg !3003
  store ptr %subnodes, ptr %list, align 8, !dbg !3001
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #6, !dbg !3004
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !2992, metadata !DIExpression()), !dbg !3005
  %1 = load ptr, ptr %list, align 8, !dbg !3006
  %call = call i32 @list_empty(ptr noundef %1) #7, !dbg !3008
  %tobool = icmp ne i32 %call, 0, !dbg !3008
  br i1 %tobool, label %if.then, label %if.end, !dbg !3009

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3010

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2993, metadata !DIExpression()), !dbg !3011
  %2 = load ptr, ptr %list, align 8, !dbg !3011
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3011
  %3 = load ptr, ptr %prev, align 8, !dbg !3011
  store ptr %3, ptr %__mptr, align 8, !dbg !3011
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3011
  %add.ptr = getelementptr i8, ptr %4, i64 -136, !dbg !3011
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3012
  %5 = load ptr, ptr %tmp, align 8, !dbg !3011
  store ptr %5, ptr %dn, align 8, !dbg !3012
  br label %for.cond, !dbg !3012

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %dn, align 8, !dbg !3013
  %sibling = getelementptr inbounds %struct.acpi_data_node, ptr %6, i32 0, i32 5, !dbg !3013
  %7 = load ptr, ptr %list, align 8, !dbg !3013
  %cmp = icmp eq ptr %sibling, %7, !dbg !3013
  %lnot = xor i1 %cmp, true, !dbg !3013
  br i1 %lnot, label %for.body, label %for.end, !dbg !3012

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dn, align 8, !dbg !3014
  %data1 = getelementptr inbounds %struct.acpi_data_node, ptr %8, i32 0, i32 4, !dbg !3016
  call void @acpi_hide_nondev_subnodes(ptr noundef %data1) #7, !dbg !3017
  %9 = load ptr, ptr %dn, align 8, !dbg !3018
  %kobj = getelementptr inbounds %struct.acpi_data_node, ptr %9, i32 0, i32 6, !dbg !3019
  call void @kobject_put(ptr noundef %kobj) #7, !dbg !3020
  br label %for.inc, !dbg !3021

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #6, !dbg !3022
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2996, metadata !DIExpression()), !dbg !3022
  %10 = load ptr, ptr %dn, align 8, !dbg !3022
  %sibling3 = getelementptr inbounds %struct.acpi_data_node, ptr %10, i32 0, i32 5, !dbg !3022
  %prev4 = getelementptr inbounds %struct.list_head, ptr %sibling3, i32 0, i32 1, !dbg !3022
  %11 = load ptr, ptr %prev4, align 8, !dbg !3022
  store ptr %11, ptr %__mptr2, align 8, !dbg !3022
  %12 = load ptr, ptr %__mptr2, align 8, !dbg !3022
  %add.ptr6 = getelementptr i8, ptr %12, i64 -136, !dbg !3022
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !3022
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #6, !dbg !3013
  %13 = load ptr, ptr %tmp5, align 8, !dbg !3022
  store ptr %13, ptr %dn, align 8, !dbg !3013
  br label %for.cond, !dbg !3013, !llvm.loop !3023

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3025
  br label %cleanup, !dbg !3025

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #6, !dbg !3025
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #6, !dbg !3025
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3025

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3026 dso_local void @device_remove_file(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3029 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3033 dso_local i32 @acpi_get_name(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #3 align 16 !dbg !3036 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3041, metadata !DIExpression()), !dbg !3042
  %0 = load i8, ptr %c.addr, align 1, !dbg !3043
  %conv = zext i8 %0 to i32, !dbg !3043
  %idxprom = sext i32 %conv to i64, !dbg !3043
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !3043
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3043
  %conv1 = zext i8 %1 to i32, !dbg !3043
  %and = and i32 %conv1, 1, !dbg !3043
  %cmp = icmp ne i32 %and, 0, !dbg !3043
  br i1 %cmp, label %if.then, label %if.end, !dbg !3045

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !3046
  %conv3 = zext i8 %2 to i32, !dbg !3046
  %sub = sub i32 %conv3, -32, !dbg !3046
  %conv4 = trunc i32 %sub to i8, !dbg !3046
  store i8 %conv4, ptr %c.addr, align 1, !dbg !3046
  br label %if.end, !dbg !3047

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !3048
  ret i8 %3, !dbg !3049
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3050 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !3054 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !3057, metadata !DIExpression()), !dbg !3058
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !3059
  call void @kfree(ptr noundef %0) #7, !dbg !3060
  ret void, !dbg !3061
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3062 dso_local zeroext i1 @acpi_device_is_present(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3065 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @path_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3069 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3071, metadata !DIExpression()), !dbg !3077
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3072, metadata !DIExpression()), !dbg !3078
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3073, metadata !DIExpression()), !dbg !3079
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3080
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3074, metadata !DIExpression()), !dbg !3081
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3082
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3075, metadata !DIExpression()), !dbg !3082
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3082
  store ptr %0, ptr %__mptr, align 8, !dbg !3082
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3082
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3082
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3082
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3083
  %2 = load ptr, ptr %tmp, align 8, !dbg !3082
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3081
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !3084
  %handle = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 2, !dbg !3085
  %4 = load ptr, ptr %handle, align 8, !dbg !3085
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3086
  %call = call i64 @acpi_object_path(ptr noundef %4, ptr noundef %5) #7, !dbg !3087
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3088
  ret i64 %call, !dbg !3089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_object_path(ptr noundef %handle, ptr noundef %buf) #0 align 16 !dbg !3090 {
entry:
  %retval = alloca i64, align 8
  %handle.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %path = alloca %struct.acpi_buffer, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3094, metadata !DIExpression()), !dbg !3098
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3095, metadata !DIExpression()), !dbg !3099
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #6, !dbg !3100
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3096, metadata !DIExpression()), !dbg !3101
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %path, ptr align 8 @__const.acpi_object_path.path, i64 16, i1 false), !dbg !3101
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #6, !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3097, metadata !DIExpression()), !dbg !3103
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !3104
  %call = call i32 @acpi_get_name(ptr noundef %0, i32 noundef 0, ptr noundef %path) #7, !dbg !3105
  store i32 %call, ptr %result, align 4, !dbg !3106
  %1 = load i32, ptr %result, align 4, !dbg !3107
  %tobool = icmp ne i32 %1, 0, !dbg !3107
  br i1 %tobool, label %if.then, label %if.end, !dbg !3109

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %result, align 4, !dbg !3110
  %conv = sext i32 %2 to i64, !dbg !3110
  store i64 %conv, ptr %retval, align 8, !dbg !3111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3111

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3112
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %path, i32 0, i32 1, !dbg !3113
  %4 = load ptr, ptr %pointer, align 8, !dbg !3113
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.12, ptr noundef %4) #7, !dbg !3114
  store i32 %call1, ptr %result, align 4, !dbg !3115
  %pointer2 = getelementptr inbounds %struct.acpi_buffer, ptr %path, i32 0, i32 1, !dbg !3116
  %5 = load ptr, ptr %pointer2, align 8, !dbg !3116
  call void @kfree(ptr noundef %5) #7, !dbg !3117
  %6 = load i32, ptr %result, align 4, !dbg !3118
  %conv3 = sext i32 %6 to i64, !dbg !3118
  store i64 %conv3, ptr %retval, align 8, !dbg !3119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3119

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #6, !dbg !3120
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #6, !dbg !3120
  %7 = load i64, ptr %retval, align 8, !dbg !3120
  ret i64 %7, !dbg !3120
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3121 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hid_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3124 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3126, metadata !DIExpression()), !dbg !3132
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3127, metadata !DIExpression()), !dbg !3133
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3128, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3135
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3129, metadata !DIExpression()), !dbg !3136
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3130, metadata !DIExpression()), !dbg !3137
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3137
  store ptr %0, ptr %__mptr, align 8, !dbg !3137
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3137
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3137
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3138
  %2 = load ptr, ptr %tmp, align 8, !dbg !3137
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3136
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3139
  %4 = load ptr, ptr %acpi_dev, align 8, !dbg !3140
  %call = call ptr @acpi_device_hid(ptr noundef %4) #7, !dbg !3141
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.12, ptr noundef %call) #7, !dbg !3142
  %conv = sext i32 %call1 to i64, !dbg !3142
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3143
  ret i64 %conv, !dbg !3144
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3145 dso_local ptr @acpi_device_hid(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @modalias_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3148 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3150, metadata !DIExpression()), !dbg !3155
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3151, metadata !DIExpression()), !dbg !3156
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3152, metadata !DIExpression()), !dbg !3157
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3153, metadata !DIExpression()), !dbg !3158
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3158
  store ptr %0, ptr %__mptr, align 8, !dbg !3158
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3158
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3158
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3158
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3159
  %2 = load ptr, ptr %tmp, align 8, !dbg !3158
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3160
  %call = call i32 @__acpi_device_modalias(ptr noundef %2, ptr noundef %3, i32 noundef 1024) #7, !dbg !3161
  %conv = sext i32 %call to i64, !dbg !3161
  ret i64 %conv, !dbg !3162
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @description_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3163 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3165, metadata !DIExpression()), !dbg !3172
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3166, metadata !DIExpression()), !dbg !3173
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3167, metadata !DIExpression()), !dbg !3174
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3175
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3168, metadata !DIExpression()), !dbg !3176
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3177
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3169, metadata !DIExpression()), !dbg !3177
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3177
  store ptr %0, ptr %__mptr, align 8, !dbg !3177
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3177
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3177
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3178
  %2 = load ptr, ptr %tmp, align 8, !dbg !3177
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3176
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #6, !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3171, metadata !DIExpression()), !dbg !3180
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !3181
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 8, !dbg !3183
  %str_obj = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 8, !dbg !3184
  %4 = load ptr, ptr %str_obj, align 8, !dbg !3184
  %cmp = icmp eq ptr %4, null, !dbg !3185
  br i1 %cmp, label %if.then, label %if.end, !dbg !3186

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !3187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3187

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %acpi_dev, align 8, !dbg !3188
  %pnp1 = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 8, !dbg !3189
  %str_obj2 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp1, i32 0, i32 8, !dbg !3190
  %6 = load ptr, ptr %str_obj2, align 8, !dbg !3190
  %pointer = getelementptr inbounds %struct.anon.6, ptr %6, i32 0, i32 2, !dbg !3191
  %7 = load ptr, ptr %pointer, align 8, !dbg !3191
  %8 = load ptr, ptr %acpi_dev, align 8, !dbg !3192
  %pnp3 = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 8, !dbg !3193
  %str_obj4 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp3, i32 0, i32 8, !dbg !3194
  %9 = load ptr, ptr %str_obj4, align 8, !dbg !3194
  %length = getelementptr inbounds %struct.anon.6, ptr %9, i32 0, i32 1, !dbg !3195
  %10 = load i32, ptr %length, align 4, !dbg !3195
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !3196
  %call = call i32 @utf16s_to_utf8s(ptr noundef %7, i32 noundef %10, i32 noundef 1, ptr noundef %11, i32 noundef 4095) #7, !dbg !3197
  store i32 %call, ptr %result, align 4, !dbg !3198
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !3199
  %13 = load i32, ptr %result, align 4, !dbg !3200
  %inc = add i32 %13, 1, !dbg !3200
  store i32 %inc, ptr %result, align 4, !dbg !3200
  %idxprom = sext i32 %13 to i64, !dbg !3199
  %arrayidx = getelementptr i8, ptr %12, i64 %idxprom, !dbg !3199
  store i8 10, ptr %arrayidx, align 1, !dbg !3201
  %14 = load i32, ptr %result, align 4, !dbg !3202
  %conv = sext i32 %14 to i64, !dbg !3202
  store i64 %conv, ptr %retval, align 8, !dbg !3203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3203

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #6, !dbg !3204
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3204
  %15 = load i64, ptr %retval, align 8, !dbg !3204
  ret i64 %15, !dbg !3204
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3205 dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @adr_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3210 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3212, metadata !DIExpression()), !dbg !3218
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3213, metadata !DIExpression()), !dbg !3219
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3214, metadata !DIExpression()), !dbg !3220
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3221
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3216, metadata !DIExpression()), !dbg !3223
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3223
  store ptr %0, ptr %__mptr, align 8, !dbg !3223
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3223
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3223
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3224
  %2 = load ptr, ptr %tmp, align 8, !dbg !3223
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3222
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !3225
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 8, !dbg !3227
  %bus_address = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 3, !dbg !3228
  %4 = load i64, ptr %bus_address, align 8, !dbg !3228
  %cmp = icmp ugt i64 %4, 4294967295, !dbg !3229
  br i1 %cmp, label %if.then, label %if.else, !dbg !3230

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3231
  %6 = load ptr, ptr %acpi_dev, align 8, !dbg !3232
  %pnp1 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 8, !dbg !3233
  %bus_address2 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp1, i32 0, i32 3, !dbg !3234
  %7 = load i64, ptr %bus_address2, align 8, !dbg !3234
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.17, i64 noundef %7) #7, !dbg !3235
  %conv = sext i32 %call to i64, !dbg !3235
  store i64 %conv, ptr %retval, align 8, !dbg !3236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3236

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !3237
  %9 = load ptr, ptr %acpi_dev, align 8, !dbg !3238
  %pnp3 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 8, !dbg !3239
  %bus_address4 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp3, i32 0, i32 3, !dbg !3240
  %10 = load i64, ptr %bus_address4, align 8, !dbg !3240
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %8, ptr noundef @.str.18, i64 noundef %10) #7, !dbg !3241
  %conv6 = sext i32 %call5 to i64, !dbg !3241
  store i64 %conv6, ptr %retval, align 8, !dbg !3242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3242

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3243
  %11 = load i64, ptr %retval, align 8, !dbg !3243
  ret i64 %11, !dbg !3243
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @uid_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3244 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3246, metadata !DIExpression()), !dbg !3252
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3247, metadata !DIExpression()), !dbg !3253
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3248, metadata !DIExpression()), !dbg !3254
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3255
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3249, metadata !DIExpression()), !dbg !3256
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3257
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3250, metadata !DIExpression()), !dbg !3257
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3257
  store ptr %0, ptr %__mptr, align 8, !dbg !3257
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3257
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3257
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3257
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3258
  %2 = load ptr, ptr %tmp, align 8, !dbg !3257
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3256
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3259
  %4 = load ptr, ptr %acpi_dev, align 8, !dbg !3260
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 8, !dbg !3261
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 4, !dbg !3262
  %5 = load ptr, ptr %unique_id, align 8, !dbg !3262
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.12, ptr noundef %5) #7, !dbg !3263
  %conv = sext i32 %call to i64, !dbg !3263
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3264
  ret i64 %conv, !dbg !3265
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sun_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3266 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %status = alloca i32, align 4
  %sun = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3268, metadata !DIExpression()), !dbg !3276
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3269, metadata !DIExpression()), !dbg !3277
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3270, metadata !DIExpression()), !dbg !3278
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3279
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3271, metadata !DIExpression()), !dbg !3280
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3281
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3272, metadata !DIExpression()), !dbg !3281
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3281
  store ptr %0, ptr %__mptr, align 8, !dbg !3281
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3281
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3281
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3282
  %2 = load ptr, ptr %tmp, align 8, !dbg !3281
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3280
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !3283
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3274, metadata !DIExpression()), !dbg !3284
  call void @llvm.lifetime.start.p0(i64 8, ptr %sun) #6, !dbg !3285
  call void @llvm.dbg.declare(metadata ptr %sun, metadata !3275, metadata !DIExpression()), !dbg !3286
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !3287
  %handle = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 2, !dbg !3288
  %4 = load ptr, ptr %handle, align 8, !dbg !3288
  %call = call i32 @acpi_evaluate_integer(ptr noundef %4, ptr noundef @.str.2, ptr noundef null, ptr noundef %sun) #7, !dbg !3289
  store i32 %call, ptr %status, align 4, !dbg !3290
  %5 = load i32, ptr %status, align 4, !dbg !3291
  %tobool = icmp ne i32 %5, 0, !dbg !3291
  br i1 %tobool, label %if.then, label %if.end, !dbg !3293

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3294

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !3295
  %7 = load i64, ptr %sun, align 8, !dbg !3296
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.21, i64 noundef %7) #7, !dbg !3297
  %conv = sext i32 %call1 to i64, !dbg !3297
  store i64 %conv, ptr %retval, align 8, !dbg !3298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3298

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sun) #6, !dbg !3299
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !3299
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3299
  %8 = load i64, ptr %retval, align 8, !dbg !3299
  ret i64 %8, !dbg !3299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3300 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hrv_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3304 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %status = alloca i32, align 4
  %hrv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3306, metadata !DIExpression()), !dbg !3314
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3307, metadata !DIExpression()), !dbg !3315
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3308, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3309, metadata !DIExpression()), !dbg !3318
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3319
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3310, metadata !DIExpression()), !dbg !3319
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3319
  store ptr %0, ptr %__mptr, align 8, !dbg !3319
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3319
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3319
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3320
  %2 = load ptr, ptr %tmp, align 8, !dbg !3319
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3318
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !3321
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3312, metadata !DIExpression()), !dbg !3322
  call void @llvm.lifetime.start.p0(i64 8, ptr %hrv) #6, !dbg !3323
  call void @llvm.dbg.declare(metadata ptr %hrv, metadata !3313, metadata !DIExpression()), !dbg !3324
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !3325
  %handle = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 2, !dbg !3326
  %4 = load ptr, ptr %handle, align 8, !dbg !3326
  %call = call i32 @acpi_evaluate_integer(ptr noundef %4, ptr noundef @.str.3, ptr noundef null, ptr noundef %hrv) #7, !dbg !3327
  store i32 %call, ptr %status, align 4, !dbg !3328
  %5 = load i32, ptr %status, align 4, !dbg !3329
  %tobool = icmp ne i32 %5, 0, !dbg !3329
  br i1 %tobool, label %if.then, label %if.end, !dbg !3331

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3332

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !3333
  %7 = load i64, ptr %hrv, align 8, !dbg !3334
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.21, i64 noundef %7) #7, !dbg !3335
  %conv = sext i32 %call1 to i64, !dbg !3335
  store i64 %conv, ptr %retval, align 8, !dbg !3336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3336

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hrv) #6, !dbg !3337
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !3337
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3337
  %8 = load i64, ptr %retval, align 8, !dbg !3337
  ret i64 %8, !dbg !3337
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @status_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3338 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %status = alloca i32, align 4
  %sta = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3340, metadata !DIExpression()), !dbg !3348
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3341, metadata !DIExpression()), !dbg !3349
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3342, metadata !DIExpression()), !dbg !3350
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #6, !dbg !3351
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !3343, metadata !DIExpression()), !dbg !3352
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3353
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3344, metadata !DIExpression()), !dbg !3353
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3353
  store ptr %0, ptr %__mptr, align 8, !dbg !3353
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3353
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3353
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3353
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3354
  %2 = load ptr, ptr %tmp, align 8, !dbg !3353
  store ptr %2, ptr %acpi_dev, align 8, !dbg !3352
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3346, metadata !DIExpression()), !dbg !3356
  call void @llvm.lifetime.start.p0(i64 8, ptr %sta) #6, !dbg !3357
  call void @llvm.dbg.declare(metadata ptr %sta, metadata !3347, metadata !DIExpression()), !dbg !3358
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !3359
  %handle = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 2, !dbg !3360
  %4 = load ptr, ptr %handle, align 8, !dbg !3360
  %call = call i32 @acpi_evaluate_integer(ptr noundef %4, ptr noundef @.str.4, ptr noundef null, ptr noundef %sta) #7, !dbg !3361
  store i32 %call, ptr %status, align 4, !dbg !3362
  %5 = load i32, ptr %status, align 4, !dbg !3363
  %tobool = icmp ne i32 %5, 0, !dbg !3363
  br i1 %tobool, label %if.then, label %if.end, !dbg !3365

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3366

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !3367
  %7 = load i64, ptr %sta, align 8, !dbg !3368
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.21, i64 noundef %7) #7, !dbg !3369
  %conv = sext i32 %call1 to i64, !dbg !3369
  store i64 %conv, ptr %retval, align 8, !dbg !3370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3370

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sta) #6, !dbg !3371
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !3371
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #6, !dbg !3371
  %8 = load i64, ptr %retval, align 8, !dbg !3371
  ret i64 %8, !dbg !3371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @eject_store(ptr noundef %d, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3372 {
entry:
  %retval = alloca i64, align 8
  %d.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %acpi_device = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %not_used = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3374, metadata !DIExpression()), !dbg !3383
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3375, metadata !DIExpression()), !dbg !3384
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3376, metadata !DIExpression()), !dbg !3385
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3377, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_device) #6, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %acpi_device, metadata !3378, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3389
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3379, metadata !DIExpression()), !dbg !3389
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3389
  store ptr %0, ptr %__mptr, align 8, !dbg !3389
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3389
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3389
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3390
  %2 = load ptr, ptr %tmp, align 8, !dbg !3389
  store ptr %2, ptr %acpi_device, align 8, !dbg !3388
  call void @llvm.lifetime.start.p0(i64 4, ptr %not_used) #6, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %not_used, metadata !3381, metadata !DIExpression()), !dbg !3392
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !3393
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3382, metadata !DIExpression()), !dbg !3394
  %3 = load i64, ptr %count.addr, align 8, !dbg !3395
  %tobool = icmp ne i64 %3, 0, !dbg !3395
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3397

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !3398
  %arrayidx = getelementptr i8, ptr %4, i64 0, !dbg !3398
  %5 = load i8, ptr %arrayidx, align 1, !dbg !3398
  %conv = zext i8 %5 to i32, !dbg !3398
  %cmp = icmp ne i32 %conv, 49, !dbg !3399
  br i1 %cmp, label %if.then, label %if.end, !dbg !3400

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !3401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3401

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %acpi_device, align 8, !dbg !3402
  %handler = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 14, !dbg !3404
  %7 = load ptr, ptr %handler, align 8, !dbg !3404
  %tobool2 = icmp ne ptr %7, null, !dbg !3402
  br i1 %tobool2, label %lor.lhs.false3, label %land.lhs.true, !dbg !3405

lor.lhs.false3:                                   ; preds = %if.end
  %8 = load ptr, ptr %acpi_device, align 8, !dbg !3406
  %handler4 = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 14, !dbg !3407
  %9 = load ptr, ptr %handler4, align 8, !dbg !3407
  %hotplug = getelementptr inbounds %struct.acpi_scan_handler, ptr %9, i32 0, i32 7, !dbg !3408
  %enabled = getelementptr inbounds %struct.acpi_hotplug_profile, ptr %hotplug, i32 0, i32 3, !dbg !3409
  %bf.load = load i8, ptr %enabled, align 8, !dbg !3409
  %bf.clear = and i8 %bf.load, 1, !dbg !3409
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !3409
  br i1 %bf.cast, label %if.end7, label %land.lhs.true, !dbg !3410

land.lhs.true:                                    ; preds = %lor.lhs.false3, %if.end
  %10 = load ptr, ptr %d.addr, align 8, !dbg !3411
  %driver = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 6, !dbg !3412
  %11 = load ptr, ptr %driver, align 8, !dbg !3412
  %tobool5 = icmp ne ptr %11, null, !dbg !3411
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3413

if.then6:                                         ; preds = %land.lhs.true
  store i64 -19, ptr %retval, align 8, !dbg !3414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3414

if.end7:                                          ; preds = %land.lhs.true, %lor.lhs.false3
  %12 = load ptr, ptr %acpi_device, align 8, !dbg !3415
  %handle = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 2, !dbg !3416
  %13 = load ptr, ptr %handle, align 8, !dbg !3416
  %call = call i32 @acpi_get_type(ptr noundef %13, ptr noundef %not_used) #7, !dbg !3417
  store i32 %call, ptr %status, align 4, !dbg !3418
  %14 = load i32, ptr %status, align 4, !dbg !3419
  %tobool8 = icmp ne i32 %14, 0, !dbg !3419
  br i1 %tobool8, label %if.then13, label %lor.lhs.false9, !dbg !3421

lor.lhs.false9:                                   ; preds = %if.end7
  %15 = load ptr, ptr %acpi_device, align 8, !dbg !3422
  %flags = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 7, !dbg !3423
  %bf.load10 = load i32, ptr %flags, align 4, !dbg !3424
  %bf.lshr = lshr i32 %bf.load10, 2, !dbg !3424
  %bf.clear11 = and i32 %bf.lshr, 1, !dbg !3424
  %tobool12 = icmp ne i32 %bf.clear11, 0, !dbg !3422
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3425

if.then13:                                        ; preds = %lor.lhs.false9, %if.end7
  store i64 -19, ptr %retval, align 8, !dbg !3426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3426

if.end14:                                         ; preds = %lor.lhs.false9
  %16 = load ptr, ptr %acpi_device, align 8, !dbg !3427
  %call15 = call ptr @acpi_dev_get(ptr noundef %16) #7, !dbg !3428
  %17 = load ptr, ptr %acpi_device, align 8, !dbg !3429
  %call16 = call i32 @acpi_hotplug_schedule(ptr noundef %17, i32 noundef 259) #7, !dbg !3430
  store i32 %call16, ptr %status, align 4, !dbg !3431
  %18 = load i32, ptr %status, align 4, !dbg !3432
  %tobool17 = icmp ne i32 %18, 0, !dbg !3432
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3434

if.then18:                                        ; preds = %if.end14
  %19 = load i64, ptr %count.addr, align 8, !dbg !3435
  store i64 %19, ptr %retval, align 8, !dbg !3436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3436

if.end19:                                         ; preds = %if.end14
  %20 = load ptr, ptr %acpi_device, align 8, !dbg !3437
  call void @acpi_dev_put(ptr noundef %20) #7, !dbg !3438
  %21 = load ptr, ptr %acpi_device, align 8, !dbg !3439
  %handle20 = getelementptr inbounds %struct.acpi_device, ptr %21, i32 0, i32 2, !dbg !3440
  %22 = load ptr, ptr %handle20, align 8, !dbg !3440
  %call21 = call i32 @acpi_evaluate_ost(ptr noundef %22, i32 noundef 259, i32 noundef 1, ptr noundef null) #7, !dbg !3441
  %23 = load i32, ptr %status, align 4, !dbg !3442
  %cmp22 = icmp eq i32 %23, 4, !dbg !3443
  %24 = zext i1 %cmp22 to i64, !dbg !3442
  %cond = select i1 %cmp22, i32 -12, i32 -11, !dbg !3442
  %conv24 = sext i32 %cond to i64, !dbg !3442
  store i64 %conv24, ptr %retval, align 8, !dbg !3444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3444

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then13, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 4, ptr %not_used) #6, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_device) #6, !dbg !3445
  %25 = load i64, ptr %retval, align 8, !dbg !3445
  ret i64 %25, !dbg !3445
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3446 dso_local i32 @acpi_get_type(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_dev_get(ptr noundef %adev) #3 align 16 !dbg !3450 {
entry:
  %adev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3454, metadata !DIExpression()), !dbg !3457
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3458
  %tobool = icmp ne ptr %0, null, !dbg !3458
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3458

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3459
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3455, metadata !DIExpression()), !dbg !3459
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !3459
  %dev = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 18, !dbg !3459
  %call = call ptr @get_device(ptr noundef %dev) #7, !dbg !3459
  store ptr %call, ptr %__mptr, align 8, !dbg !3459
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3459
  %add.ptr = getelementptr i8, ptr %2, i64 -608, !dbg !3459
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3459
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3460
  %3 = load ptr, ptr %tmp, align 8, !dbg !3459
  br label %cond.end, !dbg !3458

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !3458
  ret ptr %cond, !dbg !3461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3462 dso_local i32 @acpi_hotplug_schedule(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dev_put(ptr noundef %adev) #3 align 16 !dbg !3465 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !3467, metadata !DIExpression()), !dbg !3468
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !3469
  %tobool = icmp ne ptr %0, null, !dbg !3469
  br i1 %tobool, label %if.then, label %if.end, !dbg !3471

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !3472
  %dev = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 18, !dbg !3473
  call void @put_device(ptr noundef %dev) #7, !dbg !3474
  br label %if.end, !dbg !3474

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3475
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3476 dso_local i32 @acpi_evaluate_ost(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3479 dso_local ptr @get_device(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3482 dso_local void @put_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_state_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3483 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3485, metadata !DIExpression()), !dbg !3491
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3486, metadata !DIExpression()), !dbg !3492
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #6, !dbg !3494
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3488, metadata !DIExpression()), !dbg !3495
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3496
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3489, metadata !DIExpression()), !dbg !3496
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3496
  store ptr %0, ptr %__mptr, align 8, !dbg !3496
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3496
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3496
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3496
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3497
  %2 = load ptr, ptr %tmp, align 8, !dbg !3496
  store ptr %2, ptr %adev, align 8, !dbg !3495
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3498
  %4 = load ptr, ptr %adev, align 8, !dbg !3499
  %power = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 9, !dbg !3500
  %state = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 0, !dbg !3501
  %5 = load i32, ptr %state, align 8, !dbg !3501
  %call = call ptr @acpi_power_state_string(i32 noundef %5) #7, !dbg !3502
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.12, ptr noundef %call) #7, !dbg !3503
  %conv = sext i32 %call1 to i64, !dbg !3503
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #6, !dbg !3504
  ret i64 %conv, !dbg !3505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3506 dso_local ptr @acpi_power_state_string(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @real_power_state_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3509 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %state = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3511, metadata !DIExpression()), !dbg !3519
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3512, metadata !DIExpression()), !dbg !3520
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3513, metadata !DIExpression()), !dbg !3521
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #6, !dbg !3522
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3514, metadata !DIExpression()), !dbg !3523
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3524
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3515, metadata !DIExpression()), !dbg !3524
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3524
  store ptr %0, ptr %__mptr, align 8, !dbg !3524
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3524
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3524
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3525
  %2 = load ptr, ptr %tmp, align 8, !dbg !3524
  store ptr %2, ptr %adev, align 8, !dbg !3523
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #6, !dbg !3526
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3517, metadata !DIExpression()), !dbg !3527
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !3528
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3518, metadata !DIExpression()), !dbg !3529
  %3 = load ptr, ptr %adev, align 8, !dbg !3530
  %call = call i32 @acpi_device_get_power(ptr noundef %3, ptr noundef %state) #7, !dbg !3531
  store i32 %call, ptr %ret, align 4, !dbg !3532
  %4 = load i32, ptr %ret, align 4, !dbg !3533
  %tobool = icmp ne i32 %4, 0, !dbg !3533
  br i1 %tobool, label %if.then, label %if.end, !dbg !3535

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !3536
  %conv = sext i32 %5 to i64, !dbg !3536
  store i64 %conv, ptr %retval, align 8, !dbg !3537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3537

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !3538
  %7 = load i32, ptr %state, align 4, !dbg !3539
  %call1 = call ptr @acpi_power_state_string(i32 noundef %7) #7, !dbg !3540
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.12, ptr noundef %call1) #7, !dbg !3541
  %conv3 = sext i32 %call2 to i64, !dbg !3541
  store i64 %conv3, ptr %retval, align 8, !dbg !3542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3542

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !3543
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #6, !dbg !3543
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #6, !dbg !3543
  %8 = load i64, ptr %retval, align 8, !dbg !3543
  ret i64 %8, !dbg !3543
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3544 dso_local i32 @acpi_device_get_power(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #3 align 16 !dbg !2113 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2117, metadata !DIExpression()), !dbg !3547
  %0 = load ptr, ptr %x.addr, align 8, !dbg !3548
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !3549
  store i32 0, ptr %done, align 8, !dbg !3550
  br label %do.body, !dbg !3551

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !3552
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !3552
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.30, ptr noundef @init_completion.__key) #7, !dbg !3552
  br label %do.end, !dbg !3552

do.end:                                           ; preds = %do.body
  ret void, !dbg !3554
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3555 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3558 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3562 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_data_node_release(ptr noundef %kobj) #0 align 16 !dbg !3567 {
entry:
  %kobj.addr = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3569, metadata !DIExpression()), !dbg !3573
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #6, !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !3570, metadata !DIExpression()), !dbg !3575
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3576
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3571, metadata !DIExpression()), !dbg !3576
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3576
  store ptr %0, ptr %__mptr, align 8, !dbg !3576
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3576
  %add.ptr = getelementptr i8, ptr %1, i64 -152, !dbg !3576
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3577
  %2 = load ptr, ptr %tmp, align 8, !dbg !3576
  store ptr %2, ptr %dn, align 8, !dbg !3575
  %3 = load ptr, ptr %dn, align 8, !dbg !3578
  %kobj_done = getelementptr inbounds %struct.acpi_data_node, ptr %3, i32 0, i32 7, !dbg !3579
  call void @complete(ptr noundef %kobj_done) #7, !dbg !3580
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #6, !dbg !3581
  ret void, !dbg !3581
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3582 dso_local void @complete(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_data_node_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3583 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dn = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dn_attr = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3585, metadata !DIExpression()), !dbg !3594
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3586, metadata !DIExpression()), !dbg !3595
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3587, metadata !DIExpression()), !dbg !3596
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn) #6, !dbg !3597
  call void @llvm.dbg.declare(metadata ptr %dn, metadata !3588, metadata !DIExpression()), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3589, metadata !DIExpression()), !dbg !3599
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3599
  store ptr %0, ptr %__mptr, align 8, !dbg !3599
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3599
  %add.ptr = getelementptr i8, ptr %1, i64 -152, !dbg !3599
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3599
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !3600
  %2 = load ptr, ptr %tmp, align 8, !dbg !3599
  store ptr %2, ptr %dn, align 8, !dbg !3598
  call void @llvm.lifetime.start.p0(i64 8, ptr %dn_attr) #6, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %dn_attr, metadata !3591, metadata !DIExpression()), !dbg !3602
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #6, !dbg !3603
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !3592, metadata !DIExpression()), !dbg !3603
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !3603
  store ptr %3, ptr %__mptr1, align 8, !dbg !3603
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !3603
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !3603
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !3603
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #6, !dbg !3604
  %5 = load ptr, ptr %tmp2, align 8, !dbg !3603
  store ptr %5, ptr %dn_attr, align 8, !dbg !3602
  %6 = load ptr, ptr %dn_attr, align 8, !dbg !3605
  %show = getelementptr inbounds %struct.acpi_data_node_attr, ptr %6, i32 0, i32 1, !dbg !3606
  %7 = load ptr, ptr %show, align 8, !dbg !3606
  %tobool = icmp ne ptr %7, null, !dbg !3605
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3605

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %dn_attr, align 8, !dbg !3607
  %show4 = getelementptr inbounds %struct.acpi_data_node_attr, ptr %8, i32 0, i32 1, !dbg !3608
  %9 = load ptr, ptr %show4, align 8, !dbg !3608
  %10 = load ptr, ptr %dn, align 8, !dbg !3609
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !3610
  %call = call i64 %9(ptr noundef %10, ptr noundef %11) #7, !dbg !3607
  br label %cond.end, !dbg !3605

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3605

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ -6, %cond.false ], !dbg !3605
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn_attr) #6, !dbg !3611
  call void @llvm.lifetime.end.p0(i64 8, ptr %dn) #6, !dbg !3611
  ret i64 %cond, !dbg !3612
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @data_node_show_path(ptr noundef %dn, ptr noundef %buf) #0 align 16 !dbg !3613 {
entry:
  %dn.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dn, ptr %dn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dn.addr, metadata !3615, metadata !DIExpression()), !dbg !3617
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3616, metadata !DIExpression()), !dbg !3618
  %0 = load ptr, ptr %dn.addr, align 8, !dbg !3619
  %handle = getelementptr inbounds %struct.acpi_data_node, ptr %0, i32 0, i32 1, !dbg !3620
  %1 = load ptr, ptr %handle, align 8, !dbg !3620
  %tobool = icmp ne ptr %1, null, !dbg !3619
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3619

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dn.addr, align 8, !dbg !3621
  %handle1 = getelementptr inbounds %struct.acpi_data_node, ptr %2, i32 0, i32 1, !dbg !3622
  %3 = load ptr, ptr %handle1, align 8, !dbg !3622
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !3623
  %call = call i64 @acpi_object_path(ptr noundef %3, ptr noundef %4) #7, !dbg !3624
  br label %cond.end, !dbg !3619

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3619

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !3619
  ret i64 %cond, !dbg !3625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3626 dso_local void @kobject_put(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!llvm.ident = !{!2143}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/device_sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcba985c7f95a8d58c976587334b1999")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_device_uevent_modalias206", scope: !9, file: !2, line: 286, type: !97, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.device_sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22device_sysfs\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/device_sysfs.ll drivers/acpi/device_sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !96, globals: !1992, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !25, !31, !38, !43, !51, !59, !68, !73, !78, !84, !90}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !19, line: 312, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!22 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!23 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!24 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !26, line: 45, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!29 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!30 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !32, line: 487, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!33 = !{!34, !35, !36, !37}
!34 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!35 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!36 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!37 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 620, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!47 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!48 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!49 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!50 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 597, baseType: !52, size: 32, elements: !53)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!55 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!56 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!57 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!58 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !32, line: 547, baseType: !13, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!62 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!63 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!64 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!65 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!67 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !32, line: 564, baseType: !13, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !32, line: 577, baseType: !13, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !32, line: 503, baseType: !13, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!82 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!83 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !85, line: 30, baseType: !13, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!88 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!89 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "utf16_endian", file: !91, line: 41, baseType: !13, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/nls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f76e83aacaae45c8b04af57df30b5af2")
!92 = !{!93, !94, !95}
!93 = !DIEnumerator(name: "UTF16_HOST_ENDIAN", value: 0)
!94 = !DIEnumerator(name: "UTF16_LITTLE_ENDIAN", value: 1)
!95 = !DIEnumerator(name: "UTF16_BIG_ENDIAN", value: 2)
!96 = !{!97, !98, !105, !114, !52, !115, !116, !124, !1966, !128, !1968, !1969, !1980}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !99, line: 127, baseType: !100)
!99 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !101, line: 23, baseType: !102)
!101 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !103, line: 31, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!104 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !110, line: 190, size: 128, elements: !111)
!110 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !110, line: 191, baseType: !108, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !110, line: 191, baseType: !108, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hardware_id", file: !118, line: 225, size: 192, elements: !119)
!118 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !117, file: !118, line: 226, baseType: !109, size: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !117, file: !118, line: 227, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !118, line: 367, size: 11200, elements: !126)
!126 = !{!127, !130, !131, !133, !1711, !1712, !1713, !1722, !1740, !1819, !1849, !1873, !1894, !1900, !1909, !1941, !1955, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !125, file: !118, line: 368, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !101, line: 21, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !103, line: 27, baseType: !13)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !125, file: !118, line: 369, baseType: !52, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !125, file: !118, line: 370, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !99, line: 424, baseType: !97)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !125, file: !118, line: 371, baseType: !134, size: 512, offset: 128)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !135, line: 41, size: 512, elements: !136)
!135 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!136 = !{!137, !139, !1707, !1708, !1709, !1710}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !134, file: !135, line: 42, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !134, file: !135, line: 43, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !135, line: 125, size: 1408, elements: !143)
!143 = !{!144, !148, !152, !160, !1637, !1638, !1642, !1646, !1650, !1654, !1658, !1659, !1663, !1667, !1671, !1682, !1683, !1684, !1685, !1695, !1699, !1703}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !142, file: !135, line: 126, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!138, !138}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !142, file: !135, line: 127, baseType: !149, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !138}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !142, file: !135, line: 128, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !158}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !110, line: 35, baseType: !157)
!157 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !142, file: !135, line: 129, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !158, !166}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !32, line: 705, size: 5824, elements: !169)
!169 = !{!170, !819, !821, !824, !825, !876, !1342, !1343, !1344, !1345, !1346, !1353, !1523, !1536, !1546, !1550, !1552, !1553, !1554, !1558, !1565, !1566, !1569, !1572, !1576, !1577, !1578, !1581, !1582, !1583, !1584, !1614, !1615, !1616, !1619, !1622, !1631, !1632, !1633, !1634, !1635, !1636}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !168, file: !32, line: 706, baseType: !171, size: 512)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !172, line: 64, size: 512, elements: !173)
!172 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!173 = !{!174, !175, !176, !178, !263, !689, !804, !814, !815, !816, !817, !818}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !172, line: 65, baseType: !122, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !171, file: !172, line: 66, baseType: !109, size: 128, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !172, line: 67, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !171, file: !172, line: 68, baseType: !179, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !172, line: 168, size: 768, elements: !181)
!181 = !{!182, !183, !223, !224}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !180, file: !172, line: 169, baseType: !109, size: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !180, file: !172, line: 170, baseType: !184, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !185, line: 29, baseType: !186)
!185 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !185, line: 17, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !185, line: 18, baseType: !189, size: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !185, line: 18, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !189, file: !185, line: 19, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !193, line: 14, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !192, file: !193, line: 15, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !197, line: 44, baseType: !198)
!197 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !197, line: 14, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !197, line: 15, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !197, line: 15, size: 32, elements: !202)
!202 = !{!203, !208, !215}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !201, file: !197, line: 16, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !110, line: 174, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 172, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !205, file: !110, line: 173, baseType: !52, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !197, line: 24, baseType: !209, size: 16)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !201, file: !197, line: 24, size: 16, elements: !210)
!210 = !{!211, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !209, file: !197, line: 25, baseType: !212, size: 8)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !101, line: 17, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !103, line: 21, baseType: !115)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !209, file: !197, line: 26, baseType: !212, size: 8, offset: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !197, line: 28, baseType: !216, size: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !201, file: !197, line: 28, size: 32, elements: !217)
!217 = !{!218, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !216, file: !197, line: 29, baseType: !219, size: 16)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !101, line: 19, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !103, line: 24, baseType: !221)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !216, file: !197, line: 30, baseType: !219, size: 16, offset: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !180, file: !172, line: 171, baseType: !171, size: 512, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !180, file: !172, line: 172, baseType: !225, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !172, line: 133, size: 192, elements: !228)
!228 = !{!229, !236, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !227, file: !172, line: 134, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!52, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !172, line: 135, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!122, !234}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !227, file: !172, line: 136, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!52, !234, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !172, line: 125, size: 20736, elements: !248)
!248 = !{!249, !253, !257, !258, !262}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !247, file: !172, line: 126, baseType: !250, size: 192)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 192, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !247, file: !172, line: 127, baseType: !254, size: 4096, offset: 192)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 4096, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !247, file: !172, line: 128, baseType: !52, size: 32, offset: 4288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !247, file: !172, line: 129, baseType: !259, size: 16384, offset: 4320)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 2048)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !247, file: !172, line: 130, baseType: !52, size: 32, offset: 20704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !171, file: !172, line: 69, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !172, line: 116, size: 384, elements: !267)
!267 = !{!268, !272, !301, !635, !666, !670}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !266, file: !172, line: 117, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !177}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !266, file: !172, line: 118, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !276, line: 254, size: 128, elements: !277)
!276 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!277 = !{!278, !293}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !275, file: !276, line: 255, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !177, !287, !114}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !110, line: 66, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !284, line: 73, baseType: !285)
!284 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !284, line: 15, baseType: !286)
!286 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !276, line: 30, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !276, line: 31, baseType: !122, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !288, file: !276, line: 32, baseType: !292, size: 16, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !110, line: 24, baseType: !221)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !275, file: !276, line: 256, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!282, !177, !287, !122, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 61, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !284, line: 72, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !284, line: 16, baseType: !300)
!300 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !266, file: !172, line: 119, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !276, line: 84, size: 320, elements: !306)
!306 = !{!307, !308, !312, !631, !633}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !276, line: 85, baseType: !122, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !305, file: !276, line: 86, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!292, !177, !287, !52}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !305, file: !276, line: 88, baseType: !313, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!292, !177, !316, !52}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !276, line: 175, size: 512, elements: !318)
!318 = !{!319, !320, !321, !322, !329, !339, !340}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !317, file: !276, line: 176, baseType: !288, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !317, file: !276, line: 177, baseType: !297, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !317, file: !276, line: 178, baseType: !97, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !317, file: !276, line: 179, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !328, line: 351, flags: DIFlagFwdDecl)
!328 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !317, file: !276, line: 180, baseType: !330, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!282, !333, !177, !316, !114, !336, !297}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !335, line: 537, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !110, line: 52, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !284, line: 88, baseType: !338)
!338 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !317, file: !276, line: 182, baseType: !330, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !317, file: !276, line: 184, baseType: !341, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!52, !333, !177, !316, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !346, line: 625, size: 1344, elements: !347)
!346 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!347 = !{!348, !365, !582, !588, !595, !596, !601, !602, !614, !615, !618, !622, !623, !624, !625, !626, !629}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !346, line: 628, baseType: !349, size: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 628, size: 128, elements: !350)
!350 = !{!351, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !346, line: 629, baseType: !352, size: 128)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !346, line: 629, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !352, file: !346, line: 631, baseType: !300, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !352, file: !346, line: 632, baseType: !300, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !349, file: !346, line: 635, baseType: !357, size: 128, align: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !110, line: 232, size: 128, align: 64, elements: !358)
!358 = !{!359, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !110, line: 233, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !357, file: !110, line: 234, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !360}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !345, file: !346, line: 639, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !346, line: 733, size: 10240, elements: !368)
!368 = !{!369, !578}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !346, line: 734, baseType: !370, size: 10240)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !346, line: 734, size: 10240, elements: !371)
!371 = !{!372, !376, !390, !394, !395, !396, !397, !398, !399, !407, !408, !409, !415, !416, !425, !426, !427, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !474, !488, !491, !544, !545, !546, !549, !552, !553, !556, !557, !558, !565, !566}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !346, line: 739, baseType: !373, size: 512, align: 512)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !346, line: 739, size: 512, align: 512, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !373, file: !346, line: 747, baseType: !204, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !370, file: !346, line: 750, baseType: !377, size: 128, offset: 512)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !378, line: 218, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!379 = !{!380, !388, !389}
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !378, line: 219, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !378, line: 219, size: 32, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !381, file: !378, line: 220, baseType: !184, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !381, file: !378, line: 221, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !378, line: 197, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 197, elements: !387)
!387 = !{}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !377, file: !378, line: 223, baseType: !13, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !377, file: !378, line: 224, baseType: !97, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !370, file: !346, line: 752, baseType: !391, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!300, !333, !300, !300, !300, !300}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !370, file: !346, line: 756, baseType: !300, size: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !370, file: !346, line: 757, baseType: !300, size: 64, offset: 768)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !370, file: !346, line: 760, baseType: !300, size: 64, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !370, file: !346, line: 761, baseType: !300, size: 64, offset: 896)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !370, file: !346, line: 763, baseType: !300, size: 64, offset: 960)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !370, file: !346, line: 764, baseType: !400, size: 64, offset: 1024)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !335, line: 299, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 299, size: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !402, file: !335, line: 299, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !406, line: 18, baseType: !300)
!406 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !370, file: !346, line: 773, baseType: !204, size: 32, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !370, file: !346, line: 785, baseType: !204, size: 32, offset: 1120)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !370, file: !346, line: 795, baseType: !410, size: 64, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !346, line: 726, size: 128, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !411, file: !346, line: 727, baseType: !100, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !411, file: !346, line: 728, baseType: !52, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !370, file: !346, line: 801, baseType: !300, size: 64, offset: 1216)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !370, file: !346, line: 804, baseType: !417, size: 64, offset: 1280)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !418, line: 13, baseType: !419)
!418 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !110, line: 181, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 179, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !420, file: !110, line: 180, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !101, line: 22, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !103, line: 30, baseType: !338)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !370, file: !346, line: 806, baseType: !52, size: 32, offset: 1344)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !370, file: !346, line: 808, baseType: !184, size: 32, offset: 1376)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !370, file: !346, line: 823, baseType: !428, size: 320, offset: 1408)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !429, line: 48, size: 320, elements: !430)
!429 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!430 = !{!431, !432, !433, !438, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !428, file: !429, line: 49, baseType: !417, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !428, file: !429, line: 55, baseType: !417, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !428, file: !429, line: 57, baseType: !434, size: 32, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !435, line: 15, size: 32, elements: !436)
!435 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !434, file: !435, line: 20, baseType: !204, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !428, file: !429, line: 59, baseType: !439, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !193, line: 23, baseType: !192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !428, file: !429, line: 60, baseType: !109, size: 128, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !370, file: !346, line: 825, baseType: !109, size: 128, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !370, file: !346, line: 845, baseType: !52, size: 32, offset: 1856)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !370, file: !346, line: 849, baseType: !300, size: 64, offset: 1920)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !370, file: !346, line: 850, baseType: !300, size: 64, offset: 1984)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !370, file: !346, line: 852, baseType: !300, size: 64, offset: 2048)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !370, file: !346, line: 853, baseType: !300, size: 64, offset: 2112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !370, file: !346, line: 854, baseType: !419, size: 64, offset: 2176)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !370, file: !346, line: 855, baseType: !300, size: 64, offset: 2240)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !370, file: !346, line: 856, baseType: !300, size: 64, offset: 2304)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !370, file: !346, line: 857, baseType: !300, size: 64, offset: 2368)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !370, file: !346, line: 858, baseType: !300, size: 64, offset: 2432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !370, file: !346, line: 865, baseType: !453, size: 32, offset: 2496)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !454, line: 69, baseType: !455)
!454 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !454, line: 64, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !455, file: !454, line: 65, baseType: !13, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !370, file: !346, line: 867, baseType: !184, size: 32, offset: 2528)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !370, file: !346, line: 869, baseType: !300, size: 64, offset: 2560)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !370, file: !346, line: 869, baseType: !300, size: 64, offset: 2624)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !370, file: !346, line: 869, baseType: !300, size: 64, offset: 2688)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !370, file: !346, line: 869, baseType: !300, size: 64, offset: 2752)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !370, file: !346, line: 870, baseType: !300, size: 64, offset: 2816)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !370, file: !346, line: 870, baseType: !300, size: 64, offset: 2880)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !370, file: !346, line: 870, baseType: !300, size: 64, offset: 2944)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !370, file: !346, line: 871, baseType: !300, size: 64, offset: 3008)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !370, file: !346, line: 871, baseType: !300, size: 64, offset: 3072)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !370, file: !346, line: 871, baseType: !300, size: 64, offset: 3136)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !370, file: !346, line: 871, baseType: !300, size: 64, offset: 3200)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !370, file: !346, line: 873, baseType: !471, size: 3328, offset: 3264)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 3328, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 52)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !370, file: !346, line: 875, baseType: !475, size: 1280, offset: 6592)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 1280, elements: !486)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !477, line: 22, size: 320, elements: !478)
!477 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!478 = !{!479, !480, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !476, file: !477, line: 23, baseType: !439, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !476, file: !477, line: 24, baseType: !423, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !476, file: !477, line: 26, baseType: !109, size: 128, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !476, file: !477, line: 28, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !101, line: 20, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !103, line: 26, baseType: !52)
!486 = !{!487}
!487 = !DISubrange(count: 4)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !370, file: !346, line: 877, baseType: !489, size: 64, offset: 7872)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !346, line: 877, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !346, line: 880, baseType: !492, size: 1088, offset: 7936)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !493, line: 72, baseType: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 23, size: 1088, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !503, !504, !512, !513, !538, !539, !540}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !494, file: !493, line: 28, baseType: !100, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !494, file: !493, line: 38, baseType: !419, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !494, file: !493, line: 40, baseType: !300, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !494, file: !493, line: 43, baseType: !428, size: 320, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !494, file: !493, line: 44, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !493, line: 44, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !493, line: 48, baseType: !300, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !494, file: !493, line: 59, baseType: !505, size: 256, offset: 640)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !506, line: 66, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !506, line: 67, baseType: !417, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !505, file: !506, line: 68, baseType: !439, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !505, file: !506, line: 70, baseType: !434, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !505, file: !506, line: 72, baseType: !109, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !494, file: !493, line: 60, baseType: !97, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !494, file: !493, line: 61, baseType: !514, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !517, line: 13, size: 1216, elements: !518)
!517 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !517, line: 14, baseType: !97, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !517, line: 15, baseType: !300, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !516, file: !517, line: 17, baseType: !300, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !516, file: !517, line: 17, baseType: !300, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !516, file: !517, line: 18, baseType: !300, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !516, file: !517, line: 18, baseType: !300, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !516, file: !517, line: 19, baseType: !164, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !516, file: !517, line: 21, baseType: !286, size: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !516, file: !517, line: 23, baseType: !286, size: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !516, file: !517, line: 24, baseType: !286, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !516, file: !517, line: 25, baseType: !286, size: 64, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !516, file: !517, line: 26, baseType: !286, size: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !516, file: !517, line: 27, baseType: !286, size: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !516, file: !517, line: 28, baseType: !286, size: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !516, file: !517, line: 29, baseType: !286, size: 64, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !516, file: !517, line: 30, baseType: !286, size: 64, offset: 960)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !516, file: !517, line: 31, baseType: !286, size: 64, offset: 1024)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !516, file: !517, line: 32, baseType: !286, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !516, file: !517, line: 33, baseType: !286, size: 64, offset: 1152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !494, file: !493, line: 63, baseType: !204, size: 32, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !494, file: !493, line: 69, baseType: !219, size: 16, offset: 1056)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !494, file: !493, line: 70, baseType: !541, size: 16, offset: 1072)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !101, line: 18, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !103, line: 23, baseType: !543)
!543 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !346, line: 882, baseType: !300, size: 64, offset: 9024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !370, file: !346, line: 885, baseType: !184, size: 32, offset: 9088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !370, file: !346, line: 886, baseType: !547, size: 64, offset: 9152)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !346, line: 732, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !370, file: !346, line: 901, baseType: !550, size: 64, offset: 9216)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !346, line: 901, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !370, file: !346, line: 904, baseType: !333, size: 64, offset: 9280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !370, file: !346, line: 906, baseType: !554, size: 64, offset: 9344)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !346, line: 906, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !370, file: !346, line: 930, baseType: !204, size: 32, offset: 9408)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !370, file: !346, line: 933, baseType: !204, size: 32, offset: 9440)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !370, file: !346, line: 935, baseType: !559, size: 64, offset: 9472)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !560, line: 103, size: 64, elements: !561)
!560 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !559, file: !560, line: 104, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !560, line: 101, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !370, file: !346, line: 940, baseType: !417, size: 64, offset: 9536)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !370, file: !346, line: 942, baseType: !567, size: 256, offset: 9600)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !568, line: 98, size: 256, elements: !569)
!568 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!569 = !{!570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !567, file: !568, line: 99, baseType: !417, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !567, file: !568, line: 100, baseType: !109, size: 128, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !567, file: !568, line: 101, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !568, line: 21, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !367, file: !346, line: 986, baseType: !579, offset: 10240)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: -1)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !345, file: !346, line: 640, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !335, line: 297, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !335, line: 297, size: 64, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !584, file: !335, line: 297, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !406, line: 19, baseType: !300)
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !346, line: 646, baseType: !589, size: 64, offset: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 646, size: 64, elements: !590)
!590 = !{!591, !594}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !589, file: !346, line: 647, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !346, line: 542, baseType: !300)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !589, file: !346, line: 648, baseType: !593, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !345, file: !346, line: 666, baseType: !52, size: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !345, file: !346, line: 667, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !346, line: 579, size: 320, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !598, file: !346, line: 580, baseType: !428, size: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !345, file: !346, line: 670, baseType: !156, size: 8, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !345, file: !346, line: 681, baseType: !603, size: 256, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !346, line: 678, size: 256, elements: !604)
!604 = !{!605, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !603, file: !346, line: 679, baseType: !606, size: 192, align: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !607, line: 5, size: 192, align: 64, elements: !608)
!607 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!608 = !{!609, !610, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !606, file: !607, line: 6, baseType: !300, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !606, file: !607, line: 7, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !606, file: !607, line: 8, baseType: !611, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !603, file: !346, line: 680, baseType: !300, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !345, file: !346, line: 689, baseType: !109, size: 128, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !345, file: !346, line: 691, baseType: !616, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !346, line: 691, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !345, file: !346, line: 694, baseType: !619, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !346, line: 694, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !345, file: !346, line: 697, baseType: !300, size: 64, offset: 1024)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !345, file: !346, line: 699, baseType: !333, size: 64, offset: 1088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !345, file: !346, line: 700, baseType: !97, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !345, file: !346, line: 711, baseType: !417, size: 64, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !345, file: !346, line: 717, baseType: !627, size: 64, offset: 1280)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !346, line: 717, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !345, file: !346, line: 722, baseType: !630, offset: 1344)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !346, line: 570, elements: !387)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !305, file: !276, line: 90, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !305, file: !276, line: 91, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !266, file: !172, line: 120, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!639, !234}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !642)
!642 = !{!643, !644, !648, !652, !658, !662}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !12, line: 40, baseType: !11, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !641, file: !12, line: 41, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!156}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !641, file: !12, line: 42, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!97}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !641, file: !12, line: 43, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!164, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !641, file: !12, line: 44, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!164}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !641, file: !12, line: 45, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !97}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !266, file: !172, line: 121, baseType: !667, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!164, !234}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !266, file: !172, line: 122, baseType: !671, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !234, !674, !682}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !676, line: 23, baseType: !677)
!676 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 21, size: 32, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !677, file: !676, line: 22, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !110, line: 37, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !284, line: 49, baseType: !13)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !676, line: 28, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 26, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !676, line: 27, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !110, line: 38, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !284, line: 50, baseType: !13)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !171, file: !172, line: 70, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !692, line: 190, size: 1152, elements: !693)
!692 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !796, !797, !798, !799, !800, !803}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !691, file: !692, line: 191, baseType: !204, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !691, file: !692, line: 192, baseType: !204, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !691, file: !692, line: 202, baseType: !690, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !691, file: !692, line: 203, baseType: !122, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !691, file: !692, line: 205, baseType: !606, size: 192, align: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !691, file: !692, line: 207, baseType: !164, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !691, file: !692, line: 208, baseType: !13, size: 32, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 209, baseType: !702, size: 256, offset: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 209, size: 256, elements: !703)
!703 = !{!704, !716, !720}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !702, file: !692, line: 210, baseType: !705, size: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !692, line: 153, size: 256, elements: !706)
!706 = !{!707, !708, !712, !715}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !705, file: !692, line: 154, baseType: !300, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !705, file: !692, line: 156, baseType: !709, size: 64, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !607, line: 12, size: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !709, file: !607, line: 13, baseType: !611, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !705, file: !692, line: 162, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !692, line: 162, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !705, file: !692, line: 167, baseType: !300, size: 64, offset: 192)
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
!731 = !{!52, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !692, line: 251, size: 1216, elements: !734)
!734 = !{!735, !736, !737, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !733, file: !692, line: 253, baseType: !690, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !733, file: !692, line: 254, baseType: !333, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !733, file: !692, line: 255, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !740, line: 66, flags: DIFlagFwdDecl)
!740 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !733, file: !692, line: 256, baseType: !97, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !733, file: !692, line: 259, baseType: !505, size: 256, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !733, file: !692, line: 260, baseType: !505, size: 256, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !733, file: !692, line: 261, baseType: !52, size: 32, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !733, file: !692, line: 262, baseType: !109, size: 128, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !733, file: !692, line: 263, baseType: !114, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !733, file: !692, line: 265, baseType: !297, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !733, file: !692, line: 266, baseType: !156, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !733, file: !692, line: 267, baseType: !156, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !733, file: !692, line: 268, baseType: !619, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !726, file: !692, line: 277, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !732}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !726, file: !692, line: 290, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!52, !738, !97}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !726, file: !692, line: 292, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!97, !738, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !726, file: !692, line: 293, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!97, !738, !97, !763}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !726, file: !692, line: 294, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !738, !97}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !726, file: !692, line: 296, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!282, !732, !114, !297, !336}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !726, file: !692, line: 306, baseType: !297, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !726, file: !692, line: 313, baseType: !156, size: 8, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !726, file: !692, line: 314, baseType: !773, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !726, file: !692, line: 317, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !732, !785}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !784, line: 59, baseType: !13)
!784 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !692, line: 31, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !726, file: !692, line: 320, baseType: !788, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!52, !732, !344}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !721, file: !692, line: 176, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !692, line: 35, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !721, file: !692, line: 177, baseType: !336, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !721, file: !692, line: 178, baseType: !690, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !691, file: !692, line: 215, baseType: !97, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !691, file: !692, line: 221, baseType: !100, size: 64, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !692, line: 223, baseType: !221, size: 16, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !691, file: !692, line: 224, baseType: !292, size: 16, offset: 912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !691, file: !692, line: 225, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !692, line: 36, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !691, file: !692, line: 227, baseType: !357, size: 128, align: 64, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !171, file: !172, line: 71, baseType: !805, size: 32, offset: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !806, line: 19, size: 32, elements: !807)
!806 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !805, file: !806, line: 20, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !810, line: 113, baseType: !811)
!810 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !810, line: 111, size: 32, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !811, file: !810, line: 112, baseType: !204, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !171, file: !172, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !171, file: !172, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !171, file: !172, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !171, file: !172, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !171, file: !172, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !32, line: 707, baseType: !820, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !168, file: !32, line: 709, baseType: !822, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !32, line: 37, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !168, file: !32, line: 711, baseType: !122, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !32, line: 712, baseType: !826, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !32, line: 89, size: 384, elements: !829)
!829 = !{!830, !831, !832, !836, !841, !845}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !828, file: !32, line: 90, baseType: !122, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !828, file: !32, line: 91, baseType: !302, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !828, file: !32, line: 92, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!52, !166, !246}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !828, file: !32, line: 93, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!114, !166, !840, !674, !682}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !828, file: !32, line: 95, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !820}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !828, file: !32, line: 97, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 286, size: 1472, elements: !849)
!849 = !{!850, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !848, file: !44, line: 287, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!52, !820}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !848, file: !44, line: 288, baseType: !842, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !848, file: !44, line: 289, baseType: !851, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !848, file: !44, line: 290, baseType: !851, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !848, file: !44, line: 291, baseType: !851, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !848, file: !44, line: 292, baseType: !851, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !848, file: !44, line: 293, baseType: !851, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !848, file: !44, line: 294, baseType: !851, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !848, file: !44, line: 295, baseType: !851, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !848, file: !44, line: 296, baseType: !851, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !848, file: !44, line: 297, baseType: !851, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !848, file: !44, line: 298, baseType: !851, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !848, file: !44, line: 299, baseType: !851, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !848, file: !44, line: 300, baseType: !851, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !848, file: !44, line: 301, baseType: !851, size: 64, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !848, file: !44, line: 302, baseType: !851, size: 64, offset: 960)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !848, file: !44, line: 303, baseType: !851, size: 64, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !848, file: !44, line: 304, baseType: !851, size: 64, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !848, file: !44, line: 305, baseType: !851, size: 64, offset: 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !848, file: !44, line: 306, baseType: !851, size: 64, offset: 1216)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !848, file: !44, line: 307, baseType: !851, size: 64, offset: 1280)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !848, file: !44, line: 308, baseType: !851, size: 64, offset: 1344)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !848, file: !44, line: 309, baseType: !851, size: 64, offset: 1408)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !168, file: !32, line: 714, baseType: !877, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !880, line: 80, size: 1344, elements: !881)
!880 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!881 = !{!882, !883, !884, !885, !886, !887, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1341}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !880, line: 81, baseType: !122, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !879, file: !880, line: 82, baseType: !122, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !879, file: !880, line: 83, baseType: !302, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !879, file: !880, line: 84, baseType: !302, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !879, file: !880, line: 85, baseType: !302, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !879, file: !880, line: 87, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!52, !820, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !26, line: 96, size: 1152, elements: !893)
!893 = !{!894, !895, !896, !1272, !1273, !1274, !1275, !1291, !1304, !1305, !1306, !1307, !1308, !1316, !1317, !1318, !1319, !1320, !1321}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !892, file: !26, line: 97, baseType: !122, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !892, file: !26, line: 98, baseType: !877, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !892, file: !26, line: 100, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !899)
!899 = !{!900, !901, !902, !906, !927, !953, !954, !955, !956, !960, !963, !964, !965, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1028, !1032, !1052, !1070, !1071, !1072, !1073, !1082, !1105, !1106, !1109, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1123, !1124, !1230, !1238, !1239, !1240, !1242, !1246, !1247, !1251, !1252, !1253, !1254, !1256, !1257, !1258, !1265, !1266, !1267, !1271}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !898, file: !19, line: 403, baseType: !18, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !898, file: !19, line: 406, baseType: !109, size: 128, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !898, file: !19, line: 409, baseType: !903, size: 448, offset: 192)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 56)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !898, file: !19, line: 417, baseType: !907, size: 768, offset: 640)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !908)
!908 = !{!909, !910, !911, !912, !915}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !907, file: !19, line: 46, baseType: !171, size: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !907, file: !19, line: 47, baseType: !897, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !907, file: !19, line: 48, baseType: !177, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !907, file: !19, line: 49, baseType: !913, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !907, file: !19, line: 50, baseType: !916, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !918, line: 26, size: 256, elements: !919)
!918 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !917, file: !918, line: 27, baseType: !13, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !917, file: !918, line: 28, baseType: !922, size: 192, offset: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !923, line: 43, size: 192, elements: !924)
!923 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !922, file: !923, line: 44, baseType: !439, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !922, file: !923, line: 45, baseType: !109, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !898, file: !19, line: 418, baseType: !928, size: 64, offset: 1408)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !930)
!930 = !{!931, !932, !937, !941, !945, !949}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !929, file: !19, line: 54, baseType: !288, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !929, file: !19, line: 55, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!282, !928, !936, !114}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !929, file: !19, line: 57, baseType: !938, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!282, !928, !936, !122, !297}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !929, file: !19, line: 59, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !897, !122}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !929, file: !19, line: 60, baseType: !946, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!52, !897}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !929, file: !19, line: 61, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !897}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !898, file: !19, line: 419, baseType: !122, size: 64, offset: 1472)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !898, file: !19, line: 420, baseType: !122, size: 64, offset: 1536)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !898, file: !19, line: 421, baseType: !177, size: 64, offset: 1600)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !898, file: !19, line: 424, baseType: !957, size: 64, offset: 1664)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !898, file: !19, line: 425, baseType: !961, size: 64, offset: 1728)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !898, file: !19, line: 426, baseType: !13, size: 32, offset: 1792)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !898, file: !19, line: 435, baseType: !505, size: 256, offset: 1856)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !898, file: !19, line: 437, baseType: !966, size: 64, offset: 2112)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !968, line: 69, size: 320, elements: !969)
!968 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!969 = !{!970, !971, !972, !989, !991, !995, !996}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !967, file: !968, line: 70, baseType: !122, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !967, file: !968, line: 71, baseType: !897, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !967, file: !968, line: 72, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !968, line: 47, size: 256, elements: !976)
!976 = !{!977, !978, !984, !988}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !968, line: 49, baseType: !13, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !975, file: !968, line: 51, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!52, !122, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !975, file: !968, line: 53, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!52, !114, !982}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !975, file: !968, line: 55, baseType: !663, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !967, file: !968, line: 73, baseType: !990, size: 16, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !967, file: !968, line: 74, baseType: !992, size: 8, offset: 208)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !101, line: 16, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !103, line: 20, baseType: !994)
!994 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 75, baseType: !212, size: 8, offset: 216)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 76, baseType: !997, size: 64, offset: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 76, size: 64, elements: !998)
!998 = !{!999, !1000, !1007}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !997, file: !968, line: 77, baseType: !97, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !997, file: !968, line: 78, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !968, line: 86, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1003, file: !968, line: 87, baseType: !13, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1003, file: !968, line: 88, baseType: !114, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !997, file: !968, line: 79, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !968, line: 92, size: 256, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1016, !1017}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1010, file: !968, line: 94, baseType: !13, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1010, file: !968, line: 95, baseType: !13, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1010, file: !968, line: 96, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1010, file: !968, line: 97, baseType: !973, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1010, file: !968, line: 98, baseType: !97, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !898, file: !19, line: 438, baseType: !13, size: 32, offset: 2176)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !898, file: !19, line: 441, baseType: !13, size: 32, offset: 2208)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !898, file: !19, line: 442, baseType: !957, size: 64, offset: 2240)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !898, file: !19, line: 443, baseType: !961, size: 64, offset: 2304)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !898, file: !19, line: 444, baseType: !156, size: 8, offset: 2368)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !898, file: !19, line: 451, baseType: !156, size: 8, offset: 2376)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !898, file: !19, line: 454, baseType: !13, size: 32, offset: 2400)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !898, file: !19, line: 455, baseType: !1026, size: 64, offset: 2432)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !19, line: 43, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !898, file: !19, line: 458, baseType: !1029, size: 64, offset: 2496)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!52}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !898, file: !19, line: 460, baseType: !1033, size: 4032, align: 512, offset: 2560)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 4032, elements: !1050)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1034, file: !19, line: 363, baseType: !97, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !19, line: 364, baseType: !13, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1034, file: !19, line: 367, baseType: !1039, size: 448, offset: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1039, file: !19, line: 320, baseType: !897, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1039, file: !19, line: 321, baseType: !1043, size: 384, offset: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1044, line: 40, size: 384, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1043, file: !1044, line: 41, baseType: !1047, size: 384, align: 64)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 384, align: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 2)
!1050 = !{!1051}
!1051 = !DISubrange(count: 7)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !898, file: !19, line: 463, baseType: !1053, size: 192, offset: 6592)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1054, line: 8, size: 192, elements: !1055)
!1054 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1055 = !{!1056, !1057, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1053, file: !1054, line: 10, baseType: !13, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1053, file: !1054, line: 11, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1053, file: !1054, line: 12, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1062, line: 59, size: 48, elements: !1063)
!1062 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1061, file: !1062, line: 60, baseType: !541, size: 16)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1061, file: !1062, line: 61, baseType: !541, size: 16, offset: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1061, file: !1062, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1061, file: !1062, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1061, file: !1062, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1061, file: !1062, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !898, file: !19, line: 465, baseType: !300, size: 64, offset: 6784)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !898, file: !19, line: 469, baseType: !13, size: 32, offset: 6848)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !898, file: !19, line: 470, baseType: !109, size: 128, offset: 6912)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !898, file: !19, line: 471, baseType: !1074, size: 64, offset: 7040)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1076, line: 33, size: 96, elements: !1077)
!1076 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1077 = !{!1078, !1079, !1080, !1081}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1075, file: !1076, line: 37, baseType: !52, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1075, file: !1076, line: 43, baseType: !52, size: 32, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1075, file: !1076, line: 45, baseType: !221, size: 16, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1075, file: !1076, line: 47, baseType: !221, size: 16, offset: 80)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !898, file: !19, line: 476, baseType: !1083, size: 64, offset: 7104)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !1085)
!1085 = !{!1086, !1102, !1103, !1104}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1084, file: !19, line: 379, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1089, line: 204, baseType: !1090)
!1089 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1089, line: 197, size: 192, elements: !1091)
!1091 = !{!1092, !1094, !1095, !1096, !1098, !1100}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1090, file: !1089, line: 198, baseType: !1093, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1089, line: 21, baseType: !129)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1090, file: !1089, line: 199, baseType: !115, size: 8, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1090, file: !1089, line: 200, baseType: !115, size: 8, offset: 40)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1090, file: !1089, line: 201, baseType: !1097, size: 16, offset: 48)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1089, line: 17, baseType: !220)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1090, file: !1089, line: 202, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1089, line: 16, baseType: !102)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1090, file: !1089, line: 203, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1089, line: 22, baseType: !102)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1084, file: !19, line: 380, baseType: !13, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1084, file: !19, line: 381, baseType: !114, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1084, file: !19, line: 382, baseType: !114, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !898, file: !19, line: 477, baseType: !1084, size: 256, offset: 7168)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !898, file: !19, line: 480, baseType: !1107, size: 64, offset: 7424)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !898, file: !19, line: 483, baseType: !1110, size: 64, offset: 7488)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !898, file: !19, line: 488, baseType: !114, size: 64, offset: 7552)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !898, file: !19, line: 492, baseType: !97, size: 64, offset: 7616)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !898, file: !19, line: 493, baseType: !13, size: 32, offset: 7680)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !898, file: !19, line: 495, baseType: !97, size: 64, offset: 7744)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !898, file: !19, line: 496, baseType: !13, size: 32, offset: 7808)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !898, file: !19, line: 499, baseType: !13, size: 32, offset: 7840)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !898, file: !19, line: 500, baseType: !1119, size: 64, offset: 7872)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1121, line: 45, baseType: !1122)
!1121 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !898, file: !19, line: 503, baseType: !13, size: 32, offset: 7936)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !898, file: !19, line: 504, baseType: !1125, size: 64, offset: 8000)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1128, line: 96, size: 192, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1129 = !{!1130, !1131, !1191, !1194}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1127, file: !1128, line: 97, baseType: !13, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1127, file: !1128, line: 98, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1128, line: 24, size: 3072, elements: !1134)
!1134 = !{!1135, !1137, !1138, !1139, !1140, !1154, !1155, !1156, !1157, !1175, !1176, !1177, !1188, !1189, !1190}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1133, file: !1128, line: 26, baseType: !1136, size: 128)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !1048)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1133, file: !1128, line: 27, baseType: !1136, size: 128, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1133, file: !1128, line: 28, baseType: !52, size: 32, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !1128, line: 31, baseType: !184, size: 32, align: 512, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1133, file: !1128, line: 32, baseType: !1141, size: 960, offset: 576)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1142, line: 206, size: 960, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1143 = !{!1144, !1145, !1148, !1150, !1151, !1153}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1141, file: !1142, line: 207, baseType: !360, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1141, file: !1142, line: 208, baseType: !1146, size: 256, offset: 64)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 256, elements: !486)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1141, file: !1142, line: 209, baseType: !1149, size: 256, offset: 320)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !486)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1141, file: !1142, line: 213, baseType: !286, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1141, file: !1142, line: 215, baseType: !1152, size: 256, offset: 640)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !486)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !1142, line: 216, baseType: !212, size: 8, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1133, file: !1128, line: 33, baseType: !300, size: 64, offset: 1536)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1133, file: !1128, line: 34, baseType: !300, size: 64, offset: 1600)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1133, file: !1128, line: 35, baseType: !156, size: 8, offset: 1664)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1133, file: !1128, line: 36, baseType: !1158, size: 320, offset: 1728)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1159, line: 11, size: 320, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1160 = !{!1161, !1168, !1169, !1174}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1158, file: !1159, line: 16, baseType: !1162, size: 128)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !110, line: 198, size: 128, elements: !1163)
!1163 = !{!1164, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1162, file: !110, line: 199, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1162, file: !110, line: 199, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1158, file: !1159, line: 17, baseType: !300, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1158, file: !1159, line: 18, baseType: !1170, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !1159, line: 19, baseType: !128, size: 32, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1133, file: !1128, line: 37, baseType: !567, size: 256, offset: 2048)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1133, file: !1128, line: 38, baseType: !357, size: 128, align: 64, offset: 2304)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1133, file: !1128, line: 39, baseType: !1178, size: 64, offset: 2432)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1128, line: 49, size: 768, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1179, file: !1128, line: 50, baseType: !184, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1179, file: !1128, line: 51, baseType: !1149, size: 256, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1179, file: !1128, line: 53, baseType: !1149, size: 256, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1179, file: !1128, line: 54, baseType: !300, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1179, file: !1128, line: 55, baseType: !1178, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1179, file: !1128, line: 56, baseType: !52, size: 32, offset: 704)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1179, file: !1128, line: 57, baseType: !52, size: 32, offset: 736)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1133, file: !1128, line: 40, baseType: !300, size: 64, offset: 2496)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1133, file: !1128, line: 42, baseType: !52, size: 32, offset: 2560)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1133, file: !1128, line: 43, baseType: !1126, size: 64, offset: 2624)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1127, file: !1128, line: 99, baseType: !1192, offset: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1193, line: 211, elements: !387)
!1193 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1127, file: !1128, line: 100, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1128, line: 63, size: 3008, elements: !1197)
!1197 = !{!1198, !1199, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1229}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1196, file: !1128, line: 64, baseType: !1178, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1196, file: !1128, line: 65, baseType: !1200, size: 192, offset: 64)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 192, elements: !251)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1196, file: !1128, line: 67, baseType: !52, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1196, file: !1128, line: 68, baseType: !505, size: 256, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1196, file: !1128, line: 69, baseType: !184, size: 32, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1196, file: !1128, line: 70, baseType: !505, size: 256, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1196, file: !1128, line: 71, baseType: !300, size: 64, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1196, file: !1128, line: 72, baseType: !300, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1196, file: !1128, line: 73, baseType: !300, size: 64, offset: 1024)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1196, file: !1128, line: 74, baseType: !300, size: 64, offset: 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1196, file: !1128, line: 75, baseType: !300, size: 64, offset: 1152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1196, file: !1128, line: 76, baseType: !300, size: 64, offset: 1216)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1196, file: !1128, line: 77, baseType: !300, size: 64, offset: 1280)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1196, file: !1128, line: 78, baseType: !300, size: 64, offset: 1344)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1196, file: !1128, line: 79, baseType: !156, size: 8, offset: 1408)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1196, file: !1128, line: 80, baseType: !300, size: 64, offset: 1472)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1196, file: !1128, line: 81, baseType: !505, size: 256, offset: 1536)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1196, file: !1128, line: 82, baseType: !917, size: 256, offset: 1792)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1196, file: !1128, line: 84, baseType: !204, size: 32, offset: 2048)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1196, file: !1128, line: 87, baseType: !300, size: 64, offset: 2112)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1196, file: !1128, line: 88, baseType: !300, size: 64, offset: 2176)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1196, file: !1128, line: 89, baseType: !1221, size: 704, offset: 2240)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !568, line: 111, size: 704, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1221, file: !568, line: 112, baseType: !567, size: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1221, file: !568, line: 113, baseType: !1158, size: 320, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1221, file: !568, line: 116, baseType: !1226, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !568, line: 18, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1221, file: !568, line: 117, baseType: !52, size: 32, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1196, file: !1128, line: 90, baseType: !1126, size: 64, offset: 2944)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !898, file: !19, line: 515, baseType: !1231, size: 64, offset: 8064)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1233, line: 117, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1232, file: !1233, line: 118, baseType: !484, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1232, file: !1233, line: 119, baseType: !484, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1232, file: !1233, line: 120, baseType: !286, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !898, file: !19, line: 516, baseType: !13, size: 32, offset: 8128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !898, file: !19, line: 519, baseType: !13, size: 32, offset: 8160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !898, file: !19, line: 520, baseType: !1241, size: 64, offset: 8192)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !898, file: !19, line: 523, baseType: !1243, size: 64, offset: 8256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !898, file: !19, line: 524, baseType: !13, size: 32, offset: 8320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !898, file: !19, line: 525, baseType: !1248, size: 64, offset: 8384)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !898, file: !19, line: 526, baseType: !13, size: 32, offset: 8448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !898, file: !19, line: 533, baseType: !97, size: 64, offset: 8512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !898, file: !19, line: 534, baseType: !13, size: 32, offset: 8576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !898, file: !19, line: 535, baseType: !1255, size: 64, offset: 8640)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !898, file: !19, line: 536, baseType: !13, size: 32, offset: 8704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !898, file: !19, line: 539, baseType: !52, size: 32, offset: 8736)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !898, file: !19, line: 540, baseType: !1259, size: 64, offset: 8768)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1261, line: 32, size: 64, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1260, file: !1261, line: 33, baseType: !484, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1260, file: !1261, line: 34, baseType: !484, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !898, file: !19, line: 563, baseType: !109, size: 128, offset: 8832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !898, file: !19, line: 565, baseType: !109, size: 128, offset: 8960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !898, file: !19, line: 568, baseType: !1268, size: 64, offset: 9088)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !898, file: !19, line: 570, baseType: !204, size: 32, offset: 9152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !892, file: !26, line: 101, baseType: !122, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !892, file: !26, line: 103, baseType: !156, size: 8, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !892, file: !26, line: 104, baseType: !25, size: 32, offset: 288)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !892, file: !26, line: 106, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1279, line: 282, size: 1600, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1280 = !{!1281, !1285, !1286, !1290}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1278, file: !1279, line: 283, baseType: !1282, size: 256)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1278, file: !1279, line: 284, baseType: !1282, size: 256, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1278, file: !1279, line: 285, baseType: !1287, size: 1024, offset: 512)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1278, file: !1279, line: 286, baseType: !164, size: 64, offset: 1536)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !892, file: !26, line: 107, baseType: !1292, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1279, line: 217, size: 256, elements: !1295)
!1295 = !{!1296, !1300, !1302, !1303}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1294, file: !1279, line: 218, baseType: !1297, size: 128)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 16)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1294, file: !1279, line: 219, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1279, line: 15, baseType: !300)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1294, file: !1279, line: 220, baseType: !129, size: 32, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1294, file: !1279, line: 221, baseType: !129, size: 32, offset: 224)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !892, file: !26, line: 109, baseType: !851, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !892, file: !26, line: 110, baseType: !842, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !892, file: !26, line: 111, baseType: !851, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !892, file: !26, line: 112, baseType: !842, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !892, file: !26, line: 113, baseType: !1309, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!52, !820, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 60, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 58, size: 32, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1313, file: !44, line: 59, baseType: !52, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !892, file: !26, line: 114, baseType: !851, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !892, file: !26, line: 115, baseType: !302, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !892, file: !26, line: 116, baseType: !302, size: 64, offset: 896)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !892, file: !26, line: 118, baseType: !846, size: 64, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !892, file: !26, line: 119, baseType: !842, size: 64, offset: 1024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !892, file: !26, line: 121, baseType: !1322, size: 64, offset: 1088)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !26, line: 121, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !879, file: !880, line: 88, baseType: !833, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !879, file: !880, line: 89, baseType: !851, size: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !879, file: !880, line: 90, baseType: !842, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !879, file: !880, line: 91, baseType: !842, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !879, file: !880, line: 92, baseType: !842, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !879, file: !880, line: 94, baseType: !851, size: 64, offset: 704)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !879, file: !880, line: 95, baseType: !851, size: 64, offset: 768)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !879, file: !880, line: 97, baseType: !1309, size: 64, offset: 832)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !879, file: !880, line: 98, baseType: !851, size: 64, offset: 896)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !879, file: !880, line: 100, baseType: !851, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !879, file: !880, line: 102, baseType: !851, size: 64, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !879, file: !880, line: 103, baseType: !842, size: 64, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !879, file: !880, line: 105, baseType: !846, size: 64, offset: 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !879, file: !880, line: 107, baseType: !1338, size: 64, offset: 1216)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !880, line: 107, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !879, file: !880, line: 109, baseType: !156, size: 8, offset: 1280)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !168, file: !32, line: 715, baseType: !891, size: 64, offset: 832)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !168, file: !32, line: 717, baseType: !97, size: 64, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !168, file: !32, line: 719, baseType: !97, size: 64, offset: 960)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !168, file: !32, line: 721, baseType: !505, size: 256, offset: 1024)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !168, file: !32, line: 725, baseType: !1347, size: 448, offset: 1280)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !32, line: 517, size: 448, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1347, file: !32, line: 518, baseType: !109, size: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1347, file: !32, line: 519, baseType: !109, size: 128, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1347, file: !32, line: 520, baseType: !109, size: 128, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1347, file: !32, line: 521, baseType: !31, size: 32, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !168, file: !32, line: 726, baseType: !1354, size: 2496, offset: 1728)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 663, size: 2496, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1400, !1401, !1402, !1403, !1404, !1405, !1476, !1477, !1478, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1516, !1520}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1354, file: !44, line: 664, baseType: !1312, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1354, file: !44, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1354, file: !44, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1354, file: !44, line: 667, baseType: !156, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1354, file: !44, line: 668, baseType: !156, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1354, file: !44, line: 669, baseType: !156, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1354, file: !44, line: 670, baseType: !156, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1354, file: !44, line: 671, baseType: !156, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1354, file: !44, line: 672, baseType: !156, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1354, file: !44, line: 673, baseType: !156, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1354, file: !44, line: 674, baseType: !156, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1354, file: !44, line: 675, baseType: !128, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1354, file: !44, line: 676, baseType: !184, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1354, file: !44, line: 678, baseType: !109, size: 128, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1354, file: !44, line: 679, baseType: !917, size: 256, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1354, file: !44, line: 680, baseType: !1372, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1374, line: 43, size: 1536, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1383, !1384, !1385, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1373, file: !1374, line: 44, baseType: !122, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1373, file: !1374, line: 45, baseType: !52, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1373, file: !1374, line: 46, baseType: !109, size: 128, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1373, file: !1374, line: 47, baseType: !184, size: 32, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1373, file: !1374, line: 48, baseType: !1381, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 629, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1373, file: !1374, line: 49, baseType: !1158, size: 320, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1373, file: !1374, line: 50, baseType: !300, size: 64, offset: 704)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1373, file: !1374, line: 51, baseType: !1386, size: 64, offset: 768)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1387, line: 29, baseType: !423)
!1387 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1373, file: !1374, line: 52, baseType: !1386, size: 64, offset: 832)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1373, file: !1374, line: 53, baseType: !1386, size: 64, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1373, file: !1374, line: 54, baseType: !1386, size: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1373, file: !1374, line: 55, baseType: !1386, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1373, file: !1374, line: 56, baseType: !300, size: 64, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1373, file: !1374, line: 57, baseType: !300, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1373, file: !1374, line: 58, baseType: !300, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1373, file: !1374, line: 59, baseType: !300, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1373, file: !1374, line: 60, baseType: !300, size: 64, offset: 1344)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1373, file: !1374, line: 61, baseType: !820, size: 64, offset: 1408)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1373, file: !1374, line: 62, baseType: !156, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1373, file: !1374, line: 63, baseType: !156, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1354, file: !44, line: 681, baseType: !156, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1354, file: !44, line: 682, baseType: !156, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1354, file: !44, line: 683, baseType: !156, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1354, file: !44, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1354, file: !44, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1354, file: !44, line: 690, baseType: !1406, size: 512, offset: 640)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1407)
!1407 = !{!1408, !1414, !1415, !1420, !1472, !1473, !1474, !1475}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1406, file: !39, line: 119, baseType: !1409, size: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1410, line: 9, size: 256, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1409, file: !1410, line: 10, baseType: !606, size: 192, align: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1409, file: !1410, line: 11, baseType: !1386, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1406, file: !39, line: 120, baseType: !1386, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1406, file: !39, line: 121, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!38, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1406, file: !39, line: 122, baseType: !1421, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1423)
!1423 = !{!1424, !1449, !1450, !1453, !1458, !1459, !1467, !1471}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1422, file: !39, line: 160, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1426, file: !39, line: 216, baseType: !439, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1426, file: !39, line: 217, baseType: !13, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1426, file: !39, line: 218, baseType: !13, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1426, file: !39, line: 219, baseType: !13, size: 32, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1426, file: !39, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1426, file: !39, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1426, file: !39, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1426, file: !39, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1426, file: !39, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1426, file: !39, line: 226, baseType: !13, size: 32, offset: 160)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1426, file: !39, line: 227, baseType: !221, size: 16, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1426, file: !39, line: 228, baseType: !221, size: 16, offset: 208)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1426, file: !39, line: 229, baseType: !13, size: 32, offset: 224)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1426, file: !39, line: 235, baseType: !1386, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1426, file: !39, line: 236, baseType: !1419, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1426, file: !39, line: 237, baseType: !1386, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1426, file: !39, line: 238, baseType: !1419, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1426, file: !39, line: 239, baseType: !1446, size: 4096, align: 512, offset: 512)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 4096, align: 512, elements: !1447)
!1447 = !{!1448}
!1448 = !DISubrange(count: 8)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1422, file: !39, line: 161, baseType: !13, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1422, file: !39, line: 162, baseType: !1451, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !110, line: 32, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !284, line: 96, baseType: !52)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1422, file: !39, line: 163, baseType: !1454, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !454, line: 274, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !454, line: 274, size: 32, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1455, file: !454, line: 274, baseType: !453, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1422, file: !39, line: 164, baseType: !1419, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1422, file: !39, line: 165, baseType: !1460, size: 128, offset: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1410, line: 14, size: 128, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1460, file: !1410, line: 15, baseType: !1463, size: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !607, line: 26, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1463, file: !607, line: 27, baseType: !709, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1463, file: !607, line: 28, baseType: !611, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1422, file: !39, line: 166, baseType: !1468, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1386}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1422, file: !39, line: 167, baseType: !1386, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1406, file: !39, line: 123, baseType: !212, size: 8, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1406, file: !39, line: 124, baseType: !212, size: 8, offset: 456)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1406, file: !39, line: 125, baseType: !212, size: 8, offset: 464)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1406, file: !39, line: 126, baseType: !212, size: 8, offset: 472)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1354, file: !44, line: 691, baseType: !100, size: 64, offset: 1152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1354, file: !44, line: 692, baseType: !567, size: 256, offset: 1216)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1354, file: !44, line: 693, baseType: !1479, size: 192, offset: 1472)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1480, line: 41, baseType: !1481)
!1480 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1480, line: 37, size: 192, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1481, file: !1480, line: 38, baseType: !184, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1481, file: !1480, line: 39, baseType: !109, size: 128, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1354, file: !44, line: 694, baseType: !1381, size: 64, offset: 1664)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1354, file: !44, line: 695, baseType: !204, size: 32, offset: 1728)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1354, file: !44, line: 696, baseType: !204, size: 32, offset: 1760)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1354, file: !44, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1354, file: !44, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1354, file: !44, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1354, file: !44, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1354, file: !44, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1354, file: !44, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1354, file: !44, line: 703, baseType: !156, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1354, file: !44, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1354, file: !44, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1354, file: !44, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1354, file: !44, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1354, file: !44, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1354, file: !44, line: 709, baseType: !13, size: 32, offset: 1824)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1354, file: !44, line: 710, baseType: !43, size: 32, offset: 1856)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1354, file: !44, line: 711, baseType: !51, size: 32, offset: 1888)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1354, file: !44, line: 712, baseType: !51, size: 32, offset: 1920)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1354, file: !44, line: 713, baseType: !52, size: 32, offset: 1952)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1354, file: !44, line: 714, baseType: !52, size: 32, offset: 1984)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1354, file: !44, line: 715, baseType: !100, size: 64, offset: 2048)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1354, file: !44, line: 716, baseType: !100, size: 64, offset: 2112)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1354, file: !44, line: 717, baseType: !100, size: 64, offset: 2176)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1354, file: !44, line: 718, baseType: !100, size: 64, offset: 2240)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1354, file: !44, line: 720, baseType: !1511, size: 64, offset: 2304)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 632, size: 64, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !44, line: 633, baseType: !184, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1512, file: !44, line: 634, baseType: !13, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1354, file: !44, line: 721, baseType: !1517, size: 64, offset: 2368)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !820, !484}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1354, file: !44, line: 722, baseType: !1521, size: 64, offset: 2432)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 722, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !168, file: !32, line: 727, baseType: !1524, size: 64, offset: 4224)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 742, size: 1792, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1533, !1534, !1535}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1525, file: !44, line: 743, baseType: !848, size: 1472)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1525, file: !44, line: 744, baseType: !851, size: 64, offset: 1472)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1525, file: !44, line: 745, baseType: !1530, size: 64, offset: 1536)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !820, !156}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1525, file: !44, line: 746, baseType: !851, size: 64, offset: 1600)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1525, file: !44, line: 747, baseType: !842, size: 64, offset: 1664)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1525, file: !44, line: 748, baseType: !842, size: 64, offset: 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !168, file: !32, line: 736, baseType: !1537, size: 128, offset: 4288)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !32, line: 529, size: 128, elements: !1538)
!1538 = !{!1539, !1543}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1537, file: !32, line: 531, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1542, line: 13, flags: DIFlagFwdDecl)
!1542 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1537, file: !32, line: 532, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !32, line: 49, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !168, file: !32, line: 738, baseType: !1547, size: 64, offset: 4416)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !32, line: 738, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !168, file: !32, line: 740, baseType: !1551, size: 64, offset: 4480)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !168, file: !32, line: 741, baseType: !100, size: 64, offset: 4544)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !168, file: !32, line: 746, baseType: !100, size: 64, offset: 4608)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !168, file: !32, line: 747, baseType: !1555, size: 64, offset: 4672)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !32, line: 747, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !168, file: !32, line: 749, baseType: !1559, size: 64, offset: 4736)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !32, line: 428, size: 128, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1560, file: !32, line: 433, baseType: !13, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1560, file: !32, line: 434, baseType: !13, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1560, file: !32, line: 435, baseType: !300, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !168, file: !32, line: 751, baseType: !109, size: 128, offset: 4800)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !168, file: !32, line: 762, baseType: !1567, size: 64, offset: 4928)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !32, line: 762, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !168, file: !32, line: 770, baseType: !1570, offset: 4992)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1571, line: 5, elements: !387)
!1571 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !168, file: !32, line: 772, baseType: !1573, size: 64, offset: 4992)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1575, line: 18, flags: DIFlagFwdDecl)
!1575 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !168, file: !32, line: 773, baseType: !138, size: 64, offset: 5056)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !168, file: !32, line: 776, baseType: !52, size: 32, offset: 5120)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !168, file: !32, line: 778, baseType: !1579, size: 32, offset: 5152)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !110, line: 21, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !110, line: 18, baseType: !128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !168, file: !32, line: 779, baseType: !128, size: 32, offset: 5184)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !168, file: !32, line: 781, baseType: !184, size: 32, offset: 5216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !168, file: !32, line: 782, baseType: !109, size: 128, offset: 5248)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !168, file: !32, line: 784, baseType: !1585, size: 64, offset: 5376)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1588, line: 52, size: 768, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1598, !1602, !1603, !1604, !1605, !1609, !1613}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1587, file: !1588, line: 53, baseType: !122, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1587, file: !1588, line: 55, baseType: !302, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1587, file: !1588, line: 56, baseType: !302, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1587, file: !1588, line: 58, baseType: !833, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1587, file: !1588, line: 59, baseType: !1595, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!114, !166, !840}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1587, file: !1588, line: 61, baseType: !1599, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1585}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1587, file: !1588, line: 62, baseType: !842, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1587, file: !1588, line: 64, baseType: !851, size: 64, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1587, file: !1588, line: 66, baseType: !639, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1587, file: !1588, line: 67, baseType: !1606, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!164, !166}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1587, file: !1588, line: 69, baseType: !1610, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !166, !674, !682}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1587, file: !1588, line: 71, baseType: !846, size: 64, offset: 704)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !168, file: !32, line: 785, baseType: !302, size: 64, offset: 5440)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !168, file: !32, line: 787, baseType: !842, size: 64, offset: 5504)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !168, file: !32, line: 788, baseType: !1617, size: 64, offset: 5568)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !32, line: 46, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !168, file: !32, line: 789, baseType: !1620, size: 64, offset: 5632)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !32, line: 48, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !168, file: !32, line: 791, baseType: !1623, size: 64, offset: 5696)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !32, line: 597, size: 128, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1624, file: !32, line: 598, baseType: !59, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1624, file: !32, line: 599, baseType: !68, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1624, file: !32, line: 600, baseType: !73, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1624, file: !32, line: 601, baseType: !156, size: 8, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1624, file: !32, line: 602, baseType: !156, size: 8, offset: 104)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !168, file: !32, line: 793, baseType: !78, size: 32, offset: 5760)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !168, file: !32, line: 795, baseType: !156, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !168, file: !32, line: 796, baseType: !156, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !168, file: !32, line: 797, baseType: !156, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !168, file: !32, line: 798, baseType: !156, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !168, file: !32, line: 799, baseType: !156, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !142, file: !135, line: 131, baseType: !153, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !142, file: !135, line: 133, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!84, !158}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !142, file: !135, line: 134, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!156, !158, !122}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !142, file: !135, line: 136, baseType: !1647, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!52, !158, !122, !13, !97, !297}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !142, file: !135, line: 141, baseType: !1651, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!52, !158, !122, !1241, !297}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !142, file: !135, line: 144, baseType: !1655, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!122, !158}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !142, file: !135, line: 145, baseType: !1655, size: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !142, file: !135, line: 146, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!138, !158}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !142, file: !135, line: 148, baseType: !1664, size: 64, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!138, !158, !138}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !142, file: !135, line: 151, baseType: !1668, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!138, !158, !122}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !142, file: !135, line: 153, baseType: !1672, size: 64, offset: 896)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!52, !158, !122, !122, !13, !13, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !135, line: 94, size: 640, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1676, file: !135, line: 95, baseType: !138, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1676, file: !135, line: 96, baseType: !13, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1676, file: !135, line: 97, baseType: !1681, size: 512, offset: 128)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 512, elements: !1447)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !142, file: !135, line: 158, baseType: !1664, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !142, file: !135, line: 161, baseType: !1660, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !142, file: !135, line: 163, baseType: !145, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !142, file: !135, line: 164, baseType: !1686, size: 64, offset: 1152)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!52, !158, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !135, line: 73, size: 128, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1690, file: !135, line: 74, baseType: !13, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1690, file: !135, line: 75, baseType: !13, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1690, file: !135, line: 76, baseType: !158, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !142, file: !135, line: 166, baseType: !1696, size: 64, offset: 1216)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!97, !138, !52}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !142, file: !135, line: 167, baseType: !1700, size: 64, offset: 1280)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!52, !158, !13}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !142, file: !135, line: 168, baseType: !1704, size: 64, offset: 1344)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!52, !138}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !134, file: !135, line: 44, baseType: !820, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !134, file: !135, line: 45, baseType: !109, size: 128, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !134, file: !135, line: 46, baseType: !109, size: 128, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !135, line: 47, baseType: !212, size: 8, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !125, file: !118, line: 372, baseType: !109, size: 128, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !125, file: !118, line: 373, baseType: !109, size: 128, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !125, file: !118, line: 374, baseType: !1714, size: 32, offset: 896)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !118, line: 181, size: 32, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1714, file: !118, line: 182, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1714, file: !118, line: 183, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1714, file: !118, line: 184, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1714, file: !118, line: 185, baseType: !128, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1714, file: !118, line: 186, baseType: !128, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1714, file: !118, line: 187, baseType: !128, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !118, line: 375, baseType: !1723, size: 32, offset: 928)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !118, line: 192, size: 32, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1723, file: !118, line: 193, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1723, file: !118, line: 194, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1723, file: !118, line: 195, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1723, file: !118, line: 196, baseType: !128, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1723, file: !118, line: 197, baseType: !128, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1723, file: !118, line: 198, baseType: !128, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1723, file: !118, line: 199, baseType: !128, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1723, file: !118, line: 200, baseType: !128, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1723, file: !118, line: 201, baseType: !128, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1723, file: !118, line: 202, baseType: !128, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1723, file: !118, line: 203, baseType: !128, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1723, file: !118, line: 204, baseType: !128, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1723, file: !118, line: 205, baseType: !128, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1723, file: !118, line: 206, baseType: !128, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1723, file: !118, line: 207, baseType: !128, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !125, file: !118, line: 376, baseType: !1741, size: 960, offset: 960)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !118, line: 238, size: 960, elements: !1742)
!1742 = !{!1743, !1746, !1747, !1755, !1757, !1758, !1759, !1764, !1769}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1741, file: !118, line: 239, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !118, line: 220, baseType: !1745)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1447)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1741, file: !118, line: 240, baseType: !52, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1741, file: !118, line: 241, baseType: !1748, size: 32, offset: 96)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !118, line: 230, size: 32, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1748, file: !118, line: 231, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1748, file: !118, line: 232, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1748, file: !118, line: 233, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1748, file: !118, line: 234, baseType: !128, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1748, file: !118, line: 235, baseType: !128, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1741, file: !118, line: 242, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !118, line: 221, baseType: !100)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1741, file: !118, line: 243, baseType: !114, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1741, file: !118, line: 244, baseType: !109, size: 128, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1741, file: !118, line: 245, baseType: !1760, size: 320, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !118, line: 222, baseType: !1761)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 40)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1741, file: !118, line: 246, baseType: !1765, size: 160, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !118, line: 223, baseType: !1766)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 20)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1741, file: !118, line: 247, baseType: !1770, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !99, line: 908, size: 192, elements: !1772)
!1772 = !{!1773, !1775, !1780, !1786, !1793, !1799, !1805, !1813}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !99, line: 909, baseType: !1774, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !99, line: 644, baseType: !128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1771, file: !99, line: 913, baseType: !1776, size: 128)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !99, line: 910, size: 128, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !99, line: 911, baseType: !1774, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1776, file: !99, line: 912, baseType: !100, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1771, file: !99, line: 919, baseType: !1781, size: 128)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !99, line: 915, size: 128, elements: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1781, file: !99, line: 916, baseType: !1774, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1781, file: !99, line: 917, baseType: !128, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1781, file: !99, line: 918, baseType: !114, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1771, file: !99, line: 925, baseType: !1787, size: 128)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !99, line: 921, size: 128, elements: !1788)
!1788 = !{!1789, !1790, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !99, line: 922, baseType: !1774, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1787, file: !99, line: 923, baseType: !128, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1787, file: !99, line: 924, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1771, file: !99, line: 931, baseType: !1794, size: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !99, line: 927, size: 128, elements: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1794, file: !99, line: 928, baseType: !1774, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1794, file: !99, line: 929, baseType: !128, size: 32, offset: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1794, file: !99, line: 930, baseType: !1770, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1771, file: !99, line: 937, baseType: !1800, size: 128)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !99, line: 933, size: 128, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1800, file: !99, line: 934, baseType: !1774, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1800, file: !99, line: 935, baseType: !1774, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1800, file: !99, line: 936, baseType: !132, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1771, file: !99, line: 944, baseType: !1806, size: 192)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !99, line: 939, size: 192, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1812}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !99, line: 940, baseType: !1774, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1806, file: !99, line: 941, baseType: !128, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1806, file: !99, line: 942, baseType: !1811, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !99, line: 128, baseType: !100)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1806, file: !99, line: 943, baseType: !128, size: 32, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1771, file: !99, line: 950, baseType: !1814, size: 96)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !99, line: 946, size: 96, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1814, file: !99, line: 947, baseType: !1774, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1814, file: !99, line: 948, baseType: !128, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1814, file: !99, line: 949, baseType: !128, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !125, file: !118, line: 377, baseType: !1820, size: 1408, offset: 1920)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !118, line: 280, size: 1408, elements: !1821)
!1821 = !{!1822, !1823, !1833, !1848}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1820, file: !118, line: 281, baseType: !52, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !118, line: 282, baseType: !1824, size: 32, offset: 32)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !118, line: 259, size: 32, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1824, file: !118, line: 260, baseType: !128, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1824, file: !118, line: 261, baseType: !128, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1824, file: !118, line: 262, baseType: !128, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1824, file: !118, line: 263, baseType: !128, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1824, file: !118, line: 264, baseType: !128, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1824, file: !118, line: 265, baseType: !128, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1824, file: !118, line: 266, baseType: !128, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1820, file: !118, line: 283, baseType: !1834, size: 1280, offset: 64)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1835, size: 1280, elements: !1846)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !118, line: 269, size: 256, elements: !1836)
!1836 = !{!1837, !1843, !1844, !1845}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1835, file: !118, line: 274, baseType: !1838, size: 8)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1835, file: !118, line: 270, size: 8, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1838, file: !118, line: 271, baseType: !212, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1838, file: !118, line: 272, baseType: !212, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1838, file: !118, line: 273, baseType: !212, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1835, file: !118, line: 275, baseType: !52, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1835, file: !118, line: 276, baseType: !52, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1835, file: !118, line: 277, baseType: !109, size: 128, offset: 128)
!1846 = !{!1847}
!1847 = !DISubrange(count: 5)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1820, file: !118, line: 284, baseType: !212, size: 8, offset: 1344)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !125, file: !118, line: 378, baseType: !1850, size: 640, offset: 3328)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !118, line: 330, size: 640, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1861, !1870, !1871, !1872}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1850, file: !118, line: 331, baseType: !132, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1850, file: !118, line: 332, baseType: !100, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1850, file: !118, line: 333, baseType: !100, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1850, file: !118, line: 334, baseType: !109, size: 128, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !118, line: 335, baseType: !1857, size: 8, offset: 320)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !118, line: 320, size: 8, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1857, file: !118, line: 321, baseType: !212, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1857, file: !118, line: 322, baseType: !212, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1850, file: !118, line: 336, baseType: !1862, size: 128, offset: 384)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !118, line: 325, size: 128, elements: !1863)
!1863 = !{!1864, !1869}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1862, file: !118, line: 326, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1862, file: !118, line: 327, baseType: !820, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1850, file: !118, line: 337, baseType: !1372, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1850, file: !118, line: 338, baseType: !52, size: 32, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1850, file: !118, line: 339, baseType: !52, size: 32, offset: 608)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !125, file: !118, line: 379, baseType: !1874, size: 192, offset: 3968)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !118, line: 312, size: 192, elements: !1875)
!1875 = !{!1876, !1877, !1881, !1882}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1874, file: !118, line: 313, baseType: !52, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1874, file: !118, line: 314, baseType: !1878, size: 8, offset: 32)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !118, line: 298, size: 8, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1878, file: !118, line: 299, baseType: !212, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1874, file: !118, line: 315, baseType: !52, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1874, file: !118, line: 316, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !118, line: 302, size: 64, elements: !1885)
!1885 = !{!1886, !1891, !1892, !1893}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1884, file: !118, line: 306, baseType: !1887, size: 8)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !118, line: 303, size: 8, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1887, file: !118, line: 304, baseType: !212, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1887, file: !118, line: 305, baseType: !212, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1884, file: !118, line: 307, baseType: !212, size: 8, offset: 8)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1884, file: !118, line: 308, baseType: !212, size: 8, offset: 16)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1884, file: !118, line: 309, baseType: !52, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !125, file: !118, line: 380, baseType: !1895, size: 64, offset: 4160)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !118, line: 212, size: 64, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1895, file: !118, line: 213, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !118, line: 86, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !118, line: 381, baseType: !1901, size: 384, offset: 4224)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !118, line: 357, size: 384, elements: !1902)
!1902 = !{!1903, !1906, !1907, !1908}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1901, file: !118, line: 358, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1901, file: !118, line: 359, baseType: !109, size: 128, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1901, file: !118, line: 360, baseType: !1904, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1901, file: !118, line: 361, baseType: !109, size: 128, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !125, file: !118, line: 382, baseType: !1910, size: 64, offset: 4608)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !118, line: 124, size: 1216, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1920, !1924, !1928, !1929, !1930}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1911, file: !118, line: 125, baseType: !1292, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1911, file: !118, line: 126, baseType: !109, size: 128, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1911, file: !118, line: 127, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!156, !122, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1911, file: !118, line: 128, baseType: !1921, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!52, !124, !1292}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1911, file: !118, line: 129, baseType: !1925, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !124}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1911, file: !118, line: 130, baseType: !842, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1911, file: !118, line: 131, baseType: !842, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1911, file: !118, line: 132, baseType: !1931, size: 704, offset: 512)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !118, line: 110, size: 704, elements: !1932)
!1932 = !{!1933, !1934, !1938, !1939, !1940}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1931, file: !118, line: 111, baseType: !171, size: 512)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1931, file: !118, line: 112, baseType: !1935, size: 64, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!52, !124}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1931, file: !118, line: 113, baseType: !1925, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1931, file: !118, line: 114, baseType: !156, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1931, file: !118, line: 115, baseType: !156, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !125, file: !118, line: 383, baseType: !1942, size: 64, offset: 4672)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !118, line: 140, size: 256, elements: !1944)
!1944 = !{!1945, !1946, !1950, !1954}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1943, file: !118, line: 141, baseType: !124, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1943, file: !118, line: 142, baseType: !1947, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!52, !124, !128}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1943, file: !118, line: 143, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !124, !128}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1943, file: !118, line: 144, baseType: !1925, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !125, file: !118, line: 384, baseType: !1956, size: 64, offset: 4736)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !118, line: 364, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !125, file: !118, line: 385, baseType: !97, size: 64, offset: 4800)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !125, file: !118, line: 386, baseType: !168, size: 5824, offset: 4864)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !125, file: !118, line: 387, baseType: !13, size: 32, offset: 10688)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !125, file: !118, line: 388, baseType: !13, size: 32, offset: 10720)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !125, file: !118, line: 389, baseType: !109, size: 128, offset: 10752)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !125, file: !118, line: 390, baseType: !505, size: 256, offset: 10880)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !125, file: !118, line: 391, baseType: !1925, size: 64, offset: 11136)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !91, line: 19, baseType: !219)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !99, line: 421, baseType: !128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_node", file: !118, line: 395, size: 1984, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1970, file: !118, line: 396, baseType: !122, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1970, file: !118, line: 397, baseType: !132, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1970, file: !118, line: 398, baseType: !134, size: 512, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1970, file: !118, line: 399, baseType: !138, size: 64, offset: 640)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1970, file: !118, line: 400, baseType: !1901, size: 384, offset: 704)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1970, file: !118, line: 401, baseType: !109, size: 128, offset: 1088)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1970, file: !118, line: 402, baseType: !171, size: 512, offset: 1216)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_done", scope: !1970, file: !118, line: 403, baseType: !917, size: 256, offset: 1728)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_node_attr", file: !2, line: 35, size: 256, elements: !1982)
!1982 = !{!1983, !1984, !1988}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1981, file: !2, line: 36, baseType: !288, size: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1981, file: !2, line: 37, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!282, !1969, !114}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1981, file: !2, line: 38, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!282, !1969, !122, !297}
!1992 = !{!0, !7, !1993, !1995, !1998, !2000, !2002, !2004, !2006, !2008, !2011, !2013, !2018, !2020, !2022, !2036, !2038, !2040, !2042, !2047, !2049, !2054, !2056, !2058, !2060, !2065, !2067, !2069, !2071, !2073, !2075, !2077, !2079, !2081, !2084, !2086, !2088, !2090, !2092, !2094, !2099, !2101, !2104, !2106, !2111, !2119, !2121, !2123, !2125, !2128, !2130, !2133}
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_device_modalias207", scope: !9, file: !2, line: 334, type: !97, isLocal: true, isDefinition: true)
!1995 = !DIGlobalVariableExpression(var: !1996, expr: !DIExpression())
!1996 = distinct !DIGlobalVariable(scope: null, file: !2, line: 546, type: !1997, isLocal: true, isDefinition: true)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1846)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !1997, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(scope: null, file: !2, line: 569, type: !1997, isLocal: true, isDefinition: true)
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !1997, isLocal: true, isDefinition: true)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(scope: null, file: !2, line: 585, type: !1997, isLocal: true, isDefinition: true)
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !1745, isLocal: true, isDefinition: true)
!2008 = !DIGlobalVariableExpression(var: !2009, expr: !DIExpression())
!2009 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !2010, isLocal: true, isDefinition: true)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !486)
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !1745, isLocal: true, isDefinition: true)
!2013 = !DIGlobalVariableExpression(var: !2014, expr: !DIExpression())
!2014 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !2015, isLocal: true, isDefinition: true)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2016)
!2016 = !{!2017}
!2017 = !DISubrange(count: 6)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !2010, isLocal: true, isDefinition: true)
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !1997, isLocal: true, isDefinition: true)
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(name: "dev_attr_path", scope: !9, file: !2, line: 438, type: !2024, isLocal: true, isDefinition: true)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !32, line: 106, size: 256, elements: !2025)
!2025 = !{!2026, !2027, !2032}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2024, file: !32, line: 107, baseType: !288, size: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2024, file: !32, line: 108, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!282, !820, !2031, !114}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2024, file: !32, line: 110, baseType: !2033, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!282, !820, !2031, !122, !297}
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !2010, isLocal: true, isDefinition: true)
!2038 = !DIGlobalVariableExpression(var: !2039, expr: !DIExpression())
!2039 = distinct !DIGlobalVariable(scope: null, file: !2, line: 408, type: !2010, isLocal: true, isDefinition: true)
!2040 = !DIGlobalVariableExpression(var: !2041, expr: !DIExpression())
!2041 = distinct !DIGlobalVariable(name: "dev_attr_hid", scope: !9, file: !2, line: 408, type: !2024, isLocal: true, isDefinition: true)
!2042 = !DIGlobalVariableExpression(var: !2043, expr: !DIExpression())
!2043 = distinct !DIGlobalVariable(scope: null, file: !2, line: 341, type: !2044, isLocal: true, isDefinition: true)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !2045)
!2045 = !{!2046}
!2046 = !DISubrange(count: 9)
!2047 = !DIGlobalVariableExpression(var: !2048, expr: !DIExpression())
!2048 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !9, file: !2, line: 341, type: !2024, isLocal: true, isDefinition: true)
!2049 = !DIGlobalVariableExpression(var: !2050, expr: !DIExpression())
!2050 = distinct !DIGlobalVariable(scope: null, file: !2, line: 465, type: !2051, isLocal: true, isDefinition: true)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !2052)
!2052 = !{!2053}
!2053 = !DISubrange(count: 12)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(name: "dev_attr_description", scope: !9, file: !2, line: 465, type: !2024, isLocal: true, isDefinition: true)
!2056 = !DIGlobalVariableExpression(var: !2057, expr: !DIExpression())
!2057 = distinct !DIGlobalVariable(scope: null, file: !2, line: 429, type: !2010, isLocal: true, isDefinition: true)
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(name: "dev_attr_adr", scope: !9, file: !2, line: 429, type: !2024, isLocal: true, isDefinition: true)
!2060 = !DIGlobalVariableExpression(var: !2061, expr: !DIExpression())
!2061 = distinct !DIGlobalVariable(scope: null, file: !2, line: 425, type: !2062, isLocal: true, isDefinition: true)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !2063)
!2063 = !{!2064}
!2064 = !DISubrange(count: 11)
!2065 = !DIGlobalVariableExpression(var: !2066, expr: !DIExpression())
!2066 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !3, isLocal: true, isDefinition: true)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !2010, isLocal: true, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(name: "dev_attr_uid", scope: !9, file: !2, line: 417, type: !2024, isLocal: true, isDefinition: true)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(scope: null, file: !2, line: 481, type: !2010, isLocal: true, isDefinition: true)
!2073 = !DIGlobalVariableExpression(var: !2074, expr: !DIExpression())
!2074 = distinct !DIGlobalVariable(name: "dev_attr_sun", scope: !9, file: !2, line: 481, type: !2024, isLocal: true, isDefinition: true)
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !2015, isLocal: true, isDefinition: true)
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !2010, isLocal: true, isDefinition: true)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(name: "dev_attr_hrv", scope: !9, file: !2, line: 497, type: !2024, isLocal: true, isDefinition: true)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !2083, isLocal: true, isDefinition: true)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1050)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(name: "dev_attr_status", scope: !9, file: !2, line: 512, type: !2024, isLocal: true, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !2015, isLocal: true, isDefinition: true)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(name: "dev_attr_eject", scope: !9, file: !2, line: 399, type: !2024, isLocal: true, isDefinition: true)
!2090 = !DIGlobalVariableExpression(var: !2091, expr: !DIExpression())
!2091 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !2051, isLocal: true, isDefinition: true)
!2092 = !DIGlobalVariableExpression(var: !2093, expr: !DIExpression())
!2093 = distinct !DIGlobalVariable(name: "dev_attr_power_state", scope: !9, file: !2, line: 367, type: !2024, isLocal: true, isDefinition: true)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !2096, isLocal: true, isDefinition: true)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 17)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(name: "dev_attr_real_power_state", scope: !9, file: !2, line: 357, type: !2024, isLocal: true, isDefinition: true)
!2101 = !DIGlobalVariableExpression(var: !2102, expr: !DIExpression())
!2102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !2103, isLocal: true, isDefinition: true)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !251)
!2104 = !DIGlobalVariableExpression(var: !2105, expr: !DIExpression())
!2105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !2103, isLocal: true, isDefinition: true)
!2106 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression())
!2107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !2108, isLocal: true, isDefinition: true)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !2109)
!2109 = !{!2110}
!2110 = !DISubrange(count: 23)
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(name: "__key", scope: !2113, file: !918, line: 87, type: !2118, isLocal: true, isDefinition: true)
!2113 = distinct !DISubprogram(name: "init_completion", scope: !918, file: !918, line: 84, type: !2114, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !916}
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "x", arg: 1, scope: !2113, file: !918, line: 84, type: !916)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1193, line: 206, elements: !387)
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(scope: null, file: !918, line: 87, type: !2044, isLocal: true, isDefinition: true)
!2121 = !DIGlobalVariableExpression(var: !2122, expr: !DIExpression())
!2122 = distinct !DIGlobalVariable(name: "acpi_data_node_ktype", scope: !9, file: !2, line: 81, type: !265, isLocal: true, isDefinition: true)
!2123 = !DIGlobalVariableExpression(var: !2124, expr: !DIExpression())
!2124 = distinct !DIGlobalVariable(name: "acpi_data_node_sysfs_ops", scope: !9, file: !2, line: 70, type: !274, isLocal: true, isDefinition: true)
!2125 = !DIGlobalVariableExpression(var: !2126, expr: !DIExpression())
!2126 = distinct !DIGlobalVariable(name: "acpi_data_node_default_groups", scope: !9, file: !2, line: 56, type: !2127, isLocal: true, isDefinition: true)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 128, elements: !1048)
!2128 = !DIGlobalVariableExpression(var: !2129, expr: !DIExpression())
!2129 = distinct !DIGlobalVariable(name: "acpi_data_node_default_group", scope: !9, file: !2, line: 56, type: !304, isLocal: true, isDefinition: true)
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(name: "acpi_data_node_default_attrs", scope: !9, file: !2, line: 52, type: !2132, isLocal: true, isDefinition: true)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 128, elements: !1048)
!2133 = !DIGlobalVariableExpression(var: !2134, expr: !DIExpression())
!2134 = distinct !DIGlobalVariable(name: "data_node_path", scope: !9, file: !2, line: 50, type: !1981, isLocal: true, isDefinition: true)
!2135 = !{i32 7, !"Dwarf Version", i32 5}
!2136 = !{i32 2, !"Debug Info Version", i32 3}
!2137 = !{i32 1, !"wchar_size", i32 2}
!2138 = !{i32 8, !"cf-protection-branch", i32 1}
!2139 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2140 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2141 = !{i32 1, !"Code Model", i32 2}
!2142 = !{i32 1, !"override-stack-alignment", i32 8}
!2143 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2144 = distinct !DISubprogram(name: "__acpi_device_uevent_modalias", scope: !2, file: !2, line: 244, type: !2145, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2149)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!52, !2147, !246}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "adev", arg: 1, scope: !2144, file: !2, line: 244, type: !2147)
!2151 = !DILocalVariable(name: "env", arg: 2, scope: !2144, file: !2, line: 245, type: !246)
!2152 = !DILocalVariable(name: "len", scope: !2144, file: !2, line: 247, type: !52)
!2153 = !DILocation(line: 244, column: 61, scope: !2144)
!2154 = !DILocation(line: 245, column: 31, scope: !2144)
!2155 = !DILocation(line: 247, column: 2, scope: !2144)
!2156 = !DILocation(line: 247, column: 6, scope: !2144)
!2157 = !DILocation(line: 249, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 249, column: 6)
!2159 = !DILocation(line: 249, column: 6, scope: !2144)
!2160 = !DILocation(line: 250, column: 3, scope: !2158)
!2161 = !DILocation(line: 252, column: 18, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 252, column: 6)
!2163 = !DILocation(line: 252, column: 24, scope: !2162)
!2164 = !DILocation(line: 252, column: 28, scope: !2162)
!2165 = !DILocation(line: 252, column: 6, scope: !2162)
!2166 = !DILocation(line: 252, column: 6, scope: !2144)
!2167 = !DILocation(line: 253, column: 3, scope: !2162)
!2168 = !DILocation(line: 255, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 255, column: 6)
!2170 = !DILocation(line: 255, column: 6, scope: !2169)
!2171 = !DILocation(line: 255, column: 6, scope: !2144)
!2172 = !DILocation(line: 256, column: 3, scope: !2169)
!2173 = !DILocation(line: 258, column: 6, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 258, column: 6)
!2175 = !DILocation(line: 258, column: 12, scope: !2174)
!2176 = !DILocation(line: 258, column: 17, scope: !2174)
!2177 = !DILocation(line: 258, column: 6, scope: !2144)
!2178 = !DILocation(line: 259, column: 28, scope: !2174)
!2179 = !DILocation(line: 259, column: 35, scope: !2174)
!2180 = !DILocation(line: 259, column: 40, scope: !2174)
!2181 = !DILocation(line: 259, column: 44, scope: !2174)
!2182 = !DILocation(line: 259, column: 49, scope: !2174)
!2183 = !DILocation(line: 259, column: 56, scope: !2174)
!2184 = !DILocation(line: 260, column: 26, scope: !2174)
!2185 = !DILocation(line: 260, column: 31, scope: !2174)
!2186 = !DILocation(line: 260, column: 24, scope: !2174)
!2187 = !DILocation(line: 260, column: 7, scope: !2174)
!2188 = !DILocation(line: 259, column: 9, scope: !2174)
!2189 = !DILocation(line: 259, column: 7, scope: !2174)
!2190 = !DILocation(line: 259, column: 3, scope: !2174)
!2191 = !DILocation(line: 262, column: 29, scope: !2174)
!2192 = !DILocation(line: 262, column: 36, scope: !2174)
!2193 = !DILocation(line: 262, column: 41, scope: !2174)
!2194 = !DILocation(line: 262, column: 45, scope: !2174)
!2195 = !DILocation(line: 262, column: 50, scope: !2174)
!2196 = !DILocation(line: 262, column: 57, scope: !2174)
!2197 = !DILocation(line: 263, column: 27, scope: !2174)
!2198 = !DILocation(line: 263, column: 32, scope: !2174)
!2199 = !DILocation(line: 263, column: 25, scope: !2174)
!2200 = !DILocation(line: 263, column: 8, scope: !2174)
!2201 = !DILocation(line: 262, column: 9, scope: !2174)
!2202 = !DILocation(line: 262, column: 7, scope: !2174)
!2203 = !DILocation(line: 264, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 264, column: 6)
!2205 = !DILocation(line: 264, column: 10, scope: !2204)
!2206 = !DILocation(line: 264, column: 6, scope: !2144)
!2207 = !DILocation(line: 265, column: 10, scope: !2204)
!2208 = !DILocation(line: 265, column: 3, scope: !2204)
!2209 = !DILocation(line: 267, column: 17, scope: !2144)
!2210 = !DILocation(line: 267, column: 2, scope: !2144)
!2211 = !DILocation(line: 267, column: 7, scope: !2144)
!2212 = !DILocation(line: 267, column: 14, scope: !2144)
!2213 = !DILocation(line: 269, column: 2, scope: !2144)
!2214 = !DILocation(line: 270, column: 1, scope: !2144)
!2215 = distinct !DISubprogram(name: "list_empty", scope: !2216, file: !2216, line: 371, type: !2217, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2221)
!2216 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!52, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "head", arg: 1, scope: !2215, file: !2216, line: 371, type: !2219)
!2223 = !DILocation(line: 371, column: 54, scope: !2215)
!2224 = !DILocation(line: 373, column: 9, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2215, file: !2216, line: 373, column: 9)
!2226 = !DILocation(line: 373, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2225, file: !2216, line: 373, column: 9)
!2228 = !DILocation(line: 373, column: 34, scope: !2215)
!2229 = !DILocation(line: 373, column: 31, scope: !2215)
!2230 = !DILocation(line: 373, column: 2, scope: !2215)
!2231 = !DISubprogram(name: "add_uevent_var", scope: !172, file: !172, line: 220, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!52, !246, !122, null}
!2234 = distinct !DISubprogram(name: "create_of_modalias", scope: !2, file: !2, line: 194, type: !2235, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!52, !2147, !114, !52}
!2237 = !{!2238, !2239, !2240, !2241, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2238 = !DILocalVariable(name: "acpi_dev", arg: 1, scope: !2234, file: !2, line: 194, type: !2147)
!2239 = !DILocalVariable(name: "modalias", arg: 2, scope: !2234, file: !2, line: 194, type: !114)
!2240 = !DILocalVariable(name: "size", arg: 3, scope: !2234, file: !2, line: 195, type: !52)
!2241 = !DILocalVariable(name: "buf", scope: !2234, file: !2, line: 197, type: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !99, line: 978, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2242, file: !99, line: 979, baseType: !98, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2242, file: !99, line: 980, baseType: !97, size: 64, offset: 64)
!2246 = !DILocalVariable(name: "of_compatible", scope: !2234, file: !2, line: 198, type: !1904)
!2247 = !DILocalVariable(name: "obj", scope: !2234, file: !2, line: 198, type: !1904)
!2248 = !DILocalVariable(name: "status", scope: !2234, file: !2, line: 199, type: !1968)
!2249 = !DILocalVariable(name: "len", scope: !2234, file: !2, line: 200, type: !52)
!2250 = !DILocalVariable(name: "count", scope: !2234, file: !2, line: 200, type: !52)
!2251 = !DILocalVariable(name: "i", scope: !2234, file: !2, line: 201, type: !52)
!2252 = !DILocalVariable(name: "nval", scope: !2234, file: !2, line: 201, type: !52)
!2253 = !DILocalVariable(name: "c", scope: !2234, file: !2, line: 202, type: !114)
!2254 = !DILocation(line: 194, column: 57, scope: !2234)
!2255 = !DILocation(line: 194, column: 73, scope: !2234)
!2256 = !DILocation(line: 195, column: 14, scope: !2234)
!2257 = !DILocation(line: 197, column: 2, scope: !2234)
!2258 = !DILocation(line: 197, column: 21, scope: !2234)
!2259 = !DILocation(line: 198, column: 2, scope: !2234)
!2260 = !DILocation(line: 198, column: 27, scope: !2234)
!2261 = !DILocation(line: 198, column: 43, scope: !2234)
!2262 = !DILocation(line: 199, column: 2, scope: !2234)
!2263 = !DILocation(line: 199, column: 14, scope: !2234)
!2264 = !DILocation(line: 200, column: 2, scope: !2234)
!2265 = !DILocation(line: 200, column: 6, scope: !2234)
!2266 = !DILocation(line: 200, column: 11, scope: !2234)
!2267 = !DILocation(line: 201, column: 2, scope: !2234)
!2268 = !DILocation(line: 201, column: 6, scope: !2234)
!2269 = !DILocation(line: 201, column: 9, scope: !2234)
!2270 = !DILocation(line: 202, column: 2, scope: !2234)
!2271 = !DILocation(line: 202, column: 8, scope: !2234)
!2272 = !DILocation(line: 204, column: 25, scope: !2234)
!2273 = !DILocation(line: 204, column: 35, scope: !2234)
!2274 = !DILocation(line: 204, column: 11, scope: !2234)
!2275 = !DILocation(line: 204, column: 9, scope: !2234)
!2276 = !DILocation(line: 205, column: 6, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 205, column: 6)
!2278 = !DILocation(line: 205, column: 6, scope: !2234)
!2279 = !DILocation(line: 206, column: 3, scope: !2277)
!2280 = !DILocation(line: 209, column: 15, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 209, column: 2)
!2282 = !DILocation(line: 209, column: 9, scope: !2281)
!2283 = !DILocation(line: 209, column: 7, scope: !2281)
!2284 = !DILocation(line: 209, column: 25, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 209, column: 2)
!2286 = !DILocation(line: 209, column: 24, scope: !2285)
!2287 = !DILocation(line: 209, column: 27, scope: !2285)
!2288 = !DILocation(line: 209, column: 2, scope: !2281)
!2289 = !DILocation(line: 210, column: 8, scope: !2285)
!2290 = !DILocation(line: 210, column: 4, scope: !2285)
!2291 = !DILocation(line: 210, column: 6, scope: !2285)
!2292 = !DILocation(line: 210, column: 3, scope: !2285)
!2293 = !DILocation(line: 209, column: 37, scope: !2285)
!2294 = !DILocation(line: 209, column: 2, scope: !2285)
!2295 = distinct !{!2295, !2288, !2296, !2297, !2298}
!2296 = !DILocation(line: 210, column: 8, scope: !2281)
!2297 = !{!"llvm.loop.mustprogress"}
!2298 = !{!"llvm.loop.unroll.disable"}
!2299 = !DILocation(line: 212, column: 17, scope: !2234)
!2300 = !DILocation(line: 212, column: 27, scope: !2234)
!2301 = !DILocation(line: 212, column: 56, scope: !2234)
!2302 = !DILocation(line: 212, column: 8, scope: !2234)
!2303 = !DILocation(line: 212, column: 6, scope: !2234)
!2304 = !DILocation(line: 213, column: 2, scope: !2234)
!2305 = !DILocation(line: 215, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 215, column: 6)
!2307 = !DILocation(line: 215, column: 13, scope: !2306)
!2308 = !DILocation(line: 215, column: 10, scope: !2306)
!2309 = !DILocation(line: 215, column: 6, scope: !2234)
!2310 = !DILocation(line: 216, column: 3, scope: !2306)
!2311 = !DILocation(line: 218, column: 10, scope: !2234)
!2312 = !DILocation(line: 218, column: 7, scope: !2234)
!2313 = !DILocation(line: 220, column: 18, scope: !2234)
!2314 = !DILocation(line: 220, column: 28, scope: !2234)
!2315 = !DILocation(line: 220, column: 33, scope: !2234)
!2316 = !DILocation(line: 220, column: 16, scope: !2234)
!2317 = !DILocation(line: 221, column: 6, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 221, column: 6)
!2319 = !DILocation(line: 221, column: 21, scope: !2318)
!2320 = !DILocation(line: 221, column: 26, scope: !2318)
!2321 = !DILocation(line: 221, column: 6, scope: !2234)
!2322 = !DILocation(line: 222, column: 10, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 221, column: 48)
!2324 = !DILocation(line: 222, column: 33, scope: !2323)
!2325 = !DILocation(line: 222, column: 8, scope: !2323)
!2326 = !DILocation(line: 223, column: 9, scope: !2323)
!2327 = !DILocation(line: 223, column: 32, scope: !2323)
!2328 = !DILocation(line: 223, column: 7, scope: !2323)
!2329 = !DILocation(line: 224, column: 2, scope: !2323)
!2330 = !DILocation(line: 225, column: 8, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 224, column: 9)
!2332 = !DILocation(line: 226, column: 9, scope: !2331)
!2333 = !DILocation(line: 226, column: 7, scope: !2331)
!2334 = !DILocation(line: 228, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 228, column: 2)
!2336 = !DILocation(line: 228, column: 7, scope: !2335)
!2337 = !DILocation(line: 228, column: 14, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !2, line: 228, column: 2)
!2339 = !DILocation(line: 228, column: 18, scope: !2338)
!2340 = !DILocation(line: 228, column: 16, scope: !2338)
!2341 = !DILocation(line: 228, column: 2, scope: !2335)
!2342 = !DILocation(line: 229, column: 21, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 228, column: 36)
!2344 = !DILocation(line: 229, column: 30, scope: !2343)
!2345 = !DILocation(line: 229, column: 36, scope: !2343)
!2346 = !DILocation(line: 230, column: 6, scope: !2343)
!2347 = !DILocation(line: 230, column: 18, scope: !2343)
!2348 = !DILocation(line: 229, column: 11, scope: !2343)
!2349 = !DILocation(line: 229, column: 9, scope: !2343)
!2350 = !DILocation(line: 231, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 231, column: 7)
!2352 = !DILocation(line: 231, column: 13, scope: !2351)
!2353 = !DILocation(line: 231, column: 7, scope: !2343)
!2354 = !DILocation(line: 232, column: 4, scope: !2351)
!2355 = !DILocation(line: 234, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 234, column: 7)
!2357 = !DILocation(line: 234, column: 16, scope: !2356)
!2358 = !DILocation(line: 234, column: 13, scope: !2356)
!2359 = !DILocation(line: 234, column: 7, scope: !2343)
!2360 = !DILocation(line: 235, column: 4, scope: !2356)
!2361 = !DILocation(line: 237, column: 10, scope: !2343)
!2362 = !DILocation(line: 237, column: 7, scope: !2343)
!2363 = !DILocation(line: 238, column: 11, scope: !2343)
!2364 = !DILocation(line: 238, column: 8, scope: !2343)
!2365 = !DILocation(line: 239, column: 2, scope: !2343)
!2366 = !DILocation(line: 228, column: 25, scope: !2338)
!2367 = !DILocation(line: 228, column: 32, scope: !2338)
!2368 = !DILocation(line: 228, column: 2, scope: !2338)
!2369 = distinct !{!2369, !2341, !2370, !2297, !2298}
!2370 = !DILocation(line: 239, column: 2, scope: !2335)
!2371 = !DILocation(line: 240, column: 2, scope: !2234)
!2372 = !DILocation(line: 240, column: 11, scope: !2234)
!2373 = !DILocation(line: 240, column: 16, scope: !2234)
!2374 = !DILocation(line: 241, column: 9, scope: !2234)
!2375 = !DILocation(line: 241, column: 2, scope: !2234)
!2376 = !DILocation(line: 242, column: 1, scope: !2234)
!2377 = distinct !DISubprogram(name: "create_pnp_modalias", scope: !2, file: !2, line: 136, type: !2235, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2388, !2391, !2394}
!2379 = !DILocalVariable(name: "acpi_dev", arg: 1, scope: !2377, file: !2, line: 136, type: !2147)
!2380 = !DILocalVariable(name: "modalias", arg: 2, scope: !2377, file: !2, line: 136, type: !114)
!2381 = !DILocalVariable(name: "size", arg: 3, scope: !2377, file: !2, line: 137, type: !52)
!2382 = !DILocalVariable(name: "len", scope: !2377, file: !2, line: 139, type: !52)
!2383 = !DILocalVariable(name: "count", scope: !2377, file: !2, line: 140, type: !52)
!2384 = !DILocalVariable(name: "id", scope: !2377, file: !2, line: 141, type: !116)
!2385 = !DILocalVariable(name: "__mptr", scope: !2386, file: !2, line: 153, type: !97)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 153, column: 2)
!2387 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 153, column: 2)
!2388 = !DILocalVariable(name: "__mptr", scope: !2389, file: !2, line: 153, type: !97)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !2, line: 153, column: 2)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 153, column: 2)
!2391 = !DILocalVariable(name: "__mptr", scope: !2392, file: !2, line: 166, type: !97)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !2, line: 166, column: 2)
!2393 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 166, column: 2)
!2394 = !DILocalVariable(name: "__mptr", scope: !2395, file: !2, line: 166, type: !97)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 166, column: 2)
!2396 = distinct !DILexicalBlock(scope: !2393, file: !2, line: 166, column: 2)
!2397 = !DILocation(line: 136, column: 58, scope: !2377)
!2398 = !DILocation(line: 136, column: 74, scope: !2377)
!2399 = !DILocation(line: 137, column: 15, scope: !2377)
!2400 = !DILocation(line: 139, column: 2, scope: !2377)
!2401 = !DILocation(line: 139, column: 6, scope: !2377)
!2402 = !DILocation(line: 140, column: 2, scope: !2377)
!2403 = !DILocation(line: 140, column: 6, scope: !2377)
!2404 = !DILocation(line: 141, column: 2, scope: !2377)
!2405 = !DILocation(line: 141, column: 27, scope: !2377)
!2406 = !DILocation(line: 144, column: 30, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 144, column: 6)
!2408 = !DILocation(line: 144, column: 7, scope: !2407)
!2409 = !DILocation(line: 144, column: 6, scope: !2377)
!2410 = !DILocation(line: 145, column: 3, scope: !2407)
!2411 = !DILocation(line: 152, column: 8, scope: !2377)
!2412 = !DILocation(line: 153, column: 2, scope: !2386)
!2413 = !DILocation(line: 153, column: 2, scope: !2387)
!2414 = !DILocation(line: 153, column: 2, scope: !2390)
!2415 = !DILocation(line: 154, column: 14, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2390, file: !2, line: 154, column: 7)
!2417 = !DILocation(line: 154, column: 18, scope: !2416)
!2418 = !DILocation(line: 154, column: 7, scope: !2416)
!2419 = !DILocation(line: 154, column: 7, scope: !2390)
!2420 = !DILocation(line: 155, column: 9, scope: !2416)
!2421 = !DILocation(line: 155, column: 4, scope: !2416)
!2422 = !DILocation(line: 154, column: 43, scope: !2416)
!2423 = !DILocation(line: 153, column: 2, scope: !2389)
!2424 = distinct !{!2424, !2413, !2425, !2297, !2298}
!2425 = !DILocation(line: 155, column: 9, scope: !2387)
!2426 = !DILocation(line: 157, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 157, column: 6)
!2428 = !DILocation(line: 157, column: 6, scope: !2377)
!2429 = !DILocation(line: 158, column: 3, scope: !2427)
!2430 = !DILocation(line: 160, column: 17, scope: !2377)
!2431 = !DILocation(line: 160, column: 27, scope: !2377)
!2432 = !DILocation(line: 160, column: 8, scope: !2377)
!2433 = !DILocation(line: 160, column: 6, scope: !2377)
!2434 = !DILocation(line: 161, column: 6, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 161, column: 6)
!2436 = !DILocation(line: 161, column: 13, scope: !2435)
!2437 = !DILocation(line: 161, column: 10, scope: !2435)
!2438 = !DILocation(line: 161, column: 6, scope: !2377)
!2439 = !DILocation(line: 162, column: 3, scope: !2435)
!2440 = !DILocation(line: 164, column: 10, scope: !2377)
!2441 = !DILocation(line: 164, column: 7, scope: !2377)
!2442 = !DILocation(line: 166, column: 2, scope: !2392)
!2443 = !DILocation(line: 166, column: 2, scope: !2393)
!2444 = !DILocation(line: 166, column: 2, scope: !2396)
!2445 = !DILocation(line: 167, column: 15, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 167, column: 7)
!2447 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 166, column: 52)
!2448 = !DILocation(line: 167, column: 19, scope: !2446)
!2449 = !DILocation(line: 167, column: 8, scope: !2446)
!2450 = !DILocation(line: 167, column: 7, scope: !2447)
!2451 = !DILocation(line: 168, column: 4, scope: !2446)
!2452 = !DILocation(line: 170, column: 21, scope: !2447)
!2453 = !DILocation(line: 170, column: 30, scope: !2447)
!2454 = !DILocation(line: 170, column: 36, scope: !2447)
!2455 = !DILocation(line: 170, column: 49, scope: !2447)
!2456 = !DILocation(line: 170, column: 53, scope: !2447)
!2457 = !DILocation(line: 170, column: 11, scope: !2447)
!2458 = !DILocation(line: 170, column: 9, scope: !2447)
!2459 = !DILocation(line: 171, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 171, column: 7)
!2461 = !DILocation(line: 171, column: 13, scope: !2460)
!2462 = !DILocation(line: 171, column: 7, scope: !2447)
!2463 = !DILocation(line: 172, column: 4, scope: !2460)
!2464 = !DILocation(line: 174, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 174, column: 7)
!2466 = !DILocation(line: 174, column: 16, scope: !2465)
!2467 = !DILocation(line: 174, column: 13, scope: !2465)
!2468 = !DILocation(line: 174, column: 7, scope: !2447)
!2469 = !DILocation(line: 175, column: 4, scope: !2465)
!2470 = !DILocation(line: 177, column: 10, scope: !2447)
!2471 = !DILocation(line: 177, column: 7, scope: !2447)
!2472 = !DILocation(line: 178, column: 11, scope: !2447)
!2473 = !DILocation(line: 178, column: 8, scope: !2447)
!2474 = !DILocation(line: 179, column: 2, scope: !2447)
!2475 = !DILocation(line: 166, column: 2, scope: !2395)
!2476 = distinct !{!2476, !2443, !2477, !2297, !2298}
!2477 = !DILocation(line: 179, column: 2, scope: !2393)
!2478 = !DILocation(line: 180, column: 2, scope: !2377)
!2479 = !DILocation(line: 180, column: 11, scope: !2377)
!2480 = !DILocation(line: 180, column: 16, scope: !2377)
!2481 = !DILocation(line: 181, column: 9, scope: !2377)
!2482 = !DILocation(line: 181, column: 2, scope: !2377)
!2483 = !DILocation(line: 182, column: 1, scope: !2377)
!2484 = distinct !DISubprogram(name: "acpi_device_uevent_modalias", scope: !2, file: !2, line: 282, type: !834, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2485)
!2485 = !{!2486, !2487}
!2486 = !DILocalVariable(name: "dev", arg: 1, scope: !2484, file: !2, line: 282, type: !166)
!2487 = !DILocalVariable(name: "env", arg: 2, scope: !2484, file: !2, line: 282, type: !246)
!2488 = !DILocation(line: 282, column: 54, scope: !2484)
!2489 = !DILocation(line: 282, column: 83, scope: !2484)
!2490 = !DILocation(line: 284, column: 60, scope: !2484)
!2491 = !DILocation(line: 284, column: 39, scope: !2484)
!2492 = !DILocation(line: 284, column: 66, scope: !2484)
!2493 = !DILocation(line: 284, column: 9, scope: !2484)
!2494 = !DILocation(line: 284, column: 2, scope: !2484)
!2495 = !DISubprogram(name: "acpi_companion_match", scope: !2496, file: !2496, line: 119, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2496 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2147, !166}
!2499 = distinct !DISubprogram(name: "acpi_device_modalias", scope: !2, file: !2, line: 330, type: !2500, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!52, !820, !114, !52}
!2502 = !{!2503, !2504, !2505}
!2503 = !DILocalVariable(name: "dev", arg: 1, scope: !2499, file: !2, line: 330, type: !820)
!2504 = !DILocalVariable(name: "buf", arg: 2, scope: !2499, file: !2, line: 330, type: !114)
!2505 = !DILocalVariable(name: "size", arg: 3, scope: !2499, file: !2, line: 330, type: !52)
!2506 = !DILocation(line: 330, column: 41, scope: !2499)
!2507 = !DILocation(line: 330, column: 52, scope: !2499)
!2508 = !DILocation(line: 330, column: 61, scope: !2499)
!2509 = !DILocation(line: 332, column: 53, scope: !2499)
!2510 = !DILocation(line: 332, column: 32, scope: !2499)
!2511 = !DILocation(line: 332, column: 59, scope: !2499)
!2512 = !DILocation(line: 332, column: 64, scope: !2499)
!2513 = !DILocation(line: 332, column: 9, scope: !2499)
!2514 = !DILocation(line: 332, column: 2, scope: !2499)
!2515 = distinct !DISubprogram(name: "__acpi_device_modalias", scope: !2, file: !2, line: 288, type: !2235, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2516)
!2516 = !{!2517, !2518, !2519, !2520, !2521}
!2517 = !DILocalVariable(name: "adev", arg: 1, scope: !2515, file: !2, line: 288, type: !2147)
!2518 = !DILocalVariable(name: "buf", arg: 2, scope: !2515, file: !2, line: 288, type: !114)
!2519 = !DILocalVariable(name: "size", arg: 3, scope: !2515, file: !2, line: 288, type: !52)
!2520 = !DILocalVariable(name: "len", scope: !2515, file: !2, line: 290, type: !52)
!2521 = !DILocalVariable(name: "count", scope: !2515, file: !2, line: 290, type: !52)
!2522 = !DILocation(line: 288, column: 61, scope: !2515)
!2523 = !DILocation(line: 288, column: 73, scope: !2515)
!2524 = !DILocation(line: 288, column: 82, scope: !2515)
!2525 = !DILocation(line: 290, column: 2, scope: !2515)
!2526 = !DILocation(line: 290, column: 6, scope: !2515)
!2527 = !DILocation(line: 290, column: 11, scope: !2515)
!2528 = !DILocation(line: 292, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 292, column: 6)
!2530 = !DILocation(line: 292, column: 6, scope: !2515)
!2531 = !DILocation(line: 293, column: 3, scope: !2529)
!2532 = !DILocation(line: 295, column: 18, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 295, column: 6)
!2534 = !DILocation(line: 295, column: 24, scope: !2533)
!2535 = !DILocation(line: 295, column: 28, scope: !2533)
!2536 = !DILocation(line: 295, column: 6, scope: !2533)
!2537 = !DILocation(line: 295, column: 6, scope: !2515)
!2538 = !DILocation(line: 296, column: 3, scope: !2533)
!2539 = !DILocation(line: 298, column: 28, scope: !2515)
!2540 = !DILocation(line: 298, column: 34, scope: !2515)
!2541 = !DILocation(line: 298, column: 39, scope: !2515)
!2542 = !DILocation(line: 298, column: 44, scope: !2515)
!2543 = !DILocation(line: 298, column: 8, scope: !2515)
!2544 = !DILocation(line: 298, column: 6, scope: !2515)
!2545 = !DILocation(line: 299, column: 6, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 299, column: 6)
!2547 = !DILocation(line: 299, column: 10, scope: !2546)
!2548 = !DILocation(line: 299, column: 6, scope: !2515)
!2549 = !DILocation(line: 300, column: 10, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !2, line: 299, column: 15)
!2551 = !DILocation(line: 300, column: 3, scope: !2550)
!2552 = !DILocation(line: 301, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2546, file: !2, line: 301, column: 13)
!2554 = !DILocation(line: 301, column: 17, scope: !2553)
!2555 = !DILocation(line: 301, column: 13, scope: !2546)
!2556 = !DILocation(line: 302, column: 3, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !2, line: 301, column: 22)
!2558 = !DILocation(line: 302, column: 10, scope: !2557)
!2559 = !DILocation(line: 302, column: 14, scope: !2557)
!2560 = !DILocation(line: 303, column: 11, scope: !2557)
!2561 = !DILocation(line: 303, column: 8, scope: !2557)
!2562 = !DILocation(line: 304, column: 2, scope: !2557)
!2563 = !DILocation(line: 305, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 305, column: 6)
!2565 = !DILocation(line: 305, column: 13, scope: !2564)
!2566 = !DILocation(line: 305, column: 18, scope: !2564)
!2567 = !DILocation(line: 305, column: 6, scope: !2515)
!2568 = !DILocation(line: 306, column: 10, scope: !2564)
!2569 = !DILocation(line: 306, column: 3, scope: !2564)
!2570 = !DILocation(line: 308, column: 29, scope: !2515)
!2571 = !DILocation(line: 308, column: 35, scope: !2515)
!2572 = !DILocation(line: 308, column: 41, scope: !2515)
!2573 = !DILocation(line: 308, column: 39, scope: !2515)
!2574 = !DILocation(line: 308, column: 46, scope: !2515)
!2575 = !DILocation(line: 308, column: 51, scope: !2515)
!2576 = !DILocation(line: 308, column: 10, scope: !2515)
!2577 = !DILocation(line: 308, column: 8, scope: !2515)
!2578 = !DILocation(line: 309, column: 6, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 309, column: 6)
!2580 = !DILocation(line: 309, column: 12, scope: !2579)
!2581 = !DILocation(line: 309, column: 6, scope: !2515)
!2582 = !DILocation(line: 310, column: 10, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 309, column: 17)
!2584 = !DILocation(line: 310, column: 3, scope: !2583)
!2585 = !DILocation(line: 311, column: 13, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 311, column: 13)
!2587 = !DILocation(line: 311, column: 19, scope: !2586)
!2588 = !DILocation(line: 311, column: 13, scope: !2579)
!2589 = !DILocation(line: 312, column: 10, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 311, column: 24)
!2591 = !DILocation(line: 312, column: 7, scope: !2590)
!2592 = !DILocation(line: 313, column: 3, scope: !2590)
!2593 = !DILocation(line: 313, column: 10, scope: !2590)
!2594 = !DILocation(line: 313, column: 14, scope: !2590)
!2595 = !DILocation(line: 314, column: 2, scope: !2590)
!2596 = !DILocation(line: 316, column: 9, scope: !2515)
!2597 = !DILocation(line: 316, column: 2, scope: !2515)
!2598 = !DILocation(line: 317, column: 1, scope: !2515)
!2599 = distinct !DISubprogram(name: "acpi_device_setup_files", scope: !2, file: !2, line: 518, type: !1936, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2600)
!2600 = !{!2601, !2602, !2603, !2604, !2605}
!2601 = !DILocalVariable(name: "dev", arg: 1, scope: !2599, file: !2, line: 518, type: !124)
!2602 = !DILocalVariable(name: "buffer", scope: !2599, file: !2, line: 520, type: !2242)
!2603 = !DILocalVariable(name: "status", scope: !2599, file: !2, line: 521, type: !1968)
!2604 = !DILocalVariable(name: "result", scope: !2599, file: !2, line: 522, type: !52)
!2605 = !DILabel(scope: !2599, name: "end", file: !2, line: 603)
!2606 = !DILocation(line: 518, column: 49, scope: !2599)
!2607 = !DILocation(line: 520, column: 2, scope: !2599)
!2608 = !DILocation(line: 520, column: 21, scope: !2599)
!2609 = !DILocation(line: 521, column: 2, scope: !2599)
!2610 = !DILocation(line: 521, column: 14, scope: !2599)
!2611 = !DILocation(line: 522, column: 2, scope: !2599)
!2612 = !DILocation(line: 522, column: 6, scope: !2599)
!2613 = !DILocation(line: 527, column: 6, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 527, column: 6)
!2615 = !DILocation(line: 527, column: 11, scope: !2614)
!2616 = !DILocation(line: 527, column: 6, scope: !2599)
!2617 = !DILocation(line: 528, column: 32, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !2, line: 527, column: 19)
!2619 = !DILocation(line: 528, column: 37, scope: !2618)
!2620 = !DILocation(line: 528, column: 12, scope: !2618)
!2621 = !DILocation(line: 528, column: 10, scope: !2618)
!2622 = !DILocation(line: 529, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 529, column: 7)
!2624 = !DILocation(line: 529, column: 7, scope: !2618)
!2625 = !DILocation(line: 530, column: 4, scope: !2623)
!2626 = !DILocation(line: 531, column: 2, scope: !2618)
!2627 = !DILocation(line: 533, column: 19, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 533, column: 6)
!2629 = !DILocation(line: 533, column: 24, scope: !2628)
!2630 = !DILocation(line: 533, column: 28, scope: !2628)
!2631 = !DILocation(line: 533, column: 7, scope: !2628)
!2632 = !DILocation(line: 533, column: 6, scope: !2599)
!2633 = !DILocation(line: 534, column: 32, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !2, line: 533, column: 34)
!2635 = !DILocation(line: 534, column: 37, scope: !2634)
!2636 = !DILocation(line: 534, column: 12, scope: !2634)
!2637 = !DILocation(line: 534, column: 10, scope: !2634)
!2638 = !DILocation(line: 535, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !2, line: 535, column: 7)
!2640 = !DILocation(line: 535, column: 7, scope: !2634)
!2641 = !DILocation(line: 536, column: 4, scope: !2639)
!2642 = !DILocation(line: 538, column: 32, scope: !2634)
!2643 = !DILocation(line: 538, column: 37, scope: !2634)
!2644 = !DILocation(line: 538, column: 12, scope: !2634)
!2645 = !DILocation(line: 538, column: 10, scope: !2634)
!2646 = !DILocation(line: 539, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2634, file: !2, line: 539, column: 7)
!2648 = !DILocation(line: 539, column: 7, scope: !2634)
!2649 = !DILocation(line: 540, column: 4, scope: !2647)
!2650 = !DILocation(line: 541, column: 2, scope: !2634)
!2651 = !DILocation(line: 546, column: 22, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 546, column: 6)
!2653 = !DILocation(line: 546, column: 27, scope: !2652)
!2654 = !DILocation(line: 546, column: 6, scope: !2652)
!2655 = !DILocation(line: 546, column: 6, scope: !2599)
!2656 = !DILocation(line: 547, column: 39, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 546, column: 44)
!2658 = !DILocation(line: 547, column: 44, scope: !2657)
!2659 = !DILocation(line: 547, column: 12, scope: !2657)
!2660 = !DILocation(line: 547, column: 10, scope: !2657)
!2661 = !DILocation(line: 550, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2657, file: !2, line: 550, column: 7)
!2663 = !DILocation(line: 550, column: 7, scope: !2657)
!2664 = !DILocation(line: 551, column: 11, scope: !2662)
!2665 = !DILocation(line: 551, column: 19, scope: !2662)
!2666 = !DILocation(line: 551, column: 4, scope: !2662)
!2667 = !DILocation(line: 552, column: 29, scope: !2657)
!2668 = !DILocation(line: 552, column: 3, scope: !2657)
!2669 = !DILocation(line: 552, column: 8, scope: !2657)
!2670 = !DILocation(line: 552, column: 12, scope: !2657)
!2671 = !DILocation(line: 552, column: 20, scope: !2657)
!2672 = !DILocation(line: 553, column: 32, scope: !2657)
!2673 = !DILocation(line: 553, column: 37, scope: !2657)
!2674 = !DILocation(line: 553, column: 12, scope: !2657)
!2675 = !DILocation(line: 553, column: 10, scope: !2657)
!2676 = !DILocation(line: 554, column: 7, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2657, file: !2, line: 554, column: 7)
!2678 = !DILocation(line: 554, column: 7, scope: !2657)
!2679 = !DILocation(line: 555, column: 4, scope: !2677)
!2680 = !DILocation(line: 556, column: 2, scope: !2657)
!2681 = !DILocation(line: 558, column: 6, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 558, column: 6)
!2683 = !DILocation(line: 558, column: 11, scope: !2682)
!2684 = !DILocation(line: 558, column: 15, scope: !2682)
!2685 = !DILocation(line: 558, column: 20, scope: !2682)
!2686 = !DILocation(line: 558, column: 6, scope: !2599)
!2687 = !DILocation(line: 559, column: 32, scope: !2682)
!2688 = !DILocation(line: 559, column: 37, scope: !2682)
!2689 = !DILocation(line: 559, column: 12, scope: !2682)
!2690 = !DILocation(line: 559, column: 10, scope: !2682)
!2691 = !DILocation(line: 559, column: 3, scope: !2682)
!2692 = !DILocation(line: 560, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 560, column: 6)
!2694 = !DILocation(line: 560, column: 11, scope: !2693)
!2695 = !DILocation(line: 560, column: 15, scope: !2693)
!2696 = !DILocation(line: 560, column: 6, scope: !2599)
!2697 = !DILocation(line: 561, column: 32, scope: !2693)
!2698 = !DILocation(line: 561, column: 37, scope: !2693)
!2699 = !DILocation(line: 561, column: 12, scope: !2693)
!2700 = !DILocation(line: 561, column: 10, scope: !2693)
!2701 = !DILocation(line: 561, column: 3, scope: !2693)
!2702 = !DILocation(line: 563, column: 22, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 563, column: 6)
!2704 = !DILocation(line: 563, column: 27, scope: !2703)
!2705 = !DILocation(line: 563, column: 6, scope: !2703)
!2706 = !DILocation(line: 563, column: 6, scope: !2599)
!2707 = !DILocation(line: 564, column: 32, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 563, column: 44)
!2709 = !DILocation(line: 564, column: 37, scope: !2708)
!2710 = !DILocation(line: 564, column: 12, scope: !2708)
!2711 = !DILocation(line: 564, column: 10, scope: !2708)
!2712 = !DILocation(line: 565, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2708, file: !2, line: 565, column: 7)
!2714 = !DILocation(line: 565, column: 7, scope: !2708)
!2715 = !DILocation(line: 566, column: 4, scope: !2713)
!2716 = !DILocation(line: 567, column: 2, scope: !2708)
!2717 = !DILocation(line: 569, column: 22, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 569, column: 6)
!2719 = !DILocation(line: 569, column: 27, scope: !2718)
!2720 = !DILocation(line: 569, column: 6, scope: !2718)
!2721 = !DILocation(line: 569, column: 6, scope: !2599)
!2722 = !DILocation(line: 570, column: 32, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2718, file: !2, line: 569, column: 44)
!2724 = !DILocation(line: 570, column: 37, scope: !2723)
!2725 = !DILocation(line: 570, column: 12, scope: !2723)
!2726 = !DILocation(line: 570, column: 10, scope: !2723)
!2727 = !DILocation(line: 571, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2723, file: !2, line: 571, column: 7)
!2729 = !DILocation(line: 571, column: 7, scope: !2723)
!2730 = !DILocation(line: 572, column: 4, scope: !2728)
!2731 = !DILocation(line: 573, column: 2, scope: !2723)
!2732 = !DILocation(line: 575, column: 22, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 575, column: 6)
!2734 = !DILocation(line: 575, column: 27, scope: !2733)
!2735 = !DILocation(line: 575, column: 6, scope: !2733)
!2736 = !DILocation(line: 575, column: 6, scope: !2599)
!2737 = !DILocation(line: 576, column: 32, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2733, file: !2, line: 575, column: 44)
!2739 = !DILocation(line: 576, column: 37, scope: !2738)
!2740 = !DILocation(line: 576, column: 12, scope: !2738)
!2741 = !DILocation(line: 576, column: 10, scope: !2738)
!2742 = !DILocation(line: 577, column: 7, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 577, column: 7)
!2744 = !DILocation(line: 577, column: 7, scope: !2738)
!2745 = !DILocation(line: 578, column: 4, scope: !2743)
!2746 = !DILocation(line: 579, column: 2, scope: !2738)
!2747 = !DILocation(line: 585, column: 22, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 585, column: 6)
!2749 = !DILocation(line: 585, column: 27, scope: !2748)
!2750 = !DILocation(line: 585, column: 6, scope: !2748)
!2751 = !DILocation(line: 585, column: 6, scope: !2599)
!2752 = !DILocation(line: 586, column: 32, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 585, column: 44)
!2754 = !DILocation(line: 586, column: 37, scope: !2753)
!2755 = !DILocation(line: 586, column: 12, scope: !2753)
!2756 = !DILocation(line: 586, column: 10, scope: !2753)
!2757 = !DILocation(line: 587, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2753, file: !2, line: 587, column: 7)
!2759 = !DILocation(line: 587, column: 7, scope: !2753)
!2760 = !DILocation(line: 588, column: 11, scope: !2758)
!2761 = !DILocation(line: 588, column: 4, scope: !2758)
!2762 = !DILocation(line: 589, column: 2, scope: !2753)
!2763 = !DILocation(line: 591, column: 6, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 591, column: 6)
!2765 = !DILocation(line: 591, column: 11, scope: !2764)
!2766 = !DILocation(line: 591, column: 17, scope: !2764)
!2767 = !DILocation(line: 591, column: 6, scope: !2599)
!2768 = !DILocation(line: 592, column: 32, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 591, column: 35)
!2770 = !DILocation(line: 592, column: 37, scope: !2769)
!2771 = !DILocation(line: 592, column: 12, scope: !2769)
!2772 = !DILocation(line: 592, column: 10, scope: !2769)
!2773 = !DILocation(line: 593, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2769, file: !2, line: 593, column: 7)
!2775 = !DILocation(line: 593, column: 7, scope: !2769)
!2776 = !DILocation(line: 594, column: 11, scope: !2774)
!2777 = !DILocation(line: 594, column: 4, scope: !2774)
!2778 = !DILocation(line: 596, column: 7, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2769, file: !2, line: 596, column: 7)
!2780 = !DILocation(line: 596, column: 12, scope: !2779)
!2781 = !DILocation(line: 596, column: 18, scope: !2779)
!2782 = !DILocation(line: 596, column: 24, scope: !2779)
!2783 = !DILocation(line: 596, column: 7, scope: !2769)
!2784 = !DILocation(line: 597, column: 33, scope: !2779)
!2785 = !DILocation(line: 597, column: 38, scope: !2779)
!2786 = !DILocation(line: 597, column: 13, scope: !2779)
!2787 = !DILocation(line: 597, column: 11, scope: !2779)
!2788 = !DILocation(line: 597, column: 4, scope: !2779)
!2789 = !DILocation(line: 599, column: 2, scope: !2769)
!2790 = !DILocation(line: 601, column: 31, scope: !2599)
!2791 = !DILocation(line: 601, column: 36, scope: !2599)
!2792 = !DILocation(line: 601, column: 40, scope: !2599)
!2793 = !DILocation(line: 601, column: 47, scope: !2599)
!2794 = !DILocation(line: 601, column: 52, scope: !2599)
!2795 = !DILocation(line: 601, column: 2, scope: !2599)
!2796 = !DILocation(line: 603, column: 1, scope: !2599)
!2797 = !DILocation(line: 604, column: 9, scope: !2599)
!2798 = !DILocation(line: 604, column: 2, scope: !2599)
!2799 = !DILocation(line: 605, column: 1, scope: !2599)
!2800 = !DISubprogram(name: "device_create_file", scope: !32, file: !32, line: 259, type: !2801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!52, !820, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2805 = !DISubprogram(name: "acpi_has_method", scope: !118, file: !118, line: 42, type: !2806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!156, !132, !114}
!2808 = !DISubprogram(name: "acpi_evaluate_object_typed", scope: !2809, file: !2809, line: 556, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2809 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!1968, !132, !2812, !2813, !2818, !1774}
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !99, line: 423, baseType: !114)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !99, line: 956, size: 128, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2814, file: !99, line: 957, baseType: !128, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2814, file: !99, line: 958, baseType: !1770, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2819 = distinct !DISubprogram(name: "acpi_expose_nondev_subnodes", scope: !2, file: !2, line: 87, type: !2820, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2823)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !177, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2831, !2834}
!2824 = !DILocalVariable(name: "kobj", arg: 1, scope: !2819, file: !2, line: 87, type: !177)
!2825 = !DILocalVariable(name: "data", arg: 2, scope: !2819, file: !2, line: 88, type: !2822)
!2826 = !DILocalVariable(name: "list", scope: !2819, file: !2, line: 90, type: !108)
!2827 = !DILocalVariable(name: "dn", scope: !2819, file: !2, line: 91, type: !1969)
!2828 = !DILocalVariable(name: "__mptr", scope: !2829, file: !2, line: 96, type: !97)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !2, line: 96, column: 2)
!2830 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 96, column: 2)
!2831 = !DILocalVariable(name: "ret", scope: !2832, file: !2, line: 97, type: !52)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !2, line: 96, column: 41)
!2833 = distinct !DILexicalBlock(scope: !2830, file: !2, line: 96, column: 2)
!2834 = !DILocalVariable(name: "__mptr", scope: !2835, file: !2, line: 96, type: !97)
!2835 = distinct !DILexicalBlock(scope: !2833, file: !2, line: 96, column: 2)
!2836 = !DILocation(line: 87, column: 57, scope: !2819)
!2837 = !DILocation(line: 88, column: 31, scope: !2819)
!2838 = !DILocation(line: 90, column: 2, scope: !2819)
!2839 = !DILocation(line: 90, column: 20, scope: !2819)
!2840 = !DILocation(line: 90, column: 28, scope: !2819)
!2841 = !DILocation(line: 90, column: 34, scope: !2819)
!2842 = !DILocation(line: 91, column: 2, scope: !2819)
!2843 = !DILocation(line: 91, column: 25, scope: !2819)
!2844 = !DILocation(line: 93, column: 17, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 93, column: 6)
!2846 = !DILocation(line: 93, column: 6, scope: !2845)
!2847 = !DILocation(line: 93, column: 6, scope: !2819)
!2848 = !DILocation(line: 94, column: 3, scope: !2845)
!2849 = !DILocation(line: 96, column: 2, scope: !2829)
!2850 = !DILocation(line: 96, column: 2, scope: !2830)
!2851 = !DILocation(line: 96, column: 2, scope: !2833)
!2852 = !DILocation(line: 97, column: 3, scope: !2832)
!2853 = !DILocation(line: 97, column: 7, scope: !2832)
!2854 = !DILocation(line: 99, column: 20, scope: !2832)
!2855 = !DILocation(line: 99, column: 24, scope: !2832)
!2856 = !DILocation(line: 99, column: 3, scope: !2832)
!2857 = !DILocation(line: 100, column: 31, scope: !2832)
!2858 = !DILocation(line: 100, column: 35, scope: !2832)
!2859 = !DILocation(line: 101, column: 9, scope: !2832)
!2860 = !DILocation(line: 101, column: 21, scope: !2832)
!2861 = !DILocation(line: 101, column: 25, scope: !2832)
!2862 = !DILocation(line: 100, column: 9, scope: !2832)
!2863 = !DILocation(line: 100, column: 7, scope: !2832)
!2864 = !DILocation(line: 102, column: 8, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 102, column: 7)
!2866 = !DILocation(line: 102, column: 7, scope: !2832)
!2867 = !DILocation(line: 103, column: 33, scope: !2865)
!2868 = !DILocation(line: 103, column: 37, scope: !2865)
!2869 = !DILocation(line: 103, column: 44, scope: !2865)
!2870 = !DILocation(line: 103, column: 48, scope: !2865)
!2871 = !DILocation(line: 103, column: 4, scope: !2865)
!2872 = !DILocation(line: 104, column: 12, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 104, column: 12)
!2874 = !DILocation(line: 104, column: 16, scope: !2873)
!2875 = !DILocation(line: 104, column: 12, scope: !2865)
!2876 = !DILocation(line: 105, column: 4, scope: !2873)
!2877 = !DILocation(line: 106, column: 2, scope: !2833)
!2878 = !DILocation(line: 106, column: 2, scope: !2832)
!2879 = !DILocation(line: 96, column: 2, scope: !2835)
!2880 = distinct !{!2880, !2850, !2881, !2297, !2298}
!2881 = !DILocation(line: 106, column: 2, scope: !2830)
!2882 = !DILocation(line: 107, column: 1, scope: !2819)
!2883 = distinct !DISubprogram(name: "acpi_device_remove_files", scope: !2, file: !2, line: 611, type: !1926, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "dev", arg: 1, scope: !2883, file: !2, line: 611, type: !124)
!2886 = !DILocation(line: 611, column: 51, scope: !2883)
!2887 = !DILocation(line: 613, column: 29, scope: !2883)
!2888 = !DILocation(line: 613, column: 34, scope: !2883)
!2889 = !DILocation(line: 613, column: 2, scope: !2883)
!2890 = !DILocation(line: 615, column: 6, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 615, column: 6)
!2892 = !DILocation(line: 615, column: 11, scope: !2891)
!2893 = !DILocation(line: 615, column: 17, scope: !2891)
!2894 = !DILocation(line: 615, column: 6, scope: !2883)
!2895 = !DILocation(line: 616, column: 23, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 615, column: 35)
!2897 = !DILocation(line: 616, column: 28, scope: !2896)
!2898 = !DILocation(line: 616, column: 3, scope: !2896)
!2899 = !DILocation(line: 617, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 617, column: 7)
!2901 = !DILocation(line: 617, column: 12, scope: !2900)
!2902 = !DILocation(line: 617, column: 18, scope: !2900)
!2903 = !DILocation(line: 617, column: 24, scope: !2900)
!2904 = !DILocation(line: 617, column: 7, scope: !2896)
!2905 = !DILocation(line: 618, column: 24, scope: !2900)
!2906 = !DILocation(line: 618, column: 29, scope: !2900)
!2907 = !DILocation(line: 618, column: 4, scope: !2900)
!2908 = !DILocation(line: 620, column: 2, scope: !2896)
!2909 = !DILocation(line: 625, column: 22, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 625, column: 6)
!2911 = !DILocation(line: 625, column: 27, scope: !2910)
!2912 = !DILocation(line: 625, column: 6, scope: !2910)
!2913 = !DILocation(line: 625, column: 6, scope: !2883)
!2914 = !DILocation(line: 626, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !2, line: 625, column: 44)
!2916 = !DILocation(line: 626, column: 14, scope: !2915)
!2917 = !DILocation(line: 626, column: 18, scope: !2915)
!2918 = !DILocation(line: 626, column: 3, scope: !2915)
!2919 = !DILocation(line: 627, column: 23, scope: !2915)
!2920 = !DILocation(line: 627, column: 28, scope: !2915)
!2921 = !DILocation(line: 627, column: 3, scope: !2915)
!2922 = !DILocation(line: 628, column: 2, scope: !2915)
!2923 = !DILocation(line: 632, column: 22, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 632, column: 6)
!2925 = !DILocation(line: 632, column: 27, scope: !2924)
!2926 = !DILocation(line: 632, column: 6, scope: !2924)
!2927 = !DILocation(line: 632, column: 6, scope: !2883)
!2928 = !DILocation(line: 633, column: 23, scope: !2924)
!2929 = !DILocation(line: 633, column: 28, scope: !2924)
!2930 = !DILocation(line: 633, column: 3, scope: !2924)
!2931 = !DILocation(line: 635, column: 22, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 635, column: 6)
!2933 = !DILocation(line: 635, column: 27, scope: !2932)
!2934 = !DILocation(line: 635, column: 6, scope: !2932)
!2935 = !DILocation(line: 635, column: 6, scope: !2883)
!2936 = !DILocation(line: 636, column: 23, scope: !2932)
!2937 = !DILocation(line: 636, column: 28, scope: !2932)
!2938 = !DILocation(line: 636, column: 3, scope: !2932)
!2939 = !DILocation(line: 638, column: 22, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 638, column: 6)
!2941 = !DILocation(line: 638, column: 27, scope: !2940)
!2942 = !DILocation(line: 638, column: 6, scope: !2940)
!2943 = !DILocation(line: 638, column: 6, scope: !2883)
!2944 = !DILocation(line: 639, column: 23, scope: !2940)
!2945 = !DILocation(line: 639, column: 28, scope: !2940)
!2946 = !DILocation(line: 639, column: 3, scope: !2940)
!2947 = !DILocation(line: 641, column: 6, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 641, column: 6)
!2949 = !DILocation(line: 641, column: 11, scope: !2948)
!2950 = !DILocation(line: 641, column: 15, scope: !2948)
!2951 = !DILocation(line: 641, column: 6, scope: !2883)
!2952 = !DILocation(line: 642, column: 23, scope: !2948)
!2953 = !DILocation(line: 642, column: 28, scope: !2948)
!2954 = !DILocation(line: 642, column: 3, scope: !2948)
!2955 = !DILocation(line: 643, column: 6, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 643, column: 6)
!2957 = !DILocation(line: 643, column: 11, scope: !2956)
!2958 = !DILocation(line: 643, column: 15, scope: !2956)
!2959 = !DILocation(line: 643, column: 20, scope: !2956)
!2960 = !DILocation(line: 643, column: 6, scope: !2883)
!2961 = !DILocation(line: 644, column: 23, scope: !2956)
!2962 = !DILocation(line: 644, column: 28, scope: !2956)
!2963 = !DILocation(line: 644, column: 3, scope: !2956)
!2964 = !DILocation(line: 645, column: 22, scope: !2883)
!2965 = !DILocation(line: 645, column: 27, scope: !2883)
!2966 = !DILocation(line: 645, column: 2, scope: !2883)
!2967 = !DILocation(line: 646, column: 22, scope: !2883)
!2968 = !DILocation(line: 646, column: 27, scope: !2883)
!2969 = !DILocation(line: 646, column: 2, scope: !2883)
!2970 = !DILocation(line: 647, column: 22, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 647, column: 6)
!2972 = !DILocation(line: 647, column: 27, scope: !2971)
!2973 = !DILocation(line: 647, column: 6, scope: !2971)
!2974 = !DILocation(line: 647, column: 6, scope: !2883)
!2975 = !DILocation(line: 648, column: 23, scope: !2971)
!2976 = !DILocation(line: 648, column: 28, scope: !2971)
!2977 = !DILocation(line: 648, column: 3, scope: !2971)
!2978 = !DILocation(line: 649, column: 6, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 649, column: 6)
!2980 = !DILocation(line: 649, column: 11, scope: !2979)
!2981 = !DILocation(line: 649, column: 6, scope: !2883)
!2982 = !DILocation(line: 650, column: 23, scope: !2979)
!2983 = !DILocation(line: 650, column: 28, scope: !2979)
!2984 = !DILocation(line: 650, column: 3, scope: !2979)
!2985 = !DILocation(line: 651, column: 1, scope: !2883)
!2986 = distinct !DISubprogram(name: "acpi_hide_nondev_subnodes", scope: !2, file: !2, line: 109, type: !2987, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2822}
!2989 = !{!2990, !2991, !2992, !2993, !2996}
!2990 = !DILocalVariable(name: "data", arg: 1, scope: !2986, file: !2, line: 109, type: !2822)
!2991 = !DILocalVariable(name: "list", scope: !2986, file: !2, line: 111, type: !108)
!2992 = !DILocalVariable(name: "dn", scope: !2986, file: !2, line: 112, type: !1969)
!2993 = !DILocalVariable(name: "__mptr", scope: !2994, file: !2, line: 117, type: !97)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !2, line: 117, column: 2)
!2995 = distinct !DILexicalBlock(scope: !2986, file: !2, line: 117, column: 2)
!2996 = !DILocalVariable(name: "__mptr", scope: !2997, file: !2, line: 117, type: !97)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 117, column: 2)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !2, line: 117, column: 2)
!2999 = !DILocation(line: 109, column: 64, scope: !2986)
!3000 = !DILocation(line: 111, column: 2, scope: !2986)
!3001 = !DILocation(line: 111, column: 20, scope: !2986)
!3002 = !DILocation(line: 111, column: 28, scope: !2986)
!3003 = !DILocation(line: 111, column: 34, scope: !2986)
!3004 = !DILocation(line: 112, column: 2, scope: !2986)
!3005 = !DILocation(line: 112, column: 25, scope: !2986)
!3006 = !DILocation(line: 114, column: 17, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2986, file: !2, line: 114, column: 6)
!3008 = !DILocation(line: 114, column: 6, scope: !3007)
!3009 = !DILocation(line: 114, column: 6, scope: !2986)
!3010 = !DILocation(line: 115, column: 3, scope: !3007)
!3011 = !DILocation(line: 117, column: 2, scope: !2994)
!3012 = !DILocation(line: 117, column: 2, scope: !2995)
!3013 = !DILocation(line: 117, column: 2, scope: !2998)
!3014 = !DILocation(line: 118, column: 30, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 117, column: 49)
!3016 = !DILocation(line: 118, column: 34, scope: !3015)
!3017 = !DILocation(line: 118, column: 3, scope: !3015)
!3018 = !DILocation(line: 119, column: 16, scope: !3015)
!3019 = !DILocation(line: 119, column: 20, scope: !3015)
!3020 = !DILocation(line: 119, column: 3, scope: !3015)
!3021 = !DILocation(line: 120, column: 2, scope: !3015)
!3022 = !DILocation(line: 117, column: 2, scope: !2997)
!3023 = distinct !{!3023, !3012, !3024, !2297, !2298}
!3024 = !DILocation(line: 120, column: 2, scope: !2995)
!3025 = !DILocation(line: 121, column: 1, scope: !2986)
!3026 = !DISubprogram(name: "device_remove_file", scope: !32, file: !32, line: 261, type: !3027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !820, !2803}
!3029 = !DISubprogram(name: "kfree", scope: !3030, file: !3030, line: 227, type: !3031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3030 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !164}
!3033 = !DISubprogram(name: "acpi_get_name", scope: !2809, file: !2809, line: 524, type: !3034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!1968, !132, !128, !2818}
!3036 = distinct !DISubprogram(name: "__tolower", scope: !3037, file: !3037, line: 49, type: !3038, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3040)
!3037 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!115, !115}
!3040 = !{!3041}
!3041 = !DILocalVariable(name: "c", arg: 1, scope: !3036, file: !3037, line: 49, type: !115)
!3042 = !DILocation(line: 49, column: 53, scope: !3036)
!3043 = !DILocation(line: 51, column: 6, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !3037, line: 51, column: 6)
!3045 = !DILocation(line: 51, column: 6, scope: !3036)
!3046 = !DILocation(line: 52, column: 5, scope: !3044)
!3047 = !DILocation(line: 52, column: 3, scope: !3044)
!3048 = !DILocation(line: 53, column: 9, scope: !3036)
!3049 = !DILocation(line: 53, column: 2, scope: !3036)
!3050 = !DISubprogram(name: "snprintf", scope: !3051, file: !3051, line: 12, type: !3052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3051 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!52, !114, !297, !122, null}
!3054 = distinct !DISubprogram(name: "acpi_os_free", scope: !3055, file: !3055, line: 60, type: !664, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3056)
!3055 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!3056 = !{!3057}
!3057 = !DILocalVariable(name: "memory", arg: 1, scope: !3054, file: !3055, line: 60, type: !97)
!3058 = !DILocation(line: 60, column: 39, scope: !3054)
!3059 = !DILocation(line: 62, column: 8, scope: !3054)
!3060 = !DILocation(line: 62, column: 2, scope: !3054)
!3061 = !DILocation(line: 63, column: 1, scope: !3054)
!3062 = !DISubprogram(name: "acpi_device_is_present", scope: !2496, file: !2496, line: 110, type: !3063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!156, !2147}
!3065 = !DISubprogram(name: "strcmp", scope: !3066, file: !3066, line: 88, type: !3067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3066 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!52, !122, !122}
!3069 = distinct !DISubprogram(name: "path_show", scope: !2, file: !2, line: 431, type: !2029, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3075}
!3071 = !DILocalVariable(name: "dev", arg: 1, scope: !3069, file: !2, line: 431, type: !820)
!3072 = !DILocalVariable(name: "attr", arg: 2, scope: !3069, file: !2, line: 432, type: !2031)
!3073 = !DILocalVariable(name: "buf", arg: 3, scope: !3069, file: !2, line: 432, type: !114)
!3074 = !DILocalVariable(name: "acpi_dev", scope: !3069, file: !2, line: 434, type: !124)
!3075 = !DILocalVariable(name: "__mptr", scope: !3076, file: !2, line: 434, type: !97)
!3076 = distinct !DILexicalBlock(scope: !3069, file: !2, line: 434, column: 33)
!3077 = !DILocation(line: 431, column: 41, scope: !3069)
!3078 = !DILocation(line: 432, column: 30, scope: !3069)
!3079 = !DILocation(line: 432, column: 42, scope: !3069)
!3080 = !DILocation(line: 434, column: 2, scope: !3069)
!3081 = !DILocation(line: 434, column: 22, scope: !3069)
!3082 = !DILocation(line: 434, column: 33, scope: !3076)
!3083 = !DILocation(line: 434, column: 33, scope: !3069)
!3084 = !DILocation(line: 436, column: 26, scope: !3069)
!3085 = !DILocation(line: 436, column: 36, scope: !3069)
!3086 = !DILocation(line: 436, column: 44, scope: !3069)
!3087 = !DILocation(line: 436, column: 9, scope: !3069)
!3088 = !DILocation(line: 437, column: 1, scope: !3069)
!3089 = !DILocation(line: 436, column: 2, scope: !3069)
!3090 = distinct !DISubprogram(name: "acpi_object_path", scope: !2, file: !2, line: 21, type: !3091, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!282, !132, !114}
!3093 = !{!3094, !3095, !3096, !3097}
!3094 = !DILocalVariable(name: "handle", arg: 1, scope: !3090, file: !2, line: 21, type: !132)
!3095 = !DILocalVariable(name: "buf", arg: 2, scope: !3090, file: !2, line: 21, type: !114)
!3096 = !DILocalVariable(name: "path", scope: !3090, file: !2, line: 23, type: !2242)
!3097 = !DILocalVariable(name: "result", scope: !3090, file: !2, line: 24, type: !52)
!3098 = !DILocation(line: 21, column: 45, scope: !3090)
!3099 = !DILocation(line: 21, column: 59, scope: !3090)
!3100 = !DILocation(line: 23, column: 2, scope: !3090)
!3101 = !DILocation(line: 23, column: 21, scope: !3090)
!3102 = !DILocation(line: 24, column: 2, scope: !3090)
!3103 = !DILocation(line: 24, column: 6, scope: !3090)
!3104 = !DILocation(line: 26, column: 25, scope: !3090)
!3105 = !DILocation(line: 26, column: 11, scope: !3090)
!3106 = !DILocation(line: 26, column: 9, scope: !3090)
!3107 = !DILocation(line: 27, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3090, file: !2, line: 27, column: 6)
!3109 = !DILocation(line: 27, column: 6, scope: !3090)
!3110 = !DILocation(line: 28, column: 10, scope: !3108)
!3111 = !DILocation(line: 28, column: 3, scope: !3108)
!3112 = !DILocation(line: 30, column: 19, scope: !3090)
!3113 = !DILocation(line: 30, column: 45, scope: !3090)
!3114 = !DILocation(line: 30, column: 11, scope: !3090)
!3115 = !DILocation(line: 30, column: 9, scope: !3090)
!3116 = !DILocation(line: 31, column: 13, scope: !3090)
!3117 = !DILocation(line: 31, column: 2, scope: !3090)
!3118 = !DILocation(line: 32, column: 9, scope: !3090)
!3119 = !DILocation(line: 32, column: 2, scope: !3090)
!3120 = !DILocation(line: 33, column: 1, scope: !3090)
!3121 = !DISubprogram(name: "sprintf", scope: !3051, file: !3051, line: 10, type: !3122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!52, !114, !122, null}
!3124 = distinct !DISubprogram(name: "hid_show", scope: !2, file: !2, line: 402, type: !2029, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130}
!3126 = !DILocalVariable(name: "dev", arg: 1, scope: !3124, file: !2, line: 402, type: !820)
!3127 = !DILocalVariable(name: "attr", arg: 2, scope: !3124, file: !2, line: 402, type: !2031)
!3128 = !DILocalVariable(name: "buf", arg: 3, scope: !3124, file: !2, line: 402, type: !114)
!3129 = !DILocalVariable(name: "acpi_dev", scope: !3124, file: !2, line: 404, type: !124)
!3130 = !DILocalVariable(name: "__mptr", scope: !3131, file: !2, line: 404, type: !97)
!3131 = distinct !DILexicalBlock(scope: !3124, file: !2, line: 404, column: 33)
!3132 = !DILocation(line: 402, column: 25, scope: !3124)
!3133 = !DILocation(line: 402, column: 55, scope: !3124)
!3134 = !DILocation(line: 402, column: 67, scope: !3124)
!3135 = !DILocation(line: 404, column: 2, scope: !3124)
!3136 = !DILocation(line: 404, column: 22, scope: !3124)
!3137 = !DILocation(line: 404, column: 33, scope: !3131)
!3138 = !DILocation(line: 404, column: 33, scope: !3124)
!3139 = !DILocation(line: 406, column: 17, scope: !3124)
!3140 = !DILocation(line: 406, column: 46, scope: !3124)
!3141 = !DILocation(line: 406, column: 30, scope: !3124)
!3142 = !DILocation(line: 406, column: 9, scope: !3124)
!3143 = !DILocation(line: 407, column: 1, scope: !3124)
!3144 = !DILocation(line: 406, column: 2, scope: !3124)
!3145 = !DISubprogram(name: "acpi_device_hid", scope: !118, file: !118, line: 252, type: !3146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!122, !124}
!3148 = distinct !DISubprogram(name: "modalias_show", scope: !2, file: !2, line: 337, type: !2029, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3149)
!3149 = !{!3150, !3151, !3152, !3153}
!3150 = !DILocalVariable(name: "dev", arg: 1, scope: !3148, file: !2, line: 337, type: !820)
!3151 = !DILocalVariable(name: "attr", arg: 2, scope: !3148, file: !2, line: 337, type: !2031)
!3152 = !DILocalVariable(name: "buf", arg: 3, scope: !3148, file: !2, line: 337, type: !114)
!3153 = !DILocalVariable(name: "__mptr", scope: !3154, file: !2, line: 339, type: !97)
!3154 = distinct !DILexicalBlock(scope: !3148, file: !2, line: 339, column: 32)
!3155 = !DILocation(line: 337, column: 30, scope: !3148)
!3156 = !DILocation(line: 337, column: 60, scope: !3148)
!3157 = !DILocation(line: 337, column: 72, scope: !3148)
!3158 = !DILocation(line: 339, column: 32, scope: !3154)
!3159 = !DILocation(line: 339, column: 32, scope: !3148)
!3160 = !DILocation(line: 339, column: 53, scope: !3148)
!3161 = !DILocation(line: 339, column: 9, scope: !3148)
!3162 = !DILocation(line: 339, column: 2, scope: !3148)
!3163 = distinct !DISubprogram(name: "description_show", scope: !2, file: !2, line: 441, type: !2029, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3164)
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3171}
!3165 = !DILocalVariable(name: "dev", arg: 1, scope: !3163, file: !2, line: 441, type: !820)
!3166 = !DILocalVariable(name: "attr", arg: 2, scope: !3163, file: !2, line: 442, type: !2031)
!3167 = !DILocalVariable(name: "buf", arg: 3, scope: !3163, file: !2, line: 443, type: !114)
!3168 = !DILocalVariable(name: "acpi_dev", scope: !3163, file: !2, line: 445, type: !124)
!3169 = !DILocalVariable(name: "__mptr", scope: !3170, file: !2, line: 445, type: !97)
!3170 = distinct !DILexicalBlock(scope: !3163, file: !2, line: 445, column: 33)
!3171 = !DILocalVariable(name: "result", scope: !3163, file: !2, line: 446, type: !52)
!3172 = !DILocation(line: 441, column: 48, scope: !3163)
!3173 = !DILocation(line: 442, column: 30, scope: !3163)
!3174 = !DILocation(line: 443, column: 11, scope: !3163)
!3175 = !DILocation(line: 445, column: 2, scope: !3163)
!3176 = !DILocation(line: 445, column: 22, scope: !3163)
!3177 = !DILocation(line: 445, column: 33, scope: !3170)
!3178 = !DILocation(line: 445, column: 33, scope: !3163)
!3179 = !DILocation(line: 446, column: 2, scope: !3163)
!3180 = !DILocation(line: 446, column: 6, scope: !3163)
!3181 = !DILocation(line: 448, column: 6, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3163, file: !2, line: 448, column: 6)
!3183 = !DILocation(line: 448, column: 16, scope: !3182)
!3184 = !DILocation(line: 448, column: 20, scope: !3182)
!3185 = !DILocation(line: 448, column: 28, scope: !3182)
!3186 = !DILocation(line: 448, column: 6, scope: !3163)
!3187 = !DILocation(line: 449, column: 3, scope: !3182)
!3188 = !DILocation(line: 456, column: 14, scope: !3163)
!3189 = !DILocation(line: 456, column: 24, scope: !3163)
!3190 = !DILocation(line: 456, column: 28, scope: !3163)
!3191 = !DILocation(line: 456, column: 44, scope: !3163)
!3192 = !DILocation(line: 457, column: 3, scope: !3163)
!3193 = !DILocation(line: 457, column: 13, scope: !3163)
!3194 = !DILocation(line: 457, column: 17, scope: !3163)
!3195 = !DILocation(line: 457, column: 33, scope: !3163)
!3196 = !DILocation(line: 458, column: 24, scope: !3163)
!3197 = !DILocation(line: 455, column: 11, scope: !3163)
!3198 = !DILocation(line: 455, column: 9, scope: !3163)
!3199 = !DILocation(line: 461, column: 2, scope: !3163)
!3200 = !DILocation(line: 461, column: 12, scope: !3163)
!3201 = !DILocation(line: 461, column: 16, scope: !3163)
!3202 = !DILocation(line: 463, column: 9, scope: !3163)
!3203 = !DILocation(line: 463, column: 2, scope: !3163)
!3204 = !DILocation(line: 464, column: 1, scope: !3163)
!3205 = !DISubprogram(name: "utf16s_to_utf8s", scope: !91, file: !91, line: 59, type: !3206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!52, !3208, !52, !90, !1792, !52}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1967)
!3210 = distinct !DISubprogram(name: "adr_show", scope: !2, file: !2, line: 419, type: !2029, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216}
!3212 = !DILocalVariable(name: "dev", arg: 1, scope: !3210, file: !2, line: 419, type: !820)
!3213 = !DILocalVariable(name: "attr", arg: 2, scope: !3210, file: !2, line: 420, type: !2031)
!3214 = !DILocalVariable(name: "buf", arg: 3, scope: !3210, file: !2, line: 420, type: !114)
!3215 = !DILocalVariable(name: "acpi_dev", scope: !3210, file: !2, line: 422, type: !124)
!3216 = !DILocalVariable(name: "__mptr", scope: !3217, file: !2, line: 422, type: !97)
!3217 = distinct !DILexicalBlock(scope: !3210, file: !2, line: 422, column: 33)
!3218 = !DILocation(line: 419, column: 40, scope: !3210)
!3219 = !DILocation(line: 420, column: 29, scope: !3210)
!3220 = !DILocation(line: 420, column: 41, scope: !3210)
!3221 = !DILocation(line: 422, column: 2, scope: !3210)
!3222 = !DILocation(line: 422, column: 22, scope: !3210)
!3223 = !DILocation(line: 422, column: 33, scope: !3217)
!3224 = !DILocation(line: 422, column: 33, scope: !3210)
!3225 = !DILocation(line: 424, column: 6, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3210, file: !2, line: 424, column: 6)
!3227 = !DILocation(line: 424, column: 16, scope: !3226)
!3228 = !DILocation(line: 424, column: 20, scope: !3226)
!3229 = !DILocation(line: 424, column: 32, scope: !3226)
!3230 = !DILocation(line: 424, column: 6, scope: !3210)
!3231 = !DILocation(line: 425, column: 18, scope: !3226)
!3232 = !DILocation(line: 425, column: 38, scope: !3226)
!3233 = !DILocation(line: 425, column: 48, scope: !3226)
!3234 = !DILocation(line: 425, column: 52, scope: !3226)
!3235 = !DILocation(line: 425, column: 10, scope: !3226)
!3236 = !DILocation(line: 425, column: 3, scope: !3226)
!3237 = !DILocation(line: 427, column: 18, scope: !3226)
!3238 = !DILocation(line: 427, column: 37, scope: !3226)
!3239 = !DILocation(line: 427, column: 47, scope: !3226)
!3240 = !DILocation(line: 427, column: 51, scope: !3226)
!3241 = !DILocation(line: 427, column: 10, scope: !3226)
!3242 = !DILocation(line: 427, column: 3, scope: !3226)
!3243 = !DILocation(line: 428, column: 1, scope: !3210)
!3244 = distinct !DISubprogram(name: "uid_show", scope: !2, file: !2, line: 410, type: !2029, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250}
!3246 = !DILocalVariable(name: "dev", arg: 1, scope: !3244, file: !2, line: 410, type: !820)
!3247 = !DILocalVariable(name: "attr", arg: 2, scope: !3244, file: !2, line: 411, type: !2031)
!3248 = !DILocalVariable(name: "buf", arg: 3, scope: !3244, file: !2, line: 411, type: !114)
!3249 = !DILocalVariable(name: "acpi_dev", scope: !3244, file: !2, line: 413, type: !124)
!3250 = !DILocalVariable(name: "__mptr", scope: !3251, file: !2, line: 413, type: !97)
!3251 = distinct !DILexicalBlock(scope: !3244, file: !2, line: 413, column: 33)
!3252 = !DILocation(line: 410, column: 40, scope: !3244)
!3253 = !DILocation(line: 411, column: 29, scope: !3244)
!3254 = !DILocation(line: 411, column: 41, scope: !3244)
!3255 = !DILocation(line: 413, column: 2, scope: !3244)
!3256 = !DILocation(line: 413, column: 22, scope: !3244)
!3257 = !DILocation(line: 413, column: 33, scope: !3251)
!3258 = !DILocation(line: 413, column: 33, scope: !3244)
!3259 = !DILocation(line: 415, column: 17, scope: !3244)
!3260 = !DILocation(line: 415, column: 30, scope: !3244)
!3261 = !DILocation(line: 415, column: 40, scope: !3244)
!3262 = !DILocation(line: 415, column: 44, scope: !3244)
!3263 = !DILocation(line: 415, column: 9, scope: !3244)
!3264 = !DILocation(line: 416, column: 1, scope: !3244)
!3265 = !DILocation(line: 415, column: 2, scope: !3244)
!3266 = distinct !DISubprogram(name: "sun_show", scope: !2, file: !2, line: 468, type: !2029, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3274, !3275}
!3268 = !DILocalVariable(name: "dev", arg: 1, scope: !3266, file: !2, line: 468, type: !820)
!3269 = !DILocalVariable(name: "attr", arg: 2, scope: !3266, file: !2, line: 468, type: !2031)
!3270 = !DILocalVariable(name: "buf", arg: 3, scope: !3266, file: !2, line: 469, type: !114)
!3271 = !DILocalVariable(name: "acpi_dev", scope: !3266, file: !2, line: 471, type: !124)
!3272 = !DILocalVariable(name: "__mptr", scope: !3273, file: !2, line: 471, type: !97)
!3273 = distinct !DILexicalBlock(scope: !3266, file: !2, line: 471, column: 33)
!3274 = !DILocalVariable(name: "status", scope: !3266, file: !2, line: 472, type: !1968)
!3275 = !DILocalVariable(name: "sun", scope: !3266, file: !2, line: 473, type: !104)
!3276 = !DILocation(line: 468, column: 25, scope: !3266)
!3277 = !DILocation(line: 468, column: 55, scope: !3266)
!3278 = !DILocation(line: 469, column: 9, scope: !3266)
!3279 = !DILocation(line: 471, column: 2, scope: !3266)
!3280 = !DILocation(line: 471, column: 22, scope: !3266)
!3281 = !DILocation(line: 471, column: 33, scope: !3273)
!3282 = !DILocation(line: 471, column: 33, scope: !3266)
!3283 = !DILocation(line: 472, column: 2, scope: !3266)
!3284 = !DILocation(line: 472, column: 14, scope: !3266)
!3285 = !DILocation(line: 473, column: 2, scope: !3266)
!3286 = !DILocation(line: 473, column: 21, scope: !3266)
!3287 = !DILocation(line: 475, column: 33, scope: !3266)
!3288 = !DILocation(line: 475, column: 43, scope: !3266)
!3289 = !DILocation(line: 475, column: 11, scope: !3266)
!3290 = !DILocation(line: 475, column: 9, scope: !3266)
!3291 = !DILocation(line: 476, column: 6, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3266, file: !2, line: 476, column: 6)
!3293 = !DILocation(line: 476, column: 6, scope: !3266)
!3294 = !DILocation(line: 477, column: 3, scope: !3292)
!3295 = !DILocation(line: 479, column: 17, scope: !3266)
!3296 = !DILocation(line: 479, column: 32, scope: !3266)
!3297 = !DILocation(line: 479, column: 9, scope: !3266)
!3298 = !DILocation(line: 479, column: 2, scope: !3266)
!3299 = !DILocation(line: 480, column: 1, scope: !3266)
!3300 = !DISubprogram(name: "acpi_evaluate_integer", scope: !118, file: !118, line: 27, type: !3301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!1968, !132, !2812, !2813, !3303}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!3304 = distinct !DISubprogram(name: "hrv_show", scope: !2, file: !2, line: 484, type: !2029, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3305)
!3305 = !{!3306, !3307, !3308, !3309, !3310, !3312, !3313}
!3306 = !DILocalVariable(name: "dev", arg: 1, scope: !3304, file: !2, line: 484, type: !820)
!3307 = !DILocalVariable(name: "attr", arg: 2, scope: !3304, file: !2, line: 484, type: !2031)
!3308 = !DILocalVariable(name: "buf", arg: 3, scope: !3304, file: !2, line: 485, type: !114)
!3309 = !DILocalVariable(name: "acpi_dev", scope: !3304, file: !2, line: 487, type: !124)
!3310 = !DILocalVariable(name: "__mptr", scope: !3311, file: !2, line: 487, type: !97)
!3311 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 487, column: 33)
!3312 = !DILocalVariable(name: "status", scope: !3304, file: !2, line: 488, type: !1968)
!3313 = !DILocalVariable(name: "hrv", scope: !3304, file: !2, line: 489, type: !104)
!3314 = !DILocation(line: 484, column: 25, scope: !3304)
!3315 = !DILocation(line: 484, column: 55, scope: !3304)
!3316 = !DILocation(line: 485, column: 9, scope: !3304)
!3317 = !DILocation(line: 487, column: 2, scope: !3304)
!3318 = !DILocation(line: 487, column: 22, scope: !3304)
!3319 = !DILocation(line: 487, column: 33, scope: !3311)
!3320 = !DILocation(line: 487, column: 33, scope: !3304)
!3321 = !DILocation(line: 488, column: 2, scope: !3304)
!3322 = !DILocation(line: 488, column: 14, scope: !3304)
!3323 = !DILocation(line: 489, column: 2, scope: !3304)
!3324 = !DILocation(line: 489, column: 21, scope: !3304)
!3325 = !DILocation(line: 491, column: 33, scope: !3304)
!3326 = !DILocation(line: 491, column: 43, scope: !3304)
!3327 = !DILocation(line: 491, column: 11, scope: !3304)
!3328 = !DILocation(line: 491, column: 9, scope: !3304)
!3329 = !DILocation(line: 492, column: 6, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 492, column: 6)
!3331 = !DILocation(line: 492, column: 6, scope: !3304)
!3332 = !DILocation(line: 493, column: 3, scope: !3330)
!3333 = !DILocation(line: 495, column: 17, scope: !3304)
!3334 = !DILocation(line: 495, column: 32, scope: !3304)
!3335 = !DILocation(line: 495, column: 9, scope: !3304)
!3336 = !DILocation(line: 495, column: 2, scope: !3304)
!3337 = !DILocation(line: 496, column: 1, scope: !3304)
!3338 = distinct !DISubprogram(name: "status_show", scope: !2, file: !2, line: 499, type: !2029, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3346, !3347}
!3340 = !DILocalVariable(name: "dev", arg: 1, scope: !3338, file: !2, line: 499, type: !820)
!3341 = !DILocalVariable(name: "attr", arg: 2, scope: !3338, file: !2, line: 499, type: !2031)
!3342 = !DILocalVariable(name: "buf", arg: 3, scope: !3338, file: !2, line: 500, type: !114)
!3343 = !DILocalVariable(name: "acpi_dev", scope: !3338, file: !2, line: 502, type: !124)
!3344 = !DILocalVariable(name: "__mptr", scope: !3345, file: !2, line: 502, type: !97)
!3345 = distinct !DILexicalBlock(scope: !3338, file: !2, line: 502, column: 33)
!3346 = !DILocalVariable(name: "status", scope: !3338, file: !2, line: 503, type: !1968)
!3347 = !DILocalVariable(name: "sta", scope: !3338, file: !2, line: 504, type: !104)
!3348 = !DILocation(line: 499, column: 43, scope: !3338)
!3349 = !DILocation(line: 499, column: 73, scope: !3338)
!3350 = !DILocation(line: 500, column: 11, scope: !3338)
!3351 = !DILocation(line: 502, column: 2, scope: !3338)
!3352 = !DILocation(line: 502, column: 22, scope: !3338)
!3353 = !DILocation(line: 502, column: 33, scope: !3345)
!3354 = !DILocation(line: 502, column: 33, scope: !3338)
!3355 = !DILocation(line: 503, column: 2, scope: !3338)
!3356 = !DILocation(line: 503, column: 14, scope: !3338)
!3357 = !DILocation(line: 504, column: 2, scope: !3338)
!3358 = !DILocation(line: 504, column: 21, scope: !3338)
!3359 = !DILocation(line: 506, column: 33, scope: !3338)
!3360 = !DILocation(line: 506, column: 43, scope: !3338)
!3361 = !DILocation(line: 506, column: 11, scope: !3338)
!3362 = !DILocation(line: 506, column: 9, scope: !3338)
!3363 = !DILocation(line: 507, column: 6, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3338, file: !2, line: 507, column: 6)
!3365 = !DILocation(line: 507, column: 6, scope: !3338)
!3366 = !DILocation(line: 508, column: 3, scope: !3364)
!3367 = !DILocation(line: 510, column: 17, scope: !3338)
!3368 = !DILocation(line: 510, column: 32, scope: !3338)
!3369 = !DILocation(line: 510, column: 9, scope: !3338)
!3370 = !DILocation(line: 510, column: 2, scope: !3338)
!3371 = !DILocation(line: 511, column: 1, scope: !3338)
!3372 = distinct !DISubprogram(name: "eject_store", scope: !2, file: !2, line: 370, type: !2034, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3381, !3382}
!3374 = !DILocalVariable(name: "d", arg: 1, scope: !3372, file: !2, line: 370, type: !820)
!3375 = !DILocalVariable(name: "attr", arg: 2, scope: !3372, file: !2, line: 370, type: !2031)
!3376 = !DILocalVariable(name: "buf", arg: 3, scope: !3372, file: !2, line: 371, type: !122)
!3377 = !DILocalVariable(name: "count", arg: 4, scope: !3372, file: !2, line: 371, type: !297)
!3378 = !DILocalVariable(name: "acpi_device", scope: !3372, file: !2, line: 373, type: !124)
!3379 = !DILocalVariable(name: "__mptr", scope: !3380, file: !2, line: 373, type: !97)
!3380 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 373, column: 36)
!3381 = !DILocalVariable(name: "not_used", scope: !3372, file: !2, line: 374, type: !1774)
!3382 = !DILocalVariable(name: "status", scope: !3372, file: !2, line: 375, type: !1968)
!3383 = !DILocation(line: 370, column: 28, scope: !3372)
!3384 = !DILocation(line: 370, column: 56, scope: !3372)
!3385 = !DILocation(line: 371, column: 18, scope: !3372)
!3386 = !DILocation(line: 371, column: 30, scope: !3372)
!3387 = !DILocation(line: 373, column: 2, scope: !3372)
!3388 = !DILocation(line: 373, column: 22, scope: !3372)
!3389 = !DILocation(line: 373, column: 36, scope: !3380)
!3390 = !DILocation(line: 373, column: 36, scope: !3372)
!3391 = !DILocation(line: 374, column: 2, scope: !3372)
!3392 = !DILocation(line: 374, column: 19, scope: !3372)
!3393 = !DILocation(line: 375, column: 2, scope: !3372)
!3394 = !DILocation(line: 375, column: 14, scope: !3372)
!3395 = !DILocation(line: 377, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 377, column: 6)
!3397 = !DILocation(line: 377, column: 13, scope: !3396)
!3398 = !DILocation(line: 377, column: 16, scope: !3396)
!3399 = !DILocation(line: 377, column: 23, scope: !3396)
!3400 = !DILocation(line: 377, column: 6, scope: !3372)
!3401 = !DILocation(line: 378, column: 3, scope: !3396)
!3402 = !DILocation(line: 380, column: 8, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 380, column: 6)
!3404 = !DILocation(line: 380, column: 21, scope: !3403)
!3405 = !DILocation(line: 380, column: 29, scope: !3403)
!3406 = !DILocation(line: 380, column: 33, scope: !3403)
!3407 = !DILocation(line: 380, column: 46, scope: !3403)
!3408 = !DILocation(line: 380, column: 55, scope: !3403)
!3409 = !DILocation(line: 380, column: 63, scope: !3403)
!3410 = !DILocation(line: 381, column: 6, scope: !3403)
!3411 = !DILocation(line: 381, column: 10, scope: !3403)
!3412 = !DILocation(line: 381, column: 13, scope: !3403)
!3413 = !DILocation(line: 380, column: 6, scope: !3372)
!3414 = !DILocation(line: 382, column: 3, scope: !3403)
!3415 = !DILocation(line: 384, column: 25, scope: !3372)
!3416 = !DILocation(line: 384, column: 38, scope: !3372)
!3417 = !DILocation(line: 384, column: 11, scope: !3372)
!3418 = !DILocation(line: 384, column: 9, scope: !3372)
!3419 = !DILocation(line: 385, column: 6, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 385, column: 6)
!3421 = !DILocation(line: 385, column: 27, scope: !3420)
!3422 = !DILocation(line: 385, column: 31, scope: !3420)
!3423 = !DILocation(line: 385, column: 44, scope: !3420)
!3424 = !DILocation(line: 385, column: 50, scope: !3420)
!3425 = !DILocation(line: 385, column: 6, scope: !3372)
!3426 = !DILocation(line: 386, column: 3, scope: !3420)
!3427 = !DILocation(line: 388, column: 15, scope: !3372)
!3428 = !DILocation(line: 388, column: 2, scope: !3372)
!3429 = !DILocation(line: 389, column: 33, scope: !3372)
!3430 = !DILocation(line: 389, column: 11, scope: !3372)
!3431 = !DILocation(line: 389, column: 9, scope: !3372)
!3432 = !DILocation(line: 390, column: 6, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 390, column: 6)
!3434 = !DILocation(line: 390, column: 6, scope: !3372)
!3435 = !DILocation(line: 391, column: 10, scope: !3433)
!3436 = !DILocation(line: 391, column: 3, scope: !3433)
!3437 = !DILocation(line: 393, column: 15, scope: !3372)
!3438 = !DILocation(line: 393, column: 2, scope: !3372)
!3439 = !DILocation(line: 394, column: 20, scope: !3372)
!3440 = !DILocation(line: 394, column: 33, scope: !3372)
!3441 = !DILocation(line: 394, column: 2, scope: !3372)
!3442 = !DILocation(line: 396, column: 9, scope: !3372)
!3443 = !DILocation(line: 396, column: 16, scope: !3372)
!3444 = !DILocation(line: 396, column: 2, scope: !3372)
!3445 = !DILocation(line: 397, column: 1, scope: !3372)
!3446 = !DISubprogram(name: "acpi_get_type", scope: !2809, file: !2809, line: 577, type: !3447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!1968, !132, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!3450 = distinct !DISubprogram(name: "acpi_dev_get", scope: !118, file: !118, line: 802, type: !3451, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!124, !124}
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "adev", arg: 1, scope: !3450, file: !118, line: 802, type: !124)
!3455 = !DILocalVariable(name: "__mptr", scope: !3456, file: !118, line: 804, type: !97)
!3456 = distinct !DILexicalBlock(scope: !3450, file: !118, line: 804, column: 16)
!3457 = !DILocation(line: 802, column: 68, scope: !3450)
!3458 = !DILocation(line: 804, column: 9, scope: !3450)
!3459 = !DILocation(line: 804, column: 16, scope: !3456)
!3460 = !DILocation(line: 804, column: 16, scope: !3450)
!3461 = !DILocation(line: 804, column: 2, scope: !3450)
!3462 = !DISubprogram(name: "acpi_hotplug_schedule", scope: !2496, file: !2496, line: 80, type: !3463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!1968, !124, !128}
!3465 = distinct !DISubprogram(name: "acpi_dev_put", scope: !118, file: !118, line: 807, type: !1926, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3466)
!3466 = !{!3467}
!3467 = !DILocalVariable(name: "adev", arg: 1, scope: !3465, file: !118, line: 807, type: !124)
!3468 = !DILocation(line: 807, column: 53, scope: !3465)
!3469 = !DILocation(line: 809, column: 6, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3465, file: !118, line: 809, column: 6)
!3471 = !DILocation(line: 809, column: 6, scope: !3465)
!3472 = !DILocation(line: 810, column: 15, scope: !3470)
!3473 = !DILocation(line: 810, column: 21, scope: !3470)
!3474 = !DILocation(line: 810, column: 3, scope: !3470)
!3475 = !DILocation(line: 811, column: 1, scope: !3465)
!3476 = !DISubprogram(name: "acpi_evaluate_ost", scope: !118, file: !118, line: 36, type: !3477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!1968, !132, !128, !128, !2818}
!3479 = !DISubprogram(name: "get_device", scope: !32, file: !32, line: 1230, type: !3480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!820, !820}
!3482 = !DISubprogram(name: "put_device", scope: !32, file: !32, line: 1231, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3483 = distinct !DISubprogram(name: "power_state_show", scope: !2, file: !2, line: 359, type: !2029, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3484)
!3484 = !{!3485, !3486, !3487, !3488, !3489}
!3485 = !DILocalVariable(name: "dev", arg: 1, scope: !3483, file: !2, line: 359, type: !820)
!3486 = !DILocalVariable(name: "attr", arg: 2, scope: !3483, file: !2, line: 360, type: !2031)
!3487 = !DILocalVariable(name: "buf", arg: 3, scope: !3483, file: !2, line: 360, type: !114)
!3488 = !DILocalVariable(name: "adev", scope: !3483, file: !2, line: 362, type: !124)
!3489 = !DILocalVariable(name: "__mptr", scope: !3490, file: !2, line: 362, type: !97)
!3490 = distinct !DILexicalBlock(scope: !3483, file: !2, line: 362, column: 29)
!3491 = !DILocation(line: 359, column: 48, scope: !3483)
!3492 = !DILocation(line: 360, column: 30, scope: !3483)
!3493 = !DILocation(line: 360, column: 42, scope: !3483)
!3494 = !DILocation(line: 362, column: 2, scope: !3483)
!3495 = !DILocation(line: 362, column: 22, scope: !3483)
!3496 = !DILocation(line: 362, column: 29, scope: !3490)
!3497 = !DILocation(line: 362, column: 29, scope: !3483)
!3498 = !DILocation(line: 364, column: 17, scope: !3483)
!3499 = !DILocation(line: 364, column: 54, scope: !3483)
!3500 = !DILocation(line: 364, column: 60, scope: !3483)
!3501 = !DILocation(line: 364, column: 66, scope: !3483)
!3502 = !DILocation(line: 364, column: 30, scope: !3483)
!3503 = !DILocation(line: 364, column: 9, scope: !3483)
!3504 = !DILocation(line: 365, column: 1, scope: !3483)
!3505 = !DILocation(line: 364, column: 2, scope: !3483)
!3506 = !DISubprogram(name: "acpi_power_state_string", scope: !118, file: !118, line: 537, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!122, !52}
!3509 = distinct !DISubprogram(name: "real_power_state_show", scope: !2, file: !2, line: 343, type: !2029, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3510)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3517, !3518}
!3511 = !DILocalVariable(name: "dev", arg: 1, scope: !3509, file: !2, line: 343, type: !820)
!3512 = !DILocalVariable(name: "attr", arg: 2, scope: !3509, file: !2, line: 344, type: !2031)
!3513 = !DILocalVariable(name: "buf", arg: 3, scope: !3509, file: !2, line: 344, type: !114)
!3514 = !DILocalVariable(name: "adev", scope: !3509, file: !2, line: 346, type: !124)
!3515 = !DILocalVariable(name: "__mptr", scope: !3516, file: !2, line: 346, type: !97)
!3516 = distinct !DILexicalBlock(scope: !3509, file: !2, line: 346, column: 29)
!3517 = !DILocalVariable(name: "state", scope: !3509, file: !2, line: 347, type: !52)
!3518 = !DILocalVariable(name: "ret", scope: !3509, file: !2, line: 348, type: !52)
!3519 = !DILocation(line: 343, column: 53, scope: !3509)
!3520 = !DILocation(line: 344, column: 35, scope: !3509)
!3521 = !DILocation(line: 344, column: 47, scope: !3509)
!3522 = !DILocation(line: 346, column: 2, scope: !3509)
!3523 = !DILocation(line: 346, column: 22, scope: !3509)
!3524 = !DILocation(line: 346, column: 29, scope: !3516)
!3525 = !DILocation(line: 346, column: 29, scope: !3509)
!3526 = !DILocation(line: 347, column: 2, scope: !3509)
!3527 = !DILocation(line: 347, column: 6, scope: !3509)
!3528 = !DILocation(line: 348, column: 2, scope: !3509)
!3529 = !DILocation(line: 348, column: 6, scope: !3509)
!3530 = !DILocation(line: 350, column: 30, scope: !3509)
!3531 = !DILocation(line: 350, column: 8, scope: !3509)
!3532 = !DILocation(line: 350, column: 6, scope: !3509)
!3533 = !DILocation(line: 351, column: 6, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3509, file: !2, line: 351, column: 6)
!3535 = !DILocation(line: 351, column: 6, scope: !3509)
!3536 = !DILocation(line: 352, column: 10, scope: !3534)
!3537 = !DILocation(line: 352, column: 3, scope: !3534)
!3538 = !DILocation(line: 354, column: 17, scope: !3509)
!3539 = !DILocation(line: 354, column: 54, scope: !3509)
!3540 = !DILocation(line: 354, column: 30, scope: !3509)
!3541 = !DILocation(line: 354, column: 9, scope: !3509)
!3542 = !DILocation(line: 354, column: 2, scope: !3509)
!3543 = !DILocation(line: 355, column: 1, scope: !3509)
!3544 = !DISubprogram(name: "acpi_device_get_power", scope: !2496, file: !2496, line: 142, type: !3545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!52, !124, !1058}
!3547 = !DILocation(line: 84, column: 55, scope: !2113)
!3548 = !DILocation(line: 86, column: 2, scope: !2113)
!3549 = !DILocation(line: 86, column: 5, scope: !2113)
!3550 = !DILocation(line: 86, column: 10, scope: !2113)
!3551 = !DILocation(line: 87, column: 2, scope: !2113)
!3552 = !DILocation(line: 87, column: 2, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !2113, file: !918, line: 87, column: 2)
!3554 = !DILocation(line: 88, column: 1, scope: !2113)
!3555 = !DISubprogram(name: "kobject_init_and_add", scope: !172, file: !172, line: 96, type: !3556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!52, !177, !264, !177, !122, null}
!3558 = !DISubprogram(name: "acpi_handle_printk", scope: !3559, file: !3559, line: 1180, type: !3560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3559 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!3560 = !DISubroutineType(types: !3561)
!3561 = !{null, !122, !132, !122, null}
!3562 = !DISubprogram(name: "__init_swait_queue_head", scope: !923, file: !923, line: 69, type: !3563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{null, !3565, !122, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!3567 = distinct !DISubprogram(name: "acpi_data_node_release", scope: !2, file: !2, line: 74, type: !270, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DILocalVariable(name: "kobj", arg: 1, scope: !3567, file: !2, line: 74, type: !177)
!3570 = !DILocalVariable(name: "dn", scope: !3567, file: !2, line: 76, type: !1969)
!3571 = !DILocalVariable(name: "__mptr", scope: !3572, file: !2, line: 76, type: !97)
!3572 = distinct !DILexicalBlock(scope: !3567, file: !2, line: 76, column: 30)
!3573 = !DILocation(line: 74, column: 52, scope: !3567)
!3574 = !DILocation(line: 76, column: 2, scope: !3567)
!3575 = !DILocation(line: 76, column: 25, scope: !3567)
!3576 = !DILocation(line: 76, column: 30, scope: !3572)
!3577 = !DILocation(line: 76, column: 30, scope: !3567)
!3578 = !DILocation(line: 78, column: 12, scope: !3567)
!3579 = !DILocation(line: 78, column: 16, scope: !3567)
!3580 = !DILocation(line: 78, column: 2, scope: !3567)
!3581 = !DILocation(line: 79, column: 1, scope: !3567)
!3582 = !DISubprogram(name: "complete", scope: !918, file: !918, line: 118, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3583 = distinct !DISubprogram(name: "acpi_data_node_attr_show", scope: !2, file: !2, line: 61, type: !280, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3584)
!3584 = !{!3585, !3586, !3587, !3588, !3589, !3591, !3592}
!3585 = !DILocalVariable(name: "kobj", arg: 1, scope: !3583, file: !2, line: 61, type: !177)
!3586 = !DILocalVariable(name: "attr", arg: 2, scope: !3583, file: !2, line: 62, type: !287)
!3587 = !DILocalVariable(name: "buf", arg: 3, scope: !3583, file: !2, line: 62, type: !114)
!3588 = !DILocalVariable(name: "dn", scope: !3583, file: !2, line: 64, type: !1969)
!3589 = !DILocalVariable(name: "__mptr", scope: !3590, file: !2, line: 64, type: !97)
!3590 = distinct !DILexicalBlock(scope: !3583, file: !2, line: 64, column: 30)
!3591 = !DILocalVariable(name: "dn_attr", scope: !3583, file: !2, line: 65, type: !1980)
!3592 = !DILocalVariable(name: "__mptr", scope: !3593, file: !2, line: 65, type: !97)
!3593 = distinct !DILexicalBlock(scope: !3583, file: !2, line: 65, column: 40)
!3594 = !DILocation(line: 61, column: 57, scope: !3583)
!3595 = !DILocation(line: 62, column: 24, scope: !3583)
!3596 = !DILocation(line: 62, column: 36, scope: !3583)
!3597 = !DILocation(line: 64, column: 2, scope: !3583)
!3598 = !DILocation(line: 64, column: 25, scope: !3583)
!3599 = !DILocation(line: 64, column: 30, scope: !3590)
!3600 = !DILocation(line: 64, column: 30, scope: !3583)
!3601 = !DILocation(line: 65, column: 2, scope: !3583)
!3602 = !DILocation(line: 65, column: 30, scope: !3583)
!3603 = !DILocation(line: 65, column: 40, scope: !3593)
!3604 = !DILocation(line: 65, column: 40, scope: !3583)
!3605 = !DILocation(line: 67, column: 9, scope: !3583)
!3606 = !DILocation(line: 67, column: 18, scope: !3583)
!3607 = !DILocation(line: 67, column: 25, scope: !3583)
!3608 = !DILocation(line: 67, column: 34, scope: !3583)
!3609 = !DILocation(line: 67, column: 39, scope: !3583)
!3610 = !DILocation(line: 67, column: 43, scope: !3583)
!3611 = !DILocation(line: 68, column: 1, scope: !3583)
!3612 = !DILocation(line: 67, column: 2, scope: !3583)
!3613 = distinct !DISubprogram(name: "data_node_show_path", scope: !2, file: !2, line: 45, type: !1986, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3614)
!3614 = !{!3615, !3616}
!3615 = !DILocalVariable(name: "dn", arg: 1, scope: !3613, file: !2, line: 45, type: !1969)
!3616 = !DILocalVariable(name: "buf", arg: 2, scope: !3613, file: !2, line: 45, type: !114)
!3617 = !DILocation(line: 45, column: 59, scope: !3613)
!3618 = !DILocation(line: 45, column: 69, scope: !3613)
!3619 = !DILocation(line: 47, column: 9, scope: !3613)
!3620 = !DILocation(line: 47, column: 13, scope: !3613)
!3621 = !DILocation(line: 47, column: 39, scope: !3613)
!3622 = !DILocation(line: 47, column: 43, scope: !3613)
!3623 = !DILocation(line: 47, column: 51, scope: !3613)
!3624 = !DILocation(line: 47, column: 22, scope: !3613)
!3625 = !DILocation(line: 47, column: 2, scope: !3613)
!3626 = !DISubprogram(name: "kobject_put", scope: !172, file: !172, line: 110, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
