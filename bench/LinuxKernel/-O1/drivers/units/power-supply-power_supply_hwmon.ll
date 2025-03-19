; ModuleID = 'drivers/power/supply/power_supply_hwmon.c'
source_filename = "drivers/power/supply/power_supply_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_type_attr_list = type { ptr, i64 }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.power_supply = type { ptr, ptr, i64, ptr, i64, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.power_supply_hwmon = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.power_supply_propval = type { ptr }

@power_supply_hwmon_chip_info = internal constant %struct.hwmon_chip_info { ptr @power_supply_hwmon_ops, ptr @power_supply_hwmon_info }, align 8, !dbg !0
@power_supply_hwmon_ops = internal constant %struct.hwmon_ops { ptr @power_supply_hwmon_is_visible, ptr @power_supply_hwmon_read, ptr @power_supply_hwmon_read_string, ptr @power_supply_hwmon_write }, align 8, !dbg !298
@power_supply_hwmon_info = internal constant [4 x ptr] [ptr @.compoundliteral.3, ptr @.compoundliteral.5, ptr @.compoundliteral.7, ptr null], align 16, !dbg !1817
@ps_temp_attrs = internal constant [5 x i32] [i32 1, i32 5, i32 7, i32 15, i32 16], align 16, !dbg !1800
@ps_type_attrs = internal constant <{ %struct.hwmon_type_attr_list, %struct.hwmon_type_attr_list, [8 x %struct.hwmon_type_attr_list] }> <{ %struct.hwmon_type_attr_list zeroinitializer, %struct.hwmon_type_attr_list { ptr @ps_temp_attrs, i64 5 }, [8 x %struct.hwmon_type_attr_list] zeroinitializer }>, align 16, !dbg !1788
@ps_temp_label = internal constant [2 x ptr] [ptr @.str, ptr @.str.2], align 16, !dbg !1813
@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1, !dbg !1805
@.str.2 = private unnamed_addr constant [13 x i8] c"ambient temp\00", align 1, !dbg !1808
@.compoundliteral = internal global [3 x i32] [i32 2195618, i32 2195458, i32 0], align 4
@.compoundliteral.3 = internal global %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, align 8
@.compoundliteral.4 = internal global [2 x i32] [i32 74, i32 0], align 4
@.compoundliteral.5 = internal global %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.4 }, align 8
@.compoundliteral.6 = internal global [2 x i32] [i32 78, i32 0], align 4
@.compoundliteral.7 = internal global %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.6 }, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @power_supply_add_hwmon_sysfs(ptr noundef %psy) #0 align 16 !dbg !1843 {
entry:
  %retval = alloca i32, align 4
  %psy.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %psyhw = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %hwmon = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %prop = alloca i32, align 4
  %new_name = alloca ptr, align 8
  store ptr %psy, ptr %psy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psy.addr, metadata !2081, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !2103
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2082, metadata !DIExpression()), !dbg !2104
  %0 = load ptr, ptr %psy.addr, align 8, !dbg !2105
  %desc1 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 0, !dbg !2106
  %1 = load ptr, ptr %desc1, align 8, !dbg !2106
  store ptr %1, ptr %desc, align 8, !dbg !2104
  call void @llvm.lifetime.start.p0(i64 8, ptr %psyhw) #10, !dbg !2107
  call void @llvm.dbg.declare(metadata ptr %psyhw, metadata !2083, metadata !DIExpression()), !dbg !2108
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !2109
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2089, metadata !DIExpression()), !dbg !2110
  %2 = load ptr, ptr %psy.addr, align 8, !dbg !2111
  %dev2 = getelementptr inbounds %struct.power_supply, ptr %2, i32 0, i32 7, !dbg !2112
  store ptr %dev2, ptr %dev, align 8, !dbg !2110
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwmon) #10, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %hwmon, metadata !2090, metadata !DIExpression()), !dbg !2114
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2091, metadata !DIExpression()), !dbg !2116
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2092, metadata !DIExpression()), !dbg !2117
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #10, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %name, metadata !2093, metadata !DIExpression()), !dbg !2119
  %3 = load ptr, ptr %dev, align 8, !dbg !2120
  %call = call ptr @devres_open_group(ptr noundef %3, ptr noundef @power_supply_add_hwmon_sysfs, i32 noundef 3264) #11, !dbg !2122
  %tobool = icmp ne ptr %call, null, !dbg !2122
  br i1 %tobool, label %if.end, label %if.then, !dbg !2123

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !2124

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !2125
  %call3 = call ptr @devm_kzalloc(ptr noundef %4, i64 noundef 16, i32 noundef 3264) #11, !dbg !2126
  store ptr %call3, ptr %psyhw, align 8, !dbg !2127
  %5 = load ptr, ptr %psyhw, align 8, !dbg !2128
  %tobool4 = icmp ne ptr %5, null, !dbg !2128
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2130

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !2131
  br label %error, !dbg !2133

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %psy.addr, align 8, !dbg !2134
  %7 = load ptr, ptr %psyhw, align 8, !dbg !2135
  %psy7 = getelementptr inbounds %struct.power_supply_hwmon, ptr %7, i32 0, i32 0, !dbg !2136
  store ptr %6, ptr %psy7, align 8, !dbg !2137
  %8 = load ptr, ptr %dev, align 8, !dbg !2138
  %call8 = call ptr @devm_bitmap_zalloc(ptr noundef %8, i32 noundef 64, i32 noundef 3264) #11, !dbg !2139
  %9 = load ptr, ptr %psyhw, align 8, !dbg !2140
  %props = getelementptr inbounds %struct.power_supply_hwmon, ptr %9, i32 0, i32 1, !dbg !2141
  store ptr %call8, ptr %props, align 8, !dbg !2142
  %10 = load ptr, ptr %psyhw, align 8, !dbg !2143
  %props9 = getelementptr inbounds %struct.power_supply_hwmon, ptr %10, i32 0, i32 1, !dbg !2145
  %11 = load ptr, ptr %props9, align 8, !dbg !2145
  %tobool10 = icmp ne ptr %11, null, !dbg !2143
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2146

if.then11:                                        ; preds = %if.end6
  store i32 -12, ptr %ret, align 4, !dbg !2147
  br label %error, !dbg !2149

if.end12:                                         ; preds = %if.end6
  store i32 0, ptr %i, align 4, !dbg !2150
  br label %for.cond, !dbg !2151

for.cond:                                         ; preds = %for.inc, %if.end12
  %12 = load i32, ptr %i, align 4, !dbg !2152
  %conv = sext i32 %12 to i64, !dbg !2152
  %13 = load ptr, ptr %desc, align 8, !dbg !2153
  %num_properties = getelementptr inbounds %struct.power_supply_desc, ptr %13, i32 0, i32 5, !dbg !2154
  %14 = load i64, ptr %num_properties, align 8, !dbg !2154
  %cmp = icmp ult i64 %conv, %14, !dbg !2155
  br i1 %cmp, label %for.body, label %for.end, !dbg !2156

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %prop) #10, !dbg !2157
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !2094, metadata !DIExpression()), !dbg !2158
  %15 = load ptr, ptr %desc, align 8, !dbg !2159
  %properties = getelementptr inbounds %struct.power_supply_desc, ptr %15, i32 0, i32 4, !dbg !2160
  %16 = load ptr, ptr %properties, align 8, !dbg !2160
  %17 = load i32, ptr %i, align 4, !dbg !2161
  %idxprom = sext i32 %17 to i64, !dbg !2159
  %arrayidx = getelementptr i32, ptr %16, i64 %idxprom, !dbg !2159
  %18 = load i32, ptr %arrayidx, align 4, !dbg !2159
  store i32 %18, ptr %prop, align 4, !dbg !2158
  %19 = load i32, ptr %prop, align 4, !dbg !2162
  switch i32 %19, label %sw.default [
    i32 18, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
  ], !dbg !2163

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %20 = load i32, ptr %prop, align 4, !dbg !2164
  %conv14 = zext i32 %20 to i64, !dbg !2164
  %21 = load ptr, ptr %psyhw, align 8, !dbg !2166
  %props15 = getelementptr inbounds %struct.power_supply_hwmon, ptr %21, i32 0, i32 1, !dbg !2167
  %22 = load ptr, ptr %props15, align 8, !dbg !2167
  call void @set_bit(i64 noundef %conv14, ptr noundef %22) #11, !dbg !2168
  br label %sw.epilog, !dbg !2169

sw.default:                                       ; preds = %for.body
  br label %sw.epilog, !dbg !2170

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %prop) #10, !dbg !2171
  br label %for.inc, !dbg !2172

for.inc:                                          ; preds = %sw.epilog
  %23 = load i32, ptr %i, align 4, !dbg !2173
  %inc = add i32 %23, 1, !dbg !2173
  store i32 %inc, ptr %i, align 4, !dbg !2173
  br label %for.cond, !dbg !2174, !llvm.loop !2175

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %psy.addr, align 8, !dbg !2179
  %desc16 = getelementptr inbounds %struct.power_supply, ptr %24, i32 0, i32 0, !dbg !2180
  %25 = load ptr, ptr %desc16, align 8, !dbg !2180
  %name17 = getelementptr inbounds %struct.power_supply_desc, ptr %25, i32 0, i32 0, !dbg !2181
  %26 = load ptr, ptr %name17, align 8, !dbg !2181
  store ptr %26, ptr %name, align 8, !dbg !2182
  %27 = load ptr, ptr %name, align 8, !dbg !2183
  %call18 = call ptr @strchr(ptr noundef %27, i32 noundef 45) #11, !dbg !2184
  %tobool19 = icmp ne ptr %call18, null, !dbg !2184
  br i1 %tobool19, label %if.then20, label %if.end26, !dbg !2185

if.then20:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_name) #10, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %new_name, metadata !2098, metadata !DIExpression()), !dbg !2187
  %28 = load ptr, ptr %dev, align 8, !dbg !2188
  %29 = load ptr, ptr %name, align 8, !dbg !2189
  %call21 = call noalias ptr @devm_kstrdup(ptr noundef %28, ptr noundef %29, i32 noundef 3264) #11, !dbg !2190
  store ptr %call21, ptr %new_name, align 8, !dbg !2191
  %30 = load ptr, ptr %new_name, align 8, !dbg !2192
  %tobool22 = icmp ne ptr %30, null, !dbg !2192
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2194

if.then23:                                        ; preds = %if.then20
  store i32 -12, ptr %ret, align 4, !dbg !2195
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2197

if.end24:                                         ; preds = %if.then20
  %31 = load ptr, ptr %new_name, align 8, !dbg !2198
  %call25 = call ptr @strreplace(ptr noundef %31, i8 noundef zeroext 45, i8 noundef zeroext 95) #11, !dbg !2199
  %32 = load ptr, ptr %new_name, align 8, !dbg !2200
  store ptr %32, ptr %name, align 8, !dbg !2201
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2202
  br label %cleanup, !dbg !2202

cleanup:                                          ; preds = %if.then23, %if.end24
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_name) #10, !dbg !2202
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26, !dbg !2203

if.end26:                                         ; preds = %cleanup.cont, %for.end
  %33 = load ptr, ptr %dev, align 8, !dbg !2204
  %34 = load ptr, ptr %name, align 8, !dbg !2205
  %35 = load ptr, ptr %psyhw, align 8, !dbg !2206
  %call27 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef @power_supply_hwmon_chip_info, ptr noundef null) #11, !dbg !2207
  store ptr %call27, ptr %hwmon, align 8, !dbg !2208
  %36 = load ptr, ptr %hwmon, align 8, !dbg !2209
  %call28 = call i32 @PTR_ERR_OR_ZERO(ptr noundef %36) #11, !dbg !2210
  store i32 %call28, ptr %ret, align 4, !dbg !2211
  %37 = load i32, ptr %ret, align 4, !dbg !2212
  %tobool29 = icmp ne i32 %37, 0, !dbg !2212
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !2214

if.then30:                                        ; preds = %if.end26
  br label %error, !dbg !2215

if.end31:                                         ; preds = %if.end26
  %38 = load ptr, ptr %dev, align 8, !dbg !2216
  call void @devres_close_group(ptr noundef %38, ptr noundef @power_supply_add_hwmon_sysfs) #11, !dbg !2217
  store i32 0, ptr %retval, align 4, !dbg !2218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !2218

error:                                            ; preds = %cleanup, %if.then30, %if.then11, %if.then5
  call void @llvm.dbg.label(metadata !2101), !dbg !2219
  %39 = load ptr, ptr %dev, align 8, !dbg !2220
  %call32 = call i32 @devres_release_group(ptr noundef %39, ptr noundef null) #11, !dbg !2221
  %40 = load i32, ptr %ret, align 4, !dbg !2222
  store i32 %40, ptr %retval, align 4, !dbg !2223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !2223

cleanup33:                                        ; preds = %error, %if.end31, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #10, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwmon) #10, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %psyhw) #10, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !2224
  %41 = load i32, ptr %retval, align 4, !dbg !2224
  ret i32 %41, !dbg !2224
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2225 dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #4 align 16 !dbg !2228 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2232, metadata !DIExpression()), !dbg !2235
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2233, metadata !DIExpression()), !dbg !2236
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2234, metadata !DIExpression()), !dbg !2237
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2238
  %1 = load i64, ptr %size.addr, align 8, !dbg !2239
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !2240
  %or = or i32 %2, 256, !dbg !2241
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #12, !dbg !2242
  ret ptr %call, !dbg !2243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2244 dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2248 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2255, metadata !DIExpression()), !dbg !2257
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2256, metadata !DIExpression()), !dbg !2258
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2259
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2260
  %div = sdiv i64 %1, 64, !dbg !2260
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2261
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !2262
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2263
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2264
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2267 dso_local ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2271 dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2274 dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2277 dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PTR_ERR_OR_ZERO(ptr noundef %ptr) #4 align 16 !dbg !2281 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2286, metadata !DIExpression()), !dbg !2287
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2288
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #11, !dbg !2290
  br i1 %call, label %if.then, label %if.else, !dbg !2291

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2292
  %call1 = call i64 @PTR_ERR(ptr noundef %1) #11, !dbg !2293
  %conv = trunc i64 %call1 to i32, !dbg !2293
  store i32 %conv, ptr %retval, align 4, !dbg !2294
  br label %return, !dbg !2294

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2295
  br label %return, !dbg !2295

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2296
  ret i32 %2, !dbg !2296
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2297 dso_local void @devres_close_group(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2300 dso_local i32 @devres_release_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @power_supply_remove_hwmon_sysfs(ptr noundef %psy) #0 align 16 !dbg !2303 {
entry:
  %psy.addr = alloca ptr, align 8
  store ptr %psy, ptr %psy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psy.addr, metadata !2305, metadata !DIExpression()), !dbg !2306
  %0 = load ptr, ptr %psy.addr, align 8, !dbg !2307
  %dev = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7, !dbg !2308
  %call = call i32 @devres_release_group(ptr noundef %dev, ptr noundef @power_supply_add_hwmon_sysfs) #11, !dbg !2309
  ret void, !dbg !2310
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !2311 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2312 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2320, metadata !DIExpression()), !dbg !2322
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2321, metadata !DIExpression()), !dbg !2323
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2324
  %1 = load i64, ptr %size.addr, align 8, !dbg !2325
  %conv = trunc i64 %1 to i32, !dbg !2325
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !2326
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2327
  %3 = load i64, ptr %size.addr, align 8, !dbg !2327
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !2327
  ret void, !dbg !2328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2329 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2332, metadata !DIExpression()), !dbg !2334
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2333, metadata !DIExpression()), !dbg !2335
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2336
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2338
  br i1 %1, label %if.then, label %if.else, !dbg !2339

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2340
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2340
  %shr = ashr i64 %3, 3, !dbg !2340
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2340
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2342
  %and = and i64 %4, 7, !dbg !2342
  %sh_prom = trunc i64 %and to i32, !dbg !2342
  %shl = shl i32 1, %sh_prom, !dbg !2342
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #10, !dbg !2343, !srcloc !2344
  br label %if.end, !dbg !2345

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2346
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2348
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #10, !dbg !2349, !srcloc !2350
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2351
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2352 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2357, metadata !DIExpression()), !dbg !2359
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2358, metadata !DIExpression()), !dbg !2360
  ret i1 true, !dbg !2361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !2362 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2367, metadata !DIExpression()), !dbg !2370
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2368, metadata !DIExpression()), !dbg !2371
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2369, metadata !DIExpression()), !dbg !2372
  ret void, !dbg !2373
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @power_supply_hwmon_is_visible(ptr noundef %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #0 align 16 !dbg !2374 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %psyhw = alloca ptr, align 8
  %prop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2376, metadata !DIExpression()), !dbg !2384
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2377, metadata !DIExpression()), !dbg !2385
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2378, metadata !DIExpression()), !dbg !2386
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !2379, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 8, ptr %psyhw) #10, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %psyhw, metadata !2380, metadata !DIExpression()), !dbg !2389
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2390
  store ptr %0, ptr %psyhw, align 8, !dbg !2389
  call void @llvm.lifetime.start.p0(i64 4, ptr %prop) #10, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !2383, metadata !DIExpression()), !dbg !2392
  %1 = load i32, ptr %type.addr, align 4, !dbg !2393
  %2 = load i32, ptr %attr.addr, align 4, !dbg !2395
  %call = call zeroext i1 @power_supply_hwmon_is_a_label(i32 noundef %1, i32 noundef %2) #11, !dbg !2396
  br i1 %call, label %if.then, label %if.end, !dbg !2397

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %psyhw, align 8, !dbg !2398
  %4 = load i32, ptr %type.addr, align 4, !dbg !2401
  %5 = load i32, ptr %channel.addr, align 4, !dbg !2402
  %call1 = call zeroext i1 @power_supply_hwmon_has_input(ptr noundef %3, i32 noundef %4, i32 noundef %5) #11, !dbg !2403
  br i1 %call1, label %if.then2, label %if.else, !dbg !2404

if.then2:                                         ; preds = %if.then
  store i16 292, ptr %retval, align 2, !dbg !2405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2405

if.else:                                          ; preds = %if.then
  store i16 0, ptr %retval, align 2, !dbg !2406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2406

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %type.addr, align 4, !dbg !2407
  %7 = load i32, ptr %attr.addr, align 4, !dbg !2408
  %8 = load i32, ptr %channel.addr, align 4, !dbg !2409
  %call3 = call i32 @power_supply_hwmon_to_property(i32 noundef %6, i32 noundef %7, i32 noundef %8) #11, !dbg !2410
  store i32 %call3, ptr %prop, align 4, !dbg !2411
  %9 = load i32, ptr %prop, align 4, !dbg !2412
  %cmp = icmp slt i32 %9, 0, !dbg !2414
  br i1 %cmp, label %if.then19, label %lor.lhs.false, !dbg !2415

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, ptr %prop, align 4, !dbg !2416
  %11 = call i1 @llvm.is.constant.i32(i32 %10), !dbg !2416
  br i1 %11, label %land.lhs.true, label %cond.false, !dbg !2416

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load ptr, ptr %psyhw, align 8, !dbg !2416
  %props = getelementptr inbounds %struct.power_supply_hwmon, ptr %12, i32 0, i32 1, !dbg !2416
  %13 = load ptr, ptr %props, align 8, !dbg !2416
  %14 = ptrtoint ptr %13 to i64, !dbg !2416
  %cmp4 = icmp ne i64 %14, 0, !dbg !2416
  %conv = zext i1 %cmp4 to i32, !dbg !2416
  %15 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2416
  br i1 %15, label %land.lhs.true5, label %cond.false, !dbg !2416

land.lhs.true5:                                   ; preds = %land.lhs.true
  %16 = load ptr, ptr %psyhw, align 8, !dbg !2416
  %props6 = getelementptr inbounds %struct.power_supply_hwmon, ptr %16, i32 0, i32 1, !dbg !2416
  %17 = load ptr, ptr %props6, align 8, !dbg !2416
  %18 = ptrtoint ptr %17 to i64, !dbg !2416
  %cmp7 = icmp ne i64 %18, 0, !dbg !2416
  br i1 %cmp7, label %land.lhs.true9, label %cond.false, !dbg !2416

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %19 = load ptr, ptr %psyhw, align 8, !dbg !2416
  %props10 = getelementptr inbounds %struct.power_supply_hwmon, ptr %19, i32 0, i32 1, !dbg !2416
  %20 = load ptr, ptr %props10, align 8, !dbg !2416
  %21 = load i64, ptr %20, align 8, !dbg !2416
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !2416
  br i1 %22, label %cond.true, label %cond.false, !dbg !2417

cond.true:                                        ; preds = %land.lhs.true9
  %23 = load i32, ptr %prop, align 4, !dbg !2416
  %conv11 = sext i32 %23 to i64, !dbg !2416
  %24 = load ptr, ptr %psyhw, align 8, !dbg !2416
  %props12 = getelementptr inbounds %struct.power_supply_hwmon, ptr %24, i32 0, i32 1, !dbg !2416
  %25 = load ptr, ptr %props12, align 8, !dbg !2416
  %call13 = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef %25) #11, !dbg !2416
  br i1 %call13, label %if.end20, label %if.then19, !dbg !2416

cond.false:                                       ; preds = %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %lor.lhs.false
  %26 = load i32, ptr %prop, align 4, !dbg !2416
  %conv15 = sext i32 %26 to i64, !dbg !2416
  %27 = load ptr, ptr %psyhw, align 8, !dbg !2416
  %props16 = getelementptr inbounds %struct.power_supply_hwmon, ptr %27, i32 0, i32 1, !dbg !2416
  %28 = load ptr, ptr %props16, align 8, !dbg !2416
  %call17 = call zeroext i1 @_test_bit(i64 noundef %conv15, ptr noundef %28) #11, !dbg !2416
  br i1 %call17, label %if.end20, label %if.then19, !dbg !2417

if.then19:                                        ; preds = %cond.false, %cond.true, %if.end
  store i16 0, ptr %retval, align 2, !dbg !2418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2418

if.end20:                                         ; preds = %cond.false, %cond.true
  %29 = load ptr, ptr %psyhw, align 8, !dbg !2419
  %psy = getelementptr inbounds %struct.power_supply_hwmon, ptr %29, i32 0, i32 0, !dbg !2421
  %30 = load ptr, ptr %psy, align 8, !dbg !2421
  %31 = load i32, ptr %prop, align 4, !dbg !2422
  %call21 = call i32 @power_supply_property_is_writeable(ptr noundef %30, i32 noundef %31) #11, !dbg !2423
  %cmp22 = icmp sgt i32 %call21, 0, !dbg !2424
  br i1 %cmp22, label %land.lhs.true24, label %if.end28, !dbg !2425

land.lhs.true24:                                  ; preds = %if.end20
  %32 = load i32, ptr %type.addr, align 4, !dbg !2426
  %33 = load i32, ptr %attr.addr, align 4, !dbg !2427
  %call25 = call zeroext i1 @power_supply_hwmon_is_writable(i32 noundef %32, i32 noundef %33) #11, !dbg !2428
  br i1 %call25, label %if.then27, label %if.end28, !dbg !2429

if.then27:                                        ; preds = %land.lhs.true24
  store i16 420, ptr %retval, align 2, !dbg !2430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2430

if.end28:                                         ; preds = %land.lhs.true24, %if.end20
  store i16 292, ptr %retval, align 2, !dbg !2431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2431

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then19, %if.else, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %prop) #10, !dbg !2432
  call void @llvm.lifetime.end.p0(i64 8, ptr %psyhw) #10, !dbg !2432
  %34 = load i16, ptr %retval, align 2, !dbg !2432
  ret i16 %34, !dbg !2432
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @power_supply_hwmon_read(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr noundef %val) #0 align 16 !dbg !2433 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %psyhw = alloca ptr, align 8
  %psy = alloca ptr, align 8
  %pspval = alloca %union.power_supply_propval, align 8
  %ret = alloca i32, align 4
  %prop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2435, metadata !DIExpression()), !dbg !2449
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2436, metadata !DIExpression()), !dbg !2450
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2437, metadata !DIExpression()), !dbg !2451
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !2438, metadata !DIExpression()), !dbg !2452
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2439, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.start.p0(i64 8, ptr %psyhw) #10, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %psyhw, metadata !2440, metadata !DIExpression()), !dbg !2455
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2456
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #11, !dbg !2457
  store ptr %call, ptr %psyhw, align 8, !dbg !2455
  call void @llvm.lifetime.start.p0(i64 8, ptr %psy) #10, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %psy, metadata !2441, metadata !DIExpression()), !dbg !2459
  %1 = load ptr, ptr %psyhw, align 8, !dbg !2460
  %psy1 = getelementptr inbounds %struct.power_supply_hwmon, ptr %1, i32 0, i32 0, !dbg !2461
  %2 = load ptr, ptr %psy1, align 8, !dbg !2461
  store ptr %2, ptr %psy, align 8, !dbg !2459
  call void @llvm.lifetime.start.p0(i64 8, ptr %pspval) #10, !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %pspval, metadata !2442, metadata !DIExpression()), !dbg !2463
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2443, metadata !DIExpression()), !dbg !2465
  call void @llvm.lifetime.start.p0(i64 4, ptr %prop) #10, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !2444, metadata !DIExpression()), !dbg !2466
  %3 = load i32, ptr %type.addr, align 4, !dbg !2467
  %4 = load i32, ptr %attr.addr, align 4, !dbg !2468
  %5 = load i32, ptr %channel.addr, align 4, !dbg !2469
  %call2 = call i32 @power_supply_hwmon_to_property(i32 noundef %3, i32 noundef %4, i32 noundef %5) #11, !dbg !2470
  store i32 %call2, ptr %prop, align 4, !dbg !2471
  %6 = load i32, ptr %prop, align 4, !dbg !2472
  %cmp = icmp slt i32 %6, 0, !dbg !2474
  br i1 %cmp, label %if.then, label %if.end, !dbg !2475

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %prop, align 4, !dbg !2476
  store i32 %7, ptr %retval, align 4, !dbg !2477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2477

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %psy, align 8, !dbg !2478
  %9 = load i32, ptr %prop, align 4, !dbg !2479
  %call3 = call i32 @power_supply_get_property(ptr noundef %8, i32 noundef %9, ptr noundef %pspval) #11, !dbg !2480
  store i32 %call3, ptr %ret, align 4, !dbg !2481
  %10 = load i32, ptr %ret, align 4, !dbg !2482
  %tobool = icmp ne i32 %10, 0, !dbg !2482
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !2484

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %ret, align 4, !dbg !2485
  store i32 %11, ptr %retval, align 4, !dbg !2486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2486

