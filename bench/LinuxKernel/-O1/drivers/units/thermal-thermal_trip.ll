; ModuleID = 'drivers/thermal/thermal_trip.c'
source_filename = "drivers/thermal/thermal_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_for_each_thermal_trip: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad for_each_thermal_trip ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_thermal_zone_get_num_trips: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad thermal_zone_get_num_trips ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___thermal_zone_get_trip: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __thermal_zone_get_trip ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_thermal_zone_get_trip: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad thermal_zone_get_trip ; .previous"

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
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_trip = type { i32, i32, i32, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_for_each_thermal_trip203 = internal global ptr @for_each_thermal_trip, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_thermal_zone_get_num_trips204 = internal global ptr @thermal_zone_get_num_trips, section ".discard.addressable", align 8, !dbg !120
@.str = private unnamed_addr constant [25 x i8] c"Failed to set trips: %d\0A\00", align 1, !dbg !122
@__UNIQUE_ID___addressable___thermal_zone_get_trip205 = internal global ptr @__thermal_zone_get_trip, section ".discard.addressable", align 8, !dbg !128
@__UNIQUE_ID___addressable_thermal_zone_get_trip206 = internal global ptr @thermal_zone_get_trip, section ".discard.addressable", align 8, !dbg !130
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_for_each_thermal_trip203, ptr @__UNIQUE_ID___addressable_thermal_zone_get_num_trips204, ptr @__UNIQUE_ID___addressable___thermal_zone_get_trip205, ptr @__UNIQUE_ID___addressable_thermal_zone_get_trip206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @for_each_thermal_trip(ptr noundef %tz, ptr noundef %cb, ptr noundef %data) #0 align 16 !dbg !141 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !1940, metadata !DIExpression()), !dbg !1945
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !1941, metadata !DIExpression()), !dbg !1946
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1942, metadata !DIExpression()), !dbg !1947
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !1948
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1943, metadata !DIExpression()), !dbg !1949
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1948
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1944, metadata !DIExpression()), !dbg !1950
  br label %do.body, !dbg !1951

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !1952
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28, !dbg !1952
  br label %do.cond, !dbg !1952

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1952

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !1954
  br label %for.cond, !dbg !1956

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, ptr %i, align 4, !dbg !1957
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !1959
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 11, !dbg !1960
  %3 = load i32, ptr %num_trips, align 8, !dbg !1960
  %cmp = icmp slt i32 %1, %3, !dbg !1961
  br i1 %cmp, label %for.body, label %for.end, !dbg !1962

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cb.addr, align 8, !dbg !1963
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !1965
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 10, !dbg !1966
  %6 = load ptr, ptr %trips, align 8, !dbg !1966
  %7 = load i32, ptr %i, align 4, !dbg !1967
  %idxprom = sext i32 %7 to i64, !dbg !1965
  %arrayidx = getelementptr %struct.thermal_trip, ptr %6, i64 %idxprom, !dbg !1965
  %8 = load ptr, ptr %data.addr, align 8, !dbg !1968
  %call = call i32 %4(ptr noundef %arrayidx, ptr noundef %8) #8, !dbg !1963
  store i32 %call, ptr %ret, align 4, !dbg !1969
  %9 = load i32, ptr %ret, align 4, !dbg !1970
  %tobool = icmp ne i32 %9, 0, !dbg !1970
  br i1 %tobool, label %if.then, label %if.end, !dbg !1972

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %ret, align 4, !dbg !1973
  store i32 %10, ptr %retval, align 4, !dbg !1974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1974

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1975

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !1976
  %inc = add i32 %11, 1, !dbg !1976
  store i32 %inc, ptr %i, align 4, !dbg !1976
  br label %for.cond, !dbg !1977, !llvm.loop !1978

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1982

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1983
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1983
  %12 = load i32, ptr %retval, align 4, !dbg !1983
  ret i32 %12, !dbg !1983
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_get_num_trips(ptr noundef %tz) #0 align 16 !dbg !1984 {
entry:
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !1986, metadata !DIExpression()), !dbg !1987
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !1988
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 11, !dbg !1989
  %1 = load i32, ptr %num_trips, align 8, !dbg !1989
  ret i32 %1, !dbg !1990
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__thermal_zone_set_trips(ptr noundef %tz) #0 align 16 !dbg !1991 {
entry:
  %tz.addr = alloca ptr, align 8
  %trip = alloca %struct.thermal_trip, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %same_trip = alloca i8, align 1
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %low_set = alloca i8, align 1
  %trip_low = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !1993, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.start.p0(i64 24, ptr %trip) #7, !dbg !2006
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !1994, metadata !DIExpression()), !dbg !2007
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #7, !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1995, metadata !DIExpression()), !dbg !2009
  store i32 -2147483647, ptr %low, align 4, !dbg !2009
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #7, !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1996, metadata !DIExpression()), !dbg !2010
  store i32 2147483647, ptr %high, align 4, !dbg !2010
  call void @llvm.lifetime.start.p0(i64 1, ptr %same_trip) #7, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %same_trip, metadata !1997, metadata !DIExpression()), !dbg !2012
  store i8 0, ptr %same_trip, align 1, !dbg !2012
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2013
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1998, metadata !DIExpression()), !dbg !2014
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2013
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1999, metadata !DIExpression()), !dbg !2015
  br label %do.body, !dbg !2016

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2017
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28, !dbg !2017
  br label %do.cond, !dbg !2017

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2017

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2019
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 22, !dbg !2021
  %2 = load ptr, ptr %ops, align 8, !dbg !2021
  %set_trips = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %2, i32 0, i32 3, !dbg !2022
  %3 = load ptr, ptr %set_trips, align 8, !dbg !2022
  %tobool = icmp ne ptr %3, null, !dbg !2019
  br i1 %tobool, label %if.end, label %if.then, !dbg !2023

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2024

if.end:                                           ; preds = %do.end
  store i32 0, ptr %i, align 4, !dbg !2025
  br label %for.cond, !dbg !2026

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !2027
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2028
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 11, !dbg !2029
  %6 = load i32, ptr %num_trips, align 8, !dbg !2029
  %cmp = icmp slt i32 %4, %6, !dbg !2030
  br i1 %cmp, label %for.body, label %for.end, !dbg !2031

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %low_set) #7, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %low_set, metadata !2000, metadata !DIExpression()), !dbg !2033
  store i8 0, ptr %low_set, align 1, !dbg !2033
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip_low) #7, !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %trip_low, metadata !2004, metadata !DIExpression()), !dbg !2035
  %7 = load ptr, ptr %tz.addr, align 8, !dbg !2036
  %8 = load i32, ptr %i, align 4, !dbg !2037
  %call = call i32 @__thermal_zone_get_trip(ptr noundef %7, i32 noundef %8, ptr noundef %trip) #8, !dbg !2038
  store i32 %call, ptr %ret, align 4, !dbg !2039
  %9 = load i32, ptr %ret, align 4, !dbg !2040
  %tobool1 = icmp ne i32 %9, 0, !dbg !2040
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2042

if.then2:                                         ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2043

if.end3:                                          ; preds = %for.body
  %temperature = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 0, !dbg !2044
  %10 = load i32, ptr %temperature, align 8, !dbg !2044
  %hysteresis = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 1, !dbg !2045
  %11 = load i32, ptr %hysteresis, align 4, !dbg !2045
  %sub = sub i32 %10, %11, !dbg !2046
  store i32 %sub, ptr %trip_low, align 4, !dbg !2047
  %12 = load i32, ptr %trip_low, align 4, !dbg !2048
  %13 = load ptr, ptr %tz.addr, align 8, !dbg !2050
  %temperature4 = getelementptr inbounds %struct.thermal_zone_device, ptr %13, i32 0, i32 15, !dbg !2051
  %14 = load i32, ptr %temperature4, align 8, !dbg !2051
  %cmp5 = icmp slt i32 %12, %14, !dbg !2052
  br i1 %cmp5, label %land.lhs.true, label %if.end8, !dbg !2053

land.lhs.true:                                    ; preds = %if.end3
  %15 = load i32, ptr %trip_low, align 4, !dbg !2054
  %16 = load i32, ptr %low, align 4, !dbg !2055
  %cmp6 = icmp sgt i32 %15, %16, !dbg !2056
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2057

if.then7:                                         ; preds = %land.lhs.true
  %17 = load i32, ptr %trip_low, align 4, !dbg !2058
  store i32 %17, ptr %low, align 4, !dbg !2060
  store i8 1, ptr %low_set, align 1, !dbg !2061
  store i8 0, ptr %same_trip, align 1, !dbg !2062
  br label %if.end8, !dbg !2063

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.end3
  %temperature9 = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 0, !dbg !2064
  %18 = load i32, ptr %temperature9, align 8, !dbg !2064
  %19 = load ptr, ptr %tz.addr, align 8, !dbg !2066
  %temperature10 = getelementptr inbounds %struct.thermal_zone_device, ptr %19, i32 0, i32 15, !dbg !2067
  %20 = load i32, ptr %temperature10, align 8, !dbg !2067
  %cmp11 = icmp sgt i32 %18, %20, !dbg !2068
  br i1 %cmp11, label %land.lhs.true12, label %if.end18, !dbg !2069

land.lhs.true12:                                  ; preds = %if.end8
  %temperature13 = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 0, !dbg !2070
  %21 = load i32, ptr %temperature13, align 8, !dbg !2070
  %22 = load i32, ptr %high, align 4, !dbg !2071
  %cmp14 = icmp slt i32 %21, %22, !dbg !2072
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !2073

if.then15:                                        ; preds = %land.lhs.true12
  %temperature16 = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 0, !dbg !2074
  %23 = load i32, ptr %temperature16, align 8, !dbg !2074
  store i32 %23, ptr %high, align 4, !dbg !2076
  %24 = load i8, ptr %low_set, align 1, !dbg !2077, !range !2078, !noundef !383
  %tobool17 = trunc i8 %24 to i1, !dbg !2077
  %frombool = zext i1 %tobool17 to i8, !dbg !2079
  store i8 %frombool, ptr %same_trip, align 1, !dbg !2079
  br label %if.end18, !dbg !2080

if.end18:                                         ; preds = %if.then15, %land.lhs.true12, %if.end8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2081
  br label %cleanup, !dbg !2081

cleanup:                                          ; preds = %if.end18, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip_low) #7, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 1, ptr %low_set) #7, !dbg !2081
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2082

for.inc:                                          ; preds = %cleanup.cont
  %25 = load i32, ptr %i, align 4, !dbg !2083
  %inc = add i32 %25, 1, !dbg !2083
  store i32 %inc, ptr %i, align 4, !dbg !2083
  br label %for.cond, !dbg !2084, !llvm.loop !2085

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %tz.addr, align 8, !dbg !2087
  %prev_low_trip = getelementptr inbounds %struct.thermal_zone_device, ptr %26, i32 0, i32 19, !dbg !2089
  %27 = load i32, ptr %prev_low_trip, align 8, !dbg !2089
  %28 = load i32, ptr %low, align 4, !dbg !2090
  %cmp20 = icmp eq i32 %27, %28, !dbg !2091
  br i1 %cmp20, label %land.lhs.true21, label %if.end24, !dbg !2092

land.lhs.true21:                                  ; preds = %for.end
  %29 = load ptr, ptr %tz.addr, align 8, !dbg !2093
  %prev_high_trip = getelementptr inbounds %struct.thermal_zone_device, ptr %29, i32 0, i32 20, !dbg !2094
  %30 = load i32, ptr %prev_high_trip, align 4, !dbg !2094
  %31 = load i32, ptr %high, align 4, !dbg !2095
  %cmp22 = icmp eq i32 %30, %31, !dbg !2096
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2097

if.then23:                                        ; preds = %land.lhs.true21
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2098

if.end24:                                         ; preds = %land.lhs.true21, %for.end
  %32 = load i8, ptr %same_trip, align 1, !dbg !2099, !range !2078, !noundef !383
  %tobool25 = trunc i8 %32 to i1, !dbg !2099
  br i1 %tobool25, label %land.lhs.true26, label %if.end32, !dbg !2101

land.lhs.true26:                                  ; preds = %if.end24
  %33 = load ptr, ptr %tz.addr, align 8, !dbg !2102
  %prev_low_trip27 = getelementptr inbounds %struct.thermal_zone_device, ptr %33, i32 0, i32 19, !dbg !2103
  %34 = load i32, ptr %prev_low_trip27, align 8, !dbg !2103
  %cmp28 = icmp ne i32 %34, -2147483647, !dbg !2104
  br i1 %cmp28, label %if.then31, label %lor.lhs.false, !dbg !2105

lor.lhs.false:                                    ; preds = %land.lhs.true26
  %35 = load ptr, ptr %tz.addr, align 8, !dbg !2106
  %prev_high_trip29 = getelementptr inbounds %struct.thermal_zone_device, ptr %35, i32 0, i32 20, !dbg !2107
  %36 = load i32, ptr %prev_high_trip29, align 4, !dbg !2107
  %cmp30 = icmp ne i32 %36, 2147483647, !dbg !2108
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2109

if.then31:                                        ; preds = %lor.lhs.false, %land.lhs.true26
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2110

if.end32:                                         ; preds = %lor.lhs.false, %if.end24
  %37 = load i32, ptr %low, align 4, !dbg !2111
  %38 = load ptr, ptr %tz.addr, align 8, !dbg !2112
  %prev_low_trip33 = getelementptr inbounds %struct.thermal_zone_device, ptr %38, i32 0, i32 19, !dbg !2113
  store i32 %37, ptr %prev_low_trip33, align 8, !dbg !2114
  %39 = load i32, ptr %high, align 4, !dbg !2115
  %40 = load ptr, ptr %tz.addr, align 8, !dbg !2116
  %prev_high_trip34 = getelementptr inbounds %struct.thermal_zone_device, ptr %40, i32 0, i32 20, !dbg !2117
  store i32 %39, ptr %prev_high_trip34, align 4, !dbg !2118
  %41 = load ptr, ptr %tz.addr, align 8, !dbg !2119
  %ops35 = getelementptr inbounds %struct.thermal_zone_device, ptr %41, i32 0, i32 22, !dbg !2120
  %42 = load ptr, ptr %ops35, align 8, !dbg !2120
  %set_trips36 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %42, i32 0, i32 3, !dbg !2121
  %43 = load ptr, ptr %set_trips36, align 8, !dbg !2121
  %44 = load ptr, ptr %tz.addr, align 8, !dbg !2122
  %45 = load i32, ptr %low, align 4, !dbg !2123
  %46 = load i32, ptr %high, align 4, !dbg !2124
  %call37 = call i32 %43(ptr noundef %44, i32 noundef %45, i32 noundef %46) #8, !dbg !2119
  store i32 %call37, ptr %ret, align 4, !dbg !2125
  %47 = load i32, ptr %ret, align 4, !dbg !2126
  %tobool38 = icmp ne i32 %47, 0, !dbg !2126
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !2128

if.then39:                                        ; preds = %if.end32
  br label %do.body40, !dbg !2129

do.body40:                                        ; preds = %if.then39
  br label %do.cond41, !dbg !2131

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2131

do.end42:                                         ; preds = %do.cond41
  %48 = load ptr, ptr %tz.addr, align 8, !dbg !2129
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %48, i32 0, i32 2, !dbg !2129
  %49 = load i32, ptr %ret, align 4, !dbg !2129
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef @.str, i32 noundef %49) #9, !dbg !2129
  br label %if.end43, !dbg !2133

if.end43:                                         ; preds = %do.end42, %if.end32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2134
  br label %cleanup44, !dbg !2134

cleanup44:                                        ; preds = %if.end43, %if.then31, %if.then23, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 1, ptr %same_trip) #7, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #7, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #7, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 24, ptr %trip) #7, !dbg !2134
  %cleanup.dest50 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest50, label %unreachable [
    i32 0, label %cleanup.cont51
    i32 1, label %cleanup.cont51
  ]

cleanup.cont51:                                   ; preds = %cleanup44, %cleanup44
  ret void, !dbg !2134

