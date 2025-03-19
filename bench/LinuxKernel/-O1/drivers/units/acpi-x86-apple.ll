; ModuleID = 'drivers/acpi/x86/apple.c'
source_filename = "drivers/acpi/x86/apple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
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
%struct.anon.6 = type { i32, i32, ptr }
%struct.anon.7 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i64, i32 }
%struct.anon.5 = type { i32, i32, ptr }
%struct.anon.4 = type { i32, i64 }

@x86_apple_machine = external dso_local global i8, align 1
@apple_prp_guid = internal constant %struct.guid_t { [16 x i8] c"\C6\B7\B5\A0\18\13\1CD\B0\C9\FEi^\AF\94\9B" }, align 1, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !119
@.str.1 = private unnamed_addr constant [54 x i8] c"[Firmware Info]: unsupported properties version %*ph\0A\00", align 1, !dbg !125
@.str.2 = private unnamed_addr constant [52 x i8] c"[Firmware Info]: skipped %u properties: wrong type\0A\00", align 1, !dbg !130
@.str.3 = private unnamed_addr constant [25 x i8] c"drivers/acpi/x86/apple.c\00", align 1, !dbg !135
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !140

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_extract_apple_properties(ptr noundef %adev) #0 align 16 !dbg !165 {
entry:
  %adev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %newsize = alloca i32, align 4
  %numprops = alloca i32, align 4
  %numvalid = alloca i32, align 4
  %props = alloca ptr, align 8
  %newprops = alloca ptr, align 8
  %valid = alloca ptr, align 8
  %free_space = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %key = alloca ptr, align 8
  %val = alloca ptr, align 8
  %key106 = alloca ptr, align 8
  %val111 = alloca ptr, align 8
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2007, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2008, metadata !DIExpression()), !dbg !2037
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2009, metadata !DIExpression()), !dbg !2038
  store i32 0, ptr %j, align 4, !dbg !2038
  call void @llvm.lifetime.start.p0(i64 4, ptr %newsize) #14, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %newsize, metadata !2010, metadata !DIExpression()), !dbg !2039
  store i32 0, ptr %newsize, align 4, !dbg !2039
  call void @llvm.lifetime.start.p0(i64 4, ptr %numprops) #14, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %numprops, metadata !2011, metadata !DIExpression()), !dbg !2040
  call void @llvm.lifetime.start.p0(i64 4, ptr %numvalid) #14, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %numvalid, metadata !2012, metadata !DIExpression()), !dbg !2041
  call void @llvm.lifetime.start.p0(i64 8, ptr %props) #14, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %props, metadata !2013, metadata !DIExpression()), !dbg !2043
  call void @llvm.lifetime.start.p0(i64 8, ptr %newprops) #14, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %newprops, metadata !2014, metadata !DIExpression()), !dbg !2044
  call void @llvm.lifetime.start.p0(i64 8, ptr %valid) #14, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %valid, metadata !2015, metadata !DIExpression()), !dbg !2046
  store ptr null, ptr %valid, align 8, !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr %free_space) #14, !dbg !2047
  call void @llvm.dbg.declare(metadata ptr %free_space, metadata !2016, metadata !DIExpression()), !dbg !2048
  %0 = load i8, ptr @x86_apple_machine, align 1, !dbg !2049, !range !2051, !noundef !435
  %tobool = trunc i8 %0 to i1, !dbg !2049
  br i1 %tobool, label %if.end, label %if.then, !dbg !2052

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227, !dbg !2053

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2054
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !2055
  %2 = load ptr, ptr %handle, align 8, !dbg !2055
  %call = call ptr @acpi_evaluate_dsm_typed(ptr noundef %2, ptr noundef @apple_prp_guid, i64 noundef 1, i64 noundef 0, ptr noundef null, i32 noundef 3) #15, !dbg !2056
  store ptr %call, ptr %props, align 8, !dbg !2057
  %3 = load ptr, ptr %props, align 8, !dbg !2058
  %tobool1 = icmp ne ptr %3, null, !dbg !2058
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2060

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227, !dbg !2061

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %props, align 8, !dbg !2062
  %length = getelementptr inbounds %struct.anon.6, ptr %4, i32 0, i32 1, !dbg !2064
  %5 = load i32, ptr %length, align 4, !dbg !2064
  %tobool4 = icmp ne i32 %5, 0, !dbg !2062
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2065

if.then5:                                         ; preds = %if.end3
  br label %out_free, !dbg !2066

if.end6:                                          ; preds = %if.end3
  %6 = load ptr, ptr %props, align 8, !dbg !2067
  %pointer = getelementptr inbounds %struct.anon.6, ptr %6, i32 0, i32 2, !dbg !2069
  %7 = load ptr, ptr %pointer, align 8, !dbg !2069
  %arrayidx = getelementptr i8, ptr %7, i64 0, !dbg !2067
  %8 = load i8, ptr %arrayidx, align 1, !dbg !2067
  %conv = zext i8 %8 to i32, !dbg !2067
  %cmp = icmp ne i32 %conv, 3, !dbg !2070
  br i1 %cmp, label %if.then8, label %if.end12, !dbg !2071

if.then8:                                         ; preds = %if.end6
  %9 = load ptr, ptr %adev.addr, align 8, !dbg !2072
  %handle9 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 2, !dbg !2072
  %10 = load ptr, ptr %handle9, align 8, !dbg !2072
  %11 = load ptr, ptr %props, align 8, !dbg !2072
  %length10 = getelementptr inbounds %struct.anon.6, ptr %11, i32 0, i32 1, !dbg !2072
  %12 = load i32, ptr %length10, align 4, !dbg !2072
  %13 = load ptr, ptr %props, align 8, !dbg !2072
  %pointer11 = getelementptr inbounds %struct.anon.6, ptr %13, i32 0, i32 2, !dbg !2072
  %14 = load ptr, ptr %pointer11, align 8, !dbg !2072
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %10, ptr noundef @.str.1, i32 noundef %12, ptr noundef %14) #15, !dbg !2072
  br label %out_free, !dbg !2074

if.end12:                                         ; preds = %if.end6
  %15 = load ptr, ptr %props, align 8, !dbg !2075
  call void @acpi_os_free(ptr noundef %15) #15, !dbg !2075
  %16 = load ptr, ptr %adev.addr, align 8, !dbg !2076
  %handle13 = getelementptr inbounds %struct.acpi_device, ptr %16, i32 0, i32 2, !dbg !2077
  %17 = load ptr, ptr %handle13, align 8, !dbg !2077
  %call14 = call ptr @acpi_evaluate_dsm_typed(ptr noundef %17, ptr noundef @apple_prp_guid, i64 noundef 1, i64 noundef 1, ptr noundef null, i32 noundef 4) #15, !dbg !2078
  store ptr %call14, ptr %props, align 8, !dbg !2079
  %18 = load ptr, ptr %props, align 8, !dbg !2080
  %tobool15 = icmp ne ptr %18, null, !dbg !2080
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2082

if.then16:                                        ; preds = %if.end12
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227, !dbg !2083

if.end17:                                         ; preds = %if.end12
  %19 = load ptr, ptr %props, align 8, !dbg !2084
  %count = getelementptr inbounds %struct.anon.7, ptr %19, i32 0, i32 1, !dbg !2085
  %20 = load i32, ptr %count, align 4, !dbg !2085
  %div = udiv i32 %20, 2, !dbg !2086
  store i32 %div, ptr %numprops, align 4, !dbg !2087
  %21 = load i32, ptr %numprops, align 4, !dbg !2088
  %tobool18 = icmp ne i32 %21, 0, !dbg !2088
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !2090

if.then19:                                        ; preds = %if.end17
  br label %out_free, !dbg !2091

if.end20:                                         ; preds = %if.end17
  %22 = load i32, ptr %numprops, align 4, !dbg !2092
  %call21 = call ptr @bitmap_zalloc(i32 noundef %22, i32 noundef 3264) #15, !dbg !2093
  store ptr %call21, ptr %valid, align 8, !dbg !2094
  %23 = load ptr, ptr %valid, align 8, !dbg !2095
  %tobool22 = icmp ne ptr %23, null, !dbg !2095
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2097

if.then23:                                        ; preds = %if.end20
  br label %out_free, !dbg !2098

if.end24:                                         ; preds = %if.end20
  store i32 0, ptr %i, align 4, !dbg !2099
  br label %for.cond, !dbg !2100

for.cond:                                         ; preds = %for.inc, %if.end24
  %24 = load i32, ptr %i, align 4, !dbg !2101
  %25 = load i32, ptr %numprops, align 4, !dbg !2102
  %cmp25 = icmp ult i32 %24, %25, !dbg !2103
  br i1 %cmp25, label %for.body, label %for.end, !dbg !2104

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #14, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2017, metadata !DIExpression()), !dbg !2106
  %26 = load ptr, ptr %props, align 8, !dbg !2107
  %elements = getelementptr inbounds %struct.anon.7, ptr %26, i32 0, i32 2, !dbg !2108
  %27 = load ptr, ptr %elements, align 8, !dbg !2108
  %28 = load i32, ptr %i, align 4, !dbg !2109
  %mul = mul i32 %28, 2, !dbg !2110
  %idxprom = zext i32 %mul to i64, !dbg !2107
  %arrayidx27 = getelementptr %union.acpi_object, ptr %27, i64 %idxprom, !dbg !2107
  store ptr %arrayidx27, ptr %key, align 8, !dbg !2106
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2021, metadata !DIExpression()), !dbg !2112
  %29 = load ptr, ptr %props, align 8, !dbg !2113
  %elements28 = getelementptr inbounds %struct.anon.7, ptr %29, i32 0, i32 2, !dbg !2114
  %30 = load ptr, ptr %elements28, align 8, !dbg !2114
  %31 = load i32, ptr %i, align 4, !dbg !2115
  %mul29 = mul i32 %31, 2, !dbg !2116
  %add = add i32 %mul29, 1, !dbg !2117
  %idxprom30 = zext i32 %add to i64, !dbg !2113
  %arrayidx31 = getelementptr %union.acpi_object, ptr %30, i64 %idxprom30, !dbg !2113
  store ptr %arrayidx31, ptr %val, align 8, !dbg !2112
  %32 = load ptr, ptr %key, align 8, !dbg !2118
  %33 = load i32, ptr %32, align 8, !dbg !2120
  %cmp32 = icmp ne i32 %33, 2, !dbg !2121
  br i1 %cmp32, label %if.then41, label %lor.lhs.false, !dbg !2122

lor.lhs.false:                                    ; preds = %for.body
  %34 = load ptr, ptr %val, align 8, !dbg !2123
  %35 = load i32, ptr %34, align 8, !dbg !2124
  %cmp34 = icmp ne i32 %35, 1, !dbg !2125
  br i1 %cmp34, label %land.lhs.true, label %if.end42, !dbg !2126

land.lhs.true:                                    ; preds = %lor.lhs.false
  %36 = load ptr, ptr %val, align 8, !dbg !2127
  %37 = load i32, ptr %36, align 8, !dbg !2128
  %cmp36 = icmp ne i32 %37, 3, !dbg !2129
  br i1 %cmp36, label %land.lhs.true38, label %if.end42, !dbg !2130

land.lhs.true38:                                  ; preds = %land.lhs.true
  %38 = load ptr, ptr %val, align 8, !dbg !2131
  %39 = load i32, ptr %38, align 8, !dbg !2132
  %cmp39 = icmp ne i32 %39, 2, !dbg !2133
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !2134

if.then41:                                        ; preds = %land.lhs.true38, %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2135

if.end42:                                         ; preds = %land.lhs.true38, %land.lhs.true, %lor.lhs.false
  %40 = load i32, ptr %i, align 4, !dbg !2136
  %41 = call i1 @llvm.is.constant.i32(i32 %40), !dbg !2136
  br i1 %41, label %land.lhs.true43, label %cond.false, !dbg !2136

land.lhs.true43:                                  ; preds = %if.end42
  %42 = load ptr, ptr %valid, align 8, !dbg !2136
  %43 = ptrtoint ptr %42 to i64, !dbg !2136
  %cmp44 = icmp ne i64 %43, 0, !dbg !2136
  %conv45 = zext i1 %cmp44 to i32, !dbg !2136
  %44 = call i1 @llvm.is.constant.i32(i32 %conv45), !dbg !2136
  br i1 %44, label %land.lhs.true46, label %cond.false, !dbg !2136

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %45 = load ptr, ptr %valid, align 8, !dbg !2136
  %46 = ptrtoint ptr %45 to i64, !dbg !2136
  %cmp47 = icmp ne i64 %46, 0, !dbg !2136
  br i1 %cmp47, label %land.lhs.true49, label %cond.false, !dbg !2136

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %47 = load ptr, ptr %valid, align 8, !dbg !2136
  %48 = load i64, ptr %47, align 8, !dbg !2136
  %49 = call i1 @llvm.is.constant.i64(i64 %48), !dbg !2136
  br i1 %49, label %cond.true, label %cond.false, !dbg !2136

cond.true:                                        ; preds = %land.lhs.true49
  %50 = load i32, ptr %i, align 4, !dbg !2136
  %conv50 = zext i32 %50 to i64, !dbg !2136
  %51 = load ptr, ptr %valid, align 8, !dbg !2136
  call void @generic___set_bit(i64 noundef %conv50, ptr noundef %51) #15, !dbg !2136
  br label %cond.end, !dbg !2136

cond.false:                                       ; preds = %land.lhs.true49, %land.lhs.true46, %land.lhs.true43, %if.end42
  %52 = load i32, ptr %i, align 4, !dbg !2136
  %conv51 = zext i32 %52 to i64, !dbg !2136
  %53 = load ptr, ptr %valid, align 8, !dbg !2136
  call void @___set_bit(i64 noundef %conv51, ptr noundef %53) #15, !dbg !2136
  br label %cond.end, !dbg !2136

cond.end:                                         ; preds = %cond.false, %cond.true
  %54 = load ptr, ptr %key, align 8, !dbg !2137
  %length52 = getelementptr inbounds %struct.anon.5, ptr %54, i32 0, i32 1, !dbg !2138
  %55 = load i32, ptr %length52, align 4, !dbg !2138
  %add53 = add i32 %55, 1, !dbg !2139
  %56 = load i32, ptr %newsize, align 4, !dbg !2140
  %add54 = add i32 %56, %add53, !dbg !2140
  store i32 %add54, ptr %newsize, align 4, !dbg !2140
  %57 = load ptr, ptr %val, align 8, !dbg !2141
  %58 = load i32, ptr %57, align 8, !dbg !2143
  %cmp55 = icmp eq i32 %58, 3, !dbg !2144
  br i1 %cmp55, label %if.then57, label %if.else, !dbg !2145

if.then57:                                        ; preds = %cond.end
  %59 = load ptr, ptr %val, align 8, !dbg !2146
  %length58 = getelementptr inbounds %struct.anon.6, ptr %59, i32 0, i32 1, !dbg !2147
  %60 = load i32, ptr %length58, align 4, !dbg !2147
  %61 = load i32, ptr %newsize, align 4, !dbg !2148
  %add59 = add i32 %61, %60, !dbg !2148
  store i32 %add59, ptr %newsize, align 4, !dbg !2148
  br label %if.end67, !dbg !2149

if.else:                                          ; preds = %cond.end
  %62 = load ptr, ptr %val, align 8, !dbg !2150
  %63 = load i32, ptr %62, align 8, !dbg !2152
  %cmp60 = icmp eq i32 %63, 2, !dbg !2153
  br i1 %cmp60, label %if.then62, label %if.end66, !dbg !2154

if.then62:                                        ; preds = %if.else
  %64 = load ptr, ptr %val, align 8, !dbg !2155
  %length63 = getelementptr inbounds %struct.anon.5, ptr %64, i32 0, i32 1, !dbg !2156
  %65 = load i32, ptr %length63, align 4, !dbg !2156
  %add64 = add i32 %65, 1, !dbg !2157
  %66 = load i32, ptr %newsize, align 4, !dbg !2158
  %add65 = add i32 %66, %add64, !dbg !2158
  store i32 %add65, ptr %newsize, align 4, !dbg !2158
  br label %if.end66, !dbg !2159

if.end66:                                         ; preds = %if.then62, %if.else
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then57
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2160
  br label %cleanup, !dbg !2160

cleanup:                                          ; preds = %if.end67, %if.then41
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !2160
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #14, !dbg !2160
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2161

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %67 = load i32, ptr %i, align 4, !dbg !2162
  %inc = add i32 %67, 1, !dbg !2162
  store i32 %inc, ptr %i, align 4, !dbg !2162
  br label %for.cond, !dbg !2163, !llvm.loop !2164

for.end:                                          ; preds = %for.cond
  %68 = load ptr, ptr %valid, align 8, !dbg !2168
  %69 = load i32, ptr %numprops, align 4, !dbg !2169
  %call69 = call i32 @bitmap_weight(ptr noundef %68, i32 noundef %69) #15, !dbg !2170
  store i32 %call69, ptr %numvalid, align 4, !dbg !2171
  %70 = load i32, ptr %numprops, align 4, !dbg !2172
  %71 = load i32, ptr %numvalid, align 4, !dbg !2174
  %cmp70 = icmp ugt i32 %70, %71, !dbg !2175
  br i1 %cmp70, label %if.then72, label %if.end74, !dbg !2176

if.then72:                                        ; preds = %for.end
  %72 = load ptr, ptr %adev.addr, align 8, !dbg !2177
  %handle73 = getelementptr inbounds %struct.acpi_device, ptr %72, i32 0, i32 2, !dbg !2177
  %73 = load ptr, ptr %handle73, align 8, !dbg !2177
  %74 = load i32, ptr %numprops, align 4, !dbg !2177
  %75 = load i32, ptr %numvalid, align 4, !dbg !2177
  %sub = sub i32 %74, %75, !dbg !2177
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %73, ptr noundef @.str.2, i32 noundef %sub) #15, !dbg !2177
  br label %if.end74, !dbg !2177

if.end74:                                         ; preds = %if.then72, %for.end
  %76 = load i32, ptr %numvalid, align 4, !dbg !2178
  %cmp75 = icmp eq i32 %76, 0, !dbg !2180
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !2181

if.then77:                                        ; preds = %if.end74
  br label %out_free, !dbg !2182

if.end78:                                         ; preds = %if.end74
  %77 = load i32, ptr %numvalid, align 4, !dbg !2183
  %mul79 = mul i32 3, %77, !dbg !2184
  %add80 = add i32 1, %mul79, !dbg !2185
  %conv81 = zext i32 %add80 to i64, !dbg !2186
  %mul82 = mul i64 %conv81, 24, !dbg !2187
  %78 = load i32, ptr %newsize, align 4, !dbg !2188
  %conv83 = zext i32 %78 to i64, !dbg !2188
  %add84 = add i64 %conv83, %mul82, !dbg !2188
  %conv85 = trunc i64 %add84 to i32, !dbg !2188
  store i32 %conv85, ptr %newsize, align 4, !dbg !2188
  %79 = load i32, ptr %newsize, align 4, !dbg !2189
  %conv86 = zext i32 %79 to i64, !dbg !2189
  %call87 = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv86) #15, !dbg !2189
  store ptr %call87, ptr %newprops, align 8, !dbg !2190
  %80 = load ptr, ptr %newprops, align 8, !dbg !2191
  %tobool88 = icmp ne ptr %80, null, !dbg !2191
  br i1 %tobool88, label %if.end90, label %if.then89, !dbg !2193

if.then89:                                        ; preds = %if.end78
  br label %out_free, !dbg !2194

if.end90:                                         ; preds = %if.end78
  %81 = load ptr, ptr %newprops, align 8, !dbg !2195
  store i32 4, ptr %81, align 8, !dbg !2196
  %82 = load i32, ptr %numvalid, align 4, !dbg !2197
  %83 = load ptr, ptr %newprops, align 8, !dbg !2198
  %count91 = getelementptr inbounds %struct.anon.7, ptr %83, i32 0, i32 1, !dbg !2199
  store i32 %82, ptr %count91, align 4, !dbg !2200
  %84 = load ptr, ptr %newprops, align 8, !dbg !2201
  %arrayidx92 = getelementptr %union.acpi_object, ptr %84, i64 1, !dbg !2201
  %85 = load ptr, ptr %newprops, align 8, !dbg !2202
  %elements93 = getelementptr inbounds %struct.anon.7, ptr %85, i32 0, i32 2, !dbg !2203
  store ptr %arrayidx92, ptr %elements93, align 8, !dbg !2204
  %86 = load ptr, ptr %newprops, align 8, !dbg !2205
  %87 = load i32, ptr %numvalid, align 4, !dbg !2206
  %mul94 = mul i32 3, %87, !dbg !2207
  %add95 = add i32 1, %mul94, !dbg !2208
  %idxprom96 = zext i32 %add95 to i64, !dbg !2205
  %arrayidx97 = getelementptr %union.acpi_object, ptr %86, i64 %idxprom96, !dbg !2205
  store ptr %arrayidx97, ptr %free_space, align 8, !dbg !2209
  store i32 0, ptr %i, align 4, !dbg !2210
  br label %for.cond98, !dbg !2210

for.cond98:                                       ; preds = %for.inc191, %if.end90
  %88 = load ptr, ptr %valid, align 8, !dbg !2211
  %89 = load i32, ptr %numprops, align 4, !dbg !2211
  %conv99 = zext i32 %89 to i64, !dbg !2211
  %90 = load i32, ptr %i, align 4, !dbg !2211
  %conv100 = zext i32 %90 to i64, !dbg !2211
  %call101 = call i64 @find_next_bit(ptr noundef %88, i64 noundef %conv99, i64 noundef %conv100) #15, !dbg !2211
  %conv102 = trunc i64 %call101 to i32, !dbg !2211
  store i32 %conv102, ptr %i, align 4, !dbg !2211
  %91 = load i32, ptr %i, align 4, !dbg !2211
  %92 = load i32, ptr %numprops, align 4, !dbg !2211
  %cmp103 = icmp ult i32 %91, %92, !dbg !2211
  br i1 %cmp103, label %for.body105, label %for.end193, !dbg !2210

for.body105:                                      ; preds = %for.cond98
  call void @llvm.lifetime.start.p0(i64 8, ptr %key106) #14, !dbg !2212
  call void @llvm.dbg.declare(metadata ptr %key106, metadata !2022, metadata !DIExpression()), !dbg !2213
  %93 = load ptr, ptr %props, align 8, !dbg !2214
  %elements107 = getelementptr inbounds %struct.anon.7, ptr %93, i32 0, i32 2, !dbg !2215
  %94 = load ptr, ptr %elements107, align 8, !dbg !2215
  %95 = load i32, ptr %i, align 4, !dbg !2216
  %mul108 = mul i32 %95, 2, !dbg !2217
  %idxprom109 = zext i32 %mul108 to i64, !dbg !2214
  %arrayidx110 = getelementptr %union.acpi_object, ptr %94, i64 %idxprom109, !dbg !2214
  store ptr %arrayidx110, ptr %key106, align 8, !dbg !2213
  call void @llvm.lifetime.start.p0(i64 8, ptr %val111) #14, !dbg !2218
  call void @llvm.dbg.declare(metadata ptr %val111, metadata !2026, metadata !DIExpression()), !dbg !2219
  %96 = load ptr, ptr %props, align 8, !dbg !2220
  %elements112 = getelementptr inbounds %struct.anon.7, ptr %96, i32 0, i32 2, !dbg !2221
  %97 = load ptr, ptr %elements112, align 8, !dbg !2221
  %98 = load i32, ptr %i, align 4, !dbg !2222
  %mul113 = mul i32 %98, 2, !dbg !2223
  %add114 = add i32 %mul113, 1, !dbg !2224
  %idxprom115 = zext i32 %add114 to i64, !dbg !2220
  %arrayidx116 = getelementptr %union.acpi_object, ptr %97, i64 %idxprom115, !dbg !2220
  store ptr %arrayidx116, ptr %val111, align 8, !dbg !2219
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #14, !dbg !2225
  call void @llvm.dbg.declare(metadata ptr %k, metadata !2027, metadata !DIExpression()), !dbg !2226
  %99 = load i32, ptr %numvalid, align 4, !dbg !2227
  %add117 = add i32 1, %99, !dbg !2228
  %100 = load i32, ptr %j, align 4, !dbg !2229
  %mul118 = mul i32 %100, 2, !dbg !2230
  %add119 = add i32 %add117, %mul118, !dbg !2231
  store i32 %add119, ptr %k, align 4, !dbg !2226
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #14, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %v, metadata !2028, metadata !DIExpression()), !dbg !2233
  %101 = load i32, ptr %k, align 4, !dbg !2234
  %add120 = add i32 %101, 1, !dbg !2235
  store i32 %add120, ptr %v, align 4, !dbg !2233
  %102 = load ptr, ptr %newprops, align 8, !dbg !2236
  %103 = load i32, ptr %j, align 4, !dbg !2237
  %add121 = add i32 1, %103, !dbg !2238
  %idxprom122 = zext i32 %add121 to i64, !dbg !2236
  %arrayidx123 = getelementptr %union.acpi_object, ptr %102, i64 %idxprom122, !dbg !2236
  store i32 4, ptr %arrayidx123, align 8, !dbg !2239
  %104 = load ptr, ptr %newprops, align 8, !dbg !2240
  %105 = load i32, ptr %j, align 4, !dbg !2241
  %add124 = add i32 1, %105, !dbg !2242
  %idxprom125 = zext i32 %add124 to i64, !dbg !2240
  %arrayidx126 = getelementptr %union.acpi_object, ptr %104, i64 %idxprom125, !dbg !2240
  %count127 = getelementptr inbounds %struct.anon.7, ptr %arrayidx126, i32 0, i32 1, !dbg !2243
  store i32 2, ptr %count127, align 4, !dbg !2244
  %106 = load ptr, ptr %newprops, align 8, !dbg !2245
  %107 = load i32, ptr %k, align 4, !dbg !2246
  %idxprom128 = zext i32 %107 to i64, !dbg !2245
  %arrayidx129 = getelementptr %union.acpi_object, ptr %106, i64 %idxprom128, !dbg !2245
  %108 = load ptr, ptr %newprops, align 8, !dbg !2247
  %109 = load i32, ptr %j, align 4, !dbg !2248
  %add130 = add i32 1, %109, !dbg !2249
  %idxprom131 = zext i32 %add130 to i64, !dbg !2247
  %arrayidx132 = getelementptr %union.acpi_object, ptr %108, i64 %idxprom131, !dbg !2247
  %elements133 = getelementptr inbounds %struct.anon.7, ptr %arrayidx132, i32 0, i32 2, !dbg !2250
  store ptr %arrayidx129, ptr %elements133, align 8, !dbg !2251
  %110 = load ptr, ptr %newprops, align 8, !dbg !2252
  %111 = load i32, ptr %k, align 4, !dbg !2253
  %idxprom134 = zext i32 %111 to i64, !dbg !2252
  %arrayidx135 = getelementptr %union.acpi_object, ptr %110, i64 %idxprom134, !dbg !2252
  store i32 2, ptr %arrayidx135, align 8, !dbg !2254
  %112 = load ptr, ptr %key106, align 8, !dbg !2255
  %length136 = getelementptr inbounds %struct.anon.5, ptr %112, i32 0, i32 1, !dbg !2256
  %113 = load i32, ptr %length136, align 4, !dbg !2256
  %114 = load ptr, ptr %newprops, align 8, !dbg !2257
  %115 = load i32, ptr %k, align 4, !dbg !2258
  %idxprom137 = zext i32 %115 to i64, !dbg !2257
  %arrayidx138 = getelementptr %union.acpi_object, ptr %114, i64 %idxprom137, !dbg !2257
  %length139 = getelementptr inbounds %struct.anon.5, ptr %arrayidx138, i32 0, i32 1, !dbg !2259
  store i32 %113, ptr %length139, align 4, !dbg !2260
  %116 = load ptr, ptr %free_space, align 8, !dbg !2261
  %117 = load ptr, ptr %newprops, align 8, !dbg !2262
  %118 = load i32, ptr %k, align 4, !dbg !2263
  %idxprom140 = zext i32 %118 to i64, !dbg !2262
  %arrayidx141 = getelementptr %union.acpi_object, ptr %117, i64 %idxprom140, !dbg !2262
  %pointer142 = getelementptr inbounds %struct.anon.5, ptr %arrayidx141, i32 0, i32 2, !dbg !2264
  store ptr %116, ptr %pointer142, align 8, !dbg !2265
  %119 = load ptr, ptr %free_space, align 8, !dbg !2266
  %120 = load ptr, ptr %key106, align 8, !dbg !2267
  %pointer143 = getelementptr inbounds %struct.anon.5, ptr %120, i32 0, i32 2, !dbg !2268
  %121 = load ptr, ptr %pointer143, align 8, !dbg !2268
  %122 = load ptr, ptr %key106, align 8, !dbg !2269
  %length144 = getelementptr inbounds %struct.anon.5, ptr %122, i32 0, i32 1, !dbg !2270
  %123 = load i32, ptr %length144, align 4, !dbg !2270
  %conv145 = zext i32 %123 to i64, !dbg !2269
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %121, i64 %conv145, i1 false), !dbg !2271
  %124 = load ptr, ptr %key106, align 8, !dbg !2272
  %length146 = getelementptr inbounds %struct.anon.5, ptr %124, i32 0, i32 1, !dbg !2273
  %125 = load i32, ptr %length146, align 4, !dbg !2273
  %add147 = add i32 %125, 1, !dbg !2274
  %126 = load ptr, ptr %free_space, align 8, !dbg !2275
  %idx.ext = zext i32 %add147 to i64, !dbg !2275
  %add.ptr = getelementptr i8, ptr %126, i64 %idx.ext, !dbg !2275
  store ptr %add.ptr, ptr %free_space, align 8, !dbg !2275
  %127 = load ptr, ptr %val111, align 8, !dbg !2276
  %128 = load i32, ptr %127, align 8, !dbg !2277
  %129 = load ptr, ptr %newprops, align 8, !dbg !2278
  %130 = load i32, ptr %v, align 4, !dbg !2279
  %idxprom148 = zext i32 %130 to i64, !dbg !2278
  %arrayidx149 = getelementptr %union.acpi_object, ptr %129, i64 %idxprom148, !dbg !2278
  store i32 %128, ptr %arrayidx149, align 8, !dbg !2280
  %131 = load ptr, ptr %val111, align 8, !dbg !2281
  %132 = load i32, ptr %131, align 8, !dbg !2283
  %cmp150 = icmp eq i32 %132, 1, !dbg !2284
  br i1 %cmp150, label %if.then152, label %if.else156, !dbg !2285