if.end5:                                          ; preds = %if.end
  %12 = load i32, ptr %type.addr, align 4, !dbg !2487
  switch i32 %12, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb14
  ], !dbg !2488

sw.bb:                                            ; preds = %if.end5, %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #10, !dbg !2489
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !2445, metadata !DIExpression()), !dbg !2489
  %13 = load i32, ptr %pspval, align 8, !dbg !2489
  store i32 %13, ptr %__x, align 4, !dbg !2489
  call void @llvm.lifetime.start.p0(i64 4, ptr %__d) #10, !dbg !2489
  call void @llvm.dbg.declare(metadata ptr %__d, metadata !2448, metadata !DIExpression()), !dbg !2489
  store i32 1000, ptr %__d, align 4, !dbg !2489
  %14 = load i32, ptr %__x, align 4, !dbg !2489
  %cmp6 = icmp sgt i32 %14, 0, !dbg !2489
  %conv = zext i1 %cmp6 to i32, !dbg !2489
  %15 = load i32, ptr %__d, align 4, !dbg !2489
  %cmp7 = icmp sgt i32 %15, 0, !dbg !2489
  %conv8 = zext i1 %cmp7 to i32, !dbg !2489
  %cmp9 = icmp eq i32 %conv, %conv8, !dbg !2489
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !2489

cond.true:                                        ; preds = %sw.bb
  %16 = load i32, ptr %__x, align 4, !dbg !2489
  %17 = load i32, ptr %__d, align 4, !dbg !2489
  %div = sdiv i32 %17, 2, !dbg !2489
  %add = add i32 %16, %div, !dbg !2489
  %18 = load i32, ptr %__d, align 4, !dbg !2489
  %div11 = sdiv i32 %add, %18, !dbg !2489
  br label %cond.end, !dbg !2489

cond.false:                                       ; preds = %sw.bb
  %19 = load i32, ptr %__x, align 4, !dbg !2489
  %20 = load i32, ptr %__d, align 4, !dbg !2489
  %div12 = sdiv i32 %20, 2, !dbg !2489
  %sub = sub i32 %19, %div12, !dbg !2489
  %21 = load i32, ptr %__d, align 4, !dbg !2489
  %div13 = sdiv i32 %sub, %21, !dbg !2489
  br label %cond.end, !dbg !2489

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div11, %cond.true ], [ %div13, %cond.false ], !dbg !2489
  store i32 %cond, ptr %tmp, align 4, !dbg !2489
  call void @llvm.lifetime.end.p0(i64 4, ptr %__d) #10, !dbg !2490
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #10, !dbg !2490
  %22 = load i32, ptr %tmp, align 4, !dbg !2489
  store i32 %22, ptr %pspval, align 8, !dbg !2491
  br label %sw.epilog, !dbg !2492

sw.bb14:                                          ; preds = %if.end5
  %23 = load i32, ptr %pspval, align 8, !dbg !2493
  %24 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %23, i32 100), !dbg !2493
  %25 = extractvalue { i32, i1 } %24, 1, !dbg !2493
  %26 = extractvalue { i32, i1 } %24, 0, !dbg !2493
  store i32 %26, ptr %pspval, align 8, !dbg !2493
  %call15 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %25) #11, !dbg !2493
  br i1 %call15, label %if.then16, label %if.end17, !dbg !2495

if.then16:                                        ; preds = %sw.bb14
  store i32 -75, ptr %retval, align 4, !dbg !2496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2496

if.end17:                                         ; preds = %sw.bb14
  br label %sw.epilog, !dbg !2497

sw.default:                                       ; preds = %if.end5
  store i32 -22, ptr %retval, align 4, !dbg !2498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2498

sw.epilog:                                        ; preds = %if.end17, %cond.end
  %27 = load i32, ptr %pspval, align 8, !dbg !2499
  %conv18 = sext i32 %27 to i64, !dbg !2500
  %28 = load ptr, ptr %val.addr, align 8, !dbg !2501
  store i64 %conv18, ptr %28, align 8, !dbg !2502
  store i32 0, ptr %retval, align 4, !dbg !2503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2503

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then16, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prop) #10, !dbg !2504
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2504
  call void @llvm.lifetime.end.p0(i64 8, ptr %pspval) #10, !dbg !2504
  call void @llvm.lifetime.end.p0(i64 8, ptr %psy) #10, !dbg !2504
  call void @llvm.lifetime.end.p0(i64 8, ptr %psyhw) #10, !dbg !2504
  %29 = load i32, ptr %retval, align 4, !dbg !2504
  ret i32 %29, !dbg !2504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @power_supply_hwmon_read_string(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr noundef %str) #0 align 16 !dbg !2505 {
entry:
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2507, metadata !DIExpression()), !dbg !2512
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2508, metadata !DIExpression()), !dbg !2513
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2509, metadata !DIExpression()), !dbg !2514
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !2510, metadata !DIExpression()), !dbg !2515
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2511, metadata !DIExpression()), !dbg !2516
  %0 = load i32, ptr %type.addr, align 4, !dbg !2517
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
  ], !dbg !2518

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %channel.addr, align 4, !dbg !2519
  %idxprom = sext i32 %1 to i64, !dbg !2521
  %arrayidx = getelementptr [2 x ptr], ptr @ps_temp_label, i64 0, i64 %idxprom, !dbg !2521
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2521
  %3 = load ptr, ptr %str.addr, align 8, !dbg !2522
  store ptr %2, ptr %3, align 8, !dbg !2523
  br label %sw.epilog, !dbg !2524

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2525

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0, !dbg !2526
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @power_supply_hwmon_write(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i64 noundef %val) #0 align 16 !dbg !2527 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %psyhw = alloca ptr, align 8
  %psy = alloca ptr, align 8
  %pspval = alloca %union.power_supply_propval, align 8
  %prop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2529, metadata !DIExpression()), !dbg !2542
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2530, metadata !DIExpression()), !dbg !2543
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2531, metadata !DIExpression()), !dbg !2544
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !2532, metadata !DIExpression()), !dbg !2545
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2533, metadata !DIExpression()), !dbg !2546
  call void @llvm.lifetime.start.p0(i64 8, ptr %psyhw) #10, !dbg !2547
  call void @llvm.dbg.declare(metadata ptr %psyhw, metadata !2534, metadata !DIExpression()), !dbg !2548
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2549
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #11, !dbg !2550
  store ptr %call, ptr %psyhw, align 8, !dbg !2548
  call void @llvm.lifetime.start.p0(i64 8, ptr %psy) #10, !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %psy, metadata !2535, metadata !DIExpression()), !dbg !2552
  %1 = load ptr, ptr %psyhw, align 8, !dbg !2553
  %psy1 = getelementptr inbounds %struct.power_supply_hwmon, ptr %1, i32 0, i32 0, !dbg !2554
  %2 = load ptr, ptr %psy1, align 8, !dbg !2554
  store ptr %2, ptr %psy, align 8, !dbg !2552
  call void @llvm.lifetime.start.p0(i64 8, ptr %pspval) #10, !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %pspval, metadata !2536, metadata !DIExpression()), !dbg !2556
  call void @llvm.lifetime.start.p0(i64 4, ptr %prop) #10, !dbg !2557
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !2537, metadata !DIExpression()), !dbg !2558
  %3 = load i32, ptr %type.addr, align 4, !dbg !2559
  %4 = load i32, ptr %attr.addr, align 4, !dbg !2560
  %5 = load i32, ptr %channel.addr, align 4, !dbg !2561
  %call2 = call i32 @power_supply_hwmon_to_property(i32 noundef %3, i32 noundef %4, i32 noundef %5) #11, !dbg !2562
  store i32 %call2, ptr %prop, align 4, !dbg !2563
  %6 = load i32, ptr %prop, align 4, !dbg !2564
  %cmp = icmp slt i32 %6, 0, !dbg !2566
  br i1 %cmp, label %if.then, label %if.end, !dbg !2567

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %prop, align 4, !dbg !2568
  store i32 %7, ptr %retval, align 4, !dbg !2569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2569

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %val.addr, align 8, !dbg !2570
  %conv = trunc i64 %8 to i32, !dbg !2570
  store i32 %conv, ptr %pspval, align 8, !dbg !2571
  %9 = load i32, ptr %type.addr, align 4, !dbg !2572
  switch i32 %9, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
  ], !dbg !2573

sw.bb:                                            ; preds = %if.end, %if.end
  %10 = load i32, ptr %pspval, align 8, !dbg !2574
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %10, i32 1000), !dbg !2574
  %12 = extractvalue { i32, i1 } %11, 1, !dbg !2574
  %13 = extractvalue { i32, i1 } %11, 0, !dbg !2574
  store i32 %13, ptr %pspval, align 8, !dbg !2574
  %call3 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %12) #11, !dbg !2574
  br i1 %call3, label %if.then4, label %if.end5, !dbg !2576

if.then4:                                         ; preds = %sw.bb
  store i32 -75, ptr %retval, align 4, !dbg !2577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2577

if.end5:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !2578

sw.bb6:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #10, !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !2538, metadata !DIExpression()), !dbg !2579
  %14 = load i32, ptr %pspval, align 8, !dbg !2579
  store i32 %14, ptr %__x, align 4, !dbg !2579
  call void @llvm.lifetime.start.p0(i64 4, ptr %__d) #10, !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %__d, metadata !2541, metadata !DIExpression()), !dbg !2579
  store i32 100, ptr %__d, align 4, !dbg !2579
  %15 = load i32, ptr %__x, align 4, !dbg !2579
  %cmp7 = icmp sgt i32 %15, 0, !dbg !2579
  %conv8 = zext i1 %cmp7 to i32, !dbg !2579
  %16 = load i32, ptr %__d, align 4, !dbg !2579
  %cmp9 = icmp sgt i32 %16, 0, !dbg !2579
  %conv10 = zext i1 %cmp9 to i32, !dbg !2579
  %cmp11 = icmp eq i32 %conv8, %conv10, !dbg !2579
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !2579

cond.true:                                        ; preds = %sw.bb6
  %17 = load i32, ptr %__x, align 4, !dbg !2579
  %18 = load i32, ptr %__d, align 4, !dbg !2579
  %div = sdiv i32 %18, 2, !dbg !2579
  %add = add i32 %17, %div, !dbg !2579
  %19 = load i32, ptr %__d, align 4, !dbg !2579
  %div13 = sdiv i32 %add, %19, !dbg !2579
  br label %cond.end, !dbg !2579

cond.false:                                       ; preds = %sw.bb6
  %20 = load i32, ptr %__x, align 4, !dbg !2579
  %21 = load i32, ptr %__d, align 4, !dbg !2579
  %div14 = sdiv i32 %21, 2, !dbg !2579
  %sub = sub i32 %20, %div14, !dbg !2579
  %22 = load i32, ptr %__d, align 4, !dbg !2579
  %div15 = sdiv i32 %sub, %22, !dbg !2579
  br label %cond.end, !dbg !2579

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div13, %cond.true ], [ %div15, %cond.false ], !dbg !2579
  store i32 %cond, ptr %tmp, align 4, !dbg !2579
  call void @llvm.lifetime.end.p0(i64 4, ptr %__d) #10, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #10, !dbg !2580
  %23 = load i32, ptr %tmp, align 4, !dbg !2579
  store i32 %23, ptr %pspval, align 8, !dbg !2581
  br label %sw.epilog, !dbg !2582

sw.default:                                       ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !2583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2583

sw.epilog:                                        ; preds = %cond.end, %if.end5
  %24 = load ptr, ptr %psy, align 8, !dbg !2584
  %25 = load i32, ptr %prop, align 4, !dbg !2585
  %call16 = call i32 @power_supply_set_property(ptr noundef %24, i32 noundef %25, ptr noundef %pspval) #11, !dbg !2586
  store i32 %call16, ptr %retval, align 4, !dbg !2587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2587

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prop) #10, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %pspval) #10, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %psy) #10, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %psyhw) #10, !dbg !2588
  %26 = load i32, ptr %retval, align 4, !dbg !2588
  ret i32 %26, !dbg !2588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @power_supply_hwmon_is_a_label(i32 noundef %type, i32 noundef %attr) #0 align 16 !dbg !2589 {
entry:
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2593, metadata !DIExpression()), !dbg !2595
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2594, metadata !DIExpression()), !dbg !2596
  %0 = load i32, ptr %type.addr, align 4, !dbg !2597
  %cmp = icmp eq i32 %0, 1, !dbg !2598
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2599

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %attr.addr, align 4, !dbg !2600
  %cmp1 = icmp eq i32 %1, 21, !dbg !2601
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2602
  ret i1 %2, !dbg !2603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @power_supply_hwmon_has_input(ptr noundef %psyhw, i32 noundef %type, i32 noundef %channel) #0 align 16 !dbg !2604 {
entry:
  %retval = alloca i1, align 1
  %psyhw.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %attr_list = alloca ptr, align 8
  %i = alloca i64, align 8
  %prop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psyhw, ptr %psyhw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psyhw.addr, metadata !2608, metadata !DIExpression()), !dbg !2618
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2609, metadata !DIExpression()), !dbg !2619
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !2610, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr_list) #10, !dbg !2621
  call void @llvm.dbg.declare(metadata ptr %attr_list, metadata !2611, metadata !DIExpression()), !dbg !2622
  %0 = load i32, ptr %type.addr, align 4, !dbg !2623
  %idxprom = zext i32 %0 to i64, !dbg !2624
  %arrayidx = getelementptr [10 x %struct.hwmon_type_attr_list], ptr @ps_type_attrs, i64 0, i64 %idxprom, !dbg !2624
  store ptr %arrayidx, ptr %attr_list, align 8, !dbg !2622
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2613, metadata !DIExpression()), !dbg !2626
  store i64 0, ptr %i, align 8, !dbg !2627
  br label %for.cond, !dbg !2628

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !dbg !2629
  %2 = load ptr, ptr %attr_list, align 8, !dbg !2630
  %n_attrs = getelementptr inbounds %struct.hwmon_type_attr_list, ptr %2, i32 0, i32 1, !dbg !2631
  %3 = load i64, ptr %n_attrs, align 8, !dbg !2631
  %cmp = icmp ult i64 %1, %3, !dbg !2632
  br i1 %cmp, label %for.body, label %for.end, !dbg !2633

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %prop) #10, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !2614, metadata !DIExpression()), !dbg !2635
  %4 = load i32, ptr %type.addr, align 4, !dbg !2636
  %5 = load ptr, ptr %attr_list, align 8, !dbg !2637
  %attrs = getelementptr inbounds %struct.hwmon_type_attr_list, ptr %5, i32 0, i32 0, !dbg !2638
  %6 = load ptr, ptr %attrs, align 8, !dbg !2638
  %7 = load i64, ptr %i, align 8, !dbg !2639
  %arrayidx1 = getelementptr i32, ptr %6, i64 %7, !dbg !2637
  %8 = load i32, ptr %arrayidx1, align 4, !dbg !2637
  %9 = load i32, ptr %channel.addr, align 4, !dbg !2640
  %call = call i32 @power_supply_hwmon_to_property(i32 noundef %4, i32 noundef %8, i32 noundef %9) #11, !dbg !2641
  store i32 %call, ptr %prop, align 4, !dbg !2635
  %10 = load i32, ptr %prop, align 4, !dbg !2642
  %cmp2 = icmp sge i32 %10, 0, !dbg !2644
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !2645

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, ptr %prop, align 4, !dbg !2646
  %12 = call i1 @llvm.is.constant.i32(i32 %11), !dbg !2646
  br i1 %12, label %land.lhs.true3, label %cond.false, !dbg !2646

land.lhs.true3:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %psyhw.addr, align 8, !dbg !2646
  %props = getelementptr inbounds %struct.power_supply_hwmon, ptr %13, i32 0, i32 1, !dbg !2646
  %14 = load ptr, ptr %props, align 8, !dbg !2646
  %15 = ptrtoint ptr %14 to i64, !dbg !2646
  %cmp4 = icmp ne i64 %15, 0, !dbg !2646
  %conv = zext i1 %cmp4 to i32, !dbg !2646
  %16 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2646
  br i1 %16, label %land.lhs.true5, label %cond.false, !dbg !2646

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %17 = load ptr, ptr %psyhw.addr, align 8, !dbg !2646
  %props6 = getelementptr inbounds %struct.power_supply_hwmon, ptr %17, i32 0, i32 1, !dbg !2646
  %18 = load ptr, ptr %props6, align 8, !dbg !2646
  %19 = ptrtoint ptr %18 to i64, !dbg !2646
  %cmp7 = icmp ne i64 %19, 0, !dbg !2646
  br i1 %cmp7, label %land.lhs.true9, label %cond.false, !dbg !2646

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %20 = load ptr, ptr %psyhw.addr, align 8, !dbg !2646
  %props10 = getelementptr inbounds %struct.power_supply_hwmon, ptr %20, i32 0, i32 1, !dbg !2646
  %21 = load ptr, ptr %props10, align 8, !dbg !2646
  %22 = load i64, ptr %21, align 8, !dbg !2646
  %23 = call i1 @llvm.is.constant.i64(i64 %22), !dbg !2646
  br i1 %23, label %cond.true, label %cond.false, !dbg !2647

cond.true:                                        ; preds = %land.lhs.true9
  %24 = load i32, ptr %prop, align 4, !dbg !2646
  %conv11 = sext i32 %24 to i64, !dbg !2646
  %25 = load ptr, ptr %psyhw.addr, align 8, !dbg !2646
  %props12 = getelementptr inbounds %struct.power_supply_hwmon, ptr %25, i32 0, i32 1, !dbg !2646
  %26 = load ptr, ptr %props12, align 8, !dbg !2646
  %call13 = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef %26) #11, !dbg !2646
  br i1 %call13, label %if.then, label %if.end, !dbg !2646

cond.false:                                       ; preds = %land.lhs.true9, %land.lhs.true5, %land.lhs.true3, %land.lhs.true
  %27 = load i32, ptr %prop, align 4, !dbg !2646
  %conv15 = sext i32 %27 to i64, !dbg !2646
  %28 = load ptr, ptr %psyhw.addr, align 8, !dbg !2646
  %props16 = getelementptr inbounds %struct.power_supply_hwmon, ptr %28, i32 0, i32 1, !dbg !2646
  %29 = load ptr, ptr %props16, align 8, !dbg !2646
  %call17 = call zeroext i1 @_test_bit(i64 noundef %conv15, ptr noundef %29) #11, !dbg !2646
  br i1 %call17, label %if.then, label %if.end, !dbg !2647

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !2648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2648

if.end:                                           ; preds = %cond.false, %cond.true, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2649
  br label %cleanup, !dbg !2649

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prop) #10, !dbg !2649
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2650

for.inc:                                          ; preds = %cleanup.cont
  %30 = load i64, ptr %i, align 8, !dbg !2651
  %inc = add i64 %30, 1, !dbg !2651
  store i64 %inc, ptr %i, align 8, !dbg !2651
  br label %for.cond, !dbg !2652, !llvm.loop !2653

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !2655

cleanup19:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !2656
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr_list) #10, !dbg !2656
  %31 = load i1, ptr %retval, align 1, !dbg !2656
  ret i1 %31, !dbg !2656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @power_supply_hwmon_to_property(i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #0 align 16 !dbg !2657 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2661, metadata !DIExpression()), !dbg !2664
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2662, metadata !DIExpression()), !dbg !2665
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !2663, metadata !DIExpression()), !dbg !2666
  %0 = load i32, ptr %type.addr, align 4, !dbg !2667
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb3
  ], !dbg !2668

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %attr.addr, align 4, !dbg !2669
  %call = call i32 @power_supply_hwmon_in_to_property(i32 noundef %1) #11, !dbg !2671
  store i32 %call, ptr %retval, align 4, !dbg !2672
  br label %return, !dbg !2672

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %attr.addr, align 4, !dbg !2673
  %call2 = call i32 @power_supply_hwmon_curr_to_property(i32 noundef %2) #11, !dbg !2674
  store i32 %call2, ptr %retval, align 4, !dbg !2675
  br label %return, !dbg !2675

sw.bb3:                                           ; preds = %entry
  %3 = load i32, ptr %attr.addr, align 4, !dbg !2676
  %4 = load i32, ptr %channel.addr, align 4, !dbg !2677
  %call4 = call i32 @power_supply_hwmon_temp_to_property(i32 noundef %3, i32 noundef %4) #11, !dbg !2678
  store i32 %call4, ptr %retval, align 4, !dbg !2679
  br label %return, !dbg !2679

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2680
  br label %return, !dbg !2680

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4, !dbg !2681
  ret i32 %5, !dbg !2681
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2682 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2689, metadata !DIExpression()), !dbg !2694
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2690, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2691, metadata !DIExpression()), !dbg !2697
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2698
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2699
  %div = udiv i64 %1, 64, !dbg !2699
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2700
  store ptr %add.ptr, ptr %p, align 8, !dbg !2697
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !2701
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2692, metadata !DIExpression()), !dbg !2702
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2703
  %rem = urem i64 %2, 64, !dbg !2703
  %shl = shl i64 1, %rem, !dbg !2703
  store i64 %shl, ptr %mask, align 8, !dbg !2702
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !2704
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2693, metadata !DIExpression()), !dbg !2705
  %3 = load ptr, ptr %p, align 8, !dbg !2706
  %4 = load i64, ptr %3, align 8, !dbg !2707
  store i64 %4, ptr %val, align 8, !dbg !2705
  %5 = load i64, ptr %val, align 8, !dbg !2708
  %6 = load i64, ptr %mask, align 8, !dbg !2709
  %and = and i64 %5, %6, !dbg !2710
  %tobool = icmp ne i64 %and, 0, !dbg !2711
  %lnot = xor i1 %tobool, true, !dbg !2711
  %lnot1 = xor i1 %lnot, true, !dbg !2712
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !2713
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !2713
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2713
  ret i1 %lnot1, !dbg !2714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2715 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2718, metadata !DIExpression()), !dbg !2720
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2719, metadata !DIExpression()), !dbg !2721
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2722
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2723
  %div = udiv i64 %1, 64, !dbg !2723
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2724
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !2725
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2726
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2727
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !2728
  ret i1 %call, !dbg !2729
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2730 dso_local i32 @power_supply_property_is_writeable(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @power_supply_hwmon_is_writable(i32 noundef %type, i32 noundef %attr) #0 align 16 !dbg !2731 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2733, metadata !DIExpression()), !dbg !2735
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2734, metadata !DIExpression()), !dbg !2736
  %0 = load i32, ptr %type.addr, align 4, !dbg !2737
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 1, label %sw.bb4
  ], !dbg !2738

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %attr.addr, align 4, !dbg !2739
  %cmp = icmp eq i32 %1, 2, !dbg !2741
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2742

lor.rhs:                                          ; preds = %sw.bb
  %2 = load i32, ptr %attr.addr, align 4, !dbg !2743
  %cmp1 = icmp eq i32 %2, 3, !dbg !2744
  br label %lor.end, !dbg !2742

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %3 = phi i1 [ true, %sw.bb ], [ %cmp1, %lor.rhs ]
  store i1 %3, ptr %retval, align 1, !dbg !2745
  br label %return, !dbg !2745

sw.bb2:                                           ; preds = %entry
  %4 = load i32, ptr %attr.addr, align 4, !dbg !2746
  %cmp3 = icmp eq i32 %4, 3, !dbg !2747
  store i1 %cmp3, ptr %retval, align 1, !dbg !2748
  br label %return, !dbg !2748

sw.bb4:                                           ; preds = %entry
  %5 = load i32, ptr %attr.addr, align 4, !dbg !2749
  %cmp5 = icmp eq i32 %5, 7, !dbg !2750
  br i1 %cmp5, label %lor.end11, label %lor.lhs.false, !dbg !2751

lor.lhs.false:                                    ; preds = %sw.bb4
  %6 = load i32, ptr %attr.addr, align 4, !dbg !2752
  %cmp6 = icmp eq i32 %6, 5, !dbg !2753
  br i1 %cmp6, label %lor.end11, label %lor.lhs.false7, !dbg !2754

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %7 = load i32, ptr %attr.addr, align 4, !dbg !2755
  %cmp8 = icmp eq i32 %7, 15, !dbg !2756
  br i1 %cmp8, label %lor.end11, label %lor.rhs9, !dbg !2757

lor.rhs9:                                         ; preds = %lor.lhs.false7
  %8 = load i32, ptr %attr.addr, align 4, !dbg !2758
  %cmp10 = icmp eq i32 %8, 16, !dbg !2759
  br label %lor.end11, !dbg !2757

lor.end11:                                        ; preds = %lor.rhs9, %lor.lhs.false7, %lor.lhs.false, %sw.bb4
  %9 = phi i1 [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false ], [ true, %sw.bb4 ], [ %cmp10, %lor.rhs9 ]
  store i1 %9, ptr %retval, align 1, !dbg !2760
  br label %return, !dbg !2760

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2761
  br label %return, !dbg !2761

return:                                           ; preds = %sw.default, %lor.end11, %sw.bb2, %lor.end
  %10 = load i1, ptr %retval, align 1, !dbg !2762
  ret i1 %10, !dbg !2762
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @power_supply_hwmon_in_to_property(i32 noundef %attr) #0 align 16 !dbg !2763 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2767, metadata !DIExpression()), !dbg !2768
  %0 = load i32, ptr %attr.addr, align 4, !dbg !2769
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 1, label %sw.bb3
  ], !dbg !2770