unreachable:                                      ; preds = %cleanup44
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__thermal_zone_get_trip(ptr noundef %tz, i32 noundef %trip_id, ptr noundef %trip) #0 align 16 !dbg !2135 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %trip_id.addr = alloca i32, align 4
  %trip.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2139, metadata !DIExpression()), !dbg !2142
  store i32 %trip_id, ptr %trip_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip_id.addr, metadata !2140, metadata !DIExpression()), !dbg !2143
  store ptr %trip, ptr %trip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !2141, metadata !DIExpression()), !dbg !2144
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2145
  %tobool = icmp ne ptr %0, null, !dbg !2145
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2147

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2148
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 10, !dbg !2149
  %2 = load ptr, ptr %trips, align 8, !dbg !2149
  %tobool1 = icmp ne ptr %2, null, !dbg !2148
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2150

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %trip_id.addr, align 4, !dbg !2151
  %cmp = icmp slt i32 %3, 0, !dbg !2152
  br i1 %cmp, label %if.then, label %lor.lhs.false3, !dbg !2153

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %4 = load i32, ptr %trip_id.addr, align 4, !dbg !2154
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2155
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 11, !dbg !2156
  %6 = load i32, ptr %num_trips, align 8, !dbg !2156
  %cmp4 = icmp sge i32 %4, %6, !dbg !2157
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !2158

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %7 = load ptr, ptr %trip.addr, align 8, !dbg !2159
  %tobool6 = icmp ne ptr %7, null, !dbg !2159
  br i1 %tobool6, label %if.end, label %if.then, !dbg !2160

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2161
  br label %return, !dbg !2161

if.end:                                           ; preds = %lor.lhs.false5
  %8 = load ptr, ptr %trip.addr, align 8, !dbg !2162
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !2163
  %trips7 = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 10, !dbg !2164
  %10 = load ptr, ptr %trips7, align 8, !dbg !2164
  %11 = load i32, ptr %trip_id.addr, align 4, !dbg !2165
  %idxprom = sext i32 %11 to i64, !dbg !2163
  %arrayidx = getelementptr %struct.thermal_trip, ptr %10, i64 %idxprom, !dbg !2163
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %arrayidx, i64 24, i1 false), !dbg !2163
  store i32 0, ptr %retval, align 4, !dbg !2166
  br label %return, !dbg !2166

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !2167
  ret i32 %12, !dbg !2167
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2168 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_get_trip(ptr noundef %tz, i32 noundef %trip_id, ptr noundef %trip) #0 align 16 !dbg !2172 {
entry:
  %tz.addr = alloca ptr, align 8
  %trip_id.addr = alloca i32, align 4
  %trip.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2174, metadata !DIExpression()), !dbg !2178
  store i32 %trip_id, ptr %trip_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip_id.addr, metadata !2175, metadata !DIExpression()), !dbg !2179
  store ptr %trip, ptr %trip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !2176, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2181
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2177, metadata !DIExpression()), !dbg !2182
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2183
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28, !dbg !2184
  call void @mutex_lock(ptr noundef %lock) #8, !dbg !2185
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2186
  %2 = load i32, ptr %trip_id.addr, align 4, !dbg !2187
  %3 = load ptr, ptr %trip.addr, align 8, !dbg !2188
  %call = call i32 @__thermal_zone_get_trip(ptr noundef %1, i32 noundef %2, ptr noundef %3) #8, !dbg !2189
  store i32 %call, ptr %ret, align 4, !dbg !2190
  %4 = load ptr, ptr %tz.addr, align 8, !dbg !2191
  %lock1 = getelementptr inbounds %struct.thermal_zone_device, ptr %4, i32 0, i32 28, !dbg !2192
  call void @mutex_unlock(ptr noundef %lock1) #8, !dbg !2193
  %5 = load i32, ptr %ret, align 4, !dbg !2194
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2195
  ret i32 %5, !dbg !2196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2197 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2201 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_set_trip(ptr noundef %tz, i32 noundef %trip_id, ptr noundef %trip) #0 align 16 !dbg !2202 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %trip_id.addr = alloca i32, align 4
  %trip.addr = alloca ptr, align 8
  %t = alloca %struct.thermal_trip, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2206, metadata !DIExpression()), !dbg !2211
  store i32 %trip_id, ptr %trip_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip_id.addr, metadata !2207, metadata !DIExpression()), !dbg !2212
  store ptr %trip, ptr %trip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !2208, metadata !DIExpression()), !dbg !2213
  call void @llvm.lifetime.start.p0(i64 24, ptr %t) #7, !dbg !2214
  call void @llvm.dbg.declare(metadata ptr %t, metadata !2209, metadata !DIExpression()), !dbg !2215
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2210, metadata !DIExpression()), !dbg !2217
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2218
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 22, !dbg !2220
  %1 = load ptr, ptr %ops, align 8, !dbg !2220
  %set_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %1, i32 0, i32 5, !dbg !2221
  %2 = load ptr, ptr %set_trip_temp, align 8, !dbg !2221
  %tobool = icmp ne ptr %2, null, !dbg !2218
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2222

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2223
  %ops1 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 22, !dbg !2224
  %4 = load ptr, ptr %ops1, align 8, !dbg !2224
  %set_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 6, !dbg !2225
  %5 = load ptr, ptr %set_trip_hyst, align 8, !dbg !2225
  %tobool2 = icmp ne ptr %5, null, !dbg !2223
  br i1 %tobool2, label %if.end, label %land.lhs.true3, !dbg !2226

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %tz.addr, align 8, !dbg !2227
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 10, !dbg !2228
  %7 = load ptr, ptr %trips, align 8, !dbg !2228
  %tobool4 = icmp ne ptr %7, null, !dbg !2227
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2229

if.then:                                          ; preds = %land.lhs.true3
  store i32 -22, ptr %retval, align 4, !dbg !2230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2230

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !2231
  %9 = load i32, ptr %trip_id.addr, align 4, !dbg !2232
  %call = call i32 @__thermal_zone_get_trip(ptr noundef %8, i32 noundef %9, ptr noundef %t) #8, !dbg !2233
  store i32 %call, ptr %ret, align 4, !dbg !2234
  %10 = load i32, ptr %ret, align 4, !dbg !2235
  %tobool5 = icmp ne i32 %10, 0, !dbg !2235
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2237

if.then6:                                         ; preds = %if.end
  %11 = load i32, ptr %ret, align 4, !dbg !2238
  store i32 %11, ptr %retval, align 4, !dbg !2239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2239

if.end7:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.thermal_trip, ptr %t, i32 0, i32 2, !dbg !2240
  %12 = load i32, ptr %type, align 8, !dbg !2240
  %13 = load ptr, ptr %trip.addr, align 8, !dbg !2242
  %type8 = getelementptr inbounds %struct.thermal_trip, ptr %13, i32 0, i32 2, !dbg !2243
  %14 = load i32, ptr %type8, align 8, !dbg !2243
  %cmp = icmp ne i32 %12, %14, !dbg !2244
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !2245

if.then9:                                         ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !2246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2246

if.end10:                                         ; preds = %if.end7
  %temperature = getelementptr inbounds %struct.thermal_trip, ptr %t, i32 0, i32 0, !dbg !2247
  %15 = load i32, ptr %temperature, align 8, !dbg !2247
  %16 = load ptr, ptr %trip.addr, align 8, !dbg !2249
  %temperature11 = getelementptr inbounds %struct.thermal_trip, ptr %16, i32 0, i32 0, !dbg !2250
  %17 = load i32, ptr %temperature11, align 8, !dbg !2250
  %cmp12 = icmp ne i32 %15, %17, !dbg !2251
  br i1 %cmp12, label %land.lhs.true13, label %if.end25, !dbg !2252

land.lhs.true13:                                  ; preds = %if.end10
  %18 = load ptr, ptr %tz.addr, align 8, !dbg !2253
  %ops14 = getelementptr inbounds %struct.thermal_zone_device, ptr %18, i32 0, i32 22, !dbg !2254
  %19 = load ptr, ptr %ops14, align 8, !dbg !2254
  %set_trip_temp15 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %19, i32 0, i32 5, !dbg !2255
  %20 = load ptr, ptr %set_trip_temp15, align 8, !dbg !2255
  %tobool16 = icmp ne ptr %20, null, !dbg !2253
  br i1 %tobool16, label %if.then17, label %if.end25, !dbg !2256

if.then17:                                        ; preds = %land.lhs.true13
  %21 = load ptr, ptr %tz.addr, align 8, !dbg !2257
  %ops18 = getelementptr inbounds %struct.thermal_zone_device, ptr %21, i32 0, i32 22, !dbg !2259
  %22 = load ptr, ptr %ops18, align 8, !dbg !2259
  %set_trip_temp19 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %22, i32 0, i32 5, !dbg !2260
  %23 = load ptr, ptr %set_trip_temp19, align 8, !dbg !2260
  %24 = load ptr, ptr %tz.addr, align 8, !dbg !2261
  %25 = load i32, ptr %trip_id.addr, align 4, !dbg !2262
  %26 = load ptr, ptr %trip.addr, align 8, !dbg !2263
  %temperature20 = getelementptr inbounds %struct.thermal_trip, ptr %26, i32 0, i32 0, !dbg !2264
  %27 = load i32, ptr %temperature20, align 8, !dbg !2264
  %call21 = call i32 %23(ptr noundef %24, i32 noundef %25, i32 noundef %27) #8, !dbg !2257
  store i32 %call21, ptr %ret, align 4, !dbg !2265
  %28 = load i32, ptr %ret, align 4, !dbg !2266
  %tobool22 = icmp ne i32 %28, 0, !dbg !2266
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2268

if.then23:                                        ; preds = %if.then17
  %29 = load i32, ptr %ret, align 4, !dbg !2269
  store i32 %29, ptr %retval, align 4, !dbg !2270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2270

if.end24:                                         ; preds = %if.then17
  br label %if.end25, !dbg !2271

if.end25:                                         ; preds = %if.end24, %land.lhs.true13, %if.end10
  %hysteresis = getelementptr inbounds %struct.thermal_trip, ptr %t, i32 0, i32 1, !dbg !2272
  %30 = load i32, ptr %hysteresis, align 4, !dbg !2272
  %31 = load ptr, ptr %trip.addr, align 8, !dbg !2274
  %hysteresis26 = getelementptr inbounds %struct.thermal_trip, ptr %31, i32 0, i32 1, !dbg !2275
  %32 = load i32, ptr %hysteresis26, align 4, !dbg !2275
  %cmp27 = icmp ne i32 %30, %32, !dbg !2276
  br i1 %cmp27, label %land.lhs.true28, label %if.end40, !dbg !2277

land.lhs.true28:                                  ; preds = %if.end25
  %33 = load ptr, ptr %tz.addr, align 8, !dbg !2278
  %ops29 = getelementptr inbounds %struct.thermal_zone_device, ptr %33, i32 0, i32 22, !dbg !2279
  %34 = load ptr, ptr %ops29, align 8, !dbg !2279
  %set_trip_hyst30 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %34, i32 0, i32 6, !dbg !2280
  %35 = load ptr, ptr %set_trip_hyst30, align 8, !dbg !2280
  %tobool31 = icmp ne ptr %35, null, !dbg !2278
  br i1 %tobool31, label %if.then32, label %if.end40, !dbg !2281

if.then32:                                        ; preds = %land.lhs.true28
  %36 = load ptr, ptr %tz.addr, align 8, !dbg !2282
  %ops33 = getelementptr inbounds %struct.thermal_zone_device, ptr %36, i32 0, i32 22, !dbg !2284
  %37 = load ptr, ptr %ops33, align 8, !dbg !2284
  %set_trip_hyst34 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %37, i32 0, i32 6, !dbg !2285
  %38 = load ptr, ptr %set_trip_hyst34, align 8, !dbg !2285
  %39 = load ptr, ptr %tz.addr, align 8, !dbg !2286
  %40 = load i32, ptr %trip_id.addr, align 4, !dbg !2287
  %41 = load ptr, ptr %trip.addr, align 8, !dbg !2288
  %hysteresis35 = getelementptr inbounds %struct.thermal_trip, ptr %41, i32 0, i32 1, !dbg !2289
  %42 = load i32, ptr %hysteresis35, align 4, !dbg !2289
  %call36 = call i32 %38(ptr noundef %39, i32 noundef %40, i32 noundef %42) #8, !dbg !2282
  store i32 %call36, ptr %ret, align 4, !dbg !2290
  %43 = load i32, ptr %ret, align 4, !dbg !2291
  %tobool37 = icmp ne i32 %43, 0, !dbg !2291
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !2293

if.then38:                                        ; preds = %if.then32
  %44 = load i32, ptr %ret, align 4, !dbg !2294
  store i32 %44, ptr %retval, align 4, !dbg !2295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2295

if.end39:                                         ; preds = %if.then32
  br label %if.end40, !dbg !2296

if.end40:                                         ; preds = %if.end39, %land.lhs.true28, %if.end25
  %45 = load ptr, ptr %tz.addr, align 8, !dbg !2297
  %trips41 = getelementptr inbounds %struct.thermal_zone_device, ptr %45, i32 0, i32 10, !dbg !2299
  %46 = load ptr, ptr %trips41, align 8, !dbg !2299
  %tobool42 = icmp ne ptr %46, null, !dbg !2297
  br i1 %tobool42, label %land.lhs.true43, label %if.end52, !dbg !2300

land.lhs.true43:                                  ; preds = %if.end40
  %temperature44 = getelementptr inbounds %struct.thermal_trip, ptr %t, i32 0, i32 0, !dbg !2301
  %47 = load i32, ptr %temperature44, align 8, !dbg !2301
  %48 = load ptr, ptr %trip.addr, align 8, !dbg !2302
  %temperature45 = getelementptr inbounds %struct.thermal_trip, ptr %48, i32 0, i32 0, !dbg !2303
  %49 = load i32, ptr %temperature45, align 8, !dbg !2303
  %cmp46 = icmp ne i32 %47, %49, !dbg !2304
  br i1 %cmp46, label %if.then50, label %lor.lhs.false, !dbg !2305

lor.lhs.false:                                    ; preds = %land.lhs.true43
  %hysteresis47 = getelementptr inbounds %struct.thermal_trip, ptr %t, i32 0, i32 1, !dbg !2306
  %50 = load i32, ptr %hysteresis47, align 4, !dbg !2306
  %51 = load ptr, ptr %trip.addr, align 8, !dbg !2307
  %hysteresis48 = getelementptr inbounds %struct.thermal_trip, ptr %51, i32 0, i32 1, !dbg !2308
  %52 = load i32, ptr %hysteresis48, align 4, !dbg !2308
  %cmp49 = icmp ne i32 %50, %52, !dbg !2309
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !2310

if.then50:                                        ; preds = %lor.lhs.false, %land.lhs.true43
  %53 = load ptr, ptr %tz.addr, align 8, !dbg !2311
  %trips51 = getelementptr inbounds %struct.thermal_zone_device, ptr %53, i32 0, i32 10, !dbg !2312
  %54 = load ptr, ptr %trips51, align 8, !dbg !2312
  %55 = load i32, ptr %trip_id.addr, align 4, !dbg !2313
  %idxprom = sext i32 %55 to i64, !dbg !2311
  %arrayidx = getelementptr %struct.thermal_trip, ptr %54, i64 %idxprom, !dbg !2311
  %56 = load ptr, ptr %trip.addr, align 8, !dbg !2314
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %56, i64 24, i1 false), !dbg !2315
  br label %if.end52, !dbg !2311

if.end52:                                         ; preds = %if.then50, %lor.lhs.false, %if.end40
  %57 = load ptr, ptr %tz.addr, align 8, !dbg !2316
  %id = getelementptr inbounds %struct.thermal_zone_device, ptr %57, i32 0, i32 0, !dbg !2317
  %58 = load i32, ptr %id, align 8, !dbg !2317
  %59 = load i32, ptr %trip_id.addr, align 4, !dbg !2318
  %60 = load ptr, ptr %trip.addr, align 8, !dbg !2319
  %type53 = getelementptr inbounds %struct.thermal_trip, ptr %60, i32 0, i32 2, !dbg !2320
  %61 = load i32, ptr %type53, align 8, !dbg !2320
  %62 = load ptr, ptr %trip.addr, align 8, !dbg !2321
  %temperature54 = getelementptr inbounds %struct.thermal_trip, ptr %62, i32 0, i32 0, !dbg !2322
  %63 = load i32, ptr %temperature54, align 8, !dbg !2322
  %64 = load ptr, ptr %trip.addr, align 8, !dbg !2323
  %hysteresis55 = getelementptr inbounds %struct.thermal_trip, ptr %64, i32 0, i32 1, !dbg !2324
  %65 = load i32, ptr %hysteresis55, align 4, !dbg !2324
  %call56 = call i32 @thermal_notify_tz_trip_change(i32 noundef %58, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65) #8, !dbg !2325
  %66 = load ptr, ptr %tz.addr, align 8, !dbg !2326
  call void @__thermal_zone_device_update(ptr noundef %66, i32 noundef 3) #8, !dbg !2327
  store i32 0, ptr %retval, align 4, !dbg !2328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2328