if.then152:                                       ; preds = %for.body105
  %133 = load ptr, ptr %val111, align 8, !dbg !2286
  %value = getelementptr inbounds %struct.anon.4, ptr %133, i32 0, i32 1, !dbg !2288
  %134 = load i64, ptr %value, align 8, !dbg !2288
  %135 = load ptr, ptr %newprops, align 8, !dbg !2289
  %136 = load i32, ptr %v, align 4, !dbg !2290
  %idxprom153 = zext i32 %136 to i64, !dbg !2289
  %arrayidx154 = getelementptr %union.acpi_object, ptr %135, i64 %idxprom153, !dbg !2289
  %value155 = getelementptr inbounds %struct.anon.4, ptr %arrayidx154, i32 0, i32 1, !dbg !2291
  store i64 %134, ptr %value155, align 8, !dbg !2292
  br label %if.end189, !dbg !2293

if.else156:                                       ; preds = %for.body105
  %137 = load ptr, ptr %val111, align 8, !dbg !2294
  %138 = load i32, ptr %137, align 8, !dbg !2296
  %cmp157 = icmp eq i32 %138, 2, !dbg !2297
  br i1 %cmp157, label %if.then159, label %if.else174, !dbg !2298

if.then159:                                       ; preds = %if.else156
  %139 = load ptr, ptr %val111, align 8, !dbg !2299
  %length160 = getelementptr inbounds %struct.anon.5, ptr %139, i32 0, i32 1, !dbg !2301
  %140 = load i32, ptr %length160, align 4, !dbg !2301
  %141 = load ptr, ptr %newprops, align 8, !dbg !2302
  %142 = load i32, ptr %v, align 4, !dbg !2303
  %idxprom161 = zext i32 %142 to i64, !dbg !2302
  %arrayidx162 = getelementptr %union.acpi_object, ptr %141, i64 %idxprom161, !dbg !2302
  %length163 = getelementptr inbounds %struct.anon.5, ptr %arrayidx162, i32 0, i32 1, !dbg !2304
  store i32 %140, ptr %length163, align 4, !dbg !2305
  %143 = load ptr, ptr %free_space, align 8, !dbg !2306
  %144 = load ptr, ptr %newprops, align 8, !dbg !2307
  %145 = load i32, ptr %v, align 4, !dbg !2308
  %idxprom164 = zext i32 %145 to i64, !dbg !2307
  %arrayidx165 = getelementptr %union.acpi_object, ptr %144, i64 %idxprom164, !dbg !2307
  %pointer166 = getelementptr inbounds %struct.anon.5, ptr %arrayidx165, i32 0, i32 2, !dbg !2309
  store ptr %143, ptr %pointer166, align 8, !dbg !2310
  %146 = load ptr, ptr %free_space, align 8, !dbg !2311
  %147 = load ptr, ptr %val111, align 8, !dbg !2312
  %pointer167 = getelementptr inbounds %struct.anon.5, ptr %147, i32 0, i32 2, !dbg !2313
  %148 = load ptr, ptr %pointer167, align 8, !dbg !2313
  %149 = load ptr, ptr %val111, align 8, !dbg !2314
  %length168 = getelementptr inbounds %struct.anon.5, ptr %149, i32 0, i32 1, !dbg !2315
  %150 = load i32, ptr %length168, align 4, !dbg !2315
  %conv169 = zext i32 %150 to i64, !dbg !2314
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %146, ptr align 1 %148, i64 %conv169, i1 false), !dbg !2316
  %151 = load ptr, ptr %val111, align 8, !dbg !2317
  %length170 = getelementptr inbounds %struct.anon.5, ptr %151, i32 0, i32 1, !dbg !2318
  %152 = load i32, ptr %length170, align 4, !dbg !2318
  %add171 = add i32 %152, 1, !dbg !2319
  %153 = load ptr, ptr %free_space, align 8, !dbg !2320
  %idx.ext172 = zext i32 %add171 to i64, !dbg !2320
  %add.ptr173 = getelementptr i8, ptr %153, i64 %idx.ext172, !dbg !2320
  store ptr %add.ptr173, ptr %free_space, align 8, !dbg !2320
  br label %if.end188, !dbg !2321

if.else174:                                       ; preds = %if.else156
  %154 = load ptr, ptr %val111, align 8, !dbg !2322
  %length175 = getelementptr inbounds %struct.anon.6, ptr %154, i32 0, i32 1, !dbg !2324
  %155 = load i32, ptr %length175, align 4, !dbg !2324
  %156 = load ptr, ptr %newprops, align 8, !dbg !2325
  %157 = load i32, ptr %v, align 4, !dbg !2326
  %idxprom176 = zext i32 %157 to i64, !dbg !2325
  %arrayidx177 = getelementptr %union.acpi_object, ptr %156, i64 %idxprom176, !dbg !2325
  %length178 = getelementptr inbounds %struct.anon.6, ptr %arrayidx177, i32 0, i32 1, !dbg !2327
  store i32 %155, ptr %length178, align 4, !dbg !2328
  %158 = load ptr, ptr %free_space, align 8, !dbg !2329
  %159 = load ptr, ptr %newprops, align 8, !dbg !2330
  %160 = load i32, ptr %v, align 4, !dbg !2331
  %idxprom179 = zext i32 %160 to i64, !dbg !2330
  %arrayidx180 = getelementptr %union.acpi_object, ptr %159, i64 %idxprom179, !dbg !2330
  %pointer181 = getelementptr inbounds %struct.anon.6, ptr %arrayidx180, i32 0, i32 2, !dbg !2332
  store ptr %158, ptr %pointer181, align 8, !dbg !2333
  %161 = load ptr, ptr %free_space, align 8, !dbg !2334
  %162 = load ptr, ptr %val111, align 8, !dbg !2335
  %pointer182 = getelementptr inbounds %struct.anon.6, ptr %162, i32 0, i32 2, !dbg !2336
  %163 = load ptr, ptr %pointer182, align 8, !dbg !2336
  %164 = load ptr, ptr %val111, align 8, !dbg !2337
  %length183 = getelementptr inbounds %struct.anon.6, ptr %164, i32 0, i32 1, !dbg !2338
  %165 = load i32, ptr %length183, align 4, !dbg !2338
  %conv184 = zext i32 %165 to i64, !dbg !2337
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %161, ptr align 1 %163, i64 %conv184, i1 false), !dbg !2339
  %166 = load ptr, ptr %val111, align 8, !dbg !2340
  %length185 = getelementptr inbounds %struct.anon.6, ptr %166, i32 0, i32 1, !dbg !2341
  %167 = load i32, ptr %length185, align 4, !dbg !2341
  %168 = load ptr, ptr %free_space, align 8, !dbg !2342
  %idx.ext186 = zext i32 %167 to i64, !dbg !2342
  %add.ptr187 = getelementptr i8, ptr %168, i64 %idx.ext186, !dbg !2342
  store ptr %add.ptr187, ptr %free_space, align 8, !dbg !2342
  br label %if.end188

if.end188:                                        ; preds = %if.else174, %if.then159
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.then152
  %169 = load i32, ptr %j, align 4, !dbg !2343
  %inc190 = add i32 %169, 1, !dbg !2343
  store i32 %inc190, ptr %j, align 4, !dbg !2343
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #14, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #14, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 8, ptr %val111) #14, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 8, ptr %key106) #14, !dbg !2344
  br label %for.inc191, !dbg !2345

for.inc191:                                       ; preds = %if.end189
  %170 = load i32, ptr %i, align 4, !dbg !2211
  %inc192 = add i32 %170, 1, !dbg !2211
  store i32 %inc192, ptr %i, align 4, !dbg !2211
  br label %for.cond98, !dbg !2211, !llvm.loop !2346

for.end193:                                       ; preds = %for.cond98
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2348
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2029, metadata !DIExpression()), !dbg !2348
  %171 = load ptr, ptr %free_space, align 8, !dbg !2348
  %172 = load ptr, ptr %newprops, align 8, !dbg !2348
  %173 = load i32, ptr %newsize, align 4, !dbg !2348
  %idx.ext194 = zext i32 %173 to i64, !dbg !2348
  %add.ptr195 = getelementptr i8, ptr %172, i64 %idx.ext194, !dbg !2348
  %cmp196 = icmp ne ptr %171, %add.ptr195, !dbg !2348
  %lnot = xor i1 %cmp196, true, !dbg !2348
  %lnot198 = xor i1 %lnot, true, !dbg !2348
  %lnot.ext = zext i1 %lnot198 to i32, !dbg !2348
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2348
  %174 = load i32, ptr %__ret_warn_on, align 4, !dbg !2349
  %tobool199 = icmp ne i32 %174, 0, !dbg !2349
  %lnot200 = xor i1 %tobool199, true, !dbg !2349
  %lnot202 = xor i1 %lnot200, true, !dbg !2349
  %lnot.ext203 = zext i1 %lnot202 to i32, !dbg !2349
  %conv204 = sext i32 %lnot.ext203 to i64, !dbg !2349
  %expval = call i64 @llvm.expect.i64(i64 %conv204, i64 0), !dbg !2349
  %tobool205 = icmp ne i64 %expval, 0, !dbg !2349
  br i1 %tobool205, label %if.then206, label %if.end216, !dbg !2348

if.then206:                                       ; preds = %for.end193
  br label %do.body, !dbg !2349

do.body:                                          ; preds = %if.then206
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2350
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2031, metadata !DIExpression()), !dbg !2350
  store i32 2305, ptr %__flags, align 4, !dbg !2350
  br label %do.body207, !dbg !2350

do.body207:                                       ; preds = %do.body
  br label %do.cond, !dbg !2351

do.cond:                                          ; preds = %do.body207
  br label %do.end, !dbg !2351

do.end:                                           ; preds = %do.cond
  br label %do.body208, !dbg !2350

do.body208:                                       ; preds = %do.end
  %175 = load i32, ptr %__flags, align 4, !dbg !2353
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 140, i32 %175, i64 12) #14, !dbg !2353, !srcloc !2355
  br label %do.cond209, !dbg !2353

do.cond209:                                       ; preds = %do.body208
  br label %do.end210, !dbg !2353

do.end210:                                        ; preds = %do.cond209
  br label %do.body211, !dbg !2350

do.body211:                                       ; preds = %do.end210
  br label %do.cond212, !dbg !2356

do.cond212:                                       ; preds = %do.body211
  br label %do.end213, !dbg !2356

do.end213:                                        ; preds = %do.cond212
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2349
  br label %do.cond214, !dbg !2350

do.cond214:                                       ; preds = %do.end213
  br label %do.end215, !dbg !2350

do.end215:                                        ; preds = %do.cond214
  br label %if.end216, !dbg !2350

if.end216:                                        ; preds = %do.end215, %for.end193
  %176 = load i32, ptr %__ret_warn_on, align 4, !dbg !2348
  %tobool217 = icmp ne i32 %176, 0, !dbg !2348
  %lnot218 = xor i1 %tobool217, true, !dbg !2348
  %lnot220 = xor i1 %lnot218, true, !dbg !2348
  %lnot.ext221 = zext i1 %lnot220 to i32, !dbg !2348
  %conv222 = sext i32 %lnot.ext221 to i64, !dbg !2348
  %expval223 = call i64 @llvm.expect.i64(i64 %conv222, i64 0), !dbg !2348
  store i64 %expval223, ptr %tmp, align 8, !dbg !2349
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2358
  %177 = load i64, ptr %tmp, align 8, !dbg !2348
  %178 = load ptr, ptr %newprops, align 8, !dbg !2359
  %179 = load ptr, ptr %adev.addr, align 8, !dbg !2360
  %data = getelementptr inbounds %struct.acpi_device, ptr %179, i32 0, i32 13, !dbg !2361
  %pointer224 = getelementptr inbounds %struct.acpi_device_data, ptr %data, i32 0, i32 0, !dbg !2362
  store ptr %178, ptr %pointer224, align 8, !dbg !2363
  %180 = load ptr, ptr %adev.addr, align 8, !dbg !2364
  %data225 = getelementptr inbounds %struct.acpi_device, ptr %180, i32 0, i32 13, !dbg !2365
  %181 = load ptr, ptr %newprops, align 8, !dbg !2366
  %call226 = call ptr @acpi_data_add_props(ptr noundef %data225, ptr noundef @apple_prp_guid, ptr noundef %181) #15, !dbg !2367
  br label %out_free, !dbg !2367

out_free:                                         ; preds = %if.end216, %if.then89, %if.then77, %if.then23, %if.then19, %if.then8, %if.then5
  call void @llvm.dbg.label(metadata !2034), !dbg !2368
  %182 = load ptr, ptr %props, align 8, !dbg !2369
  call void @acpi_os_free(ptr noundef %182) #15, !dbg !2369
  %183 = load ptr, ptr %valid, align 8, !dbg !2370
  call void @bitmap_free(ptr noundef %183) #15, !dbg !2371
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2372
  br label %cleanup227, !dbg !2372

cleanup227:                                       ; preds = %out_free, %if.then16, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %free_space) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 8, ptr %valid) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 8, ptr %newprops) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 8, ptr %props) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr %numvalid) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr %numprops) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr %newsize) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2372
  %cleanup.dest236 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest236, label %unreachable [
    i32 0, label %cleanup.cont237
    i32 1, label %cleanup.cont237
  ]

cleanup.cont237:                                  ; preds = %cleanup227, %cleanup227
  ret void, !dbg !2372