sw.bb:                                            ; preds = %entry
  store i32 13, ptr %retval, align 4, !dbg !2771
  br label %return, !dbg !2771

sw.bb1:                                           ; preds = %entry
  store i32 9, ptr %retval, align 4, !dbg !2773
  br label %return, !dbg !2773

sw.bb2:                                           ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !2774
  br label %return, !dbg !2774

sw.bb3:                                           ; preds = %entry
  store i32 12, ptr %retval, align 4, !dbg !2775
  br label %return, !dbg !2775

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2776
  br label %return, !dbg !2776

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4, !dbg !2777
  ret i32 %1, !dbg !2777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @power_supply_hwmon_curr_to_property(i32 noundef %attr) #0 align 16 !dbg !2778 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2780, metadata !DIExpression()), !dbg !2781
  %0 = load i32, ptr %attr.addr, align 4, !dbg !2782
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 3, label %sw.bb1
    i32 1, label %sw.bb2
  ], !dbg !2783

sw.bb:                                            ; preds = %entry
  store i32 18, ptr %retval, align 4, !dbg !2784
  br label %return, !dbg !2784

sw.bb1:                                           ; preds = %entry
  store i32 16, ptr %retval, align 4, !dbg !2786
  br label %return, !dbg !2786

sw.bb2:                                           ; preds = %entry
  store i32 17, ptr %retval, align 4, !dbg !2787
  br label %return, !dbg !2787

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2788
  br label %return, !dbg !2788

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4, !dbg !2789
  ret i32 %1, !dbg !2789
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @power_supply_hwmon_temp_to_property(i32 noundef %attr, i32 noundef %channel) #0 align 16 !dbg !2790 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2794, metadata !DIExpression()), !dbg !2796
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !2795, metadata !DIExpression()), !dbg !2797
  %0 = load i32, ptr %channel.addr, align 4, !dbg !2798
  %tobool = icmp ne i32 %0, 0, !dbg !2798
  br i1 %tobool, label %if.then, label %if.else, !dbg !2800

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %attr.addr, align 4, !dbg !2801
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 15, label %sw.bb1
    i32 16, label %sw.bb2
  ], !dbg !2803

sw.bb:                                            ; preds = %if.then
  store i32 57, ptr %retval, align 4, !dbg !2804
  br label %return, !dbg !2804

sw.bb1:                                           ; preds = %if.then
  store i32 58, ptr %retval, align 4, !dbg !2806
  br label %return, !dbg !2806

sw.bb2:                                           ; preds = %if.then
  store i32 59, ptr %retval, align 4, !dbg !2807
  br label %return, !dbg !2807

sw.default:                                       ; preds = %if.then
  br label %sw.epilog, !dbg !2808

sw.epilog:                                        ; preds = %sw.default
  br label %if.end, !dbg !2809

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %attr.addr, align 4, !dbg !2810
  switch i32 %2, label %sw.default8 [
    i32 1, label %sw.bb3
    i32 7, label %sw.bb4
    i32 5, label %sw.bb5
    i32 15, label %sw.bb6
    i32 16, label %sw.bb7
  ], !dbg !2812

sw.bb3:                                           ; preds = %if.else
  store i32 52, ptr %retval, align 4, !dbg !2813
  br label %return, !dbg !2813

sw.bb4:                                           ; preds = %if.else
  store i32 53, ptr %retval, align 4, !dbg !2815
  br label %return, !dbg !2815

sw.bb5:                                           ; preds = %if.else
  store i32 54, ptr %retval, align 4, !dbg !2816
  br label %return, !dbg !2816

sw.bb6:                                           ; preds = %if.else
  store i32 55, ptr %retval, align 4, !dbg !2817
  br label %return, !dbg !2817

sw.bb7:                                           ; preds = %if.else
  store i32 56, ptr %retval, align 4, !dbg !2818
  br label %return, !dbg !2818

sw.default8:                                      ; preds = %if.else
  br label %sw.epilog9, !dbg !2819

sw.epilog9:                                       ; preds = %sw.default8
  br label %if.end

if.end:                                           ; preds = %sw.epilog9, %sw.epilog
  store i32 -22, ptr %retval, align 4, !dbg !2820
  br label %return, !dbg !2820