cleanup:                                          ; preds = %if.end52, %if.then38, %if.then23, %if.then9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 24, ptr %t) #7, !dbg !2329
  %67 = load i32, ptr %retval, align 4, !dbg !2329
  ret i32 %67, !dbg !2329
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_notify_tz_trip_change(i32 noundef %tz_id, i32 noundef %id, i32 noundef %type, i32 noundef %temp, i32 noundef %hyst) #6 align 16 !dbg !2330 {
entry:
  %tz_id.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %hyst.addr = alloca i32, align 4
  store i32 %tz_id, ptr %tz_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tz_id.addr, metadata !2335, metadata !DIExpression()), !dbg !2340
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2336, metadata !DIExpression()), !dbg !2341
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2337, metadata !DIExpression()), !dbg !2342
  store i32 %temp, ptr %temp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !2338, metadata !DIExpression()), !dbg !2343
  store i32 %hyst, ptr %hyst.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hyst.addr, metadata !2339, metadata !DIExpression()), !dbg !2344
  ret i32 0, !dbg !2345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2346 dso_local void @__thermal_zone_device_update(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_trip_id(ptr noundef %tz, ptr noundef %trip) #0 align 16 !dbg !2349 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %trip.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2353, metadata !DIExpression()), !dbg !2356
  store ptr %trip, ptr %trip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2355, metadata !DIExpression()), !dbg !2359
  store i32 0, ptr %i, align 4, !dbg !2360
  br label %for.cond, !dbg !2362

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2363
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2365
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 11, !dbg !2366
  %2 = load i32, ptr %num_trips, align 8, !dbg !2366
  %cmp = icmp slt i32 %0, %2, !dbg !2367
  br i1 %cmp, label %for.body, label %for.end, !dbg !2368

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2369
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 10, !dbg !2372
  %4 = load ptr, ptr %trips, align 8, !dbg !2372
  %5 = load i32, ptr %i, align 4, !dbg !2373
  %idxprom = sext i32 %5 to i64, !dbg !2369
  %arrayidx = getelementptr %struct.thermal_trip, ptr %4, i64 %idxprom, !dbg !2369
  %6 = load ptr, ptr %trip.addr, align 8, !dbg !2374
  %cmp1 = icmp eq ptr %arrayidx, %6, !dbg !2375
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2376

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !2377
  store i32 %7, ptr %retval, align 4, !dbg !2378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2378

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2379

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !2380
  %inc = add i32 %8, 1, !dbg !2380
  store i32 %inc, ptr %i, align 4, !dbg !2380
  br label %for.cond, !dbg !2381, !llvm.loop !2382