unreachable:                                      ; preds = %cleanup227, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_evaluate_dsm_typed(ptr noundef %handle, ptr noundef %guid, i64 noundef %rev, i64 noundef %func, ptr noundef %argv4, i32 noundef %type) #3 align 16 !dbg !2373 {
entry:
  %handle.addr = alloca ptr, align 8
  %guid.addr = alloca ptr, align 8
  %rev.addr = alloca i64, align 8
  %func.addr = alloca i64, align 8
  %argv4.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %obj = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2378, metadata !DIExpression()), !dbg !2385
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !2379, metadata !DIExpression()), !dbg !2386
  store i64 %rev, ptr %rev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rev.addr, metadata !2380, metadata !DIExpression()), !dbg !2387
  store i64 %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2381, metadata !DIExpression()), !dbg !2388
  store ptr %argv4, ptr %argv4.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv4.addr, metadata !2382, metadata !DIExpression()), !dbg !2389
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2383, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #14, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !2384, metadata !DIExpression()), !dbg !2392
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2393
  %1 = load ptr, ptr %guid.addr, align 8, !dbg !2394
  %2 = load i64, ptr %rev.addr, align 8, !dbg !2395
  %3 = load i64, ptr %func.addr, align 8, !dbg !2396
  %4 = load ptr, ptr %argv4.addr, align 8, !dbg !2397
  %call = call ptr @acpi_evaluate_dsm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #15, !dbg !2398
  store ptr %call, ptr %obj, align 8, !dbg !2399
  %5 = load ptr, ptr %obj, align 8, !dbg !2400
  %tobool = icmp ne ptr %5, null, !dbg !2400
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2402

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %obj, align 8, !dbg !2403
  %7 = load i32, ptr %6, align 8, !dbg !2404
  %8 = load i32, ptr %type.addr, align 4, !dbg !2405
  %cmp = icmp ne i32 %7, %8, !dbg !2406
  br i1 %cmp, label %if.then, label %if.end, !dbg !2407

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %obj, align 8, !dbg !2408
  call void @acpi_os_free(ptr noundef %9) #15, !dbg !2408
  store ptr null, ptr %obj, align 8, !dbg !2410
  br label %if.end, !dbg !2411

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %obj, align 8, !dbg !2412
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #14, !dbg !2413
  ret ptr %10, !dbg !2414
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2415 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !2419 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !2422, metadata !DIExpression()), !dbg !2423
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !2424
  call void @kfree(ptr noundef %0) #15, !dbg !2425
  ret void, !dbg !2426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2427 dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2431 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2438, metadata !DIExpression()), !dbg !2442
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2439, metadata !DIExpression()), !dbg !2443
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !2444
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2440, metadata !DIExpression()), !dbg !2445
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2446
  %rem = urem i64 %0, 64, !dbg !2446
  %shl = shl i64 1, %rem, !dbg !2446
  store i64 %shl, ptr %mask, align 8, !dbg !2445
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !2447
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2441, metadata !DIExpression()), !dbg !2448
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2449
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2450
  %div = udiv i64 %2, 64, !dbg !2450
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !2451
  store ptr %add.ptr, ptr %p, align 8, !dbg !2448
  %3 = load i64, ptr %mask, align 8, !dbg !2452
  %4 = load ptr, ptr %p, align 8, !dbg !2453
  %5 = load i64, ptr %4, align 8, !dbg !2454
  %or = or i64 %5, %3, !dbg !2454
  store i64 %or, ptr %4, align 8, !dbg !2454
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !2455
  ret void, !dbg !2455
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2456 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2459, metadata !DIExpression()), !dbg !2461
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2460, metadata !DIExpression()), !dbg !2462
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2463
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2464
  %div = udiv i64 %1, 64, !dbg !2464
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2465
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !2466
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2467
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2468
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !2469
  ret void, !dbg !2470
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !2471 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2475, metadata !DIExpression()), !dbg !2477
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !2476, metadata !DIExpression()), !dbg !2478
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !2479
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2479
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2479

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !2479
  %cmp = icmp ule i32 %2, 64, !dbg !2479
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2479

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !2479
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2479
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2481

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2482
  %5 = load i64, ptr %4, align 8, !dbg !2483
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !2484
  %sub = sub i32 0, %6, !dbg !2484
  %and = and i32 %sub, 63, !dbg !2484
  %sh_prom = zext i32 %and to i64, !dbg !2484
  %shr = lshr i64 -1, %sh_prom, !dbg !2484
  %and3 = and i64 %5, %shr, !dbg !2485
  %call = call i64 @hweight_long(i64 noundef %and3) #15, !dbg !2486
  %conv = trunc i64 %call to i32, !dbg !2486
  store i32 %conv, ptr %retval, align 4, !dbg !2487
  br label %return, !dbg !2487

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !2488
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !2489
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #15, !dbg !2490
  store i32 %call4, ptr %retval, align 4, !dbg !2491
  br label %return, !dbg !2491

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !2492
  ret i32 %9, !dbg !2492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #3 align 16 !dbg !2493 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2497, metadata !DIExpression()), !dbg !2508
  %0 = load i64, ptr %size.addr, align 8, !dbg !2509
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !2498, metadata !DIExpression()), !dbg !2510
  br label %do.body, !dbg !2510

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !2511
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2500, metadata !DIExpression()), !dbg !2511
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !2511
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2503, metadata !DIExpression()), !dbg !2511
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2511
  %conv = zext i1 %cmp to i32, !dbg !2511
  store i32 1, ptr %tmp, align 4, !dbg !2511
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !2512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !2512
  %1 = load i32, ptr %tmp, align 4, !dbg !2511
  %call = call i64 @arch_local_save_flags() #15, !dbg !2512
  store i64 %call, ptr %_flags, align 8, !dbg !2512
  br label %do.cond, !dbg !2512

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2512

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !2504, metadata !DIExpression()), !dbg !2513
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !2507, metadata !DIExpression()), !dbg !2513
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !2513
  %conv6 = zext i1 %cmp5 to i32, !dbg !2513
  store i32 1, ptr %tmp7, align 4, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !2514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !2514
  %2 = load i32, ptr %tmp7, align 4, !dbg !2513
  %3 = load i64, ptr %_flags, align 8, !dbg !2514
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !2514
  store i32 %call9, ptr %tmp8, align 4, !dbg !2514
  %4 = load i32, ptr %tmp8, align 4, !dbg !2514
  store i32 %4, ptr %tmp1, align 4, !dbg !2512
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !2515
  %5 = load i32, ptr %tmp1, align 4, !dbg !2510
  %tobool = icmp ne i32 %5, 0, !dbg !2515
  %6 = zext i1 %tobool to i64, !dbg !2515
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !2515
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !2516
  ret ptr %call10, !dbg !2517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !2518 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2523, metadata !DIExpression()), !dbg !2529
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2524, metadata !DIExpression()), !dbg !2530
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2525, metadata !DIExpression()), !dbg !2531
  %0 = load i64, ptr %size.addr, align 8, !dbg !2532
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2532
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !2532

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2532
  %cmp = icmp ule i64 %2, 64, !dbg !2532
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !2532

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2532
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2532
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !2533

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !2534
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2526, metadata !DIExpression()), !dbg !2535
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2536
  %5 = load i64, ptr %size.addr, align 8, !dbg !2536
  %cmp3 = icmp uge i64 %4, %5, !dbg !2536
  %lnot = xor i1 %cmp3, true, !dbg !2536
  %lnot4 = xor i1 %lnot, true, !dbg !2536
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2536
  %conv = sext i32 %lnot.ext to i64, !dbg !2536
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2536
  %tobool = icmp ne i64 %expval, 0, !dbg !2536
  br i1 %tobool, label %if.then5, label %if.end, !dbg !2538

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2539
  store i64 %6, ptr %retval, align 8, !dbg !2540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2540

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2541
  %8 = load i64, ptr %7, align 8, !dbg !2542
  %9 = load i64, ptr %offset.addr, align 8, !dbg !2543
  %shl = shl i64 1, %9, !dbg !2543
  %sub = sub i64 -1, %shl, !dbg !2543
  %add = add i64 %sub, 1, !dbg !2543
  %10 = load i64, ptr %size.addr, align 8, !dbg !2543
  %sub6 = sub i64 %10, 1, !dbg !2543
  %sub7 = sub i64 63, %sub6, !dbg !2543
  %shr = lshr i64 -1, %sub7, !dbg !2543
  %and = and i64 %add, %shr, !dbg !2543
  %add8 = add i64 0, %and, !dbg !2543
  %and9 = and i64 %8, %add8, !dbg !2544
  store i64 %and9, ptr %val, align 8, !dbg !2545
  %11 = load i64, ptr %val, align 8, !dbg !2546
  %tobool10 = icmp ne i64 %11, 0, !dbg !2546
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !2546

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !2547
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2547
  br i1 %13, label %cond.true11, label %cond.false, !dbg !2547

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2547
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !2547
  %cast = trunc i64 %15 to i32, !dbg !2547
  %conv12 = sext i32 %cast to i64, !dbg !2547
  br label %cond.end, !dbg !2547

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !2547
  %call = call i64 @variable__ffs(i64 noundef %16) #15, !dbg !2547
  br label %cond.end, !dbg !2547

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !2547
  br label %cond.end14, !dbg !2546

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !2548
  br label %cond.end14, !dbg !2546

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !2546
  store i64 %cond15, ptr %retval, align 8, !dbg !2549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2549

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !2550
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !2551
  %19 = load i64, ptr %size.addr, align 8, !dbg !2552
  %20 = load i64, ptr %offset.addr, align 8, !dbg !2553
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #15, !dbg !2554
  store i64 %call17, ptr %retval, align 8, !dbg !2555
  br label %return, !dbg !2555

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !2556
  ret i64 %21, !dbg !2556
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2557 dso_local ptr @acpi_data_add_props(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2569 dso_local void @bitmap_free(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2572 dso_local ptr @acpi_evaluate_dsm(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2575 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2578 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2586, metadata !DIExpression()), !dbg !2588
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2587, metadata !DIExpression()), !dbg !2589
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2590
  %1 = load i64, ptr %size.addr, align 8, !dbg !2591
  %conv = trunc i64 %1 to i32, !dbg !2591
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !2592
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2593
  %3 = load i64, ptr %size.addr, align 8, !dbg !2593
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #15, !dbg !2593
  ret void, !dbg !2594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2595 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2598, metadata !DIExpression()), !dbg !2600
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2599, metadata !DIExpression()), !dbg !2601
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2602
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2603
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !2604, !srcloc !2605
  ret void, !dbg !2606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !2607 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2612, metadata !DIExpression()), !dbg !2614
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2613, metadata !DIExpression()), !dbg !2615
  ret i1 true, !dbg !2616
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !2617 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2622, metadata !DIExpression()), !dbg !2625
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2623, metadata !DIExpression()), !dbg !2626
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2624, metadata !DIExpression()), !dbg !2627
  ret void, !dbg !2628
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #6 align 16 !dbg !2629 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  %0 = load i64, ptr %w.addr, align 8, !dbg !2636
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2636
  br i1 %1, label %cond.true, label %cond.false, !dbg !2636

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and = and i64 %2, 1, !dbg !2636
  %tobool = icmp ne i64 %and, 0, !dbg !2636
  %lnot = xor i1 %tobool, true, !dbg !2636
  %lnot1 = xor i1 %lnot, true, !dbg !2636
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2636
  %3 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and2 = and i64 %3, 2, !dbg !2636
  %tobool3 = icmp ne i64 %and2, 0, !dbg !2636
  %lnot4 = xor i1 %tobool3, true, !dbg !2636
  %lnot6 = xor i1 %lnot4, true, !dbg !2636
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2636
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !2636
  %4 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and8 = and i64 %4, 4, !dbg !2636
  %tobool9 = icmp ne i64 %and8, 0, !dbg !2636
  %lnot10 = xor i1 %tobool9, true, !dbg !2636
  %lnot12 = xor i1 %lnot10, true, !dbg !2636
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !2636
  %add14 = add i32 %add, %lnot.ext13, !dbg !2636
  %5 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and15 = and i64 %5, 8, !dbg !2636
  %tobool16 = icmp ne i64 %and15, 0, !dbg !2636
  %lnot17 = xor i1 %tobool16, true, !dbg !2636
  %lnot19 = xor i1 %lnot17, true, !dbg !2636
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2636
  %add21 = add i32 %add14, %lnot.ext20, !dbg !2636
  %6 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and22 = and i64 %6, 16, !dbg !2636
  %tobool23 = icmp ne i64 %and22, 0, !dbg !2636
  %lnot24 = xor i1 %tobool23, true, !dbg !2636
  %lnot26 = xor i1 %lnot24, true, !dbg !2636
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !2636
  %add28 = add i32 %add21, %lnot.ext27, !dbg !2636
  %7 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and29 = and i64 %7, 32, !dbg !2636
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2636
  %lnot31 = xor i1 %tobool30, true, !dbg !2636
  %lnot33 = xor i1 %lnot31, true, !dbg !2636
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !2636
  %add35 = add i32 %add28, %lnot.ext34, !dbg !2636
  %8 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and36 = and i64 %8, 64, !dbg !2636
  %tobool37 = icmp ne i64 %and36, 0, !dbg !2636
  %lnot38 = xor i1 %tobool37, true, !dbg !2636
  %lnot40 = xor i1 %lnot38, true, !dbg !2636
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !2636
  %add42 = add i32 %add35, %lnot.ext41, !dbg !2636
  %9 = load i64, ptr %w.addr, align 8, !dbg !2636
  %and43 = and i64 %9, 128, !dbg !2636
  %tobool44 = icmp ne i64 %and43, 0, !dbg !2636
  %lnot45 = xor i1 %tobool44, true, !dbg !2636
  %lnot47 = xor i1 %lnot45, true, !dbg !2636
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !2636
  %add49 = add i32 %add42, %lnot.ext48, !dbg !2636
  %10 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr = lshr i64 %10, 8, !dbg !2636
  %and50 = and i64 %shr, 1, !dbg !2636
  %tobool51 = icmp ne i64 %and50, 0, !dbg !2636
  %lnot52 = xor i1 %tobool51, true, !dbg !2636
  %lnot54 = xor i1 %lnot52, true, !dbg !2636
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2636
  %11 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr56 = lshr i64 %11, 8, !dbg !2636
  %and57 = and i64 %shr56, 2, !dbg !2636
  %tobool58 = icmp ne i64 %and57, 0, !dbg !2636
  %lnot59 = xor i1 %tobool58, true, !dbg !2636
  %lnot61 = xor i1 %lnot59, true, !dbg !2636
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !2636
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !2636
  %12 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr64 = lshr i64 %12, 8, !dbg !2636
  %and65 = and i64 %shr64, 4, !dbg !2636
  %tobool66 = icmp ne i64 %and65, 0, !dbg !2636
  %lnot67 = xor i1 %tobool66, true, !dbg !2636
  %lnot69 = xor i1 %lnot67, true, !dbg !2636
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !2636
  %add71 = add i32 %add63, %lnot.ext70, !dbg !2636
  %13 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr72 = lshr i64 %13, 8, !dbg !2636
  %and73 = and i64 %shr72, 8, !dbg !2636
  %tobool74 = icmp ne i64 %and73, 0, !dbg !2636
  %lnot75 = xor i1 %tobool74, true, !dbg !2636
  %lnot77 = xor i1 %lnot75, true, !dbg !2636
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !2636
  %add79 = add i32 %add71, %lnot.ext78, !dbg !2636
  %14 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr80 = lshr i64 %14, 8, !dbg !2636
  %and81 = and i64 %shr80, 16, !dbg !2636
  %tobool82 = icmp ne i64 %and81, 0, !dbg !2636
  %lnot83 = xor i1 %tobool82, true, !dbg !2636
  %lnot85 = xor i1 %lnot83, true, !dbg !2636
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !2636
  %add87 = add i32 %add79, %lnot.ext86, !dbg !2636
  %15 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr88 = lshr i64 %15, 8, !dbg !2636
  %and89 = and i64 %shr88, 32, !dbg !2636
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2636
  %lnot91 = xor i1 %tobool90, true, !dbg !2636
  %lnot93 = xor i1 %lnot91, true, !dbg !2636
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !2636
  %add95 = add i32 %add87, %lnot.ext94, !dbg !2636
  %16 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr96 = lshr i64 %16, 8, !dbg !2636
  %and97 = and i64 %shr96, 64, !dbg !2636
  %tobool98 = icmp ne i64 %and97, 0, !dbg !2636
  %lnot99 = xor i1 %tobool98, true, !dbg !2636
  %lnot101 = xor i1 %lnot99, true, !dbg !2636
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !2636
  %add103 = add i32 %add95, %lnot.ext102, !dbg !2636
  %17 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr104 = lshr i64 %17, 8, !dbg !2636
  %and105 = and i64 %shr104, 128, !dbg !2636
  %tobool106 = icmp ne i64 %and105, 0, !dbg !2636
  %lnot107 = xor i1 %tobool106, true, !dbg !2636
  %lnot109 = xor i1 %lnot107, true, !dbg !2636
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !2636
  %add111 = add i32 %add103, %lnot.ext110, !dbg !2636
  %add112 = add i32 %add49, %add111, !dbg !2636
  %18 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr113 = lshr i64 %18, 16, !dbg !2636
  %and114 = and i64 %shr113, 1, !dbg !2636
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2636
  %lnot116 = xor i1 %tobool115, true, !dbg !2636
  %lnot118 = xor i1 %lnot116, true, !dbg !2636
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !2636
  %19 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr120 = lshr i64 %19, 16, !dbg !2636
  %and121 = and i64 %shr120, 2, !dbg !2636
  %tobool122 = icmp ne i64 %and121, 0, !dbg !2636
  %lnot123 = xor i1 %tobool122, true, !dbg !2636
  %lnot125 = xor i1 %lnot123, true, !dbg !2636
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !2636
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !2636
  %20 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr128 = lshr i64 %20, 16, !dbg !2636
  %and129 = and i64 %shr128, 4, !dbg !2636
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2636
  %lnot131 = xor i1 %tobool130, true, !dbg !2636
  %lnot133 = xor i1 %lnot131, true, !dbg !2636
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !2636
  %add135 = add i32 %add127, %lnot.ext134, !dbg !2636
  %21 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr136 = lshr i64 %21, 16, !dbg !2636
  %and137 = and i64 %shr136, 8, !dbg !2636
  %tobool138 = icmp ne i64 %and137, 0, !dbg !2636
  %lnot139 = xor i1 %tobool138, true, !dbg !2636
  %lnot141 = xor i1 %lnot139, true, !dbg !2636
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !2636
  %add143 = add i32 %add135, %lnot.ext142, !dbg !2636
  %22 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr144 = lshr i64 %22, 16, !dbg !2636
  %and145 = and i64 %shr144, 16, !dbg !2636
  %tobool146 = icmp ne i64 %and145, 0, !dbg !2636
  %lnot147 = xor i1 %tobool146, true, !dbg !2636
  %lnot149 = xor i1 %lnot147, true, !dbg !2636
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !2636
  %add151 = add i32 %add143, %lnot.ext150, !dbg !2636
  %23 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr152 = lshr i64 %23, 16, !dbg !2636
  %and153 = and i64 %shr152, 32, !dbg !2636
  %tobool154 = icmp ne i64 %and153, 0, !dbg !2636
  %lnot155 = xor i1 %tobool154, true, !dbg !2636
  %lnot157 = xor i1 %lnot155, true, !dbg !2636
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !2636
  %add159 = add i32 %add151, %lnot.ext158, !dbg !2636
  %24 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr160 = lshr i64 %24, 16, !dbg !2636
  %and161 = and i64 %shr160, 64, !dbg !2636
  %tobool162 = icmp ne i64 %and161, 0, !dbg !2636
  %lnot163 = xor i1 %tobool162, true, !dbg !2636
  %lnot165 = xor i1 %lnot163, true, !dbg !2636
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !2636
  %add167 = add i32 %add159, %lnot.ext166, !dbg !2636
  %25 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr168 = lshr i64 %25, 16, !dbg !2636
  %and169 = and i64 %shr168, 128, !dbg !2636
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2636
  %lnot171 = xor i1 %tobool170, true, !dbg !2636
  %lnot173 = xor i1 %lnot171, true, !dbg !2636
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !2636
  %add175 = add i32 %add167, %lnot.ext174, !dbg !2636
  %26 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr176 = lshr i64 %26, 16, !dbg !2636
  %shr177 = lshr i64 %shr176, 8, !dbg !2636
  %and178 = and i64 %shr177, 1, !dbg !2636
  %tobool179 = icmp ne i64 %and178, 0, !dbg !2636
  %lnot180 = xor i1 %tobool179, true, !dbg !2636
  %lnot182 = xor i1 %lnot180, true, !dbg !2636
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !2636
  %27 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr184 = lshr i64 %27, 16, !dbg !2636
  %shr185 = lshr i64 %shr184, 8, !dbg !2636
  %and186 = and i64 %shr185, 2, !dbg !2636
  %tobool187 = icmp ne i64 %and186, 0, !dbg !2636
  %lnot188 = xor i1 %tobool187, true, !dbg !2636
  %lnot190 = xor i1 %lnot188, true, !dbg !2636
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !2636
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !2636
  %28 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr193 = lshr i64 %28, 16, !dbg !2636
  %shr194 = lshr i64 %shr193, 8, !dbg !2636
  %and195 = and i64 %shr194, 4, !dbg !2636
  %tobool196 = icmp ne i64 %and195, 0, !dbg !2636
  %lnot197 = xor i1 %tobool196, true, !dbg !2636
  %lnot199 = xor i1 %lnot197, true, !dbg !2636
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !2636
  %add201 = add i32 %add192, %lnot.ext200, !dbg !2636
  %29 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr202 = lshr i64 %29, 16, !dbg !2636
  %shr203 = lshr i64 %shr202, 8, !dbg !2636
  %and204 = and i64 %shr203, 8, !dbg !2636
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2636
  %lnot206 = xor i1 %tobool205, true, !dbg !2636
  %lnot208 = xor i1 %lnot206, true, !dbg !2636
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !2636
  %add210 = add i32 %add201, %lnot.ext209, !dbg !2636
  %30 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr211 = lshr i64 %30, 16, !dbg !2636
  %shr212 = lshr i64 %shr211, 8, !dbg !2636
  %and213 = and i64 %shr212, 16, !dbg !2636
  %tobool214 = icmp ne i64 %and213, 0, !dbg !2636
  %lnot215 = xor i1 %tobool214, true, !dbg !2636
  %lnot217 = xor i1 %lnot215, true, !dbg !2636
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !2636
  %add219 = add i32 %add210, %lnot.ext218, !dbg !2636
  %31 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr220 = lshr i64 %31, 16, !dbg !2636
  %shr221 = lshr i64 %shr220, 8, !dbg !2636
  %and222 = and i64 %shr221, 32, !dbg !2636
  %tobool223 = icmp ne i64 %and222, 0, !dbg !2636
  %lnot224 = xor i1 %tobool223, true, !dbg !2636
  %lnot226 = xor i1 %lnot224, true, !dbg !2636
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !2636
  %add228 = add i32 %add219, %lnot.ext227, !dbg !2636
  %32 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr229 = lshr i64 %32, 16, !dbg !2636
  %shr230 = lshr i64 %shr229, 8, !dbg !2636
  %and231 = and i64 %shr230, 64, !dbg !2636
  %tobool232 = icmp ne i64 %and231, 0, !dbg !2636
  %lnot233 = xor i1 %tobool232, true, !dbg !2636
  %lnot235 = xor i1 %lnot233, true, !dbg !2636
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !2636
  %add237 = add i32 %add228, %lnot.ext236, !dbg !2636
  %33 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr238 = lshr i64 %33, 16, !dbg !2636
  %shr239 = lshr i64 %shr238, 8, !dbg !2636
  %and240 = and i64 %shr239, 128, !dbg !2636
  %tobool241 = icmp ne i64 %and240, 0, !dbg !2636
  %lnot242 = xor i1 %tobool241, true, !dbg !2636
  %lnot244 = xor i1 %lnot242, true, !dbg !2636
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !2636
  %add246 = add i32 %add237, %lnot.ext245, !dbg !2636
  %add247 = add i32 %add175, %add246, !dbg !2636
  %add248 = add i32 %add112, %add247, !dbg !2636
  %34 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr249 = lshr i64 %34, 32, !dbg !2636
  %and250 = and i64 %shr249, 1, !dbg !2636
  %tobool251 = icmp ne i64 %and250, 0, !dbg !2636
  %lnot252 = xor i1 %tobool251, true, !dbg !2636
  %lnot254 = xor i1 %lnot252, true, !dbg !2636
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !2636
  %35 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr256 = lshr i64 %35, 32, !dbg !2636
  %and257 = and i64 %shr256, 2, !dbg !2636
  %tobool258 = icmp ne i64 %and257, 0, !dbg !2636
  %lnot259 = xor i1 %tobool258, true, !dbg !2636
  %lnot261 = xor i1 %lnot259, true, !dbg !2636
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !2636
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !2636
  %36 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr264 = lshr i64 %36, 32, !dbg !2636
  %and265 = and i64 %shr264, 4, !dbg !2636
  %tobool266 = icmp ne i64 %and265, 0, !dbg !2636
  %lnot267 = xor i1 %tobool266, true, !dbg !2636
  %lnot269 = xor i1 %lnot267, true, !dbg !2636
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !2636
  %add271 = add i32 %add263, %lnot.ext270, !dbg !2636
  %37 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr272 = lshr i64 %37, 32, !dbg !2636
  %and273 = and i64 %shr272, 8, !dbg !2636
  %tobool274 = icmp ne i64 %and273, 0, !dbg !2636
  %lnot275 = xor i1 %tobool274, true, !dbg !2636
  %lnot277 = xor i1 %lnot275, true, !dbg !2636
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !2636
  %add279 = add i32 %add271, %lnot.ext278, !dbg !2636
  %38 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr280 = lshr i64 %38, 32, !dbg !2636
  %and281 = and i64 %shr280, 16, !dbg !2636
  %tobool282 = icmp ne i64 %and281, 0, !dbg !2636
  %lnot283 = xor i1 %tobool282, true, !dbg !2636
  %lnot285 = xor i1 %lnot283, true, !dbg !2636
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !2636
  %add287 = add i32 %add279, %lnot.ext286, !dbg !2636
  %39 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr288 = lshr i64 %39, 32, !dbg !2636
  %and289 = and i64 %shr288, 32, !dbg !2636
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2636
  %lnot291 = xor i1 %tobool290, true, !dbg !2636
  %lnot293 = xor i1 %lnot291, true, !dbg !2636
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !2636
  %add295 = add i32 %add287, %lnot.ext294, !dbg !2636
  %40 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr296 = lshr i64 %40, 32, !dbg !2636
  %and297 = and i64 %shr296, 64, !dbg !2636
  %tobool298 = icmp ne i64 %and297, 0, !dbg !2636
  %lnot299 = xor i1 %tobool298, true, !dbg !2636
  %lnot301 = xor i1 %lnot299, true, !dbg !2636
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !2636
  %add303 = add i32 %add295, %lnot.ext302, !dbg !2636
  %41 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr304 = lshr i64 %41, 32, !dbg !2636
  %and305 = and i64 %shr304, 128, !dbg !2636
  %tobool306 = icmp ne i64 %and305, 0, !dbg !2636
  %lnot307 = xor i1 %tobool306, true, !dbg !2636
  %lnot309 = xor i1 %lnot307, true, !dbg !2636
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !2636
  %add311 = add i32 %add303, %lnot.ext310, !dbg !2636
  %42 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr312 = lshr i64 %42, 32, !dbg !2636
  %shr313 = lshr i64 %shr312, 8, !dbg !2636
  %and314 = and i64 %shr313, 1, !dbg !2636
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2636
  %lnot316 = xor i1 %tobool315, true, !dbg !2636
  %lnot318 = xor i1 %lnot316, true, !dbg !2636
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !2636
  %43 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr320 = lshr i64 %43, 32, !dbg !2636
  %shr321 = lshr i64 %shr320, 8, !dbg !2636
  %and322 = and i64 %shr321, 2, !dbg !2636
  %tobool323 = icmp ne i64 %and322, 0, !dbg !2636
  %lnot324 = xor i1 %tobool323, true, !dbg !2636
  %lnot326 = xor i1 %lnot324, true, !dbg !2636
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !2636
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !2636
  %44 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr329 = lshr i64 %44, 32, !dbg !2636
  %shr330 = lshr i64 %shr329, 8, !dbg !2636
  %and331 = and i64 %shr330, 4, !dbg !2636
  %tobool332 = icmp ne i64 %and331, 0, !dbg !2636
  %lnot333 = xor i1 %tobool332, true, !dbg !2636
  %lnot335 = xor i1 %lnot333, true, !dbg !2636
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !2636
  %add337 = add i32 %add328, %lnot.ext336, !dbg !2636
  %45 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr338 = lshr i64 %45, 32, !dbg !2636
  %shr339 = lshr i64 %shr338, 8, !dbg !2636
  %and340 = and i64 %shr339, 8, !dbg !2636
  %tobool341 = icmp ne i64 %and340, 0, !dbg !2636
  %lnot342 = xor i1 %tobool341, true, !dbg !2636
  %lnot344 = xor i1 %lnot342, true, !dbg !2636
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !2636
  %add346 = add i32 %add337, %lnot.ext345, !dbg !2636
  %46 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr347 = lshr i64 %46, 32, !dbg !2636
  %shr348 = lshr i64 %shr347, 8, !dbg !2636
  %and349 = and i64 %shr348, 16, !dbg !2636
  %tobool350 = icmp ne i64 %and349, 0, !dbg !2636
  %lnot351 = xor i1 %tobool350, true, !dbg !2636
  %lnot353 = xor i1 %lnot351, true, !dbg !2636
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !2636
  %add355 = add i32 %add346, %lnot.ext354, !dbg !2636
  %47 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr356 = lshr i64 %47, 32, !dbg !2636
  %shr357 = lshr i64 %shr356, 8, !dbg !2636
  %and358 = and i64 %shr357, 32, !dbg !2636
  %tobool359 = icmp ne i64 %and358, 0, !dbg !2636
  %lnot360 = xor i1 %tobool359, true, !dbg !2636
  %lnot362 = xor i1 %lnot360, true, !dbg !2636
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !2636
  %add364 = add i32 %add355, %lnot.ext363, !dbg !2636
  %48 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr365 = lshr i64 %48, 32, !dbg !2636
  %shr366 = lshr i64 %shr365, 8, !dbg !2636
  %and367 = and i64 %shr366, 64, !dbg !2636
  %tobool368 = icmp ne i64 %and367, 0, !dbg !2636
  %lnot369 = xor i1 %tobool368, true, !dbg !2636
  %lnot371 = xor i1 %lnot369, true, !dbg !2636
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !2636
  %add373 = add i32 %add364, %lnot.ext372, !dbg !2636
  %49 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr374 = lshr i64 %49, 32, !dbg !2636
  %shr375 = lshr i64 %shr374, 8, !dbg !2636
  %and376 = and i64 %shr375, 128, !dbg !2636
  %tobool377 = icmp ne i64 %and376, 0, !dbg !2636
  %lnot378 = xor i1 %tobool377, true, !dbg !2636
  %lnot380 = xor i1 %lnot378, true, !dbg !2636
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !2636
  %add382 = add i32 %add373, %lnot.ext381, !dbg !2636
  %add383 = add i32 %add311, %add382, !dbg !2636
  %50 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr384 = lshr i64 %50, 32, !dbg !2636
  %shr385 = lshr i64 %shr384, 16, !dbg !2636
  %and386 = and i64 %shr385, 1, !dbg !2636
  %tobool387 = icmp ne i64 %and386, 0, !dbg !2636
  %lnot388 = xor i1 %tobool387, true, !dbg !2636
  %lnot390 = xor i1 %lnot388, true, !dbg !2636
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !2636
  %51 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr392 = lshr i64 %51, 32, !dbg !2636
  %shr393 = lshr i64 %shr392, 16, !dbg !2636
  %and394 = and i64 %shr393, 2, !dbg !2636
  %tobool395 = icmp ne i64 %and394, 0, !dbg !2636
  %lnot396 = xor i1 %tobool395, true, !dbg !2636
  %lnot398 = xor i1 %lnot396, true, !dbg !2636
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !2636
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !2636
  %52 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr401 = lshr i64 %52, 32, !dbg !2636
  %shr402 = lshr i64 %shr401, 16, !dbg !2636
  %and403 = and i64 %shr402, 4, !dbg !2636
  %tobool404 = icmp ne i64 %and403, 0, !dbg !2636
  %lnot405 = xor i1 %tobool404, true, !dbg !2636
  %lnot407 = xor i1 %lnot405, true, !dbg !2636
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !2636
  %add409 = add i32 %add400, %lnot.ext408, !dbg !2636
  %53 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr410 = lshr i64 %53, 32, !dbg !2636
  %shr411 = lshr i64 %shr410, 16, !dbg !2636
  %and412 = and i64 %shr411, 8, !dbg !2636
  %tobool413 = icmp ne i64 %and412, 0, !dbg !2636
  %lnot414 = xor i1 %tobool413, true, !dbg !2636
  %lnot416 = xor i1 %lnot414, true, !dbg !2636
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !2636
  %add418 = add i32 %add409, %lnot.ext417, !dbg !2636
  %54 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr419 = lshr i64 %54, 32, !dbg !2636
  %shr420 = lshr i64 %shr419, 16, !dbg !2636
  %and421 = and i64 %shr420, 16, !dbg !2636
  %tobool422 = icmp ne i64 %and421, 0, !dbg !2636
  %lnot423 = xor i1 %tobool422, true, !dbg !2636
  %lnot425 = xor i1 %lnot423, true, !dbg !2636
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !2636
  %add427 = add i32 %add418, %lnot.ext426, !dbg !2636
  %55 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr428 = lshr i64 %55, 32, !dbg !2636
  %shr429 = lshr i64 %shr428, 16, !dbg !2636
  %and430 = and i64 %shr429, 32, !dbg !2636
  %tobool431 = icmp ne i64 %and430, 0, !dbg !2636
  %lnot432 = xor i1 %tobool431, true, !dbg !2636
  %lnot434 = xor i1 %lnot432, true, !dbg !2636
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !2636
  %add436 = add i32 %add427, %lnot.ext435, !dbg !2636
  %56 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr437 = lshr i64 %56, 32, !dbg !2636
  %shr438 = lshr i64 %shr437, 16, !dbg !2636
  %and439 = and i64 %shr438, 64, !dbg !2636
  %tobool440 = icmp ne i64 %and439, 0, !dbg !2636
  %lnot441 = xor i1 %tobool440, true, !dbg !2636
  %lnot443 = xor i1 %lnot441, true, !dbg !2636
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !2636
  %add445 = add i32 %add436, %lnot.ext444, !dbg !2636
  %57 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr446 = lshr i64 %57, 32, !dbg !2636
  %shr447 = lshr i64 %shr446, 16, !dbg !2636
  %and448 = and i64 %shr447, 128, !dbg !2636
  %tobool449 = icmp ne i64 %and448, 0, !dbg !2636
  %lnot450 = xor i1 %tobool449, true, !dbg !2636
  %lnot452 = xor i1 %lnot450, true, !dbg !2636
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !2636
  %add454 = add i32 %add445, %lnot.ext453, !dbg !2636
  %58 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr455 = lshr i64 %58, 32, !dbg !2636
  %shr456 = lshr i64 %shr455, 16, !dbg !2636
  %shr457 = lshr i64 %shr456, 8, !dbg !2636
  %and458 = and i64 %shr457, 1, !dbg !2636
  %tobool459 = icmp ne i64 %and458, 0, !dbg !2636
  %lnot460 = xor i1 %tobool459, true, !dbg !2636
  %lnot462 = xor i1 %lnot460, true, !dbg !2636
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !2636
  %59 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr464 = lshr i64 %59, 32, !dbg !2636
  %shr465 = lshr i64 %shr464, 16, !dbg !2636
  %shr466 = lshr i64 %shr465, 8, !dbg !2636
  %and467 = and i64 %shr466, 2, !dbg !2636
  %tobool468 = icmp ne i64 %and467, 0, !dbg !2636
  %lnot469 = xor i1 %tobool468, true, !dbg !2636
  %lnot471 = xor i1 %lnot469, true, !dbg !2636
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !2636
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !2636
  %60 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr474 = lshr i64 %60, 32, !dbg !2636
  %shr475 = lshr i64 %shr474, 16, !dbg !2636
  %shr476 = lshr i64 %shr475, 8, !dbg !2636
  %and477 = and i64 %shr476, 4, !dbg !2636
  %tobool478 = icmp ne i64 %and477, 0, !dbg !2636
  %lnot479 = xor i1 %tobool478, true, !dbg !2636
  %lnot481 = xor i1 %lnot479, true, !dbg !2636
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !2636
  %add483 = add i32 %add473, %lnot.ext482, !dbg !2636
  %61 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr484 = lshr i64 %61, 32, !dbg !2636
  %shr485 = lshr i64 %shr484, 16, !dbg !2636
  %shr486 = lshr i64 %shr485, 8, !dbg !2636
  %and487 = and i64 %shr486, 8, !dbg !2636
  %tobool488 = icmp ne i64 %and487, 0, !dbg !2636
  %lnot489 = xor i1 %tobool488, true, !dbg !2636
  %lnot491 = xor i1 %lnot489, true, !dbg !2636
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !2636
  %add493 = add i32 %add483, %lnot.ext492, !dbg !2636
  %62 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr494 = lshr i64 %62, 32, !dbg !2636
  %shr495 = lshr i64 %shr494, 16, !dbg !2636
  %shr496 = lshr i64 %shr495, 8, !dbg !2636
  %and497 = and i64 %shr496, 16, !dbg !2636
  %tobool498 = icmp ne i64 %and497, 0, !dbg !2636
  %lnot499 = xor i1 %tobool498, true, !dbg !2636
  %lnot501 = xor i1 %lnot499, true, !dbg !2636
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !2636
  %add503 = add i32 %add493, %lnot.ext502, !dbg !2636
  %63 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr504 = lshr i64 %63, 32, !dbg !2636
  %shr505 = lshr i64 %shr504, 16, !dbg !2636
  %shr506 = lshr i64 %shr505, 8, !dbg !2636
  %and507 = and i64 %shr506, 32, !dbg !2636
  %tobool508 = icmp ne i64 %and507, 0, !dbg !2636
  %lnot509 = xor i1 %tobool508, true, !dbg !2636
  %lnot511 = xor i1 %lnot509, true, !dbg !2636
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !2636
  %add513 = add i32 %add503, %lnot.ext512, !dbg !2636
  %64 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr514 = lshr i64 %64, 32, !dbg !2636
  %shr515 = lshr i64 %shr514, 16, !dbg !2636
  %shr516 = lshr i64 %shr515, 8, !dbg !2636
  %and517 = and i64 %shr516, 64, !dbg !2636
  %tobool518 = icmp ne i64 %and517, 0, !dbg !2636
  %lnot519 = xor i1 %tobool518, true, !dbg !2636
  %lnot521 = xor i1 %lnot519, true, !dbg !2636
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !2636
  %add523 = add i32 %add513, %lnot.ext522, !dbg !2636
  %65 = load i64, ptr %w.addr, align 8, !dbg !2636
  %shr524 = lshr i64 %65, 32, !dbg !2636
  %shr525 = lshr i64 %shr524, 16, !dbg !2636
  %shr526 = lshr i64 %shr525, 8, !dbg !2636
  %and527 = and i64 %shr526, 128, !dbg !2636
  %tobool528 = icmp ne i64 %and527, 0, !dbg !2636
  %lnot529 = xor i1 %tobool528, true, !dbg !2636
  %lnot531 = xor i1 %lnot529, true, !dbg !2636
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !2636
  %add533 = add i32 %add523, %lnot.ext532, !dbg !2636
  %add534 = add i32 %add454, %add533, !dbg !2636
  %add535 = add i32 %add383, %add534, !dbg !2636
  %add536 = add i32 %add248, %add535, !dbg !2636
  %conv = zext i32 %add536 to i64, !dbg !2636
  br label %cond.end, !dbg !2636

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !2636
  %call = call i64 @__arch_hweight64(i64 noundef %66) #15, !dbg !2636
  br label %cond.end, !dbg !2636

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !2636
  ret i64 %cond, !dbg !2637
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2638 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #6 align 16 !dbg !2639 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2644, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #14, !dbg !2647
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2645, metadata !DIExpression()), !dbg !2648
  %0 = load i64, ptr %w.addr, align 8, !dbg !2649
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #17, !dbg !2650, !srcloc !2651
  store i64 %1, ptr %res, align 8, !dbg !2650
  %2 = load i64, ptr %res, align 8, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #14, !dbg !2653
  ret i64 %2, !dbg !2654
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2655 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2659, metadata !DIExpression()), !dbg !2661
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2660, metadata !DIExpression()), !dbg !2662
  %0 = load i64, ptr %size.addr, align 8, !dbg !2663
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2664
  %or = or i32 %1, 256, !dbg !2665
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !2666
  ret ptr %call, !dbg !2667
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !2668 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !2672
  ret i64 %call, !dbg !2673
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !2674 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2678, metadata !DIExpression()), !dbg !2679
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2680
  %and = and i64 %0, 512, !dbg !2681
  %tobool = icmp ne i64 %and, 0, !dbg !2682
  %lnot = xor i1 %tobool, true, !dbg !2682
  %lnot.ext = zext i1 %lnot to i32, !dbg !2682
  ret i32 %lnot.ext, !dbg !2683
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !2684 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2686, metadata !DIExpression()), !dbg !2691
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2687, metadata !DIExpression()), !dbg !2692
  %0 = load i64, ptr %size.addr, align 8, !dbg !2693
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2694
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2695

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2696
  %tobool = icmp ne i64 %2, 0, !dbg !2696
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2697

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2698
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2688, metadata !DIExpression()), !dbg !2699
  %3 = load i64, ptr %size.addr, align 8, !dbg !2700
  %cmp = icmp ugt i64 %3, 8192, !dbg !2702
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2703

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2704
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2705
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2706
  store ptr %call, ptr %retval, align 8, !dbg !2707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2707

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2708
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2708
  store i32 %call2, ptr %index, align 4, !dbg !2709
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2710
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2711
  %9 = ptrtoint ptr %8 to i64, !dbg !2711
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2712
  %idxprom = zext i32 %call3 to i64, !dbg !2713
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2713
  %10 = load i32, ptr %index, align 4, !dbg !2714
  %idxprom4 = zext i32 %10 to i64, !dbg !2713
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2713
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2713
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2715
  %13 = load i64, ptr %size.addr, align 8, !dbg !2716
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2717
  store ptr %call6, ptr %retval, align 8, !dbg !2718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2718

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2719
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2720
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2721
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2722
  store ptr %call8, ptr %retval, align 8, !dbg !2723
  br label %return, !dbg !2723

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2724
  ret ptr %16, !dbg !2724
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2725 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !2726 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2730, metadata !DIExpression()), !dbg !2732
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2731, metadata !DIExpression()), !dbg !2733
  %0 = load i64, ptr %size.addr, align 8, !dbg !2734
  %tobool = icmp ne i64 %0, 0, !dbg !2734
  br i1 %tobool, label %if.end, label %if.then, !dbg !2736

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2737
  br label %return, !dbg !2737

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2738
  %cmp = icmp ule i64 %1, 8, !dbg !2740
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2741

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2742
  br label %return, !dbg !2742

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2743
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2745
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2746

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2747
  %cmp4 = icmp ule i64 %3, 96, !dbg !2748
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2749

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2750
  br label %return, !dbg !2750

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2751
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2753
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2754

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2755
  %cmp9 = icmp ule i64 %5, 192, !dbg !2756
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2757

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2759
  %cmp12 = icmp ule i64 %6, 8, !dbg !2761
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2762

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2763
  br label %return, !dbg !2763

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2764
  %cmp15 = icmp ule i64 %7, 16, !dbg !2766
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2767

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2768
  br label %return, !dbg !2768

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2769
  %cmp18 = icmp ule i64 %8, 32, !dbg !2771
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2772

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2773
  br label %return, !dbg !2773

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2774
  %cmp21 = icmp ule i64 %9, 64, !dbg !2776
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2777

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2778
  br label %return, !dbg !2778

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2779
  %cmp24 = icmp ule i64 %10, 128, !dbg !2781
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2782

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2783
  br label %return, !dbg !2783

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2784
  %cmp27 = icmp ule i64 %11, 256, !dbg !2786
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2787

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2788
  br label %return, !dbg !2788

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2789
  %cmp30 = icmp ule i64 %12, 512, !dbg !2791
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2792

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2793
  br label %return, !dbg !2793

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2794
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2796
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2797

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2798
  br label %return, !dbg !2798

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2799
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2801
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2802

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2803
  br label %return, !dbg !2803

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2804
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2806
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2807

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2808
  br label %return, !dbg !2808

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2809
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2811
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2812

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2813
  br label %return, !dbg !2813

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2814
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2816
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2817

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2818
  br label %return, !dbg !2818

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2819
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2821
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2822

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2823
  br label %return, !dbg !2823

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2824
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2826
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2827

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2828
  br label %return, !dbg !2828

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2829
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2831
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2832

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2833
  br label %return, !dbg !2833

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2834
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2836
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2837

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2838
  br label %return, !dbg !2838

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2839
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2841
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2842

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2844
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2846
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2847

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2848
  br label %return, !dbg !2848

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2849
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2851
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2852

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2853
  br label %return, !dbg !2853

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2854, !range !2051, !noundef !435
  %tobool69 = trunc i8 %25 to i1, !dbg !2854
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2856

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2857

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #19, !dbg !2858, !srcloc !2861
  unreachable, !dbg !2858

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2862

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2863

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2864

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2866

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2864

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #14, !dbg !2868, !srcloc !2870
  br label %do.end75, !dbg !2868

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2864

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2871
  br label %return, !dbg !2871

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2872
  ret i32 %26, !dbg !2872
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2873 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2879 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2883, metadata !DIExpression()), !dbg !2885
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2884, metadata !DIExpression()), !dbg !2886
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2887
  %and = and i32 %0, 17, !dbg !2887
  %cmp = icmp eq i32 %and, 0, !dbg !2887
  %lnot = xor i1 %cmp, true, !dbg !2887
  %lnot1 = xor i1 %lnot, true, !dbg !2887
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2887
  %conv = sext i32 %lnot.ext to i64, !dbg !2887
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2887
  %tobool = icmp ne i64 %expval, 0, !dbg !2887
  br i1 %tobool, label %if.then, label %if.end, !dbg !2889

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2890
  br label %return, !dbg !2890

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2891
  %and2 = and i32 %1, 1, !dbg !2893
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2893
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2894

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2895
  br label %return, !dbg !2895

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2896
  br label %return, !dbg !2896

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2898
  ret i32 %2, !dbg !2898
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2899 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2900 dso_local void @__compiletime_assert_125() #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2901 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !2904
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !2906, !srcloc !2907
  %0 = load i64, ptr %flags, align 8, !dbg !2908
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !2909
  ret i64 %0, !dbg !2910
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !2911 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  %0 = load i64, ptr %word.addr, align 8, !dbg !2915
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #20, !dbg !2916, !srcloc !2917
  store i64 %1, ptr %word.addr, align 8, !dbg !2916
  %2 = load i64, ptr %word.addr, align 8, !dbg !2918
  ret i64 %2, !dbg !2919
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2920 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { nounwind memory(none) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }
attributes #20 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "apple_prp_guid", scope: !2, file: !3, line: 14, type: !145, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/x86/.apple.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22apple\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/x86/apple.ll drivers/acpi/x86/apple.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/x86/apple.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f75e46ed3808c762ccd9cb4da2ce4906")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !89}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !79, line: 30, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!82 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!83 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 10, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "false", value: 0)
!88 = !DIEnumerator(name: "true", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !90, line: 364, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!93 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!95 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!97 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!98 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!99 = !{!100, !102, !104, !105, !107, !114, !115, !111, !7, !103, !46}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !101, line: 154, baseType: !7)
!101 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !101, line: 42, baseType: !103)
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !108, line: 127, baseType: !109)
!108 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !110, line: 23, baseType: !111)
!110 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !112, line: 31, baseType: !113)
!112 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!113 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!117 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!118 = !{!119, !125, !130, !135, !0, !140}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 24, elements: !123)
!122 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 432, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 54)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 416, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 52)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 200, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 25)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !90, line: 480, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 168, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 21)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !147, line: 17, baseType: !148)
!147 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 15, size: 128, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !148, file: !147, line: 16, baseType: !151, size: 128)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !154)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !112, line: 21, baseType: !153)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !{!155}
!155 = !DISubrange(count: 16)
!156 = !{i32 7, !"Dwarf Version", i32 5}
!157 = !{i32 2, !"Debug Info Version", i32 3}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 8, !"cf-protection-branch", i32 1}
!160 = !{i32 4, !"function_return_thunk_extern", i32 1}
!161 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!162 = !{i32 1, !"Code Model", i32 2}
!163 = !{i32 1, !"override-stack-alignment", i32 8}
!164 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!165 = distinct !DISubprogram(name: "acpi_extract_apple_properties", scope: !3, file: !3, line: 28, type: !166, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2006)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !170, line: 367, size: 11200, elements: !171)
!170 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!171 = !{!172, !175, !176, !178, !1753, !1754, !1755, !1764, !1782, !1861, !1891, !1915, !1936, !1942, !1951, !1981, !1995, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !169, file: !170, line: 368, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !110, line: 21, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !112, line: 27, baseType: !7)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !169, file: !170, line: 369, baseType: !46, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !169, file: !170, line: 370, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !108, line: 424, baseType: !104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !169, file: !170, line: 371, baseType: !179, size: 512, offset: 128)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !180, line: 41, size: 512, elements: !181)
!180 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!181 = !{!182, !184, !1749, !1750, !1751, !1752}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !179, file: !180, line: 42, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !179, file: !180, line: 43, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !180, line: 125, size: 1408, elements: !188)
!188 = !{!189, !193, !197, !205, !1679, !1680, !1684, !1688, !1692, !1696, !1700, !1701, !1705, !1709, !1713, !1724, !1725, !1726, !1727, !1737, !1741, !1745}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !187, file: !180, line: 126, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!183, !183}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !187, file: !180, line: 127, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !183}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !187, file: !180, line: 128, baseType: !198, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !203}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !101, line: 35, baseType: !202)
!202 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !187, file: !180, line: 129, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !203, !211}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !214)
!214 = !{!215, !865, !867, !870, !871, !922, !1384, !1385, !1386, !1387, !1388, !1395, !1565, !1578, !1588, !1592, !1594, !1595, !1596, !1600, !1607, !1608, !1611, !1614, !1618, !1619, !1620, !1623, !1624, !1625, !1626, !1656, !1657, !1658, !1661, !1664, !1673, !1674, !1675, !1676, !1677, !1678}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !213, file: !26, line: 706, baseType: !216, size: 512)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !217, line: 64, size: 512, elements: !218)
!217 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!218 = !{!219, !222, !228, !230, !313, !735, !850, !860, !861, !862, !863, !864}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !217, line: 65, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !216, file: !217, line: 66, baseType: !223, size: 128, offset: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !101, line: 190, size: 128, elements: !224)
!224 = !{!225, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !101, line: 191, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !223, file: !101, line: 191, baseType: !226, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !217, line: 67, baseType: !229, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !216, file: !217, line: 68, baseType: !231, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !217, line: 168, size: 768, elements: !233)
!233 = !{!234, !235, !274, !275}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !232, file: !217, line: 169, baseType: !223, size: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !232, file: !217, line: 170, baseType: !236, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !237, line: 29, baseType: !238)
!237 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !237, line: 17, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !237, line: 18, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 18, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !241, file: !237, line: 19, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !245, line: 14, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !244, file: !245, line: 15, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !249, line: 44, baseType: !250)
!249 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !249, line: 14, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !249, line: 15, baseType: !253, size: 32)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !249, line: 15, size: 32, elements: !254)
!254 = !{!255, !260, !266}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !253, file: !249, line: 16, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !101, line: 174, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 172, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !257, file: !101, line: 173, baseType: !46, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !249, line: 24, baseType: !261, size: 16)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !253, file: !249, line: 24, size: 16, elements: !262)
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !261, file: !249, line: 25, baseType: !264, size: 8)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !110, line: 17, baseType: !152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !261, file: !249, line: 26, baseType: !264, size: 8, offset: 8)
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !249, line: 28, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !253, file: !249, line: 28, size: 32, elements: !268)
!268 = !{!269, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !267, file: !249, line: 29, baseType: !270, size: 16)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !110, line: 19, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !112, line: 24, baseType: !272)
!272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !267, file: !249, line: 30, baseType: !270, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !232, file: !217, line: 171, baseType: !216, size: 512, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !232, file: !217, line: 172, baseType: !276, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !217, line: 133, size: 192, elements: !279)
!279 = !{!280, !287, !292}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !278, file: !217, line: 134, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!46, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !217, line: 135, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!220, !285}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !278, file: !217, line: 136, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!46, !285, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !217, line: 125, size: 20736, elements: !299)
!299 = !{!300, !303, !307, !308, !312}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !298, file: !217, line: 126, baseType: !301, size: 192)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 192, elements: !123)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !298, file: !217, line: 127, baseType: !304, size: 4096, offset: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 4096, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !298, file: !217, line: 128, baseType: !46, size: 32, offset: 4288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !298, file: !217, line: 129, baseType: !309, size: 16384, offset: 4320)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 16384, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 2048)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !298, file: !217, line: 130, baseType: !46, size: 32, offset: 20704)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !216, file: !217, line: 69, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !217, line: 116, size: 384, elements: !317)
!317 = !{!318, !322, !349, !681, !712, !716}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !316, file: !217, line: 117, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !229}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !316, file: !217, line: 118, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !326, line: 254, size: 128, elements: !327)
!326 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!327 = !{!328, !342}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !325, file: !326, line: 255, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !229, !336, !302}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 66, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !334, line: 73, baseType: !335)
!334 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !334, line: 15, baseType: !117)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !326, line: 30, size: 128, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !326, line: 31, baseType: !220, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !337, file: !326, line: 32, baseType: !341, size: 16, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !101, line: 24, baseType: !272)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !325, file: !326, line: 256, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!332, !229, !336, !220, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 61, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !334, line: 72, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !334, line: 16, baseType: !103)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !316, file: !217, line: 119, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !326, line: 84, size: 320, elements: !354)
!354 = !{!355, !356, !360, !677, !679}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !326, line: 85, baseType: !220, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !353, file: !326, line: 86, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!341, !229, !336, !46}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !353, file: !326, line: 88, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!341, !229, !364, !46}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !326, line: 175, size: 512, elements: !366)
!366 = !{!367, !368, !369, !370, !377, !387, !388}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !365, file: !326, line: 176, baseType: !337, size: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !365, file: !326, line: 177, baseType: !346, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !365, file: !326, line: 178, baseType: !104, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !365, file: !326, line: 179, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !376, line: 351, flags: DIFlagFwdDecl)
!376 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!377 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !365, file: !326, line: 180, baseType: !378, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!332, !381, !229, !364, !302, !384, !346}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !383, line: 537, flags: DIFlagFwdDecl)
!383 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !101, line: 52, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !334, line: 88, baseType: !386)
!386 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !365, file: !326, line: 182, baseType: !378, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !365, file: !326, line: 184, baseType: !389, size: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!46, !381, !229, !364, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !394, line: 625, size: 1344, elements: !395)
!394 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!395 = !{!396, !413, !628, !634, !641, !642, !647, !648, !660, !661, !664, !668, !669, !670, !671, !672, !675}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 628, baseType: !397, size: 128)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 628, size: 128, elements: !398)
!398 = !{!399, !404}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !394, line: 629, baseType: !400, size: 128)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !394, line: 629, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !400, file: !394, line: 631, baseType: !103, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !400, file: !394, line: 632, baseType: !103, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !397, file: !394, line: 635, baseType: !405, size: 128, align: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !101, line: 232, size: 128, align: 64, elements: !406)
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !101, line: 233, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !405, file: !101, line: 234, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !408}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !393, file: !394, line: 639, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !394, line: 733, size: 10240, elements: !416)
!416 = !{!417, !624}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !394, line: 734, baseType: !418, size: 10240)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !394, line: 734, size: 10240, elements: !419)
!419 = !{!420, !424, !438, !442, !443, !444, !445, !446, !447, !455, !456, !457, !463, !464, !473, !474, !475, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !520, !534, !537, !590, !591, !592, !595, !598, !599, !602, !603, !604, !611, !612}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !394, line: 739, baseType: !421, size: 512, align: 512)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !394, line: 739, size: 512, align: 512, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !421, file: !394, line: 747, baseType: !256, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !418, file: !394, line: 750, baseType: !425, size: 128, offset: 512)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !426, line: 218, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!427 = !{!428, !436, !437}
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 219, baseType: !429, size: 32)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 219, size: 32, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !429, file: !426, line: 220, baseType: !236, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !429, file: !426, line: 221, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !426, line: 197, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !426, line: 197, elements: !435)
!435 = !{}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !425, file: !426, line: 223, baseType: !7, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !425, file: !426, line: 224, baseType: !104, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !418, file: !394, line: 752, baseType: !439, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!103, !381, !103, !103, !103, !103}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !418, file: !394, line: 756, baseType: !103, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !418, file: !394, line: 757, baseType: !103, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !418, file: !394, line: 760, baseType: !103, size: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !418, file: !394, line: 761, baseType: !103, size: 64, offset: 896)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !418, file: !394, line: 763, baseType: !103, size: 64, offset: 960)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !418, file: !394, line: 764, baseType: !448, size: 64, offset: 1024)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !383, line: 299, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 299, size: 64, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !450, file: !383, line: 299, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !454, line: 18, baseType: !103)
!454 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !418, file: !394, line: 773, baseType: !256, size: 32, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !418, file: !394, line: 785, baseType: !256, size: 32, offset: 1120)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !418, file: !394, line: 795, baseType: !458, size: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !394, line: 726, size: 128, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !459, file: !394, line: 727, baseType: !109, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !459, file: !394, line: 728, baseType: !46, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !418, file: !394, line: 801, baseType: !103, size: 64, offset: 1216)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !418, file: !394, line: 804, baseType: !465, size: 64, offset: 1280)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !466, line: 13, baseType: !467)
!466 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !101, line: 181, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 179, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !468, file: !101, line: 180, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !110, line: 22, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !112, line: 30, baseType: !386)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !418, file: !394, line: 806, baseType: !46, size: 32, offset: 1344)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !418, file: !394, line: 808, baseType: !236, size: 32, offset: 1376)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !418, file: !394, line: 823, baseType: !476, size: 320, offset: 1408)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !477, line: 48, size: 320, elements: !478)
!477 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!478 = !{!479, !480, !481, !486, !488}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !476, file: !477, line: 49, baseType: !465, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !476, file: !477, line: 55, baseType: !465, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !476, file: !477, line: 57, baseType: !482, size: 32, offset: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !483, line: 15, size: 32, elements: !484)
!483 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !482, file: !483, line: 20, baseType: !256, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !476, file: !477, line: 59, baseType: !487, size: 32, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !245, line: 23, baseType: !244)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !476, file: !477, line: 60, baseType: !223, size: 128, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !418, file: !394, line: 825, baseType: !223, size: 128, offset: 1728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !418, file: !394, line: 845, baseType: !46, size: 32, offset: 1856)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !418, file: !394, line: 849, baseType: !103, size: 64, offset: 1920)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !418, file: !394, line: 850, baseType: !103, size: 64, offset: 1984)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !418, file: !394, line: 852, baseType: !103, size: 64, offset: 2048)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !418, file: !394, line: 853, baseType: !103, size: 64, offset: 2112)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !418, file: !394, line: 854, baseType: !467, size: 64, offset: 2176)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !418, file: !394, line: 855, baseType: !103, size: 64, offset: 2240)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !418, file: !394, line: 856, baseType: !103, size: 64, offset: 2304)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !418, file: !394, line: 857, baseType: !103, size: 64, offset: 2368)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !418, file: !394, line: 858, baseType: !103, size: 64, offset: 2432)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !418, file: !394, line: 865, baseType: !501, size: 32, offset: 2496)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !502, line: 69, baseType: !503)
!502 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !502, line: 64, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !503, file: !502, line: 65, baseType: !7, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !418, file: !394, line: 867, baseType: !236, size: 32, offset: 2528)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !418, file: !394, line: 869, baseType: !103, size: 64, offset: 2560)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !418, file: !394, line: 869, baseType: !103, size: 64, offset: 2624)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !418, file: !394, line: 869, baseType: !103, size: 64, offset: 2688)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !418, file: !394, line: 869, baseType: !103, size: 64, offset: 2752)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !418, file: !394, line: 870, baseType: !103, size: 64, offset: 2816)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !418, file: !394, line: 870, baseType: !103, size: 64, offset: 2880)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !418, file: !394, line: 870, baseType: !103, size: 64, offset: 2944)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !418, file: !394, line: 871, baseType: !103, size: 64, offset: 3008)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !418, file: !394, line: 871, baseType: !103, size: 64, offset: 3072)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !418, file: !394, line: 871, baseType: !103, size: 64, offset: 3136)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !418, file: !394, line: 871, baseType: !103, size: 64, offset: 3200)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !418, file: !394, line: 873, baseType: !519, size: 3328, offset: 3264)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 3328, elements: !133)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !418, file: !394, line: 875, baseType: !521, size: 1280, offset: 6592)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 1280, elements: !532)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !523, line: 22, size: 320, elements: !524)
!523 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!524 = !{!525, !526, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !523, line: 23, baseType: !487, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !523, line: 24, baseType: !471, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !522, file: !523, line: 26, baseType: !223, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !522, file: !523, line: 28, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !110, line: 20, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !112, line: 26, baseType: !46)
!532 = !{!533}
!533 = !DISubrange(count: 4)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !418, file: !394, line: 877, baseType: !535, size: 64, offset: 7872)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !394, line: 877, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !418, file: !394, line: 880, baseType: !538, size: 1088, offset: 7936)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !539, line: 72, baseType: !540)
!539 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 23, size: 1088, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !549, !550, !558, !559, !584, !585, !586}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !540, file: !539, line: 28, baseType: !109, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !540, file: !539, line: 38, baseType: !467, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !540, file: !539, line: 40, baseType: !103, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !540, file: !539, line: 43, baseType: !476, size: 320, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !540, file: !539, line: 44, baseType: !547, size: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !539, line: 44, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !539, line: 48, baseType: !103, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !540, file: !539, line: 59, baseType: !551, size: 256, offset: 640)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !552, line: 66, size: 256, elements: !553)
!552 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!553 = !{!554, !555, !556, !557}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !551, file: !552, line: 67, baseType: !465, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !551, file: !552, line: 68, baseType: !487, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !551, file: !552, line: 70, baseType: !482, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !551, file: !552, line: 72, baseType: !223, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !540, file: !539, line: 60, baseType: !104, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !540, file: !539, line: 61, baseType: !560, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !563, line: 13, size: 1216, elements: !564)
!563 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !562, file: !563, line: 14, baseType: !104, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !563, line: 15, baseType: !103, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !562, file: !563, line: 17, baseType: !103, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !562, file: !563, line: 17, baseType: !103, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !562, file: !563, line: 18, baseType: !103, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !562, file: !563, line: 18, baseType: !103, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !562, file: !563, line: 19, baseType: !209, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !562, file: !563, line: 21, baseType: !117, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !562, file: !563, line: 23, baseType: !117, size: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !562, file: !563, line: 24, baseType: !117, size: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !562, file: !563, line: 25, baseType: !117, size: 64, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !562, file: !563, line: 26, baseType: !117, size: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !562, file: !563, line: 27, baseType: !117, size: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !562, file: !563, line: 28, baseType: !117, size: 64, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !562, file: !563, line: 29, baseType: !117, size: 64, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !562, file: !563, line: 30, baseType: !117, size: 64, offset: 960)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !562, file: !563, line: 31, baseType: !117, size: 64, offset: 1024)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !562, file: !563, line: 32, baseType: !117, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !562, file: !563, line: 33, baseType: !117, size: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !540, file: !539, line: 63, baseType: !256, size: 32, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !540, file: !539, line: 69, baseType: !270, size: 16, offset: 1056)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !540, file: !539, line: 70, baseType: !587, size: 16, offset: 1072)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !110, line: 18, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !112, line: 23, baseType: !589)
!589 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !418, file: !394, line: 882, baseType: !103, size: 64, offset: 9024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !418, file: !394, line: 885, baseType: !236, size: 32, offset: 9088)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !418, file: !394, line: 886, baseType: !593, size: 64, offset: 9152)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !394, line: 732, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !418, file: !394, line: 901, baseType: !596, size: 64, offset: 9216)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !394, line: 901, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !418, file: !394, line: 904, baseType: !381, size: 64, offset: 9280)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !418, file: !394, line: 906, baseType: !600, size: 64, offset: 9344)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !394, line: 906, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !418, file: !394, line: 930, baseType: !256, size: 32, offset: 9408)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !418, file: !394, line: 933, baseType: !256, size: 32, offset: 9440)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !418, file: !394, line: 935, baseType: !605, size: 64, offset: 9472)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !606, line: 103, size: 64, elements: !607)
!606 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !605, file: !606, line: 104, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !606, line: 101, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !418, file: !394, line: 940, baseType: !465, size: 64, offset: 9536)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !418, file: !394, line: 942, baseType: !613, size: 256, offset: 9600)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !614, line: 98, size: 256, elements: !615)
!614 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!615 = !{!616, !617, !618}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !613, file: !614, line: 99, baseType: !465, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !613, file: !614, line: 100, baseType: !223, size: 128, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !613, file: !614, line: 101, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !614, line: 21, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !415, file: !394, line: 986, baseType: !625, offset: 10240)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: -1)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !393, file: !394, line: 640, baseType: !629, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !383, line: 297, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !383, line: 297, size: 64, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !630, file: !383, line: 297, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !454, line: 19, baseType: !103)
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 646, baseType: !635, size: 64, offset: 256)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 646, size: 64, elements: !636)
!636 = !{!637, !640}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !635, file: !394, line: 647, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !394, line: 542, baseType: !103)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !635, file: !394, line: 648, baseType: !639, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !393, file: !394, line: 666, baseType: !46, size: 32, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !393, file: !394, line: 667, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !394, line: 579, size: 320, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !644, file: !394, line: 580, baseType: !476, size: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !393, file: !394, line: 670, baseType: !201, size: 8, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !393, file: !394, line: 681, baseType: !649, size: 256, offset: 512)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !394, line: 678, size: 256, elements: !650)
!650 = !{!651, !659}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !649, file: !394, line: 679, baseType: !652, size: 192, align: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !653, line: 5, size: 192, align: 64, elements: !654)
!653 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!654 = !{!655, !656, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !652, file: !653, line: 6, baseType: !103, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !652, file: !653, line: 7, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !652, file: !653, line: 8, baseType: !657, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !649, file: !394, line: 680, baseType: !103, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !393, file: !394, line: 689, baseType: !223, size: 128, offset: 768)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !393, file: !394, line: 691, baseType: !662, size: 64, offset: 896)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !394, line: 691, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !393, file: !394, line: 694, baseType: !665, size: 64, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !394, line: 694, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !393, file: !394, line: 697, baseType: !103, size: 64, offset: 1024)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !393, file: !394, line: 699, baseType: !381, size: 64, offset: 1088)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !393, file: !394, line: 700, baseType: !104, size: 64, offset: 1152)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !393, file: !394, line: 711, baseType: !465, size: 64, offset: 1216)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !393, file: !394, line: 717, baseType: !673, size: 64, offset: 1280)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !394, line: 717, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !393, file: !394, line: 722, baseType: !676, offset: 1344)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !394, line: 570, elements: !435)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !353, file: !326, line: 90, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !353, file: !326, line: 91, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !316, file: !217, line: 120, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!685, !285}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !688)
!688 = !{!689, !690, !694, !698, !704, !708}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !6, line: 40, baseType: !5, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !687, file: !6, line: 41, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!201}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !687, file: !6, line: 42, baseType: !695, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!104}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !687, file: !6, line: 43, baseType: !699, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!209, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !687, file: !6, line: 44, baseType: !705, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!209}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !687, file: !6, line: 45, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !104}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !316, file: !217, line: 121, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!209, !285}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !316, file: !217, line: 122, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !285, !720, !728}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !722, line: 23, baseType: !723)
!722 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 21, size: 32, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !723, file: !722, line: 22, baseType: !726, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !101, line: 37, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !334, line: 49, baseType: !7)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !722, line: 28, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 26, size: 32, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !730, file: !722, line: 27, baseType: !733, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 38, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !334, line: 50, baseType: !7)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !216, file: !217, line: 70, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !738, line: 190, size: 1152, elements: !739)
!738 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !842, !843, !844, !845, !846, !849}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !738, line: 191, baseType: !256, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !737, file: !738, line: 192, baseType: !256, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !737, file: !738, line: 202, baseType: !736, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !737, file: !738, line: 203, baseType: !220, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !737, file: !738, line: 205, baseType: !652, size: 192, align: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !737, file: !738, line: 207, baseType: !209, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !737, file: !738, line: 208, baseType: !7, size: 32, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !738, line: 209, baseType: !748, size: 256, offset: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !738, line: 209, size: 256, elements: !749)
!749 = !{!750, !762, !766}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !748, file: !738, line: 210, baseType: !751, size: 256)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !738, line: 153, size: 256, elements: !752)
!752 = !{!753, !754, !758, !761}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !751, file: !738, line: 154, baseType: !103, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !751, file: !738, line: 156, baseType: !755, size: 64, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !653, line: 12, size: 64, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !755, file: !653, line: 13, baseType: !657, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !751, file: !738, line: 162, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !738, line: 162, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !751, file: !738, line: 167, baseType: !103, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !748, file: !738, line: 211, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !738, line: 170, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !763, file: !738, line: 171, baseType: !736, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !748, file: !738, line: 212, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !738, line: 174, size: 256, elements: !768)
!768 = !{!769, !837, !840, !841}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !767, file: !738, line: 175, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !738, line: 271, size: 768, elements: !773)
!773 = !{!774, !797, !801, !805, !810, !814, !818, !822, !823, !824, !825, !833}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !772, file: !738, line: 276, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!46, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !738, line: 251, size: 1216, elements: !780)
!780 = !{!781, !782, !783, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !779, file: !738, line: 253, baseType: !736, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !779, file: !738, line: 254, baseType: !381, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !779, file: !738, line: 255, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !786, line: 66, flags: DIFlagFwdDecl)
!786 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!787 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !779, file: !738, line: 256, baseType: !104, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !779, file: !738, line: 259, baseType: !551, size: 256, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !779, file: !738, line: 260, baseType: !551, size: 256, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !779, file: !738, line: 261, baseType: !46, size: 32, offset: 768)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !779, file: !738, line: 262, baseType: !223, size: 128, offset: 832)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !779, file: !738, line: 263, baseType: !302, size: 64, offset: 960)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !779, file: !738, line: 265, baseType: !346, size: 64, offset: 1024)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !779, file: !738, line: 266, baseType: !201, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !779, file: !738, line: 267, baseType: !201, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !779, file: !738, line: 268, baseType: !665, size: 64, offset: 1152)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !772, file: !738, line: 277, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !778}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !772, file: !738, line: 290, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!46, !784, !104}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !772, file: !738, line: 292, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!104, !784, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !772, file: !738, line: 293, baseType: !811, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!104, !784, !104, !809}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !772, file: !738, line: 294, baseType: !815, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !784, !104}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !772, file: !738, line: 296, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!332, !778, !302, !346, !384}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !772, file: !738, line: 306, baseType: !346, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !772, file: !738, line: 313, baseType: !201, size: 8, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !772, file: !738, line: 314, baseType: !819, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !772, file: !738, line: 317, baseType: !826, size: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!829, !778, !831}
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !830, line: 59, baseType: !7)
!830 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !738, line: 31, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !772, file: !738, line: 320, baseType: !834, size: 64, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!46, !778, !392}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !767, file: !738, line: 176, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !738, line: 35, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !767, file: !738, line: 177, baseType: !384, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !767, file: !738, line: 178, baseType: !736, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !737, file: !738, line: 215, baseType: !104, size: 64, offset: 768)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !737, file: !738, line: 221, baseType: !109, size: 64, offset: 832)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !738, line: 223, baseType: !272, size: 16, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !737, file: !738, line: 224, baseType: !341, size: 16, offset: 912)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !737, file: !738, line: 225, baseType: !847, size: 64, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !738, line: 36, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !737, file: !738, line: 227, baseType: !405, size: 128, align: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !216, file: !217, line: 71, baseType: !851, size: 32, offset: 448)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !852, line: 19, size: 32, elements: !853)
!852 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !851, file: !852, line: 20, baseType: !855, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !856, line: 113, baseType: !857)
!856 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !856, line: 111, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !857, file: !856, line: 112, baseType: !256, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !216, file: !217, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !216, file: !217, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !216, file: !217, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !216, file: !217, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !216, file: !217, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !26, line: 707, baseType: !866, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !213, file: !26, line: 709, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !213, file: !26, line: 711, baseType: !220, size: 64, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !26, line: 712, baseType: !872, size: 64, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !875)
!875 = !{!876, !877, !878, !882, !887, !891}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !26, line: 90, baseType: !220, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !874, file: !26, line: 91, baseType: !350, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !874, file: !26, line: 92, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!46, !211, !297}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !874, file: !26, line: 93, baseType: !883, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!302, !211, !886, !720, !728}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !874, file: !26, line: 95, baseType: !888, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !866}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !874, file: !26, line: 97, baseType: !892, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !895)
!895 = !{!896, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !894, file: !38, line: 287, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!46, !866}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !894, file: !38, line: 288, baseType: !888, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !894, file: !38, line: 289, baseType: !897, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !894, file: !38, line: 290, baseType: !897, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !894, file: !38, line: 291, baseType: !897, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !894, file: !38, line: 292, baseType: !897, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !894, file: !38, line: 293, baseType: !897, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !894, file: !38, line: 294, baseType: !897, size: 64, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !894, file: !38, line: 295, baseType: !897, size: 64, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !894, file: !38, line: 296, baseType: !897, size: 64, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !894, file: !38, line: 297, baseType: !897, size: 64, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !894, file: !38, line: 298, baseType: !897, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !894, file: !38, line: 299, baseType: !897, size: 64, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !894, file: !38, line: 300, baseType: !897, size: 64, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !894, file: !38, line: 301, baseType: !897, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !894, file: !38, line: 302, baseType: !897, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !894, file: !38, line: 303, baseType: !897, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !894, file: !38, line: 304, baseType: !897, size: 64, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !894, file: !38, line: 305, baseType: !897, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !894, file: !38, line: 306, baseType: !897, size: 64, offset: 1216)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !894, file: !38, line: 307, baseType: !897, size: 64, offset: 1280)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !894, file: !38, line: 308, baseType: !897, size: 64, offset: 1344)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !894, file: !38, line: 309, baseType: !897, size: 64, offset: 1408)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !213, file: !26, line: 714, baseType: !923, size: 64, offset: 768)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !926, line: 80, size: 1344, elements: !927)
!926 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!927 = !{!928, !929, !930, !931, !932, !933, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1383}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !925, file: !926, line: 81, baseType: !220, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !925, file: !926, line: 82, baseType: !220, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !925, file: !926, line: 83, baseType: !350, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !925, file: !926, line: 84, baseType: !350, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !925, file: !926, line: 85, baseType: !350, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !925, file: !926, line: 87, baseType: !934, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!46, !866, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !939)
!939 = !{!940, !941, !942, !1317, !1318, !1319, !1320, !1336, !1346, !1347, !1348, !1349, !1350, !1358, !1359, !1360, !1361, !1362, !1363}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !938, file: !20, line: 97, baseType: !220, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !938, file: !20, line: 98, baseType: !923, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !938, file: !20, line: 100, baseType: !943, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !945)
!945 = !{!946, !947, !948, !952, !973, !999, !1000, !1001, !1002, !1006, !1009, !1010, !1011, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1074, !1078, !1098, !1116, !1117, !1118, !1119, !1128, !1151, !1152, !1155, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1169, !1170, !1276, !1284, !1285, !1286, !1288, !1292, !1293, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1310, !1311, !1312, !1316}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !944, file: !13, line: 403, baseType: !12, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !944, file: !13, line: 406, baseType: !223, size: 128, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !944, file: !13, line: 409, baseType: !949, size: 448, offset: 192)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 448, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 56)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !944, file: !13, line: 417, baseType: !953, size: 768, offset: 640)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !954)
!954 = !{!955, !956, !957, !958, !961}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !953, file: !13, line: 46, baseType: !216, size: 512)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !953, file: !13, line: 47, baseType: !943, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !953, file: !13, line: 48, baseType: !229, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !953, file: !13, line: 49, baseType: !959, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !953, file: !13, line: 50, baseType: !962, size: 64, offset: 704)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !964, line: 26, size: 256, elements: !965)
!964 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !963, file: !964, line: 27, baseType: !7, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !963, file: !964, line: 28, baseType: !968, size: 192, offset: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !969, line: 43, size: 192, elements: !970)
!969 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !968, file: !969, line: 44, baseType: !487, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !968, file: !969, line: 45, baseType: !223, size: 128, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !944, file: !13, line: 418, baseType: !974, size: 64, offset: 1408)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !976)
!976 = !{!977, !978, !983, !987, !991, !995}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !975, file: !13, line: 54, baseType: !337, size: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !975, file: !13, line: 55, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!332, !974, !982, !302}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !975, file: !13, line: 57, baseType: !984, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!332, !974, !982, !220, !346}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !975, file: !13, line: 59, baseType: !988, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !943, !220}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !975, file: !13, line: 60, baseType: !992, size: 64, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!46, !943}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !975, file: !13, line: 61, baseType: !996, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !943}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !944, file: !13, line: 419, baseType: !220, size: 64, offset: 1472)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !944, file: !13, line: 420, baseType: !220, size: 64, offset: 1536)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !944, file: !13, line: 421, baseType: !229, size: 64, offset: 1600)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !944, file: !13, line: 424, baseType: !1003, size: 64, offset: 1664)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !944, file: !13, line: 425, baseType: !1007, size: 64, offset: 1728)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !944, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !944, file: !13, line: 435, baseType: !551, size: 256, offset: 1856)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !944, file: !13, line: 437, baseType: !1012, size: 64, offset: 2112)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1014, line: 69, size: 320, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1015 = !{!1016, !1017, !1018, !1035, !1037, !1041, !1042}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1013, file: !1014, line: 70, baseType: !220, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1013, file: !1014, line: 71, baseType: !943, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1013, file: !1014, line: 72, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1014, line: 47, size: 256, elements: !1022)
!1022 = !{!1023, !1024, !1030, !1034}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !1014, line: 49, baseType: !7, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1021, file: !1014, line: 51, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!46, !220, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1021, file: !1014, line: 53, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!46, !302, !1028}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1021, file: !1014, line: 55, baseType: !709, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1013, file: !1014, line: 73, baseType: !1036, size: 16, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1013, file: !1014, line: 74, baseType: !1038, size: 8, offset: 208)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !110, line: 16, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !112, line: 20, baseType: !1040)
!1040 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !1014, line: 75, baseType: !264, size: 8, offset: 216)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !1014, line: 76, baseType: !1043, size: 64, offset: 256)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !1014, line: 76, size: 64, elements: !1044)
!1044 = !{!1045, !1046, !1053}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1043, file: !1014, line: 77, baseType: !104, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1043, file: !1014, line: 78, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1014, line: 86, size: 128, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1049, file: !1014, line: 87, baseType: !7, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1049, file: !1014, line: 88, baseType: !302, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1043, file: !1014, line: 79, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1014, line: 92, size: 256, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1062, !1063}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1056, file: !1014, line: 94, baseType: !7, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1056, file: !1014, line: 95, baseType: !7, size: 32, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1056, file: !1014, line: 96, baseType: !1061, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1056, file: !1014, line: 97, baseType: !1019, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1056, file: !1014, line: 98, baseType: !104, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !944, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !944, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !944, file: !13, line: 442, baseType: !1003, size: 64, offset: 2240)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !944, file: !13, line: 443, baseType: !1007, size: 64, offset: 2304)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !944, file: !13, line: 444, baseType: !201, size: 8, offset: 2368)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !944, file: !13, line: 451, baseType: !201, size: 8, offset: 2376)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !944, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !944, file: !13, line: 455, baseType: !1072, size: 64, offset: 2432)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !944, file: !13, line: 458, baseType: !1075, size: 64, offset: 2496)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!46}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !944, file: !13, line: 460, baseType: !1079, size: 4032, align: 512, offset: 2560)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 4032, elements: !1096)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1080, file: !13, line: 363, baseType: !104, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1080, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1080, file: !13, line: 367, baseType: !1085, size: 448, offset: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1085, file: !13, line: 320, baseType: !943, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1085, file: !13, line: 321, baseType: !1089, size: 384, offset: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1090, line: 40, size: 384, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1089, file: !1090, line: 41, baseType: !1093, size: 384, align: 64)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 384, align: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 2)
!1096 = !{!1097}
!1097 = !DISubrange(count: 7)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !944, file: !13, line: 463, baseType: !1099, size: 192, offset: 6592)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1100, line: 8, size: 192, elements: !1101)
!1100 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1101 = !{!1102, !1103, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1099, file: !1100, line: 10, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1099, file: !1100, line: 11, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1099, file: !1100, line: 12, baseType: !1106, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1108, line: 59, size: 48, elements: !1109)
!1108 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1107, file: !1108, line: 60, baseType: !587, size: 16)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1107, file: !1108, line: 61, baseType: !587, size: 16, offset: 16)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1107, file: !1108, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1107, file: !1108, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1107, file: !1108, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1107, file: !1108, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !944, file: !13, line: 465, baseType: !103, size: 64, offset: 6784)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !944, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !944, file: !13, line: 470, baseType: !223, size: 128, offset: 6912)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !944, file: !13, line: 471, baseType: !1120, size: 64, offset: 7040)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1122, line: 33, size: 96, elements: !1123)
!1122 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1121, file: !1122, line: 37, baseType: !46, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1121, file: !1122, line: 43, baseType: !46, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1121, file: !1122, line: 45, baseType: !272, size: 16, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1121, file: !1122, line: 47, baseType: !272, size: 16, offset: 80)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !944, file: !13, line: 476, baseType: !1129, size: 64, offset: 7104)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1131)
!1131 = !{!1132, !1148, !1149, !1150}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1130, file: !13, line: 379, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1135, line: 204, baseType: !1136)
!1135 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1135, line: 197, size: 192, elements: !1137)
!1137 = !{!1138, !1140, !1141, !1142, !1144, !1146}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1136, file: !1135, line: 198, baseType: !1139, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1135, line: 21, baseType: !174)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1136, file: !1135, line: 199, baseType: !153, size: 8, offset: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1136, file: !1135, line: 200, baseType: !153, size: 8, offset: 40)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1136, file: !1135, line: 201, baseType: !1143, size: 16, offset: 48)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1135, line: 17, baseType: !271)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1136, file: !1135, line: 202, baseType: !1145, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1135, line: 16, baseType: !111)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1136, file: !1135, line: 203, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1135, line: 22, baseType: !111)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1130, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1130, file: !13, line: 381, baseType: !302, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1130, file: !13, line: 382, baseType: !302, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !944, file: !13, line: 477, baseType: !1130, size: 256, offset: 7168)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !944, file: !13, line: 480, baseType: !1153, size: 64, offset: 7424)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !944, file: !13, line: 483, baseType: !1156, size: 64, offset: 7488)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !944, file: !13, line: 488, baseType: !302, size: 64, offset: 7552)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !944, file: !13, line: 492, baseType: !104, size: 64, offset: 7616)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !944, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !944, file: !13, line: 495, baseType: !104, size: 64, offset: 7744)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !944, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !944, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !944, file: !13, line: 500, baseType: !1165, size: 64, offset: 7872)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1167, line: 45, baseType: !1168)
!1167 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !944, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !944, file: !13, line: 504, baseType: !1171, size: 64, offset: 8000)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1174, line: 96, size: 192, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1175 = !{!1176, !1177, !1237, !1240}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1173, file: !1174, line: 97, baseType: !7, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1173, file: !1174, line: 98, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1174, line: 24, size: 3072, elements: !1180)
!1180 = !{!1181, !1183, !1184, !1185, !1186, !1200, !1201, !1202, !1203, !1221, !1222, !1223, !1234, !1235, !1236}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1179, file: !1174, line: 26, baseType: !1182, size: 128)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 128, elements: !1094)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1179, file: !1174, line: 27, baseType: !1182, size: 128, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1179, file: !1174, line: 28, baseType: !46, size: 32, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1179, file: !1174, line: 31, baseType: !236, size: 32, align: 512, offset: 512)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1179, file: !1174, line: 32, baseType: !1187, size: 960, offset: 576)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1188, line: 206, size: 960, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1189 = !{!1190, !1191, !1194, !1196, !1197, !1199}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1187, file: !1188, line: 207, baseType: !408, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1187, file: !1188, line: 208, baseType: !1192, size: 256, offset: 64)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 256, elements: !532)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1187, file: !1188, line: 209, baseType: !1195, size: 256, offset: 320)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !532)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1187, file: !1188, line: 213, baseType: !117, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1187, file: !1188, line: 215, baseType: !1198, size: 256, offset: 640)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !532)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1188, line: 216, baseType: !264, size: 8, offset: 896)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1179, file: !1174, line: 33, baseType: !103, size: 64, offset: 1536)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1179, file: !1174, line: 34, baseType: !103, size: 64, offset: 1600)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1179, file: !1174, line: 35, baseType: !201, size: 8, offset: 1664)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1179, file: !1174, line: 36, baseType: !1204, size: 320, offset: 1728)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1205, line: 11, size: 320, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1206 = !{!1207, !1214, !1215, !1220}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1204, file: !1205, line: 16, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !101, line: 198, size: 128, elements: !1209)
!1209 = !{!1210, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1208, file: !101, line: 199, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1208, file: !101, line: 199, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1204, file: !1205, line: 17, baseType: !103, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1204, file: !1205, line: 18, baseType: !1216, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !1205, line: 19, baseType: !173, size: 32, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1179, file: !1174, line: 37, baseType: !613, size: 256, offset: 2048)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1179, file: !1174, line: 38, baseType: !405, size: 128, align: 64, offset: 2304)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1179, file: !1174, line: 39, baseType: !1224, size: 64, offset: 2432)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1174, line: 49, size: 768, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1225, file: !1174, line: 50, baseType: !236, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1225, file: !1174, line: 51, baseType: !1195, size: 256, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1225, file: !1174, line: 53, baseType: !1195, size: 256, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1225, file: !1174, line: 54, baseType: !103, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1225, file: !1174, line: 55, baseType: !1224, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1225, file: !1174, line: 56, baseType: !46, size: 32, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1225, file: !1174, line: 57, baseType: !46, size: 32, offset: 736)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1179, file: !1174, line: 40, baseType: !103, size: 64, offset: 2496)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1179, file: !1174, line: 42, baseType: !46, size: 32, offset: 2560)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1179, file: !1174, line: 43, baseType: !1172, size: 64, offset: 2624)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1173, file: !1174, line: 99, baseType: !1238, offset: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1239, line: 211, elements: !435)
!1239 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1173, file: !1174, line: 100, baseType: !1241, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1174, line: 63, size: 3008, elements: !1243)
!1243 = !{!1244, !1245, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1275}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1242, file: !1174, line: 64, baseType: !1224, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1242, file: !1174, line: 65, baseType: !1246, size: 192, offset: 64)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1224, size: 192, elements: !123)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1242, file: !1174, line: 67, baseType: !46, size: 32, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1242, file: !1174, line: 68, baseType: !551, size: 256, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1242, file: !1174, line: 69, baseType: !236, size: 32, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1242, file: !1174, line: 70, baseType: !551, size: 256, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1242, file: !1174, line: 71, baseType: !103, size: 64, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1242, file: !1174, line: 72, baseType: !103, size: 64, offset: 960)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1242, file: !1174, line: 73, baseType: !103, size: 64, offset: 1024)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1242, file: !1174, line: 74, baseType: !103, size: 64, offset: 1088)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1242, file: !1174, line: 75, baseType: !103, size: 64, offset: 1152)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1242, file: !1174, line: 76, baseType: !103, size: 64, offset: 1216)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1242, file: !1174, line: 77, baseType: !103, size: 64, offset: 1280)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1242, file: !1174, line: 78, baseType: !103, size: 64, offset: 1344)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1242, file: !1174, line: 79, baseType: !201, size: 8, offset: 1408)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1242, file: !1174, line: 80, baseType: !103, size: 64, offset: 1472)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1242, file: !1174, line: 81, baseType: !551, size: 256, offset: 1536)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1242, file: !1174, line: 82, baseType: !963, size: 256, offset: 1792)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1242, file: !1174, line: 84, baseType: !256, size: 32, offset: 2048)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1242, file: !1174, line: 87, baseType: !103, size: 64, offset: 2112)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1242, file: !1174, line: 88, baseType: !103, size: 64, offset: 2176)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1242, file: !1174, line: 89, baseType: !1267, size: 704, offset: 2240)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !614, line: 111, size: 704, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1274}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1267, file: !614, line: 112, baseType: !613, size: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1267, file: !614, line: 113, baseType: !1204, size: 320, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1267, file: !614, line: 116, baseType: !1272, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !614, line: 18, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1267, file: !614, line: 117, baseType: !46, size: 32, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1242, file: !1174, line: 90, baseType: !1172, size: 64, offset: 2944)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !944, file: !13, line: 515, baseType: !1277, size: 64, offset: 8064)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1279, line: 117, size: 128, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1278, file: !1279, line: 118, baseType: !530, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1278, file: !1279, line: 119, baseType: !530, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1278, file: !1279, line: 120, baseType: !117, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !944, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !944, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !944, file: !13, line: 520, baseType: !1287, size: 64, offset: 8192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !944, file: !13, line: 523, baseType: !1289, size: 64, offset: 8256)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !944, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !944, file: !13, line: 525, baseType: !1294, size: 64, offset: 8384)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !944, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !944, file: !13, line: 533, baseType: !104, size: 64, offset: 8512)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !944, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !944, file: !13, line: 535, baseType: !114, size: 64, offset: 8640)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !944, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !944, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !944, file: !13, line: 540, baseType: !1304, size: 64, offset: 8768)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1306, line: 32, size: 64, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1305, file: !1306, line: 33, baseType: !530, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1305, file: !1306, line: 34, baseType: !530, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !944, file: !13, line: 563, baseType: !223, size: 128, offset: 8832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !944, file: !13, line: 565, baseType: !223, size: 128, offset: 8960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !944, file: !13, line: 568, baseType: !1313, size: 64, offset: 9088)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !944, file: !13, line: 570, baseType: !256, size: 32, offset: 9152)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !938, file: !20, line: 101, baseType: !220, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !938, file: !20, line: 103, baseType: !201, size: 8, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !938, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !938, file: !20, line: 106, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1324, line: 282, size: 1600, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1325 = !{!1326, !1330, !1331, !1335}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1323, file: !1324, line: 283, baseType: !1327, size: 256)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1323, file: !1324, line: 284, baseType: !1327, size: 256, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1323, file: !1324, line: 285, baseType: !1332, size: 1024, offset: 512)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1323, file: !1324, line: 286, baseType: !209, size: 64, offset: 1536)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !938, file: !20, line: 107, baseType: !1337, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1324, line: 217, size: 256, elements: !1340)
!1340 = !{!1341, !1342, !1344, !1345}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1339, file: !1324, line: 218, baseType: !151, size: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1339, file: !1324, line: 219, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1324, line: 15, baseType: !103)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1339, file: !1324, line: 220, baseType: !174, size: 32, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1339, file: !1324, line: 221, baseType: !174, size: 32, offset: 224)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !938, file: !20, line: 109, baseType: !897, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !938, file: !20, line: 110, baseType: !888, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !938, file: !20, line: 111, baseType: !897, size: 64, offset: 576)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !938, file: !20, line: 112, baseType: !888, size: 64, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !938, file: !20, line: 113, baseType: !1351, size: 64, offset: 704)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!46, !866, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1355, file: !38, line: 59, baseType: !46, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !938, file: !20, line: 114, baseType: !897, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !938, file: !20, line: 115, baseType: !350, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !938, file: !20, line: 116, baseType: !350, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !938, file: !20, line: 118, baseType: !892, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !938, file: !20, line: 119, baseType: !888, size: 64, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !938, file: !20, line: 121, baseType: !1364, size: 64, offset: 1088)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !925, file: !926, line: 88, baseType: !879, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !925, file: !926, line: 89, baseType: !897, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !925, file: !926, line: 90, baseType: !888, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !925, file: !926, line: 91, baseType: !888, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !925, file: !926, line: 92, baseType: !888, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !925, file: !926, line: 94, baseType: !897, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !925, file: !926, line: 95, baseType: !897, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !925, file: !926, line: 97, baseType: !1351, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !925, file: !926, line: 98, baseType: !897, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !925, file: !926, line: 100, baseType: !897, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !925, file: !926, line: 102, baseType: !897, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !925, file: !926, line: 103, baseType: !888, size: 64, offset: 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !925, file: !926, line: 105, baseType: !892, size: 64, offset: 1152)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !925, file: !926, line: 107, baseType: !1380, size: 64, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !926, line: 107, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !925, file: !926, line: 109, baseType: !201, size: 8, offset: 1280)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !213, file: !26, line: 715, baseType: !937, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !213, file: !26, line: 717, baseType: !104, size: 64, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !213, file: !26, line: 719, baseType: !104, size: 64, offset: 960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !213, file: !26, line: 721, baseType: !551, size: 256, offset: 1024)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !213, file: !26, line: 725, baseType: !1389, size: 448, offset: 1280)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1389, file: !26, line: 518, baseType: !223, size: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1389, file: !26, line: 519, baseType: !223, size: 128, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1389, file: !26, line: 520, baseType: !223, size: 128, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1389, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !213, file: !26, line: 726, baseType: !1396, size: 2496, offset: 1728)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1442, !1443, !1444, !1445, !1446, !1447, !1518, !1519, !1520, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1558, !1562}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1396, file: !38, line: 664, baseType: !1354, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1396, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1396, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1396, file: !38, line: 667, baseType: !201, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1396, file: !38, line: 668, baseType: !201, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1396, file: !38, line: 669, baseType: !201, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1396, file: !38, line: 670, baseType: !201, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1396, file: !38, line: 671, baseType: !201, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1396, file: !38, line: 672, baseType: !201, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1396, file: !38, line: 673, baseType: !201, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1396, file: !38, line: 674, baseType: !201, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1396, file: !38, line: 675, baseType: !173, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1396, file: !38, line: 676, baseType: !236, size: 32, offset: 96)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1396, file: !38, line: 678, baseType: !223, size: 128, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1396, file: !38, line: 679, baseType: !963, size: 256, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1396, file: !38, line: 680, baseType: !1414, size: 64, offset: 512)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1416, line: 43, size: 1536, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1425, !1426, !1427, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1415, file: !1416, line: 44, baseType: !220, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1415, file: !1416, line: 45, baseType: !46, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1415, file: !1416, line: 46, baseType: !223, size: 128, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1415, file: !1416, line: 47, baseType: !236, size: 32, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1415, file: !1416, line: 48, baseType: !1423, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1415, file: !1416, line: 49, baseType: !1204, size: 320, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1415, file: !1416, line: 50, baseType: !103, size: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1415, file: !1416, line: 51, baseType: !1428, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1429, line: 29, baseType: !471)
!1429 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1415, file: !1416, line: 52, baseType: !1428, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1415, file: !1416, line: 53, baseType: !1428, size: 64, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1415, file: !1416, line: 54, baseType: !1428, size: 64, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1415, file: !1416, line: 55, baseType: !1428, size: 64, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1415, file: !1416, line: 56, baseType: !103, size: 64, offset: 1088)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1415, file: !1416, line: 57, baseType: !103, size: 64, offset: 1152)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1415, file: !1416, line: 58, baseType: !103, size: 64, offset: 1216)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1415, file: !1416, line: 59, baseType: !103, size: 64, offset: 1280)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1415, file: !1416, line: 60, baseType: !103, size: 64, offset: 1344)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1415, file: !1416, line: 61, baseType: !866, size: 64, offset: 1408)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1415, file: !1416, line: 62, baseType: !201, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1415, file: !1416, line: 63, baseType: !201, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1396, file: !38, line: 681, baseType: !201, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1396, file: !38, line: 682, baseType: !201, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1396, file: !38, line: 683, baseType: !201, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1396, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1396, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1396, file: !38, line: 690, baseType: !1448, size: 512, offset: 640)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1449)
!1449 = !{!1450, !1456, !1457, !1462, !1514, !1515, !1516, !1517}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1448, file: !33, line: 119, baseType: !1451, size: 256)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1452, line: 9, size: 256, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1451, file: !1452, line: 10, baseType: !652, size: 192, align: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1451, file: !1452, line: 11, baseType: !1428, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1448, file: !33, line: 120, baseType: !1428, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1448, file: !33, line: 121, baseType: !1458, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!32, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1448, file: !33, line: 122, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1465)
!1465 = !{!1466, !1491, !1492, !1495, !1500, !1501, !1509, !1513}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1464, file: !33, line: 160, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !33, line: 216, baseType: !487, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1468, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1468, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1468, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1468, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1468, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1468, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1468, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1468, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1468, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1468, file: !33, line: 227, baseType: !272, size: 16, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1468, file: !33, line: 228, baseType: !272, size: 16, offset: 208)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1468, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1468, file: !33, line: 235, baseType: !1428, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1468, file: !33, line: 236, baseType: !1461, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1468, file: !33, line: 237, baseType: !1428, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1468, file: !33, line: 238, baseType: !1461, size: 64, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1468, file: !33, line: 239, baseType: !1488, size: 4096, align: 512, offset: 512)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 4096, align: 512, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 8)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1464, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1464, file: !33, line: 162, baseType: !1493, size: 32, offset: 96)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !101, line: 32, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !334, line: 96, baseType: !46)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1464, file: !33, line: 163, baseType: !1496, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !502, line: 274, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !502, line: 274, size: 32, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1497, file: !502, line: 274, baseType: !501, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1464, file: !33, line: 164, baseType: !1461, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1464, file: !33, line: 165, baseType: !1502, size: 128, offset: 256)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1452, line: 14, size: 128, elements: !1503)
!1503 = !{!1504}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1502, file: !1452, line: 15, baseType: !1505, size: 128)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !653, line: 26, size: 128, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1505, file: !653, line: 27, baseType: !755, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1505, file: !653, line: 28, baseType: !657, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1464, file: !33, line: 166, baseType: !1510, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1428}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1464, file: !33, line: 167, baseType: !1428, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1448, file: !33, line: 123, baseType: !264, size: 8, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1448, file: !33, line: 124, baseType: !264, size: 8, offset: 456)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1448, file: !33, line: 125, baseType: !264, size: 8, offset: 464)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1448, file: !33, line: 126, baseType: !264, size: 8, offset: 472)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1396, file: !38, line: 691, baseType: !109, size: 64, offset: 1152)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1396, file: !38, line: 692, baseType: !613, size: 256, offset: 1216)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1396, file: !38, line: 693, baseType: !1521, size: 192, offset: 1472)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1522, line: 41, baseType: !1523)
!1522 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1522, line: 37, size: 192, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1523, file: !1522, line: 38, baseType: !236, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1523, file: !1522, line: 39, baseType: !223, size: 128, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1396, file: !38, line: 694, baseType: !1423, size: 64, offset: 1664)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1396, file: !38, line: 695, baseType: !256, size: 32, offset: 1728)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1396, file: !38, line: 696, baseType: !256, size: 32, offset: 1760)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1396, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1396, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1396, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1396, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1396, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1396, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1396, file: !38, line: 703, baseType: !201, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1396, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1396, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1396, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1396, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1396, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1396, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1396, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1396, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1396, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1396, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1396, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1396, file: !38, line: 715, baseType: !109, size: 64, offset: 2048)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1396, file: !38, line: 716, baseType: !109, size: 64, offset: 2112)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1396, file: !38, line: 717, baseType: !109, size: 64, offset: 2176)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1396, file: !38, line: 718, baseType: !109, size: 64, offset: 2240)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1396, file: !38, line: 720, baseType: !1553, size: 64, offset: 2304)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1554, file: !38, line: 633, baseType: !236, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1554, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1396, file: !38, line: 721, baseType: !1559, size: 64, offset: 2368)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !866, !530}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1396, file: !38, line: 722, baseType: !1563, size: 64, offset: 2432)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !213, file: !26, line: 727, baseType: !1566, size: 64, offset: 4224)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1575, !1576, !1577}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1567, file: !38, line: 743, baseType: !894, size: 1472)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1567, file: !38, line: 744, baseType: !897, size: 64, offset: 1472)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1567, file: !38, line: 745, baseType: !1572, size: 64, offset: 1536)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !866, !201}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1567, file: !38, line: 746, baseType: !897, size: 64, offset: 1600)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1567, file: !38, line: 747, baseType: !888, size: 64, offset: 1664)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1567, file: !38, line: 748, baseType: !888, size: 64, offset: 1728)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !213, file: !26, line: 736, baseType: !1579, size: 128, offset: 4288)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1580)
!1580 = !{!1581, !1585}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1579, file: !26, line: 531, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1584, line: 13, flags: DIFlagFwdDecl)
!1584 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1579, file: !26, line: 532, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !213, file: !26, line: 738, baseType: !1589, size: 64, offset: 4416)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !213, file: !26, line: 740, baseType: !1593, size: 64, offset: 4480)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !213, file: !26, line: 741, baseType: !109, size: 64, offset: 4544)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !213, file: !26, line: 746, baseType: !109, size: 64, offset: 4608)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !213, file: !26, line: 747, baseType: !1597, size: 64, offset: 4672)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !213, file: !26, line: 749, baseType: !1601, size: 64, offset: 4736)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1602, file: !26, line: 433, baseType: !7, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1602, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1602, file: !26, line: 435, baseType: !103, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !213, file: !26, line: 751, baseType: !223, size: 128, offset: 4800)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !213, file: !26, line: 762, baseType: !1609, size: 64, offset: 4928)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !213, file: !26, line: 770, baseType: !1612, offset: 4992)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1613, line: 5, elements: !435)
!1613 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !213, file: !26, line: 772, baseType: !1615, size: 64, offset: 4992)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1617, line: 18, flags: DIFlagFwdDecl)
!1617 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !213, file: !26, line: 773, baseType: !183, size: 64, offset: 5056)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !213, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !213, file: !26, line: 778, baseType: !1621, size: 32, offset: 5152)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !101, line: 21, baseType: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !101, line: 18, baseType: !173)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !213, file: !26, line: 779, baseType: !173, size: 32, offset: 5184)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !213, file: !26, line: 781, baseType: !236, size: 32, offset: 5216)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !213, file: !26, line: 782, baseType: !223, size: 128, offset: 5248)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !213, file: !26, line: 784, baseType: !1627, size: 64, offset: 5376)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1630, line: 52, size: 768, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1640, !1644, !1645, !1646, !1647, !1651, !1655}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1629, file: !1630, line: 53, baseType: !220, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1629, file: !1630, line: 55, baseType: !350, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1629, file: !1630, line: 56, baseType: !350, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1629, file: !1630, line: 58, baseType: !879, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1629, file: !1630, line: 59, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!302, !211, !886}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1629, file: !1630, line: 61, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1627}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1629, file: !1630, line: 62, baseType: !888, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1629, file: !1630, line: 64, baseType: !897, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1629, file: !1630, line: 66, baseType: !685, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1629, file: !1630, line: 67, baseType: !1648, size: 64, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!209, !211}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1629, file: !1630, line: 69, baseType: !1652, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !211, !720, !728}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1629, file: !1630, line: 71, baseType: !892, size: 64, offset: 704)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !213, file: !26, line: 785, baseType: !350, size: 64, offset: 5440)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !213, file: !26, line: 787, baseType: !888, size: 64, offset: 5504)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !213, file: !26, line: 788, baseType: !1659, size: 64, offset: 5568)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !213, file: !26, line: 789, baseType: !1662, size: 64, offset: 5632)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !213, file: !26, line: 791, baseType: !1665, size: 64, offset: 5696)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1666, file: !26, line: 598, baseType: !53, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1666, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1666, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1666, file: !26, line: 601, baseType: !201, size: 8, offset: 96)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1666, file: !26, line: 602, baseType: !201, size: 8, offset: 104)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !213, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !213, file: !26, line: 795, baseType: !201, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !213, file: !26, line: 796, baseType: !201, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !213, file: !26, line: 797, baseType: !201, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !213, file: !26, line: 798, baseType: !201, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !213, file: !26, line: 799, baseType: !201, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !187, file: !180, line: 131, baseType: !198, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !187, file: !180, line: 133, baseType: !1681, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!78, !203}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !187, file: !180, line: 134, baseType: !1685, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!201, !203, !220}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !187, file: !180, line: 136, baseType: !1689, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!46, !203, !220, !7, !104, !346}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !187, file: !180, line: 141, baseType: !1693, size: 64, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!46, !203, !220, !1287, !346}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !187, file: !180, line: 144, baseType: !1697, size: 64, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!220, !203}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !187, file: !180, line: 145, baseType: !1697, size: 64, offset: 640)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !187, file: !180, line: 146, baseType: !1702, size: 64, offset: 704)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!183, !203}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !187, file: !180, line: 148, baseType: !1706, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!183, !203, !183}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !187, file: !180, line: 151, baseType: !1710, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!183, !203, !220}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !187, file: !180, line: 153, baseType: !1714, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!46, !203, !220, !220, !7, !7, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !180, line: 94, size: 640, elements: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1718, file: !180, line: 95, baseType: !183, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1718, file: !180, line: 96, baseType: !7, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1718, file: !180, line: 97, baseType: !1723, size: 512, offset: 128)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, elements: !1489)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !187, file: !180, line: 158, baseType: !1706, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !187, file: !180, line: 161, baseType: !1702, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !187, file: !180, line: 163, baseType: !190, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !187, file: !180, line: 164, baseType: !1728, size: 64, offset: 1152)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!46, !203, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !180, line: 73, size: 128, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1732, file: !180, line: 74, baseType: !7, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1732, file: !180, line: 75, baseType: !7, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1732, file: !180, line: 76, baseType: !203, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !187, file: !180, line: 166, baseType: !1738, size: 64, offset: 1216)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!104, !183, !46}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !187, file: !180, line: 167, baseType: !1742, size: 64, offset: 1280)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!46, !203, !7}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !187, file: !180, line: 168, baseType: !1746, size: 64, offset: 1344)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!46, !183}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !179, file: !180, line: 44, baseType: !866, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !179, file: !180, line: 45, baseType: !223, size: 128, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !179, file: !180, line: 46, baseType: !223, size: 128, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !180, line: 47, baseType: !264, size: 8, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !169, file: !170, line: 372, baseType: !223, size: 128, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !169, file: !170, line: 373, baseType: !223, size: 128, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !169, file: !170, line: 374, baseType: !1756, size: 32, offset: 896)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !170, line: 181, size: 32, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1756, file: !170, line: 182, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1756, file: !170, line: 183, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1756, file: !170, line: 184, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1756, file: !170, line: 185, baseType: !173, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1756, file: !170, line: 186, baseType: !173, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1756, file: !170, line: 187, baseType: !173, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !170, line: 375, baseType: !1765, size: 32, offset: 928)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !170, line: 192, size: 32, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1765, file: !170, line: 193, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1765, file: !170, line: 194, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1765, file: !170, line: 195, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1765, file: !170, line: 196, baseType: !173, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1765, file: !170, line: 197, baseType: !173, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1765, file: !170, line: 198, baseType: !173, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1765, file: !170, line: 199, baseType: !173, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1765, file: !170, line: 200, baseType: !173, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1765, file: !170, line: 201, baseType: !173, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1765, file: !170, line: 202, baseType: !173, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1765, file: !170, line: 203, baseType: !173, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1765, file: !170, line: 204, baseType: !173, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1765, file: !170, line: 205, baseType: !173, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1765, file: !170, line: 206, baseType: !173, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1765, file: !170, line: 207, baseType: !173, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !169, file: !170, line: 376, baseType: !1783, size: 960, offset: 960)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !170, line: 238, size: 960, elements: !1784)
!1784 = !{!1785, !1788, !1789, !1797, !1799, !1800, !1801, !1806, !1811}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1783, file: !170, line: 239, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !170, line: 220, baseType: !1787)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !1489)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1783, file: !170, line: 240, baseType: !46, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1783, file: !170, line: 241, baseType: !1790, size: 32, offset: 96)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !170, line: 230, size: 32, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1790, file: !170, line: 231, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1790, file: !170, line: 232, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1790, file: !170, line: 233, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1790, file: !170, line: 234, baseType: !173, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1790, file: !170, line: 235, baseType: !173, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1783, file: !170, line: 242, baseType: !1798, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !170, line: 221, baseType: !109)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1783, file: !170, line: 243, baseType: !302, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1783, file: !170, line: 244, baseType: !223, size: 128, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1783, file: !170, line: 245, baseType: !1802, size: 320, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !170, line: 222, baseType: !1803)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 320, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 40)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1783, file: !170, line: 246, baseType: !1807, size: 160, offset: 704)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !170, line: 223, baseType: !1808)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 160, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 20)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1783, file: !170, line: 247, baseType: !1812, size: 64, offset: 896)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !108, line: 908, size: 192, elements: !1814)
!1814 = !{!1815, !1817, !1822, !1828, !1835, !1841, !1847, !1855}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1813, file: !108, line: 909, baseType: !1816, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !108, line: 644, baseType: !173)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1813, file: !108, line: 913, baseType: !1818, size: 128)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !108, line: 910, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1818, file: !108, line: 911, baseType: !1816, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1818, file: !108, line: 912, baseType: !109, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1813, file: !108, line: 919, baseType: !1823, size: 128)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !108, line: 915, size: 128, elements: !1824)
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1823, file: !108, line: 916, baseType: !1816, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1823, file: !108, line: 917, baseType: !173, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1823, file: !108, line: 918, baseType: !302, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1813, file: !108, line: 925, baseType: !1829, size: 128)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !108, line: 921, size: 128, elements: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1829, file: !108, line: 922, baseType: !1816, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1829, file: !108, line: 923, baseType: !173, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1829, file: !108, line: 924, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1813, file: !108, line: 931, baseType: !1836, size: 128)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !108, line: 927, size: 128, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1836, file: !108, line: 928, baseType: !1816, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1836, file: !108, line: 929, baseType: !173, size: 32, offset: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1836, file: !108, line: 930, baseType: !1812, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1813, file: !108, line: 937, baseType: !1842, size: 128)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !108, line: 933, size: 128, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1842, file: !108, line: 934, baseType: !1816, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1842, file: !108, line: 935, baseType: !1816, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1842, file: !108, line: 936, baseType: !177, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1813, file: !108, line: 944, baseType: !1848, size: 192)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !108, line: 939, size: 192, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1854}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1848, file: !108, line: 940, baseType: !1816, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1848, file: !108, line: 941, baseType: !173, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1848, file: !108, line: 942, baseType: !1853, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !108, line: 128, baseType: !109)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1848, file: !108, line: 943, baseType: !173, size: 32, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1813, file: !108, line: 950, baseType: !1856, size: 96)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !108, line: 946, size: 96, elements: !1857)
!1857 = !{!1858, !1859, !1860}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1856, file: !108, line: 947, baseType: !1816, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1856, file: !108, line: 948, baseType: !173, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1856, file: !108, line: 949, baseType: !173, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !169, file: !170, line: 377, baseType: !1862, size: 1408, offset: 1920)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !170, line: 280, size: 1408, elements: !1863)
!1863 = !{!1864, !1865, !1875, !1890}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1862, file: !170, line: 281, baseType: !46, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !170, line: 282, baseType: !1866, size: 32, offset: 32)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !170, line: 259, size: 32, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1866, file: !170, line: 260, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1866, file: !170, line: 261, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1866, file: !170, line: 262, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1866, file: !170, line: 263, baseType: !173, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1866, file: !170, line: 264, baseType: !173, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1866, file: !170, line: 265, baseType: !173, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1866, file: !170, line: 266, baseType: !173, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1862, file: !170, line: 283, baseType: !1876, size: 1280, offset: 64)
!1876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1877, size: 1280, elements: !1888)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !170, line: 269, size: 256, elements: !1878)
!1878 = !{!1879, !1885, !1886, !1887}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1877, file: !170, line: 274, baseType: !1880, size: 8)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !170, line: 270, size: 8, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1880, file: !170, line: 271, baseType: !264, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1880, file: !170, line: 272, baseType: !264, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1880, file: !170, line: 273, baseType: !264, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1877, file: !170, line: 275, baseType: !46, size: 32, offset: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1877, file: !170, line: 276, baseType: !46, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1877, file: !170, line: 277, baseType: !223, size: 128, offset: 128)
!1888 = !{!1889}
!1889 = !DISubrange(count: 5)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1862, file: !170, line: 284, baseType: !264, size: 8, offset: 1344)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !169, file: !170, line: 378, baseType: !1892, size: 640, offset: 3328)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !170, line: 330, size: 640, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1903, !1912, !1913, !1914}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1892, file: !170, line: 331, baseType: !177, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1892, file: !170, line: 332, baseType: !109, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1892, file: !170, line: 333, baseType: !109, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1892, file: !170, line: 334, baseType: !223, size: 128, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1892, file: !170, line: 335, baseType: !1899, size: 8, offset: 320)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !170, line: 320, size: 8, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1899, file: !170, line: 321, baseType: !264, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1899, file: !170, line: 322, baseType: !264, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1892, file: !170, line: 336, baseType: !1904, size: 128, offset: 384)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !170, line: 325, size: 128, elements: !1905)
!1905 = !{!1906, !1911}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1904, file: !170, line: 326, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1904, file: !170, line: 327, baseType: !866, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1892, file: !170, line: 337, baseType: !1414, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1892, file: !170, line: 338, baseType: !46, size: 32, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1892, file: !170, line: 339, baseType: !46, size: 32, offset: 608)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !169, file: !170, line: 379, baseType: !1916, size: 192, offset: 3968)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !170, line: 312, size: 192, elements: !1917)
!1917 = !{!1918, !1919, !1923, !1924}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1916, file: !170, line: 313, baseType: !46, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !170, line: 314, baseType: !1920, size: 8, offset: 32)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !170, line: 298, size: 8, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1920, file: !170, line: 299, baseType: !264, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1916, file: !170, line: 315, baseType: !46, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1916, file: !170, line: 316, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !170, line: 302, size: 64, elements: !1927)
!1927 = !{!1928, !1933, !1934, !1935}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1926, file: !170, line: 306, baseType: !1929, size: 8)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !170, line: 303, size: 8, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1929, file: !170, line: 304, baseType: !264, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1929, file: !170, line: 305, baseType: !264, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1926, file: !170, line: 307, baseType: !264, size: 8, offset: 8)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1926, file: !170, line: 308, baseType: !264, size: 8, offset: 16)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1926, file: !170, line: 309, baseType: !46, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !169, file: !170, line: 380, baseType: !1937, size: 64, offset: 4160)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !170, line: 212, size: 64, elements: !1938)
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1937, file: !170, line: 213, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !170, line: 86, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !169, file: !170, line: 381, baseType: !1943, size: 384, offset: 4224)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !170, line: 357, size: 384, elements: !1944)
!1944 = !{!1945, !1948, !1949, !1950}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1943, file: !170, line: 358, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1943, file: !170, line: 359, baseType: !223, size: 128, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1943, file: !170, line: 360, baseType: !1946, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1943, file: !170, line: 361, baseType: !223, size: 128, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !169, file: !170, line: 382, baseType: !1952, size: 64, offset: 4608)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !170, line: 124, size: 1216, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1962, !1966, !1968, !1969, !1970}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1953, file: !170, line: 125, baseType: !1337, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1953, file: !170, line: 126, baseType: !223, size: 128, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1953, file: !170, line: 127, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!201, !220, !1961}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1953, file: !170, line: 128, baseType: !1963, size: 64, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!46, !168, !1337}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1953, file: !170, line: 129, baseType: !1967, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1953, file: !170, line: 130, baseType: !888, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1953, file: !170, line: 131, baseType: !888, size: 64, offset: 448)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1953, file: !170, line: 132, baseType: !1971, size: 704, offset: 512)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !170, line: 110, size: 704, elements: !1972)
!1972 = !{!1973, !1974, !1978, !1979, !1980}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1971, file: !170, line: 111, baseType: !216, size: 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1971, file: !170, line: 112, baseType: !1975, size: 64, offset: 512)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!46, !168}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1971, file: !170, line: 113, baseType: !1967, size: 64, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1971, file: !170, line: 114, baseType: !201, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1971, file: !170, line: 115, baseType: !201, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !169, file: !170, line: 383, baseType: !1982, size: 64, offset: 4672)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !170, line: 140, size: 256, elements: !1984)
!1984 = !{!1985, !1986, !1990, !1994}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1983, file: !170, line: 141, baseType: !168, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1983, file: !170, line: 142, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!46, !168, !173}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1983, file: !170, line: 143, baseType: !1991, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !168, !173}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1983, file: !170, line: 144, baseType: !1967, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !169, file: !170, line: 384, baseType: !1996, size: 64, offset: 4736)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1998)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !170, line: 364, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !169, file: !170, line: 385, baseType: !104, size: 64, offset: 4800)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !169, file: !170, line: 386, baseType: !213, size: 5824, offset: 4864)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !169, file: !170, line: 387, baseType: !7, size: 32, offset: 10688)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !169, file: !170, line: 388, baseType: !7, size: 32, offset: 10720)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !169, file: !170, line: 389, baseType: !223, size: 128, offset: 10752)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !169, file: !170, line: 390, baseType: !551, size: 256, offset: 10880)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !169, file: !170, line: 391, baseType: !1967, size: 64, offset: 11136)
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2021, !2022, !2026, !2027, !2028, !2029, !2031, !2034}
!2007 = !DILocalVariable(name: "adev", arg: 1, scope: !165, file: !3, line: 28, type: !168)
!2008 = !DILocalVariable(name: "i", scope: !165, file: !3, line: 30, type: !7)
!2009 = !DILocalVariable(name: "j", scope: !165, file: !3, line: 30, type: !7)
!2010 = !DILocalVariable(name: "newsize", scope: !165, file: !3, line: 30, type: !7)
!2011 = !DILocalVariable(name: "numprops", scope: !165, file: !3, line: 30, type: !7)
!2012 = !DILocalVariable(name: "numvalid", scope: !165, file: !3, line: 30, type: !7)
!2013 = !DILocalVariable(name: "props", scope: !165, file: !3, line: 31, type: !1812)
!2014 = !DILocalVariable(name: "newprops", scope: !165, file: !3, line: 31, type: !1812)
!2015 = !DILocalVariable(name: "valid", scope: !165, file: !3, line: 32, type: !114)
!2016 = !DILocalVariable(name: "free_space", scope: !165, file: !3, line: 33, type: !104)
!2017 = !DILocalVariable(name: "key", scope: !2018, file: !3, line: 69, type: !1812)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 68, column: 33)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 68, column: 2)
!2020 = distinct !DILexicalBlock(scope: !165, file: !3, line: 68, column: 2)
!2021 = !DILocalVariable(name: "val", scope: !2018, file: !3, line: 70, type: !1812)
!2022 = !DILocalVariable(name: "key", scope: !2023, file: !3, line: 107, type: !1812)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 106, column: 39)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 106, column: 2)
!2025 = distinct !DILexicalBlock(scope: !165, file: !3, line: 106, column: 2)
!2026 = !DILocalVariable(name: "val", scope: !2023, file: !3, line: 108, type: !1812)
!2027 = !DILocalVariable(name: "k", scope: !2023, file: !3, line: 109, type: !7)
!2028 = !DILocalVariable(name: "v", scope: !2023, file: !3, line: 110, type: !7)
!2029 = !DILocalVariable(name: "__ret_warn_on", scope: !2030, file: !3, line: 140, type: !46)
!2030 = distinct !DILexicalBlock(scope: !165, file: !3, line: 140, column: 2)
!2031 = !DILocalVariable(name: "__flags", scope: !2032, file: !3, line: 140, type: !46)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 140, column: 2)
!2033 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 140, column: 2)
!2034 = !DILabel(scope: !165, name: "out_free", file: !3, line: 145)
!2035 = !DILocation(line: 28, column: 56, scope: !165)
!2036 = !DILocation(line: 30, column: 2, scope: !165)
!2037 = !DILocation(line: 30, column: 15, scope: !165)
!2038 = !DILocation(line: 30, column: 18, scope: !165)
!2039 = !DILocation(line: 30, column: 25, scope: !165)
!2040 = !DILocation(line: 30, column: 38, scope: !165)
!2041 = !DILocation(line: 30, column: 48, scope: !165)
!2042 = !DILocation(line: 31, column: 2, scope: !165)
!2043 = !DILocation(line: 31, column: 21, scope: !165)
!2044 = !DILocation(line: 31, column: 29, scope: !165)
!2045 = !DILocation(line: 32, column: 2, scope: !165)
!2046 = !DILocation(line: 32, column: 17, scope: !165)
!2047 = !DILocation(line: 33, column: 2, scope: !165)
!2048 = !DILocation(line: 33, column: 8, scope: !165)
!2049 = !DILocation(line: 35, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !165, file: !3, line: 35, column: 6)
!2051 = !{i8 0, i8 2}
!2052 = !DILocation(line: 35, column: 6, scope: !165)
!2053 = !DILocation(line: 36, column: 3, scope: !2050)
!2054 = !DILocation(line: 38, column: 34, scope: !165)
!2055 = !DILocation(line: 38, column: 40, scope: !165)
!2056 = !DILocation(line: 38, column: 10, scope: !165)
!2057 = !DILocation(line: 38, column: 8, scope: !165)
!2058 = !DILocation(line: 40, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !165, file: !3, line: 40, column: 6)
!2060 = !DILocation(line: 40, column: 6, scope: !165)
!2061 = !DILocation(line: 41, column: 3, scope: !2059)
!2062 = !DILocation(line: 43, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !165, file: !3, line: 43, column: 6)
!2064 = !DILocation(line: 43, column: 21, scope: !2063)
!2065 = !DILocation(line: 43, column: 6, scope: !165)
!2066 = !DILocation(line: 44, column: 3, scope: !2063)
!2067 = !DILocation(line: 46, column: 6, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !165, file: !3, line: 46, column: 6)
!2069 = !DILocation(line: 46, column: 20, scope: !2068)
!2070 = !DILocation(line: 46, column: 31, scope: !2068)
!2071 = !DILocation(line: 46, column: 6, scope: !165)
!2072 = !DILocation(line: 47, column: 3, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 46, column: 37)
!2074 = !DILocation(line: 50, column: 3, scope: !2073)
!2075 = !DILocation(line: 53, column: 2, scope: !165)
!2076 = !DILocation(line: 54, column: 34, scope: !165)
!2077 = !DILocation(line: 54, column: 40, scope: !165)
!2078 = !DILocation(line: 54, column: 10, scope: !165)
!2079 = !DILocation(line: 54, column: 8, scope: !165)
!2080 = !DILocation(line: 56, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !165, file: !3, line: 56, column: 6)
!2082 = !DILocation(line: 56, column: 6, scope: !165)
!2083 = !DILocation(line: 57, column: 3, scope: !2081)
!2084 = !DILocation(line: 59, column: 13, scope: !165)
!2085 = !DILocation(line: 59, column: 28, scope: !165)
!2086 = !DILocation(line: 59, column: 34, scope: !165)
!2087 = !DILocation(line: 59, column: 11, scope: !165)
!2088 = !DILocation(line: 60, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !165, file: !3, line: 60, column: 6)
!2090 = !DILocation(line: 60, column: 6, scope: !165)
!2091 = !DILocation(line: 61, column: 3, scope: !2089)
!2092 = !DILocation(line: 63, column: 24, scope: !165)
!2093 = !DILocation(line: 63, column: 10, scope: !165)
!2094 = !DILocation(line: 63, column: 8, scope: !165)
!2095 = !DILocation(line: 64, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !165, file: !3, line: 64, column: 6)
!2097 = !DILocation(line: 64, column: 6, scope: !165)
!2098 = !DILocation(line: 65, column: 3, scope: !2096)
!2099 = !DILocation(line: 68, column: 9, scope: !2020)
!2100 = !DILocation(line: 68, column: 7, scope: !2020)
!2101 = !DILocation(line: 68, column: 14, scope: !2019)
!2102 = !DILocation(line: 68, column: 18, scope: !2019)
!2103 = !DILocation(line: 68, column: 16, scope: !2019)
!2104 = !DILocation(line: 68, column: 2, scope: !2020)
!2105 = !DILocation(line: 69, column: 3, scope: !2018)
!2106 = !DILocation(line: 69, column: 22, scope: !2018)
!2107 = !DILocation(line: 69, column: 29, scope: !2018)
!2108 = !DILocation(line: 69, column: 44, scope: !2018)
!2109 = !DILocation(line: 69, column: 53, scope: !2018)
!2110 = !DILocation(line: 69, column: 55, scope: !2018)
!2111 = !DILocation(line: 70, column: 3, scope: !2018)
!2112 = !DILocation(line: 70, column: 22, scope: !2018)
!2113 = !DILocation(line: 70, column: 29, scope: !2018)
!2114 = !DILocation(line: 70, column: 44, scope: !2018)
!2115 = !DILocation(line: 70, column: 53, scope: !2018)
!2116 = !DILocation(line: 70, column: 55, scope: !2018)
!2117 = !DILocation(line: 70, column: 59, scope: !2018)
!2118 = !DILocation(line: 72, column: 8, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 72, column: 8)
!2120 = !DILocation(line: 72, column: 13, scope: !2119)
!2121 = !DILocation(line: 72, column: 18, scope: !2119)
!2122 = !DILocation(line: 72, column: 38, scope: !2119)
!2123 = !DILocation(line: 73, column: 8, scope: !2119)
!2124 = !DILocation(line: 73, column: 13, scope: !2119)
!2125 = !DILocation(line: 73, column: 18, scope: !2119)
!2126 = !DILocation(line: 73, column: 39, scope: !2119)
!2127 = !DILocation(line: 74, column: 8, scope: !2119)
!2128 = !DILocation(line: 74, column: 13, scope: !2119)
!2129 = !DILocation(line: 74, column: 18, scope: !2119)
!2130 = !DILocation(line: 74, column: 38, scope: !2119)
!2131 = !DILocation(line: 75, column: 8, scope: !2119)
!2132 = !DILocation(line: 75, column: 13, scope: !2119)
!2133 = !DILocation(line: 75, column: 18, scope: !2119)
!2134 = !DILocation(line: 72, column: 8, scope: !2018)
!2135 = !DILocation(line: 76, column: 4, scope: !2119)
!2136 = !DILocation(line: 78, column: 3, scope: !2018)
!2137 = !DILocation(line: 79, column: 14, scope: !2018)
!2138 = !DILocation(line: 79, column: 26, scope: !2018)
!2139 = !DILocation(line: 79, column: 33, scope: !2018)
!2140 = !DILocation(line: 79, column: 11, scope: !2018)
!2141 = !DILocation(line: 80, column: 8, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 80, column: 8)
!2143 = !DILocation(line: 80, column: 13, scope: !2142)
!2144 = !DILocation(line: 80, column: 18, scope: !2142)
!2145 = !DILocation(line: 80, column: 8, scope: !2018)
!2146 = !DILocation(line: 81, column: 15, scope: !2142)
!2147 = !DILocation(line: 81, column: 27, scope: !2142)
!2148 = !DILocation(line: 81, column: 12, scope: !2142)
!2149 = !DILocation(line: 81, column: 4, scope: !2142)
!2150 = !DILocation(line: 82, column: 12, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 82, column: 12)
!2152 = !DILocation(line: 82, column: 17, scope: !2151)
!2153 = !DILocation(line: 82, column: 22, scope: !2151)
!2154 = !DILocation(line: 82, column: 12, scope: !2142)
!2155 = !DILocation(line: 83, column: 15, scope: !2151)
!2156 = !DILocation(line: 83, column: 27, scope: !2151)
!2157 = !DILocation(line: 83, column: 34, scope: !2151)
!2158 = !DILocation(line: 83, column: 12, scope: !2151)
!2159 = !DILocation(line: 83, column: 4, scope: !2151)
!2160 = !DILocation(line: 84, column: 2, scope: !2019)
!2161 = !DILocation(line: 84, column: 2, scope: !2018)
!2162 = !DILocation(line: 68, column: 29, scope: !2019)
!2163 = !DILocation(line: 68, column: 2, scope: !2019)
!2164 = distinct !{!2164, !2104, !2165, !2166, !2167}
!2165 = !DILocation(line: 84, column: 2, scope: !2020)
!2166 = !{!"llvm.loop.mustprogress"}
!2167 = !{!"llvm.loop.unroll.disable"}
!2168 = !DILocation(line: 86, column: 27, scope: !165)
!2169 = !DILocation(line: 86, column: 34, scope: !165)
!2170 = !DILocation(line: 86, column: 13, scope: !165)
!2171 = !DILocation(line: 86, column: 11, scope: !165)
!2172 = !DILocation(line: 87, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !165, file: !3, line: 87, column: 6)
!2174 = !DILocation(line: 87, column: 17, scope: !2173)
!2175 = !DILocation(line: 87, column: 15, scope: !2173)
!2176 = !DILocation(line: 87, column: 6, scope: !165)
!2177 = !DILocation(line: 88, column: 3, scope: !2173)
!2178 = !DILocation(line: 91, column: 6, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !165, file: !3, line: 91, column: 6)
!2180 = !DILocation(line: 91, column: 15, scope: !2179)
!2181 = !DILocation(line: 91, column: 6, scope: !165)
!2182 = !DILocation(line: 92, column: 3, scope: !2179)
!2183 = !DILocation(line: 95, column: 22, scope: !165)
!2184 = !DILocation(line: 95, column: 20, scope: !165)
!2185 = !DILocation(line: 95, column: 16, scope: !165)
!2186 = !DILocation(line: 95, column: 13, scope: !165)
!2187 = !DILocation(line: 95, column: 32, scope: !165)
!2188 = !DILocation(line: 95, column: 10, scope: !165)
!2189 = !DILocation(line: 96, column: 13, scope: !165)
!2190 = !DILocation(line: 96, column: 11, scope: !165)
!2191 = !DILocation(line: 97, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !165, file: !3, line: 97, column: 6)
!2193 = !DILocation(line: 97, column: 6, scope: !165)
!2194 = !DILocation(line: 98, column: 3, scope: !2192)
!2195 = !DILocation(line: 101, column: 2, scope: !165)
!2196 = !DILocation(line: 101, column: 17, scope: !165)
!2197 = !DILocation(line: 102, column: 28, scope: !165)
!2198 = !DILocation(line: 102, column: 2, scope: !165)
!2199 = !DILocation(line: 102, column: 20, scope: !165)
!2200 = !DILocation(line: 102, column: 26, scope: !165)
!2201 = !DILocation(line: 103, column: 32, scope: !165)
!2202 = !DILocation(line: 103, column: 2, scope: !165)
!2203 = !DILocation(line: 103, column: 20, scope: !165)
!2204 = !DILocation(line: 103, column: 29, scope: !165)
!2205 = !DILocation(line: 104, column: 16, scope: !165)
!2206 = !DILocation(line: 104, column: 33, scope: !165)
!2207 = !DILocation(line: 104, column: 31, scope: !165)
!2208 = !DILocation(line: 104, column: 27, scope: !165)
!2209 = !DILocation(line: 104, column: 13, scope: !165)
!2210 = !DILocation(line: 106, column: 2, scope: !2025)
!2211 = !DILocation(line: 106, column: 2, scope: !2024)
!2212 = !DILocation(line: 107, column: 3, scope: !2023)
!2213 = !DILocation(line: 107, column: 22, scope: !2023)
!2214 = !DILocation(line: 107, column: 29, scope: !2023)
!2215 = !DILocation(line: 107, column: 44, scope: !2023)
!2216 = !DILocation(line: 107, column: 53, scope: !2023)
!2217 = !DILocation(line: 107, column: 55, scope: !2023)
!2218 = !DILocation(line: 108, column: 3, scope: !2023)
!2219 = !DILocation(line: 108, column: 22, scope: !2023)
!2220 = !DILocation(line: 108, column: 29, scope: !2023)
!2221 = !DILocation(line: 108, column: 44, scope: !2023)
!2222 = !DILocation(line: 108, column: 53, scope: !2023)
!2223 = !DILocation(line: 108, column: 55, scope: !2023)
!2224 = !DILocation(line: 108, column: 59, scope: !2023)
!2225 = !DILocation(line: 109, column: 3, scope: !2023)
!2226 = !DILocation(line: 109, column: 16, scope: !2023)
!2227 = !DILocation(line: 109, column: 24, scope: !2023)
!2228 = !DILocation(line: 109, column: 22, scope: !2023)
!2229 = !DILocation(line: 109, column: 35, scope: !2023)
!2230 = !DILocation(line: 109, column: 37, scope: !2023)
!2231 = !DILocation(line: 109, column: 33, scope: !2023)
!2232 = !DILocation(line: 110, column: 3, scope: !2023)
!2233 = !DILocation(line: 110, column: 16, scope: !2023)
!2234 = !DILocation(line: 110, column: 20, scope: !2023)
!2235 = !DILocation(line: 110, column: 22, scope: !2023)
!2236 = !DILocation(line: 112, column: 3, scope: !2023)
!2237 = !DILocation(line: 112, column: 16, scope: !2023)
!2238 = !DILocation(line: 112, column: 14, scope: !2023)
!2239 = !DILocation(line: 112, column: 24, scope: !2023)
!2240 = !DILocation(line: 113, column: 3, scope: !2023)
!2241 = !DILocation(line: 113, column: 16, scope: !2023)
!2242 = !DILocation(line: 113, column: 14, scope: !2023)
!2243 = !DILocation(line: 113, column: 27, scope: !2023)
!2244 = !DILocation(line: 113, column: 33, scope: !2023)
!2245 = !DILocation(line: 114, column: 39, scope: !2023)
!2246 = !DILocation(line: 114, column: 48, scope: !2023)
!2247 = !DILocation(line: 114, column: 3, scope: !2023)
!2248 = !DILocation(line: 114, column: 16, scope: !2023)
!2249 = !DILocation(line: 114, column: 14, scope: !2023)
!2250 = !DILocation(line: 114, column: 27, scope: !2023)
!2251 = !DILocation(line: 114, column: 36, scope: !2023)
!2252 = !DILocation(line: 116, column: 3, scope: !2023)
!2253 = !DILocation(line: 116, column: 12, scope: !2023)
!2254 = !DILocation(line: 116, column: 20, scope: !2023)
!2255 = !DILocation(line: 117, column: 31, scope: !2023)
!2256 = !DILocation(line: 117, column: 43, scope: !2023)
!2257 = !DILocation(line: 117, column: 3, scope: !2023)
!2258 = !DILocation(line: 117, column: 12, scope: !2023)
!2259 = !DILocation(line: 117, column: 22, scope: !2023)
!2260 = !DILocation(line: 117, column: 29, scope: !2023)
!2261 = !DILocation(line: 118, column: 32, scope: !2023)
!2262 = !DILocation(line: 118, column: 3, scope: !2023)
!2263 = !DILocation(line: 118, column: 12, scope: !2023)
!2264 = !DILocation(line: 118, column: 22, scope: !2023)
!2265 = !DILocation(line: 118, column: 30, scope: !2023)
!2266 = !DILocation(line: 119, column: 10, scope: !2023)
!2267 = !DILocation(line: 119, column: 22, scope: !2023)
!2268 = !DILocation(line: 119, column: 34, scope: !2023)
!2269 = !DILocation(line: 119, column: 43, scope: !2023)
!2270 = !DILocation(line: 119, column: 55, scope: !2023)
!2271 = !DILocation(line: 119, column: 3, scope: !2023)
!2272 = !DILocation(line: 120, column: 17, scope: !2023)
!2273 = !DILocation(line: 120, column: 29, scope: !2023)
!2274 = !DILocation(line: 120, column: 36, scope: !2023)
!2275 = !DILocation(line: 120, column: 14, scope: !2023)
!2276 = !DILocation(line: 122, column: 22, scope: !2023)
!2277 = !DILocation(line: 122, column: 27, scope: !2023)
!2278 = !DILocation(line: 122, column: 3, scope: !2023)
!2279 = !DILocation(line: 122, column: 12, scope: !2023)
!2280 = !DILocation(line: 122, column: 20, scope: !2023)
!2281 = !DILocation(line: 123, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 123, column: 7)
!2283 = !DILocation(line: 123, column: 12, scope: !2282)
!2284 = !DILocation(line: 123, column: 17, scope: !2282)
!2285 = !DILocation(line: 123, column: 7, scope: !2023)
!2286 = !DILocation(line: 124, column: 32, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 123, column: 39)
!2288 = !DILocation(line: 124, column: 45, scope: !2287)
!2289 = !DILocation(line: 124, column: 4, scope: !2287)
!2290 = !DILocation(line: 124, column: 13, scope: !2287)
!2291 = !DILocation(line: 124, column: 24, scope: !2287)
!2292 = !DILocation(line: 124, column: 30, scope: !2287)
!2293 = !DILocation(line: 125, column: 3, scope: !2287)
!2294 = !DILocation(line: 125, column: 14, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 125, column: 14)
!2296 = !DILocation(line: 125, column: 19, scope: !2295)
!2297 = !DILocation(line: 125, column: 24, scope: !2295)
!2298 = !DILocation(line: 125, column: 14, scope: !2282)
!2299 = !DILocation(line: 126, column: 32, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 125, column: 45)
!2301 = !DILocation(line: 126, column: 44, scope: !2300)
!2302 = !DILocation(line: 126, column: 4, scope: !2300)
!2303 = !DILocation(line: 126, column: 13, scope: !2300)
!2304 = !DILocation(line: 126, column: 23, scope: !2300)
!2305 = !DILocation(line: 126, column: 30, scope: !2300)
!2306 = !DILocation(line: 127, column: 33, scope: !2300)
!2307 = !DILocation(line: 127, column: 4, scope: !2300)
!2308 = !DILocation(line: 127, column: 13, scope: !2300)
!2309 = !DILocation(line: 127, column: 23, scope: !2300)
!2310 = !DILocation(line: 127, column: 31, scope: !2300)
!2311 = !DILocation(line: 128, column: 11, scope: !2300)
!2312 = !DILocation(line: 128, column: 23, scope: !2300)
!2313 = !DILocation(line: 128, column: 35, scope: !2300)
!2314 = !DILocation(line: 129, column: 11, scope: !2300)
!2315 = !DILocation(line: 129, column: 23, scope: !2300)
!2316 = !DILocation(line: 128, column: 4, scope: !2300)
!2317 = !DILocation(line: 130, column: 18, scope: !2300)
!2318 = !DILocation(line: 130, column: 30, scope: !2300)
!2319 = !DILocation(line: 130, column: 37, scope: !2300)
!2320 = !DILocation(line: 130, column: 15, scope: !2300)
!2321 = !DILocation(line: 131, column: 3, scope: !2300)
!2322 = !DILocation(line: 132, column: 32, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 131, column: 10)
!2324 = !DILocation(line: 132, column: 44, scope: !2323)
!2325 = !DILocation(line: 132, column: 4, scope: !2323)
!2326 = !DILocation(line: 132, column: 13, scope: !2323)
!2327 = !DILocation(line: 132, column: 23, scope: !2323)
!2328 = !DILocation(line: 132, column: 30, scope: !2323)
!2329 = !DILocation(line: 133, column: 33, scope: !2323)
!2330 = !DILocation(line: 133, column: 4, scope: !2323)
!2331 = !DILocation(line: 133, column: 13, scope: !2323)
!2332 = !DILocation(line: 133, column: 23, scope: !2323)
!2333 = !DILocation(line: 133, column: 31, scope: !2323)
!2334 = !DILocation(line: 134, column: 11, scope: !2323)
!2335 = !DILocation(line: 134, column: 23, scope: !2323)
!2336 = !DILocation(line: 134, column: 35, scope: !2323)
!2337 = !DILocation(line: 135, column: 11, scope: !2323)
!2338 = !DILocation(line: 135, column: 23, scope: !2323)
!2339 = !DILocation(line: 134, column: 4, scope: !2323)
!2340 = !DILocation(line: 136, column: 18, scope: !2323)
!2341 = !DILocation(line: 136, column: 30, scope: !2323)
!2342 = !DILocation(line: 136, column: 15, scope: !2323)
!2343 = !DILocation(line: 138, column: 4, scope: !2023)
!2344 = !DILocation(line: 139, column: 2, scope: !2024)
!2345 = !DILocation(line: 139, column: 2, scope: !2023)
!2346 = distinct !{!2346, !2210, !2347, !2166, !2167}
!2347 = !DILocation(line: 139, column: 2, scope: !2025)
!2348 = !DILocation(line: 140, column: 2, scope: !2030)
!2349 = !DILocation(line: 140, column: 2, scope: !2033)
!2350 = !DILocation(line: 140, column: 2, scope: !2032)
!2351 = !DILocation(line: 140, column: 2, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 140, column: 2)
!2353 = !DILocation(line: 140, column: 2, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 140, column: 2)
!2355 = !{i64 2153483572, i64 2153483601, i64 2153483647, i64 2153483705, i64 2153483759, i64 2153483813, i64 2153483868, i64 2153483899, i64 2153484207, i64 2153484213, i64 2153484260, i64 2153484283, i64 2153484309}
!2356 = !DILocation(line: 140, column: 2, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 140, column: 2)
!2358 = !DILocation(line: 140, column: 2, scope: !165)
!2359 = !DILocation(line: 142, column: 23, scope: !165)
!2360 = !DILocation(line: 142, column: 2, scope: !165)
!2361 = !DILocation(line: 142, column: 8, scope: !165)
!2362 = !DILocation(line: 142, column: 13, scope: !165)
!2363 = !DILocation(line: 142, column: 21, scope: !165)
!2364 = !DILocation(line: 143, column: 23, scope: !165)
!2365 = !DILocation(line: 143, column: 29, scope: !165)
!2366 = !DILocation(line: 143, column: 52, scope: !165)
!2367 = !DILocation(line: 143, column: 2, scope: !165)
!2368 = !DILocation(line: 145, column: 1, scope: !165)
!2369 = !DILocation(line: 146, column: 2, scope: !165)
!2370 = !DILocation(line: 147, column: 14, scope: !165)
!2371 = !DILocation(line: 147, column: 2, scope: !165)
!2372 = !DILocation(line: 148, column: 1, scope: !165)
!2373 = distinct !DISubprogram(name: "acpi_evaluate_dsm_typed", scope: !170, file: !170, line: 57, type: !2374, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!1812, !177, !2376, !109, !109, !1812, !1816}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2378 = !DILocalVariable(name: "handle", arg: 1, scope: !2373, file: !170, line: 57, type: !177)
!2379 = !DILocalVariable(name: "guid", arg: 2, scope: !2373, file: !170, line: 57, type: !2376)
!2380 = !DILocalVariable(name: "rev", arg: 3, scope: !2373, file: !170, line: 57, type: !109)
!2381 = !DILocalVariable(name: "func", arg: 4, scope: !2373, file: !170, line: 58, type: !109)
!2382 = !DILocalVariable(name: "argv4", arg: 5, scope: !2373, file: !170, line: 58, type: !1812)
!2383 = !DILocalVariable(name: "type", arg: 6, scope: !2373, file: !170, line: 59, type: !1816)
!2384 = !DILocalVariable(name: "obj", scope: !2373, file: !170, line: 61, type: !1812)
!2385 = !DILocation(line: 57, column: 37, scope: !2373)
!2386 = !DILocation(line: 57, column: 59, scope: !2373)
!2387 = !DILocation(line: 57, column: 69, scope: !2373)
!2388 = !DILocation(line: 58, column: 8, scope: !2373)
!2389 = !DILocation(line: 58, column: 33, scope: !2373)
!2390 = !DILocation(line: 59, column: 21, scope: !2373)
!2391 = !DILocation(line: 61, column: 2, scope: !2373)
!2392 = !DILocation(line: 61, column: 21, scope: !2373)
!2393 = !DILocation(line: 63, column: 26, scope: !2373)
!2394 = !DILocation(line: 63, column: 34, scope: !2373)
!2395 = !DILocation(line: 63, column: 40, scope: !2373)
!2396 = !DILocation(line: 63, column: 45, scope: !2373)
!2397 = !DILocation(line: 63, column: 51, scope: !2373)
!2398 = !DILocation(line: 63, column: 8, scope: !2373)
!2399 = !DILocation(line: 63, column: 6, scope: !2373)
!2400 = !DILocation(line: 64, column: 6, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2373, file: !170, line: 64, column: 6)
!2402 = !DILocation(line: 64, column: 10, scope: !2401)
!2403 = !DILocation(line: 64, column: 13, scope: !2401)
!2404 = !DILocation(line: 64, column: 18, scope: !2401)
!2405 = !DILocation(line: 64, column: 26, scope: !2401)
!2406 = !DILocation(line: 64, column: 23, scope: !2401)
!2407 = !DILocation(line: 64, column: 6, scope: !2373)
!2408 = !DILocation(line: 65, column: 3, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2401, file: !170, line: 64, column: 32)
!2410 = !DILocation(line: 66, column: 7, scope: !2409)
!2411 = !DILocation(line: 67, column: 2, scope: !2409)
!2412 = !DILocation(line: 69, column: 9, scope: !2373)
!2413 = !DILocation(line: 70, column: 1, scope: !2373)
!2414 = !DILocation(line: 69, column: 2, scope: !2373)
!2415 = !DISubprogram(name: "acpi_handle_printk", scope: !2416, file: !2416, line: 1180, type: !2417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2416 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !220, !177, !220, null}
!2419 = distinct !DISubprogram(name: "acpi_os_free", scope: !2420, file: !2420, line: 60, type: !710, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2421)
!2420 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!2421 = !{!2422}
!2422 = !DILocalVariable(name: "memory", arg: 1, scope: !2419, file: !2420, line: 60, type: !104)
!2423 = !DILocation(line: 60, column: 39, scope: !2419)
!2424 = !DILocation(line: 62, column: 8, scope: !2419)
!2425 = !DILocation(line: 62, column: 2, scope: !2419)
!2426 = !DILocation(line: 63, column: 1, scope: !2419)
!2427 = !DISubprogram(name: "bitmap_zalloc", scope: !2428, file: !2428, line: 127, type: !2429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2428 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!114, !7, !100}
!2431 = distinct !DISubprogram(name: "generic___set_bit", scope: !2432, file: !2432, line: 28, type: !2433, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2432 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !103, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DILocalVariable(name: "nr", arg: 1, scope: !2431, file: !2432, line: 28, type: !103)
!2439 = !DILocalVariable(name: "addr", arg: 2, scope: !2431, file: !2432, line: 28, type: !2435)
!2440 = !DILocalVariable(name: "mask", scope: !2431, file: !2432, line: 30, type: !103)
!2441 = !DILocalVariable(name: "p", scope: !2431, file: !2432, line: 31, type: !114)
!2442 = !DILocation(line: 28, column: 33, scope: !2431)
!2443 = !DILocation(line: 28, column: 61, scope: !2431)
!2444 = !DILocation(line: 30, column: 2, scope: !2431)
!2445 = !DILocation(line: 30, column: 16, scope: !2431)
!2446 = !DILocation(line: 30, column: 23, scope: !2431)
!2447 = !DILocation(line: 31, column: 2, scope: !2431)
!2448 = !DILocation(line: 31, column: 17, scope: !2431)
!2449 = !DILocation(line: 31, column: 39, scope: !2431)
!2450 = !DILocation(line: 31, column: 47, scope: !2431)
!2451 = !DILocation(line: 31, column: 45, scope: !2431)
!2452 = !DILocation(line: 33, column: 9, scope: !2431)
!2453 = !DILocation(line: 33, column: 3, scope: !2431)
!2454 = !DILocation(line: 33, column: 6, scope: !2431)
!2455 = !DILocation(line: 34, column: 1, scope: !2431)
!2456 = distinct !DISubprogram(name: "___set_bit", scope: !2457, file: !2457, line: 26, type: !2433, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2457 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "nr", arg: 1, scope: !2456, file: !2457, line: 26, type: !103)
!2460 = !DILocalVariable(name: "addr", arg: 2, scope: !2456, file: !2457, line: 26, type: !2435)
!2461 = !DILocation(line: 26, column: 26, scope: !2456)
!2462 = !DILocation(line: 26, column: 54, scope: !2456)
!2463 = !DILocation(line: 28, column: 19, scope: !2456)
!2464 = !DILocation(line: 28, column: 26, scope: !2456)
!2465 = !DILocation(line: 28, column: 24, scope: !2456)
!2466 = !DILocation(line: 28, column: 2, scope: !2456)
!2467 = !DILocation(line: 29, column: 17, scope: !2456)
!2468 = !DILocation(line: 29, column: 21, scope: !2456)
!2469 = !DILocation(line: 29, column: 2, scope: !2456)
!2470 = !DILocation(line: 30, column: 1, scope: !2456)
!2471 = distinct !DISubprogram(name: "bitmap_weight", scope: !2428, file: !2428, line: 453, type: !2472, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!7, !105, !7}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "src", arg: 1, scope: !2471, file: !2428, line: 453, type: !105)
!2476 = !DILocalVariable(name: "nbits", arg: 2, scope: !2471, file: !2428, line: 453, type: !7)
!2477 = !DILocation(line: 453, column: 49, scope: !2471)
!2478 = !DILocation(line: 453, column: 67, scope: !2471)
!2479 = !DILocation(line: 455, column: 6, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2471, file: !2428, line: 455, column: 6)
!2481 = !DILocation(line: 455, column: 6, scope: !2471)
!2482 = !DILocation(line: 456, column: 24, scope: !2480)
!2483 = !DILocation(line: 456, column: 23, scope: !2480)
!2484 = !DILocation(line: 456, column: 30, scope: !2480)
!2485 = !DILocation(line: 456, column: 28, scope: !2480)
!2486 = !DILocation(line: 456, column: 10, scope: !2480)
!2487 = !DILocation(line: 456, column: 3, scope: !2480)
!2488 = !DILocation(line: 457, column: 25, scope: !2471)
!2489 = !DILocation(line: 457, column: 30, scope: !2471)
!2490 = !DILocation(line: 457, column: 9, scope: !2471)
!2491 = !DILocation(line: 457, column: 2, scope: !2471)
!2492 = !DILocation(line: 458, column: 1, scope: !2471)
!2493 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2420, file: !2420, line: 55, type: !2494, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!104, !107}
!2496 = !{!2497, !2498, !2500, !2503, !2504, !2507}
!2497 = !DILocalVariable(name: "size", arg: 1, scope: !2493, file: !2420, line: 55, type: !107)
!2498 = !DILocalVariable(name: "_flags", scope: !2499, file: !2420, line: 57, type: !103)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !2420, line: 57, column: 23)
!2500 = !DILocalVariable(name: "__dummy", scope: !2501, file: !2420, line: 57, type: !103)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !2420, line: 57, column: 23)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !2420, line: 57, column: 23)
!2503 = !DILocalVariable(name: "__dummy2", scope: !2501, file: !2420, line: 57, type: !103)
!2504 = !DILocalVariable(name: "__dummy", scope: !2505, file: !2420, line: 57, type: !103)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !2420, line: 57, column: 23)
!2506 = distinct !DILexicalBlock(scope: !2499, file: !2420, line: 57, column: 23)
!2507 = !DILocalVariable(name: "__dummy2", scope: !2505, file: !2420, line: 57, type: !103)
!2508 = !DILocation(line: 55, column: 55, scope: !2493)
!2509 = !DILocation(line: 57, column: 17, scope: !2493)
!2510 = !DILocation(line: 57, column: 23, scope: !2499)
!2511 = !DILocation(line: 57, column: 23, scope: !2501)
!2512 = !DILocation(line: 57, column: 23, scope: !2502)
!2513 = !DILocation(line: 57, column: 23, scope: !2505)
!2514 = !DILocation(line: 57, column: 23, scope: !2506)
!2515 = !DILocation(line: 57, column: 23, scope: !2493)
!2516 = !DILocation(line: 57, column: 9, scope: !2493)
!2517 = !DILocation(line: 57, column: 2, scope: !2493)
!2518 = distinct !DISubprogram(name: "find_next_bit", scope: !2519, file: !2519, line: 54, type: !2520, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2522)
!2519 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!103, !105, !103, !103}
!2522 = !{!2523, !2524, !2525, !2526}
!2523 = !DILocalVariable(name: "addr", arg: 1, scope: !2518, file: !2519, line: 54, type: !105)
!2524 = !DILocalVariable(name: "size", arg: 2, scope: !2518, file: !2519, line: 54, type: !103)
!2525 = !DILocalVariable(name: "offset", arg: 3, scope: !2518, file: !2519, line: 55, type: !103)
!2526 = !DILocalVariable(name: "val", scope: !2527, file: !2519, line: 58, type: !103)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !2519, line: 57, column: 31)
!2528 = distinct !DILexicalBlock(scope: !2518, file: !2519, line: 57, column: 6)
!2529 = !DILocation(line: 54, column: 50, scope: !2518)
!2530 = !DILocation(line: 54, column: 70, scope: !2518)
!2531 = !DILocation(line: 55, column: 22, scope: !2518)
!2532 = !DILocation(line: 57, column: 6, scope: !2528)
!2533 = !DILocation(line: 57, column: 6, scope: !2518)
!2534 = !DILocation(line: 58, column: 3, scope: !2527)
!2535 = !DILocation(line: 58, column: 17, scope: !2527)
!2536 = !DILocation(line: 60, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2527, file: !2519, line: 60, column: 7)
!2538 = !DILocation(line: 60, column: 7, scope: !2527)
!2539 = !DILocation(line: 61, column: 11, scope: !2537)
!2540 = !DILocation(line: 61, column: 4, scope: !2537)
!2541 = !DILocation(line: 63, column: 10, scope: !2527)
!2542 = !DILocation(line: 63, column: 9, scope: !2527)
!2543 = !DILocation(line: 63, column: 17, scope: !2527)
!2544 = !DILocation(line: 63, column: 15, scope: !2527)
!2545 = !DILocation(line: 63, column: 7, scope: !2527)
!2546 = !DILocation(line: 64, column: 10, scope: !2527)
!2547 = !DILocation(line: 64, column: 16, scope: !2527)
!2548 = !DILocation(line: 64, column: 29, scope: !2527)
!2549 = !DILocation(line: 64, column: 3, scope: !2527)
!2550 = !DILocation(line: 65, column: 2, scope: !2528)
!2551 = !DILocation(line: 67, column: 24, scope: !2518)
!2552 = !DILocation(line: 67, column: 30, scope: !2518)
!2553 = !DILocation(line: 67, column: 36, scope: !2518)
!2554 = !DILocation(line: 67, column: 9, scope: !2518)
!2555 = !DILocation(line: 67, column: 2, scope: !2518)
!2556 = !DILocation(line: 68, column: 1, scope: !2518)
!2557 = !DISubprogram(name: "acpi_data_add_props", scope: !2416, file: !2416, line: 1302, type: !2558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!2560, !2568, !2376, !1812}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_properties", file: !170, line: 349, size: 320, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !2561, file: !170, line: 350, baseType: !2376, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2561, file: !170, line: 351, baseType: !1812, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2561, file: !170, line: 352, baseType: !223, size: 128, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !2561, file: !170, line: 353, baseType: !2567, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!2569 = !DISubprogram(name: "bitmap_free", scope: !2428, file: !2428, line: 130, type: !2570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !105}
!2572 = !DISubprogram(name: "acpi_evaluate_dsm", scope: !170, file: !170, line: 53, type: !2573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!1812, !177, !2376, !109, !109, !1812}
!2575 = !DISubprogram(name: "kfree", scope: !90, file: !90, line: 227, type: !2576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{null, !209}
!2578 = distinct !DISubprogram(name: "instrument_write", scope: !2579, file: !2579, line: 38, type: !2580, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2585)
!2579 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !2582, !346}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "v", arg: 1, scope: !2578, file: !2579, line: 38, type: !2582)
!2587 = !DILocalVariable(name: "size", arg: 2, scope: !2578, file: !2579, line: 38, type: !346)
!2588 = !DILocation(line: 38, column: 67, scope: !2578)
!2589 = !DILocation(line: 38, column: 77, scope: !2578)
!2590 = !DILocation(line: 40, column: 20, scope: !2578)
!2591 = !DILocation(line: 40, column: 23, scope: !2578)
!2592 = !DILocation(line: 40, column: 2, scope: !2578)
!2593 = !DILocation(line: 41, column: 2, scope: !2578)
!2594 = !DILocation(line: 42, column: 1, scope: !2578)
!2595 = distinct !DISubprogram(name: "arch___set_bit", scope: !2596, file: !2596, line: 66, type: !2433, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2597)
!2596 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "nr", arg: 1, scope: !2595, file: !2596, line: 66, type: !103)
!2599 = !DILocalVariable(name: "addr", arg: 2, scope: !2595, file: !2596, line: 66, type: !2435)
!2600 = !DILocation(line: 66, column: 30, scope: !2595)
!2601 = !DILocation(line: 66, column: 58, scope: !2595)
!2602 = !DILocation(line: 68, column: 44, scope: !2595)
!2603 = !DILocation(line: 68, column: 56, scope: !2595)
!2604 = !DILocation(line: 68, column: 2, scope: !2595)
!2605 = !{i64 2148189218}
!2606 = !DILocation(line: 69, column: 1, scope: !2595)
!2607 = distinct !DISubprogram(name: "kasan_check_write", scope: !2608, file: !2608, line: 44, type: !2609, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2611)
!2608 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!201, !2582, !7}
!2611 = !{!2612, !2613}
!2612 = !DILocalVariable(name: "p", arg: 1, scope: !2607, file: !2608, line: 44, type: !2582)
!2613 = !DILocalVariable(name: "size", arg: 2, scope: !2607, file: !2608, line: 44, type: !7)
!2614 = !DILocation(line: 44, column: 59, scope: !2607)
!2615 = !DILocation(line: 44, column: 75, scope: !2607)
!2616 = !DILocation(line: 46, column: 2, scope: !2607)
!2617 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2618, file: !2618, line: 229, type: !2619, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2621)
!2618 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !2582, !346, !46}
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "ptr", arg: 1, scope: !2617, file: !2618, line: 229, type: !2582)
!2623 = !DILocalVariable(name: "size", arg: 2, scope: !2617, file: !2618, line: 229, type: !346)
!2624 = !DILocalVariable(name: "type", arg: 3, scope: !2617, file: !2618, line: 230, type: !46)
!2625 = !DILocation(line: 229, column: 60, scope: !2617)
!2626 = !DILocation(line: 229, column: 72, scope: !2617)
!2627 = !DILocation(line: 230, column: 15, scope: !2617)
!2628 = !DILocation(line: 230, column: 23, scope: !2617)
!2629 = distinct !DISubprogram(name: "hweight_long", scope: !2630, file: !2630, line: 95, type: !2631, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2633)
!2630 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!103, !103}
!2633 = !{!2634}
!2634 = !DILocalVariable(name: "w", arg: 1, scope: !2629, file: !2630, line: 95, type: !103)
!2635 = !DILocation(line: 95, column: 65, scope: !2629)
!2636 = !DILocation(line: 97, column: 41, scope: !2629)
!2637 = !DILocation(line: 97, column: 2, scope: !2629)
!2638 = !DISubprogram(name: "__bitmap_weight", scope: !2428, file: !2428, line: 171, type: !2472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2639 = distinct !DISubprogram(name: "__arch_hweight64", scope: !2640, file: !2640, line: 43, type: !2641, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2643)
!2640 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!103, !111}
!2643 = !{!2644, !2645}
!2644 = !DILocalVariable(name: "w", arg: 1, scope: !2639, file: !2640, line: 43, type: !111)
!2645 = !DILocalVariable(name: "res", scope: !2639, file: !2640, line: 45, type: !103)
!2646 = !DILocation(line: 43, column: 61, scope: !2639)
!2647 = !DILocation(line: 45, column: 2, scope: !2639)
!2648 = !DILocation(line: 45, column: 16, scope: !2639)
!2649 = !DILocation(line: 49, column: 15, scope: !2639)
!2650 = !DILocation(line: 47, column: 2, scope: !2639)
!2651 = !{i64 2148249696, i64 2148249724, i64 2148249730, i64 2148249746, i64 2148249762, i64 2148249789, i64 2148250122, i64 2148249422, i64 2148250128, i64 2148250176, i64 2148250240, i64 2148250304, i64 2148250361, i64 2148249503, i64 2148249528, i64 2148250568, i64 2148250698, i64 2148250629, i64 2148250712, i64 2148249620}
!2652 = !DILocation(line: 51, column: 9, scope: !2639)
!2653 = !DILocation(line: 52, column: 1, scope: !2639)
!2654 = !DILocation(line: 51, column: 2, scope: !2639)
!2655 = distinct !DISubprogram(name: "kzalloc", scope: !90, file: !90, line: 719, type: !2656, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!104, !346, !100}
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "size", arg: 1, scope: !2655, file: !90, line: 719, type: !346)
!2660 = !DILocalVariable(name: "flags", arg: 2, scope: !2655, file: !90, line: 719, type: !100)
!2661 = !DILocation(line: 719, column: 52, scope: !2655)
!2662 = !DILocation(line: 719, column: 64, scope: !2655)
!2663 = !DILocation(line: 721, column: 17, scope: !2655)
!2664 = !DILocation(line: 721, column: 23, scope: !2655)
!2665 = !DILocation(line: 721, column: 29, scope: !2655)
!2666 = !DILocation(line: 721, column: 9, scope: !2655)
!2667 = !DILocation(line: 721, column: 2, scope: !2655)
!2668 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2669, file: !2669, line: 65, type: !2670, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2669 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!103}
!2672 = !DILocation(line: 67, column: 9, scope: !2668)
!2673 = !DILocation(line: 67, column: 2, scope: !2668)
!2674 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2669, file: !2669, line: 120, type: !2675, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!46, !103}
!2677 = !{!2678}
!2678 = !DILocalVariable(name: "flags", arg: 1, scope: !2674, file: !2669, line: 120, type: !103)
!2679 = !DILocation(line: 120, column: 67, scope: !2674)
!2680 = !DILocation(line: 122, column: 11, scope: !2674)
!2681 = !DILocation(line: 122, column: 17, scope: !2674)
!2682 = !DILocation(line: 122, column: 9, scope: !2674)
!2683 = !DILocation(line: 122, column: 2, scope: !2674)
!2684 = distinct !DISubprogram(name: "kmalloc", scope: !90, file: !90, line: 591, type: !2656, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2685)
!2685 = !{!2686, !2687, !2688}
!2686 = !DILocalVariable(name: "size", arg: 1, scope: !2684, file: !90, line: 591, type: !346)
!2687 = !DILocalVariable(name: "flags", arg: 2, scope: !2684, file: !90, line: 591, type: !100)
!2688 = !DILocalVariable(name: "index", scope: !2689, file: !90, line: 594, type: !7)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !90, line: 593, column: 42)
!2690 = distinct !DILexicalBlock(scope: !2684, file: !90, line: 593, column: 6)
!2691 = !DILocation(line: 591, column: 61, scope: !2684)
!2692 = !DILocation(line: 591, column: 73, scope: !2684)
!2693 = !DILocation(line: 593, column: 27, scope: !2690)
!2694 = !DILocation(line: 593, column: 6, scope: !2690)
!2695 = !DILocation(line: 593, column: 33, scope: !2690)
!2696 = !DILocation(line: 593, column: 36, scope: !2690)
!2697 = !DILocation(line: 593, column: 6, scope: !2684)
!2698 = !DILocation(line: 594, column: 3, scope: !2689)
!2699 = !DILocation(line: 594, column: 16, scope: !2689)
!2700 = !DILocation(line: 596, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2689, file: !90, line: 596, column: 7)
!2702 = !DILocation(line: 596, column: 12, scope: !2701)
!2703 = !DILocation(line: 596, column: 7, scope: !2689)
!2704 = !DILocation(line: 597, column: 25, scope: !2701)
!2705 = !DILocation(line: 597, column: 31, scope: !2701)
!2706 = !DILocation(line: 597, column: 11, scope: !2701)
!2707 = !DILocation(line: 597, column: 4, scope: !2701)
!2708 = !DILocation(line: 599, column: 11, scope: !2689)
!2709 = !DILocation(line: 599, column: 9, scope: !2689)
!2710 = !DILocation(line: 601, column: 33, scope: !2689)
!2711 = !DILocation(line: 601, column: 40, scope: !2689)
!2712 = !DILocation(line: 601, column: 20, scope: !2689)
!2713 = !DILocation(line: 601, column: 5, scope: !2689)
!2714 = !DILocation(line: 601, column: 51, scope: !2689)
!2715 = !DILocation(line: 602, column: 5, scope: !2689)
!2716 = !DILocation(line: 602, column: 12, scope: !2689)
!2717 = !DILocation(line: 600, column: 10, scope: !2689)
!2718 = !DILocation(line: 600, column: 3, scope: !2689)
!2719 = !DILocation(line: 603, column: 2, scope: !2690)
!2720 = !DILocation(line: 604, column: 19, scope: !2684)
!2721 = !DILocation(line: 604, column: 25, scope: !2684)
!2722 = !DILocation(line: 604, column: 9, scope: !2684)
!2723 = !DILocation(line: 604, column: 2, scope: !2684)
!2724 = !DILocation(line: 605, column: 1, scope: !2684)
!2725 = !DISubprogram(name: "kmalloc_large", scope: !90, file: !90, line: 531, type: !2656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2726 = distinct !DISubprogram(name: "__kmalloc_index", scope: !90, file: !90, line: 444, type: !2727, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!7, !346, !201}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "size", arg: 1, scope: !2726, file: !90, line: 444, type: !346)
!2731 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2726, file: !90, line: 445, type: !201)
!2732 = !DILocation(line: 444, column: 60, scope: !2726)
!2733 = !DILocation(line: 445, column: 16, scope: !2726)
!2734 = !DILocation(line: 447, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 447, column: 6)
!2736 = !DILocation(line: 447, column: 6, scope: !2726)
!2737 = !DILocation(line: 448, column: 3, scope: !2735)
!2738 = !DILocation(line: 450, column: 6, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 450, column: 6)
!2740 = !DILocation(line: 450, column: 11, scope: !2739)
!2741 = !DILocation(line: 450, column: 6, scope: !2726)
!2742 = !DILocation(line: 451, column: 3, scope: !2739)
!2743 = !DILocation(line: 453, column: 32, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 453, column: 6)
!2745 = !DILocation(line: 453, column: 37, scope: !2744)
!2746 = !DILocation(line: 453, column: 42, scope: !2744)
!2747 = !DILocation(line: 453, column: 45, scope: !2744)
!2748 = !DILocation(line: 453, column: 50, scope: !2744)
!2749 = !DILocation(line: 453, column: 6, scope: !2726)
!2750 = !DILocation(line: 454, column: 3, scope: !2744)
!2751 = !DILocation(line: 455, column: 32, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 455, column: 6)
!2753 = !DILocation(line: 455, column: 37, scope: !2752)
!2754 = !DILocation(line: 455, column: 43, scope: !2752)
!2755 = !DILocation(line: 455, column: 46, scope: !2752)
!2756 = !DILocation(line: 455, column: 51, scope: !2752)
!2757 = !DILocation(line: 455, column: 6, scope: !2726)
!2758 = !DILocation(line: 456, column: 3, scope: !2752)
!2759 = !DILocation(line: 457, column: 6, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 457, column: 6)
!2761 = !DILocation(line: 457, column: 11, scope: !2760)
!2762 = !DILocation(line: 457, column: 6, scope: !2726)
!2763 = !DILocation(line: 457, column: 26, scope: !2760)
!2764 = !DILocation(line: 458, column: 6, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 458, column: 6)
!2766 = !DILocation(line: 458, column: 11, scope: !2765)
!2767 = !DILocation(line: 458, column: 6, scope: !2726)
!2768 = !DILocation(line: 458, column: 26, scope: !2765)
!2769 = !DILocation(line: 459, column: 6, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 459, column: 6)
!2771 = !DILocation(line: 459, column: 11, scope: !2770)
!2772 = !DILocation(line: 459, column: 6, scope: !2726)
!2773 = !DILocation(line: 459, column: 26, scope: !2770)
!2774 = !DILocation(line: 460, column: 6, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 460, column: 6)
!2776 = !DILocation(line: 460, column: 11, scope: !2775)
!2777 = !DILocation(line: 460, column: 6, scope: !2726)
!2778 = !DILocation(line: 460, column: 26, scope: !2775)
!2779 = !DILocation(line: 461, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 461, column: 6)
!2781 = !DILocation(line: 461, column: 11, scope: !2780)
!2782 = !DILocation(line: 461, column: 6, scope: !2726)
!2783 = !DILocation(line: 461, column: 26, scope: !2780)
!2784 = !DILocation(line: 462, column: 6, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 462, column: 6)
!2786 = !DILocation(line: 462, column: 11, scope: !2785)
!2787 = !DILocation(line: 462, column: 6, scope: !2726)
!2788 = !DILocation(line: 462, column: 26, scope: !2785)
!2789 = !DILocation(line: 463, column: 6, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 463, column: 6)
!2791 = !DILocation(line: 463, column: 11, scope: !2790)
!2792 = !DILocation(line: 463, column: 6, scope: !2726)
!2793 = !DILocation(line: 463, column: 26, scope: !2790)
!2794 = !DILocation(line: 464, column: 6, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 464, column: 6)
!2796 = !DILocation(line: 464, column: 11, scope: !2795)
!2797 = !DILocation(line: 464, column: 6, scope: !2726)
!2798 = !DILocation(line: 464, column: 26, scope: !2795)
!2799 = !DILocation(line: 465, column: 6, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 465, column: 6)
!2801 = !DILocation(line: 465, column: 11, scope: !2800)
!2802 = !DILocation(line: 465, column: 6, scope: !2726)
!2803 = !DILocation(line: 465, column: 26, scope: !2800)
!2804 = !DILocation(line: 466, column: 6, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 466, column: 6)
!2806 = !DILocation(line: 466, column: 11, scope: !2805)
!2807 = !DILocation(line: 466, column: 6, scope: !2726)
!2808 = !DILocation(line: 466, column: 26, scope: !2805)
!2809 = !DILocation(line: 467, column: 6, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 467, column: 6)
!2811 = !DILocation(line: 467, column: 11, scope: !2810)
!2812 = !DILocation(line: 467, column: 6, scope: !2726)
!2813 = !DILocation(line: 467, column: 26, scope: !2810)
!2814 = !DILocation(line: 468, column: 6, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 468, column: 6)
!2816 = !DILocation(line: 468, column: 11, scope: !2815)
!2817 = !DILocation(line: 468, column: 6, scope: !2726)
!2818 = !DILocation(line: 468, column: 26, scope: !2815)
!2819 = !DILocation(line: 469, column: 6, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 469, column: 6)
!2821 = !DILocation(line: 469, column: 11, scope: !2820)
!2822 = !DILocation(line: 469, column: 6, scope: !2726)
!2823 = !DILocation(line: 469, column: 26, scope: !2820)
!2824 = !DILocation(line: 470, column: 6, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 470, column: 6)
!2826 = !DILocation(line: 470, column: 11, scope: !2825)
!2827 = !DILocation(line: 470, column: 6, scope: !2726)
!2828 = !DILocation(line: 470, column: 26, scope: !2825)
!2829 = !DILocation(line: 471, column: 6, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 471, column: 6)
!2831 = !DILocation(line: 471, column: 11, scope: !2830)
!2832 = !DILocation(line: 471, column: 6, scope: !2726)
!2833 = !DILocation(line: 471, column: 26, scope: !2830)
!2834 = !DILocation(line: 472, column: 6, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 472, column: 6)
!2836 = !DILocation(line: 472, column: 11, scope: !2835)
!2837 = !DILocation(line: 472, column: 6, scope: !2726)
!2838 = !DILocation(line: 472, column: 26, scope: !2835)
!2839 = !DILocation(line: 473, column: 6, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 473, column: 6)
!2841 = !DILocation(line: 473, column: 11, scope: !2840)
!2842 = !DILocation(line: 473, column: 6, scope: !2726)
!2843 = !DILocation(line: 473, column: 26, scope: !2840)
!2844 = !DILocation(line: 474, column: 6, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 474, column: 6)
!2846 = !DILocation(line: 474, column: 11, scope: !2845)
!2847 = !DILocation(line: 474, column: 6, scope: !2726)
!2848 = !DILocation(line: 474, column: 27, scope: !2845)
!2849 = !DILocation(line: 475, column: 6, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 475, column: 6)
!2851 = !DILocation(line: 475, column: 11, scope: !2850)
!2852 = !DILocation(line: 475, column: 6, scope: !2726)
!2853 = !DILocation(line: 475, column: 32, scope: !2850)
!2854 = !DILocation(line: 477, column: 50, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2726, file: !90, line: 477, column: 6)
!2856 = !DILocation(line: 477, column: 6, scope: !2726)
!2857 = !DILocation(line: 478, column: 3, scope: !2855)
!2858 = !DILocation(line: 478, column: 3, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !90, line: 478, column: 3)
!2860 = distinct !DILexicalBlock(scope: !2855, file: !90, line: 478, column: 3)
!2861 = !{i32 -2143465306}
!2862 = !DILocation(line: 478, column: 3, scope: !2860)
!2863 = !DILocation(line: 480, column: 3, scope: !2855)
!2864 = !DILocation(line: 480, column: 3, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2855, file: !90, line: 480, column: 3)
!2866 = !DILocation(line: 480, column: 3, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !90, line: 480, column: 3)
!2868 = !DILocation(line: 480, column: 3, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2865, file: !90, line: 480, column: 3)
!2870 = !{i64 2151502193, i64 2151502222, i64 2151502268, i64 2151502326, i64 2151502380, i64 2151502434, i64 2151502489, i64 2151502520}
!2871 = !DILocation(line: 483, column: 2, scope: !2726)
!2872 = !DILocation(line: 484, column: 1, scope: !2726)
!2873 = !DISubprogram(name: "kmalloc_trace", scope: !90, file: !90, line: 525, type: !2874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!104, !2876, !100, !346}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2878, line: 11, flags: DIFlagFwdDecl)
!2878 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2879 = distinct !DISubprogram(name: "kmalloc_type", scope: !90, file: !90, line: 401, type: !2880, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!89, !100, !103}
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "flags", arg: 1, scope: !2879, file: !90, line: 401, type: !100)
!2884 = !DILocalVariable(name: "caller", arg: 2, scope: !2879, file: !90, line: 401, type: !103)
!2885 = !DILocation(line: 401, column: 67, scope: !2879)
!2886 = !DILocation(line: 401, column: 88, scope: !2879)
!2887 = !DILocation(line: 407, column: 6, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2879, file: !90, line: 407, column: 6)
!2889 = !DILocation(line: 407, column: 6, scope: !2879)
!2890 = !DILocation(line: 413, column: 3, scope: !2888)
!2891 = !DILocation(line: 423, column: 38, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2879, file: !90, line: 423, column: 6)
!2893 = !DILocation(line: 423, column: 44, scope: !2892)
!2894 = !DILocation(line: 423, column: 6, scope: !2879)
!2895 = !DILocation(line: 424, column: 3, scope: !2892)
!2896 = !DILocation(line: 426, column: 3, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2879, file: !90, line: 425, column: 6)
!2898 = !DILocation(line: 429, column: 1, scope: !2879)
!2899 = !DISubprogram(name: "__kmalloc", scope: !90, file: !90, line: 488, type: !2656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2900 = !DISubprogram(name: "__compiletime_assert_125", scope: !90, file: !90, line: 478, type: !1314, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2901 = distinct !DISubprogram(name: "native_save_fl", scope: !2669, file: !2669, line: 17, type: !2670, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2902)
!2902 = !{!2903}
!2903 = !DILocalVariable(name: "flags", scope: !2901, file: !2669, line: 19, type: !103)
!2904 = !DILocation(line: 19, column: 2, scope: !2901)
!2905 = !DILocation(line: 19, column: 16, scope: !2901)
!2906 = !DILocation(line: 26, column: 2, scope: !2901)
!2907 = !{i64 2076512, i64 2076533}
!2908 = !DILocation(line: 32, column: 9, scope: !2901)
!2909 = !DILocation(line: 33, column: 1, scope: !2901)
!2910 = !DILocation(line: 32, column: 2, scope: !2901)
!2911 = distinct !DISubprogram(name: "variable__ffs", scope: !2596, file: !2596, line: 250, type: !2631, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "word", arg: 1, scope: !2911, file: !2596, line: 250, type: !103)
!2914 = !DILocation(line: 250, column: 66, scope: !2911)
!2915 = !DILocation(line: 254, column: 11, scope: !2911)
!2916 = !DILocation(line: 252, column: 2, scope: !2911)
!2917 = !{i64 699826}
!2918 = !DILocation(line: 255, column: 9, scope: !2911)
!2919 = !DILocation(line: 255, column: 2, scope: !2911)
!2920 = !DISubprogram(name: "_find_next_bit", scope: !2519, file: !2519, line: 11, type: !2520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