return:                                           ; preds = %if.end, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32, ptr %retval, align 4, !dbg !2821
  ret i32 %3, !dbg !2821
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2822 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2824, metadata !DIExpression()), !dbg !2826
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2825, metadata !DIExpression()), !dbg !2827
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2828
  %1 = load i64, ptr %size.addr, align 8, !dbg !2829
  %conv = trunc i64 %1 to i32, !dbg !2829
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !2830
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2831
  %3 = load i64, ptr %size.addr, align 8, !dbg !2831
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !2831
  ret void, !dbg !2832
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2833 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2835, metadata !DIExpression()), !dbg !2837
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2836, metadata !DIExpression()), !dbg !2838
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2839
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2840
  br i1 %1, label %cond.true, label %cond.false, !dbg !2840

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2841
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2842
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !2843
  %conv = zext i1 %call to i32, !dbg !2843
  br label %cond.end, !dbg !2840

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2844
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2845
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !2846
  %conv2 = zext i1 %call1 to i32, !dbg !2846
  br label %cond.end, !dbg !2840

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2840
  %tobool = icmp ne i32 %cond, 0, !dbg !2840
  ret i1 %tobool, !dbg !2847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2848 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2850, metadata !DIExpression()), !dbg !2852
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2851, metadata !DIExpression()), !dbg !2853
  ret i1 true, !dbg !2854
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2855 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2859, metadata !DIExpression()), !dbg !2861
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2860, metadata !DIExpression()), !dbg !2862
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2863
  %and = and i64 %0, 63, !dbg !2864
  %shl = shl i64 1, %and, !dbg !2865
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2866
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2867
  %shr = ashr i64 %2, 6, !dbg !2868
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2866
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2866
  %and1 = and i64 %shl, %3, !dbg !2869
  %cmp = icmp ne i64 %and1, 0, !dbg !2870
  ret i1 %cmp, !dbg !2871
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2872 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2874, metadata !DIExpression()), !dbg !2877
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !2879
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2876, metadata !DIExpression()), !dbg !2880
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2881
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2882
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !2883, !srcloc !2884
  %3 = icmp ult i8 %2, 2, !dbg !2883
  call void @llvm.assume(i1 %3), !dbg !2883
  store i8 %2, ptr %oldbit, align 1, !dbg !2883
  %4 = load i8, ptr %oldbit, align 1, !dbg !2885, !range !2886, !noundef !543
  %tobool = trunc i8 %4 to i1, !dbg !2885
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !2887
  ret i1 %tobool, !dbg !2888
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #4 align 16 !dbg !2889 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2893, metadata !DIExpression()), !dbg !2894
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2895
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !2896
  %1 = load ptr, ptr %driver_data, align 8, !dbg !2896
  ret ptr %1, !dbg !2897
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2898 dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !2899 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2904, metadata !DIExpression()), !dbg !2905
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2906, !range !2886, !noundef !543
  %tobool = trunc i8 %0 to i1, !dbg !2906
  %lnot = xor i1 %tobool, true, !dbg !2906
  %lnot1 = xor i1 %lnot, true, !dbg !2906
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2906
  %conv = sext i32 %lnot.ext to i64, !dbg !2906
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2906
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2906
  ret i1 %tobool2, !dbg !2907
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2908 dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !2909 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2915
  %1 = ptrtoint ptr %0 to i64, !dbg !2915
  %2 = inttoptr i64 %1 to ptr, !dbg !2915
  %3 = ptrtoint ptr %2 to i64, !dbg !2915
  %cmp = icmp uge i64 %3, -4095, !dbg !2915
  %lnot = xor i1 %cmp, true, !dbg !2915
  %lnot1 = xor i1 %lnot, true, !dbg !2915
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2915
  %conv = sext i32 %lnot.ext to i64, !dbg !2915
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2915
  %tobool = icmp ne i64 %expval, 0, !dbg !2915
  ret i1 %tobool, !dbg !2916
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !2917 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2921, metadata !DIExpression()), !dbg !2922
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2923
  %1 = ptrtoint ptr %0 to i64, !dbg !2924
  ret i64 %1, !dbg !2925
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { noredzone allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841}
!llvm.ident = !{!1842}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "power_supply_hwmon_chip_info", scope: !2, file: !3, line: 323, type: !1827, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/power/supply/.power_supply_hwmon.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/power/supply/power_supply_hwmon\22 -D KBUILD_BASENAME=\22power_supply_hwmon\22 -D KBUILD_MODNAME=\22power_supply_hwmon\22 -D __KBUILD_MODNAME=kmod_power_supply_hwmon -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/power/supply/power_supply_hwmon.ll drivers/power/supply/power_supply_hwmon.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !282, globals: !297, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/power/supply/power_supply_hwmon.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "94fac88fe519c3c9cd21f07974c05273")
!4 = !{!5, !22, !34, !112, !118, !125, !131, !138, !143, !151, !159, !168, !173, !178, !184, !191, !205, !210, !240, !261}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_type", file: !6, line: 179, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/power_supply.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f75e7271bb81936c98711d72c809341")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!9 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_BATTERY", value: 1)
!11 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_UPS", value: 2)
!12 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_MAINS", value: 3)
!13 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB", value: 4)
!14 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_DCP", value: 5)
!15 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_CDP", value: 6)
!16 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_ACA", value: 7)
!17 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_TYPE_C", value: 8)
!18 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD", value: 9)
!19 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_USB_PD_DRP", value: 10)
!20 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_APPLE_BRICK_ID", value: 11)
!21 = !DIEnumerator(name: "POWER_SUPPLY_TYPE_WIRELESS", value: 12)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_usb_type", file: !6, line: 195, baseType: !7, size: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!24 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_UNKNOWN", value: 0)
!25 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_SDP", value: 1)
!26 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_DCP", value: 2)
!27 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_CDP", value: 3)
!28 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_ACA", value: 4)
!29 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_C", value: 5)
!30 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD", value: 6)
!31 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_DRP", value: 7)
!32 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_PD_PPS", value: 8)
!33 = !DIEnumerator(name: "POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID", value: 9)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "power_supply_property", file: !6, line: 98, baseType: !7, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!36 = !DIEnumerator(name: "POWER_SUPPLY_PROP_STATUS", value: 0)
!37 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TYPE", value: 1)
!38 = !DIEnumerator(name: "POWER_SUPPLY_PROP_HEALTH", value: 2)
!39 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRESENT", value: 3)
!40 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ONLINE", value: 4)
!41 = !DIEnumerator(name: "POWER_SUPPLY_PROP_AUTHENTIC", value: 5)
!42 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TECHNOLOGY", value: 6)
!43 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CYCLE_COUNT", value: 7)
!44 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX", value: 8)
!45 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN", value: 9)
!46 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN", value: 10)
!47 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN", value: 11)
!48 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_NOW", value: 12)
!49 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_AVG", value: 13)
!50 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_OCV", value: 14)
!51 = !DIEnumerator(name: "POWER_SUPPLY_PROP_VOLTAGE_BOOT", value: 15)
!52 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_MAX", value: 16)
!53 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_NOW", value: 17)
!54 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_AVG", value: 18)
!55 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CURRENT_BOOT", value: 19)
!56 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_NOW", value: 20)
!57 = !DIEnumerator(name: "POWER_SUPPLY_PROP_POWER_AVG", value: 21)
!58 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN", value: 22)
!59 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN", value: 23)
!60 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_FULL", value: 24)
!61 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_EMPTY", value: 25)
!62 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_NOW", value: 26)
!63 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_AVG", value: 27)
!64 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_COUNTER", value: 28)
!65 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT", value: 29)
!66 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX", value: 30)
!67 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE", value: 31)
!68 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX", value: 32)
!69 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT", value: 33)
!70 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX", value: 34)
!71 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD", value: 35)
!72 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD", value: 36)
!73 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_BEHAVIOUR", value: 37)
!74 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT", value: 38)
!75 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT", value: 39)
!76 = !DIEnumerator(name: "POWER_SUPPLY_PROP_INPUT_POWER_LIMIT", value: 40)
!77 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN", value: 41)
!78 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN", value: 42)
!79 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_FULL", value: 43)
!80 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_EMPTY", value: 44)
!81 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_NOW", value: 45)
!82 = !DIEnumerator(name: "POWER_SUPPLY_PROP_ENERGY_AVG", value: 46)
!83 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY", value: 47)
!84 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN", value: 48)
!85 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX", value: 49)
!86 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_ERROR_MARGIN", value: 50)
!87 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CAPACITY_LEVEL", value: 51)
!88 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP", value: 52)
!89 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MAX", value: 53)
!90 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_MIN", value: 54)
!91 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MIN", value: 55)
!92 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_ALERT_MAX", value: 56)
!93 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT", value: 57)
!94 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN", value: 58)
!95 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX", value: 59)
!96 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW", value: 60)
!97 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG", value: 61)
!98 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_NOW", value: 62)
!99 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TIME_TO_FULL_AVG", value: 63)
!100 = !DIEnumerator(name: "POWER_SUPPLY_PROP_TYPE", value: 64)
!101 = !DIEnumerator(name: "POWER_SUPPLY_PROP_USB_TYPE", value: 65)
!102 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SCOPE", value: 66)
!103 = !DIEnumerator(name: "POWER_SUPPLY_PROP_PRECHARGE_CURRENT", value: 67)
!104 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT", value: 68)
!105 = !DIEnumerator(name: "POWER_SUPPLY_PROP_CALIBRATE", value: 69)
!106 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_YEAR", value: 70)
!107 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_MONTH", value: 71)
!108 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURE_DAY", value: 72)
!109 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MODEL_NAME", value: 73)
!110 = !DIEnumerator(name: "POWER_SUPPLY_PROP_MANUFACTURER", value: 74)
!111 = !DIEnumerator(name: "POWER_SUPPLY_PROP_SERIAL_NUMBER", value: 75)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !113, line: 26, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!116 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!117 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !119, line: 312, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!122 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!123 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!124 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !126, line: 45, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!127 = !{!128, !129, !130}
!128 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!129 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!130 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !132, line: 487, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!133 = !{!134, !135, !136, !137}
!134 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!135 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!136 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!137 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !139, line: 65, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!142 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !144, line: 620, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!145 = !{!146, !147, !148, !149, !150}
!146 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!147 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!148 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!149 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!150 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !144, line: 597, baseType: !152, size: 32, elements: !153)
!152 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!155 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!156 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!157 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!158 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !132, line: 547, baseType: !7, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!162 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!163 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!164 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!165 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!166 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!167 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !132, line: 564, baseType: !7, size: 32, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!171 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!172 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !132, line: 577, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!176 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!177 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !132, line: 503, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183}
!180 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!181 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!182 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!183 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !185, line: 33, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!186 = !{!187, !188, !189, !190}
!187 = !DIEnumerator(name: "LED_OFF", value: 0)
!188 = !DIEnumerator(name: "LED_ON", value: 1)
!189 = !DIEnumerator(name: "LED_HALF", value: 127)
!190 = !DIEnumerator(name: "LED_FULL", value: 255)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_sensor_types", file: !192, line: 20, baseType: !7, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/hwmon.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f56bc649189c3754549c248a0c9d40f")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!194 = !DIEnumerator(name: "hwmon_chip", value: 0)
!195 = !DIEnumerator(name: "hwmon_temp", value: 1)
!196 = !DIEnumerator(name: "hwmon_in", value: 2)
!197 = !DIEnumerator(name: "hwmon_curr", value: 3)
!198 = !DIEnumerator(name: "hwmon_power", value: 4)
!199 = !DIEnumerator(name: "hwmon_energy", value: 5)
!200 = !DIEnumerator(name: "hwmon_humidity", value: 6)
!201 = !DIEnumerator(name: "hwmon_fan", value: 7)
!202 = !DIEnumerator(name: "hwmon_pwm", value: 8)
!203 = !DIEnumerator(name: "hwmon_intrusion", value: 9)
!204 = !DIEnumerator(name: "hwmon_max", value: 10)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 10, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!207 = !{!208, !209}
!208 = !DIEnumerator(name: "false", value: 0)
!209 = !DIEnumerator(name: "true", value: 1)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_temp_attributes", file: !192, line: 64, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!212 = !DIEnumerator(name: "hwmon_temp_enable", value: 0)
!213 = !DIEnumerator(name: "hwmon_temp_input", value: 1)
!214 = !DIEnumerator(name: "hwmon_temp_type", value: 2)
!215 = !DIEnumerator(name: "hwmon_temp_lcrit", value: 3)
!216 = !DIEnumerator(name: "hwmon_temp_lcrit_hyst", value: 4)
!217 = !DIEnumerator(name: "hwmon_temp_min", value: 5)
!218 = !DIEnumerator(name: "hwmon_temp_min_hyst", value: 6)
!219 = !DIEnumerator(name: "hwmon_temp_max", value: 7)
!220 = !DIEnumerator(name: "hwmon_temp_max_hyst", value: 8)
!221 = !DIEnumerator(name: "hwmon_temp_crit", value: 9)
!222 = !DIEnumerator(name: "hwmon_temp_crit_hyst", value: 10)
!223 = !DIEnumerator(name: "hwmon_temp_emergency", value: 11)
!224 = !DIEnumerator(name: "hwmon_temp_emergency_hyst", value: 12)
!225 = !DIEnumerator(name: "hwmon_temp_alarm", value: 13)
!226 = !DIEnumerator(name: "hwmon_temp_lcrit_alarm", value: 14)
!227 = !DIEnumerator(name: "hwmon_temp_min_alarm", value: 15)
!228 = !DIEnumerator(name: "hwmon_temp_max_alarm", value: 16)
!229 = !DIEnumerator(name: "hwmon_temp_crit_alarm", value: 17)
!230 = !DIEnumerator(name: "hwmon_temp_emergency_alarm", value: 18)
!231 = !DIEnumerator(name: "hwmon_temp_fault", value: 19)
!232 = !DIEnumerator(name: "hwmon_temp_offset", value: 20)
!233 = !DIEnumerator(name: "hwmon_temp_label", value: 21)
!234 = !DIEnumerator(name: "hwmon_temp_lowest", value: 22)
!235 = !DIEnumerator(name: "hwmon_temp_highest", value: 23)
!236 = !DIEnumerator(name: "hwmon_temp_reset_history", value: 24)
!237 = !DIEnumerator(name: "hwmon_temp_rated_min", value: 25)
!238 = !DIEnumerator(name: "hwmon_temp_rated_max", value: 26)
!239 = !DIEnumerator(name: "hwmon_temp_beep", value: 27)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_in_attributes", file: !192, line: 124, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!242 = !DIEnumerator(name: "hwmon_in_enable", value: 0)
!243 = !DIEnumerator(name: "hwmon_in_input", value: 1)
!244 = !DIEnumerator(name: "hwmon_in_min", value: 2)
!245 = !DIEnumerator(name: "hwmon_in_max", value: 3)
!246 = !DIEnumerator(name: "hwmon_in_lcrit", value: 4)
!247 = !DIEnumerator(name: "hwmon_in_crit", value: 5)
!248 = !DIEnumerator(name: "hwmon_in_average", value: 6)
!249 = !DIEnumerator(name: "hwmon_in_lowest", value: 7)
!250 = !DIEnumerator(name: "hwmon_in_highest", value: 8)
!251 = !DIEnumerator(name: "hwmon_in_reset_history", value: 9)
!252 = !DIEnumerator(name: "hwmon_in_label", value: 10)
!253 = !DIEnumerator(name: "hwmon_in_alarm", value: 11)
!254 = !DIEnumerator(name: "hwmon_in_min_alarm", value: 12)
!255 = !DIEnumerator(name: "hwmon_in_max_alarm", value: 13)
!256 = !DIEnumerator(name: "hwmon_in_lcrit_alarm", value: 14)
!257 = !DIEnumerator(name: "hwmon_in_crit_alarm", value: 15)
!258 = !DIEnumerator(name: "hwmon_in_rated_min", value: 16)
!259 = !DIEnumerator(name: "hwmon_in_rated_max", value: 17)
!260 = !DIEnumerator(name: "hwmon_in_beep", value: 18)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_curr_attributes", file: !192, line: 166, baseType: !7, size: 32, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!263 = !DIEnumerator(name: "hwmon_curr_enable", value: 0)
!264 = !DIEnumerator(name: "hwmon_curr_input", value: 1)
!265 = !DIEnumerator(name: "hwmon_curr_min", value: 2)
!266 = !DIEnumerator(name: "hwmon_curr_max", value: 3)
!267 = !DIEnumerator(name: "hwmon_curr_lcrit", value: 4)
!268 = !DIEnumerator(name: "hwmon_curr_crit", value: 5)
!269 = !DIEnumerator(name: "hwmon_curr_average", value: 6)
!270 = !DIEnumerator(name: "hwmon_curr_lowest", value: 7)
!271 = !DIEnumerator(name: "hwmon_curr_highest", value: 8)
!272 = !DIEnumerator(name: "hwmon_curr_reset_history", value: 9)
!273 = !DIEnumerator(name: "hwmon_curr_label", value: 10)
!274 = !DIEnumerator(name: "hwmon_curr_alarm", value: 11)
!275 = !DIEnumerator(name: "hwmon_curr_min_alarm", value: 12)
!276 = !DIEnumerator(name: "hwmon_curr_max_alarm", value: 13)
!277 = !DIEnumerator(name: "hwmon_curr_lcrit_alarm", value: 14)
!278 = !DIEnumerator(name: "hwmon_curr_crit_alarm", value: 15)
!279 = !DIEnumerator(name: "hwmon_curr_rated_min", value: 16)
!280 = !DIEnumerator(name: "hwmon_curr_rated_max", value: 17)
!281 = !DIEnumerator(name: "hwmon_curr_beep", value: 18)
!282 = !{!283, !285, !286, !289, !292, !294, !296, !293, !291}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !284, line: 154, baseType: !7)
!284 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !288)
!288 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !291)
!291 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !284, line: 42, baseType: !293)
!293 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!297 = !{!0, !298, !1788, !1800, !1805, !1808, !1813, !1817}
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "power_supply_hwmon_ops", scope: !2, file: !3, line: 289, type: !300, isLocal: true, isDefinition: true)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_ops", file: !192, line: 406, size: 256, elements: !302)
!302 = !{!303, !315, !1780, !1784}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !301, file: !192, line: 407, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !309, !191, !311, !152}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !284, line: 24, baseType: !308)
!308 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !312, line: 21, baseType: !313)
!312 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !314, line: 27, baseType: !7)
!314 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !301, file: !192, line: 409, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!152, !319, !191, !311, !152, !1779}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !132, line: 705, size: 5824, elements: !321)
!321 = !{!322, !980, !981, !984, !985, !1038, !1482, !1483, !1484, !1485, !1486, !1493, !1663, !1676, !1686, !1690, !1692, !1693, !1694, !1698, !1705, !1706, !1709, !1712, !1716, !1719, !1720, !1723, !1724, !1725, !1726, !1756, !1757, !1758, !1761, !1764, !1773, !1774, !1775, !1776, !1777, !1778}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !320, file: !132, line: 706, baseType: !323, size: 512)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !324, line: 64, size: 512, elements: !325)
!324 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!325 = !{!326, !329, !335, !337, !423, !851, !965, !975, !976, !977, !978, !979}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !324, line: 65, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !323, file: !324, line: 66, baseType: !330, size: 128, offset: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !284, line: 190, size: 128, elements: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !284, line: 191, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !330, file: !284, line: 191, baseType: !333, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !323, file: !324, line: 67, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !323, file: !324, line: 68, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !324, line: 168, size: 768, elements: !340)
!340 = !{!341, !342, !382, !383}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !339, file: !324, line: 169, baseType: !330, size: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !339, file: !324, line: 170, baseType: !343, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !344, line: 29, baseType: !345)
!344 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !344, line: 17, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !344, line: 18, baseType: !348, size: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !344, line: 18, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !348, file: !344, line: 19, baseType: !351, size: 32)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !352, line: 14, size: 32, elements: !353)
!352 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !351, file: !352, line: 15, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !356, line: 44, baseType: !357)
!356 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !356, line: 14, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !356, line: 15, baseType: !360, size: 32)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !356, line: 15, size: 32, elements: !361)
!361 = !{!362, !367, !375}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !360, file: !356, line: 16, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !284, line: 174, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 172, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !364, file: !284, line: 173, baseType: !152, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !356, line: 24, baseType: !368, size: 16)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !356, line: 24, size: 16, elements: !369)
!369 = !{!370, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !368, file: !356, line: 25, baseType: !371, size: 8)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !312, line: 17, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !314, line: 21, baseType: !373)
!373 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !368, file: !356, line: 26, baseType: !371, size: 8, offset: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !356, line: 28, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !356, line: 28, size: 32, elements: !377)
!377 = !{!378, !381}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !376, file: !356, line: 29, baseType: !379, size: 16)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !312, line: 19, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !314, line: 24, baseType: !308)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !376, file: !356, line: 30, baseType: !379, size: 16, offset: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !339, file: !324, line: 171, baseType: !323, size: 512, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !339, file: !324, line: 172, baseType: !384, size: 64, offset: 704)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !324, line: 133, size: 192, elements: !387)
!387 = !{!388, !395, !400}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !386, file: !324, line: 134, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!152, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !324, line: 135, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!327, !393}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !386, file: !324, line: 136, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!152, !393, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !324, line: 125, size: 20736, elements: !407)
!407 = !{!408, !413, !417, !418, !422}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !406, file: !324, line: 126, baseType: !409, size: 192)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 192, elements: !411)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!411 = !{!412}
!412 = !DISubrange(count: 3)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !406, file: !324, line: 127, baseType: !414, size: 4096, offset: 192)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 4096, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !406, file: !324, line: 128, baseType: !152, size: 32, offset: 4288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !406, file: !324, line: 129, baseType: !419, size: 16384, offset: 4320)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 16384, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 2048)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !406, file: !324, line: 130, baseType: !152, size: 32, offset: 20704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !323, file: !324, line: 69, baseType: !424, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !324, line: 116, size: 384, elements: !427)
!427 = !{!428, !432, !458, !798, !829, !833}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !426, file: !324, line: 117, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !336}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !426, file: !324, line: 118, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !436, line: 254, size: 128, elements: !437)
!436 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!437 = !{!438, !451}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !435, file: !436, line: 255, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!442, !336, !446, !410}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !284, line: 66, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !444, line: 73, baseType: !445)
!444 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !444, line: 15, baseType: !291)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !436, line: 30, size: 128, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !436, line: 31, baseType: !327, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !447, file: !436, line: 32, baseType: !307, size: 16, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !435, file: !436, line: 256, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!442, !336, !446, !327, !455}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !284, line: 61, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !444, line: 72, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !444, line: 16, baseType: !293)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !426, file: !324, line: 119, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !436, line: 84, size: 320, elements: !463)
!463 = !{!464, !465, !469, !794, !796}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !462, file: !436, line: 85, baseType: !327, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !462, file: !436, line: 86, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!307, !336, !446, !152}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !462, file: !436, line: 88, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!307, !336, !473, !152}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !436, line: 175, size: 512, elements: !475)
!475 = !{!476, !477, !478, !479, !486, !496, !497}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !474, file: !436, line: 176, baseType: !447, size: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !474, file: !436, line: 177, baseType: !455, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !474, file: !436, line: 178, baseType: !285, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !474, file: !436, line: 179, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !485, line: 32, flags: DIFlagFwdDecl)
!485 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!486 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !474, file: !436, line: 180, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!442, !490, !336, !473, !410, !493, !455}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !492, line: 537, flags: DIFlagFwdDecl)
!492 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !284, line: 52, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !444, line: 88, baseType: !495)
!495 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !474, file: !436, line: 182, baseType: !487, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !474, file: !436, line: 184, baseType: !498, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!152, !490, !336, !473, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !485, line: 625, size: 1344, elements: !503)
!503 = !{!504, !521, !742, !748, !755, !756, !761, !764, !776, !777, !780, !784, !785, !786, !787, !788, !792}
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !485, line: 628, baseType: !505, size: 128)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !485, line: 628, size: 128, elements: !506)
!506 = !{!507, !512}
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !505, file: !485, line: 629, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !505, file: !485, line: 629, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !508, file: !485, line: 631, baseType: !293, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !508, file: !485, line: 632, baseType: !293, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !505, file: !485, line: 635, baseType: !513, size: 128, align: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !284, line: 232, size: 128, align: 64, elements: !514)
!514 = !{!515, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !284, line: 233, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !513, file: !284, line: 234, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !516}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !502, file: !485, line: 639, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !485, line: 733, size: 10240, elements: !524)
!524 = !{!525, !738}
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !485, line: 734, baseType: !526, size: 10240)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !485, line: 734, size: 10240, elements: !527)
!527 = !{!528, !532, !546, !550, !551, !552, !553, !554, !555, !563, !564, !565, !574, !575, !584, !585, !586, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !633, !647, !650, !703, !704, !705, !708, !712, !713, !716, !717, !718, !725, !726}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !485, line: 739, baseType: !529, size: 512, align: 512)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !485, line: 739, size: 512, align: 512, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !529, file: !485, line: 747, baseType: !363, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !526, file: !485, line: 750, baseType: !533, size: 128, offset: 512)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !534, line: 218, size: 128, elements: !535)
!534 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!535 = !{!536, !544, !545}
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !533, file: !534, line: 219, baseType: !537, size: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !534, line: 219, size: 32, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !537, file: !534, line: 220, baseType: !343, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !537, file: !534, line: 221, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !534, line: 197, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 197, elements: !543)
!543 = !{}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !533, file: !534, line: 223, baseType: !7, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !533, file: !534, line: 224, baseType: !285, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !526, file: !485, line: 752, baseType: !547, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!293, !490, !293, !293, !293, !293}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !526, file: !485, line: 756, baseType: !293, size: 64, offset: 704)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !526, file: !485, line: 757, baseType: !293, size: 64, offset: 768)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !526, file: !485, line: 760, baseType: !293, size: 64, offset: 832)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !526, file: !485, line: 761, baseType: !293, size: 64, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !526, file: !485, line: 763, baseType: !293, size: 64, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !526, file: !485, line: 764, baseType: !556, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !492, line: 299, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 299, size: 64, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !558, file: !492, line: 299, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !562, line: 18, baseType: !293)
!562 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!563 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !526, file: !485, line: 773, baseType: !363, size: 32, offset: 1088)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !526, file: !485, line: 785, baseType: !363, size: 32, offset: 1120)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !526, file: !485, line: 795, baseType: !566, size: 64, offset: 1152)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !485, line: 726, size: 128, elements: !568)
!568 = !{!569, !573}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !567, file: !485, line: 727, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !312, line: 23, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !314, line: 31, baseType: !572)
!572 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !567, file: !485, line: 728, baseType: !152, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !526, file: !485, line: 801, baseType: !293, size: 64, offset: 1216)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !526, file: !485, line: 804, baseType: !576, size: 64, offset: 1280)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !577, line: 13, baseType: !578)
!577 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !284, line: 181, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 179, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !579, file: !284, line: 180, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !312, line: 22, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !314, line: 30, baseType: !495)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !526, file: !485, line: 806, baseType: !152, size: 32, offset: 1344)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !526, file: !485, line: 808, baseType: !343, size: 32, offset: 1376)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !526, file: !485, line: 823, baseType: !587, size: 320, offset: 1408)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !588, line: 48, size: 320, elements: !589)
!588 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!589 = !{!590, !591, !592, !597, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !587, file: !588, line: 49, baseType: !576, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !587, file: !588, line: 55, baseType: !576, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !587, file: !588, line: 57, baseType: !593, size: 32, offset: 128)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !594, line: 15, size: 32, elements: !595)
!594 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !593, file: !594, line: 20, baseType: !363, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !587, file: !588, line: 59, baseType: !598, size: 32, offset: 160)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !352, line: 23, baseType: !351)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !587, file: !588, line: 60, baseType: !330, size: 128, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !526, file: !485, line: 825, baseType: !330, size: 128, offset: 1728)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !526, file: !485, line: 845, baseType: !152, size: 32, offset: 1856)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !526, file: !485, line: 849, baseType: !293, size: 64, offset: 1920)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !526, file: !485, line: 850, baseType: !293, size: 64, offset: 1984)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !526, file: !485, line: 852, baseType: !293, size: 64, offset: 2048)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !526, file: !485, line: 853, baseType: !293, size: 64, offset: 2112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !526, file: !485, line: 854, baseType: !578, size: 64, offset: 2176)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !526, file: !485, line: 855, baseType: !293, size: 64, offset: 2240)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !526, file: !485, line: 856, baseType: !293, size: 64, offset: 2304)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !526, file: !485, line: 857, baseType: !293, size: 64, offset: 2368)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !526, file: !485, line: 858, baseType: !293, size: 64, offset: 2432)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !526, file: !485, line: 865, baseType: !612, size: 32, offset: 2496)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !613, line: 69, baseType: !614)
!613 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !613, line: 64, size: 32, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !614, file: !613, line: 65, baseType: !7, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !526, file: !485, line: 867, baseType: !343, size: 32, offset: 2528)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !526, file: !485, line: 869, baseType: !293, size: 64, offset: 2560)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !526, file: !485, line: 869, baseType: !293, size: 64, offset: 2624)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !526, file: !485, line: 869, baseType: !293, size: 64, offset: 2688)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !526, file: !485, line: 869, baseType: !293, size: 64, offset: 2752)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !526, file: !485, line: 870, baseType: !293, size: 64, offset: 2816)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !526, file: !485, line: 870, baseType: !293, size: 64, offset: 2880)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !526, file: !485, line: 870, baseType: !293, size: 64, offset: 2944)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !526, file: !485, line: 871, baseType: !293, size: 64, offset: 3008)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !526, file: !485, line: 871, baseType: !293, size: 64, offset: 3072)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !526, file: !485, line: 871, baseType: !293, size: 64, offset: 3136)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !526, file: !485, line: 871, baseType: !293, size: 64, offset: 3200)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !526, file: !485, line: 873, baseType: !630, size: 3328, offset: 3264)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 3328, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 52)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !526, file: !485, line: 875, baseType: !634, size: 1280, offset: 6592)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 1280, elements: !645)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !636, line: 22, size: 320, elements: !637)
!636 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!637 = !{!638, !639, !640, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !635, file: !636, line: 23, baseType: !598, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !635, file: !636, line: 24, baseType: !582, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !635, file: !636, line: 26, baseType: !330, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !635, file: !636, line: 28, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !312, line: 20, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !314, line: 26, baseType: !152)
!645 = !{!646}
!646 = !DISubrange(count: 4)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !526, file: !485, line: 877, baseType: !648, size: 64, offset: 7872)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !485, line: 877, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !526, file: !485, line: 880, baseType: !651, size: 1088, offset: 7936)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !652, line: 72, baseType: !653)
!652 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 23, size: 1088, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !662, !663, !671, !672, !697, !698, !699}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !653, file: !652, line: 28, baseType: !570, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !653, file: !652, line: 38, baseType: !578, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !653, file: !652, line: 40, baseType: !293, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !653, file: !652, line: 43, baseType: !587, size: 320, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !653, file: !652, line: 44, baseType: !660, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !652, line: 44, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !652, line: 48, baseType: !293, size: 64, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !653, file: !652, line: 59, baseType: !664, size: 256, offset: 640)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !665, line: 66, size: 256, elements: !666)
!665 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!666 = !{!667, !668, !669, !670}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !664, file: !665, line: 67, baseType: !576, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !664, file: !665, line: 68, baseType: !598, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !664, file: !665, line: 70, baseType: !593, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !664, file: !665, line: 72, baseType: !330, size: 128, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !653, file: !652, line: 60, baseType: !285, size: 64, offset: 896)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !653, file: !652, line: 61, baseType: !673, size: 64, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !676, line: 13, size: 1216, elements: !677)
!676 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !675, file: !676, line: 14, baseType: !285, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !675, file: !676, line: 15, baseType: !293, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !675, file: !676, line: 17, baseType: !293, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !675, file: !676, line: 17, baseType: !293, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !675, file: !676, line: 18, baseType: !293, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !675, file: !676, line: 18, baseType: !293, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !675, file: !676, line: 19, baseType: !309, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !675, file: !676, line: 21, baseType: !291, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !675, file: !676, line: 23, baseType: !291, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !675, file: !676, line: 24, baseType: !291, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !675, file: !676, line: 25, baseType: !291, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !675, file: !676, line: 26, baseType: !291, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !675, file: !676, line: 27, baseType: !291, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !675, file: !676, line: 28, baseType: !291, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !675, file: !676, line: 29, baseType: !291, size: 64, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !675, file: !676, line: 30, baseType: !291, size: 64, offset: 960)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !675, file: !676, line: 31, baseType: !291, size: 64, offset: 1024)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !675, file: !676, line: 32, baseType: !291, size: 64, offset: 1088)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !675, file: !676, line: 33, baseType: !291, size: 64, offset: 1152)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !653, file: !652, line: 63, baseType: !363, size: 32, offset: 1024)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !653, file: !652, line: 69, baseType: !379, size: 16, offset: 1056)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !653, file: !652, line: 70, baseType: !700, size: 16, offset: 1072)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !312, line: 18, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !314, line: 23, baseType: !702)
!702 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !485, line: 882, baseType: !293, size: 64, offset: 9024)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !526, file: !485, line: 885, baseType: !343, size: 32, offset: 9088)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !526, file: !485, line: 886, baseType: !706, size: 64, offset: 9152)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !485, line: 732, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !526, file: !485, line: 901, baseType: !709, size: 64, offset: 9216)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !711, line: 18, flags: DIFlagFwdDecl)
!711 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !526, file: !485, line: 904, baseType: !490, size: 64, offset: 9280)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !526, file: !485, line: 906, baseType: !714, size: 64, offset: 9344)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !485, line: 906, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !526, file: !485, line: 930, baseType: !363, size: 32, offset: 9408)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !526, file: !485, line: 933, baseType: !363, size: 32, offset: 9440)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !526, file: !485, line: 935, baseType: !719, size: 64, offset: 9472)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !720, line: 103, size: 64, elements: !721)
!720 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !719, file: !720, line: 104, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !720, line: 101, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !526, file: !485, line: 940, baseType: !576, size: 64, offset: 9536)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !526, file: !485, line: 942, baseType: !727, size: 256, offset: 9600)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !728, line: 98, size: 256, elements: !729)
!728 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !727, file: !728, line: 99, baseType: !576, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !727, file: !728, line: 100, baseType: !330, size: 128, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !727, file: !728, line: 101, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !728, line: 21, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !523, file: !485, line: 986, baseType: !739, offset: 10240)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: -1)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !502, file: !485, line: 640, baseType: !743, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !492, line: 297, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !492, line: 297, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !744, file: !492, line: 297, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !562, line: 19, baseType: !293)
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !485, line: 646, baseType: !749, size: 64, offset: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !485, line: 646, size: 64, elements: !750)
!750 = !{!751, !754}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !749, file: !485, line: 647, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !485, line: 542, baseType: !293)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !749, file: !485, line: 648, baseType: !753, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !502, file: !485, line: 666, baseType: !152, size: 32, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !502, file: !485, line: 667, baseType: !757, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !485, line: 579, size: 320, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !485, line: 580, baseType: !587, size: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !502, file: !485, line: 670, baseType: !762, size: 8, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !284, line: 35, baseType: !763)
!763 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !502, file: !485, line: 681, baseType: !765, size: 256, offset: 512)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !502, file: !485, line: 678, size: 256, elements: !766)
!766 = !{!767, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !765, file: !485, line: 679, baseType: !768, size: 192, align: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !769, line: 5, size: 192, align: 64, elements: !770)
!769 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!770 = !{!771, !772, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !768, file: !769, line: 6, baseType: !293, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !768, file: !769, line: 7, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !768, file: !769, line: 8, baseType: !773, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !765, file: !485, line: 680, baseType: !293, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !502, file: !485, line: 689, baseType: !330, size: 128, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !502, file: !485, line: 691, baseType: !778, size: 64, offset: 896)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !485, line: 691, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !502, file: !485, line: 694, baseType: !781, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !485, line: 694, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !502, file: !485, line: 697, baseType: !293, size: 64, offset: 1024)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !502, file: !485, line: 699, baseType: !490, size: 64, offset: 1088)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !502, file: !485, line: 700, baseType: !285, size: 64, offset: 1152)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !502, file: !485, line: 711, baseType: !576, size: 64, offset: 1216)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !502, file: !485, line: 717, baseType: !789, size: 64, offset: 1280)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !791, line: 54, flags: DIFlagFwdDecl)
!791 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !502, file: !485, line: 722, baseType: !793, offset: 1344)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !485, line: 570, elements: !543)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !462, file: !436, line: 90, baseType: !795, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !462, file: !436, line: 91, baseType: !797, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !426, file: !324, line: 120, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!802, !393}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !113, line: 39, size: 384, elements: !805)
!805 = !{!806, !807, !811, !815, !821, !825}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !113, line: 40, baseType: !112, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !804, file: !113, line: 41, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!762}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !804, file: !113, line: 42, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!285}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !804, file: !113, line: 43, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!309, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !113, line: 19, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !804, file: !113, line: 44, baseType: !822, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!309}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !804, file: !113, line: 45, baseType: !826, size: 64, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !285}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !426, file: !324, line: 121, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!309, !393}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !426, file: !324, line: 122, baseType: !834, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !393, !837, !844}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !711, line: 23, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 21, size: 32, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !839, file: !711, line: 22, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !284, line: 37, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !444, line: 49, baseType: !7)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !711, line: 28, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 26, size: 32, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !846, file: !711, line: 27, baseType: !849, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !284, line: 38, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !444, line: 50, baseType: !7)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !323, file: !324, line: 70, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !854, line: 190, size: 1152, elements: !855)
!854 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !957, !958, !959, !960, !961, !964}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !853, file: !854, line: 191, baseType: !363, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !853, file: !854, line: 192, baseType: !363, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !853, file: !854, line: 202, baseType: !852, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !854, line: 203, baseType: !327, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !853, file: !854, line: 205, baseType: !768, size: 192, align: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !853, file: !854, line: 207, baseType: !309, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !853, file: !854, line: 208, baseType: !7, size: 32, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !854, line: 209, baseType: !864, size: 256, offset: 512)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !854, line: 209, size: 256, elements: !865)
!865 = !{!866, !878, !882}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !864, file: !854, line: 210, baseType: !867, size: 256)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !854, line: 153, size: 256, elements: !868)
!868 = !{!869, !870, !874, !877}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !867, file: !854, line: 154, baseType: !293, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !867, file: !854, line: 156, baseType: !871, size: 64, offset: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !769, line: 12, size: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !871, file: !769, line: 13, baseType: !773, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !867, file: !854, line: 162, baseType: !875, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !854, line: 162, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !867, file: !854, line: 167, baseType: !293, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !864, file: !854, line: 211, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !854, line: 170, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !879, file: !854, line: 171, baseType: !852, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !864, file: !854, line: 212, baseType: !883, size: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !854, line: 174, size: 256, elements: !884)
!884 = !{!885, !952, !955, !956}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !883, file: !854, line: 175, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !854, line: 271, size: 768, elements: !889)
!889 = !{!890, !912, !916, !920, !925, !929, !933, !937, !938, !939, !940, !948}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !888, file: !854, line: 276, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!152, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !854, line: 251, size: 1216, elements: !896)
!896 = !{!897, !898, !899, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !895, file: !854, line: 253, baseType: !852, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !895, file: !854, line: 254, baseType: !490, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !895, file: !854, line: 255, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !791, line: 66, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !895, file: !854, line: 256, baseType: !285, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !895, file: !854, line: 259, baseType: !664, size: 256, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !895, file: !854, line: 260, baseType: !664, size: 256, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !895, file: !854, line: 261, baseType: !152, size: 32, offset: 768)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !895, file: !854, line: 262, baseType: !330, size: 128, offset: 832)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !895, file: !854, line: 263, baseType: !410, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !895, file: !854, line: 265, baseType: !455, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !895, file: !854, line: 266, baseType: !762, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !895, file: !854, line: 267, baseType: !762, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !895, file: !854, line: 268, baseType: !781, size: 64, offset: 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !888, file: !854, line: 277, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !894}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !888, file: !854, line: 290, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!152, !900, !285}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !888, file: !854, line: 292, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!285, !900, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !888, file: !854, line: 293, baseType: !926, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!285, !900, !285, !924}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !888, file: !854, line: 294, baseType: !930, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !900, !285}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !888, file: !854, line: 296, baseType: !934, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!442, !894, !410, !455, !493}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !888, file: !854, line: 306, baseType: !455, size: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !888, file: !854, line: 313, baseType: !762, size: 8, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !888, file: !854, line: 314, baseType: !934, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !888, file: !854, line: 317, baseType: !941, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!944, !894, !946}
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !945, line: 59, baseType: !7)
!945 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !854, line: 31, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !888, file: !854, line: 320, baseType: !949, size: 64, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!152, !894, !501}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !883, file: !854, line: 176, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !854, line: 35, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !883, file: !854, line: 177, baseType: !493, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !883, file: !854, line: 178, baseType: !852, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !853, file: !854, line: 215, baseType: !285, size: 64, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !853, file: !854, line: 221, baseType: !570, size: 64, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !854, line: 223, baseType: !308, size: 16, offset: 896)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !853, file: !854, line: 224, baseType: !307, size: 16, offset: 912)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !853, file: !854, line: 225, baseType: !962, size: 64, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !854, line: 36, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !853, file: !854, line: 227, baseType: !513, size: 128, align: 64, offset: 1024)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !323, file: !324, line: 71, baseType: !966, size: 32, offset: 448)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !967, line: 19, size: 32, elements: !968)
!967 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !966, file: !967, line: 20, baseType: !970, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !971, line: 113, baseType: !972)
!971 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !971, line: 111, size: 32, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !972, file: !971, line: 112, baseType: !363, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !323, file: !324, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !323, file: !324, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !323, file: !324, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !323, file: !324, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !323, file: !324, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !320, file: !132, line: 707, baseType: !319, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !320, file: !132, line: 709, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !132, line: 37, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !320, file: !132, line: 711, baseType: !327, size: 64, offset: 640)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !320, file: !132, line: 712, baseType: !986, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !132, line: 89, size: 384, elements: !989)
!989 = !{!990, !991, !992, !998, !1003, !1007}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !988, file: !132, line: 90, baseType: !327, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !988, file: !132, line: 91, baseType: !459, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !988, file: !132, line: 92, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!152, !996, !405}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !988, file: !132, line: 93, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!410, !996, !1002, !837, !844}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !988, file: !132, line: 95, baseType: !1004, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !319}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !988, file: !132, line: 97, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !144, line: 286, size: 1472, elements: !1011)
!1011 = !{!1012, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1010, file: !144, line: 287, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!152, !319}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1010, file: !144, line: 288, baseType: !1004, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1010, file: !144, line: 289, baseType: !1013, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1010, file: !144, line: 290, baseType: !1013, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1010, file: !144, line: 291, baseType: !1013, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1010, file: !144, line: 292, baseType: !1013, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1010, file: !144, line: 293, baseType: !1013, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1010, file: !144, line: 294, baseType: !1013, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1010, file: !144, line: 295, baseType: !1013, size: 64, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1010, file: !144, line: 296, baseType: !1013, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1010, file: !144, line: 297, baseType: !1013, size: 64, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1010, file: !144, line: 298, baseType: !1013, size: 64, offset: 704)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1010, file: !144, line: 299, baseType: !1013, size: 64, offset: 768)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1010, file: !144, line: 300, baseType: !1013, size: 64, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1010, file: !144, line: 301, baseType: !1013, size: 64, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1010, file: !144, line: 302, baseType: !1013, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1010, file: !144, line: 303, baseType: !1013, size: 64, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1010, file: !144, line: 304, baseType: !1013, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1010, file: !144, line: 305, baseType: !1013, size: 64, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1010, file: !144, line: 306, baseType: !1013, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1010, file: !144, line: 307, baseType: !1013, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1010, file: !144, line: 308, baseType: !1013, size: 64, offset: 1344)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1010, file: !144, line: 309, baseType: !1013, size: 64, offset: 1408)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !320, file: !132, line: 714, baseType: !1039, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1042, line: 80, size: 1344, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1481}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1041, file: !1042, line: 81, baseType: !327, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1041, file: !1042, line: 82, baseType: !327, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1041, file: !1042, line: 83, baseType: !459, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1041, file: !1042, line: 84, baseType: !459, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1041, file: !1042, line: 85, baseType: !459, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1041, file: !1042, line: 87, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!152, !319, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !126, line: 96, size: 1152, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1433, !1434, !1435, !1436, !1440, !1444, !1445, !1446, !1447, !1448, !1456, !1457, !1458, !1459, !1460, !1461}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1054, file: !126, line: 97, baseType: !327, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1054, file: !126, line: 98, baseType: !1039, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1054, file: !126, line: 100, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !119, line: 402, size: 9216, align: 512, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1068, !1089, !1115, !1116, !1117, !1118, !1122, !1125, !1126, !1127, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1190, !1194, !1214, !1232, !1233, !1234, !1235, !1244, !1267, !1268, !1271, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1285, !1286, !1392, !1400, !1401, !1402, !1404, !1408, !1409, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1426, !1427, !1428, !1432}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1060, file: !119, line: 403, baseType: !118, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1060, file: !119, line: 406, baseType: !330, size: 128, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1060, file: !119, line: 409, baseType: !1065, size: 448, offset: 192)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 448, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 56)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1060, file: !119, line: 417, baseType: !1069, size: 768, offset: 640)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !119, line: 45, size: 768, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1077}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1069, file: !119, line: 46, baseType: !323, size: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1069, file: !119, line: 47, baseType: !1059, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1069, file: !119, line: 48, baseType: !336, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1069, file: !119, line: 49, baseType: !1075, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !119, line: 49, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1069, file: !119, line: 50, baseType: !1078, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1080, line: 26, size: 256, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1079, file: !1080, line: 27, baseType: !7, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1079, file: !1080, line: 28, baseType: !1084, size: 192, offset: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1085, line: 43, size: 192, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1084, file: !1085, line: 44, baseType: !598, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1084, file: !1085, line: 45, baseType: !330, size: 128, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1060, file: !119, line: 418, baseType: !1090, size: 64, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !119, line: 53, size: 448, elements: !1092)
!1092 = !{!1093, !1094, !1099, !1103, !1107, !1111}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1091, file: !119, line: 54, baseType: !447, size: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1091, file: !119, line: 55, baseType: !1095, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!442, !1090, !1098, !410}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1091, file: !119, line: 57, baseType: !1100, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!442, !1090, !1098, !327, !455}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1091, file: !119, line: 59, baseType: !1104, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1059, !327}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1091, file: !119, line: 60, baseType: !1108, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!152, !1059}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1091, file: !119, line: 61, baseType: !1112, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1059}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1060, file: !119, line: 419, baseType: !327, size: 64, offset: 1472)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1060, file: !119, line: 420, baseType: !327, size: 64, offset: 1536)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1060, file: !119, line: 421, baseType: !336, size: 64, offset: 1600)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1060, file: !119, line: 424, baseType: !1119, size: 64, offset: 1664)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !119, line: 424, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1060, file: !119, line: 425, baseType: !1123, size: 64, offset: 1728)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1060, file: !119, line: 426, baseType: !7, size: 32, offset: 1792)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1060, file: !119, line: 435, baseType: !664, size: 256, offset: 1856)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1060, file: !119, line: 437, baseType: !1128, size: 64, offset: 2112)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1130, line: 69, size: 320, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1131 = !{!1132, !1133, !1134, !1151, !1153, !1157, !1158}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1129, file: !1130, line: 70, baseType: !327, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1129, file: !1130, line: 71, baseType: !1059, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1129, file: !1130, line: 72, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1130, line: 47, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1146, !1150}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1137, file: !1130, line: 49, baseType: !7, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1137, file: !1130, line: 51, baseType: !1141, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!152, !327, !1144}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1137, file: !1130, line: 53, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!152, !410, !1144}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1137, file: !1130, line: 55, baseType: !826, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1129, file: !1130, line: 73, baseType: !1152, size: 16, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1129, file: !1130, line: 74, baseType: !1154, size: 8, offset: 208)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !312, line: 16, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !314, line: 20, baseType: !1156)
!1156 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 75, baseType: !371, size: 8, offset: 216)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1130, line: 76, baseType: !1159, size: 64, offset: 256)
!1159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1130, line: 76, size: 64, elements: !1160)
!1160 = !{!1161, !1162, !1169}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1159, file: !1130, line: 77, baseType: !285, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1159, file: !1130, line: 78, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1130, line: 86, size: 128, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1165, file: !1130, line: 87, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1165, file: !1130, line: 88, baseType: !410, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1159, file: !1130, line: 79, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1130, line: 92, size: 256, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1178, !1179}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1172, file: !1130, line: 94, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1172, file: !1130, line: 95, baseType: !7, size: 32, offset: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1172, file: !1130, line: 96, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1172, file: !1130, line: 97, baseType: !1135, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1172, file: !1130, line: 98, baseType: !285, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1060, file: !119, line: 438, baseType: !7, size: 32, offset: 2176)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1060, file: !119, line: 441, baseType: !7, size: 32, offset: 2208)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1060, file: !119, line: 442, baseType: !1119, size: 64, offset: 2240)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1060, file: !119, line: 443, baseType: !1123, size: 64, offset: 2304)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1060, file: !119, line: 444, baseType: !762, size: 8, offset: 2368)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1060, file: !119, line: 451, baseType: !762, size: 8, offset: 2376)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1060, file: !119, line: 454, baseType: !7, size: 32, offset: 2400)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1060, file: !119, line: 455, baseType: !1188, size: 64, offset: 2432)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !119, line: 43, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1060, file: !119, line: 458, baseType: !1191, size: 64, offset: 2496)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!152}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1060, file: !119, line: 460, baseType: !1195, size: 4032, align: 512, offset: 2560)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 4032, elements: !1212)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !119, line: 362, size: 576, elements: !1197)
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1196, file: !119, line: 363, baseType: !285, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1196, file: !119, line: 364, baseType: !7, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1196, file: !119, line: 367, baseType: !1201, size: 448, offset: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !119, line: 319, size: 448, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1201, file: !119, line: 320, baseType: !1059, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1201, file: !119, line: 321, baseType: !1205, size: 384, offset: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1206, line: 40, size: 384, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1207 = !{!1208}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1205, file: !1206, line: 41, baseType: !1209, size: 384, align: 64)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 384, align: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 2)
!1212 = !{!1213}
!1213 = !DISubrange(count: 7)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1060, file: !119, line: 463, baseType: !1215, size: 192, offset: 6592)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1216, line: 8, size: 192, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1217 = !{!1218, !1219, !1221}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1215, file: !1216, line: 10, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1215, file: !1216, line: 11, baseType: !1220, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1215, file: !1216, line: 12, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1224, line: 59, size: 48, elements: !1225)
!1224 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1223, file: !1224, line: 60, baseType: !700, size: 16)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1223, file: !1224, line: 61, baseType: !700, size: 16, offset: 16)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1223, file: !1224, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1223, file: !1224, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1223, file: !1224, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1223, file: !1224, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1060, file: !119, line: 465, baseType: !293, size: 64, offset: 6784)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1060, file: !119, line: 469, baseType: !7, size: 32, offset: 6848)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1060, file: !119, line: 470, baseType: !330, size: 128, offset: 6912)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1060, file: !119, line: 471, baseType: !1236, size: 64, offset: 7040)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1238, line: 33, size: 96, elements: !1239)
!1238 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1239 = !{!1240, !1241, !1242, !1243}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1237, file: !1238, line: 37, baseType: !152, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1237, file: !1238, line: 43, baseType: !152, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1237, file: !1238, line: 45, baseType: !308, size: 16, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !1238, line: 47, baseType: !308, size: 16, offset: 80)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1060, file: !119, line: 476, baseType: !1245, size: 64, offset: 7104)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !119, line: 378, size: 256, elements: !1247)
!1247 = !{!1248, !1264, !1265, !1266}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1246, file: !119, line: 379, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1251, line: 204, baseType: !1252)
!1251 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1251, line: 197, size: 192, elements: !1253)
!1253 = !{!1254, !1256, !1257, !1258, !1260, !1262}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1252, file: !1251, line: 198, baseType: !1255, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1251, line: 21, baseType: !313)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1252, file: !1251, line: 199, baseType: !373, size: 8, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1252, file: !1251, line: 200, baseType: !373, size: 8, offset: 40)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1252, file: !1251, line: 201, baseType: !1259, size: 16, offset: 48)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1251, line: 17, baseType: !380)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1252, file: !1251, line: 202, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1251, line: 16, baseType: !571)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1252, file: !1251, line: 203, baseType: !1263, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1251, line: 22, baseType: !571)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1246, file: !119, line: 380, baseType: !7, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1246, file: !119, line: 381, baseType: !410, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1246, file: !119, line: 382, baseType: !410, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1060, file: !119, line: 477, baseType: !1246, size: 256, offset: 7168)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1060, file: !119, line: 480, baseType: !1269, size: 64, offset: 7424)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !119, line: 480, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1060, file: !119, line: 483, baseType: !1272, size: 64, offset: 7488)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !119, line: 483, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1060, file: !119, line: 488, baseType: !410, size: 64, offset: 7552)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1060, file: !119, line: 492, baseType: !285, size: 64, offset: 7616)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1060, file: !119, line: 493, baseType: !7, size: 32, offset: 7680)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1060, file: !119, line: 495, baseType: !285, size: 64, offset: 7744)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1060, file: !119, line: 496, baseType: !7, size: 32, offset: 7808)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1060, file: !119, line: 499, baseType: !7, size: 32, offset: 7840)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1060, file: !119, line: 500, baseType: !1281, size: 64, offset: 7872)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1283, line: 45, baseType: !1284)
!1283 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1060, file: !119, line: 503, baseType: !7, size: 32, offset: 7936)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1060, file: !119, line: 504, baseType: !1287, size: 64, offset: 8000)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1290, line: 96, size: 192, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1291 = !{!1292, !1293, !1353, !1356}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1289, file: !1290, line: 97, baseType: !7, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1289, file: !1290, line: 98, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1290, line: 24, size: 3072, elements: !1296)
!1296 = !{!1297, !1299, !1300, !1301, !1302, !1316, !1317, !1318, !1319, !1337, !1338, !1339, !1350, !1351, !1352}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1295, file: !1290, line: 26, baseType: !1298, size: 128)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 128, elements: !1210)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1295, file: !1290, line: 27, baseType: !1298, size: 128, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1295, file: !1290, line: 28, baseType: !152, size: 32, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1295, file: !1290, line: 31, baseType: !343, size: 32, align: 512, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1295, file: !1290, line: 32, baseType: !1303, size: 960, offset: 576)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1304, line: 206, size: 960, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1305 = !{!1306, !1307, !1310, !1312, !1313, !1315}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1303, file: !1304, line: 207, baseType: !516, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1303, file: !1304, line: 208, baseType: !1308, size: 256, offset: 64)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 256, elements: !645)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1303, file: !1304, line: 209, baseType: !1311, size: 256, offset: 320)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !645)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1303, file: !1304, line: 213, baseType: !291, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1303, file: !1304, line: 215, baseType: !1314, size: 256, offset: 640)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !645)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1303, file: !1304, line: 216, baseType: !371, size: 8, offset: 896)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1295, file: !1290, line: 33, baseType: !293, size: 64, offset: 1536)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1295, file: !1290, line: 34, baseType: !293, size: 64, offset: 1600)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1295, file: !1290, line: 35, baseType: !762, size: 8, offset: 1664)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1295, file: !1290, line: 36, baseType: !1320, size: 320, offset: 1728)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1321, line: 11, size: 320, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1322 = !{!1323, !1330, !1331, !1336}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1320, file: !1321, line: 16, baseType: !1324, size: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !284, line: 198, size: 128, elements: !1325)
!1325 = !{!1326, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1324, file: !284, line: 199, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1324, file: !284, line: 199, baseType: !1329, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1320, file: !1321, line: 17, baseType: !293, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1320, file: !1321, line: 18, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !1321, line: 19, baseType: !311, size: 32, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1295, file: !1290, line: 37, baseType: !727, size: 256, offset: 2048)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1295, file: !1290, line: 38, baseType: !513, size: 128, align: 64, offset: 2304)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1295, file: !1290, line: 39, baseType: !1340, size: 64, offset: 2432)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1290, line: 49, size: 768, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !1290, line: 50, baseType: !343, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1341, file: !1290, line: 51, baseType: !1311, size: 256, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1341, file: !1290, line: 53, baseType: !1311, size: 256, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1341, file: !1290, line: 54, baseType: !293, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1341, file: !1290, line: 55, baseType: !1340, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1341, file: !1290, line: 56, baseType: !152, size: 32, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1341, file: !1290, line: 57, baseType: !152, size: 32, offset: 736)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1295, file: !1290, line: 40, baseType: !293, size: 64, offset: 2496)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1295, file: !1290, line: 42, baseType: !152, size: 32, offset: 2560)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1295, file: !1290, line: 43, baseType: !1288, size: 64, offset: 2624)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1289, file: !1290, line: 99, baseType: !1354, offset: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1355, line: 211, elements: !543)
!1355 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1289, file: !1290, line: 100, baseType: !1357, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1290, line: 63, size: 3008, elements: !1359)
!1359 = !{!1360, !1361, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1391}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1358, file: !1290, line: 64, baseType: !1340, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1358, file: !1290, line: 65, baseType: !1362, size: 192, offset: 64)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 192, elements: !411)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1358, file: !1290, line: 67, baseType: !152, size: 32, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1358, file: !1290, line: 68, baseType: !664, size: 256, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1358, file: !1290, line: 69, baseType: !343, size: 32, offset: 576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1358, file: !1290, line: 70, baseType: !664, size: 256, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1358, file: !1290, line: 71, baseType: !293, size: 64, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1358, file: !1290, line: 72, baseType: !293, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1358, file: !1290, line: 73, baseType: !293, size: 64, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1358, file: !1290, line: 74, baseType: !293, size: 64, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1358, file: !1290, line: 75, baseType: !293, size: 64, offset: 1152)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1358, file: !1290, line: 76, baseType: !293, size: 64, offset: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1358, file: !1290, line: 77, baseType: !293, size: 64, offset: 1280)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1358, file: !1290, line: 78, baseType: !293, size: 64, offset: 1344)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1358, file: !1290, line: 79, baseType: !762, size: 8, offset: 1408)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1358, file: !1290, line: 80, baseType: !293, size: 64, offset: 1472)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1358, file: !1290, line: 81, baseType: !664, size: 256, offset: 1536)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1358, file: !1290, line: 82, baseType: !1079, size: 256, offset: 1792)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1358, file: !1290, line: 84, baseType: !363, size: 32, offset: 2048)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1358, file: !1290, line: 87, baseType: !293, size: 64, offset: 2112)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1358, file: !1290, line: 88, baseType: !293, size: 64, offset: 2176)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1358, file: !1290, line: 89, baseType: !1383, size: 704, offset: 2240)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !728, line: 111, size: 704, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1390}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1383, file: !728, line: 112, baseType: !727, size: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1383, file: !728, line: 113, baseType: !1320, size: 320, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1383, file: !728, line: 116, baseType: !1388, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !728, line: 18, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1383, file: !728, line: 117, baseType: !152, size: 32, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1358, file: !1290, line: 90, baseType: !1288, size: 64, offset: 2944)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1060, file: !119, line: 515, baseType: !1393, size: 64, offset: 8064)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1395, line: 117, size: 128, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1394, file: !1395, line: 118, baseType: !643, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1394, file: !1395, line: 119, baseType: !643, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1394, file: !1395, line: 120, baseType: !291, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1060, file: !119, line: 516, baseType: !7, size: 32, offset: 8128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1060, file: !119, line: 519, baseType: !7, size: 32, offset: 8160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1060, file: !119, line: 520, baseType: !1403, size: 64, offset: 8192)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1060, file: !119, line: 523, baseType: !1405, size: 64, offset: 8256)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !119, line: 523, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1060, file: !119, line: 524, baseType: !7, size: 32, offset: 8320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1060, file: !119, line: 525, baseType: !1410, size: 64, offset: 8384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !119, line: 525, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1060, file: !119, line: 526, baseType: !7, size: 32, offset: 8448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1060, file: !119, line: 533, baseType: !285, size: 64, offset: 8512)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1060, file: !119, line: 534, baseType: !7, size: 32, offset: 8576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1060, file: !119, line: 535, baseType: !296, size: 64, offset: 8640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1060, file: !119, line: 536, baseType: !7, size: 32, offset: 8704)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1060, file: !119, line: 539, baseType: !152, size: 32, offset: 8736)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1060, file: !119, line: 540, baseType: !1420, size: 64, offset: 8768)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1422, line: 32, size: 64, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1421, file: !1422, line: 33, baseType: !643, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1421, file: !1422, line: 34, baseType: !643, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1060, file: !119, line: 563, baseType: !330, size: 128, offset: 8832)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1060, file: !119, line: 565, baseType: !330, size: 128, offset: 8960)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1060, file: !119, line: 568, baseType: !1429, size: 64, offset: 9088)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1060, file: !119, line: 570, baseType: !363, size: 32, offset: 9152)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1054, file: !126, line: 101, baseType: !327, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1054, file: !126, line: 103, baseType: !762, size: 8, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1054, file: !126, line: 104, baseType: !125, size: 32, offset: 288)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1054, file: !126, line: 106, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !126, line: 106, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1054, file: !126, line: 107, baseType: !1441, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !126, line: 107, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1054, file: !126, line: 109, baseType: !1013, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1054, file: !126, line: 110, baseType: !1004, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1054, file: !126, line: 111, baseType: !1013, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1054, file: !126, line: 112, baseType: !1004, size: 64, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1054, file: !126, line: 113, baseType: !1449, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!152, !319, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !144, line: 60, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !144, line: 58, size: 32, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1453, file: !144, line: 59, baseType: !152, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1054, file: !126, line: 114, baseType: !1013, size: 64, offset: 768)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1054, file: !126, line: 115, baseType: !459, size: 64, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1054, file: !126, line: 116, baseType: !459, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1054, file: !126, line: 118, baseType: !1008, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1054, file: !126, line: 119, baseType: !1004, size: 64, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1054, file: !126, line: 121, baseType: !1462, size: 64, offset: 1088)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !126, line: 121, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1041, file: !1042, line: 88, baseType: !993, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1041, file: !1042, line: 89, baseType: !1013, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1041, file: !1042, line: 90, baseType: !1004, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1041, file: !1042, line: 91, baseType: !1004, size: 64, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1041, file: !1042, line: 92, baseType: !1004, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1041, file: !1042, line: 94, baseType: !1013, size: 64, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1041, file: !1042, line: 95, baseType: !1013, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1041, file: !1042, line: 97, baseType: !1449, size: 64, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1041, file: !1042, line: 98, baseType: !1013, size: 64, offset: 896)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1041, file: !1042, line: 100, baseType: !1013, size: 64, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1041, file: !1042, line: 102, baseType: !1013, size: 64, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1041, file: !1042, line: 103, baseType: !1004, size: 64, offset: 1088)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1041, file: !1042, line: 105, baseType: !1008, size: 64, offset: 1152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1041, file: !1042, line: 107, baseType: !1478, size: 64, offset: 1216)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1042, line: 107, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1041, file: !1042, line: 109, baseType: !762, size: 8, offset: 1280)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !320, file: !132, line: 715, baseType: !1053, size: 64, offset: 832)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !320, file: !132, line: 717, baseType: !285, size: 64, offset: 896)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !320, file: !132, line: 719, baseType: !285, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !320, file: !132, line: 721, baseType: !664, size: 256, offset: 1024)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !320, file: !132, line: 725, baseType: !1487, size: 448, offset: 1280)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !132, line: 517, size: 448, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1492}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1487, file: !132, line: 518, baseType: !330, size: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1487, file: !132, line: 519, baseType: !330, size: 128, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1487, file: !132, line: 520, baseType: !330, size: 128, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1487, file: !132, line: 521, baseType: !131, size: 32, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !320, file: !132, line: 726, baseType: !1494, size: 2496, offset: 1728)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !144, line: 663, size: 2496, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1540, !1541, !1542, !1543, !1544, !1545, !1616, !1617, !1618, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1656, !1660}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1494, file: !144, line: 664, baseType: !1452, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1494, file: !144, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1494, file: !144, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1494, file: !144, line: 667, baseType: !762, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1494, file: !144, line: 668, baseType: !762, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1494, file: !144, line: 669, baseType: !762, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1494, file: !144, line: 670, baseType: !762, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1494, file: !144, line: 671, baseType: !762, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1494, file: !144, line: 672, baseType: !762, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1494, file: !144, line: 673, baseType: !762, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1494, file: !144, line: 674, baseType: !762, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1494, file: !144, line: 675, baseType: !311, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !144, line: 676, baseType: !343, size: 32, offset: 96)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1494, file: !144, line: 678, baseType: !330, size: 128, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1494, file: !144, line: 679, baseType: !1079, size: 256, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1494, file: !144, line: 680, baseType: !1512, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1514, line: 43, size: 1536, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1523, !1524, !1525, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1513, file: !1514, line: 44, baseType: !327, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1513, file: !1514, line: 45, baseType: !152, size: 32, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1513, file: !1514, line: 46, baseType: !330, size: 128, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1514, line: 47, baseType: !343, size: 32, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1513, file: !1514, line: 48, baseType: !1521, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !144, line: 629, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1513, file: !1514, line: 49, baseType: !1320, size: 320, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1513, file: !1514, line: 50, baseType: !293, size: 64, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1513, file: !1514, line: 51, baseType: !1526, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1527, line: 29, baseType: !582)
!1527 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1513, file: !1514, line: 52, baseType: !1526, size: 64, offset: 832)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1513, file: !1514, line: 53, baseType: !1526, size: 64, offset: 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1513, file: !1514, line: 54, baseType: !1526, size: 64, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1513, file: !1514, line: 55, baseType: !1526, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1513, file: !1514, line: 56, baseType: !293, size: 64, offset: 1088)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1513, file: !1514, line: 57, baseType: !293, size: 64, offset: 1152)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1513, file: !1514, line: 58, baseType: !293, size: 64, offset: 1216)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1513, file: !1514, line: 59, baseType: !293, size: 64, offset: 1280)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1513, file: !1514, line: 60, baseType: !293, size: 64, offset: 1344)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1513, file: !1514, line: 61, baseType: !319, size: 64, offset: 1408)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1513, file: !1514, line: 62, baseType: !762, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1513, file: !1514, line: 63, baseType: !762, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1494, file: !144, line: 681, baseType: !762, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1494, file: !144, line: 682, baseType: !762, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1494, file: !144, line: 683, baseType: !762, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1494, file: !144, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1494, file: !144, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1494, file: !144, line: 690, baseType: !1546, size: 512, offset: 640)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !139, line: 118, size: 512, elements: !1547)
!1547 = !{!1548, !1554, !1555, !1560, !1612, !1613, !1614, !1615}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1546, file: !139, line: 119, baseType: !1549, size: 256)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1550, line: 9, size: 256, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1549, file: !1550, line: 10, baseType: !768, size: 192, align: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1549, file: !1550, line: 11, baseType: !1526, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1546, file: !139, line: 120, baseType: !1526, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1546, file: !139, line: 121, baseType: !1556, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!138, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1546, file: !139, line: 122, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !139, line: 159, size: 512, align: 512, elements: !1563)
!1563 = !{!1564, !1589, !1590, !1593, !1598, !1599, !1607, !1611}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1562, file: !139, line: 160, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !139, line: 215, size: 4608, align: 512, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1566, file: !139, line: 216, baseType: !598, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1566, file: !139, line: 217, baseType: !7, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1566, file: !139, line: 218, baseType: !7, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1566, file: !139, line: 219, baseType: !7, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1566, file: !139, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1566, file: !139, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1566, file: !139, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1566, file: !139, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1566, file: !139, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1566, file: !139, line: 226, baseType: !7, size: 32, offset: 160)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1566, file: !139, line: 227, baseType: !308, size: 16, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1566, file: !139, line: 228, baseType: !308, size: 16, offset: 208)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1566, file: !139, line: 229, baseType: !7, size: 32, offset: 224)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1566, file: !139, line: 235, baseType: !1526, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1566, file: !139, line: 236, baseType: !1559, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1566, file: !139, line: 237, baseType: !1526, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1566, file: !139, line: 238, baseType: !1559, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1566, file: !139, line: 239, baseType: !1586, size: 4096, align: 512, offset: 512)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 4096, align: 512, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 8)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1562, file: !139, line: 161, baseType: !7, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1562, file: !139, line: 162, baseType: !1591, size: 32, offset: 96)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !284, line: 32, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !444, line: 96, baseType: !152)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1562, file: !139, line: 163, baseType: !1594, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !613, line: 274, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !613, line: 274, size: 32, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1595, file: !613, line: 274, baseType: !612, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1562, file: !139, line: 164, baseType: !1559, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1562, file: !139, line: 165, baseType: !1600, size: 128, offset: 256)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1550, line: 14, size: 128, elements: !1601)
!1601 = !{!1602}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1600, file: !1550, line: 15, baseType: !1603, size: 128)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !769, line: 26, size: 128, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1603, file: !769, line: 27, baseType: !871, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1603, file: !769, line: 28, baseType: !773, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1562, file: !139, line: 166, baseType: !1608, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1526}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1562, file: !139, line: 167, baseType: !1526, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1546, file: !139, line: 123, baseType: !371, size: 8, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1546, file: !139, line: 124, baseType: !371, size: 8, offset: 456)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1546, file: !139, line: 125, baseType: !371, size: 8, offset: 464)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1546, file: !139, line: 126, baseType: !371, size: 8, offset: 472)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1494, file: !144, line: 691, baseType: !570, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1494, file: !144, line: 692, baseType: !727, size: 256, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1494, file: !144, line: 693, baseType: !1619, size: 192, offset: 1472)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1620, line: 41, baseType: !1621)
!1620 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1620, line: 37, size: 192, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1621, file: !1620, line: 38, baseType: !343, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1621, file: !1620, line: 39, baseType: !330, size: 128, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1494, file: !144, line: 694, baseType: !1521, size: 64, offset: 1664)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1494, file: !144, line: 695, baseType: !363, size: 32, offset: 1728)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1494, file: !144, line: 696, baseType: !363, size: 32, offset: 1760)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1494, file: !144, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1494, file: !144, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1494, file: !144, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1494, file: !144, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1494, file: !144, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1494, file: !144, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1494, file: !144, line: 703, baseType: !762, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1494, file: !144, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1494, file: !144, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1494, file: !144, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1494, file: !144, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1494, file: !144, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1494, file: !144, line: 709, baseType: !7, size: 32, offset: 1824)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1494, file: !144, line: 710, baseType: !143, size: 32, offset: 1856)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1494, file: !144, line: 711, baseType: !151, size: 32, offset: 1888)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1494, file: !144, line: 712, baseType: !151, size: 32, offset: 1920)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1494, file: !144, line: 713, baseType: !152, size: 32, offset: 1952)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1494, file: !144, line: 714, baseType: !152, size: 32, offset: 1984)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1494, file: !144, line: 715, baseType: !570, size: 64, offset: 2048)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1494, file: !144, line: 716, baseType: !570, size: 64, offset: 2112)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1494, file: !144, line: 717, baseType: !570, size: 64, offset: 2176)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1494, file: !144, line: 718, baseType: !570, size: 64, offset: 2240)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1494, file: !144, line: 720, baseType: !1651, size: 64, offset: 2304)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !144, line: 632, size: 64, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1652, file: !144, line: 633, baseType: !343, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1652, file: !144, line: 634, baseType: !7, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1494, file: !144, line: 721, baseType: !1657, size: 64, offset: 2368)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !319, !643}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1494, file: !144, line: 722, baseType: !1661, size: 64, offset: 2432)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !144, line: 722, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !320, file: !132, line: 727, baseType: !1664, size: 64, offset: 4224)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !144, line: 742, size: 1792, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1673, !1674, !1675}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1665, file: !144, line: 743, baseType: !1010, size: 1472)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1665, file: !144, line: 744, baseType: !1013, size: 64, offset: 1472)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1665, file: !144, line: 745, baseType: !1670, size: 64, offset: 1536)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !319, !762}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1665, file: !144, line: 746, baseType: !1013, size: 64, offset: 1600)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1665, file: !144, line: 747, baseType: !1004, size: 64, offset: 1664)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1665, file: !144, line: 748, baseType: !1004, size: 64, offset: 1728)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !320, file: !132, line: 736, baseType: !1677, size: 128, offset: 4288)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !132, line: 529, size: 128, elements: !1678)
!1678 = !{!1679, !1683}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1677, file: !132, line: 531, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1682, line: 13, flags: DIFlagFwdDecl)
!1682 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1677, file: !132, line: 532, baseType: !1684, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !132, line: 49, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !320, file: !132, line: 738, baseType: !1687, size: 64, offset: 4416)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !132, line: 738, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !320, file: !132, line: 740, baseType: !1691, size: 64, offset: 4480)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !320, file: !132, line: 741, baseType: !570, size: 64, offset: 4544)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !320, file: !132, line: 746, baseType: !570, size: 64, offset: 4608)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !320, file: !132, line: 747, baseType: !1695, size: 64, offset: 4672)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !132, line: 747, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !320, file: !132, line: 749, baseType: !1699, size: 64, offset: 4736)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !132, line: 428, size: 128, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1700, file: !132, line: 433, baseType: !7, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1700, file: !132, line: 434, baseType: !7, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1700, file: !132, line: 435, baseType: !293, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !320, file: !132, line: 751, baseType: !330, size: 128, offset: 4800)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !320, file: !132, line: 762, baseType: !1707, size: 64, offset: 4928)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !132, line: 762, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !320, file: !132, line: 770, baseType: !1710, offset: 4992)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1711, line: 5, elements: !543)
!1711 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !320, file: !132, line: 772, baseType: !1713, size: 64, offset: 4992)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1715, line: 18, flags: DIFlagFwdDecl)
!1715 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !320, file: !132, line: 773, baseType: !1717, size: 64, offset: 5056)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1042, line: 22, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !320, file: !132, line: 776, baseType: !152, size: 32, offset: 5120)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !320, file: !132, line: 778, baseType: !1721, size: 32, offset: 5152)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !284, line: 21, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !284, line: 18, baseType: !311)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !320, file: !132, line: 779, baseType: !311, size: 32, offset: 5184)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !320, file: !132, line: 781, baseType: !343, size: 32, offset: 5216)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !320, file: !132, line: 782, baseType: !330, size: 128, offset: 5248)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !320, file: !132, line: 784, baseType: !1727, size: 64, offset: 5376)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1730, line: 52, size: 768, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1740, !1744, !1745, !1746, !1747, !1751, !1755}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1729, file: !1730, line: 53, baseType: !327, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1729, file: !1730, line: 55, baseType: !459, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1729, file: !1730, line: 56, baseType: !459, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1729, file: !1730, line: 58, baseType: !993, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1729, file: !1730, line: 59, baseType: !1737, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!410, !996, !1002}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1729, file: !1730, line: 61, baseType: !1741, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1727}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1729, file: !1730, line: 62, baseType: !1004, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1729, file: !1730, line: 64, baseType: !1013, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1729, file: !1730, line: 66, baseType: !802, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1729, file: !1730, line: 67, baseType: !1748, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!309, !996}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1729, file: !1730, line: 69, baseType: !1752, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !996, !837, !844}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1729, file: !1730, line: 71, baseType: !1008, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !320, file: !132, line: 785, baseType: !459, size: 64, offset: 5440)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !320, file: !132, line: 787, baseType: !1004, size: 64, offset: 5504)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !320, file: !132, line: 788, baseType: !1759, size: 64, offset: 5568)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !132, line: 46, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !320, file: !132, line: 789, baseType: !1762, size: 64, offset: 5632)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !132, line: 48, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !320, file: !132, line: 791, baseType: !1765, size: 64, offset: 5696)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !132, line: 597, size: 128, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1766, file: !132, line: 598, baseType: !159, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1766, file: !132, line: 599, baseType: !168, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1766, file: !132, line: 600, baseType: !173, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1766, file: !132, line: 601, baseType: !762, size: 8, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1766, file: !132, line: 602, baseType: !762, size: 8, offset: 104)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !320, file: !132, line: 793, baseType: !178, size: 32, offset: 5760)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !320, file: !132, line: 795, baseType: !762, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !320, file: !132, line: 796, baseType: !762, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !320, file: !132, line: 797, baseType: !762, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !320, file: !132, line: 798, baseType: !762, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !320, file: !132, line: 799, baseType: !762, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "read_string", scope: !301, file: !192, line: 411, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!152, !319, !191, !311, !152, !1403}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !301, file: !192, line: 413, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!152, !319, !191, !311, !152, !291}
!1788 = !DIGlobalVariableExpression(var: !1789, expr: !DIExpression())
!1789 = distinct !DIGlobalVariable(name: "ps_type_attrs", scope: !2, file: !3, line: 117, type: !1790, isLocal: true, isDefinition: true)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1791, size: 1280, elements: !1798)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_type_attr_list", file: !3, line: 106, size: 128, elements: !1793)
!1793 = !{!1794, !1797}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1792, file: !3, line: 107, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "n_attrs", scope: !1792, file: !3, line: 108, baseType: !455, size: 64, offset: 64)
!1798 = !{!1799}
!1799 = !DISubrange(count: 10)
!1800 = !DIGlobalVariableExpression(var: !1801, expr: !DIExpression())
!1801 = distinct !DIGlobalVariable(name: "ps_temp_attrs", scope: !2, file: !3, line: 111, type: !1802, isLocal: true, isDefinition: true)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1796, size: 160, elements: !1803)
!1803 = !{!1804}
!1804 = !DISubrange(count: 5)
!1805 = !DIGlobalVariableExpression(var: !1806, expr: !DIExpression())
!1806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 17, type: !1807, isLocal: true, isDefinition: true)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 40, elements: !1803)
!1808 = !DIGlobalVariableExpression(var: !1809, expr: !DIExpression())
!1809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 18, type: !1810, isLocal: true, isDefinition: true)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 104, elements: !1811)
!1811 = !{!1812}
!1812 = !DISubrange(count: 13)
!1813 = !DIGlobalVariableExpression(var: !1814, expr: !DIExpression())
!1814 = distinct !DIGlobalVariable(name: "ps_temp_label", scope: !2, file: !3, line: 16, type: !1815, isLocal: true, isDefinition: true)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 128, elements: !1210)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!1817 = !DIGlobalVariableExpression(var: !1818, expr: !DIExpression())
!1818 = distinct !DIGlobalVariable(name: "power_supply_hwmon_info", scope: !2, file: !3, line: 296, type: !1819, isLocal: true, isDefinition: true)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1820, size: 256, elements: !645)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1821)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_channel_info", file: !192, line: 423, size: 128, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1823, file: !192, line: 424, baseType: !191, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !1823, file: !192, line: 425, baseType: !1795, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_chip_info", file: !192, line: 441, size: 128, elements: !1829)
!1829 = !{!1830, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1828, file: !192, line: 442, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1828, file: !192, line: 443, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1834 = !{i32 7, !"Dwarf Version", i32 5}
!1835 = !{i32 2, !"Debug Info Version", i32 3}
!1836 = !{i32 1, !"wchar_size", i32 2}
!1837 = !{i32 8, !"cf-protection-branch", i32 1}
!1838 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1839 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1840 = !{i32 1, !"Code Model", i32 2}
!1841 = !{i32 1, !"override-stack-alignment", i32 8}
!1842 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1843 = distinct !DISubprogram(name: "power_supply_add_hwmon_sysfs", scope: !3, file: !3, line: 328, type: !1844, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!152, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply", file: !6, line: 282, size: 8192, elements: !1848)
!1848 = !{!1849, !1890, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1972, !1975, !1978, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1847, file: !6, line: 283, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_desc", file: !6, line: 242, size: 768, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1859, !1860, !1863, !1864, !1873, !1879, !1883, !1887, !1888, !1889}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1852, file: !6, line: 243, baseType: !327, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1852, file: !6, line: 244, baseType: !5, size: 32, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "usb_types", scope: !1852, file: !6, line: 245, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "num_usb_types", scope: !1852, file: !6, line: 246, baseType: !455, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1852, file: !6, line: 247, baseType: !1861, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "num_properties", scope: !1852, file: !6, line: 248, baseType: !455, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "get_property", scope: !1852, file: !6, line: 256, baseType: !1865, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!152, !1846, !34, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "power_supply_propval", file: !6, line: 218, size: 64, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !1869, file: !6, line: 219, baseType: !152, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "strval", scope: !1869, file: !6, line: 220, baseType: !327, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !1852, file: !6, line: 259, baseType: !1874, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!152, !1846, !34, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "property_is_writeable", scope: !1852, file: !6, line: 267, baseType: !1880, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!152, !1846, !34}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "external_power_changed", scope: !1852, file: !6, line: 269, baseType: !1884, size: 64, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1846}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "set_charged", scope: !1852, file: !6, line: 270, baseType: !1884, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "no_thermal", scope: !1852, file: !6, line: 277, baseType: !762, size: 8, offset: 704)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "use_for_apm", scope: !1852, file: !6, line: 279, baseType: !152, size: 32, offset: 736)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_to", scope: !1847, file: !6, line: 285, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplicants", scope: !1847, file: !6, line: 286, baseType: !455, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "supplied_from", scope: !1847, file: !6, line: 288, baseType: !1891, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "num_supplies", scope: !1847, file: !6, line: 289, baseType: !455, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1847, file: !6, line: 290, baseType: !1713, size: 64, offset: 320)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "drv_data", scope: !1847, file: !6, line: 293, baseType: !285, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1847, file: !6, line: 296, baseType: !320, size: 5824, offset: 448)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "changed_work", scope: !1847, file: !6, line: 297, baseType: !727, size: 256, offset: 6272)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_register_work", scope: !1847, file: !6, line: 298, baseType: !1383, size: 704, offset: 6528)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "changed_lock", scope: !1847, file: !6, line: 299, baseType: !343, size: 32, offset: 7232)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1847, file: !6, line: 300, baseType: !762, size: 8, offset: 7264)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1847, file: !6, line: 301, baseType: !762, size: 8, offset: 7272)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "removing", scope: !1847, file: !6, line: 302, baseType: !762, size: 8, offset: 7280)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "use_cnt", scope: !1847, file: !6, line: 303, baseType: !363, size: 32, offset: 7296)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "battery_info", scope: !1847, file: !6, line: 304, baseType: !1906, size: 64, offset: 7360)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_info", file: !6, line: 729, size: 3968, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1953, !1954, !1960, !1961, !1967, !1968, !1969, !1970, !1971}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "technology", scope: !1907, file: !6, line: 730, baseType: !7, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "energy_full_design_uwh", scope: !1907, file: !6, line: 731, baseType: !152, size: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "charge_full_design_uah", scope: !1907, file: !6, line: 732, baseType: !152, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_min_design_uv", scope: !1907, file: !6, line: 733, baseType: !152, size: 32, offset: 96)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_max_design_uv", scope: !1907, file: !6, line: 734, baseType: !152, size: 32, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "tricklecharge_current_ua", scope: !1907, file: !6, line: 735, baseType: !152, size: 32, offset: 160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_current_ua", scope: !1907, file: !6, line: 736, baseType: !152, size: 32, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "precharge_voltage_max_uv", scope: !1907, file: !6, line: 737, baseType: !152, size: 32, offset: 224)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "charge_term_current_ua", scope: !1907, file: !6, line: 738, baseType: !152, size: 32, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "charge_restart_voltage_uv", scope: !1907, file: !6, line: 739, baseType: !152, size: 32, offset: 288)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "overvoltage_limit_uv", scope: !1907, file: !6, line: 740, baseType: !152, size: 32, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_current_max_ua", scope: !1907, file: !6, line: 741, baseType: !152, size: 32, offset: 352)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "constant_charge_voltage_max_uv", scope: !1907, file: !6, line: 742, baseType: !152, size: 32, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "maintenance_charge", scope: !1907, file: !6, line: 743, baseType: !1923, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_maintenance_charge_table", file: !6, line: 434, size: 96, elements: !1925)
!1925 = !{!1926, !1927, !1928}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "charge_current_max_ua", scope: !1924, file: !6, line: 435, baseType: !152, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "charge_voltage_max_uv", scope: !1924, file: !6, line: 436, baseType: !152, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "charge_safety_timer_minutes", scope: !1924, file: !6, line: 437, baseType: !152, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "maintenance_charge_size", scope: !1907, file: !6, line: 744, baseType: !152, size: 32, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "alert_low_temp_charge_current_ua", scope: !1907, file: !6, line: 745, baseType: !152, size: 32, offset: 544)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "alert_low_temp_charge_voltage_uv", scope: !1907, file: !6, line: 746, baseType: !152, size: 32, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "alert_high_temp_charge_current_ua", scope: !1907, file: !6, line: 747, baseType: !152, size: 32, offset: 608)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "alert_high_temp_charge_voltage_uv", scope: !1907, file: !6, line: 748, baseType: !152, size: 32, offset: 640)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "factory_internal_resistance_uohm", scope: !1907, file: !6, line: 749, baseType: !152, size: 32, offset: 672)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "factory_internal_resistance_charging_uohm", scope: !1907, file: !6, line: 750, baseType: !152, size: 32, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_temp", scope: !1907, file: !6, line: 751, baseType: !1937, size: 640, offset: 736)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 640, elements: !1938)
!1938 = !{!1939}
!1939 = !DISubrange(count: 20)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_min", scope: !1907, file: !6, line: 752, baseType: !152, size: 32, offset: 1376)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "temp_ambient_alert_max", scope: !1907, file: !6, line: 753, baseType: !152, size: 32, offset: 1408)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_min", scope: !1907, file: !6, line: 754, baseType: !152, size: 32, offset: 1440)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "temp_alert_max", scope: !1907, file: !6, line: 755, baseType: !152, size: 32, offset: 1472)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "temp_min", scope: !1907, file: !6, line: 756, baseType: !152, size: 32, offset: 1504)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "temp_max", scope: !1907, file: !6, line: 757, baseType: !152, size: 32, offset: 1536)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table", scope: !1907, file: !6, line: 758, baseType: !1947, size: 1280, offset: 1600)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1948, size: 1280, elements: !1938)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_battery_ocv_table", file: !6, line: 343, size: 64, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ocv", scope: !1949, file: !6, line: 344, baseType: !152, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1949, file: !6, line: 345, baseType: !152, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ocv_table_size", scope: !1907, file: !6, line: 759, baseType: !1937, size: 640, offset: 2880)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table", scope: !1907, file: !6, line: 760, baseType: !1955, size: 64, offset: 3520)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_resistance_temp_table", file: !6, line: 348, size: 64, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1956, file: !6, line: 349, baseType: !152, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "resistance", scope: !1956, file: !6, line: 350, baseType: !152, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "resist_table_size", scope: !1907, file: !6, line: 761, baseType: !152, size: 32, offset: 3584)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_discharging", scope: !1907, file: !6, line: 762, baseType: !1962, size: 64, offset: 3648)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_vbat_ri_table", file: !6, line: 353, size: 64, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "vbat_uv", scope: !1963, file: !6, line: 354, baseType: !152, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ri_uohm", scope: !1963, file: !6, line: 355, baseType: !152, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_discharging_size", scope: !1907, file: !6, line: 763, baseType: !152, size: 32, offset: 3712)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_charging", scope: !1907, file: !6, line: 764, baseType: !1962, size: 64, offset: 3776)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "vbat2ri_charging_size", scope: !1907, file: !6, line: 765, baseType: !152, size: 32, offset: 3840)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "bti_resistance_ohm", scope: !1907, file: !6, line: 766, baseType: !152, size: 32, offset: 3872)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "bti_resistance_tolerance", scope: !1907, file: !6, line: 767, baseType: !152, size: 32, offset: 3904)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tzd", scope: !1847, file: !6, line: 306, baseType: !1973, size: 64, offset: 7424)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !6, line: 306, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "tcd", scope: !1847, file: !6, line: 307, baseType: !1976, size: 64, offset: 7488)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !6, line: 307, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "charging_full_trig", scope: !1847, file: !6, line: 311, baseType: !1979, size: 64, offset: 7552)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !185, line: 471, size: 704, elements: !1981)
!1981 = !{!1982, !1983, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1980, file: !185, line: 473, baseType: !327, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1980, file: !185, line: 474, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!152, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !185, line: 99, size: 3264, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1993, !1994, !1995, !1996, !2000, !2004, !2008, !2012, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2049, !2050, !2054, !2055, !2059, !2063}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1988, file: !185, line: 100, baseType: !327, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1988, file: !185, line: 101, baseType: !7, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !1988, file: !185, line: 102, baseType: !7, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !1988, file: !185, line: 103, baseType: !7, size: 32, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !185, line: 104, baseType: !152, size: 32, offset: 160)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !1988, file: !185, line: 120, baseType: !293, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !1988, file: !185, line: 137, baseType: !1997, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1987, !184}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !1988, file: !185, line: 143, baseType: !2001, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!152, !1987, !184}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !1988, file: !185, line: 146, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!184, !1987}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !1988, file: !185, line: 160, baseType: !2009, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!152, !1987, !296, !296}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !1988, file: !185, line: 164, baseType: !2013, size: 64, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!152, !1987, !2016, !311, !152}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !185, line: 713, size: 64, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !2017, file: !185, line: 714, baseType: !311, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !2017, file: !185, line: 715, baseType: !152, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !1988, file: !185, line: 166, baseType: !1984, size: 64, offset: 576)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1988, file: !185, line: 168, baseType: !319, size: 64, offset: 640)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1988, file: !185, line: 169, baseType: !459, size: 64, offset: 704)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1988, file: !185, line: 171, baseType: !330, size: 128, offset: 768)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !1988, file: !185, line: 172, baseType: !327, size: 64, offset: 896)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !1988, file: !185, line: 174, baseType: !293, size: 64, offset: 960)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !1988, file: !185, line: 174, baseType: !293, size: 64, offset: 1024)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !1988, file: !185, line: 175, baseType: !1320, size: 320, offset: 1088)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !1988, file: !185, line: 176, baseType: !152, size: 32, offset: 1408)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !1988, file: !185, line: 177, baseType: !152, size: 32, offset: 1440)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !1988, file: !185, line: 178, baseType: !2032, size: 64, offset: 1472)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1987}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !1988, file: !185, line: 180, baseType: !727, size: 256, offset: 1536)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !1988, file: !185, line: 181, baseType: !152, size: 32, offset: 1792)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_on", scope: !1988, file: !185, line: 182, baseType: !293, size: 64, offset: 1856)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_off", scope: !1988, file: !185, line: 183, baseType: !293, size: 64, offset: 1920)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_lock", scope: !1988, file: !185, line: 187, baseType: !587, size: 320, offset: 1984)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !1988, file: !185, line: 189, baseType: !1979, size: 64, offset: 2304)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "trig_list", scope: !1988, file: !185, line: 190, baseType: !330, size: 128, offset: 2368)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_data", scope: !1988, file: !185, line: 191, baseType: !285, size: 64, offset: 2496)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "activated", scope: !1988, file: !185, line: 193, baseType: !762, size: 8, offset: 2560)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !1988, file: !185, line: 196, baseType: !2045, size: 64, offset: 2624)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_hw_trigger_type", file: !185, line: 95, size: 32, elements: !2047)
!2047 = !{!2048}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !2046, file: !185, line: 96, baseType: !152, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_trigger", scope: !1988, file: !185, line: 199, baseType: !327, size: 64, offset: 2688)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_is_supported", scope: !1988, file: !185, line: 209, baseType: !2051, size: 64, offset: 2752)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!152, !1987, !293}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_set", scope: !1988, file: !185, line: 220, baseType: !2051, size: 64, offset: 2816)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get", scope: !1988, file: !185, line: 232, baseType: !2056, size: 64, offset: 2880)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!152, !1987, !296}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get_device", scope: !1988, file: !185, line: 239, baseType: !2060, size: 64, offset: 2944)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!319, !1987}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !1988, file: !185, line: 248, baseType: !664, size: 256, offset: 3008)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1980, file: !185, line: 475, baseType: !2032, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !1980, file: !185, line: 478, baseType: !184, size: 32, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !1980, file: !185, line: 481, baseType: !2045, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "leddev_list_lock", scope: !1980, file: !185, line: 484, baseType: !343, size: 32, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "led_cdevs", scope: !1980, file: !185, line: 485, baseType: !330, size: 128, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "next_trig", scope: !1980, file: !185, line: 488, baseType: !330, size: 128, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1980, file: !185, line: 490, baseType: !459, size: 64, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "charging_full_trig_name", scope: !1847, file: !6, line: 312, baseType: !410, size: 64, offset: 7616)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "charging_trig", scope: !1847, file: !6, line: 313, baseType: !1979, size: 64, offset: 7680)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "charging_trig_name", scope: !1847, file: !6, line: 314, baseType: !410, size: 64, offset: 7744)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "full_trig", scope: !1847, file: !6, line: 315, baseType: !1979, size: 64, offset: 7808)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "full_trig_name", scope: !1847, file: !6, line: 316, baseType: !410, size: 64, offset: 7872)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "online_trig", scope: !1847, file: !6, line: 317, baseType: !1979, size: 64, offset: 7936)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "online_trig_name", scope: !1847, file: !6, line: 318, baseType: !410, size: 64, offset: 8000)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "charging_blink_full_solid_trig", scope: !1847, file: !6, line: 319, baseType: !1979, size: 64, offset: 8064)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "charging_blink_full_solid_trig_name", scope: !1847, file: !6, line: 320, baseType: !410, size: 64, offset: 8128)
!2080 = !{!2081, !2082, !2083, !2089, !2090, !2091, !2092, !2093, !2094, !2098, !2101}
!2081 = !DILocalVariable(name: "psy", arg: 1, scope: !1843, file: !3, line: 328, type: !1846)
!2082 = !DILocalVariable(name: "desc", scope: !1843, file: !3, line: 330, type: !1850)
!2083 = !DILocalVariable(name: "psyhw", scope: !1843, file: !3, line: 331, type: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_supply_hwmon", file: !3, line: 11, size: 128, elements: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "psy", scope: !2085, file: !3, line: 12, baseType: !1846, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !2085, file: !3, line: 13, baseType: !296, size: 64, offset: 64)
!2089 = !DILocalVariable(name: "dev", scope: !1843, file: !3, line: 332, type: !319)
!2090 = !DILocalVariable(name: "hwmon", scope: !1843, file: !3, line: 333, type: !319)
!2091 = !DILocalVariable(name: "ret", scope: !1843, file: !3, line: 334, type: !152)
!2092 = !DILocalVariable(name: "i", scope: !1843, file: !3, line: 334, type: !152)
!2093 = !DILocalVariable(name: "name", scope: !1843, file: !3, line: 335, type: !327)
!2094 = !DILocalVariable(name: "prop", scope: !2095, file: !3, line: 357, type: !1862)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 356, column: 45)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 356, column: 2)
!2097 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 356, column: 2)
!2098 = !DILocalVariable(name: "new_name", scope: !2099, file: !3, line: 384, type: !410)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 383, column: 25)
!2100 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 383, column: 6)
!2101 = !DILabel(scope: !1843, name: "error", file: !3, line: 404)
!2102 = !DILocation(line: 328, column: 55, scope: !1843)
!2103 = !DILocation(line: 330, column: 2, scope: !1843)
!2104 = !DILocation(line: 330, column: 34, scope: !1843)
!2105 = !DILocation(line: 330, column: 41, scope: !1843)
!2106 = !DILocation(line: 330, column: 46, scope: !1843)
!2107 = !DILocation(line: 331, column: 2, scope: !1843)
!2108 = !DILocation(line: 331, column: 29, scope: !1843)
!2109 = !DILocation(line: 332, column: 2, scope: !1843)
!2110 = !DILocation(line: 332, column: 17, scope: !1843)
!2111 = !DILocation(line: 332, column: 24, scope: !1843)
!2112 = !DILocation(line: 332, column: 29, scope: !1843)
!2113 = !DILocation(line: 333, column: 2, scope: !1843)
!2114 = !DILocation(line: 333, column: 17, scope: !1843)
!2115 = !DILocation(line: 334, column: 2, scope: !1843)
!2116 = !DILocation(line: 334, column: 6, scope: !1843)
!2117 = !DILocation(line: 334, column: 11, scope: !1843)
!2118 = !DILocation(line: 335, column: 2, scope: !1843)
!2119 = !DILocation(line: 335, column: 14, scope: !1843)
!2120 = !DILocation(line: 337, column: 25, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 337, column: 6)
!2122 = !DILocation(line: 337, column: 7, scope: !2121)
!2123 = !DILocation(line: 337, column: 6, scope: !1843)
!2124 = !DILocation(line: 339, column: 3, scope: !2121)
!2125 = !DILocation(line: 341, column: 23, scope: !1843)
!2126 = !DILocation(line: 341, column: 10, scope: !1843)
!2127 = !DILocation(line: 341, column: 8, scope: !1843)
!2128 = !DILocation(line: 342, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 342, column: 6)
!2130 = !DILocation(line: 342, column: 6, scope: !1843)
!2131 = !DILocation(line: 343, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 342, column: 14)
!2133 = !DILocation(line: 344, column: 3, scope: !2132)
!2134 = !DILocation(line: 347, column: 15, scope: !1843)
!2135 = !DILocation(line: 347, column: 2, scope: !1843)
!2136 = !DILocation(line: 347, column: 9, scope: !1843)
!2137 = !DILocation(line: 347, column: 13, scope: !1843)
!2138 = !DILocation(line: 348, column: 36, scope: !1843)
!2139 = !DILocation(line: 348, column: 17, scope: !1843)
!2140 = !DILocation(line: 348, column: 2, scope: !1843)
!2141 = !DILocation(line: 348, column: 9, scope: !1843)
!2142 = !DILocation(line: 348, column: 15, scope: !1843)
!2143 = !DILocation(line: 351, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 351, column: 6)
!2145 = !DILocation(line: 351, column: 14, scope: !2144)
!2146 = !DILocation(line: 351, column: 6, scope: !1843)
!2147 = !DILocation(line: 352, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 351, column: 21)
!2149 = !DILocation(line: 353, column: 3, scope: !2148)
!2150 = !DILocation(line: 356, column: 9, scope: !2097)
!2151 = !DILocation(line: 356, column: 7, scope: !2097)
!2152 = !DILocation(line: 356, column: 14, scope: !2096)
!2153 = !DILocation(line: 356, column: 18, scope: !2096)
!2154 = !DILocation(line: 356, column: 24, scope: !2096)
!2155 = !DILocation(line: 356, column: 16, scope: !2096)
!2156 = !DILocation(line: 356, column: 2, scope: !2097)
!2157 = !DILocation(line: 357, column: 3, scope: !2095)
!2158 = !DILocation(line: 357, column: 36, scope: !2095)
!2159 = !DILocation(line: 357, column: 43, scope: !2095)
!2160 = !DILocation(line: 357, column: 49, scope: !2095)
!2161 = !DILocation(line: 357, column: 60, scope: !2095)
!2162 = !DILocation(line: 359, column: 11, scope: !2095)
!2163 = !DILocation(line: 359, column: 3, scope: !2095)
!2164 = !DILocation(line: 375, column: 12, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 359, column: 17)
!2166 = !DILocation(line: 375, column: 18, scope: !2165)
!2167 = !DILocation(line: 375, column: 25, scope: !2165)
!2168 = !DILocation(line: 375, column: 4, scope: !2165)
!2169 = !DILocation(line: 376, column: 4, scope: !2165)
!2170 = !DILocation(line: 378, column: 4, scope: !2165)
!2171 = !DILocation(line: 380, column: 2, scope: !2096)
!2172 = !DILocation(line: 380, column: 2, scope: !2095)
!2173 = !DILocation(line: 356, column: 41, scope: !2096)
!2174 = !DILocation(line: 356, column: 2, scope: !2096)
!2175 = distinct !{!2175, !2156, !2176, !2177, !2178}
!2176 = !DILocation(line: 380, column: 2, scope: !2097)
!2177 = !{!"llvm.loop.mustprogress"}
!2178 = !{!"llvm.loop.unroll.disable"}
!2179 = !DILocation(line: 382, column: 9, scope: !1843)
!2180 = !DILocation(line: 382, column: 14, scope: !1843)
!2181 = !DILocation(line: 382, column: 20, scope: !1843)
!2182 = !DILocation(line: 382, column: 7, scope: !1843)
!2183 = !DILocation(line: 383, column: 13, scope: !2100)
!2184 = !DILocation(line: 383, column: 6, scope: !2100)
!2185 = !DILocation(line: 383, column: 6, scope: !1843)
!2186 = !DILocation(line: 384, column: 3, scope: !2099)
!2187 = !DILocation(line: 384, column: 9, scope: !2099)
!2188 = !DILocation(line: 386, column: 27, scope: !2099)
!2189 = !DILocation(line: 386, column: 32, scope: !2099)
!2190 = !DILocation(line: 386, column: 14, scope: !2099)
!2191 = !DILocation(line: 386, column: 12, scope: !2099)
!2192 = !DILocation(line: 387, column: 8, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 387, column: 7)
!2194 = !DILocation(line: 387, column: 7, scope: !2099)
!2195 = !DILocation(line: 388, column: 8, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 387, column: 18)
!2197 = !DILocation(line: 389, column: 4, scope: !2196)
!2198 = !DILocation(line: 391, column: 14, scope: !2099)
!2199 = !DILocation(line: 391, column: 3, scope: !2099)
!2200 = !DILocation(line: 392, column: 10, scope: !2099)
!2201 = !DILocation(line: 392, column: 8, scope: !2099)
!2202 = !DILocation(line: 393, column: 2, scope: !2100)
!2203 = !DILocation(line: 393, column: 2, scope: !2099)
!2204 = !DILocation(line: 394, column: 47, scope: !1843)
!2205 = !DILocation(line: 394, column: 52, scope: !1843)
!2206 = !DILocation(line: 395, column: 7, scope: !1843)
!2207 = !DILocation(line: 394, column: 10, scope: !1843)
!2208 = !DILocation(line: 394, column: 8, scope: !1843)
!2209 = !DILocation(line: 398, column: 24, scope: !1843)
!2210 = !DILocation(line: 398, column: 8, scope: !1843)
!2211 = !DILocation(line: 398, column: 6, scope: !1843)
!2212 = !DILocation(line: 399, column: 6, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 399, column: 6)
!2214 = !DILocation(line: 399, column: 6, scope: !1843)
!2215 = !DILocation(line: 400, column: 3, scope: !2213)
!2216 = !DILocation(line: 402, column: 21, scope: !1843)
!2217 = !DILocation(line: 402, column: 2, scope: !1843)
!2218 = !DILocation(line: 403, column: 2, scope: !1843)
!2219 = !DILocation(line: 404, column: 1, scope: !1843)
!2220 = !DILocation(line: 405, column: 23, scope: !1843)
!2221 = !DILocation(line: 405, column: 2, scope: !1843)
!2222 = !DILocation(line: 406, column: 9, scope: !1843)
!2223 = !DILocation(line: 406, column: 2, scope: !1843)
!2224 = !DILocation(line: 407, column: 1, scope: !1843)
!2225 = !DISubprogram(name: "devres_open_group", scope: !132, file: !132, line: 299, type: !2226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!285, !319, !285, !283}
!2228 = distinct !DISubprogram(name: "devm_kzalloc", scope: !132, file: !132, line: 312, type: !2229, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!285, !319, !455, !283}
!2231 = !{!2232, !2233, !2234}
!2232 = !DILocalVariable(name: "dev", arg: 1, scope: !2228, file: !132, line: 312, type: !319)
!2233 = !DILocalVariable(name: "size", arg: 2, scope: !2228, file: !132, line: 312, type: !455)
!2234 = !DILocalVariable(name: "gfp", arg: 3, scope: !2228, file: !132, line: 312, type: !283)
!2235 = !DILocation(line: 312, column: 49, scope: !2228)
!2236 = !DILocation(line: 312, column: 61, scope: !2228)
!2237 = !DILocation(line: 312, column: 73, scope: !2228)
!2238 = !DILocation(line: 314, column: 22, scope: !2228)
!2239 = !DILocation(line: 314, column: 27, scope: !2228)
!2240 = !DILocation(line: 314, column: 33, scope: !2228)
!2241 = !DILocation(line: 314, column: 37, scope: !2228)
!2242 = !DILocation(line: 314, column: 9, scope: !2228)
!2243 = !DILocation(line: 314, column: 2, scope: !2228)
!2244 = !DISubprogram(name: "devm_bitmap_zalloc", scope: !2245, file: !2245, line: 135, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2245 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!296, !319, !7, !283}
!2248 = distinct !DISubprogram(name: "set_bit", scope: !2249, file: !2249, line: 26, type: !2250, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2249 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !291, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !293)
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "nr", arg: 1, scope: !2248, file: !2249, line: 26, type: !291)
!2256 = !DILocalVariable(name: "addr", arg: 2, scope: !2248, file: !2249, line: 26, type: !2252)
!2257 = !DILocation(line: 26, column: 42, scope: !2248)
!2258 = !DILocation(line: 26, column: 70, scope: !2248)
!2259 = !DILocation(line: 28, column: 26, scope: !2248)
!2260 = !DILocation(line: 28, column: 33, scope: !2248)
!2261 = !DILocation(line: 28, column: 31, scope: !2248)
!2262 = !DILocation(line: 28, column: 2, scope: !2248)
!2263 = !DILocation(line: 29, column: 15, scope: !2248)
!2264 = !DILocation(line: 29, column: 19, scope: !2248)
!2265 = !DILocation(line: 29, column: 2, scope: !2248)
!2266 = !DILocation(line: 30, column: 1, scope: !2248)
!2267 = !DISubprogram(name: "strchr", scope: !2268, file: !2268, line: 100, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2268 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!410, !327, !152}
!2271 = !DISubprogram(name: "devm_kstrdup", scope: !132, file: !132, line: 343, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!410, !319, !327, !283}
!2274 = !DISubprogram(name: "strreplace", scope: !2268, file: !2268, line: 212, type: !2275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!410, !410, !288, !288}
!2277 = !DISubprogram(name: "devm_hwmon_device_register_with_info", scope: !192, file: !192, line: 470, type: !2278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!319, !319, !327, !285, !2280, !459}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!2281 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !2282, file: !2282, line: 105, type: !2283, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2282 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!152, !309}
!2285 = !{!2286}
!2286 = !DILocalVariable(name: "ptr", arg: 1, scope: !2281, file: !2282, line: 105, type: !309)
!2287 = !DILocation(line: 105, column: 68, scope: !2281)
!2288 = !DILocation(line: 107, column: 13, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2281, file: !2282, line: 107, column: 6)
!2290 = !DILocation(line: 107, column: 6, scope: !2289)
!2291 = !DILocation(line: 107, column: 6, scope: !2281)
!2292 = !DILocation(line: 108, column: 18, scope: !2289)
!2293 = !DILocation(line: 108, column: 10, scope: !2289)
!2294 = !DILocation(line: 108, column: 3, scope: !2289)
!2295 = !DILocation(line: 110, column: 3, scope: !2289)
!2296 = !DILocation(line: 111, column: 1, scope: !2281)
!2297 = !DISubprogram(name: "devres_close_group", scope: !132, file: !132, line: 300, type: !2298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !319, !285}
!2300 = !DISubprogram(name: "devres_release_group", scope: !132, file: !132, line: 302, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!152, !319, !285}
!2303 = distinct !DISubprogram(name: "power_supply_remove_hwmon_sysfs", scope: !3, file: !3, line: 409, type: !1885, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2304 = !{!2305}
!2305 = !DILocalVariable(name: "psy", arg: 1, scope: !2303, file: !3, line: 409, type: !1846)
!2306 = !DILocation(line: 409, column: 59, scope: !2303)
!2307 = !DILocation(line: 411, column: 24, scope: !2303)
!2308 = !DILocation(line: 411, column: 29, scope: !2303)
!2309 = !DILocation(line: 411, column: 2, scope: !2303)
!2310 = !DILocation(line: 412, column: 1, scope: !2303)
!2311 = !DISubprogram(name: "devm_kmalloc", scope: !132, file: !132, line: 305, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2313, file: !2313, line: 80, type: !2314, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2313 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !2316, !455}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2318)
!2318 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "v", arg: 1, scope: !2312, file: !2313, line: 80, type: !2316)
!2321 = !DILocalVariable(name: "size", arg: 2, scope: !2312, file: !2313, line: 80, type: !455)
!2322 = !DILocation(line: 80, column: 74, scope: !2312)
!2323 = !DILocation(line: 80, column: 84, scope: !2312)
!2324 = !DILocation(line: 82, column: 20, scope: !2312)
!2325 = !DILocation(line: 82, column: 23, scope: !2312)
!2326 = !DILocation(line: 82, column: 2, scope: !2312)
!2327 = !DILocation(line: 83, column: 2, scope: !2312)
!2328 = !DILocation(line: 84, column: 1, scope: !2312)
!2329 = distinct !DISubprogram(name: "arch_set_bit", scope: !2330, file: !2330, line: 52, type: !2250, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2330 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "nr", arg: 1, scope: !2329, file: !2330, line: 52, type: !291)
!2333 = !DILocalVariable(name: "addr", arg: 2, scope: !2329, file: !2330, line: 52, type: !2252)
!2334 = !DILocation(line: 52, column: 19, scope: !2329)
!2335 = !DILocation(line: 52, column: 47, scope: !2329)
!2336 = !DILocation(line: 54, column: 27, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2329, file: !2330, line: 54, column: 6)
!2338 = !DILocation(line: 54, column: 6, scope: !2337)
!2339 = !DILocation(line: 54, column: 6, scope: !2329)
!2340 = !DILocation(line: 56, column: 6, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !2330, line: 54, column: 32)
!2342 = !DILocation(line: 57, column: 12, scope: !2341)
!2343 = !DILocation(line: 55, column: 3, scope: !2341)
!2344 = !{i64 2147773396, i64 2147773435, i64 2147773456, i64 2147773493, i64 2147773516, i64 2147773386}
!2345 = !DILocation(line: 59, column: 2, scope: !2341)
!2346 = !DILocation(line: 61, column: 8, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2337, file: !2330, line: 59, column: 9)
!2348 = !DILocation(line: 61, column: 32, scope: !2347)
!2349 = !DILocation(line: 60, column: 3, scope: !2347)
!2350 = !{i64 2147773681, i64 2147773720, i64 2147773741, i64 2147773778, i64 2147773801, i64 2147773671}
!2351 = !DILocation(line: 63, column: 1, scope: !2329)
!2352 = distinct !DISubprogram(name: "kasan_check_write", scope: !2353, file: !2353, line: 44, type: !2354, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2353 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!762, !2316, !7}
!2356 = !{!2357, !2358}
!2357 = !DILocalVariable(name: "p", arg: 1, scope: !2352, file: !2353, line: 44, type: !2316)
!2358 = !DILocalVariable(name: "size", arg: 2, scope: !2352, file: !2353, line: 44, type: !7)
!2359 = !DILocation(line: 44, column: 59, scope: !2352)
!2360 = !DILocation(line: 44, column: 75, scope: !2352)
!2361 = !DILocation(line: 46, column: 2, scope: !2352)
!2362 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2363, file: !2363, line: 229, type: !2364, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2366)
!2363 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2316, !455, !152}
!2366 = !{!2367, !2368, !2369}
!2367 = !DILocalVariable(name: "ptr", arg: 1, scope: !2362, file: !2363, line: 229, type: !2316)
!2368 = !DILocalVariable(name: "size", arg: 2, scope: !2362, file: !2363, line: 229, type: !455)
!2369 = !DILocalVariable(name: "type", arg: 3, scope: !2362, file: !2363, line: 230, type: !152)
!2370 = !DILocation(line: 229, column: 60, scope: !2362)
!2371 = !DILocation(line: 229, column: 72, scope: !2362)
!2372 = !DILocation(line: 230, column: 15, scope: !2362)
!2373 = !DILocation(line: 230, column: 23, scope: !2362)
!2374 = distinct !DISubprogram(name: "power_supply_hwmon_is_visible", scope: !3, file: !3, line: 158, type: !305, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2383}
!2376 = !DILocalVariable(name: "data", arg: 1, scope: !2374, file: !3, line: 158, type: !309)
!2377 = !DILocalVariable(name: "type", arg: 2, scope: !2374, file: !3, line: 159, type: !191)
!2378 = !DILocalVariable(name: "attr", arg: 3, scope: !2374, file: !3, line: 160, type: !311)
!2379 = !DILocalVariable(name: "channel", arg: 4, scope: !2374, file: !3, line: 160, type: !152)
!2380 = !DILocalVariable(name: "psyhw", scope: !2374, file: !3, line: 162, type: !2381)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2383 = !DILocalVariable(name: "prop", scope: !2374, file: !3, line: 163, type: !152)
!2384 = !DILocation(line: 158, column: 58, scope: !2374)
!2385 = !DILocation(line: 159, column: 35, scope: !2374)
!2386 = !DILocation(line: 160, column: 15, scope: !2374)
!2387 = !DILocation(line: 160, column: 25, scope: !2374)
!2388 = !DILocation(line: 162, column: 2, scope: !2374)
!2389 = !DILocation(line: 162, column: 35, scope: !2374)
!2390 = !DILocation(line: 162, column: 43, scope: !2374)
!2391 = !DILocation(line: 163, column: 2, scope: !2374)
!2392 = !DILocation(line: 163, column: 6, scope: !2374)
!2393 = !DILocation(line: 165, column: 36, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 165, column: 6)
!2395 = !DILocation(line: 165, column: 42, scope: !2394)
!2396 = !DILocation(line: 165, column: 6, scope: !2394)
!2397 = !DILocation(line: 165, column: 6, scope: !2374)
!2398 = !DILocation(line: 166, column: 36, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 166, column: 7)
!2400 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 165, column: 49)
!2401 = !DILocation(line: 166, column: 43, scope: !2399)
!2402 = !DILocation(line: 166, column: 49, scope: !2399)
!2403 = !DILocation(line: 166, column: 7, scope: !2399)
!2404 = !DILocation(line: 166, column: 7, scope: !2400)
!2405 = !DILocation(line: 167, column: 4, scope: !2399)
!2406 = !DILocation(line: 169, column: 4, scope: !2399)
!2407 = !DILocation(line: 172, column: 40, scope: !2374)
!2408 = !DILocation(line: 172, column: 46, scope: !2374)
!2409 = !DILocation(line: 172, column: 52, scope: !2374)
!2410 = !DILocation(line: 172, column: 9, scope: !2374)
!2411 = !DILocation(line: 172, column: 7, scope: !2374)
!2412 = !DILocation(line: 173, column: 6, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 173, column: 6)
!2414 = !DILocation(line: 173, column: 11, scope: !2413)
!2415 = !DILocation(line: 173, column: 15, scope: !2413)
!2416 = !DILocation(line: 173, column: 19, scope: !2413)
!2417 = !DILocation(line: 173, column: 6, scope: !2374)
!2418 = !DILocation(line: 174, column: 3, scope: !2413)
!2419 = !DILocation(line: 176, column: 41, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 176, column: 6)
!2421 = !DILocation(line: 176, column: 48, scope: !2420)
!2422 = !DILocation(line: 176, column: 53, scope: !2420)
!2423 = !DILocation(line: 176, column: 6, scope: !2420)
!2424 = !DILocation(line: 176, column: 59, scope: !2420)
!2425 = !DILocation(line: 176, column: 63, scope: !2420)
!2426 = !DILocation(line: 177, column: 37, scope: !2420)
!2427 = !DILocation(line: 177, column: 43, scope: !2420)
!2428 = !DILocation(line: 177, column: 6, scope: !2420)
!2429 = !DILocation(line: 176, column: 6, scope: !2374)
!2430 = !DILocation(line: 178, column: 3, scope: !2420)
!2431 = !DILocation(line: 180, column: 2, scope: !2374)
!2432 = !DILocation(line: 181, column: 1, scope: !2374)
!2433 = distinct !DISubprogram(name: "power_supply_hwmon_read", scope: !3, file: !3, line: 206, type: !317, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2448}
!2435 = !DILocalVariable(name: "dev", arg: 1, scope: !2433, file: !3, line: 206, type: !319)
!2436 = !DILocalVariable(name: "type", arg: 2, scope: !2433, file: !3, line: 206, type: !191)
!2437 = !DILocalVariable(name: "attr", arg: 3, scope: !2433, file: !3, line: 207, type: !311)
!2438 = !DILocalVariable(name: "channel", arg: 4, scope: !2433, file: !3, line: 207, type: !152)
!2439 = !DILocalVariable(name: "val", arg: 5, scope: !2433, file: !3, line: 207, type: !1779)
!2440 = !DILocalVariable(name: "psyhw", scope: !2433, file: !3, line: 209, type: !2084)
!2441 = !DILocalVariable(name: "psy", scope: !2433, file: !3, line: 210, type: !1846)
!2442 = !DILocalVariable(name: "pspval", scope: !2433, file: !3, line: 211, type: !1869)
!2443 = !DILocalVariable(name: "ret", scope: !2433, file: !3, line: 212, type: !152)
!2444 = !DILocalVariable(name: "prop", scope: !2433, file: !3, line: 212, type: !152)
!2445 = !DILocalVariable(name: "__x", scope: !2446, file: !3, line: 230, type: !152)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 230, column: 19)
!2447 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 222, column: 16)
!2448 = !DILocalVariable(name: "__d", scope: !2446, file: !3, line: 230, type: !152)
!2449 = !DILocation(line: 206, column: 40, scope: !2433)
!2450 = !DILocation(line: 206, column: 69, scope: !2433)
!2451 = !DILocation(line: 207, column: 8, scope: !2433)
!2452 = !DILocation(line: 207, column: 18, scope: !2433)
!2453 = !DILocation(line: 207, column: 33, scope: !2433)
!2454 = !DILocation(line: 209, column: 2, scope: !2433)
!2455 = !DILocation(line: 209, column: 29, scope: !2433)
!2456 = !DILocation(line: 209, column: 53, scope: !2433)
!2457 = !DILocation(line: 209, column: 37, scope: !2433)
!2458 = !DILocation(line: 210, column: 2, scope: !2433)
!2459 = !DILocation(line: 210, column: 23, scope: !2433)
!2460 = !DILocation(line: 210, column: 29, scope: !2433)
!2461 = !DILocation(line: 210, column: 36, scope: !2433)
!2462 = !DILocation(line: 211, column: 2, scope: !2433)
!2463 = !DILocation(line: 211, column: 29, scope: !2433)
!2464 = !DILocation(line: 212, column: 2, scope: !2433)
!2465 = !DILocation(line: 212, column: 6, scope: !2433)
!2466 = !DILocation(line: 212, column: 11, scope: !2433)
!2467 = !DILocation(line: 214, column: 40, scope: !2433)
!2468 = !DILocation(line: 214, column: 46, scope: !2433)
!2469 = !DILocation(line: 214, column: 52, scope: !2433)
!2470 = !DILocation(line: 214, column: 9, scope: !2433)
!2471 = !DILocation(line: 214, column: 7, scope: !2433)
!2472 = !DILocation(line: 215, column: 6, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 215, column: 6)
!2474 = !DILocation(line: 215, column: 11, scope: !2473)
!2475 = !DILocation(line: 215, column: 6, scope: !2433)
!2476 = !DILocation(line: 216, column: 10, scope: !2473)
!2477 = !DILocation(line: 216, column: 3, scope: !2473)
!2478 = !DILocation(line: 218, column: 35, scope: !2433)
!2479 = !DILocation(line: 218, column: 40, scope: !2433)
!2480 = !DILocation(line: 218, column: 9, scope: !2433)
!2481 = !DILocation(line: 218, column: 7, scope: !2433)
!2482 = !DILocation(line: 219, column: 6, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 219, column: 6)
!2484 = !DILocation(line: 219, column: 6, scope: !2433)
!2485 = !DILocation(line: 220, column: 10, scope: !2483)
!2486 = !DILocation(line: 220, column: 3, scope: !2483)
!2487 = !DILocation(line: 222, column: 10, scope: !2433)
!2488 = !DILocation(line: 222, column: 2, scope: !2433)
!2489 = !DILocation(line: 230, column: 19, scope: !2446)
!2490 = !DILocation(line: 230, column: 19, scope: !2447)
!2491 = !DILocation(line: 230, column: 17, scope: !2447)
!2492 = !DILocation(line: 231, column: 3, scope: !2447)
!2493 = !DILocation(line: 236, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 236, column: 7)
!2495 = !DILocation(line: 236, column: 7, scope: !2447)
!2496 = !DILocation(line: 238, column: 4, scope: !2494)
!2497 = !DILocation(line: 239, column: 3, scope: !2447)
!2498 = !DILocation(line: 241, column: 3, scope: !2447)
!2499 = !DILocation(line: 244, column: 16, scope: !2433)
!2500 = !DILocation(line: 244, column: 9, scope: !2433)
!2501 = !DILocation(line: 244, column: 3, scope: !2433)
!2502 = !DILocation(line: 244, column: 7, scope: !2433)
!2503 = !DILocation(line: 246, column: 2, scope: !2433)
!2504 = !DILocation(line: 247, column: 1, scope: !2433)
!2505 = distinct !DISubprogram(name: "power_supply_hwmon_read_string", scope: !3, file: !3, line: 183, type: !1782, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511}
!2507 = !DILocalVariable(name: "dev", arg: 1, scope: !2505, file: !3, line: 183, type: !319)
!2508 = !DILocalVariable(name: "type", arg: 2, scope: !2505, file: !3, line: 184, type: !191)
!2509 = !DILocalVariable(name: "attr", arg: 3, scope: !2505, file: !3, line: 185, type: !311)
!2510 = !DILocalVariable(name: "channel", arg: 4, scope: !2505, file: !3, line: 185, type: !152)
!2511 = !DILocalVariable(name: "str", arg: 5, scope: !2505, file: !3, line: 186, type: !1403)
!2512 = !DILocation(line: 183, column: 58, scope: !2505)
!2513 = !DILocation(line: 184, column: 32, scope: !2505)
!2514 = !DILocation(line: 185, column: 12, scope: !2505)
!2515 = !DILocation(line: 185, column: 22, scope: !2505)
!2516 = !DILocation(line: 186, column: 21, scope: !2505)
!2517 = !DILocation(line: 188, column: 10, scope: !2505)
!2518 = !DILocation(line: 188, column: 2, scope: !2505)
!2519 = !DILocation(line: 190, column: 24, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 188, column: 16)
!2521 = !DILocation(line: 190, column: 10, scope: !2520)
!2522 = !DILocation(line: 190, column: 4, scope: !2520)
!2523 = !DILocation(line: 190, column: 8, scope: !2520)
!2524 = !DILocation(line: 191, column: 3, scope: !2520)
!2525 = !DILocation(line: 199, column: 3, scope: !2520)
!2526 = !DILocation(line: 202, column: 2, scope: !2505)
!2527 = distinct !DISubprogram(name: "power_supply_hwmon_write", scope: !3, file: !3, line: 250, type: !1786, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2541}
!2529 = !DILocalVariable(name: "dev", arg: 1, scope: !2527, file: !3, line: 250, type: !319)
!2530 = !DILocalVariable(name: "type", arg: 2, scope: !2527, file: !3, line: 250, type: !191)
!2531 = !DILocalVariable(name: "attr", arg: 3, scope: !2527, file: !3, line: 251, type: !311)
!2532 = !DILocalVariable(name: "channel", arg: 4, scope: !2527, file: !3, line: 251, type: !152)
!2533 = !DILocalVariable(name: "val", arg: 5, scope: !2527, file: !3, line: 251, type: !291)
!2534 = !DILocalVariable(name: "psyhw", scope: !2527, file: !3, line: 253, type: !2084)
!2535 = !DILocalVariable(name: "psy", scope: !2527, file: !3, line: 254, type: !1846)
!2536 = !DILocalVariable(name: "pspval", scope: !2527, file: !3, line: 255, type: !1869)
!2537 = !DILocalVariable(name: "prop", scope: !2527, file: !3, line: 256, type: !152)
!2538 = !DILocalVariable(name: "__x", scope: !2539, file: !3, line: 280, type: !152)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 280, column: 19)
!2540 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 264, column: 16)
!2541 = !DILocalVariable(name: "__d", scope: !2539, file: !3, line: 280, type: !152)
!2542 = !DILocation(line: 250, column: 41, scope: !2527)
!2543 = !DILocation(line: 250, column: 70, scope: !2527)
!2544 = !DILocation(line: 251, column: 9, scope: !2527)
!2545 = !DILocation(line: 251, column: 19, scope: !2527)
!2546 = !DILocation(line: 251, column: 33, scope: !2527)
!2547 = !DILocation(line: 253, column: 2, scope: !2527)
!2548 = !DILocation(line: 253, column: 29, scope: !2527)
!2549 = !DILocation(line: 253, column: 53, scope: !2527)
!2550 = !DILocation(line: 253, column: 37, scope: !2527)
!2551 = !DILocation(line: 254, column: 2, scope: !2527)
!2552 = !DILocation(line: 254, column: 23, scope: !2527)
!2553 = !DILocation(line: 254, column: 29, scope: !2527)
!2554 = !DILocation(line: 254, column: 36, scope: !2527)
!2555 = !DILocation(line: 255, column: 2, scope: !2527)
!2556 = !DILocation(line: 255, column: 29, scope: !2527)
!2557 = !DILocation(line: 256, column: 2, scope: !2527)
!2558 = !DILocation(line: 256, column: 6, scope: !2527)
!2559 = !DILocation(line: 258, column: 40, scope: !2527)
!2560 = !DILocation(line: 258, column: 46, scope: !2527)
!2561 = !DILocation(line: 258, column: 52, scope: !2527)
!2562 = !DILocation(line: 258, column: 9, scope: !2527)
!2563 = !DILocation(line: 258, column: 7, scope: !2527)
!2564 = !DILocation(line: 259, column: 6, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 259, column: 6)
!2566 = !DILocation(line: 259, column: 11, scope: !2565)
!2567 = !DILocation(line: 259, column: 6, scope: !2527)
!2568 = !DILocation(line: 260, column: 10, scope: !2565)
!2569 = !DILocation(line: 260, column: 3, scope: !2565)
!2570 = !DILocation(line: 262, column: 18, scope: !2527)
!2571 = !DILocation(line: 262, column: 16, scope: !2527)
!2572 = !DILocation(line: 264, column: 10, scope: !2527)
!2573 = !DILocation(line: 264, column: 2, scope: !2527)
!2574 = !DILocation(line: 272, column: 7, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 272, column: 7)
!2576 = !DILocation(line: 272, column: 7, scope: !2540)
!2577 = !DILocation(line: 274, column: 4, scope: !2575)
!2578 = !DILocation(line: 275, column: 3, scope: !2540)
!2579 = !DILocation(line: 280, column: 19, scope: !2539)
!2580 = !DILocation(line: 280, column: 19, scope: !2540)
!2581 = !DILocation(line: 280, column: 17, scope: !2540)
!2582 = !DILocation(line: 281, column: 3, scope: !2540)
!2583 = !DILocation(line: 283, column: 3, scope: !2540)
!2584 = !DILocation(line: 286, column: 35, scope: !2527)
!2585 = !DILocation(line: 286, column: 40, scope: !2527)
!2586 = !DILocation(line: 286, column: 9, scope: !2527)
!2587 = !DILocation(line: 286, column: 2, scope: !2527)
!2588 = !DILocation(line: 287, column: 1, scope: !2527)
!2589 = distinct !DISubprogram(name: "power_supply_hwmon_is_a_label", scope: !3, file: !3, line: 100, type: !2590, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!762, !191, !311}
!2592 = !{!2593, !2594}
!2593 = !DILocalVariable(name: "type", arg: 1, scope: !2589, file: !3, line: 100, type: !191)
!2594 = !DILocalVariable(name: "attr", arg: 2, scope: !2589, file: !3, line: 101, type: !311)
!2595 = !DILocation(line: 100, column: 67, scope: !2589)
!2596 = !DILocation(line: 101, column: 13, scope: !2589)
!2597 = !DILocation(line: 103, column: 9, scope: !2589)
!2598 = !DILocation(line: 103, column: 14, scope: !2589)
!2599 = !DILocation(line: 103, column: 28, scope: !2589)
!2600 = !DILocation(line: 103, column: 31, scope: !2589)
!2601 = !DILocation(line: 103, column: 36, scope: !2589)
!2602 = !DILocation(line: 0, scope: !2589)
!2603 = !DILocation(line: 103, column: 2, scope: !2589)
!2604 = distinct !DISubprogram(name: "power_supply_hwmon_has_input", scope: !3, file: !3, line: 121, type: !2605, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!762, !2381, !191, !152}
!2607 = !{!2608, !2609, !2610, !2611, !2613, !2614}
!2608 = !DILocalVariable(name: "psyhw", arg: 1, scope: !2604, file: !3, line: 122, type: !2381)
!2609 = !DILocalVariable(name: "type", arg: 2, scope: !2604, file: !3, line: 123, type: !191)
!2610 = !DILocalVariable(name: "channel", arg: 3, scope: !2604, file: !3, line: 123, type: !152)
!2611 = !DILocalVariable(name: "attr_list", scope: !2604, file: !3, line: 125, type: !2612)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!2613 = !DILocalVariable(name: "i", scope: !2604, file: !3, line: 126, type: !455)
!2614 = !DILocalVariable(name: "prop", scope: !2615, file: !3, line: 129, type: !152)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 128, column: 43)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 128, column: 2)
!2617 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 128, column: 2)
!2618 = !DILocation(line: 122, column: 35, scope: !2604)
!2619 = !DILocation(line: 123, column: 26, scope: !2604)
!2620 = !DILocation(line: 123, column: 36, scope: !2604)
!2621 = !DILocation(line: 125, column: 2, scope: !2604)
!2622 = !DILocation(line: 125, column: 37, scope: !2604)
!2623 = !DILocation(line: 125, column: 64, scope: !2604)
!2624 = !DILocation(line: 125, column: 50, scope: !2604)
!2625 = !DILocation(line: 126, column: 2, scope: !2604)
!2626 = !DILocation(line: 126, column: 9, scope: !2604)
!2627 = !DILocation(line: 128, column: 9, scope: !2617)
!2628 = !DILocation(line: 128, column: 7, scope: !2617)
!2629 = !DILocation(line: 128, column: 14, scope: !2616)
!2630 = !DILocation(line: 128, column: 18, scope: !2616)
!2631 = !DILocation(line: 128, column: 29, scope: !2616)
!2632 = !DILocation(line: 128, column: 16, scope: !2616)
!2633 = !DILocation(line: 128, column: 2, scope: !2617)
!2634 = !DILocation(line: 129, column: 3, scope: !2615)
!2635 = !DILocation(line: 129, column: 7, scope: !2615)
!2636 = !DILocation(line: 129, column: 45, scope: !2615)
!2637 = !DILocation(line: 130, column: 4, scope: !2615)
!2638 = !DILocation(line: 130, column: 15, scope: !2615)
!2639 = !DILocation(line: 130, column: 21, scope: !2615)
!2640 = !DILocation(line: 130, column: 25, scope: !2615)
!2641 = !DILocation(line: 129, column: 14, scope: !2615)
!2642 = !DILocation(line: 132, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 132, column: 7)
!2644 = !DILocation(line: 132, column: 12, scope: !2643)
!2645 = !DILocation(line: 132, column: 17, scope: !2643)
!2646 = !DILocation(line: 132, column: 20, scope: !2643)
!2647 = !DILocation(line: 132, column: 7, scope: !2615)
!2648 = !DILocation(line: 133, column: 4, scope: !2643)
!2649 = !DILocation(line: 134, column: 2, scope: !2616)
!2650 = !DILocation(line: 134, column: 2, scope: !2615)
!2651 = !DILocation(line: 128, column: 38, scope: !2616)
!2652 = !DILocation(line: 128, column: 2, scope: !2616)
!2653 = distinct !{!2653, !2633, !2654, !2177, !2178}
!2654 = !DILocation(line: 134, column: 2, scope: !2617)
!2655 = !DILocation(line: 136, column: 2, scope: !2604)
!2656 = !DILocation(line: 137, column: 1, scope: !2604)
!2657 = distinct !DISubprogram(name: "power_supply_hwmon_to_property", scope: !3, file: !3, line: 85, type: !2658, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!152, !191, !311, !152}
!2660 = !{!2661, !2662, !2663}
!2661 = !DILocalVariable(name: "type", arg: 1, scope: !2657, file: !3, line: 85, type: !191)
!2662 = !DILocalVariable(name: "attr", arg: 2, scope: !2657, file: !3, line: 86, type: !311)
!2663 = !DILocalVariable(name: "channel", arg: 3, scope: !2657, file: !3, line: 86, type: !152)
!2664 = !DILocation(line: 85, column: 56, scope: !2657)
!2665 = !DILocation(line: 86, column: 15, scope: !2657)
!2666 = !DILocation(line: 86, column: 25, scope: !2657)
!2667 = !DILocation(line: 88, column: 10, scope: !2657)
!2668 = !DILocation(line: 88, column: 2, scope: !2657)
!2669 = !DILocation(line: 90, column: 44, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 88, column: 16)
!2671 = !DILocation(line: 90, column: 10, scope: !2670)
!2672 = !DILocation(line: 90, column: 3, scope: !2670)
!2673 = !DILocation(line: 92, column: 46, scope: !2670)
!2674 = !DILocation(line: 92, column: 10, scope: !2670)
!2675 = !DILocation(line: 92, column: 3, scope: !2670)
!2676 = !DILocation(line: 94, column: 46, scope: !2670)
!2677 = !DILocation(line: 94, column: 52, scope: !2670)
!2678 = !DILocation(line: 94, column: 10, scope: !2670)
!2679 = !DILocation(line: 94, column: 3, scope: !2670)
!2680 = !DILocation(line: 96, column: 3, scope: !2670)
!2681 = !DILocation(line: 98, column: 1, scope: !2657)
!2682 = distinct !DISubprogram(name: "const_test_bit", scope: !2683, file: !2683, line: 166, type: !2684, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2683 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!762, !293, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2253)
!2688 = !{!2689, !2690, !2691, !2692, !2693}
!2689 = !DILocalVariable(name: "nr", arg: 1, scope: !2682, file: !2683, line: 166, type: !293)
!2690 = !DILocalVariable(name: "addr", arg: 2, scope: !2682, file: !2683, line: 166, type: !2686)
!2691 = !DILocalVariable(name: "p", scope: !2682, file: !2683, line: 168, type: !294)
!2692 = !DILocalVariable(name: "mask", scope: !2682, file: !2683, line: 169, type: !293)
!2693 = !DILocalVariable(name: "val", scope: !2682, file: !2683, line: 170, type: !293)
!2694 = !DILocation(line: 166, column: 30, scope: !2682)
!2695 = !DILocation(line: 166, column: 64, scope: !2682)
!2696 = !DILocation(line: 168, column: 2, scope: !2682)
!2697 = !DILocation(line: 168, column: 23, scope: !2682)
!2698 = !DILocation(line: 168, column: 50, scope: !2682)
!2699 = !DILocation(line: 168, column: 57, scope: !2682)
!2700 = !DILocation(line: 168, column: 55, scope: !2682)
!2701 = !DILocation(line: 169, column: 2, scope: !2682)
!2702 = !DILocation(line: 169, column: 16, scope: !2682)
!2703 = !DILocation(line: 169, column: 23, scope: !2682)
!2704 = !DILocation(line: 170, column: 2, scope: !2682)
!2705 = !DILocation(line: 170, column: 16, scope: !2682)
!2706 = !DILocation(line: 170, column: 23, scope: !2682)
!2707 = !DILocation(line: 170, column: 22, scope: !2682)
!2708 = !DILocation(line: 172, column: 12, scope: !2682)
!2709 = !DILocation(line: 172, column: 18, scope: !2682)
!2710 = !DILocation(line: 172, column: 16, scope: !2682)
!2711 = !DILocation(line: 172, column: 10, scope: !2682)
!2712 = !DILocation(line: 172, column: 9, scope: !2682)
!2713 = !DILocation(line: 173, column: 1, scope: !2682)
!2714 = !DILocation(line: 172, column: 2, scope: !2682)
!2715 = distinct !DISubprogram(name: "_test_bit", scope: !2716, file: !2716, line: 139, type: !2684, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2717)
!2716 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2717 = !{!2718, !2719}
!2718 = !DILocalVariable(name: "nr", arg: 1, scope: !2715, file: !2716, line: 139, type: !293)
!2719 = !DILocalVariable(name: "addr", arg: 2, scope: !2715, file: !2716, line: 139, type: !2686)
!2720 = !DILocation(line: 139, column: 25, scope: !2715)
!2721 = !DILocation(line: 139, column: 59, scope: !2715)
!2722 = !DILocation(line: 141, column: 25, scope: !2715)
!2723 = !DILocation(line: 141, column: 32, scope: !2715)
!2724 = !DILocation(line: 141, column: 30, scope: !2715)
!2725 = !DILocation(line: 141, column: 2, scope: !2715)
!2726 = !DILocation(line: 142, column: 23, scope: !2715)
!2727 = !DILocation(line: 142, column: 27, scope: !2715)
!2728 = !DILocation(line: 142, column: 9, scope: !2715)
!2729 = !DILocation(line: 142, column: 2, scope: !2715)
!2730 = !DISubprogram(name: "power_supply_property_is_writeable", scope: !6, file: !6, line: 872, type: !1881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2731 = distinct !DISubprogram(name: "power_supply_hwmon_is_writable", scope: !3, file: !3, line: 139, type: !2590, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2732)
!2732 = !{!2733, !2734}
!2733 = !DILocalVariable(name: "type", arg: 1, scope: !2731, file: !3, line: 139, type: !191)
!2734 = !DILocalVariable(name: "attr", arg: 2, scope: !2731, file: !3, line: 140, type: !311)
!2735 = !DILocation(line: 139, column: 68, scope: !2731)
!2736 = !DILocation(line: 140, column: 13, scope: !2731)
!2737 = !DILocation(line: 142, column: 10, scope: !2731)
!2738 = !DILocation(line: 142, column: 2, scope: !2731)
!2739 = !DILocation(line: 144, column: 10, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 142, column: 16)
!2741 = !DILocation(line: 144, column: 15, scope: !2740)
!2742 = !DILocation(line: 144, column: 31, scope: !2740)
!2743 = !DILocation(line: 145, column: 10, scope: !2740)
!2744 = !DILocation(line: 145, column: 15, scope: !2740)
!2745 = !DILocation(line: 144, column: 3, scope: !2740)
!2746 = !DILocation(line: 147, column: 10, scope: !2740)
!2747 = !DILocation(line: 147, column: 15, scope: !2740)
!2748 = !DILocation(line: 147, column: 3, scope: !2740)
!2749 = !DILocation(line: 149, column: 10, scope: !2740)
!2750 = !DILocation(line: 149, column: 15, scope: !2740)
!2751 = !DILocation(line: 149, column: 33, scope: !2740)
!2752 = !DILocation(line: 150, column: 10, scope: !2740)
!2753 = !DILocation(line: 150, column: 15, scope: !2740)
!2754 = !DILocation(line: 150, column: 33, scope: !2740)
!2755 = !DILocation(line: 151, column: 10, scope: !2740)
!2756 = !DILocation(line: 151, column: 15, scope: !2740)
!2757 = !DILocation(line: 151, column: 39, scope: !2740)
!2758 = !DILocation(line: 152, column: 10, scope: !2740)
!2759 = !DILocation(line: 152, column: 15, scope: !2740)
!2760 = !DILocation(line: 149, column: 3, scope: !2740)
!2761 = !DILocation(line: 154, column: 3, scope: !2740)
!2762 = !DILocation(line: 156, column: 1, scope: !2731)
!2763 = distinct !DISubprogram(name: "power_supply_hwmon_in_to_property", scope: !3, file: !3, line: 21, type: !2764, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!152, !311}
!2766 = !{!2767}
!2767 = !DILocalVariable(name: "attr", arg: 1, scope: !2763, file: !3, line: 21, type: !311)
!2768 = !DILocation(line: 21, column: 50, scope: !2763)
!2769 = !DILocation(line: 23, column: 10, scope: !2763)
!2770 = !DILocation(line: 23, column: 2, scope: !2763)
!2771 = !DILocation(line: 25, column: 3, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 23, column: 16)
!2773 = !DILocation(line: 27, column: 3, scope: !2772)
!2774 = !DILocation(line: 29, column: 3, scope: !2772)
!2775 = !DILocation(line: 31, column: 3, scope: !2772)
!2776 = !DILocation(line: 33, column: 3, scope: !2772)
!2777 = !DILocation(line: 35, column: 1, scope: !2763)
!2778 = distinct !DISubprogram(name: "power_supply_hwmon_curr_to_property", scope: !3, file: !3, line: 37, type: !2764, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2779)
!2779 = !{!2780}
!2780 = !DILocalVariable(name: "attr", arg: 1, scope: !2778, file: !3, line: 37, type: !311)
!2781 = !DILocation(line: 37, column: 52, scope: !2778)
!2782 = !DILocation(line: 39, column: 10, scope: !2778)
!2783 = !DILocation(line: 39, column: 2, scope: !2778)
!2784 = !DILocation(line: 41, column: 3, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 39, column: 16)
!2786 = !DILocation(line: 43, column: 3, scope: !2785)
!2787 = !DILocation(line: 45, column: 3, scope: !2785)
!2788 = !DILocation(line: 47, column: 3, scope: !2785)
!2789 = !DILocation(line: 49, column: 1, scope: !2778)
!2790 = distinct !DISubprogram(name: "power_supply_hwmon_temp_to_property", scope: !3, file: !3, line: 51, type: !2791, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!152, !311, !152}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "attr", arg: 1, scope: !2790, file: !3, line: 51, type: !311)
!2795 = !DILocalVariable(name: "channel", arg: 2, scope: !2790, file: !3, line: 51, type: !152)
!2796 = !DILocation(line: 51, column: 52, scope: !2790)
!2797 = !DILocation(line: 51, column: 62, scope: !2790)
!2798 = !DILocation(line: 53, column: 6, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 53, column: 6)
!2800 = !DILocation(line: 53, column: 6, scope: !2790)
!2801 = !DILocation(line: 54, column: 11, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 53, column: 15)
!2803 = !DILocation(line: 54, column: 3, scope: !2802)
!2804 = !DILocation(line: 56, column: 4, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 54, column: 17)
!2806 = !DILocation(line: 58, column: 4, scope: !2805)
!2807 = !DILocation(line: 60, column: 4, scope: !2805)
!2808 = !DILocation(line: 62, column: 4, scope: !2805)
!2809 = !DILocation(line: 64, column: 2, scope: !2802)
!2810 = !DILocation(line: 65, column: 11, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 64, column: 9)
!2812 = !DILocation(line: 65, column: 3, scope: !2811)
!2813 = !DILocation(line: 67, column: 4, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 65, column: 17)
!2815 = !DILocation(line: 69, column: 4, scope: !2814)
!2816 = !DILocation(line: 71, column: 4, scope: !2814)
!2817 = !DILocation(line: 73, column: 4, scope: !2814)
!2818 = !DILocation(line: 75, column: 4, scope: !2814)
!2819 = !DILocation(line: 77, column: 4, scope: !2814)
!2820 = !DILocation(line: 81, column: 2, scope: !2790)
!2821 = !DILocation(line: 82, column: 1, scope: !2790)
!2822 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2313, file: !2313, line: 66, type: !2314, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2823 = !{!2824, !2825}
!2824 = !DILocalVariable(name: "v", arg: 1, scope: !2822, file: !2313, line: 66, type: !2316)
!2825 = !DILocalVariable(name: "size", arg: 2, scope: !2822, file: !2313, line: 66, type: !455)
!2826 = !DILocation(line: 66, column: 73, scope: !2822)
!2827 = !DILocation(line: 66, column: 83, scope: !2822)
!2828 = !DILocation(line: 68, column: 19, scope: !2822)
!2829 = !DILocation(line: 68, column: 22, scope: !2822)
!2830 = !DILocation(line: 68, column: 2, scope: !2822)
!2831 = !DILocation(line: 69, column: 2, scope: !2822)
!2832 = !DILocation(line: 70, column: 1, scope: !2822)
!2833 = distinct !DISubprogram(name: "arch_test_bit", scope: !2330, file: !2330, line: 237, type: !2684, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2834)
!2834 = !{!2835, !2836}
!2835 = !DILocalVariable(name: "nr", arg: 1, scope: !2833, file: !2330, line: 237, type: !293)
!2836 = !DILocalVariable(name: "addr", arg: 2, scope: !2833, file: !2330, line: 237, type: !2686)
!2837 = !DILocation(line: 237, column: 29, scope: !2833)
!2838 = !DILocation(line: 237, column: 63, scope: !2833)
!2839 = !DILocation(line: 239, column: 30, scope: !2833)
!2840 = !DILocation(line: 239, column: 9, scope: !2833)
!2841 = !DILocation(line: 239, column: 54, scope: !2833)
!2842 = !DILocation(line: 239, column: 58, scope: !2833)
!2843 = !DILocation(line: 239, column: 36, scope: !2833)
!2844 = !DILocation(line: 240, column: 26, scope: !2833)
!2845 = !DILocation(line: 240, column: 30, scope: !2833)
!2846 = !DILocation(line: 240, column: 8, scope: !2833)
!2847 = !DILocation(line: 239, column: 2, scope: !2833)
!2848 = distinct !DISubprogram(name: "kasan_check_read", scope: !2353, file: !2353, line: 40, type: !2354, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2849)
!2849 = !{!2850, !2851}
!2850 = !DILocalVariable(name: "p", arg: 1, scope: !2848, file: !2353, line: 40, type: !2316)
!2851 = !DILocalVariable(name: "size", arg: 2, scope: !2848, file: !2353, line: 40, type: !7)
!2852 = !DILocation(line: 40, column: 58, scope: !2848)
!2853 = !DILocation(line: 40, column: 74, scope: !2848)
!2854 = !DILocation(line: 42, column: 2, scope: !2848)
!2855 = distinct !DISubprogram(name: "constant_test_bit", scope: !2330, file: !2330, line: 204, type: !2856, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!762, !291, !2686}
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "nr", arg: 1, scope: !2855, file: !2330, line: 204, type: !291)
!2860 = !DILocalVariable(name: "addr", arg: 2, scope: !2855, file: !2330, line: 204, type: !2686)
!2861 = !DILocation(line: 204, column: 52, scope: !2855)
!2862 = !DILocation(line: 204, column: 86, scope: !2855)
!2863 = !DILocation(line: 206, column: 19, scope: !2855)
!2864 = !DILocation(line: 206, column: 22, scope: !2855)
!2865 = !DILocation(line: 206, column: 15, scope: !2855)
!2866 = !DILocation(line: 207, column: 4, scope: !2855)
!2867 = !DILocation(line: 207, column: 9, scope: !2855)
!2868 = !DILocation(line: 207, column: 12, scope: !2855)
!2869 = !DILocation(line: 206, column: 44, scope: !2855)
!2870 = !DILocation(line: 207, column: 37, scope: !2855)
!2871 = !DILocation(line: 206, column: 2, scope: !2855)
!2872 = distinct !DISubprogram(name: "variable_test_bit", scope: !2330, file: !2330, line: 224, type: !2856, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2873)
!2873 = !{!2874, !2875, !2876}
!2874 = !DILocalVariable(name: "nr", arg: 1, scope: !2872, file: !2330, line: 224, type: !291)
!2875 = !DILocalVariable(name: "addr", arg: 2, scope: !2872, file: !2330, line: 224, type: !2686)
!2876 = !DILocalVariable(name: "oldbit", scope: !2872, file: !2330, line: 226, type: !762)
!2877 = !DILocation(line: 224, column: 52, scope: !2872)
!2878 = !DILocation(line: 224, column: 86, scope: !2872)
!2879 = !DILocation(line: 226, column: 2, scope: !2872)
!2880 = !DILocation(line: 226, column: 7, scope: !2872)
!2881 = !DILocation(line: 231, column: 33, scope: !2872)
!2882 = !DILocation(line: 231, column: 46, scope: !2872)
!2883 = !DILocation(line: 228, column: 2, scope: !2872)
!2884 = !{i64 2147787080, i64 2147787154}
!2885 = !DILocation(line: 233, column: 9, scope: !2872)
!2886 = !{i8 0, i8 2}
!2887 = !DILocation(line: 234, column: 1, scope: !2872)
!2888 = !DILocation(line: 233, column: 2, scope: !2872)
!2889 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !132, file: !132, line: 916, type: !2890, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!285, !996}
!2892 = !{!2893}
!2893 = !DILocalVariable(name: "dev", arg: 1, scope: !2889, file: !132, line: 916, type: !996)
!2894 = !DILocation(line: 916, column: 58, scope: !2889)
!2895 = !DILocation(line: 918, column: 9, scope: !2889)
!2896 = !DILocation(line: 918, column: 14, scope: !2889)
!2897 = !DILocation(line: 918, column: 2, scope: !2889)
!2898 = !DISubprogram(name: "power_supply_get_property", scope: !6, file: !6, line: 859, type: !1866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2899 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2900, file: !2900, line: 51, type: !2901, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2903)
!2900 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!762, !762}
!2903 = !{!2904}
!2904 = !DILocalVariable(name: "overflow", arg: 1, scope: !2899, file: !2900, line: 51, type: !762)
!2905 = !DILocation(line: 51, column: 60, scope: !2899)
!2906 = !DILocation(line: 53, column: 9, scope: !2899)
!2907 = !DILocation(line: 53, column: 2, scope: !2899)
!2908 = !DISubprogram(name: "power_supply_set_property", scope: !6, file: !6, line: 863, type: !1875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2909 = distinct !DISubprogram(name: "IS_ERR", scope: !2282, file: !2282, line: 59, type: !2910, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!762, !309}
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "ptr", arg: 1, scope: !2909, file: !2282, line: 59, type: !309)
!2914 = !DILocation(line: 59, column: 60, scope: !2909)
!2915 = !DILocation(line: 61, column: 9, scope: !2909)
!2916 = !DILocation(line: 61, column: 2, scope: !2909)
!2917 = distinct !DISubprogram(name: "PTR_ERR", scope: !2282, file: !2282, line: 49, type: !2918, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!291, !309}
!2920 = !{!2921}
!2921 = !DILocalVariable(name: "ptr", arg: 1, scope: !2917, file: !2282, line: 49, type: !309)
!2922 = !DILocation(line: 49, column: 61, scope: !2917)
!2923 = !DILocation(line: 51, column: 16, scope: !2917)
!2924 = !DILocation(line: 51, column: 9, scope: !2917)
!2925 = !DILocation(line: 51, column: 2, scope: !2917)