for.end:                                          ; preds = %for.cond
  store i32 -61, ptr %retval, align 4, !dbg !2384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2384

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2385
  %9 = load i32, ptr %retval, align 4, !dbg !2385
  ret i32 %9, !dbg !2385
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_for_each_thermal_trip203", scope: !2, file: !3, line: 28, type: !118, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/thermal/.thermal_trip.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/thermal/thermal_sys\22 -D KBUILD_BASENAME=\22thermal_trip\22 -D KBUILD_MODNAME=\22thermal_sys\22 -D __KBUILD_MODNAME=kmod_thermal_sys -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/thermal/thermal_trip.ll drivers/thermal/thermal_trip.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !119, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/thermal_trip.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "128f9675d459f92b35cc2578f734de9a")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !68, !73, !78, !84, !89, !95, !101, !112}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !54, line: 30, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!57 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!58 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!62 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!63 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!64 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!65 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!67 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!82 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!83 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !85, line: 7, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0988915424caf116c4c8a170acf5e63")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0)
!88 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !85, line: 12, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0)
!92 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1)
!93 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2)
!94 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !96, line: 37, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0)
!99 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1)
!100 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !96, line: 44, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111}
!103 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0)
!104 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1)
!105 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2)
!106 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3)
!107 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4)
!108 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5)
!109 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6)
!110 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7)
!111 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 10, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "false", value: 0)
!116 = !DIEnumerator(name: "true", value: 1)
!117 = !{!118, !46}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !{!0, !120, !122, !128, !130}
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_thermal_zone_get_num_trips204", scope: !2, file: !3, line: 34, type: !118, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 200, elements: !126)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 25)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___thermal_zone_get_trip205", scope: !2, file: !3, line: 122, type: !118, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_thermal_zone_get_trip206", scope: !2, file: !3, line: 135, type: !118, isLocal: true, isDefinition: true)
!132 = !{i32 7, !"Dwarf Version", i32 5}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 8, !"cf-protection-branch", i32 1}
!136 = !{i32 4, !"function_return_thunk_extern", i32 1}
!137 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!138 = !{i32 1, !"Code Model", i32 2}
!139 = !{i32 1, !"override-stack-alignment", i32 8}
!140 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!141 = distinct !DISubprogram(name: "for_each_thermal_trip", scope: !3, file: !3, line: 12, type: !142, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1939)
!142 = !DISubroutineType(types: !143)
!143 = !{!46, !144, !1936, !118}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !96, line: 156, size: 9152, elements: !146)
!146 = !{!147, !148, !152, !1766, !1767, !1768, !1787, !1788, !1789, !1790, !1791, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1891, !1905, !1917, !1918, !1919, !1931, !1932, !1933, !1934, !1935}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !145, file: !96, line: 157, baseType: !46, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !96, line: 158, baseType: !149, size: 160, offset: 32)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 160, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 20)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !145, file: !96, line: 159, baseType: !153, size: 5824, offset: 192)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !154)
!154 = !{!155, !822, !824, !827, !828, !881, !1349, !1350, !1351, !1352, !1353, !1360, !1530, !1543, !1553, !1557, !1559, !1560, !1561, !1565, !1572, !1573, !1576, !1579, !1705, !1706, !1707, !1710, !1711, !1712, !1713, !1743, !1744, !1745, !1748, !1751, !1760, !1761, !1762, !1763, !1764, !1765}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !153, file: !26, line: 706, baseType: !156, size: 512)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !157, line: 64, size: 512, elements: !158)
!157 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!158 = !{!159, !162, !169, !171, !260, !693, !807, !817, !818, !819, !820, !821}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !157, line: 65, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !156, file: !157, line: 66, baseType: !163, size: 128, offset: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !164, line: 190, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 191, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !163, file: !164, line: 191, baseType: !167, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !157, line: 67, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !156, file: !157, line: 68, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !157, line: 168, size: 768, elements: !174)
!174 = !{!175, !176, !219, !220}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !173, file: !157, line: 169, baseType: !163, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !173, file: !157, line: 170, baseType: !177, size: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !178, line: 29, baseType: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !178, line: 17, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 18, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 18, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !182, file: !178, line: 19, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !186, line: 14, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !185, file: !186, line: 15, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !190, line: 44, baseType: !191)
!190 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !190, line: 14, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 15, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 15, size: 32, elements: !195)
!195 = !{!196, !201, !211}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !194, file: !190, line: 16, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !164, line: 174, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 172, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !198, file: !164, line: 173, baseType: !46, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !190, line: 24, baseType: !202, size: 16)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !190, line: 24, size: 16, elements: !203)
!203 = !{!204, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !202, file: !190, line: 25, baseType: !205, size: 8)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !206, line: 17, baseType: !207)
!206 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !208, line: 21, baseType: !209)
!208 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!209 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !202, file: !190, line: 26, baseType: !205, size: 8, offset: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !190, line: 28, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !190, line: 28, size: 32, elements: !213)
!213 = !{!214, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !212, file: !190, line: 29, baseType: !215, size: 16)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !206, line: 19, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !208, line: 24, baseType: !217)
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !212, file: !190, line: 30, baseType: !215, size: 16, offset: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !173, file: !157, line: 171, baseType: !156, size: 512, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !173, file: !157, line: 172, baseType: !221, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !157, line: 133, size: 192, elements: !224)
!224 = !{!225, !232, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !223, file: !157, line: 134, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!46, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !157, line: 135, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!160, !230}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !223, file: !157, line: 136, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!46, !230, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !157, line: 125, size: 20736, elements: !244)
!244 = !{!245, !250, !254, !255, !259}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !243, file: !157, line: 126, baseType: !246, size: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 192, elements: !248)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!248 = !{!249}
!249 = !DISubrange(count: 3)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !243, file: !157, line: 127, baseType: !251, size: 4096, offset: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 4096, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !243, file: !157, line: 128, baseType: !46, size: 32, offset: 4288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !157, line: 129, baseType: !256, size: 16384, offset: 4320)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 16384, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 2048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !243, file: !157, line: 130, baseType: !46, size: 32, offset: 20704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !156, file: !157, line: 69, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !157, line: 116, size: 384, elements: !264)
!264 = !{!265, !269, !298, !640, !671, !675}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !263, file: !157, line: 117, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !170}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !263, file: !157, line: 118, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !273, line: 254, size: 128, elements: !274)
!273 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!274 = !{!275, !290}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !272, file: !273, line: 255, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !170, !284, !247}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !164, line: 66, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !281, line: 73, baseType: !282)
!281 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !281, line: 15, baseType: !283)
!283 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !273, line: 30, size: 128, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !273, line: 31, baseType: !160, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !285, file: !273, line: 32, baseType: !289, size: 16, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !164, line: 24, baseType: !217)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !272, file: !273, line: 256, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!279, !170, !284, !160, !294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 61, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !281, line: 72, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !281, line: 16, baseType: !297)
!297 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !263, file: !157, line: 119, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !273, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !636, !638}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !273, line: 85, baseType: !160, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !273, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!289, !170, !284, !46}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !273, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!289, !170, !313, !46}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !273, line: 175, size: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !326, !336, !337}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !273, line: 176, baseType: !285, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !273, line: 177, baseType: !294, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !273, line: 178, baseType: !118, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !273, line: 179, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !325, line: 32, flags: DIFlagFwdDecl)
!325 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !273, line: 180, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!279, !330, !170, !313, !247, !333, !294}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !332, line: 537, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !164, line: 52, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !281, line: 88, baseType: !335)
!335 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !273, line: 182, baseType: !327, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !273, line: 184, baseType: !338, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!46, !330, !170, !313, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !325, line: 625, size: 1344, elements: !343)
!343 = !{!344, !361, !584, !590, !597, !598, !603, !606, !618, !619, !622, !626, !627, !628, !629, !630, !634}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !325, line: 628, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !325, line: 628, size: 128, elements: !346)
!346 = !{!347, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !325, line: 629, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !325, line: 629, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !348, file: !325, line: 631, baseType: !297, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !348, file: !325, line: 632, baseType: !297, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !345, file: !325, line: 635, baseType: !353, size: 128, align: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !164, line: 232, size: 128, align: 64, elements: !354)
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !164, line: 233, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !353, file: !164, line: 234, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !356}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !342, file: !325, line: 639, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !325, line: 733, size: 10240, elements: !364)
!364 = !{!365, !580}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !325, line: 734, baseType: !366, size: 10240)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !325, line: 734, size: 10240, elements: !367)
!367 = !{!368, !372, !386, !390, !391, !392, !393, !394, !395, !403, !404, !405, !414, !415, !424, !425, !426, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !473, !487, !490, !545, !546, !547, !550, !554, !555, !558, !559, !560, !567, !568}
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !325, line: 739, baseType: !369, size: 512, align: 512)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !325, line: 739, size: 512, align: 512, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !369, file: !325, line: 747, baseType: !197, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !366, file: !325, line: 750, baseType: !373, size: 128, offset: 512)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !374, line: 218, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!375 = !{!376, !384, !385}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !374, line: 219, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !374, line: 219, size: 32, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !377, file: !374, line: 220, baseType: !177, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !377, file: !374, line: 221, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !374, line: 197, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 197, elements: !383)
!383 = !{}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !373, file: !374, line: 223, baseType: !7, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !373, file: !374, line: 224, baseType: !118, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !366, file: !325, line: 752, baseType: !387, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!297, !330, !297, !297, !297, !297}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !366, file: !325, line: 756, baseType: !297, size: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !366, file: !325, line: 757, baseType: !297, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !366, file: !325, line: 760, baseType: !297, size: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !366, file: !325, line: 761, baseType: !297, size: 64, offset: 896)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !366, file: !325, line: 763, baseType: !297, size: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !366, file: !325, line: 764, baseType: !396, size: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !332, line: 299, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 299, size: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !398, file: !332, line: 299, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !402, line: 18, baseType: !297)
!402 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!403 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !366, file: !325, line: 773, baseType: !197, size: 32, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !366, file: !325, line: 785, baseType: !197, size: 32, offset: 1120)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !366, file: !325, line: 795, baseType: !406, size: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !325, line: 726, size: 128, elements: !408)
!408 = !{!409, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !407, file: !325, line: 727, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !206, line: 23, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !208, line: 31, baseType: !412)
!412 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !407, file: !325, line: 728, baseType: !46, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !366, file: !325, line: 801, baseType: !297, size: 64, offset: 1216)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !366, file: !325, line: 804, baseType: !416, size: 64, offset: 1280)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !417, line: 13, baseType: !418)
!417 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !164, line: 181, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 179, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !419, file: !164, line: 180, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !206, line: 22, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !208, line: 30, baseType: !335)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !366, file: !325, line: 806, baseType: !46, size: 32, offset: 1344)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !366, file: !325, line: 808, baseType: !177, size: 32, offset: 1376)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !366, file: !325, line: 823, baseType: !427, size: 320, offset: 1408)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !428, line: 48, size: 320, elements: !429)
!428 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!429 = !{!430, !431, !432, !437, !439}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !427, file: !428, line: 49, baseType: !416, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !427, file: !428, line: 55, baseType: !416, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !427, file: !428, line: 57, baseType: !433, size: 32, offset: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !434, line: 15, size: 32, elements: !435)
!434 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !433, file: !434, line: 20, baseType: !197, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !427, file: !428, line: 59, baseType: !438, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !186, line: 23, baseType: !185)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !427, file: !428, line: 60, baseType: !163, size: 128, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !366, file: !325, line: 825, baseType: !163, size: 128, offset: 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !366, file: !325, line: 845, baseType: !46, size: 32, offset: 1856)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !366, file: !325, line: 849, baseType: !297, size: 64, offset: 1920)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !366, file: !325, line: 850, baseType: !297, size: 64, offset: 1984)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !366, file: !325, line: 852, baseType: !297, size: 64, offset: 2048)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !366, file: !325, line: 853, baseType: !297, size: 64, offset: 2112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !366, file: !325, line: 854, baseType: !418, size: 64, offset: 2176)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !366, file: !325, line: 855, baseType: !297, size: 64, offset: 2240)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !366, file: !325, line: 856, baseType: !297, size: 64, offset: 2304)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !366, file: !325, line: 857, baseType: !297, size: 64, offset: 2368)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !366, file: !325, line: 858, baseType: !297, size: 64, offset: 2432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !366, file: !325, line: 865, baseType: !452, size: 32, offset: 2496)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !453, line: 69, baseType: !454)
!453 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !453, line: 64, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !454, file: !453, line: 65, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !366, file: !325, line: 867, baseType: !177, size: 32, offset: 2528)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2560)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2624)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2688)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2752)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !366, file: !325, line: 870, baseType: !297, size: 64, offset: 2816)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !366, file: !325, line: 870, baseType: !297, size: 64, offset: 2880)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !366, file: !325, line: 870, baseType: !297, size: 64, offset: 2944)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3008)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3072)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3136)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3200)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !366, file: !325, line: 873, baseType: !470, size: 3328, offset: 3264)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 3328, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 52)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !366, file: !325, line: 875, baseType: !474, size: 1280, offset: 6592)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 1280, elements: !485)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !476, line: 22, size: 320, elements: !477)
!476 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!477 = !{!478, !479, !480, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !475, file: !476, line: 23, baseType: !438, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !475, file: !476, line: 24, baseType: !422, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !476, line: 26, baseType: !163, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !475, file: !476, line: 28, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !206, line: 20, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !208, line: 26, baseType: !46)
!485 = !{!486}
!486 = !DISubrange(count: 4)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !366, file: !325, line: 877, baseType: !488, size: 64, offset: 7872)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !325, line: 877, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !366, file: !325, line: 880, baseType: !491, size: 1088, offset: 7936)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !492, line: 72, baseType: !493)
!492 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 23, size: 1088, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !502, !503, !511, !512, !539, !540, !541}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !493, file: !492, line: 28, baseType: !410, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !493, file: !492, line: 38, baseType: !418, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !493, file: !492, line: 40, baseType: !297, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !493, file: !492, line: 43, baseType: !427, size: 320, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !493, file: !492, line: 44, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !492, line: 44, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !492, line: 48, baseType: !297, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !493, file: !492, line: 59, baseType: !504, size: 256, offset: 640)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !505, line: 66, size: 256, elements: !506)
!505 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !504, file: !505, line: 67, baseType: !416, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !504, file: !505, line: 68, baseType: !438, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !504, file: !505, line: 70, baseType: !433, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !504, file: !505, line: 72, baseType: !163, size: 128, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !493, file: !492, line: 60, baseType: !118, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !493, file: !492, line: 61, baseType: !513, size: 64, offset: 960)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !516, line: 13, size: 1216, elements: !517)
!516 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!517 = !{!518, !519, !520, !521, !522, !523, !524, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !515, file: !516, line: 14, baseType: !118, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !515, file: !516, line: 15, baseType: !297, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !515, file: !516, line: 17, baseType: !297, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !515, file: !516, line: 17, baseType: !297, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !515, file: !516, line: 18, baseType: !297, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !515, file: !516, line: 18, baseType: !297, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !515, file: !516, line: 19, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !515, file: !516, line: 21, baseType: !283, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !515, file: !516, line: 23, baseType: !283, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !515, file: !516, line: 24, baseType: !283, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !515, file: !516, line: 25, baseType: !283, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !515, file: !516, line: 26, baseType: !283, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !515, file: !516, line: 27, baseType: !283, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !515, file: !516, line: 28, baseType: !283, size: 64, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !515, file: !516, line: 29, baseType: !283, size: 64, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !515, file: !516, line: 30, baseType: !283, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !515, file: !516, line: 31, baseType: !283, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !515, file: !516, line: 32, baseType: !283, size: 64, offset: 1088)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !515, file: !516, line: 33, baseType: !283, size: 64, offset: 1152)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !493, file: !492, line: 63, baseType: !197, size: 32, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !493, file: !492, line: 69, baseType: !215, size: 16, offset: 1056)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !493, file: !492, line: 70, baseType: !542, size: 16, offset: 1072)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !206, line: 18, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !208, line: 23, baseType: !544)
!544 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !325, line: 882, baseType: !297, size: 64, offset: 9024)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !366, file: !325, line: 885, baseType: !177, size: 32, offset: 9088)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !366, file: !325, line: 886, baseType: !548, size: 64, offset: 9152)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !325, line: 732, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !366, file: !325, line: 901, baseType: !551, size: 64, offset: 9216)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !553, line: 18, flags: DIFlagFwdDecl)
!553 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!554 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !366, file: !325, line: 904, baseType: !330, size: 64, offset: 9280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !366, file: !325, line: 906, baseType: !556, size: 64, offset: 9344)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !325, line: 906, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !366, file: !325, line: 930, baseType: !197, size: 32, offset: 9408)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !366, file: !325, line: 933, baseType: !197, size: 32, offset: 9440)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !366, file: !325, line: 935, baseType: !561, size: 64, offset: 9472)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !562, line: 103, size: 64, elements: !563)
!562 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !561, file: !562, line: 104, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !562, line: 101, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !366, file: !325, line: 940, baseType: !416, size: 64, offset: 9536)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !366, file: !325, line: 942, baseType: !569, size: 256, offset: 9600)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !570, line: 98, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !569, file: !570, line: 99, baseType: !416, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !569, file: !570, line: 100, baseType: !163, size: 128, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !569, file: !570, line: 101, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !570, line: 21, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !363, file: !325, line: 986, baseType: !581, offset: 10240)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: -1)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !342, file: !325, line: 640, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !332, line: 297, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !332, line: 297, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !586, file: !332, line: 297, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !402, line: 19, baseType: !297)
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !325, line: 646, baseType: !591, size: 64, offset: 256)
!591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !325, line: 646, size: 64, elements: !592)
!592 = !{!593, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !591, file: !325, line: 647, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !325, line: 542, baseType: !297)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !591, file: !325, line: 648, baseType: !595, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !342, file: !325, line: 666, baseType: !46, size: 32, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !342, file: !325, line: 667, baseType: !599, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !325, line: 579, size: 320, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !600, file: !325, line: 580, baseType: !427, size: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !342, file: !325, line: 670, baseType: !604, size: 8, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 35, baseType: !605)
!605 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !342, file: !325, line: 681, baseType: !607, size: 256, offset: 512)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !325, line: 678, size: 256, elements: !608)
!608 = !{!609, !617}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !607, file: !325, line: 679, baseType: !610, size: 192, align: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !611, line: 5, size: 192, align: 64, elements: !612)
!611 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!612 = !{!613, !614, !616}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !610, file: !611, line: 6, baseType: !297, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !610, file: !611, line: 7, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !610, file: !611, line: 8, baseType: !615, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !607, file: !325, line: 680, baseType: !297, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !342, file: !325, line: 689, baseType: !163, size: 128, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !342, file: !325, line: 691, baseType: !620, size: 64, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !325, line: 691, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !342, file: !325, line: 694, baseType: !623, size: 64, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !325, line: 694, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !342, file: !325, line: 697, baseType: !297, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !342, file: !325, line: 699, baseType: !330, size: 64, offset: 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !342, file: !325, line: 700, baseType: !118, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !342, file: !325, line: 711, baseType: !416, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !342, file: !325, line: 717, baseType: !631, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !633, line: 54, flags: DIFlagFwdDecl)
!633 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !342, file: !325, line: 722, baseType: !635, offset: 1344)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !325, line: 570, elements: !383)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !273, line: 90, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !273, line: 91, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !263, file: !157, line: 120, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!644, !230}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !647)
!647 = !{!648, !649, !653, !657, !663, !667}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !6, line: 40, baseType: !5, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !646, file: !6, line: 41, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!604}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !646, file: !6, line: 42, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!118}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !646, file: !6, line: 43, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!525, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !646, file: !6, line: 44, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!525}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !646, file: !6, line: 45, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !118}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !263, file: !157, line: 121, baseType: !672, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!525, !230}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !263, file: !157, line: 122, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !230, !679, !686}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !553, line: 23, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 21, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !553, line: 22, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !164, line: 37, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !281, line: 49, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !553, line: 28, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 26, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !688, file: !553, line: 27, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !164, line: 38, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !281, line: 50, baseType: !7)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !156, file: !157, line: 70, baseType: !694, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !696, line: 190, size: 1152, elements: !697)
!696 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !799, !800, !801, !802, !803, !806}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !695, file: !696, line: 191, baseType: !197, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !695, file: !696, line: 192, baseType: !197, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !695, file: !696, line: 202, baseType: !694, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !695, file: !696, line: 203, baseType: !160, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !695, file: !696, line: 205, baseType: !610, size: 192, align: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !695, file: !696, line: 207, baseType: !525, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !695, file: !696, line: 208, baseType: !7, size: 32, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !696, line: 209, baseType: !706, size: 256, offset: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !696, line: 209, size: 256, elements: !707)
!707 = !{!708, !720, !724}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !706, file: !696, line: 210, baseType: !709, size: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !696, line: 153, size: 256, elements: !710)
!710 = !{!711, !712, !716, !719}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !709, file: !696, line: 154, baseType: !297, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !709, file: !696, line: 156, baseType: !713, size: 64, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !611, line: 12, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !713, file: !611, line: 13, baseType: !615, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !709, file: !696, line: 162, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !696, line: 162, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !709, file: !696, line: 167, baseType: !297, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !706, file: !696, line: 211, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !696, line: 170, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !721, file: !696, line: 171, baseType: !694, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !706, file: !696, line: 212, baseType: !725, size: 256)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !696, line: 174, size: 256, elements: !726)
!726 = !{!727, !794, !797, !798}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !725, file: !696, line: 175, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !696, line: 271, size: 768, elements: !731)
!731 = !{!732, !754, !758, !762, !767, !771, !775, !779, !780, !781, !782, !790}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !730, file: !696, line: 276, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!46, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !696, line: 251, size: 1216, elements: !738)
!738 = !{!739, !740, !741, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !737, file: !696, line: 253, baseType: !694, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !737, file: !696, line: 254, baseType: !330, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !737, file: !696, line: 255, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !633, line: 66, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !737, file: !696, line: 256, baseType: !118, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !737, file: !696, line: 259, baseType: !504, size: 256, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !737, file: !696, line: 260, baseType: !504, size: 256, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !737, file: !696, line: 261, baseType: !46, size: 32, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !737, file: !696, line: 262, baseType: !163, size: 128, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !737, file: !696, line: 263, baseType: !247, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !737, file: !696, line: 265, baseType: !294, size: 64, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !737, file: !696, line: 266, baseType: !604, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !737, file: !696, line: 267, baseType: !604, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !737, file: !696, line: 268, baseType: !623, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !730, file: !696, line: 277, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !736}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !730, file: !696, line: 290, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!46, !742, !118}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !730, file: !696, line: 292, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!118, !742, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !730, file: !696, line: 293, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!118, !742, !118, !766}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !730, file: !696, line: 294, baseType: !772, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !742, !118}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !730, file: !696, line: 296, baseType: !776, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!279, !736, !247, !294, !333}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !730, file: !696, line: 306, baseType: !294, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !730, file: !696, line: 313, baseType: !604, size: 8, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !730, file: !696, line: 314, baseType: !776, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !730, file: !696, line: 317, baseType: !783, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!786, !736, !788}
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !787, line: 59, baseType: !7)
!787 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !696, line: 31, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !730, file: !696, line: 320, baseType: !791, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!46, !736, !341}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !725, file: !696, line: 176, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !696, line: 35, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !725, file: !696, line: 177, baseType: !333, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !725, file: !696, line: 178, baseType: !694, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !695, file: !696, line: 215, baseType: !118, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !695, file: !696, line: 221, baseType: !410, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !696, line: 223, baseType: !217, size: 16, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !695, file: !696, line: 224, baseType: !289, size: 16, offset: 912)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !695, file: !696, line: 225, baseType: !804, size: 64, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !696, line: 36, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !695, file: !696, line: 227, baseType: !353, size: 128, align: 64, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !156, file: !157, line: 71, baseType: !808, size: 32, offset: 448)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !809, line: 19, size: 32, elements: !810)
!809 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !808, file: !809, line: 20, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !813, line: 113, baseType: !814)
!813 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !813, line: 111, size: 32, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !814, file: !813, line: 112, baseType: !197, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !156, file: !157, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !156, file: !157, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !156, file: !157, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !156, file: !157, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !156, file: !157, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !26, line: 707, baseType: !823, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !153, file: !26, line: 709, baseType: !825, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !153, file: !26, line: 711, baseType: !160, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !26, line: 712, baseType: !829, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !832)
!832 = !{!833, !834, !835, !841, !846, !850}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !831, file: !26, line: 90, baseType: !160, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !831, file: !26, line: 91, baseType: !299, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !831, file: !26, line: 92, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!46, !839, !242}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !831, file: !26, line: 93, baseType: !842, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!247, !839, !845, !679, !686}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !831, file: !26, line: 95, baseType: !847, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !823}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !831, file: !26, line: 97, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !854)
!854 = !{!855, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !853, file: !38, line: 287, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!46, !823}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !853, file: !38, line: 288, baseType: !847, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !853, file: !38, line: 289, baseType: !856, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !853, file: !38, line: 290, baseType: !856, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !853, file: !38, line: 291, baseType: !856, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !853, file: !38, line: 292, baseType: !856, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !853, file: !38, line: 293, baseType: !856, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !853, file: !38, line: 294, baseType: !856, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !853, file: !38, line: 295, baseType: !856, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !853, file: !38, line: 296, baseType: !856, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !853, file: !38, line: 297, baseType: !856, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !853, file: !38, line: 298, baseType: !856, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !853, file: !38, line: 299, baseType: !856, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !853, file: !38, line: 300, baseType: !856, size: 64, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !853, file: !38, line: 301, baseType: !856, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !853, file: !38, line: 302, baseType: !856, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !853, file: !38, line: 303, baseType: !856, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !853, file: !38, line: 304, baseType: !856, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !853, file: !38, line: 305, baseType: !856, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !853, file: !38, line: 306, baseType: !856, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !853, file: !38, line: 307, baseType: !856, size: 64, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !853, file: !38, line: 308, baseType: !856, size: 64, offset: 1344)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !853, file: !38, line: 309, baseType: !856, size: 64, offset: 1408)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !153, file: !26, line: 714, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !885, line: 80, size: 1344, elements: !886)
!885 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!886 = !{!887, !888, !889, !890, !891, !892, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1348}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !884, file: !885, line: 81, baseType: !160, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !884, file: !885, line: 82, baseType: !160, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !884, file: !885, line: 83, baseType: !299, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !884, file: !885, line: 84, baseType: !299, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !884, file: !885, line: 85, baseType: !299, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !884, file: !885, line: 87, baseType: !893, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!46, !823, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !898)
!898 = !{!899, !900, !901, !1279, !1280, !1281, !1282, !1298, !1311, !1312, !1313, !1314, !1315, !1323, !1324, !1325, !1326, !1327, !1328}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !897, file: !20, line: 97, baseType: !160, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !897, file: !20, line: 98, baseType: !882, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !20, line: 100, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !904)
!904 = !{!905, !906, !907, !911, !932, !958, !959, !960, !961, !965, !968, !969, !970, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1033, !1037, !1057, !1075, !1076, !1077, !1078, !1087, !1111, !1112, !1115, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1129, !1130, !1237, !1245, !1246, !1247, !1249, !1253, !1254, !1258, !1259, !1260, !1261, !1263, !1264, !1265, !1272, !1273, !1274, !1278}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !903, file: !13, line: 403, baseType: !12, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !903, file: !13, line: 406, baseType: !163, size: 128, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !903, file: !13, line: 409, baseType: !908, size: 448, offset: 192)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 448, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 56)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !903, file: !13, line: 417, baseType: !912, size: 768, offset: 640)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !913)
!913 = !{!914, !915, !916, !917, !920}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !912, file: !13, line: 46, baseType: !156, size: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !912, file: !13, line: 47, baseType: !902, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !912, file: !13, line: 48, baseType: !170, size: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !912, file: !13, line: 49, baseType: !918, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !912, file: !13, line: 50, baseType: !921, size: 64, offset: 704)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !923, line: 26, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !922, file: !923, line: 27, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !922, file: !923, line: 28, baseType: !927, size: 192, offset: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !928, line: 43, size: 192, elements: !929)
!928 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !927, file: !928, line: 44, baseType: !438, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !927, file: !928, line: 45, baseType: !163, size: 128, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !903, file: !13, line: 418, baseType: !933, size: 64, offset: 1408)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !935)
!935 = !{!936, !937, !942, !946, !950, !954}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !934, file: !13, line: 54, baseType: !285, size: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !934, file: !13, line: 55, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!279, !933, !941, !247}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !934, file: !13, line: 57, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!279, !933, !941, !160, !294}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !934, file: !13, line: 59, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !902, !160}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !934, file: !13, line: 60, baseType: !951, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!46, !902}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !934, file: !13, line: 61, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !902}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !903, file: !13, line: 419, baseType: !160, size: 64, offset: 1472)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !903, file: !13, line: 420, baseType: !160, size: 64, offset: 1536)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !903, file: !13, line: 421, baseType: !170, size: 64, offset: 1600)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !903, file: !13, line: 424, baseType: !962, size: 64, offset: 1664)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !903, file: !13, line: 425, baseType: !966, size: 64, offset: 1728)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !903, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !903, file: !13, line: 435, baseType: !504, size: 256, offset: 1856)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !903, file: !13, line: 437, baseType: !971, size: 64, offset: 2112)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !973, line: 69, size: 320, elements: !974)
!973 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!974 = !{!975, !976, !977, !994, !996, !1000, !1001}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !972, file: !973, line: 70, baseType: !160, size: 64)
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
!986 = !{!46, !160, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !980, file: !973, line: 53, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!46, !247, !987}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !980, file: !973, line: 55, baseType: !668, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !972, file: !973, line: 73, baseType: !995, size: 16, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !972, file: !973, line: 74, baseType: !997, size: 8, offset: 208)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !206, line: 16, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !208, line: 20, baseType: !999)
!999 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 75, baseType: !205, size: 8, offset: 216)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !973, line: 76, baseType: !1002, size: 64, offset: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !973, line: 76, size: 64, elements: !1003)
!1003 = !{!1004, !1005, !1012}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1002, file: !973, line: 77, baseType: !118, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1002, file: !973, line: 78, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !973, line: 86, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1008, file: !973, line: 87, baseType: !7, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1008, file: !973, line: 88, baseType: !247, size: 64, offset: 64)
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
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1015, file: !973, line: 98, baseType: !118, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !903, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !903, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !903, file: !13, line: 442, baseType: !962, size: 64, offset: 2240)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !903, file: !13, line: 443, baseType: !966, size: 64, offset: 2304)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !903, file: !13, line: 444, baseType: !604, size: 8, offset: 2368)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !903, file: !13, line: 451, baseType: !604, size: 8, offset: 2376)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !903, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !903, file: !13, line: 455, baseType: !1031, size: 64, offset: 2432)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !903, file: !13, line: 458, baseType: !1034, size: 64, offset: 2496)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!46}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !903, file: !13, line: 460, baseType: !1038, size: 4032, align: 512, offset: 2560)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 4032, elements: !1055)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1039, file: !13, line: 363, baseType: !118, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1039, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1039, file: !13, line: 367, baseType: !1044, size: 448, offset: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1044, file: !13, line: 320, baseType: !902, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1044, file: !13, line: 321, baseType: !1048, size: 384, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1049, line: 40, size: 384, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1048, file: !1049, line: 41, baseType: !1052, size: 384, align: 64)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 384, align: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 2)
!1055 = !{!1056}
!1056 = !DISubrange(count: 7)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !903, file: !13, line: 463, baseType: !1058, size: 192, offset: 6592)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1059, line: 8, size: 192, elements: !1060)
!1059 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1060 = !{!1061, !1062, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1058, file: !1059, line: 10, baseType: !7, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1058, file: !1059, line: 11, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1058, file: !1059, line: 12, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1067, line: 59, size: 48, elements: !1068)
!1067 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1066, file: !1067, line: 60, baseType: !542, size: 16)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1066, file: !1067, line: 61, baseType: !542, size: 16, offset: 16)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1066, file: !1067, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1066, file: !1067, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !1067, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1066, file: !1067, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !903, file: !13, line: 465, baseType: !297, size: 64, offset: 6784)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !903, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !903, file: !13, line: 470, baseType: !163, size: 128, offset: 6912)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !903, file: !13, line: 471, baseType: !1079, size: 64, offset: 7040)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1081, line: 33, size: 96, elements: !1082)
!1081 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1080, file: !1081, line: 37, baseType: !46, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1080, file: !1081, line: 43, baseType: !46, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1080, file: !1081, line: 45, baseType: !217, size: 16, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !1081, line: 47, baseType: !217, size: 16, offset: 80)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !903, file: !13, line: 476, baseType: !1088, size: 64, offset: 7104)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1090)
!1090 = !{!1091, !1108, !1109, !1110}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1089, file: !13, line: 379, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1094, line: 204, baseType: !1095)
!1094 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1094, line: 197, size: 192, elements: !1096)
!1096 = !{!1097, !1100, !1101, !1102, !1104, !1106}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1095, file: !1094, line: 198, baseType: !1098, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1094, line: 21, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !208, line: 27, baseType: !7)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1095, file: !1094, line: 199, baseType: !209, size: 8, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1095, file: !1094, line: 200, baseType: !209, size: 8, offset: 40)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1095, file: !1094, line: 201, baseType: !1103, size: 16, offset: 48)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1094, line: 17, baseType: !216)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1095, file: !1094, line: 202, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1094, line: 16, baseType: !411)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1095, file: !1094, line: 203, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1094, line: 22, baseType: !411)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1089, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1089, file: !13, line: 381, baseType: !247, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1089, file: !13, line: 382, baseType: !247, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !903, file: !13, line: 477, baseType: !1089, size: 256, offset: 7168)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !903, file: !13, line: 480, baseType: !1113, size: 64, offset: 7424)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !903, file: !13, line: 483, baseType: !1116, size: 64, offset: 7488)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !903, file: !13, line: 488, baseType: !247, size: 64, offset: 7552)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !903, file: !13, line: 492, baseType: !118, size: 64, offset: 7616)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !903, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !903, file: !13, line: 495, baseType: !118, size: 64, offset: 7744)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !903, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !903, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !903, file: !13, line: 500, baseType: !1125, size: 64, offset: 7872)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1127, line: 45, baseType: !1128)
!1127 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !903, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !903, file: !13, line: 504, baseType: !1131, size: 64, offset: 8000)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1134, line: 96, size: 192, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1135 = !{!1136, !1137, !1198, !1201}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1133, file: !1134, line: 97, baseType: !7, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1133, file: !1134, line: 98, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1134, line: 24, size: 3072, elements: !1140)
!1140 = !{!1141, !1143, !1144, !1145, !1146, !1160, !1161, !1162, !1163, !1182, !1183, !1184, !1195, !1196, !1197}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1139, file: !1134, line: 26, baseType: !1142, size: 128)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 128, elements: !1053)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1139, file: !1134, line: 27, baseType: !1142, size: 128, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1139, file: !1134, line: 28, baseType: !46, size: 32, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !1134, line: 31, baseType: !177, size: 32, align: 512, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1139, file: !1134, line: 32, baseType: !1147, size: 960, offset: 576)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1148, line: 206, size: 960, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1149 = !{!1150, !1151, !1154, !1156, !1157, !1159}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1147, file: !1148, line: 207, baseType: !356, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1147, file: !1148, line: 208, baseType: !1152, size: 256, offset: 64)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !485)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1147, file: !1148, line: 209, baseType: !1155, size: 256, offset: 320)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !485)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1147, file: !1148, line: 213, baseType: !283, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1147, file: !1148, line: 215, baseType: !1158, size: 256, offset: 640)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !485)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !1148, line: 216, baseType: !205, size: 8, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1139, file: !1134, line: 33, baseType: !297, size: 64, offset: 1536)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1139, file: !1134, line: 34, baseType: !297, size: 64, offset: 1600)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1139, file: !1134, line: 35, baseType: !604, size: 8, offset: 1664)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1139, file: !1134, line: 36, baseType: !1164, size: 320, offset: 1728)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1165, line: 11, size: 320, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1166 = !{!1167, !1174, !1175, !1180}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1164, file: !1165, line: 16, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !164, line: 198, size: 128, elements: !1169)
!1169 = !{!1170, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1168, file: !164, line: 199, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1168, file: !164, line: 199, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1164, file: !1165, line: 17, baseType: !297, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1164, file: !1165, line: 18, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !1165, line: 19, baseType: !1181, size: 32, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !206, line: 21, baseType: !1099)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1139, file: !1134, line: 37, baseType: !569, size: 256, offset: 2048)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1139, file: !1134, line: 38, baseType: !353, size: 128, align: 64, offset: 2304)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1139, file: !1134, line: 39, baseType: !1185, size: 64, offset: 2432)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1134, line: 49, size: 768, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1186, file: !1134, line: 50, baseType: !177, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1186, file: !1134, line: 51, baseType: !1155, size: 256, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1186, file: !1134, line: 53, baseType: !1155, size: 256, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1186, file: !1134, line: 54, baseType: !297, size: 64, offset: 576)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1186, file: !1134, line: 55, baseType: !1185, size: 64, offset: 640)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1186, file: !1134, line: 56, baseType: !46, size: 32, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1186, file: !1134, line: 57, baseType: !46, size: 32, offset: 736)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1139, file: !1134, line: 40, baseType: !297, size: 64, offset: 2496)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1139, file: !1134, line: 42, baseType: !46, size: 32, offset: 2560)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1139, file: !1134, line: 43, baseType: !1132, size: 64, offset: 2624)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1133, file: !1134, line: 99, baseType: !1199, offset: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1200, line: 211, elements: !383)
!1200 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1133, file: !1134, line: 100, baseType: !1202, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1134, line: 63, size: 3008, elements: !1204)
!1204 = !{!1205, !1206, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1236}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1203, file: !1134, line: 64, baseType: !1185, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1203, file: !1134, line: 65, baseType: !1207, size: 192, offset: 64)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 192, elements: !248)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1203, file: !1134, line: 67, baseType: !46, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1203, file: !1134, line: 68, baseType: !504, size: 256, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1203, file: !1134, line: 69, baseType: !177, size: 32, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1203, file: !1134, line: 70, baseType: !504, size: 256, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1203, file: !1134, line: 71, baseType: !297, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1203, file: !1134, line: 72, baseType: !297, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1203, file: !1134, line: 73, baseType: !297, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1203, file: !1134, line: 74, baseType: !297, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1203, file: !1134, line: 75, baseType: !297, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1203, file: !1134, line: 76, baseType: !297, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1203, file: !1134, line: 77, baseType: !297, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1203, file: !1134, line: 78, baseType: !297, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1203, file: !1134, line: 79, baseType: !604, size: 8, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1203, file: !1134, line: 80, baseType: !297, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1203, file: !1134, line: 81, baseType: !504, size: 256, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1203, file: !1134, line: 82, baseType: !922, size: 256, offset: 1792)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1203, file: !1134, line: 84, baseType: !197, size: 32, offset: 2048)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1203, file: !1134, line: 87, baseType: !297, size: 64, offset: 2112)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1203, file: !1134, line: 88, baseType: !297, size: 64, offset: 2176)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1203, file: !1134, line: 89, baseType: !1228, size: 704, offset: 2240)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !570, line: 111, size: 704, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1235}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1228, file: !570, line: 112, baseType: !569, size: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1228, file: !570, line: 113, baseType: !1164, size: 320, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1228, file: !570, line: 116, baseType: !1233, size: 64, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !570, line: 18, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1228, file: !570, line: 117, baseType: !46, size: 32, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1203, file: !1134, line: 90, baseType: !1132, size: 64, offset: 2944)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !903, file: !13, line: 515, baseType: !1238, size: 64, offset: 8064)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1240, line: 117, size: 128, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1239, file: !1240, line: 118, baseType: !483, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1239, file: !1240, line: 119, baseType: !483, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1239, file: !1240, line: 120, baseType: !283, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !903, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !903, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !903, file: !13, line: 520, baseType: !1248, size: 64, offset: 8192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !903, file: !13, line: 523, baseType: !1250, size: 64, offset: 8256)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !903, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !903, file: !13, line: 525, baseType: !1255, size: 64, offset: 8384)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !903, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !903, file: !13, line: 533, baseType: !118, size: 64, offset: 8512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !903, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !903, file: !13, line: 535, baseType: !1262, size: 64, offset: 8640)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !903, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !903, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !903, file: !13, line: 540, baseType: !1266, size: 64, offset: 8768)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1268, line: 32, size: 64, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1267, file: !1268, line: 33, baseType: !483, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1267, file: !1268, line: 34, baseType: !483, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !903, file: !13, line: 563, baseType: !163, size: 128, offset: 8832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !903, file: !13, line: 565, baseType: !163, size: 128, offset: 8960)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !903, file: !13, line: 568, baseType: !1275, size: 64, offset: 9088)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !903, file: !13, line: 570, baseType: !197, size: 32, offset: 9152)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !897, file: !20, line: 101, baseType: !160, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !897, file: !20, line: 103, baseType: !604, size: 8, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !897, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !897, file: !20, line: 106, baseType: !1283, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1286, line: 282, size: 1600, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1287 = !{!1288, !1292, !1293, !1297}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1285, file: !1286, line: 283, baseType: !1289, size: 256)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1285, file: !1286, line: 284, baseType: !1289, size: 256, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1285, file: !1286, line: 285, baseType: !1294, size: 1024, offset: 512)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1024, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1285, file: !1286, line: 286, baseType: !525, size: 64, offset: 1536)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !897, file: !20, line: 107, baseType: !1299, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1286, line: 217, size: 256, elements: !1302)
!1302 = !{!1303, !1307, !1309, !1310}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1301, file: !1286, line: 218, baseType: !1304, size: 128)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 128, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 16)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1301, file: !1286, line: 219, baseType: !1308, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1286, line: 15, baseType: !297)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1301, file: !1286, line: 220, baseType: !1099, size: 32, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1301, file: !1286, line: 221, baseType: !1099, size: 32, offset: 224)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !897, file: !20, line: 109, baseType: !856, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !897, file: !20, line: 110, baseType: !847, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !897, file: !20, line: 111, baseType: !856, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !897, file: !20, line: 112, baseType: !847, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !897, file: !20, line: 113, baseType: !1316, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!46, !823, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1320, file: !38, line: 59, baseType: !46, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !897, file: !20, line: 114, baseType: !856, size: 64, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !897, file: !20, line: 115, baseType: !299, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !897, file: !20, line: 116, baseType: !299, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !897, file: !20, line: 118, baseType: !851, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !897, file: !20, line: 119, baseType: !847, size: 64, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !897, file: !20, line: 121, baseType: !1329, size: 64, offset: 1088)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !884, file: !885, line: 88, baseType: !836, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !884, file: !885, line: 89, baseType: !856, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !884, file: !885, line: 90, baseType: !847, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !884, file: !885, line: 91, baseType: !847, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !884, file: !885, line: 92, baseType: !847, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !884, file: !885, line: 94, baseType: !856, size: 64, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !884, file: !885, line: 95, baseType: !856, size: 64, offset: 768)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !884, file: !885, line: 97, baseType: !1316, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !884, file: !885, line: 98, baseType: !856, size: 64, offset: 896)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !884, file: !885, line: 100, baseType: !856, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !884, file: !885, line: 102, baseType: !856, size: 64, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !884, file: !885, line: 103, baseType: !847, size: 64, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !884, file: !885, line: 105, baseType: !851, size: 64, offset: 1152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !884, file: !885, line: 107, baseType: !1345, size: 64, offset: 1216)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !885, line: 107, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !884, file: !885, line: 109, baseType: !604, size: 8, offset: 1280)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !153, file: !26, line: 715, baseType: !896, size: 64, offset: 832)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !153, file: !26, line: 717, baseType: !118, size: 64, offset: 896)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !153, file: !26, line: 719, baseType: !118, size: 64, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !153, file: !26, line: 721, baseType: !504, size: 256, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !153, file: !26, line: 725, baseType: !1354, size: 448, offset: 1280)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1354, file: !26, line: 518, baseType: !163, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1354, file: !26, line: 519, baseType: !163, size: 128, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1354, file: !26, line: 520, baseType: !163, size: 128, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1354, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !153, file: !26, line: 726, baseType: !1361, size: 2496, offset: 1728)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1407, !1408, !1409, !1410, !1411, !1412, !1483, !1484, !1485, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1523, !1527}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1361, file: !38, line: 664, baseType: !1319, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1361, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1361, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1361, file: !38, line: 667, baseType: !604, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1361, file: !38, line: 668, baseType: !604, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1361, file: !38, line: 669, baseType: !604, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1361, file: !38, line: 670, baseType: !604, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1361, file: !38, line: 671, baseType: !604, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1361, file: !38, line: 672, baseType: !604, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1361, file: !38, line: 673, baseType: !604, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1361, file: !38, line: 674, baseType: !604, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1361, file: !38, line: 675, baseType: !1181, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1361, file: !38, line: 676, baseType: !177, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1361, file: !38, line: 678, baseType: !163, size: 128, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1361, file: !38, line: 679, baseType: !922, size: 256, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1361, file: !38, line: 680, baseType: !1379, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1381, line: 43, size: 1536, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1390, !1391, !1392, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1380, file: !1381, line: 44, baseType: !160, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1380, file: !1381, line: 45, baseType: !46, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1380, file: !1381, line: 46, baseType: !163, size: 128, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1380, file: !1381, line: 47, baseType: !177, size: 32, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1380, file: !1381, line: 48, baseType: !1388, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1380, file: !1381, line: 49, baseType: !1164, size: 320, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1380, file: !1381, line: 50, baseType: !297, size: 64, offset: 704)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1380, file: !1381, line: 51, baseType: !1393, size: 64, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1394, line: 29, baseType: !422)
!1394 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1380, file: !1381, line: 52, baseType: !1393, size: 64, offset: 832)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1380, file: !1381, line: 53, baseType: !1393, size: 64, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1380, file: !1381, line: 54, baseType: !1393, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1380, file: !1381, line: 55, baseType: !1393, size: 64, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1380, file: !1381, line: 56, baseType: !297, size: 64, offset: 1088)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1380, file: !1381, line: 57, baseType: !297, size: 64, offset: 1152)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1380, file: !1381, line: 58, baseType: !297, size: 64, offset: 1216)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1380, file: !1381, line: 59, baseType: !297, size: 64, offset: 1280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1380, file: !1381, line: 60, baseType: !297, size: 64, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1380, file: !1381, line: 61, baseType: !823, size: 64, offset: 1408)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1380, file: !1381, line: 62, baseType: !604, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1380, file: !1381, line: 63, baseType: !604, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1361, file: !38, line: 681, baseType: !604, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1361, file: !38, line: 682, baseType: !604, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1361, file: !38, line: 683, baseType: !604, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1361, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1361, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1361, file: !38, line: 690, baseType: !1413, size: 512, offset: 640)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1414)
!1414 = !{!1415, !1421, !1422, !1427, !1479, !1480, !1481, !1482}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1413, file: !33, line: 119, baseType: !1416, size: 256)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1417, line: 9, size: 256, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1416, file: !1417, line: 10, baseType: !610, size: 192, align: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1416, file: !1417, line: 11, baseType: !1393, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1413, file: !33, line: 120, baseType: !1393, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1413, file: !33, line: 121, baseType: !1423, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!32, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1413, file: !33, line: 122, baseType: !1428, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1430)
!1430 = !{!1431, !1456, !1457, !1460, !1465, !1466, !1474, !1478}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1429, file: !33, line: 160, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !33, line: 216, baseType: !438, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1433, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1433, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1433, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1433, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1433, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1433, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1433, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1433, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1433, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1433, file: !33, line: 227, baseType: !217, size: 16, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1433, file: !33, line: 228, baseType: !217, size: 16, offset: 208)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1433, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1433, file: !33, line: 235, baseType: !1393, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1433, file: !33, line: 236, baseType: !1426, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1433, file: !33, line: 237, baseType: !1393, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1433, file: !33, line: 238, baseType: !1426, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1433, file: !33, line: 239, baseType: !1453, size: 4096, align: 512, offset: 512)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 4096, align: 512, elements: !1454)
!1454 = !{!1455}
!1455 = !DISubrange(count: 8)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1429, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1429, file: !33, line: 162, baseType: !1458, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !164, line: 32, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !281, line: 96, baseType: !46)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1429, file: !33, line: 163, baseType: !1461, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !453, line: 274, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !453, line: 274, size: 32, elements: !1463)
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1462, file: !453, line: 274, baseType: !452, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1429, file: !33, line: 164, baseType: !1426, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1429, file: !33, line: 165, baseType: !1467, size: 128, offset: 256)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1417, line: 14, size: 128, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1467, file: !1417, line: 15, baseType: !1470, size: 128)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !611, line: 26, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1470, file: !611, line: 27, baseType: !713, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1470, file: !611, line: 28, baseType: !615, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1429, file: !33, line: 166, baseType: !1475, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1393}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1429, file: !33, line: 167, baseType: !1393, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1413, file: !33, line: 123, baseType: !205, size: 8, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1413, file: !33, line: 124, baseType: !205, size: 8, offset: 456)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1413, file: !33, line: 125, baseType: !205, size: 8, offset: 464)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1413, file: !33, line: 126, baseType: !205, size: 8, offset: 472)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1361, file: !38, line: 691, baseType: !410, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1361, file: !38, line: 692, baseType: !569, size: 256, offset: 1216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1361, file: !38, line: 693, baseType: !1486, size: 192, offset: 1472)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1487, line: 41, baseType: !1488)
!1487 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1487, line: 37, size: 192, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !1487, line: 38, baseType: !177, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1488, file: !1487, line: 39, baseType: !163, size: 128, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1361, file: !38, line: 694, baseType: !1388, size: 64, offset: 1664)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1361, file: !38, line: 695, baseType: !197, size: 32, offset: 1728)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1361, file: !38, line: 696, baseType: !197, size: 32, offset: 1760)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1361, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1361, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1361, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1361, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1361, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1361, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1361, file: !38, line: 703, baseType: !604, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1361, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1361, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1361, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1361, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1361, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1361, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1361, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1361, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1361, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1361, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1361, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1361, file: !38, line: 715, baseType: !410, size: 64, offset: 2048)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1361, file: !38, line: 716, baseType: !410, size: 64, offset: 2112)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1361, file: !38, line: 717, baseType: !410, size: 64, offset: 2176)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1361, file: !38, line: 718, baseType: !410, size: 64, offset: 2240)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1361, file: !38, line: 720, baseType: !1518, size: 64, offset: 2304)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !38, line: 633, baseType: !177, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1519, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1361, file: !38, line: 721, baseType: !1524, size: 64, offset: 2368)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !823, !483}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1361, file: !38, line: 722, baseType: !1528, size: 64, offset: 2432)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !153, file: !26, line: 727, baseType: !1531, size: 64, offset: 4224)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1540, !1541, !1542}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1532, file: !38, line: 743, baseType: !853, size: 1472)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1532, file: !38, line: 744, baseType: !856, size: 64, offset: 1472)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1532, file: !38, line: 745, baseType: !1537, size: 64, offset: 1536)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !823, !604}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1532, file: !38, line: 746, baseType: !856, size: 64, offset: 1600)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1532, file: !38, line: 747, baseType: !847, size: 64, offset: 1664)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1532, file: !38, line: 748, baseType: !847, size: 64, offset: 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !153, file: !26, line: 736, baseType: !1544, size: 128, offset: 4288)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1545)
!1545 = !{!1546, !1550}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1544, file: !26, line: 531, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1549, line: 13, flags: DIFlagFwdDecl)
!1549 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1544, file: !26, line: 532, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !153, file: !26, line: 738, baseType: !1554, size: 64, offset: 4416)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !153, file: !26, line: 740, baseType: !1558, size: 64, offset: 4480)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !153, file: !26, line: 741, baseType: !410, size: 64, offset: 4544)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !153, file: !26, line: 746, baseType: !410, size: 64, offset: 4608)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !153, file: !26, line: 747, baseType: !1562, size: 64, offset: 4672)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !153, file: !26, line: 749, baseType: !1566, size: 64, offset: 4736)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1567, file: !26, line: 433, baseType: !7, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1567, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1567, file: !26, line: 435, baseType: !297, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !153, file: !26, line: 751, baseType: !163, size: 128, offset: 4800)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !153, file: !26, line: 762, baseType: !1574, size: 64, offset: 4928)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !153, file: !26, line: 770, baseType: !1577, offset: 4992)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1578, line: 5, elements: !383)
!1578 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !153, file: !26, line: 772, baseType: !1580, size: 64, offset: 4992)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1582, line: 48, size: 1152, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1583 = !{!1584, !1585, !1587, !1588, !1691, !1699, !1700, !1701, !1702, !1703, !1704}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1581, file: !1582, line: 49, baseType: !160, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1581, file: !1582, line: 50, baseType: !1586, size: 32, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1582, line: 25, baseType: !1181)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1581, file: !1582, line: 51, baseType: !160, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1581, file: !1582, line: 52, baseType: !1589, size: 512, offset: 192)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1590, line: 41, size: 512, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1591 = !{!1592, !1594, !1687, !1688, !1689, !1690}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1589, file: !1590, line: 42, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1589, file: !1590, line: 43, baseType: !1595, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1590, line: 125, size: 1408, elements: !1598)
!1598 = !{!1599, !1603, !1607, !1613, !1617, !1618, !1622, !1626, !1630, !1634, !1638, !1639, !1643, !1647, !1651, !1662, !1663, !1664, !1665, !1675, !1679, !1683}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1597, file: !1590, line: 126, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1593, !1593}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1597, file: !1590, line: 127, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1593}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1597, file: !1590, line: 128, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!604, !1611}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1597, file: !1590, line: 129, baseType: !1614, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!525, !1611, !839}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1597, file: !1590, line: 131, baseType: !1608, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1597, file: !1590, line: 133, baseType: !1619, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!53, !1611}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1597, file: !1590, line: 134, baseType: !1623, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!604, !1611, !160}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1597, file: !1590, line: 136, baseType: !1627, size: 64, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!46, !1611, !160, !7, !118, !294}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1597, file: !1590, line: 141, baseType: !1631, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!46, !1611, !160, !1248, !294}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1597, file: !1590, line: 144, baseType: !1635, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!160, !1611}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1597, file: !1590, line: 145, baseType: !1635, size: 64, offset: 640)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1597, file: !1590, line: 146, baseType: !1640, size: 64, offset: 704)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1593, !1611}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1597, file: !1590, line: 148, baseType: !1644, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1593, !1611, !1593}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1597, file: !1590, line: 151, baseType: !1648, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1593, !1611, !160}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1597, file: !1590, line: 153, baseType: !1652, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!46, !1611, !160, !160, !7, !7, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1590, line: 94, size: 640, elements: !1657)
!1657 = !{!1658, !1659, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1656, file: !1590, line: 95, baseType: !1593, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1656, file: !1590, line: 96, baseType: !7, size: 32, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1656, file: !1590, line: 97, baseType: !1661, size: 512, offset: 128)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 512, elements: !1454)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1597, file: !1590, line: 158, baseType: !1644, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1597, file: !1590, line: 161, baseType: !1640, size: 64, offset: 1024)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1597, file: !1590, line: 163, baseType: !1600, size: 64, offset: 1088)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1597, file: !1590, line: 164, baseType: !1666, size: 64, offset: 1152)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!46, !1611, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1590, line: 73, size: 128, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1670, file: !1590, line: 74, baseType: !7, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1670, file: !1590, line: 75, baseType: !7, size: 32, offset: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1670, file: !1590, line: 76, baseType: !1611, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1597, file: !1590, line: 166, baseType: !1676, size: 64, offset: 1216)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!118, !1593, !46}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1597, file: !1590, line: 167, baseType: !1680, size: 64, offset: 1280)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!46, !1611, !7}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1597, file: !1590, line: 168, baseType: !1684, size: 64, offset: 1344)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!46, !1593}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1589, file: !1590, line: 44, baseType: !823, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1589, file: !1590, line: 45, baseType: !163, size: 128, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1589, file: !1590, line: 46, baseType: !163, size: 128, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1589, file: !1590, line: 47, baseType: !205, size: 8, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1581, file: !1582, line: 54, baseType: !1692, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1582, line: 28, size: 256, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !1582, line: 29, baseType: !247, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1693, file: !1582, line: 30, baseType: !46, size: 32, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1693, file: !1582, line: 31, baseType: !118, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1693, file: !1582, line: 32, baseType: !1692, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1581, file: !1582, line: 55, baseType: !1692, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1581, file: !1582, line: 56, baseType: !1580, size: 64, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1581, file: !1582, line: 57, baseType: !1580, size: 64, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1581, file: !1582, line: 58, baseType: !1580, size: 64, offset: 960)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1581, file: !1582, line: 62, baseType: !297, size: 64, offset: 1024)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1581, file: !1582, line: 63, baseType: !118, size: 64, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !153, file: !26, line: 773, baseType: !1593, size: 64, offset: 5056)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !153, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !153, file: !26, line: 778, baseType: !1708, size: 32, offset: 5152)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !164, line: 21, baseType: !1709)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !164, line: 18, baseType: !1181)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !153, file: !26, line: 779, baseType: !1181, size: 32, offset: 5184)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !153, file: !26, line: 781, baseType: !177, size: 32, offset: 5216)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !153, file: !26, line: 782, baseType: !163, size: 128, offset: 5248)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !153, file: !26, line: 784, baseType: !1714, size: 64, offset: 5376)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1717, line: 52, size: 768, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1727, !1731, !1732, !1733, !1734, !1738, !1742}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !1717, line: 53, baseType: !160, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1716, file: !1717, line: 55, baseType: !299, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1716, file: !1717, line: 56, baseType: !299, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1716, file: !1717, line: 58, baseType: !836, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1716, file: !1717, line: 59, baseType: !1724, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!247, !839, !845}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1716, file: !1717, line: 61, baseType: !1728, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !1714}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1716, file: !1717, line: 62, baseType: !847, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1716, file: !1717, line: 64, baseType: !856, size: 64, offset: 448)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1716, file: !1717, line: 66, baseType: !644, size: 64, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1716, file: !1717, line: 67, baseType: !1735, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!525, !839}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1716, file: !1717, line: 69, baseType: !1739, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !839, !679, !686}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1716, file: !1717, line: 71, baseType: !851, size: 64, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !153, file: !26, line: 785, baseType: !299, size: 64, offset: 5440)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !153, file: !26, line: 787, baseType: !847, size: 64, offset: 5504)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !153, file: !26, line: 788, baseType: !1746, size: 64, offset: 5568)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !153, file: !26, line: 789, baseType: !1749, size: 64, offset: 5632)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !153, file: !26, line: 791, baseType: !1752, size: 64, offset: 5696)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1753, file: !26, line: 598, baseType: !59, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1753, file: !26, line: 599, baseType: !68, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1753, file: !26, line: 600, baseType: !73, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1753, file: !26, line: 601, baseType: !604, size: 8, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1753, file: !26, line: 602, baseType: !604, size: 8, offset: 104)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !153, file: !26, line: 793, baseType: !78, size: 32, offset: 5760)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !153, file: !26, line: 795, baseType: !604, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !153, file: !26, line: 796, baseType: !604, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !153, file: !26, line: 797, baseType: !604, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !153, file: !26, line: 798, baseType: !604, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !153, file: !26, line: 799, baseType: !604, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "removal", scope: !145, file: !96, line: 160, baseType: !922, size: 256, offset: 6016)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !145, file: !96, line: 161, baseType: !302, size: 320, offset: 6272)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !145, file: !96, line: 162, baseType: !1769, size: 64, offset: 6592)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !1771, line: 59, size: 448, elements: !1772)
!1771 = !DIFile(filename: "drivers/thermal/thermal_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f61e469943239d2bc6fea21f68a30bb4")
!1772 = !{!1773, !1786}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1770, file: !1771, line: 60, baseType: !1774, size: 256)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1775)
!1775 = !{!1776, !1777, !1782}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1774, file: !26, line: 107, baseType: !285, size: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1774, file: !26, line: 108, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!279, !823, !1781, !247}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1774, file: !26, line: 110, baseType: !1783, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!279, !823, !1781, !160, !294}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1770, file: !1771, line: 61, baseType: !149, size: 160, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !145, file: !96, line: 163, baseType: !1769, size: 64, offset: 6656)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !145, file: !96, line: 164, baseType: !1769, size: 64, offset: 6720)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !145, file: !96, line: 165, baseType: !84, size: 32, offset: 6784)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !145, file: !96, line: 166, baseType: !118, size: 64, offset: 6848)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !145, file: !96, line: 167, baseType: !1792, size: 64, offset: 6912)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_trip", file: !96, line: 63, size: 192, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !1793, file: !96, line: 64, baseType: !46, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !1793, file: !96, line: 65, baseType: !46, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1793, file: !96, line: 66, baseType: !89, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1793, file: !96, line: 67, baseType: !118, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "num_trips", scope: !145, file: !96, line: 168, baseType: !46, size: 32, offset: 6976)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !145, file: !96, line: 169, baseType: !297, size: 64, offset: 7040)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay_jiffies", scope: !145, file: !96, line: 170, baseType: !297, size: 64, offset: 7104)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay_jiffies", scope: !145, file: !96, line: 171, baseType: !297, size: 64, offset: 7168)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !145, file: !96, line: 172, baseType: !46, size: 32, offset: 7232)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !145, file: !96, line: 173, baseType: !46, size: 32, offset: 7264)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !145, file: !96, line: 174, baseType: !46, size: 32, offset: 7296)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !145, file: !96, line: 175, baseType: !46, size: 32, offset: 7328)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !145, file: !96, line: 176, baseType: !46, size: 32, offset: 7360)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !145, file: !96, line: 177, baseType: !46, size: 32, offset: 7392)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !145, file: !96, line: 178, baseType: !197, size: 32, offset: 7424)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !145, file: !96, line: 179, baseType: !1811, size: 64, offset: 7488)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !96, line: 70, size: 768, elements: !1813)
!1813 = !{!1814, !1859, !1860, !1864, !1868, !1872, !1873, !1874, !1875, !1879, !1886, !1890}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1812, file: !96, line: 71, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!46, !144, !1818}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !96, line: 98, size: 6848, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1855, !1856, !1857, !1858}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1819, file: !96, line: 99, baseType: !46, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !96, line: 100, baseType: !247, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !1819, file: !96, line: 101, baseType: !297, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1819, file: !96, line: 102, baseType: !153, size: 5824, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1819, file: !96, line: 103, baseType: !1580, size: 64, offset: 6016)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !1819, file: !96, line: 104, baseType: !118, size: 64, offset: 6080)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1819, file: !96, line: 105, baseType: !118, size: 64, offset: 6144)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1819, file: !96, line: 106, baseType: !1829, size: 64, offset: 6208)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !96, line: 89, size: 384, elements: !1832)
!1832 = !{!1833, !1837, !1838, !1842, !1847, !1851}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !1831, file: !96, line: 90, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!46, !1818, !1262}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !1831, file: !96, line: 91, baseType: !1834, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !1831, file: !96, line: 92, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!46, !1818, !297}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !1831, file: !96, line: 93, baseType: !1843, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!46, !1818, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !1831, file: !96, line: 94, baseType: !1848, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!46, !1818, !297, !1846}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !1831, file: !96, line: 95, baseType: !1852, size: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!46, !1818, !1181, !1262}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !1819, file: !96, line: 107, baseType: !604, size: 8, offset: 6272)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1819, file: !96, line: 108, baseType: !504, size: 256, offset: 6336)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !1819, file: !96, line: 109, baseType: !163, size: 128, offset: 6592)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1819, file: !96, line: 110, baseType: !163, size: 128, offset: 6720)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1812, file: !96, line: 73, baseType: !1815, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !1812, file: !96, line: 75, baseType: !1861, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!46, !144, !1063}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !1812, file: !96, line: 76, baseType: !1865, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!46, !144, !46, !46}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !1812, file: !96, line: 77, baseType: !1869, size: 64, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!46, !144, !84}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !1812, file: !96, line: 79, baseType: !1865, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !1812, file: !96, line: 80, baseType: !1865, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !1812, file: !96, line: 81, baseType: !1861, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !1812, file: !96, line: 82, baseType: !1876, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!46, !144, !46}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !1812, file: !96, line: 83, baseType: !1880, size: 64, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!46, !144, !1883, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !1812, file: !96, line: 85, baseType: !1887, size: 64, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !144}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !1812, file: !96, line: 86, baseType: !1887, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !145, file: !96, line: 180, baseType: !1892, size: 64, offset: 7552)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !96, line: 213, size: 448, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !1893, file: !96, line: 214, baseType: !149, size: 160)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !1893, file: !96, line: 221, baseType: !604, size: 8, offset: 160)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !1893, file: !96, line: 227, baseType: !1181, size: 32, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !1893, file: !96, line: 233, baseType: !483, size: 32, offset: 224)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !1893, file: !96, line: 239, baseType: !483, size: 32, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !1893, file: !96, line: 242, baseType: !483, size: 32, offset: 288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !1893, file: !96, line: 245, baseType: !483, size: 32, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !1893, file: !96, line: 248, baseType: !483, size: 32, offset: 352)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !1893, file: !96, line: 254, baseType: !46, size: 32, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1893, file: !96, line: 259, baseType: !46, size: 32, offset: 416)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !145, file: !96, line: 181, baseType: !1906, size: 64, offset: 7616)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !96, line: 204, size: 512, elements: !1908)
!1908 = !{!1909, !1910, !1914, !1915, !1916}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1907, file: !96, line: 205, baseType: !149, size: 160)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !1907, file: !96, line: 206, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!46, !144}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !1907, file: !96, line: 207, baseType: !1887, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !1907, file: !96, line: 208, baseType: !1876, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !1907, file: !96, line: 209, baseType: !163, size: 128, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !145, file: !96, line: 182, baseType: !118, size: 64, offset: 7680)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !145, file: !96, line: 183, baseType: !163, size: 128, offset: 7744)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !145, file: !96, line: 184, baseType: !1920, size: 128, offset: 7872)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1921, line: 246, size: 128, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1922 = !{!1923}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1920, file: !1921, line: 247, baseType: !1924, size: 128)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1925, line: 296, size: 128, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1926 = !{!1927, !1928, !1930}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1924, file: !1925, line: 297, baseType: !177, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1924, file: !1925, line: 299, baseType: !1929, size: 32, offset: 32)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !164, line: 154, baseType: !7)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1924, file: !1925, line: 300, baseType: !118, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !145, file: !96, line: 185, baseType: !504, size: 256, offset: 8000)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !145, file: !96, line: 186, baseType: !163, size: 128, offset: 8256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !145, file: !96, line: 187, baseType: !1228, size: 704, offset: 8384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !145, file: !96, line: 188, baseType: !101, size: 32, offset: 9088)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !145, file: !96, line: 189, baseType: !604, size: 8, offset: 9120)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!46, !1792, !118}
!1939 = !{!1940, !1941, !1942, !1943, !1944}
!1940 = !DILocalVariable(name: "tz", arg: 1, scope: !141, file: !3, line: 12, type: !144)
!1941 = !DILocalVariable(name: "cb", arg: 2, scope: !141, file: !3, line: 13, type: !1936)
!1942 = !DILocalVariable(name: "data", arg: 3, scope: !141, file: !3, line: 14, type: !118)
!1943 = !DILocalVariable(name: "i", scope: !141, file: !3, line: 16, type: !46)
!1944 = !DILocalVariable(name: "ret", scope: !141, file: !3, line: 16, type: !46)
!1945 = !DILocation(line: 12, column: 55, scope: !141)
!1946 = !DILocation(line: 13, column: 12, scope: !141)
!1947 = !DILocation(line: 14, column: 12, scope: !141)
!1948 = !DILocation(line: 16, column: 2, scope: !141)
!1949 = !DILocation(line: 16, column: 6, scope: !141)
!1950 = !DILocation(line: 16, column: 9, scope: !141)
!1951 = !DILocation(line: 18, column: 2, scope: !141)
!1952 = !DILocation(line: 18, column: 2, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !141, file: !3, line: 18, column: 2)
!1954 = !DILocation(line: 20, column: 9, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !141, file: !3, line: 20, column: 2)
!1956 = !DILocation(line: 20, column: 7, scope: !1955)
!1957 = !DILocation(line: 20, column: 14, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 20, column: 2)
!1959 = !DILocation(line: 20, column: 18, scope: !1958)
!1960 = !DILocation(line: 20, column: 22, scope: !1958)
!1961 = !DILocation(line: 20, column: 16, scope: !1958)
!1962 = !DILocation(line: 20, column: 2, scope: !1955)
!1963 = !DILocation(line: 21, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 20, column: 38)
!1965 = !DILocation(line: 21, column: 13, scope: !1964)
!1966 = !DILocation(line: 21, column: 17, scope: !1964)
!1967 = !DILocation(line: 21, column: 23, scope: !1964)
!1968 = !DILocation(line: 21, column: 27, scope: !1964)
!1969 = !DILocation(line: 21, column: 7, scope: !1964)
!1970 = !DILocation(line: 22, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 22, column: 7)
!1972 = !DILocation(line: 22, column: 7, scope: !1964)
!1973 = !DILocation(line: 23, column: 11, scope: !1971)
!1974 = !DILocation(line: 23, column: 4, scope: !1971)
!1975 = !DILocation(line: 24, column: 2, scope: !1964)
!1976 = !DILocation(line: 20, column: 34, scope: !1958)
!1977 = !DILocation(line: 20, column: 2, scope: !1958)
!1978 = distinct !{!1978, !1962, !1979, !1980, !1981}
!1979 = !DILocation(line: 24, column: 2, scope: !1955)
!1980 = !{!"llvm.loop.mustprogress"}
!1981 = !{!"llvm.loop.unroll.disable"}
!1982 = !DILocation(line: 26, column: 2, scope: !141)
!1983 = !DILocation(line: 27, column: 1, scope: !141)
!1984 = distinct !DISubprogram(name: "thermal_zone_get_num_trips", scope: !3, file: !3, line: 30, type: !1912, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "tz", arg: 1, scope: !1984, file: !3, line: 30, type: !144)
!1987 = !DILocation(line: 30, column: 60, scope: !1984)
!1988 = !DILocation(line: 32, column: 9, scope: !1984)
!1989 = !DILocation(line: 32, column: 13, scope: !1984)
!1990 = !DILocation(line: 32, column: 2, scope: !1984)
!1991 = distinct !DISubprogram(name: "__thermal_zone_set_trips", scope: !3, file: !3, line: 51, type: !1888, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1992 = !{!1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2004}
!1993 = !DILocalVariable(name: "tz", arg: 1, scope: !1991, file: !3, line: 51, type: !144)
!1994 = !DILocalVariable(name: "trip", scope: !1991, file: !3, line: 53, type: !1793)
!1995 = !DILocalVariable(name: "low", scope: !1991, file: !3, line: 54, type: !46)
!1996 = !DILocalVariable(name: "high", scope: !1991, file: !3, line: 54, type: !46)
!1997 = !DILocalVariable(name: "same_trip", scope: !1991, file: !3, line: 55, type: !604)
!1998 = !DILocalVariable(name: "i", scope: !1991, file: !3, line: 56, type: !46)
!1999 = !DILocalVariable(name: "ret", scope: !1991, file: !3, line: 56, type: !46)
!2000 = !DILocalVariable(name: "low_set", scope: !2001, file: !3, line: 64, type: !604)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 63, column: 38)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 63, column: 2)
!2003 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 63, column: 2)
!2004 = !DILocalVariable(name: "trip_low", scope: !2001, file: !3, line: 65, type: !46)
!2005 = !DILocation(line: 51, column: 59, scope: !1991)
!2006 = !DILocation(line: 53, column: 2, scope: !1991)
!2007 = !DILocation(line: 53, column: 22, scope: !1991)
!2008 = !DILocation(line: 54, column: 2, scope: !1991)
!2009 = !DILocation(line: 54, column: 6, scope: !1991)
!2010 = !DILocation(line: 54, column: 22, scope: !1991)
!2011 = !DILocation(line: 55, column: 2, scope: !1991)
!2012 = !DILocation(line: 55, column: 7, scope: !1991)
!2013 = !DILocation(line: 56, column: 2, scope: !1991)
!2014 = !DILocation(line: 56, column: 6, scope: !1991)
!2015 = !DILocation(line: 56, column: 9, scope: !1991)
!2016 = !DILocation(line: 58, column: 2, scope: !1991)
!2017 = !DILocation(line: 58, column: 2, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 58, column: 2)
!2019 = !DILocation(line: 60, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 60, column: 6)
!2021 = !DILocation(line: 60, column: 11, scope: !2020)
!2022 = !DILocation(line: 60, column: 16, scope: !2020)
!2023 = !DILocation(line: 60, column: 6, scope: !1991)
!2024 = !DILocation(line: 61, column: 3, scope: !2020)
!2025 = !DILocation(line: 63, column: 9, scope: !2003)
!2026 = !DILocation(line: 63, column: 7, scope: !2003)
!2027 = !DILocation(line: 63, column: 14, scope: !2002)
!2028 = !DILocation(line: 63, column: 18, scope: !2002)
!2029 = !DILocation(line: 63, column: 22, scope: !2002)
!2030 = !DILocation(line: 63, column: 16, scope: !2002)
!2031 = !DILocation(line: 63, column: 2, scope: !2003)
!2032 = !DILocation(line: 64, column: 3, scope: !2001)
!2033 = !DILocation(line: 64, column: 8, scope: !2001)
!2034 = !DILocation(line: 65, column: 3, scope: !2001)
!2035 = !DILocation(line: 65, column: 7, scope: !2001)
!2036 = !DILocation(line: 67, column: 33, scope: !2001)
!2037 = !DILocation(line: 67, column: 37, scope: !2001)
!2038 = !DILocation(line: 67, column: 9, scope: !2001)
!2039 = !DILocation(line: 67, column: 7, scope: !2001)
!2040 = !DILocation(line: 68, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 68, column: 7)
!2042 = !DILocation(line: 68, column: 7, scope: !2001)
!2043 = !DILocation(line: 69, column: 4, scope: !2041)
!2044 = !DILocation(line: 71, column: 19, scope: !2001)
!2045 = !DILocation(line: 71, column: 38, scope: !2001)
!2046 = !DILocation(line: 71, column: 31, scope: !2001)
!2047 = !DILocation(line: 71, column: 12, scope: !2001)
!2048 = !DILocation(line: 73, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 73, column: 7)
!2050 = !DILocation(line: 73, column: 18, scope: !2049)
!2051 = !DILocation(line: 73, column: 22, scope: !2049)
!2052 = !DILocation(line: 73, column: 16, scope: !2049)
!2053 = !DILocation(line: 73, column: 34, scope: !2049)
!2054 = !DILocation(line: 73, column: 37, scope: !2049)
!2055 = !DILocation(line: 73, column: 48, scope: !2049)
!2056 = !DILocation(line: 73, column: 46, scope: !2049)
!2057 = !DILocation(line: 73, column: 7, scope: !2001)
!2058 = !DILocation(line: 74, column: 10, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 73, column: 53)
!2060 = !DILocation(line: 74, column: 8, scope: !2059)
!2061 = !DILocation(line: 75, column: 12, scope: !2059)
!2062 = !DILocation(line: 76, column: 14, scope: !2059)
!2063 = !DILocation(line: 77, column: 3, scope: !2059)
!2064 = !DILocation(line: 79, column: 12, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 79, column: 7)
!2066 = !DILocation(line: 79, column: 26, scope: !2065)
!2067 = !DILocation(line: 79, column: 30, scope: !2065)
!2068 = !DILocation(line: 79, column: 24, scope: !2065)
!2069 = !DILocation(line: 79, column: 42, scope: !2065)
!2070 = !DILocation(line: 80, column: 12, scope: !2065)
!2071 = !DILocation(line: 80, column: 26, scope: !2065)
!2072 = !DILocation(line: 80, column: 24, scope: !2065)
!2073 = !DILocation(line: 79, column: 7, scope: !2001)
!2074 = !DILocation(line: 81, column: 16, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 80, column: 32)
!2076 = !DILocation(line: 81, column: 9, scope: !2075)
!2077 = !DILocation(line: 82, column: 16, scope: !2075)
!2078 = !{i8 0, i8 2}
!2079 = !DILocation(line: 82, column: 14, scope: !2075)
!2080 = !DILocation(line: 83, column: 3, scope: !2075)
!2081 = !DILocation(line: 84, column: 2, scope: !2002)
!2082 = !DILocation(line: 84, column: 2, scope: !2001)
!2083 = !DILocation(line: 63, column: 34, scope: !2002)
!2084 = !DILocation(line: 63, column: 2, scope: !2002)
!2085 = distinct !{!2085, !2031, !2086, !1980, !1981}
!2086 = !DILocation(line: 84, column: 2, scope: !2003)
!2087 = !DILocation(line: 87, column: 6, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 87, column: 6)
!2089 = !DILocation(line: 87, column: 10, scope: !2088)
!2090 = !DILocation(line: 87, column: 27, scope: !2088)
!2091 = !DILocation(line: 87, column: 24, scope: !2088)
!2092 = !DILocation(line: 87, column: 31, scope: !2088)
!2093 = !DILocation(line: 87, column: 34, scope: !2088)
!2094 = !DILocation(line: 87, column: 38, scope: !2088)
!2095 = !DILocation(line: 87, column: 56, scope: !2088)
!2096 = !DILocation(line: 87, column: 53, scope: !2088)
!2097 = !DILocation(line: 87, column: 6, scope: !1991)
!2098 = !DILocation(line: 88, column: 3, scope: !2088)
!2099 = !DILocation(line: 94, column: 6, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 94, column: 6)
!2101 = !DILocation(line: 94, column: 16, scope: !2100)
!2102 = !DILocation(line: 94, column: 20, scope: !2100)
!2103 = !DILocation(line: 94, column: 24, scope: !2100)
!2104 = !DILocation(line: 94, column: 38, scope: !2100)
!2105 = !DILocation(line: 94, column: 50, scope: !2100)
!2106 = !DILocation(line: 95, column: 6, scope: !2100)
!2107 = !DILocation(line: 95, column: 10, scope: !2100)
!2108 = !DILocation(line: 95, column: 25, scope: !2100)
!2109 = !DILocation(line: 94, column: 6, scope: !1991)
!2110 = !DILocation(line: 96, column: 3, scope: !2100)
!2111 = !DILocation(line: 98, column: 22, scope: !1991)
!2112 = !DILocation(line: 98, column: 2, scope: !1991)
!2113 = !DILocation(line: 98, column: 6, scope: !1991)
!2114 = !DILocation(line: 98, column: 20, scope: !1991)
!2115 = !DILocation(line: 99, column: 23, scope: !1991)
!2116 = !DILocation(line: 99, column: 2, scope: !1991)
!2117 = !DILocation(line: 99, column: 6, scope: !1991)
!2118 = !DILocation(line: 99, column: 21, scope: !1991)
!2119 = !DILocation(line: 108, column: 8, scope: !1991)
!2120 = !DILocation(line: 108, column: 12, scope: !1991)
!2121 = !DILocation(line: 108, column: 17, scope: !1991)
!2122 = !DILocation(line: 108, column: 27, scope: !1991)
!2123 = !DILocation(line: 108, column: 31, scope: !1991)
!2124 = !DILocation(line: 108, column: 36, scope: !1991)
!2125 = !DILocation(line: 108, column: 6, scope: !1991)
!2126 = !DILocation(line: 109, column: 6, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 109, column: 6)
!2128 = !DILocation(line: 109, column: 6, scope: !1991)
!2129 = !DILocation(line: 110, column: 3, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 110, column: 3)
!2131 = !DILocation(line: 110, column: 3, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 110, column: 3)
!2133 = !DILocation(line: 110, column: 3, scope: !2127)
!2134 = !DILocation(line: 111, column: 1, scope: !1991)
!2135 = distinct !DISubprogram(name: "__thermal_zone_get_trip", scope: !3, file: !3, line: 113, type: !2136, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!46, !144, !46, !1792}
!2138 = !{!2139, !2140, !2141}
!2139 = !DILocalVariable(name: "tz", arg: 1, scope: !2135, file: !3, line: 113, type: !144)
!2140 = !DILocalVariable(name: "trip_id", arg: 2, scope: !2135, file: !3, line: 113, type: !46)
!2141 = !DILocalVariable(name: "trip", arg: 3, scope: !2135, file: !3, line: 114, type: !1792)
!2142 = !DILocation(line: 113, column: 57, scope: !2135)
!2143 = !DILocation(line: 113, column: 65, scope: !2135)
!2144 = !DILocation(line: 114, column: 29, scope: !2135)
!2145 = !DILocation(line: 116, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 116, column: 6)
!2147 = !DILocation(line: 116, column: 10, scope: !2146)
!2148 = !DILocation(line: 116, column: 14, scope: !2146)
!2149 = !DILocation(line: 116, column: 18, scope: !2146)
!2150 = !DILocation(line: 116, column: 24, scope: !2146)
!2151 = !DILocation(line: 116, column: 27, scope: !2146)
!2152 = !DILocation(line: 116, column: 35, scope: !2146)
!2153 = !DILocation(line: 116, column: 39, scope: !2146)
!2154 = !DILocation(line: 116, column: 42, scope: !2146)
!2155 = !DILocation(line: 116, column: 53, scope: !2146)
!2156 = !DILocation(line: 116, column: 57, scope: !2146)
!2157 = !DILocation(line: 116, column: 50, scope: !2146)
!2158 = !DILocation(line: 116, column: 67, scope: !2146)
!2159 = !DILocation(line: 116, column: 71, scope: !2146)
!2160 = !DILocation(line: 116, column: 6, scope: !2135)
!2161 = !DILocation(line: 117, column: 3, scope: !2146)
!2162 = !DILocation(line: 119, column: 3, scope: !2135)
!2163 = !DILocation(line: 119, column: 10, scope: !2135)
!2164 = !DILocation(line: 119, column: 14, scope: !2135)
!2165 = !DILocation(line: 119, column: 20, scope: !2135)
!2166 = !DILocation(line: 120, column: 2, scope: !2135)
!2167 = !DILocation(line: 121, column: 1, scope: !2135)
!2168 = !DISubprogram(name: "_dev_err", scope: !2169, file: !2169, line: 50, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2169 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !839, !160, null}
!2172 = distinct !DISubprogram(name: "thermal_zone_get_trip", scope: !3, file: !3, line: 124, type: !2136, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2173 = !{!2174, !2175, !2176, !2177}
!2174 = !DILocalVariable(name: "tz", arg: 1, scope: !2172, file: !3, line: 124, type: !144)
!2175 = !DILocalVariable(name: "trip_id", arg: 2, scope: !2172, file: !3, line: 124, type: !46)
!2176 = !DILocalVariable(name: "trip", arg: 3, scope: !2172, file: !3, line: 125, type: !1792)
!2177 = !DILocalVariable(name: "ret", scope: !2172, file: !3, line: 127, type: !46)
!2178 = !DILocation(line: 124, column: 55, scope: !2172)
!2179 = !DILocation(line: 124, column: 63, scope: !2172)
!2180 = !DILocation(line: 125, column: 27, scope: !2172)
!2181 = !DILocation(line: 127, column: 2, scope: !2172)
!2182 = !DILocation(line: 127, column: 6, scope: !2172)
!2183 = !DILocation(line: 129, column: 14, scope: !2172)
!2184 = !DILocation(line: 129, column: 18, scope: !2172)
!2185 = !DILocation(line: 129, column: 2, scope: !2172)
!2186 = !DILocation(line: 130, column: 32, scope: !2172)
!2187 = !DILocation(line: 130, column: 36, scope: !2172)
!2188 = !DILocation(line: 130, column: 45, scope: !2172)
!2189 = !DILocation(line: 130, column: 8, scope: !2172)
!2190 = !DILocation(line: 130, column: 6, scope: !2172)
!2191 = !DILocation(line: 131, column: 16, scope: !2172)
!2192 = !DILocation(line: 131, column: 20, scope: !2172)
!2193 = !DILocation(line: 131, column: 2, scope: !2172)
!2194 = !DILocation(line: 133, column: 9, scope: !2172)
!2195 = !DILocation(line: 134, column: 1, scope: !2172)
!2196 = !DILocation(line: 133, column: 2, scope: !2172)
!2197 = !DISubprogram(name: "mutex_lock", scope: !505, file: !505, line: 227, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!2201 = !DISubprogram(name: "mutex_unlock", scope: !505, file: !505, line: 246, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2202 = distinct !DISubprogram(name: "thermal_zone_set_trip", scope: !3, file: !3, line: 137, type: !2203, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!46, !144, !46, !1883}
!2205 = !{!2206, !2207, !2208, !2209, !2210}
!2206 = !DILocalVariable(name: "tz", arg: 1, scope: !2202, file: !3, line: 137, type: !144)
!2207 = !DILocalVariable(name: "trip_id", arg: 2, scope: !2202, file: !3, line: 137, type: !46)
!2208 = !DILocalVariable(name: "trip", arg: 3, scope: !2202, file: !3, line: 138, type: !1883)
!2209 = !DILocalVariable(name: "t", scope: !2202, file: !3, line: 140, type: !1793)
!2210 = !DILocalVariable(name: "ret", scope: !2202, file: !3, line: 141, type: !46)
!2211 = !DILocation(line: 137, column: 55, scope: !2202)
!2212 = !DILocation(line: 137, column: 63, scope: !2202)
!2213 = !DILocation(line: 138, column: 33, scope: !2202)
!2214 = !DILocation(line: 140, column: 2, scope: !2202)
!2215 = !DILocation(line: 140, column: 22, scope: !2202)
!2216 = !DILocation(line: 141, column: 2, scope: !2202)
!2217 = !DILocation(line: 141, column: 6, scope: !2202)
!2218 = !DILocation(line: 143, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 143, column: 6)
!2220 = !DILocation(line: 143, column: 11, scope: !2219)
!2221 = !DILocation(line: 143, column: 16, scope: !2219)
!2222 = !DILocation(line: 143, column: 30, scope: !2219)
!2223 = !DILocation(line: 143, column: 34, scope: !2219)
!2224 = !DILocation(line: 143, column: 38, scope: !2219)
!2225 = !DILocation(line: 143, column: 43, scope: !2219)
!2226 = !DILocation(line: 143, column: 57, scope: !2219)
!2227 = !DILocation(line: 143, column: 61, scope: !2219)
!2228 = !DILocation(line: 143, column: 65, scope: !2219)
!2229 = !DILocation(line: 143, column: 6, scope: !2202)
!2230 = !DILocation(line: 144, column: 3, scope: !2219)
!2231 = !DILocation(line: 146, column: 32, scope: !2202)
!2232 = !DILocation(line: 146, column: 36, scope: !2202)
!2233 = !DILocation(line: 146, column: 8, scope: !2202)
!2234 = !DILocation(line: 146, column: 6, scope: !2202)
!2235 = !DILocation(line: 147, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 147, column: 6)
!2237 = !DILocation(line: 147, column: 6, scope: !2202)
!2238 = !DILocation(line: 148, column: 10, scope: !2236)
!2239 = !DILocation(line: 148, column: 3, scope: !2236)
!2240 = !DILocation(line: 150, column: 8, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 150, column: 6)
!2242 = !DILocation(line: 150, column: 16, scope: !2241)
!2243 = !DILocation(line: 150, column: 22, scope: !2241)
!2244 = !DILocation(line: 150, column: 13, scope: !2241)
!2245 = !DILocation(line: 150, column: 6, scope: !2202)
!2246 = !DILocation(line: 151, column: 3, scope: !2241)
!2247 = !DILocation(line: 153, column: 8, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 153, column: 6)
!2249 = !DILocation(line: 153, column: 23, scope: !2248)
!2250 = !DILocation(line: 153, column: 29, scope: !2248)
!2251 = !DILocation(line: 153, column: 20, scope: !2248)
!2252 = !DILocation(line: 153, column: 41, scope: !2248)
!2253 = !DILocation(line: 153, column: 44, scope: !2248)
!2254 = !DILocation(line: 153, column: 48, scope: !2248)
!2255 = !DILocation(line: 153, column: 53, scope: !2248)
!2256 = !DILocation(line: 153, column: 6, scope: !2202)
!2257 = !DILocation(line: 154, column: 9, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 153, column: 68)
!2259 = !DILocation(line: 154, column: 13, scope: !2258)
!2260 = !DILocation(line: 154, column: 18, scope: !2258)
!2261 = !DILocation(line: 154, column: 32, scope: !2258)
!2262 = !DILocation(line: 154, column: 36, scope: !2258)
!2263 = !DILocation(line: 154, column: 45, scope: !2258)
!2264 = !DILocation(line: 154, column: 51, scope: !2258)
!2265 = !DILocation(line: 154, column: 7, scope: !2258)
!2266 = !DILocation(line: 155, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 155, column: 7)
!2268 = !DILocation(line: 155, column: 7, scope: !2258)
!2269 = !DILocation(line: 156, column: 11, scope: !2267)
!2270 = !DILocation(line: 156, column: 4, scope: !2267)
!2271 = !DILocation(line: 157, column: 2, scope: !2258)
!2272 = !DILocation(line: 159, column: 8, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 159, column: 6)
!2274 = !DILocation(line: 159, column: 22, scope: !2273)
!2275 = !DILocation(line: 159, column: 28, scope: !2273)
!2276 = !DILocation(line: 159, column: 19, scope: !2273)
!2277 = !DILocation(line: 159, column: 39, scope: !2273)
!2278 = !DILocation(line: 159, column: 42, scope: !2273)
!2279 = !DILocation(line: 159, column: 46, scope: !2273)
!2280 = !DILocation(line: 159, column: 51, scope: !2273)
!2281 = !DILocation(line: 159, column: 6, scope: !2202)
!2282 = !DILocation(line: 160, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 159, column: 66)
!2284 = !DILocation(line: 160, column: 13, scope: !2283)
!2285 = !DILocation(line: 160, column: 18, scope: !2283)
!2286 = !DILocation(line: 160, column: 32, scope: !2283)
!2287 = !DILocation(line: 160, column: 36, scope: !2283)
!2288 = !DILocation(line: 160, column: 45, scope: !2283)
!2289 = !DILocation(line: 160, column: 51, scope: !2283)
!2290 = !DILocation(line: 160, column: 7, scope: !2283)
!2291 = !DILocation(line: 161, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 161, column: 7)
!2293 = !DILocation(line: 161, column: 7, scope: !2283)
!2294 = !DILocation(line: 162, column: 11, scope: !2292)
!2295 = !DILocation(line: 162, column: 4, scope: !2292)
!2296 = !DILocation(line: 163, column: 2, scope: !2283)
!2297 = !DILocation(line: 165, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 165, column: 6)
!2299 = !DILocation(line: 165, column: 10, scope: !2298)
!2300 = !DILocation(line: 165, column: 16, scope: !2298)
!2301 = !DILocation(line: 165, column: 22, scope: !2298)
!2302 = !DILocation(line: 165, column: 37, scope: !2298)
!2303 = !DILocation(line: 165, column: 43, scope: !2298)
!2304 = !DILocation(line: 165, column: 34, scope: !2298)
!2305 = !DILocation(line: 165, column: 55, scope: !2298)
!2306 = !DILocation(line: 165, column: 60, scope: !2298)
!2307 = !DILocation(line: 165, column: 74, scope: !2298)
!2308 = !DILocation(line: 165, column: 80, scope: !2298)
!2309 = !DILocation(line: 165, column: 71, scope: !2298)
!2310 = !DILocation(line: 165, column: 6, scope: !2202)
!2311 = !DILocation(line: 166, column: 3, scope: !2298)
!2312 = !DILocation(line: 166, column: 7, scope: !2298)
!2313 = !DILocation(line: 166, column: 13, scope: !2298)
!2314 = !DILocation(line: 166, column: 25, scope: !2298)
!2315 = !DILocation(line: 166, column: 24, scope: !2298)
!2316 = !DILocation(line: 168, column: 32, scope: !2202)
!2317 = !DILocation(line: 168, column: 36, scope: !2202)
!2318 = !DILocation(line: 168, column: 40, scope: !2202)
!2319 = !DILocation(line: 168, column: 49, scope: !2202)
!2320 = !DILocation(line: 168, column: 55, scope: !2202)
!2321 = !DILocation(line: 169, column: 11, scope: !2202)
!2322 = !DILocation(line: 169, column: 17, scope: !2202)
!2323 = !DILocation(line: 169, column: 30, scope: !2202)
!2324 = !DILocation(line: 169, column: 36, scope: !2202)
!2325 = !DILocation(line: 168, column: 2, scope: !2202)
!2326 = !DILocation(line: 171, column: 31, scope: !2202)
!2327 = !DILocation(line: 171, column: 2, scope: !2202)
!2328 = !DILocation(line: 173, column: 2, scope: !2202)
!2329 = !DILocation(line: 174, column: 1, scope: !2202)
!2330 = distinct !DISubprogram(name: "thermal_notify_tz_trip_change", scope: !2331, file: !2331, line: 82, type: !2332, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2331 = !DIFile(filename: "drivers/thermal/thermal_netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f876c5b11f9413f48c5643d1d9d8cba")
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!46, !46, !46, !46, !46, !46}
!2334 = !{!2335, !2336, !2337, !2338, !2339}
!2335 = !DILocalVariable(name: "tz_id", arg: 1, scope: !2330, file: !2331, line: 82, type: !46)
!2336 = !DILocalVariable(name: "id", arg: 2, scope: !2330, file: !2331, line: 82, type: !46)
!2337 = !DILocalVariable(name: "type", arg: 3, scope: !2330, file: !2331, line: 82, type: !46)
!2338 = !DILocalVariable(name: "temp", arg: 4, scope: !2330, file: !2331, line: 83, type: !46)
!2339 = !DILocalVariable(name: "hyst", arg: 5, scope: !2330, file: !2331, line: 83, type: !46)
!2340 = !DILocation(line: 82, column: 53, scope: !2330)
!2341 = !DILocation(line: 82, column: 64, scope: !2330)
!2342 = !DILocation(line: 82, column: 72, scope: !2330)
!2343 = !DILocation(line: 83, column: 11, scope: !2330)
!2344 = !DILocation(line: 83, column: 21, scope: !2330)
!2345 = !DILocation(line: 85, column: 2, scope: !2330)
!2346 = !DISubprogram(name: "__thermal_zone_device_update", scope: !1771, file: !1771, line: 115, type: !2347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !144, !101}
!2349 = distinct !DISubprogram(name: "thermal_zone_trip_id", scope: !3, file: !3, line: 176, type: !2350, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!46, !144, !1883}
!2352 = !{!2353, !2354, !2355}
!2353 = !DILocalVariable(name: "tz", arg: 1, scope: !2349, file: !3, line: 176, type: !144)
!2354 = !DILocalVariable(name: "trip", arg: 2, scope: !2349, file: !3, line: 177, type: !1883)
!2355 = !DILocalVariable(name: "i", scope: !2349, file: !3, line: 179, type: !46)
!2356 = !DILocation(line: 176, column: 54, scope: !2349)
!2357 = !DILocation(line: 177, column: 32, scope: !2349)
!2358 = !DILocation(line: 179, column: 2, scope: !2349)
!2359 = !DILocation(line: 179, column: 6, scope: !2349)
!2360 = !DILocation(line: 181, column: 9, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 181, column: 2)
!2362 = !DILocation(line: 181, column: 7, scope: !2361)
!2363 = !DILocation(line: 181, column: 14, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 181, column: 2)
!2365 = !DILocation(line: 181, column: 18, scope: !2364)
!2366 = !DILocation(line: 181, column: 22, scope: !2364)
!2367 = !DILocation(line: 181, column: 16, scope: !2364)
!2368 = !DILocation(line: 181, column: 2, scope: !2361)
!2369 = !DILocation(line: 182, column: 8, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 182, column: 7)
!2371 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 181, column: 38)
!2372 = !DILocation(line: 182, column: 12, scope: !2370)
!2373 = !DILocation(line: 182, column: 18, scope: !2370)
!2374 = !DILocation(line: 182, column: 24, scope: !2370)
!2375 = !DILocation(line: 182, column: 21, scope: !2370)
!2376 = !DILocation(line: 182, column: 7, scope: !2371)
!2377 = !DILocation(line: 183, column: 11, scope: !2370)
!2378 = !DILocation(line: 183, column: 4, scope: !2370)
!2379 = !DILocation(line: 184, column: 2, scope: !2371)
!2380 = !DILocation(line: 181, column: 34, scope: !2364)
!2381 = !DILocation(line: 181, column: 2, scope: !2364)
!2382 = distinct !{!2382, !2368, !2383, !1980, !1981}
!2383 = !DILocation(line: 184, column: 2, scope: !2361)
!2384 = !DILocation(line: 186, column: 2, scope: !2349)
!2385 = !DILocation(line: 187, column: 1, scope: !2349)
