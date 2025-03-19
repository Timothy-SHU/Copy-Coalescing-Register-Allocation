; ModuleID = 'drivers/dma-buf/dma-fence-unwrap.c'
source_filename = "drivers/dma-buf/dma-fence-unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_unwrap_first: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_unwrap_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_unwrap_next: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_unwrap_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___dma_fence_unwrap_merge: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __dma_fence_unwrap_merge ; .previous"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_unwrap = type { ptr, ptr, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.13, i64, i64, i64, %struct.kref, i32 }
%union.anon.13 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_chain = type { %struct.dma_fence, ptr, i64, ptr, %union.anon.14, %struct.spinlock }
%union.anon.14 = type { %struct.irq_work }

@__UNIQUE_ID___addressable_dma_fence_unwrap_first218 = internal global ptr @dma_fence_unwrap_first, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_dma_fence_unwrap_next219 = internal global ptr @dma_fence_unwrap_next, section ".discard.addressable", align 8, !dbg !1950
@__UNIQUE_ID___addressable___dma_fence_unwrap_merge220 = internal global ptr @__dma_fence_unwrap_merge, section ".discard.addressable", align 8, !dbg !1952
@dma_fence_chain_ops = external dso_local constant %struct.dma_fence_ops, align 8
@.str = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1, !dbg !1954
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1959
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_dma_fence_unwrap_first218, ptr @__UNIQUE_ID___addressable_dma_fence_unwrap_next219, ptr @__UNIQUE_ID___addressable___dma_fence_unwrap_merge220], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_fence_unwrap_first(ptr noundef %head, ptr noundef %cursor) #0 align 16 !dbg !1973 {
entry:
  %head.addr = alloca ptr, align 8
  %cursor.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1984, metadata !DIExpression()), !dbg !1986
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !1985, metadata !DIExpression()), !dbg !1987
  %0 = load ptr, ptr %head.addr, align 8, !dbg !1988
  %call = call ptr @dma_fence_get(ptr noundef %0) #14, !dbg !1989
  %1 = load ptr, ptr %cursor.addr, align 8, !dbg !1990
  %chain = getelementptr inbounds %struct.dma_fence_unwrap, ptr %1, i32 0, i32 0, !dbg !1991
  store ptr %call, ptr %chain, align 8, !dbg !1992
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !1993
  %call1 = call ptr @__dma_fence_unwrap_array(ptr noundef %2) #14, !dbg !1994
  ret ptr %call1, !dbg !1995
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #2 align 16 !dbg !1996 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2000, metadata !DIExpression()), !dbg !2001
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2002
  %tobool = icmp ne ptr %0, null, !dbg !2002
  br i1 %tobool, label %if.then, label %if.end, !dbg !2004

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2005
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !2006
  call void @kref_get(ptr noundef %refcount) #14, !dbg !2007
  br label %if.end, !dbg !2007

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2008
  ret ptr %2, !dbg !2009
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__dma_fence_unwrap_array(ptr noundef %cursor) #0 align 16 !dbg !2010 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !2016
  %chain = getelementptr inbounds %struct.dma_fence_unwrap, ptr %0, i32 0, i32 0, !dbg !2017
  %1 = load ptr, ptr %chain, align 8, !dbg !2017
  %call = call ptr @dma_fence_chain_contained(ptr noundef %1) #14, !dbg !2018
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !2019
  %array = getelementptr inbounds %struct.dma_fence_unwrap, ptr %2, i32 0, i32 1, !dbg !2020
  store ptr %call, ptr %array, align 8, !dbg !2021
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !2022
  %index = getelementptr inbounds %struct.dma_fence_unwrap, ptr %3, i32 0, i32 2, !dbg !2023
  store i32 0, ptr %index, align 8, !dbg !2024
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !2025
  %array1 = getelementptr inbounds %struct.dma_fence_unwrap, ptr %4, i32 0, i32 1, !dbg !2026
  %5 = load ptr, ptr %array1, align 8, !dbg !2026
  %call2 = call ptr @dma_fence_array_first(ptr noundef %5) #14, !dbg !2027
  ret ptr %call2, !dbg !2028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_fence_unwrap_next(ptr noundef %cursor) #0 align 16 !dbg !2029 {
entry:
  %retval = alloca ptr, align 8
  %cursor.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2032, metadata !DIExpression()), !dbg !2035
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !2036
  %index = getelementptr inbounds %struct.dma_fence_unwrap, ptr %0, i32 0, i32 2, !dbg !2037
  %1 = load i32, ptr %index, align 8, !dbg !2038
  %inc = add i32 %1, 1, !dbg !2038
  store i32 %inc, ptr %index, align 8, !dbg !2038
  %2 = load ptr, ptr %cursor.addr, align 8, !dbg !2039
  %array = getelementptr inbounds %struct.dma_fence_unwrap, ptr %2, i32 0, i32 1, !dbg !2040
  %3 = load ptr, ptr %array, align 8, !dbg !2040
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !2041
  %index1 = getelementptr inbounds %struct.dma_fence_unwrap, ptr %4, i32 0, i32 2, !dbg !2042
  %5 = load i32, ptr %index1, align 8, !dbg !2042
  %call = call ptr @dma_fence_array_next(ptr noundef %3, i32 noundef %5) #14, !dbg !2043
  store ptr %call, ptr %tmp, align 8, !dbg !2044
  %6 = load ptr, ptr %tmp, align 8, !dbg !2045
  %tobool = icmp ne ptr %6, null, !dbg !2045
  br i1 %tobool, label %if.then, label %if.end, !dbg !2047

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %tmp, align 8, !dbg !2048
  store ptr %7, ptr %retval, align 8, !dbg !2049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2049

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %cursor.addr, align 8, !dbg !2050
  %chain = getelementptr inbounds %struct.dma_fence_unwrap, ptr %8, i32 0, i32 0, !dbg !2051
  %9 = load ptr, ptr %chain, align 8, !dbg !2051
  %call2 = call ptr @dma_fence_chain_walk(ptr noundef %9) #14, !dbg !2052
  %10 = load ptr, ptr %cursor.addr, align 8, !dbg !2053
  %chain3 = getelementptr inbounds %struct.dma_fence_unwrap, ptr %10, i32 0, i32 0, !dbg !2054
  store ptr %call2, ptr %chain3, align 8, !dbg !2055
  %11 = load ptr, ptr %cursor.addr, align 8, !dbg !2056
  %call4 = call ptr @__dma_fence_unwrap_array(ptr noundef %11) #14, !dbg !2057
  store ptr %call4, ptr %retval, align 8, !dbg !2058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2058

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !2059
  %12 = load ptr, ptr %retval, align 8, !dbg !2059
  ret ptr %12, !dbg !2059
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2060 dso_local ptr @dma_fence_array_next(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2064 dso_local ptr @dma_fence_chain_walk(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__dma_fence_unwrap_merge(i32 noundef %num_fences, ptr noundef %fences, ptr noundef %iter) #0 align 16 !dbg !2065 {
entry:
  %retval = alloca ptr, align 8
  %num_fences.addr = alloca i32, align 4
  %fences.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %array = alloca ptr, align 8
  %timestamp = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %t = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t44 = alloca i64, align 8
  store i32 %num_fences, ptr %num_fences.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_fences.addr, metadata !2069, metadata !DIExpression()), !dbg !2108
  store ptr %fences, ptr %fences.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fences.addr, metadata !2070, metadata !DIExpression()), !dbg !2109
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !2071, metadata !DIExpression()), !dbg !2110
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #15, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2072, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2082, metadata !DIExpression()), !dbg !2114
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #15, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2083, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr %timestamp) #15, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %timestamp, metadata !2084, metadata !DIExpression()), !dbg !2117
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2085, metadata !DIExpression()), !dbg !2119
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2086, metadata !DIExpression()), !dbg !2120
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2087, metadata !DIExpression()), !dbg !2121
  store i32 0, ptr %count, align 4, !dbg !2122
  %call = call i64 @ns_to_ktime(i64 noundef 0) #14, !dbg !2123
  store i64 %call, ptr %timestamp, align 8, !dbg !2124
  store i32 0, ptr %i, align 4, !dbg !2125
  br label %for.cond, !dbg !2126

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2127
  %1 = load i32, ptr %num_fences.addr, align 4, !dbg !2128
  %cmp = icmp ult i32 %0, %1, !dbg !2129
  br i1 %cmp, label %for.body, label %for.end16, !dbg !2130

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %fences.addr, align 8, !dbg !2131
  %3 = load i32, ptr %i, align 4, !dbg !2131
  %idxprom = sext i32 %3 to i64, !dbg !2131
  %arrayidx = getelementptr ptr, ptr %2, i64 %idxprom, !dbg !2131
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2131
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !2131
  %6 = load i32, ptr %i, align 4, !dbg !2131
  %idxprom1 = sext i32 %6 to i64, !dbg !2131
  %arrayidx2 = getelementptr %struct.dma_fence_unwrap, ptr %5, i64 %idxprom1, !dbg !2131
  %call3 = call ptr @dma_fence_unwrap_first(ptr noundef %4, ptr noundef %arrayidx2) #14, !dbg !2131
  store ptr %call3, ptr %tmp, align 8, !dbg !2131
  br label %for.cond4, !dbg !2131

for.cond4:                                        ; preds = %for.inc, %for.body
  %7 = load ptr, ptr %tmp, align 8, !dbg !2132
  %tobool = icmp ne ptr %7, null, !dbg !2131
  br i1 %tobool, label %for.body5, label %for.end, !dbg !2131

for.body5:                                        ; preds = %for.cond4
  %8 = load ptr, ptr %tmp, align 8, !dbg !2133
  %call6 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %8) #14, !dbg !2134
  br i1 %call6, label %if.else, label %if.then, !dbg !2135

if.then:                                          ; preds = %for.body5
  %9 = load i32, ptr %count, align 4, !dbg !2136
  %inc = add i32 %9, 1, !dbg !2136
  store i32 %inc, ptr %count, align 4, !dbg !2136
  br label %if.end10, !dbg !2138

if.else:                                          ; preds = %for.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !2139
  call void @llvm.dbg.declare(metadata ptr %t, metadata !2088, metadata !DIExpression()), !dbg !2140
  %10 = load ptr, ptr %tmp, align 8, !dbg !2141
  %call7 = call i64 @dma_fence_timestamp(ptr noundef %10) #14, !dbg !2142
  store i64 %call7, ptr %t, align 8, !dbg !2140
  %11 = load i64, ptr %t, align 8, !dbg !2143
  %12 = load i64, ptr %timestamp, align 8, !dbg !2145
  %call8 = call zeroext i1 @ktime_after(i64 noundef %11, i64 noundef %12) #14, !dbg !2146
  br i1 %call8, label %if.then9, label %if.end, !dbg !2147

if.then9:                                         ; preds = %if.else
  %13 = load i64, ptr %t, align 8, !dbg !2148
  store i64 %13, ptr %timestamp, align 8, !dbg !2149
  br label %if.end, !dbg !2150

if.end:                                           ; preds = %if.then9, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !2151
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !2152

for.inc:                                          ; preds = %if.end10
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !2132
  %15 = load i32, ptr %i, align 4, !dbg !2132
  %idxprom11 = sext i32 %15 to i64, !dbg !2132
  %arrayidx12 = getelementptr %struct.dma_fence_unwrap, ptr %14, i64 %idxprom11, !dbg !2132
  %call13 = call ptr @dma_fence_unwrap_next(ptr noundef %arrayidx12) #14, !dbg !2132
  store ptr %call13, ptr %tmp, align 8, !dbg !2132
  br label %for.cond4, !dbg !2132, !llvm.loop !2153

for.end:                                          ; preds = %for.cond4
  br label %for.inc14, !dbg !2157

for.inc14:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !dbg !2158
  %inc15 = add i32 %16, 1, !dbg !2158
  store i32 %inc15, ptr %i, align 4, !dbg !2158
  br label %for.cond, !dbg !2159, !llvm.loop !2160

for.end16:                                        ; preds = %for.cond
  %17 = load i32, ptr %count, align 4, !dbg !2162
  %cmp17 = icmp eq i32 %17, 0, !dbg !2164
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !2165

if.then18:                                        ; preds = %for.end16
  %18 = load i64, ptr %timestamp, align 8, !dbg !2166
  %call19 = call ptr @dma_fence_allocate_private_stub(i64 noundef %18) #14, !dbg !2167
  store ptr %call19, ptr %retval, align 8, !dbg !2168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2168

if.end20:                                         ; preds = %for.end16
  %19 = load i32, ptr %count, align 4, !dbg !2169
  %conv = sext i32 %19 to i64, !dbg !2169
  %call21 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #16, !dbg !2170
  store ptr %call21, ptr %array, align 8, !dbg !2171
  %20 = load ptr, ptr %array, align 8, !dbg !2172
  %tobool22 = icmp ne ptr %20, null, !dbg !2172
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2174

if.then23:                                        ; preds = %if.end20
  store ptr null, ptr %retval, align 8, !dbg !2175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2175

if.end24:                                         ; preds = %if.end20
  store i32 0, ptr %count, align 4, !dbg !2176
  store i32 0, ptr %i, align 4, !dbg !2177
  br label %for.cond25, !dbg !2178

for.cond25:                                       ; preds = %for.inc55, %if.end24
  %21 = load i32, ptr %i, align 4, !dbg !2179
  %22 = load i32, ptr %num_fences.addr, align 4, !dbg !2180
  %cmp26 = icmp ult i32 %21, %22, !dbg !2181
  br i1 %cmp26, label %for.body28, label %for.end57, !dbg !2182

for.body28:                                       ; preds = %for.cond25
  %23 = load ptr, ptr %fences.addr, align 8, !dbg !2183
  %24 = load i32, ptr %i, align 4, !dbg !2183
  %idxprom29 = sext i32 %24 to i64, !dbg !2183
  %arrayidx30 = getelementptr ptr, ptr %23, i64 %idxprom29, !dbg !2183
  %25 = load ptr, ptr %arrayidx30, align 8, !dbg !2183
  %26 = load ptr, ptr %iter.addr, align 8, !dbg !2183
  %27 = load i32, ptr %i, align 4, !dbg !2183
  %idxprom31 = sext i32 %27 to i64, !dbg !2183
  %arrayidx32 = getelementptr %struct.dma_fence_unwrap, ptr %26, i64 %idxprom31, !dbg !2183
  %call33 = call ptr @dma_fence_unwrap_first(ptr noundef %25, ptr noundef %arrayidx32) #14, !dbg !2183
  store ptr %call33, ptr %tmp, align 8, !dbg !2183
  br label %for.cond34, !dbg !2183

for.cond34:                                       ; preds = %for.inc50, %for.body28
  %28 = load ptr, ptr %tmp, align 8, !dbg !2184
  %tobool35 = icmp ne ptr %28, null, !dbg !2183
  br i1 %tobool35, label %for.body36, label %for.end54, !dbg !2183

for.body36:                                       ; preds = %for.cond34
  %29 = load ptr, ptr %tmp, align 8, !dbg !2185
  %call37 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %29) #14, !dbg !2186
  br i1 %call37, label %if.else43, label %if.then38, !dbg !2187

if.then38:                                        ; preds = %for.body36
  %30 = load ptr, ptr %tmp, align 8, !dbg !2188
  %call39 = call ptr @dma_fence_get(ptr noundef %30) #14, !dbg !2190
  %31 = load ptr, ptr %array, align 8, !dbg !2191
  %32 = load i32, ptr %count, align 4, !dbg !2192
  %inc40 = add i32 %32, 1, !dbg !2192
  store i32 %inc40, ptr %count, align 4, !dbg !2192
  %idxprom41 = sext i32 %32 to i64, !dbg !2191
  %arrayidx42 = getelementptr ptr, ptr %31, i64 %idxprom41, !dbg !2191
  store ptr %call39, ptr %arrayidx42, align 8, !dbg !2193
  br label %if.end49, !dbg !2194

if.else43:                                        ; preds = %for.body36
  call void @llvm.lifetime.start.p0(i64 8, ptr %t44) #15, !dbg !2195
  call void @llvm.dbg.declare(metadata ptr %t44, metadata !2097, metadata !DIExpression()), !dbg !2196
  %33 = load ptr, ptr %tmp, align 8, !dbg !2197
  %call45 = call i64 @dma_fence_timestamp(ptr noundef %33) #14, !dbg !2198
  store i64 %call45, ptr %t44, align 8, !dbg !2196
  %34 = load i64, ptr %t44, align 8, !dbg !2199
  %35 = load i64, ptr %timestamp, align 8, !dbg !2201
  %call46 = call zeroext i1 @ktime_after(i64 noundef %34, i64 noundef %35) #14, !dbg !2202
  br i1 %call46, label %if.then47, label %if.end48, !dbg !2203

if.then47:                                        ; preds = %if.else43
  %36 = load i64, ptr %t44, align 8, !dbg !2204
  store i64 %36, ptr %timestamp, align 8, !dbg !2205
  br label %if.end48, !dbg !2206

if.end48:                                         ; preds = %if.then47, %if.else43
  call void @llvm.lifetime.end.p0(i64 8, ptr %t44) #15, !dbg !2207
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then38
  br label %for.inc50, !dbg !2208

for.inc50:                                        ; preds = %if.end49
  %37 = load ptr, ptr %iter.addr, align 8, !dbg !2184
  %38 = load i32, ptr %i, align 4, !dbg !2184
  %idxprom51 = sext i32 %38 to i64, !dbg !2184
  %arrayidx52 = getelementptr %struct.dma_fence_unwrap, ptr %37, i64 %idxprom51, !dbg !2184
  %call53 = call ptr @dma_fence_unwrap_next(ptr noundef %arrayidx52) #14, !dbg !2184
  store ptr %call53, ptr %tmp, align 8, !dbg !2184
  br label %for.cond34, !dbg !2184, !llvm.loop !2209

for.end54:                                        ; preds = %for.cond34
  br label %for.inc55, !dbg !2211

for.inc55:                                        ; preds = %for.end54
  %39 = load i32, ptr %i, align 4, !dbg !2212
  %inc56 = add i32 %39, 1, !dbg !2212
  store i32 %inc56, ptr %i, align 4, !dbg !2212
  br label %for.cond25, !dbg !2213, !llvm.loop !2214

for.end57:                                        ; preds = %for.cond25
  %40 = load i32, ptr %count, align 4, !dbg !2216
  %cmp58 = icmp eq i32 %40, 0, !dbg !2218
  br i1 %cmp58, label %if.then62, label %lor.lhs.false, !dbg !2219

lor.lhs.false:                                    ; preds = %for.end57
  %41 = load i32, ptr %count, align 4, !dbg !2220
  %cmp60 = icmp eq i32 %41, 1, !dbg !2221
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !2222

if.then62:                                        ; preds = %lor.lhs.false, %for.end57
  br label %return_fastpath, !dbg !2223

if.end63:                                         ; preds = %lor.lhs.false
  %42 = load ptr, ptr %array, align 8, !dbg !2224
  %43 = load i32, ptr %count, align 4, !dbg !2225
  %conv64 = sext i32 %43 to i64, !dbg !2225
  call void @sort(ptr noundef %42, i64 noundef %conv64, i64 noundef 8, ptr noundef @fence_cmp, ptr noundef null) #14, !dbg !2226
  store i32 0, ptr %j, align 4, !dbg !2227
  store i32 1, ptr %i, align 4, !dbg !2228
  br label %for.cond65, !dbg !2230

for.cond65:                                       ; preds = %for.inc86, %if.end63
  %44 = load i32, ptr %i, align 4, !dbg !2231
  %45 = load i32, ptr %count, align 4, !dbg !2233
  %cmp66 = icmp slt i32 %44, %45, !dbg !2234
  br i1 %cmp66, label %for.body68, label %for.end88, !dbg !2235

for.body68:                                       ; preds = %for.cond65
  %46 = load ptr, ptr %array, align 8, !dbg !2236
  %47 = load i32, ptr %i, align 4, !dbg !2239
  %idxprom69 = sext i32 %47 to i64, !dbg !2236
  %arrayidx70 = getelementptr ptr, ptr %46, i64 %idxprom69, !dbg !2236
  %48 = load ptr, ptr %arrayidx70, align 8, !dbg !2236
  %context = getelementptr inbounds %struct.dma_fence, ptr %48, i32 0, i32 3, !dbg !2240
  %49 = load i64, ptr %context, align 8, !dbg !2240
  %50 = load ptr, ptr %array, align 8, !dbg !2241
  %51 = load i32, ptr %j, align 4, !dbg !2242
  %idxprom71 = sext i32 %51 to i64, !dbg !2241
  %arrayidx72 = getelementptr ptr, ptr %50, i64 %idxprom71, !dbg !2241
  %52 = load ptr, ptr %arrayidx72, align 8, !dbg !2241
  %context73 = getelementptr inbounds %struct.dma_fence, ptr %52, i32 0, i32 3, !dbg !2243
  %53 = load i64, ptr %context73, align 8, !dbg !2243
  %cmp74 = icmp eq i64 %49, %53, !dbg !2244
  br i1 %cmp74, label %if.then76, label %if.else79, !dbg !2245

if.then76:                                        ; preds = %for.body68
  %54 = load ptr, ptr %array, align 8, !dbg !2246
  %55 = load i32, ptr %i, align 4, !dbg !2247
  %idxprom77 = sext i32 %55 to i64, !dbg !2246
  %arrayidx78 = getelementptr ptr, ptr %54, i64 %idxprom77, !dbg !2246
  %56 = load ptr, ptr %arrayidx78, align 8, !dbg !2246
  call void @dma_fence_put(ptr noundef %56) #14, !dbg !2248
  br label %if.end85, !dbg !2248

if.else79:                                        ; preds = %for.body68
  %57 = load ptr, ptr %array, align 8, !dbg !2249
  %58 = load i32, ptr %i, align 4, !dbg !2250
  %idxprom80 = sext i32 %58 to i64, !dbg !2249
  %arrayidx81 = getelementptr ptr, ptr %57, i64 %idxprom80, !dbg !2249
  %59 = load ptr, ptr %arrayidx81, align 8, !dbg !2249
  %60 = load ptr, ptr %array, align 8, !dbg !2251
  %61 = load i32, ptr %j, align 4, !dbg !2252
  %inc82 = add i32 %61, 1, !dbg !2252
  store i32 %inc82, ptr %j, align 4, !dbg !2252
  %idxprom83 = sext i32 %inc82 to i64, !dbg !2251
  %arrayidx84 = getelementptr ptr, ptr %60, i64 %idxprom83, !dbg !2251
  store ptr %59, ptr %arrayidx84, align 8, !dbg !2253
  br label %if.end85

if.end85:                                         ; preds = %if.else79, %if.then76
  br label %for.inc86, !dbg !2254

for.inc86:                                        ; preds = %if.end85
  %62 = load i32, ptr %i, align 4, !dbg !2255
  %inc87 = add i32 %62, 1, !dbg !2255
  store i32 %inc87, ptr %i, align 4, !dbg !2255
  br label %for.cond65, !dbg !2256, !llvm.loop !2257

for.end88:                                        ; preds = %for.cond65
  %63 = load i32, ptr %j, align 4, !dbg !2259
  %inc89 = add i32 %63, 1, !dbg !2259
  store i32 %inc89, ptr %j, align 4, !dbg !2259
  store i32 %inc89, ptr %count, align 4, !dbg !2260
  %64 = load i32, ptr %count, align 4, !dbg !2261
  %cmp90 = icmp sgt i32 %64, 1, !dbg !2263
  br i1 %cmp90, label %if.then92, label %if.end107, !dbg !2264

if.then92:                                        ; preds = %for.end88
  %65 = load i32, ptr %count, align 4, !dbg !2265
  %66 = load ptr, ptr %array, align 8, !dbg !2267
  %call93 = call i64 @dma_fence_context_alloc(i32 noundef 1) #14, !dbg !2268
  %call94 = call ptr @dma_fence_array_create(i32 noundef %65, ptr noundef %66, i64 noundef %call93, i32 noundef 1, i1 noundef zeroext false) #14, !dbg !2269
  store ptr %call94, ptr %result, align 8, !dbg !2270
  %67 = load ptr, ptr %result, align 8, !dbg !2271
  %tobool95 = icmp ne ptr %67, null, !dbg !2271
  br i1 %tobool95, label %if.end106, label %if.then96, !dbg !2273

if.then96:                                        ; preds = %if.then92
  store i32 0, ptr %i, align 4, !dbg !2274
  br label %for.cond97, !dbg !2277

for.cond97:                                       ; preds = %for.inc103, %if.then96
  %68 = load i32, ptr %i, align 4, !dbg !2278
  %69 = load i32, ptr %count, align 4, !dbg !2280
  %cmp98 = icmp slt i32 %68, %69, !dbg !2281
  br i1 %cmp98, label %for.body100, label %for.end105, !dbg !2282

for.body100:                                      ; preds = %for.cond97
  %70 = load ptr, ptr %array, align 8, !dbg !2283
  %71 = load i32, ptr %i, align 4, !dbg !2284
  %idxprom101 = sext i32 %71 to i64, !dbg !2283
  %arrayidx102 = getelementptr ptr, ptr %70, i64 %idxprom101, !dbg !2283
  %72 = load ptr, ptr %arrayidx102, align 8, !dbg !2283
  call void @dma_fence_put(ptr noundef %72) #14, !dbg !2285
  br label %for.inc103, !dbg !2285

for.inc103:                                       ; preds = %for.body100
  %73 = load i32, ptr %i, align 4, !dbg !2286
  %inc104 = add i32 %73, 1, !dbg !2286
  store i32 %inc104, ptr %i, align 4, !dbg !2286
  br label %for.cond97, !dbg !2287, !llvm.loop !2288

for.end105:                                       ; preds = %for.cond97
  store ptr null, ptr %tmp, align 8, !dbg !2290
  br label %return_tmp, !dbg !2291

if.end106:                                        ; preds = %if.then92
  %74 = load ptr, ptr %result, align 8, !dbg !2292
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %74, i32 0, i32 0, !dbg !2293
  store ptr %base, ptr %retval, align 8, !dbg !2294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2294

if.end107:                                        ; preds = %for.end88
  br label %return_fastpath, !dbg !2295

return_fastpath:                                  ; preds = %if.end107, %if.then62
  call void @llvm.dbg.label(metadata !2106), !dbg !2296
  %75 = load i32, ptr %count, align 4, !dbg !2297
  %cmp108 = icmp eq i32 %75, 0, !dbg !2299
  br i1 %cmp108, label %if.then110, label %if.else112, !dbg !2300

if.then110:                                       ; preds = %return_fastpath
  %76 = load i64, ptr %timestamp, align 8, !dbg !2301
  %call111 = call ptr @dma_fence_allocate_private_stub(i64 noundef %76) #14, !dbg !2302
  store ptr %call111, ptr %tmp, align 8, !dbg !2303
  br label %if.end114, !dbg !2304

if.else112:                                       ; preds = %return_fastpath
  %77 = load ptr, ptr %array, align 8, !dbg !2305
  %arrayidx113 = getelementptr ptr, ptr %77, i64 0, !dbg !2305
  %78 = load ptr, ptr %arrayidx113, align 8, !dbg !2305
  store ptr %78, ptr %tmp, align 8, !dbg !2306
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.then110
  br label %return_tmp, !dbg !2307

return_tmp:                                       ; preds = %if.end114, %for.end105
  call void @llvm.dbg.label(metadata !2107), !dbg !2308
  %79 = load ptr, ptr %array, align 8, !dbg !2309
  call void @kfree(ptr noundef %79) #14, !dbg !2310
  %80 = load ptr, ptr %tmp, align 8, !dbg !2311
  store ptr %80, ptr %retval, align 8, !dbg !2312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2312

cleanup:                                          ; preds = %return_tmp, %if.end106, %if.then23, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 8, ptr %timestamp) #15, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #15, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #15, !dbg !2313
  %81 = load ptr, ptr %retval, align 8, !dbg !2313
  ret ptr %81, !dbg !2313
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ns_to_ktime(i64 noundef %ns) #2 align 16 !dbg !2314 {
entry:
  %ns.addr = alloca i64, align 8
  store i64 %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2318, metadata !DIExpression()), !dbg !2319
  %0 = load i64, ptr %ns.addr, align 8, !dbg !2320
  ret i64 %0, !dbg !2321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) #2 align 16 !dbg !2322 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2324, metadata !DIExpression()), !dbg !2325
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2326
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !2326
  %1 = ptrtoint ptr %flags to i64, !dbg !2326
  %cmp = icmp ne i64 %1, 0, !dbg !2326
  %conv = zext i1 %cmp to i32, !dbg !2326
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2326
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2326

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2326
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !2326
  %4 = ptrtoint ptr %flags1 to i64, !dbg !2326
  %cmp2 = icmp ne i64 %4, 0, !dbg !2326
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2326

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2326
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !2326
  %6 = load i64, ptr %flags5, align 8, !dbg !2326
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2326
  br i1 %7, label %cond.true, label %cond.false, !dbg !2328

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !2326
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !2326
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #14, !dbg !2326
  br i1 %call, label %if.then, label %if.end, !dbg !2326

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !2326
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !2326
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #14, !dbg !2326
  br i1 %call9, label %if.then, label %if.end, !dbg !2328

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !2329
  br label %return, !dbg !2329

if.end:                                           ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !2330
  %ops = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1, !dbg !2332
  %11 = load ptr, ptr %ops, align 8, !dbg !2332
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4, !dbg !2333
  %12 = load ptr, ptr %signaled, align 8, !dbg !2333
  %tobool = icmp ne ptr %12, null, !dbg !2330
  br i1 %tobool, label %land.lhs.true11, label %if.end18, !dbg !2334

land.lhs.true11:                                  ; preds = %if.end
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !2335
  %ops12 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !2336
  %14 = load ptr, ptr %ops12, align 8, !dbg !2336
  %signaled13 = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 4, !dbg !2337
  %15 = load ptr, ptr %signaled13, align 8, !dbg !2337
  %16 = load ptr, ptr %fence.addr, align 8, !dbg !2338
  %call14 = call zeroext i1 %15(ptr noundef %16) #14, !dbg !2335
  br i1 %call14, label %if.then16, label %if.end18, !dbg !2339

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !2340
  %call17 = call i32 @dma_fence_signal(ptr noundef %17) #14, !dbg !2342
  store i1 true, ptr %retval, align 1, !dbg !2343
  br label %return, !dbg !2343

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  store i1 false, ptr %retval, align 1, !dbg !2344
  br label %return, !dbg !2344

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !2345
  ret i1 %18, !dbg !2345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dma_fence_timestamp(ptr noundef %fence) #2 align 16 !dbg !2346 {
entry:
  %retval = alloca i64, align 8
  %fence.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2350, metadata !DIExpression()), !dbg !2357
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2351, metadata !DIExpression()), !dbg !2358
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2358
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !2358
  %1 = ptrtoint ptr %flags to i64, !dbg !2358
  %cmp = icmp ne i64 %1, 0, !dbg !2358
  %conv = zext i1 %cmp to i32, !dbg !2358
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2358
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2358

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2358
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !2358
  %4 = ptrtoint ptr %flags1 to i64, !dbg !2358
  %cmp2 = icmp ne i64 %4, 0, !dbg !2358
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2358

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2358
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !2358
  %6 = load i64, ptr %flags5, align 8, !dbg !2358
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2358
  br i1 %7, label %cond.true, label %cond.false, !dbg !2358

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !2358
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !2358
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #14, !dbg !2358
  %conv7 = zext i1 %call to i32, !dbg !2358
  br label %cond.end, !dbg !2358

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !2358
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !2358
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #14, !dbg !2358
  %conv10 = zext i1 %call9 to i32, !dbg !2358
  br label %cond.end, !dbg !2358

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !2358
  %tobool = icmp ne i32 %cond, 0, !dbg !2358
  %lnot = xor i1 %tobool, true, !dbg !2358
  %lnot11 = xor i1 %lnot, true, !dbg !2358
  %lnot12 = xor i1 %lnot11, true, !dbg !2358
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !2358
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2358
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !2359
  %tobool13 = icmp ne i32 %10, 0, !dbg !2359
  %lnot14 = xor i1 %tobool13, true, !dbg !2359
  %lnot16 = xor i1 %lnot14, true, !dbg !2359
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !2359
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !2359
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !2359
  %tobool19 = icmp ne i64 %expval, 0, !dbg !2359
  br i1 %tobool19, label %if.then, label %if.end, !dbg !2358

if.then:                                          ; preds = %cond.end
  br label %do.body, !dbg !2359

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !2360
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2354, metadata !DIExpression()), !dbg !2360
  store i32 2305, ptr %__flags, align 4, !dbg !2360
  br label %do.body20, !dbg !2360

do.body20:                                        ; preds = %do.body
  br label %do.cond, !dbg !2361

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !2361

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !2360

do.body21:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !2363
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 596, i32 %11, i64 12) #15, !dbg !2363, !srcloc !2365
  br label %do.cond22, !dbg !2363

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !2363

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !2360

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !2366

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !2366

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !2359
  br label %do.cond27, !dbg !2360

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !2360

do.end28:                                         ; preds = %do.cond27
  br label %if.end, !dbg !2360

if.end:                                           ; preds = %do.end28, %cond.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !2358
  %tobool29 = icmp ne i32 %12, 0, !dbg !2358
  %lnot30 = xor i1 %tobool29, true, !dbg !2358
  %lnot32 = xor i1 %lnot30, true, !dbg !2358
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !2358
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !2358
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !2358
  store i64 %expval35, ptr %tmp, align 8, !dbg !2359
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !2368
  %13 = load i64, ptr %tmp, align 8, !dbg !2358
  %tobool36 = icmp ne i64 %13, 0, !dbg !2368
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !2369

if.then37:                                        ; preds = %if.end
  %call38 = call i64 @ktime_get() #14, !dbg !2370
  store i64 %call38, ptr %retval, align 8, !dbg !2371
  br label %return, !dbg !2371

if.end39:                                         ; preds = %if.end
  br label %while.cond, !dbg !2372

while.cond:                                       ; preds = %while.body, %if.end39
  %14 = load ptr, ptr %fence.addr, align 8, !dbg !2373
  %flags40 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 5, !dbg !2373
  %15 = ptrtoint ptr %flags40 to i64, !dbg !2373
  %cmp41 = icmp ne i64 %15, 0, !dbg !2373
  %conv42 = zext i1 %cmp41 to i32, !dbg !2373
  %16 = call i1 @llvm.is.constant.i32(i32 %conv42), !dbg !2373
  br i1 %16, label %land.lhs.true43, label %cond.false53, !dbg !2373

land.lhs.true43:                                  ; preds = %while.cond
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !2373
  %flags44 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 5, !dbg !2373
  %18 = ptrtoint ptr %flags44 to i64, !dbg !2373
  %cmp45 = icmp ne i64 %18, 0, !dbg !2373
  br i1 %cmp45, label %land.lhs.true47, label %cond.false53, !dbg !2373

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %19 = load ptr, ptr %fence.addr, align 8, !dbg !2373
  %flags48 = getelementptr inbounds %struct.dma_fence, ptr %19, i32 0, i32 5, !dbg !2373
  %20 = load i64, ptr %flags48, align 8, !dbg !2373
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !2373
  br i1 %21, label %cond.true49, label %cond.false53, !dbg !2373

cond.true49:                                      ; preds = %land.lhs.true47
  %22 = load ptr, ptr %fence.addr, align 8, !dbg !2373
  %flags50 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 5, !dbg !2373
  %call51 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags50) #14, !dbg !2373
  %conv52 = zext i1 %call51 to i32, !dbg !2373
  br label %cond.end57, !dbg !2373

cond.false53:                                     ; preds = %land.lhs.true47, %land.lhs.true43, %while.cond
  %23 = load ptr, ptr %fence.addr, align 8, !dbg !2373
  %flags54 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 5, !dbg !2373
  %call55 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags54) #14, !dbg !2373
  %conv56 = zext i1 %call55 to i32, !dbg !2373
  br label %cond.end57, !dbg !2373

cond.end57:                                       ; preds = %cond.false53, %cond.true49
  %cond58 = phi i32 [ %conv52, %cond.true49 ], [ %conv56, %cond.false53 ], !dbg !2373
  %tobool59 = icmp ne i32 %cond58, 0, !dbg !2374
  %lnot60 = xor i1 %tobool59, true, !dbg !2374
  br i1 %lnot60, label %while.body, label %while.end, !dbg !2372

while.body:                                       ; preds = %cond.end57
  call void @cpu_relax() #14, !dbg !2375
  br label %while.cond, !dbg !2372, !llvm.loop !2376

while.end:                                        ; preds = %cond.end57
  %24 = load ptr, ptr %fence.addr, align 8, !dbg !2378
  %25 = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 2, !dbg !2379
  %26 = load i64, ptr %25, align 8, !dbg !2379
  store i64 %26, ptr %retval, align 8, !dbg !2380
  br label %return, !dbg !2380

return:                                           ; preds = %while.end, %if.then37
  %27 = load i64, ptr %retval, align 8, !dbg !2381
  ret i64 %27, !dbg !2381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ktime_after(i64 noundef %cmp1, i64 noundef %cmp2) #2 align 16 !dbg !2382 {
entry:
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, ptr %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp1.addr, metadata !2387, metadata !DIExpression()), !dbg !2389
  store i64 %cmp2, ptr %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp2.addr, metadata !2388, metadata !DIExpression()), !dbg !2390
  %0 = load i64, ptr %cmp1.addr, align 8, !dbg !2391
  %1 = load i64, ptr %cmp2.addr, align 8, !dbg !2392
  %call = call i32 @ktime_compare(i64 noundef %0, i64 noundef %1) #14, !dbg !2393
  %cmp = icmp sgt i32 %call, 0, !dbg !2394
  ret i1 %cmp, !dbg !2395
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2396 dso_local ptr @dma_fence_allocate_private_stub(i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2399 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2403, metadata !DIExpression()), !dbg !2407
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2404, metadata !DIExpression()), !dbg !2408
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2405, metadata !DIExpression()), !dbg !2409
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2406, metadata !DIExpression()), !dbg !2411
  %0 = load i64, ptr %n.addr, align 8, !dbg !2412
  %1 = load i64, ptr %size.addr, align 8, !dbg !2412
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2412
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2412
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2412
  store i64 %4, ptr %bytes, align 8, !dbg !2412
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #14, !dbg !2412
  %lnot = xor i1 %call, true, !dbg !2412
  %lnot1 = xor i1 %lnot, true, !dbg !2412
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2412
  %conv = sext i32 %lnot.ext to i64, !dbg !2412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2412
  %tobool = icmp ne i64 %expval, 0, !dbg !2412
  br i1 %tobool, label %if.then, label %if.end, !dbg !2414

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2415

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !2416
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !2418
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !2419

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !2420
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2421
  br i1 %8, label %if.then2, label %if.end4, !dbg !2422

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !2423
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2424
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !2425
  store ptr %call3, ptr %retval, align 8, !dbg !2426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2426

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !2427
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2428
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !2429
  store ptr %call5, ptr %retval, align 8, !dbg !2430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2430

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !2431
  %13 = load ptr, ptr %retval, align 8, !dbg !2431
  ret ptr %13, !dbg !2431
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2432 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fence_cmp(ptr noundef %_a, ptr noundef %_b) #0 align 16 !dbg !2446 {
entry:
  %retval = alloca i32, align 4
  %_a.addr = alloca ptr, align 8
  %_b.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_a, ptr %_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_a.addr, metadata !2448, metadata !DIExpression()), !dbg !2452
  store ptr %_b, ptr %_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_b.addr, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %a, metadata !2450, metadata !DIExpression()), !dbg !2455
  %0 = load ptr, ptr %_a.addr, align 8, !dbg !2456
  %1 = load ptr, ptr %0, align 8, !dbg !2457
  store ptr %1, ptr %a, align 8, !dbg !2455
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #15, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %b, metadata !2451, metadata !DIExpression()), !dbg !2459
  %2 = load ptr, ptr %_b.addr, align 8, !dbg !2460
  %3 = load ptr, ptr %2, align 8, !dbg !2461
  store ptr %3, ptr %b, align 8, !dbg !2459
  %4 = load ptr, ptr %a, align 8, !dbg !2462
  %context = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 3, !dbg !2464
  %5 = load i64, ptr %context, align 8, !dbg !2464
  %6 = load ptr, ptr %b, align 8, !dbg !2465
  %context1 = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 3, !dbg !2466
  %7 = load i64, ptr %context1, align 8, !dbg !2466
  %cmp = icmp ult i64 %5, %7, !dbg !2467
  br i1 %cmp, label %if.then, label %if.else, !dbg !2468

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2469

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %a, align 8, !dbg !2470
  %context2 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 3, !dbg !2472
  %9 = load i64, ptr %context2, align 8, !dbg !2472
  %10 = load ptr, ptr %b, align 8, !dbg !2473
  %context3 = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 3, !dbg !2474
  %11 = load i64, ptr %context3, align 8, !dbg !2474
  %cmp4 = icmp ugt i64 %9, %11, !dbg !2475
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !2476

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !2477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2477

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  %12 = load ptr, ptr %b, align 8, !dbg !2478
  %13 = load ptr, ptr %a, align 8, !dbg !2480
  %call = call zeroext i1 @dma_fence_is_later(ptr noundef %12, ptr noundef %13) #14, !dbg !2481
  br i1 %call, label %if.then7, label %if.else8, !dbg !2482

if.then7:                                         ; preds = %if.end6
  store i32 1, ptr %retval, align 4, !dbg !2483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2483

if.else8:                                         ; preds = %if.end6
  %14 = load ptr, ptr %a, align 8, !dbg !2484
  %15 = load ptr, ptr %b, align 8, !dbg !2486
  %call9 = call zeroext i1 @dma_fence_is_later(ptr noundef %14, ptr noundef %15) #14, !dbg !2487
  br i1 %call9, label %if.then10, label %if.end11, !dbg !2488

if.then10:                                        ; preds = %if.else8
  store i32 -1, ptr %retval, align 4, !dbg !2489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2489

if.end11:                                         ; preds = %if.else8
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !2490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2490

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #15, !dbg !2491
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !2491
  %16 = load i32, ptr %retval, align 4, !dbg !2491
  ret i32 %16, !dbg !2491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #2 align 16 !dbg !2492 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2494, metadata !DIExpression()), !dbg !2495
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2496
  %tobool = icmp ne ptr %0, null, !dbg !2496
  br i1 %tobool, label %if.then, label %if.end, !dbg !2498

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2499
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !2500
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #14, !dbg !2501
  br label %if.end, !dbg !2501

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2502
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2503 dso_local ptr @dma_fence_array_create(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2506 dso_local i64 @dma_fence_context_alloc(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2509 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #2 align 16 !dbg !2512 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2517, metadata !DIExpression()), !dbg !2518
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2519
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2520
  call void @refcount_inc(ptr noundef %refcount) #14, !dbg !2521
  ret void, !dbg !2522
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !2523 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2528, metadata !DIExpression()), !dbg !2529
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2530
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !2531
  ret void, !dbg !2532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2533 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2537, metadata !DIExpression()), !dbg !2539
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2538, metadata !DIExpression()), !dbg !2540
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2541
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2542
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !2543
  ret void, !dbg !2544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2545 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2549, metadata !DIExpression()), !dbg !2553
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2550, metadata !DIExpression()), !dbg !2554
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2552, metadata !DIExpression()), !dbg !2557
  %0 = load i32, ptr %i.addr, align 4, !dbg !2558
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2559
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2560
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !2561
  store i32 %call, ptr %old, align 4, !dbg !2557
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2562
  %tobool = icmp ne ptr %2, null, !dbg !2562
  br i1 %tobool, label %if.then, label %if.end, !dbg !2564

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2565
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2566
  store i32 %3, ptr %4, align 4, !dbg !2567
  br label %if.end, !dbg !2568

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2569
  %tobool1 = icmp ne i32 %5, 0, !dbg !2569
  %lnot = xor i1 %tobool1, true, !dbg !2569
  %lnot2 = xor i1 %lnot, true, !dbg !2569
  %lnot3 = xor i1 %lnot2, true, !dbg !2569
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2569
  %conv = sext i32 %lnot.ext to i64, !dbg !2569
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2569
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2569
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2571

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2572
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !2573
  br label %if.end18, !dbg !2573

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2574
  %cmp = icmp slt i32 %7, 0, !dbg !2574
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2574

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !2574
  %9 = load i32, ptr %i.addr, align 4, !dbg !2574
  %add = add i32 %8, %9, !dbg !2574
  %cmp7 = icmp slt i32 %add, 0, !dbg !2574
  br label %lor.end, !dbg !2574

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !2574
  %lnot11 = xor i1 %lnot9, true, !dbg !2574
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2574
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !2574
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !2574
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !2574
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2576

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2577
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !2578
  br label %if.end17, !dbg !2578

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !2579
  ret void, !dbg !2579
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !2580 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2586, metadata !DIExpression()), !dbg !2588
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2587, metadata !DIExpression()), !dbg !2589
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2590
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !2591
  %1 = load i32, ptr %i.addr, align 4, !dbg !2592
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2593
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !2594
  ret i32 %call, !dbg !2595
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2596 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2599 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2607, metadata !DIExpression()), !dbg !2609
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2608, metadata !DIExpression()), !dbg !2610
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2611
  %1 = load i64, ptr %size.addr, align 8, !dbg !2612
  %conv = trunc i64 %1 to i32, !dbg !2612
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !2613
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2614
  %3 = load i64, ptr %size.addr, align 8, !dbg !2614
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !2614
  ret void, !dbg !2615
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !2616 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2619, metadata !DIExpression()), !dbg !2621
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2620, metadata !DIExpression()), !dbg !2622
  %0 = load i32, ptr %i.addr, align 4, !dbg !2623
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2624
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !2625
  ret i32 %call, !dbg !2626
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !2627 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2632, metadata !DIExpression()), !dbg !2634
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2633, metadata !DIExpression()), !dbg !2635
  ret i1 true, !dbg !2636
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !2637 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2642, metadata !DIExpression()), !dbg !2645
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2643, metadata !DIExpression()), !dbg !2646
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2644, metadata !DIExpression()), !dbg !2647
  ret void, !dbg !2648
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !2649 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2652, metadata !DIExpression()), !dbg !2656
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2653, metadata !DIExpression()), !dbg !2657
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !2658
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2654, metadata !DIExpression()), !dbg !2658
  %0 = load i32, ptr %i.addr, align 4, !dbg !2658
  store i32 %0, ptr %__ret, align 4, !dbg !2658
  %1 = load i32, ptr %__ret, align 4, !dbg !2658
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2658
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2658
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !2658, !srcloc !2659
  store i32 %3, ptr %__ret, align 4, !dbg !2658
  %4 = load i32, ptr %__ret, align 4, !dbg !2658
  store i32 %4, ptr %tmp, align 4, !dbg !2658
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !2660
  %5 = load i32, ptr %tmp, align 4, !dbg !2658
  ret i32 %5, !dbg !2661
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_chain_contained(ptr noundef %fence) #2 align 16 !dbg !2662 {
entry:
  %fence.addr = alloca ptr, align 8
  %chain = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #15, !dbg !2667
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !2665, metadata !DIExpression()), !dbg !2668
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2669
  %call = call ptr @to_dma_fence_chain(ptr noundef %0) #14, !dbg !2670
  store ptr %call, ptr %chain, align 8, !dbg !2668
  %1 = load ptr, ptr %chain, align 8, !dbg !2671
  %tobool = icmp ne ptr %1, null, !dbg !2671
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2671

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %chain, align 8, !dbg !2672
  %fence1 = getelementptr inbounds %struct.dma_fence_chain, ptr %2, i32 0, i32 3, !dbg !2673
  %3 = load ptr, ptr %fence1, align 8, !dbg !2673
  br label %cond.end, !dbg !2671

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !2674
  br label %cond.end, !dbg !2671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ], !dbg !2671
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #15, !dbg !2675
  ret ptr %cond, !dbg !2676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2677 dso_local ptr @dma_fence_array_first(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_dma_fence_chain(ptr noundef %fence) #2 align 16 !dbg !2678 {
entry:
  %retval = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2682, metadata !DIExpression()), !dbg !2685
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2686
  %tobool = icmp ne ptr %0, null, !dbg !2686
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2688

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2689
  %call = call zeroext i1 @dma_fence_is_chain(ptr noundef %1) #14, !dbg !2690
  br i1 %call, label %if.end, label %if.then, !dbg !2691

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !2692
  br label %return, !dbg !2692

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2683, metadata !DIExpression()), !dbg !2693
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2693
  store ptr %2, ptr %__mptr, align 8, !dbg !2693
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2693
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !2693
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2693
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2694
  %4 = load ptr, ptr %tmp, align 8, !dbg !2693
  store ptr %4, ptr %retval, align 8, !dbg !2695
  br label %return, !dbg !2695

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2696
  ret ptr %5, !dbg !2696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_chain(ptr noundef %fence) #2 align 16 !dbg !2697 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2699, metadata !DIExpression()), !dbg !2700
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2701
  %ops = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1, !dbg !2702
  %1 = load ptr, ptr %ops, align 8, !dbg !2702
  %cmp = icmp eq ptr %1, @dma_fence_chain_ops, !dbg !2703
  ret i1 %cmp, !dbg !2704
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2705 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2713, metadata !DIExpression()), !dbg !2718
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2714, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2720
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2715, metadata !DIExpression()), !dbg !2721
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2722
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2723
  %div = udiv i64 %1, 64, !dbg !2723
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2724
  store ptr %add.ptr, ptr %p, align 8, !dbg !2721
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !2725
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2716, metadata !DIExpression()), !dbg !2726
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2727
  %rem = urem i64 %2, 64, !dbg !2727
  %shl = shl i64 1, %rem, !dbg !2727
  store i64 %shl, ptr %mask, align 8, !dbg !2726
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !2728
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2717, metadata !DIExpression()), !dbg !2729
  %3 = load ptr, ptr %p, align 8, !dbg !2730
  %4 = load i64, ptr %3, align 8, !dbg !2731
  store i64 %4, ptr %val, align 8, !dbg !2729
  %5 = load i64, ptr %val, align 8, !dbg !2732
  %6 = load i64, ptr %mask, align 8, !dbg !2733
  %and = and i64 %5, %6, !dbg !2734
  %tobool = icmp ne i64 %and, 0, !dbg !2735
  %lnot = xor i1 %tobool, true, !dbg !2735
  %lnot1 = xor i1 %lnot, true, !dbg !2736
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2737
  ret i1 %lnot1, !dbg !2738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2739 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2742, metadata !DIExpression()), !dbg !2744
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2743, metadata !DIExpression()), !dbg !2745
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2746
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2747
  %div = udiv i64 %1, 64, !dbg !2747
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2748
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !2749
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2750
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2751
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !2752
  ret i1 %call, !dbg !2753
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2754 dso_local i32 @dma_fence_signal(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2757 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2759, metadata !DIExpression()), !dbg !2761
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2760, metadata !DIExpression()), !dbg !2762
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2763
  %1 = load i64, ptr %size.addr, align 8, !dbg !2764
  %conv = trunc i64 %1 to i32, !dbg !2764
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !2765
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2766
  %3 = load i64, ptr %size.addr, align 8, !dbg !2766
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !2766
  ret void, !dbg !2767
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2768 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2771, metadata !DIExpression()), !dbg !2773
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2772, metadata !DIExpression()), !dbg !2774
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2775
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2776
  br i1 %1, label %cond.true, label %cond.false, !dbg !2776

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2777
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2778
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !2779
  %conv = zext i1 %call to i32, !dbg !2779
  br label %cond.end, !dbg !2776

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2780
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2781
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !2782
  %conv2 = zext i1 %call1 to i32, !dbg !2782
  br label %cond.end, !dbg !2776

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2776
  %tobool = icmp ne i32 %cond, 0, !dbg !2776
  ret i1 %tobool, !dbg !2783
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !2784 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2786, metadata !DIExpression()), !dbg !2788
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2787, metadata !DIExpression()), !dbg !2789
  ret i1 true, !dbg !2790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2791 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2795, metadata !DIExpression()), !dbg !2797
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2796, metadata !DIExpression()), !dbg !2798
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2799
  %and = and i64 %0, 63, !dbg !2800
  %shl = shl i64 1, %and, !dbg !2801
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2802
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2803
  %shr = ashr i64 %2, 6, !dbg !2804
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2802
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2802
  %and1 = and i64 %shl, %3, !dbg !2805
  %cmp = icmp ne i64 %and1, 0, !dbg !2806
  ret i1 %cmp, !dbg !2807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2808 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2810, metadata !DIExpression()), !dbg !2813
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2811, metadata !DIExpression()), !dbg !2814
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2812, metadata !DIExpression()), !dbg !2816
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2817
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2818
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !2819, !srcloc !2820
  %3 = icmp ult i8 %2, 2, !dbg !2819
  call void @llvm.assume(i1 %3), !dbg !2819
  store i8 %2, ptr %oldbit, align 1, !dbg !2819
  %4 = load i8, ptr %oldbit, align 1, !dbg !2821, !range !2822, !noundef !552
  %tobool = trunc i8 %4 to i1, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !2823
  ret i1 %tobool, !dbg !2824
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2825 dso_local i64 @ktime_get() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !2827 {
entry:
  call void @rep_nop() #14, !dbg !2829
  ret void, !dbg !2830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !2831 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !2832, !srcloc !2833
  ret void, !dbg !2834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ktime_compare(i64 noundef %cmp1, i64 noundef %cmp2) #2 align 16 !dbg !2835 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, ptr %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp1.addr, metadata !2839, metadata !DIExpression()), !dbg !2841
  store i64 %cmp2, ptr %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmp2.addr, metadata !2840, metadata !DIExpression()), !dbg !2842
  %0 = load i64, ptr %cmp1.addr, align 8, !dbg !2843
  %1 = load i64, ptr %cmp2.addr, align 8, !dbg !2845
  %cmp = icmp slt i64 %0, %1, !dbg !2846
  br i1 %cmp, label %if.then, label %if.end, !dbg !2847

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2848
  br label %return, !dbg !2848

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %cmp1.addr, align 8, !dbg !2849
  %3 = load i64, ptr %cmp2.addr, align 8, !dbg !2851
  %cmp3 = icmp sgt i64 %2, %3, !dbg !2852
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2853

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2854
  br label %return, !dbg !2854

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2855
  br label %return, !dbg !2855

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !2856
  ret i32 %4, !dbg !2856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #2 align 16 !dbg !2857 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2862, metadata !DIExpression()), !dbg !2863
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2864, !range !2822, !noundef !552
  %tobool = trunc i8 %0 to i1, !dbg !2864
  %lnot = xor i1 %tobool, true, !dbg !2864
  %lnot1 = xor i1 %lnot, true, !dbg !2864
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2864
  %conv = sext i32 %lnot.ext to i64, !dbg !2864
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2864
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2864
  ret i1 %tobool2, !dbg !2865
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !2866 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2870, metadata !DIExpression()), !dbg !2875
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2871, metadata !DIExpression()), !dbg !2876
  %0 = load i64, ptr %size.addr, align 8, !dbg !2877
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2878
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2879

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2880
  %tobool = icmp ne i64 %2, 0, !dbg !2880
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2881

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !2882
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2872, metadata !DIExpression()), !dbg !2883
  %3 = load i64, ptr %size.addr, align 8, !dbg !2884
  %cmp = icmp ugt i64 %3, 8192, !dbg !2886
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2887

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2888
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2889
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !2890
  store ptr %call, ptr %retval, align 8, !dbg !2891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2891

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2892
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2892
  store i32 %call2, ptr %index, align 4, !dbg !2893
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2894
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2895
  %9 = ptrtoint ptr %8 to i64, !dbg !2895
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2896
  %idxprom = zext i32 %call3 to i64, !dbg !2897
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2897
  %10 = load i32, ptr %index, align 4, !dbg !2898
  %idxprom4 = zext i32 %10 to i64, !dbg !2897
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2897
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2897
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2899
  %13 = load i64, ptr %size.addr, align 8, !dbg !2900
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2901
  store ptr %call6, ptr %retval, align 8, !dbg !2902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2902

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !2903
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2904
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2905
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !2906
  store ptr %call8, ptr %retval, align 8, !dbg !2907
  br label %return, !dbg !2907

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2908
  ret ptr %16, !dbg !2908
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2909 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2910 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !2911 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2915, metadata !DIExpression()), !dbg !2917
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2916, metadata !DIExpression()), !dbg !2918
  %0 = load i64, ptr %size.addr, align 8, !dbg !2919
  %tobool = icmp ne i64 %0, 0, !dbg !2919
  br i1 %tobool, label %if.end, label %if.then, !dbg !2921

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2922
  br label %return, !dbg !2922

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2923
  %cmp = icmp ule i64 %1, 8, !dbg !2925
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2926

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2927
  br label %return, !dbg !2927

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2928
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2930
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2931

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2932
  %cmp4 = icmp ule i64 %3, 96, !dbg !2933
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2934

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2935
  br label %return, !dbg !2935

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2936
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2938
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2939

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2940
  %cmp9 = icmp ule i64 %5, 192, !dbg !2941
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2942

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2943
  br label %return, !dbg !2943

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2944
  %cmp12 = icmp ule i64 %6, 8, !dbg !2946
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2947

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2948
  br label %return, !dbg !2948

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2949
  %cmp15 = icmp ule i64 %7, 16, !dbg !2951
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2952

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2953
  br label %return, !dbg !2953

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2954
  %cmp18 = icmp ule i64 %8, 32, !dbg !2956
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2957

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2958
  br label %return, !dbg !2958

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2959
  %cmp21 = icmp ule i64 %9, 64, !dbg !2961
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2962

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2963
  br label %return, !dbg !2963

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2964
  %cmp24 = icmp ule i64 %10, 128, !dbg !2966
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2967

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2968
  br label %return, !dbg !2968

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2969
  %cmp27 = icmp ule i64 %11, 256, !dbg !2971
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2972

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2973
  br label %return, !dbg !2973

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2974
  %cmp30 = icmp ule i64 %12, 512, !dbg !2976
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2977

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2978
  br label %return, !dbg !2978

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2979
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2981
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2982

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2983
  br label %return, !dbg !2983

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2984
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2986
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2987

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2988
  br label %return, !dbg !2988

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2989
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2991
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2992

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2993
  br label %return, !dbg !2993

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2994
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2996
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2997

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2998
  br label %return, !dbg !2998

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2999
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3001
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3002

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3003
  br label %return, !dbg !3003

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3004
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3006
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3007

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3008
  br label %return, !dbg !3008

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3009
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3011
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3012

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3013
  br label %return, !dbg !3013

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3014
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3016
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3017

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3018
  br label %return, !dbg !3018

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3019
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3021
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3022

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3023
  br label %return, !dbg !3023

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3024
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3026
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3027

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3028
  br label %return, !dbg !3028

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3029
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3031
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3032

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3033
  br label %return, !dbg !3033

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3034
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3036
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3037

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3038
  br label %return, !dbg !3038

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3039, !range !2822, !noundef !552
  %tobool69 = trunc i8 %25 to i1, !dbg !3039
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3041

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3042

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_217() #19, !dbg !3043, !srcloc !3046
  unreachable, !dbg !3043

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3047

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3048

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3049

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3051

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3049

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !3053, !srcloc !3055
  br label %do.end75, !dbg !3053

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3049

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3056
  br label %return, !dbg !3056

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3057
  ret i32 %26, !dbg !3057
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3058 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !3064 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3068, metadata !DIExpression()), !dbg !3070
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3069, metadata !DIExpression()), !dbg !3071
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3072
  %and = and i32 %0, 17, !dbg !3072
  %cmp = icmp eq i32 %and, 0, !dbg !3072
  %lnot = xor i1 %cmp, true, !dbg !3072
  %lnot1 = xor i1 %lnot, true, !dbg !3072
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3072
  %conv = sext i32 %lnot.ext to i64, !dbg !3072
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3072
  %tobool = icmp ne i64 %expval, 0, !dbg !3072
  br i1 %tobool, label %if.then, label %if.end, !dbg !3074

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3075
  br label %return, !dbg !3075

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3076
  %and2 = and i32 %1, 1, !dbg !3078
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3078
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3079

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3080
  br label %return, !dbg !3080

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3081
  br label %return, !dbg !3081

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3083
  ret i32 %2, !dbg !3083
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3084 dso_local void @__compiletime_assert_217() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_later(ptr noundef %f1, ptr noundef %f2) #2 align 16 !dbg !3085 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca ptr, align 8
  %f2.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !3089, metadata !DIExpression()), !dbg !3097
  store ptr %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !3090, metadata !DIExpression()), !dbg !3098
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3099
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3091, metadata !DIExpression()), !dbg !3099
  %0 = load ptr, ptr %f1.addr, align 8, !dbg !3099
  %context = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 3, !dbg !3099
  %1 = load i64, ptr %context, align 8, !dbg !3099
  %2 = load ptr, ptr %f2.addr, align 8, !dbg !3099
  %context1 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 3, !dbg !3099
  %3 = load i64, ptr %context1, align 8, !dbg !3099
  %cmp = icmp ne i64 %1, %3, !dbg !3099
  %lnot = xor i1 %cmp, true, !dbg !3099
  %lnot2 = xor i1 %lnot, true, !dbg !3099
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3099
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3099
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3100
  %tobool = icmp ne i32 %4, 0, !dbg !3100
  %lnot3 = xor i1 %tobool, true, !dbg !3100
  %lnot5 = xor i1 %lnot3, true, !dbg !3100
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3100
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3100
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3100
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3100
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3099

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3100

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !3101
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3094, metadata !DIExpression()), !dbg !3101
  store i32 2305, ptr %__flags, align 4, !dbg !3101
  br label %do.body8, !dbg !3101

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3102

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3102

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3101

do.body9:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !3104
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 495, i32 %5, i64 12) #15, !dbg !3104, !srcloc !3106
  br label %do.cond10, !dbg !3104

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3104

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3101

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3107

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3107

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !3100
  br label %do.cond15, !dbg !3101

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3101

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3101

if.end:                                           ; preds = %do.end16, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3099
  %tobool17 = icmp ne i32 %6, 0, !dbg !3099
  %lnot18 = xor i1 %tobool17, true, !dbg !3099
  %lnot20 = xor i1 %lnot18, true, !dbg !3099
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3099
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3099
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3099
  store i64 %expval23, ptr %tmp, align 8, !dbg !3100
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !3109
  %7 = load i64, ptr %tmp, align 8, !dbg !3099
  %tobool24 = icmp ne i64 %7, 0, !dbg !3109
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !3110

if.then25:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !3111
  br label %return, !dbg !3111

if.end26:                                         ; preds = %if.end
  %8 = load ptr, ptr %f1.addr, align 8, !dbg !3112
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 4, !dbg !3113
  %9 = load i64, ptr %seqno, align 8, !dbg !3113
  %10 = load ptr, ptr %f2.addr, align 8, !dbg !3114
  %seqno27 = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 4, !dbg !3115
  %11 = load i64, ptr %seqno27, align 8, !dbg !3115
  %12 = load ptr, ptr %f1.addr, align 8, !dbg !3116
  %ops = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 1, !dbg !3117
  %13 = load ptr, ptr %ops, align 8, !dbg !3117
  %call = call zeroext i1 @__dma_fence_is_later(i64 noundef %9, i64 noundef %11, ptr noundef %13) #14, !dbg !3118
  store i1 %call, ptr %retval, align 1, !dbg !3119
  br label %return, !dbg !3119

return:                                           ; preds = %if.end26, %if.then25
  %14 = load i1, ptr %retval, align 1, !dbg !3120
  ret i1 %14, !dbg !3120
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__dma_fence_is_later(i64 noundef %f1, i64 noundef %f2, ptr noundef %ops) #2 align 16 !dbg !3121 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  store i64 %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !3125, metadata !DIExpression()), !dbg !3128
  store i64 %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !3126, metadata !DIExpression()), !dbg !3129
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !3127, metadata !DIExpression()), !dbg !3130
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !3131
  %use_64bit_seqno = getelementptr inbounds %struct.dma_fence_ops, ptr %0, i32 0, i32 0, !dbg !3133
  %1 = load i8, ptr %use_64bit_seqno, align 8, !dbg !3133, !range !2822, !noundef !552
  %tobool = trunc i8 %1 to i1, !dbg !3133
  br i1 %tobool, label %if.then, label %if.end, !dbg !3134

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %f1.addr, align 8, !dbg !3135
  %3 = load i64, ptr %f2.addr, align 8, !dbg !3136
  %cmp = icmp ugt i64 %2, %3, !dbg !3137
  store i1 %cmp, ptr %retval, align 1, !dbg !3138
  br label %return, !dbg !3138

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %f1.addr, align 8, !dbg !3139
  %and = and i64 %4, 4294967295, !dbg !3139
  %conv = trunc i64 %and to i32, !dbg !3139
  %5 = load i64, ptr %f2.addr, align 8, !dbg !3140
  %and1 = and i64 %5, 4294967295, !dbg !3140
  %conv2 = trunc i64 %and1 to i32, !dbg !3140
  %sub = sub i32 %conv, %conv2, !dbg !3141
  %cmp3 = icmp sgt i32 %sub, 0, !dbg !3142
  store i1 %cmp3, ptr %retval, align 1, !dbg !3143
  br label %return, !dbg !3143

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !3144
  ret i1 %6, !dbg !3144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #2 align 16 !dbg !3145 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !3150, metadata !DIExpression()), !dbg !3152
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !3151, metadata !DIExpression()), !dbg !3153
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !3154
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !3156
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #14, !dbg !3157
  br i1 %call, label %if.then, label %if.end, !dbg !3158

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !3159
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !3161
  call void %1(ptr noundef %2) #14, !dbg !3159
  store i32 1, ptr %retval, align 4, !dbg !3162
  br label %return, !dbg !3162

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3163
  br label %return, !dbg !3163

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !3164
  ret i32 %3, !dbg !3164
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !3165 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3169, metadata !DIExpression()), !dbg !3170
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3171
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !3172
  ret i1 %call, !dbg !3173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !3174 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3178, metadata !DIExpression()), !dbg !3180
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3179, metadata !DIExpression()), !dbg !3181
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3182
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3183
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !3184
  ret i1 %call, !dbg !3185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !3186 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3190, metadata !DIExpression()), !dbg !3194
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3191, metadata !DIExpression()), !dbg !3195
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !3197
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3193, metadata !DIExpression()), !dbg !3198
  %0 = load i32, ptr %i.addr, align 4, !dbg !3199
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3200
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3201
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !3202
  store i32 %call, ptr %old, align 4, !dbg !3198
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3203
  %tobool = icmp ne ptr %2, null, !dbg !3203
  br i1 %tobool, label %if.then, label %if.end, !dbg !3205

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3206
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3207
  store i32 %3, ptr %4, align 4, !dbg !3208
  br label %if.end, !dbg !3209

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3210
  %6 = load i32, ptr %i.addr, align 4, !dbg !3212
  %cmp = icmp eq i32 %5, %6, !dbg !3213
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !3214

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !3215

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !3217

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !3219

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3219

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !3217

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !3221

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !3223

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3223

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3221, !srcloc !3225
  br label %do.cond7, !dbg !3221

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !3221

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !3217

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !3217

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !3226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3226

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3227
  %cmp12 = icmp slt i32 %7, 0, !dbg !3227
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !3227

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !3227
  %9 = load i32, ptr %i.addr, align 4, !dbg !3227
  %sub = sub i32 %8, %9, !dbg !3227
  %cmp13 = icmp slt i32 %sub, 0, !dbg !3227
  br label %lor.end, !dbg !3227

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !3227
  %lnot14 = xor i1 %lnot, true, !dbg !3227
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !3227
  %conv = sext i32 %lnot.ext to i64, !dbg !3227
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3227
  %tobool15 = icmp ne i64 %expval, 0, !dbg !3227
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3229

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3230
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !3231
  br label %if.end17, !dbg !3231

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !3232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3232

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !3233
  %12 = load i1, ptr %retval, align 1, !dbg !3233
  ret i1 %12, !dbg !3233
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3234 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3236, metadata !DIExpression()), !dbg !3238
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3237, metadata !DIExpression()), !dbg !3239
  br label %do.body, !dbg !3240

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3241

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3243
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !3244
  %1 = load i32, ptr %i.addr, align 4, !dbg !3245
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3246
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !3247
  ret i32 %call, !dbg !3248
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3249 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3251, metadata !DIExpression()), !dbg !3253
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3252, metadata !DIExpression()), !dbg !3254
  %0 = load i32, ptr %i.addr, align 4, !dbg !3255
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3256
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !3257
  ret i32 %call, !dbg !3258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !3259 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3261, metadata !DIExpression()), !dbg !3265
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !3267
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3263, metadata !DIExpression()), !dbg !3267
  %0 = load i32, ptr %i.addr, align 4, !dbg !3267
  %sub = sub i32 0, %0, !dbg !3267
  store i32 %sub, ptr %__ret, align 4, !dbg !3267
  %1 = load i32, ptr %__ret, align 4, !dbg !3267
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3267
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3267
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !3267, !srcloc !3268
  store i32 %3, ptr %__ret, align 4, !dbg !3267
  %4 = load i32, ptr %__ret, align 4, !dbg !3267
  store i32 %4, ptr %tmp, align 4, !dbg !3267
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !3269
  %5 = load i32, ptr %tmp, align 4, !dbg !3267
  ret i32 %5, !dbg !3270
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0,1) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971}
!llvm.ident = !{!1972}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_unwrap_first218", scope: !2, file: !3, line: 40, type: !55, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma-buf/.dma-fence-unwrap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma-buf/dma-fence-unwrap\22 -D KBUILD_BASENAME=\22dma_fence_unwrap\22 -D KBUILD_MODNAME=\22dma_fence_unwrap\22 -D __KBUILD_MODNAME=kmod_dma_fence_unwrap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma-buf/dma-fence-unwrap.ll drivers/dma-buf/dma-fence-unwrap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !1949, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/dma-fence-unwrap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33b5fc0af021d9d49bbf3b3e963dab4f")
!4 = !{!5, !11, !17, !24, !29, !37, !44}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !18, line: 51, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!21 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!22 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!23 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 10, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "false", value: 0)
!28 = !DIEnumerator(name: "true", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !30, line: 119, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!33 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!34 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!35 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!36 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !38, line: 98, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0)
!41 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1)
!42 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2)
!43 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !45, line: 364, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!46 = !{!47, !48, !49, !50, !51, !52, !53}
!47 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!48 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!49 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!50 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!51 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!52 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!53 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!54 = !{!55, !56, !58, !1944, !1945, !1947, !181, !1948, !91, !250}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !57, line: 154, baseType: !7)
!57 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_chain", file: !60, line: 25, size: 1024, elements: !61)
!60 = !DIFile(filename: "./include/linux/dma-fence-chain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f67e6ff9d63142f4c4d80e4fb60a6c7")
!61 = !{!62, !192, !193, !194, !195, !1943}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !59, file: !60, line: 26, baseType: !63, size: 512)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !38, line: 65, size: 512, elements: !64)
!64 = !{!65, !110, !156, !175, !179, !180, !182, !191}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !63, file: !38, line: 66, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !68, line: 29, baseType: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !68, line: 17, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !68, line: 18, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !68, line: 18, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !72, file: !68, line: 19, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !76, line: 14, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !75, file: !76, line: 15, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !80, line: 44, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !80, line: 14, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 15, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 15, size: 32, elements: !85)
!85 = !{!86, !92, !102}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !80, line: 16, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !57, line: 174, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 172, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !88, file: !57, line: 173, baseType: !91, size: 32)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 24, baseType: !93, size: 16)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 24, size: 16, elements: !94)
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !93, file: !80, line: 25, baseType: !96, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !97, line: 17, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !99, line: 21, baseType: !100)
!99 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !93, file: !80, line: 26, baseType: !96, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 28, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 28, size: 32, elements: !104)
!104 = !{!105, !109}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !103, file: !80, line: 29, baseType: !106, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !97, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !99, line: 24, baseType: !108)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !103, file: !80, line: 30, baseType: !106, size: 16, offset: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !63, file: !38, line: 67, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !38, line: 125, size: 640, elements: !114)
!114 = !{!115, !118, !126, !127, !131, !132, !137, !141, !146, !147}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !113, file: !38, line: 132, baseType: !116, size: 8)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !57, line: 35, baseType: !117)
!117 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !113, file: !38, line: 143, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !125}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !113, file: !38, line: 155, baseType: !119, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !113, file: !38, line: 192, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!116, !125}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !113, file: !38, line: 209, baseType: !128, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !113, file: !38, line: 227, baseType: !133, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !125, !116, !136}
!136 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !113, file: !38, line: 238, baseType: !138, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !125}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !113, file: !38, line: 248, baseType: !142, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !125, !145, !91}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !113, file: !38, line: 258, baseType: !142, size: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !113, file: !38, line: 279, baseType: !148, size: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !125, !151}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !152, line: 29, baseType: !153)
!152 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !97, line: 22, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !99, line: 30, baseType: !155)
!155 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !38, line: 84, baseType: !157, size: 128, offset: 128)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !38, line: 84, size: 128, elements: !158)
!158 = !{!159, !165, !166}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !157, file: !38, line: 85, baseType: !160, size: 128)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !57, line: 190, size: 128, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !57, line: 191, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !160, file: !57, line: 191, baseType: !163, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !157, file: !38, line: 87, baseType: !151, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !157, file: !38, line: 89, baseType: !167, size: 128, align: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !57, line: 232, size: 128, align: 64, elements: !168)
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !57, line: 233, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !167, file: !57, line: 234, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !170}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !63, file: !38, line: 91, baseType: !176, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !97, line: 23, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !99, line: 31, baseType: !178)
!178 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !63, file: !38, line: 92, baseType: !176, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !38, line: 93, baseType: !181, size: 64, offset: 384)
!181 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !63, file: !38, line: 94, baseType: !183, size: 32, offset: 448)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !184, line: 19, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !183, file: !184, line: 20, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !30, line: 113, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !30, line: 111, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !188, file: !30, line: 112, baseType: !87, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !63, file: !38, line: 95, baseType: !91, size: 32, offset: 480)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !60, line: 27, baseType: !125, size: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev_seqno", scope: !59, file: !60, line: 28, baseType: !176, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !59, file: !60, line: 29, baseType: !125, size: 64, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !59, file: !60, line: 30, baseType: !196, size: 256, offset: 704)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !59, file: !60, line: 30, size: 256, elements: !197)
!197 = !{!198, !208}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !196, file: !60, line: 38, baseType: !199, size: 192)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !38, line: 116, size: 192, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !38, line: 117, baseType: !160, size: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !199, file: !38, line: 118, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !38, line: 105, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !125, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !196, file: !60, line: 47, baseType: !209, size: 256)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !210, line: 17, size: 256, elements: !211)
!210 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!211 = !{!212, !229, !234}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !210, line: 18, baseType: !213, size: 128)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !214, line: 58, size: 128, elements: !215)
!214 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!215 = !{!216, !222, !227, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !213, file: !214, line: 59, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !218, line: 60, size: 64, elements: !219)
!218 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !218, line: 61, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !214, line: 60, baseType: !223, size: 32, offset: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !214, line: 60, size: 32, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !223, file: !214, line: 61, baseType: !7, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !223, file: !214, line: 62, baseType: !87, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !213, file: !214, line: 65, baseType: !106, size: 16, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !213, file: !214, line: 65, baseType: !106, size: 16, offset: 112)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !209, file: !210, line: 19, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !209, file: !210, line: 20, baseType: !235, size: 64, offset: 192)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !236, line: 16, size: 64, elements: !237)
!236 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !235, file: !236, line: 17, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !241, line: 746, size: 58368, elements: !242)
!241 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!242 = !{!243, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !321, !332, !432, !436, !439, !470, !471, !472, !473, !484, !486, !487, !488, !489, !490, !491, !502, !503, !506, !507, !508, !509, !510, !511, !512, !513, !520, !521, !528, !529, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !800, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !848, !850, !851, !852, !864, !866, !867, !868, !869, !870, !871, !877, !878, !879, !880, !881, !882, !883, !897, !903, !1097, !1098, !1099, !1100, !1104, !1107, !1114, !1119, !1122, !1125, !1128, !1131, !1276, !1307, !1308, !1309, !1310, !1311, !1312, !1315, !1316, !1317, !1320, !1321, !1322, !1331, !1339, !1340, !1341, !1342, !1343, !1348, !1349, !1350, !1353, !1354, !1357, !1360, !1363, !1366, !1369, !1370, !1457, !1458, !1459, !1460, !1461, !1467, !1468, !1469, !1470, !1473, !1474, !1477, !1480, !1481, !1484, !1485, !1486, !1489, !1490, !1491, !1494, !1495, !1496, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1528, !1531, !1599, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1611, !1683, !1685, !1686, !1687, !1688, !1689, !1701, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1718, !1719, !1720}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !240, file: !241, line: 752, baseType: !244, size: 192)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !245, line: 56, size: 192, elements: !246)
!245 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!246 = !{!247, !248, !249, !252}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !245, line: 57, baseType: !181, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !244, file: !245, line: 58, baseType: !181, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !244, file: !245, line: 59, baseType: !250, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !97, line: 21, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !99, line: 27, baseType: !7)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !244, file: !245, line: 61, baseType: !250, size: 32, offset: 160)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !240, file: !241, line: 754, baseType: !7, size: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !240, file: !241, line: 767, baseType: !55, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !240, file: !241, line: 768, baseType: !187, size: 32, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !241, line: 770, baseType: !7, size: 32, offset: 352)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !240, file: !241, line: 771, baseType: !7, size: 32, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !240, file: !241, line: 774, baseType: !91, size: 32, offset: 416)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !240, file: !241, line: 775, baseType: !213, size: 128, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !240, file: !241, line: 776, baseType: !7, size: 32, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !240, file: !241, line: 777, baseType: !181, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !240, file: !241, line: 778, baseType: !239, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !240, file: !241, line: 787, baseType: !91, size: 32, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !240, file: !241, line: 788, baseType: !91, size: 32, offset: 800)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !240, file: !241, line: 790, baseType: !91, size: 32, offset: 832)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !240, file: !241, line: 792, baseType: !91, size: 32, offset: 864)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !240, file: !241, line: 793, baseType: !91, size: 32, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !240, file: !241, line: 794, baseType: !91, size: 32, offset: 928)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !240, file: !241, line: 795, baseType: !7, size: 32, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !240, file: !241, line: 797, baseType: !271, size: 2048, offset: 1024)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !241, line: 551, size: 2048, elements: !272)
!272 = !{!273, !278, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !300, !303, !304, !305}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !271, file: !241, line: 553, baseType: !274, size: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !241, line: 411, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !274, file: !241, line: 412, baseType: !181, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !274, file: !241, line: 413, baseType: !250, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !271, file: !241, line: 554, baseType: !279, size: 192, align: 64, offset: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !280, line: 5, size: 192, align: 64, elements: !281)
!280 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!281 = !{!282, !283, !285}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !279, file: !280, line: 6, baseType: !181, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !279, file: !280, line: 7, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !279, file: !280, line: 8, baseType: !284, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !271, file: !241, line: 555, baseType: !176, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !271, file: !241, line: 556, baseType: !176, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !271, file: !241, line: 558, baseType: !160, size: 128, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !271, file: !241, line: 559, baseType: !7, size: 32, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !271, file: !241, line: 561, baseType: !176, size: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !271, file: !241, line: 562, baseType: !176, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !271, file: !241, line: 563, baseType: !176, size: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !271, file: !241, line: 564, baseType: !176, size: 64, offset: 832)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !271, file: !241, line: 565, baseType: !153, size: 64, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !271, file: !241, line: 566, baseType: !176, size: 64, offset: 960)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !271, file: !241, line: 568, baseType: !176, size: 64, offset: 1024)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !271, file: !241, line: 571, baseType: !91, size: 32, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !271, file: !241, line: 572, baseType: !299, size: 64, offset: 1152)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !271, file: !241, line: 574, baseType: !301, size: 64, offset: 1216)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !241, line: 49, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !271, file: !241, line: 576, baseType: !301, size: 64, offset: 1280)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !271, file: !241, line: 578, baseType: !181, size: 64, offset: 1344)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !271, file: !241, line: 588, baseType: !306, size: 512, align: 512, offset: 1536)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !241, line: 497, size: 512, align: 512, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !306, file: !241, line: 498, baseType: !176, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !306, file: !241, line: 499, baseType: !176, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !306, file: !241, line: 500, baseType: !176, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !306, file: !241, line: 501, baseType: !250, size: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !306, file: !241, line: 502, baseType: !250, size: 32, offset: 224)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !306, file: !241, line: 503, baseType: !181, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !306, file: !241, line: 504, baseType: !181, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !306, file: !241, line: 505, baseType: !181, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !306, file: !241, line: 506, baseType: !317, size: 64, align: 64, offset: 448)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !241, line: 445, size: 64, align: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !317, file: !241, line: 446, baseType: !7, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !317, file: !241, line: 447, baseType: !7, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !240, file: !241, line: 798, baseType: !322, size: 384, offset: 3072)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !241, line: 592, size: 384, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !322, file: !241, line: 593, baseType: !160, size: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !322, file: !241, line: 594, baseType: !181, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !322, file: !241, line: 595, baseType: !181, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !322, file: !241, line: 596, baseType: !7, size: 32, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !322, file: !241, line: 597, baseType: !108, size: 16, offset: 288)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !322, file: !241, line: 598, baseType: !108, size: 16, offset: 304)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !322, file: !241, line: 600, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !240, file: !241, line: 799, baseType: !333, size: 1792, offset: 3456)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !241, line: 610, size: 1792, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !429, !430}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !333, file: !241, line: 611, baseType: !279, size: 192, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !333, file: !241, line: 618, baseType: !176, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !333, file: !241, line: 619, baseType: !176, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !333, file: !241, line: 620, baseType: !176, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !333, file: !241, line: 621, baseType: !176, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !333, file: !241, line: 622, baseType: !176, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !333, file: !241, line: 629, baseType: !153, size: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !333, file: !241, line: 630, baseType: !176, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !241, line: 631, baseType: !7, size: 32, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !333, file: !241, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !333, file: !241, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !333, file: !241, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !333, file: !241, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !333, file: !241, line: 662, baseType: !349, size: 512, offset: 704)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !350)
!350 = !{!351, !357, !358, !363, !425, !426, !427, !428}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !349, file: !6, line: 119, baseType: !352, size: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !353, line: 9, size: 256, elements: !354)
!353 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !353, line: 10, baseType: !279, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !352, file: !353, line: 11, baseType: !151, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !349, file: !6, line: 120, baseType: !151, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !349, file: !6, line: 121, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!5, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !349, file: !6, line: 122, baseType: !364, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !366)
!366 = !{!367, !393, !394, !398, !408, !409, !420, !424}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !365, file: !6, line: 160, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !370)
!370 = !{!371, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !369, file: !6, line: 216, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !76, line: 23, baseType: !75)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !369, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !369, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !369, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !369, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !369, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !369, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !369, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !369, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !369, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !369, file: !6, line: 227, baseType: !108, size: 16, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !369, file: !6, line: 228, baseType: !108, size: 16, offset: 208)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !369, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !369, file: !6, line: 235, baseType: !151, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !369, file: !6, line: 236, baseType: !362, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !369, file: !6, line: 237, baseType: !151, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !369, file: !6, line: 238, baseType: !362, size: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !369, file: !6, line: 239, baseType: !390, size: 4096, align: 512, offset: 512)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 4096, align: 512, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !365, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !365, file: !6, line: 162, baseType: !395, size: 32, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !57, line: 32, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !397, line: 96, baseType: !91)
!397 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!398 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !365, file: !6, line: 163, baseType: !399, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !400, line: 274, baseType: !401)
!400 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !400, line: 274, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !401, file: !400, line: 274, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !400, line: 69, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !400, line: 64, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !405, file: !400, line: 65, baseType: !7, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !365, file: !6, line: 164, baseType: !362, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !365, file: !6, line: 165, baseType: !410, size: 128, offset: 256)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !353, line: 14, size: 128, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !410, file: !353, line: 15, baseType: !413, size: 128)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !280, line: 26, size: 128, elements: !414)
!414 = !{!415, !419}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !413, file: !280, line: 27, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !280, line: 12, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !416, file: !280, line: 13, baseType: !284, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !413, file: !280, line: 28, baseType: !284, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !365, file: !6, line: 166, baseType: !421, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!151}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !365, file: !6, line: 167, baseType: !151, size: 64, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !6, line: 123, baseType: !96, size: 8, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !349, file: !6, line: 124, baseType: !96, size: 8, offset: 456)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !349, file: !6, line: 125, baseType: !96, size: 8, offset: 464)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !349, file: !6, line: 126, baseType: !96, size: 8, offset: 472)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !333, file: !241, line: 671, baseType: !349, size: 512, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !333, file: !241, line: 679, baseType: !431, size: 64, offset: 1728)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !240, file: !241, line: 800, baseType: !433, size: 64, offset: 5248)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !241, line: 800, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !240, file: !241, line: 809, baseType: !437, size: 64, offset: 5312)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !241, line: 70, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !240, file: !241, line: 825, baseType: !440, size: 2048, align: 512, offset: 5632)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !241, line: 509, size: 2048, align: 512, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !440, file: !241, line: 511, baseType: !176, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !440, file: !241, line: 512, baseType: !176, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !440, file: !241, line: 513, baseType: !176, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !440, file: !241, line: 514, baseType: !176, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !440, file: !241, line: 515, baseType: !176, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !440, file: !241, line: 516, baseType: !176, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !440, file: !241, line: 518, baseType: !176, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !440, file: !241, line: 519, baseType: !176, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !440, file: !241, line: 520, baseType: !153, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !440, file: !241, line: 522, baseType: !176, size: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !440, file: !241, line: 523, baseType: !176, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !440, file: !241, line: 524, baseType: !153, size: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !440, file: !241, line: 526, baseType: !153, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !440, file: !241, line: 527, baseType: !176, size: 64, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !440, file: !241, line: 529, baseType: !176, size: 64, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !440, file: !241, line: 530, baseType: !176, size: 64, offset: 960)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !440, file: !241, line: 531, baseType: !176, size: 64, offset: 1024)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !440, file: !241, line: 532, baseType: !176, size: 64, offset: 1088)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !440, file: !241, line: 533, baseType: !176, size: 64, offset: 1152)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !440, file: !241, line: 535, baseType: !176, size: 64, offset: 1216)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !440, file: !241, line: 536, baseType: !176, size: 64, offset: 1280)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !440, file: !241, line: 537, baseType: !176, size: 64, offset: 1344)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !440, file: !241, line: 538, baseType: !176, size: 64, offset: 1408)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !440, file: !241, line: 539, baseType: !176, size: 64, offset: 1472)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !440, file: !241, line: 540, baseType: !176, size: 64, offset: 1536)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !440, file: !241, line: 541, baseType: !176, size: 64, offset: 1600)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !440, file: !241, line: 542, baseType: !176, size: 64, offset: 1664)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !440, file: !241, line: 543, baseType: !176, size: 64, offset: 1728)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !240, file: !241, line: 833, baseType: !7, size: 32, offset: 7680)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !240, file: !241, line: 836, baseType: !7, size: 32, offset: 7712)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !240, file: !241, line: 837, baseType: !91, size: 32, offset: 7744)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !240, file: !241, line: 838, baseType: !474, size: 64, offset: 7808)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !477, line: 19, baseType: !478)
!477 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !477, line: 19, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !478, file: !477, line: 19, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 1)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !240, file: !241, line: 839, baseType: !485, size: 64, offset: 7872)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !240, file: !241, line: 840, baseType: !476, size: 64, offset: 7936)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !240, file: !241, line: 841, baseType: !55, size: 64, offset: 8000)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !240, file: !241, line: 843, baseType: !108, size: 16, offset: 8064)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !240, file: !241, line: 845, baseType: !108, size: 16, offset: 8080)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !240, file: !241, line: 848, baseType: !91, size: 32, offset: 8096)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !240, file: !241, line: 849, baseType: !492, size: 32, offset: 8128)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !241, line: 718, size: 32, elements: !493)
!493 = !{!494, !501}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !492, file: !241, line: 724, baseType: !495, size: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !241, line: 719, size: 32, elements: !496)
!496 = !{!497, !498, !499, !500}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !495, file: !241, line: 720, baseType: !96, size: 8)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !495, file: !241, line: 721, baseType: !96, size: 8, offset: 8)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !495, file: !241, line: 722, baseType: !96, size: 8, offset: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !495, file: !241, line: 723, baseType: !96, size: 8, offset: 24)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !492, file: !241, line: 725, baseType: !250, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !240, file: !241, line: 850, baseType: !160, size: 128, offset: 8192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !240, file: !241, line: 851, baseType: !504, size: 64, offset: 8320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !241, line: 60, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !240, file: !241, line: 855, baseType: !181, size: 64, offset: 8384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !240, file: !241, line: 856, baseType: !96, size: 8, offset: 8448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !240, file: !241, line: 857, baseType: !96, size: 8, offset: 8456)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !240, file: !241, line: 858, baseType: !91, size: 32, offset: 8480)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !240, file: !241, line: 859, baseType: !160, size: 128, offset: 8512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !240, file: !241, line: 860, baseType: !91, size: 32, offset: 8640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !240, file: !241, line: 861, baseType: !160, size: 128, offset: 8704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !240, file: !241, line: 873, baseType: !514, size: 256, offset: 8832)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !241, line: 376, size: 256, elements: !515)
!515 = !{!516, !517, !518, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !514, file: !241, line: 381, baseType: !181, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !514, file: !241, line: 384, baseType: !178, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !514, file: !241, line: 389, baseType: !178, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !514, file: !241, line: 392, baseType: !178, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !240, file: !241, line: 875, baseType: !160, size: 128, offset: 9088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !240, file: !241, line: 877, baseType: !522, size: 320, offset: 9216)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !523, line: 86, size: 320, elements: !524)
!523 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!524 = !{!525, !526, !527}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !522, file: !523, line: 87, baseType: !91, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !522, file: !523, line: 88, baseType: !160, size: 128, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !522, file: !523, line: 89, baseType: !160, size: 128, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !240, file: !241, line: 878, baseType: !279, size: 192, align: 64, offset: 9536)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !240, file: !241, line: 881, baseType: !530, size: 64, offset: 9728)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !532, line: 733, size: 10240, elements: !533)
!532 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!533 = !{!534, !717}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !532, line: 734, baseType: !535, size: 10240)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !532, line: 734, size: 10240, elements: !536)
!536 = !{!537, !541, !555, !562, !563, !564, !565, !566, !567, !575, !576, !577, !583, !584, !591, !592, !593, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !634, !648, !651, !683, !684, !685, !688, !692, !693, !696, !697, !698, !704, !705}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !532, line: 739, baseType: !538, size: 512, align: 512)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !532, line: 739, size: 512, align: 512, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !538, file: !532, line: 747, baseType: !87, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !535, file: !532, line: 750, baseType: !542, size: 128, offset: 512)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !543, line: 218, size: 128, elements: !544)
!543 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!544 = !{!545, !553, !554}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !543, line: 219, baseType: !546, size: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !543, line: 219, size: 32, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !546, file: !543, line: 220, baseType: !67, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !546, file: !543, line: 221, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !543, line: 197, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 197, elements: !552)
!552 = !{}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !542, file: !543, line: 223, baseType: !7, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !542, file: !543, line: 224, baseType: !55, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !535, file: !532, line: 752, baseType: !556, size: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!181, !559, !181, !181, !181, !181}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !561, line: 537, flags: DIFlagFwdDecl)
!561 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !535, file: !532, line: 756, baseType: !181, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !535, file: !532, line: 757, baseType: !181, size: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !535, file: !532, line: 760, baseType: !181, size: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !535, file: !532, line: 761, baseType: !181, size: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !535, file: !532, line: 763, baseType: !181, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !535, file: !532, line: 764, baseType: !568, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !561, line: 299, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 299, size: 64, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !570, file: !561, line: 299, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !574, line: 18, baseType: !181)
!574 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !535, file: !532, line: 773, baseType: !87, size: 32, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !535, file: !532, line: 785, baseType: !87, size: 32, offset: 1120)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !535, file: !532, line: 795, baseType: !578, size: 64, offset: 1152)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !532, line: 726, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !579, file: !532, line: 727, baseType: !176, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !579, file: !532, line: 728, baseType: !91, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !535, file: !532, line: 801, baseType: !181, size: 64, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !535, file: !532, line: 804, baseType: !585, size: 64, offset: 1280)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !586, line: 13, baseType: !587)
!586 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !57, line: 181, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 179, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !588, file: !57, line: 180, baseType: !153, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !535, file: !532, line: 806, baseType: !91, size: 32, offset: 1344)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !535, file: !532, line: 808, baseType: !67, size: 32, offset: 1376)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !535, file: !532, line: 823, baseType: !594, size: 320, offset: 1408)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !595, line: 48, size: 320, elements: !596)
!595 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!596 = !{!597, !598, !599, !604, !605}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !594, file: !595, line: 49, baseType: !585, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !594, file: !595, line: 55, baseType: !585, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !594, file: !595, line: 57, baseType: !600, size: 32, offset: 128)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !601, line: 15, size: 32, elements: !602)
!601 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !600, file: !601, line: 20, baseType: !87, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !594, file: !595, line: 59, baseType: !372, size: 32, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !594, file: !595, line: 60, baseType: !160, size: 128, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !535, file: !532, line: 825, baseType: !160, size: 128, offset: 1728)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !535, file: !532, line: 845, baseType: !91, size: 32, offset: 1856)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !535, file: !532, line: 849, baseType: !181, size: 64, offset: 1920)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !535, file: !532, line: 850, baseType: !181, size: 64, offset: 1984)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !535, file: !532, line: 852, baseType: !181, size: 64, offset: 2048)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !535, file: !532, line: 853, baseType: !181, size: 64, offset: 2112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !535, file: !532, line: 854, baseType: !587, size: 64, offset: 2176)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !535, file: !532, line: 855, baseType: !181, size: 64, offset: 2240)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !535, file: !532, line: 856, baseType: !181, size: 64, offset: 2304)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !535, file: !532, line: 857, baseType: !181, size: 64, offset: 2368)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !535, file: !532, line: 858, baseType: !181, size: 64, offset: 2432)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !535, file: !532, line: 865, baseType: !404, size: 32, offset: 2496)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !535, file: !532, line: 867, baseType: !67, size: 32, offset: 2528)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !535, file: !532, line: 869, baseType: !181, size: 64, offset: 2560)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !535, file: !532, line: 869, baseType: !181, size: 64, offset: 2624)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !535, file: !532, line: 869, baseType: !181, size: 64, offset: 2688)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !535, file: !532, line: 869, baseType: !181, size: 64, offset: 2752)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !535, file: !532, line: 870, baseType: !181, size: 64, offset: 2816)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !535, file: !532, line: 870, baseType: !181, size: 64, offset: 2880)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !535, file: !532, line: 870, baseType: !181, size: 64, offset: 2944)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !535, file: !532, line: 871, baseType: !181, size: 64, offset: 3008)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !535, file: !532, line: 871, baseType: !181, size: 64, offset: 3072)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !535, file: !532, line: 871, baseType: !181, size: 64, offset: 3136)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !535, file: !532, line: 871, baseType: !181, size: 64, offset: 3200)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !535, file: !532, line: 873, baseType: !631, size: 3328, offset: 3264)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 3328, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 52)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !535, file: !532, line: 875, baseType: !635, size: 1280, offset: 6592)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 1280, elements: !646)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !637, line: 22, size: 320, elements: !638)
!637 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!638 = !{!639, !640, !641, !642}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !636, file: !637, line: 23, baseType: !372, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !636, file: !637, line: 24, baseType: !153, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !636, file: !637, line: 26, baseType: !160, size: 128, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !636, file: !637, line: 28, baseType: !643, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !97, line: 20, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !99, line: 26, baseType: !91)
!646 = !{!647}
!647 = !DISubrange(count: 4)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !535, file: !532, line: 877, baseType: !649, size: 64, offset: 7872)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !532, line: 877, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !535, file: !532, line: 880, baseType: !652, size: 1088, offset: 7936)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !653, line: 72, baseType: !654)
!653 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 23, size: 1088, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !663, !664, !672, !673, !677, !678, !679}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !654, file: !653, line: 28, baseType: !176, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !654, file: !653, line: 38, baseType: !587, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !654, file: !653, line: 40, baseType: !181, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !654, file: !653, line: 43, baseType: !594, size: 320, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !654, file: !653, line: 44, baseType: !661, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !653, line: 44, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !653, line: 48, baseType: !181, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !654, file: !653, line: 59, baseType: !665, size: 256, offset: 640)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !666, line: 66, size: 256, elements: !667)
!666 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!667 = !{!668, !669, !670, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !665, file: !666, line: 67, baseType: !585, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !665, file: !666, line: 68, baseType: !372, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !665, file: !666, line: 70, baseType: !600, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !665, file: !666, line: 72, baseType: !160, size: 128, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !654, file: !653, line: 60, baseType: !55, size: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !654, file: !653, line: 61, baseType: !674, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !653, line: 61, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !654, file: !653, line: 63, baseType: !87, size: 32, offset: 1024)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !654, file: !653, line: 69, baseType: !106, size: 16, offset: 1056)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !654, file: !653, line: 70, baseType: !680, size: 16, offset: 1072)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !97, line: 18, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !99, line: 23, baseType: !682)
!682 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !532, line: 882, baseType: !181, size: 64, offset: 9024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !535, file: !532, line: 885, baseType: !67, size: 32, offset: 9088)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !535, file: !532, line: 886, baseType: !686, size: 64, offset: 9152)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !532, line: 732, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !535, file: !532, line: 901, baseType: !689, size: 64, offset: 9216)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !691, line: 18, flags: DIFlagFwdDecl)
!691 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !535, file: !532, line: 904, baseType: !559, size: 64, offset: 9280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !535, file: !532, line: 906, baseType: !694, size: 64, offset: 9344)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !532, line: 906, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !535, file: !532, line: 930, baseType: !87, size: 32, offset: 9408)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !535, file: !532, line: 933, baseType: !87, size: 32, offset: 9440)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !535, file: !532, line: 935, baseType: !699, size: 64, offset: 9472)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !699, file: !18, line: 104, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !535, file: !532, line: 940, baseType: !585, size: 64, offset: 9536)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !535, file: !532, line: 942, baseType: !706, size: 256, offset: 9600)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !707, line: 98, size: 256, elements: !708)
!707 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!708 = !{!709, !710, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !706, file: !707, line: 99, baseType: !585, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !706, file: !707, line: 100, baseType: !160, size: 128, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !706, file: !707, line: 101, baseType: !712, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !707, line: 21, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !531, file: !532, line: 986, baseType: !718, offset: 10240)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: -1)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !240, file: !241, line: 882, baseType: !530, size: 64, offset: 9792)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !240, file: !241, line: 884, baseType: !91, size: 32, offset: 9856)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !240, file: !241, line: 885, baseType: !91, size: 32, offset: 9888)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !240, file: !241, line: 886, baseType: !91, size: 32, offset: 9920)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !240, file: !241, line: 888, baseType: !91, size: 32, offset: 9952)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !240, file: !241, line: 890, baseType: !181, size: 64, offset: 9984)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !240, file: !241, line: 893, baseType: !7, size: 32, offset: 10048)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !240, file: !241, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !240, file: !241, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !240, file: !241, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !240, file: !241, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !240, file: !241, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !240, file: !241, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !240, file: !241, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !240, file: !241, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !240, file: !241, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !240, file: !241, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !240, file: !241, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !240, file: !241, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !240, file: !241, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !240, file: !241, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !240, file: !241, line: 969, baseType: !181, size: 64, offset: 10176)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !240, file: !241, line: 971, baseType: !744, size: 448, offset: 10240)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !745)
!745 = !{!746, !747, !752}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !744, file: !12, line: 26, baseType: !181, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !744, file: !12, line: 27, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!136, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, scope: !744, file: !12, line: 28, baseType: !753, size: 320, offset: 128)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !744, file: !12, line: 28, size: 320, elements: !754)
!754 = !{!755, !765, !790}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !753, file: !12, line: 37, baseType: !756, size: 320)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !753, file: !12, line: 30, size: 320, elements: !757)
!757 = !{!758, !760, !761, !762, !763, !764}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !756, file: !12, line: 31, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !756, file: !12, line: 32, baseType: !250, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !12, line: 33, baseType: !250, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !756, file: !12, line: 34, baseType: !250, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !756, file: !12, line: 35, baseType: !176, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !756, file: !12, line: 36, baseType: !759, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !753, file: !12, line: 47, baseType: !766, size: 192)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !753, file: !12, line: 39, size: 192, elements: !767)
!767 = !{!768, !769, !770, !789}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !766, file: !12, line: 40, baseType: !395, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !12, line: 42, baseType: !771, size: 64, offset: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !12, line: 42, size: 64, elements: !772)
!772 = !{!773, !781}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !771, file: !12, line: 43, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !776, line: 7, size: 128, elements: !777)
!776 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!777 = !{!778, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !775, file: !776, line: 8, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !397, line: 93, baseType: !155)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !775, file: !776, line: 9, baseType: !155, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !771, file: !12, line: 44, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !784, line: 7, size: 64, elements: !785)
!784 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!785 = !{!786, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !783, file: !784, line: 8, baseType: !787, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !784, line: 5, baseType: !644)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !783, file: !784, line: 9, baseType: !644, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !766, file: !12, line: 46, baseType: !176, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !753, file: !12, line: 55, baseType: !791, size: 256)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !753, file: !12, line: 49, size: 256, elements: !792)
!792 = !{!793, !796, !797, !798, !799}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !791, file: !12, line: 50, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !791, file: !12, line: 51, baseType: !91, size: 32, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !791, file: !12, line: 52, baseType: !91, size: 32, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !791, file: !12, line: 53, baseType: !181, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !791, file: !12, line: 54, baseType: !181, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !240, file: !241, line: 973, baseType: !801, size: 32, offset: 10688)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !57, line: 27, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !397, line: 28, baseType: !91)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !240, file: !241, line: 974, baseType: !801, size: 32, offset: 10720)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !240, file: !241, line: 978, baseType: !181, size: 64, offset: 10752)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !240, file: !241, line: 987, baseType: !239, size: 64, offset: 10816)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !241, line: 990, baseType: !239, size: 64, offset: 10880)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !240, file: !241, line: 995, baseType: !160, size: 128, offset: 10944)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !240, file: !241, line: 996, baseType: !160, size: 128, offset: 11072)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !240, file: !241, line: 997, baseType: !239, size: 64, offset: 11200)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !240, file: !241, line: 1005, baseType: !160, size: 128, offset: 11264)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !240, file: !241, line: 1006, baseType: !160, size: 128, offset: 11392)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !240, file: !241, line: 1009, baseType: !813, size: 64, offset: 11520)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !815, line: 59, size: 768, elements: !816)
!815 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!816 = !{!817, !818, !819, !820, !831, !832, !839, !840}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !814, file: !815, line: 61, baseType: !187, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !814, file: !815, line: 62, baseType: !7, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !814, file: !815, line: 63, baseType: !67, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !814, file: !815, line: 65, baseType: !821, size: 256, offset: 128)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 256, elements: !646)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !57, line: 194, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !822, file: !57, line: 195, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !57, line: 198, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !57, line: 199, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !826, file: !57, line: 199, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !814, file: !815, line: 66, baseType: !822, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !814, file: !815, line: 68, baseType: !833, size: 192, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !834, line: 41, baseType: !835)
!834 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !834, line: 37, size: 192, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !835, file: !834, line: 38, baseType: !67, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !835, file: !834, line: 39, baseType: !160, size: 128, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !814, file: !815, line: 69, baseType: !167, size: 128, align: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !814, file: !815, line: 70, baseType: !841, offset: 768)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, elements: !719)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !815, line: 54, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !842, file: !815, line: 55, baseType: !91, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !842, file: !815, line: 56, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !815, line: 56, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !240, file: !241, line: 1010, baseType: !849, size: 512, offset: 11584)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 512, elements: !646)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !240, file: !241, line: 1011, baseType: !160, size: 128, offset: 12096)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !240, file: !241, line: 1012, baseType: !160, size: 128, offset: 12224)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !240, file: !241, line: 1014, baseType: !853, size: 64, offset: 12352)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !855, line: 26, size: 256, elements: !856)
!855 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !854, file: !855, line: 27, baseType: !7, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !854, file: !855, line: 28, baseType: !859, size: 192, offset: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !860, line: 43, size: 192, elements: !861)
!860 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !859, file: !860, line: 44, baseType: !372, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !859, file: !860, line: 45, baseType: !160, size: 128, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !240, file: !241, line: 1017, baseType: !865, size: 64, offset: 12416)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !240, file: !241, line: 1020, baseType: !865, size: 64, offset: 12480)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !240, file: !241, line: 1023, baseType: !55, size: 64, offset: 12544)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !240, file: !241, line: 1025, baseType: !176, size: 64, offset: 12608)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !240, file: !241, line: 1026, baseType: !176, size: 64, offset: 12672)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !240, file: !241, line: 1031, baseType: !176, size: 64, offset: 12736)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !240, file: !241, line: 1032, baseType: !872, size: 192, offset: 12800)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !241, line: 324, size: 192, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !872, file: !241, line: 326, baseType: !176, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !872, file: !241, line: 327, baseType: !176, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !872, file: !241, line: 328, baseType: !372, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !240, file: !241, line: 1041, baseType: !181, size: 64, offset: 12992)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !240, file: !241, line: 1042, baseType: !181, size: 64, offset: 13056)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !240, file: !241, line: 1045, baseType: !176, size: 64, offset: 13120)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !240, file: !241, line: 1048, baseType: !176, size: 64, offset: 13184)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !240, file: !241, line: 1051, baseType: !181, size: 64, offset: 13248)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !240, file: !241, line: 1052, baseType: !181, size: 64, offset: 13312)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !240, file: !241, line: 1055, baseType: !884, size: 640, offset: 13376)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !885, line: 132, size: 640, elements: !886)
!885 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!886 = !{!887, !895, !896}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !884, file: !885, line: 133, baseType: !888, size: 576)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 576, elements: !893)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !885, line: 117, size: 192, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !889, file: !885, line: 118, baseType: !176, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !889, file: !885, line: 119, baseType: !410, size: 128, offset: 64)
!893 = !{!894}
!894 = !DISubrange(count: 3)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !884, file: !885, line: 134, baseType: !7, size: 32, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !884, file: !885, line: 135, baseType: !7, size: 32, offset: 608)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !240, file: !241, line: 1058, baseType: !898, size: 448, offset: 14016)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !885, line: 144, size: 448, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !898, file: !885, line: 145, baseType: !167, size: 128, align: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !898, file: !885, line: 146, baseType: !665, size: 256, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !898, file: !885, line: 147, baseType: !7, size: 32, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !240, file: !241, line: 1064, baseType: !904, size: 64, offset: 14464)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !907, line: 110, size: 1472, elements: !908)
!907 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!908 = !{!909, !910, !917, !924, !925, !926, !927, !928, !929, !930, !931, !937, !938, !939, !940, !941, !942, !1052, !1053, !1054, !1055, !1056, !1079, !1080, !1084, !1092}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !906, file: !907, line: 111, baseType: !585, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !906, file: !907, line: 112, baseType: !911, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !691, line: 23, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 21, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !912, file: !691, line: 22, baseType: !915, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !57, line: 37, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !397, line: 49, baseType: !7)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !906, file: !907, line: 113, baseType: !918, size: 32, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !691, line: 28, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 26, size: 32, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !919, file: !691, line: 27, baseType: !922, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !57, line: 38, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !397, line: 50, baseType: !7)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !906, file: !907, line: 114, baseType: !911, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !906, file: !907, line: 115, baseType: !918, size: 32, offset: 160)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !906, file: !907, line: 116, baseType: !911, size: 32, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !906, file: !907, line: 117, baseType: !918, size: 32, offset: 224)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !906, file: !907, line: 118, baseType: !911, size: 32, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !906, file: !907, line: 119, baseType: !918, size: 32, offset: 288)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !906, file: !907, line: 120, baseType: !7, size: 32, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !906, file: !907, line: 121, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !933, line: 24, baseType: !934)
!933 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !933, line: 24, size: 64, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !934, file: !933, line: 24, baseType: !176, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !906, file: !907, line: 122, baseType: !932, size: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !906, file: !907, line: 123, baseType: !932, size: 64, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !906, file: !907, line: 124, baseType: !932, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !906, file: !907, line: 125, baseType: !932, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !906, file: !907, line: 127, baseType: !100, size: 8, offset: 704)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !906, file: !907, line: 129, baseType: !943, size: 64, offset: 768)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !945, line: 195, size: 1728, elements: !946)
!945 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!946 = !{!947, !948, !951, !956, !957, !960, !961, !968, !969, !970, !971, !974, !975, !976, !977, !978, !1016, !1037}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !944, file: !945, line: 196, baseType: !187, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !944, file: !945, line: 197, baseType: !949, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !945, line: 28, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !57, line: 104, baseType: !644)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !945, line: 198, baseType: !952, size: 192, offset: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !945, line: 198, size: 192, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !952, file: !945, line: 199, baseType: !160, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !952, file: !945, line: 200, baseType: !279, size: 192, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !944, file: !945, line: 205, baseType: !594, size: 320, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !944, file: !945, line: 206, baseType: !958, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !945, line: 206, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !944, file: !945, line: 207, baseType: !55, size: 64, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !945, line: 208, baseType: !962, size: 64, offset: 704)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !945, line: 208, size: 64, elements: !963)
!963 = !{!964, !967}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !962, file: !945, line: 209, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !966, line: 8, baseType: !154)
!966 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !962, file: !945, line: 210, baseType: !965, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !944, file: !945, line: 212, baseType: !965, size: 64, offset: 768)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !944, file: !945, line: 213, baseType: !911, size: 32, offset: 832)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !944, file: !945, line: 214, baseType: !918, size: 32, offset: 864)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !944, file: !945, line: 215, baseType: !972, size: 32, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !945, line: 31, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !57, line: 110, baseType: !250)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !944, file: !945, line: 216, baseType: !108, size: 16, offset: 928)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !944, file: !945, line: 217, baseType: !108, size: 16, offset: 944)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !944, file: !945, line: 221, baseType: !682, size: 16, offset: 960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !945, line: 228, baseType: !181, size: 64, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !945, line: 245, baseType: !979, size: 320, offset: 1088)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !945, line: 245, size: 320, elements: !980)
!980 = !{!981, !1008}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !979, file: !945, line: 246, baseType: !982, size: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !945, line: 114, size: 320, elements: !983)
!983 = !{!984, !985, !997, !1000, !1007}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !982, file: !945, line: 116, baseType: !181, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !945, line: 117, baseType: !986, size: 64, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !945, line: 117, size: 64, elements: !987)
!987 = !{!988, !996}
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !945, line: 118, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !945, line: 118, size: 64, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !989, file: !945, line: 120, baseType: !106, size: 16)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !989, file: !945, line: 121, baseType: !993, size: 48, offset: 16)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 48, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 6)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !986, file: !945, line: 127, baseType: !181, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !982, file: !945, line: 129, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !945, line: 102, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !982, file: !945, line: 130, baseType: !1001, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !945, line: 108, size: 192, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1002, file: !945, line: 109, baseType: !167, size: 128, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1002, file: !945, line: 110, baseType: !187, size: 32, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1002, file: !945, line: 111, baseType: !116, size: 8, offset: 160)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !982, file: !945, line: 131, baseType: !122, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !945, line: 247, baseType: !1009, size: 320)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !945, line: 247, size: 320, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1009, file: !945, line: 248, baseType: !181, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1009, file: !945, line: 249, baseType: !181, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1009, file: !945, line: 250, baseType: !998, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1009, file: !945, line: 251, baseType: !1001, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1009, file: !945, line: 252, baseType: !145, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !945, line: 260, baseType: !1017, size: 256, offset: 1408)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !945, line: 260, size: 256, elements: !1018)
!1018 = !{!1019, !1025}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1017, file: !945, line: 261, baseType: !1020, size: 256)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !945, line: 134, size: 256, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1020, file: !945, line: 135, baseType: !55, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1020, file: !945, line: 136, baseType: !1024, size: 256)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !646)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !945, line: 262, baseType: !1026, size: 256)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !945, line: 262, size: 256, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1026, file: !945, line: 264, baseType: !160, size: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1026, file: !945, line: 265, baseType: !1030, size: 128, offset: 128)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1031, line: 22, size: 128, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1032 = !{!1033, !1036}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1030, file: !1031, line: 23, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1031, line: 23, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1030, file: !1031, line: 24, baseType: !181, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !944, file: !945, line: 280, baseType: !1038, size: 64, offset: 1664)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !945, line: 176, size: 192, elements: !1040)
!1040 = !{!1041, !1050, !1051}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1039, file: !945, line: 177, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !945, line: 171, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!91, !943, !1046, !1048, !943}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1039, file: !945, line: 178, baseType: !943, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1039, file: !945, line: 179, baseType: !998, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !906, file: !907, line: 130, baseType: !943, size: 64, offset: 832)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !906, file: !907, line: 131, baseType: !943, size: 64, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !906, file: !907, line: 132, baseType: !943, size: 64, offset: 960)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !906, file: !907, line: 135, baseType: !55, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !906, file: !907, line: 137, baseType: !1057, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1059, line: 14, size: 1088, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1058, file: !1059, line: 15, baseType: !187, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1058, file: !1059, line: 17, baseType: !636, size: 320, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1058, file: !1059, line: 19, baseType: !181, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1058, file: !1059, line: 20, baseType: !585, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1058, file: !1059, line: 23, baseType: !826, size: 128, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1058, file: !1059, line: 24, baseType: !911, size: 32, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1058, file: !1059, line: 29, baseType: !585, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1058, file: !1059, line: 36, baseType: !1069, size: 320, offset: 768)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1070, line: 15, size: 320, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1069, file: !1070, line: 16, baseType: !372, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1069, file: !1070, line: 18, baseType: !91, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1069, file: !1070, line: 19, baseType: !91, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1069, file: !1070, line: 20, baseType: !91, size: 32, offset: 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1069, file: !1070, line: 21, baseType: !91, size: 32, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1069, file: !1070, line: 22, baseType: !181, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1069, file: !1070, line: 23, baseType: !181, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !906, file: !907, line: 138, baseType: !689, size: 64, offset: 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !906, file: !907, line: 139, baseType: !1081, size: 64, offset: 1216)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1083, line: 16, flags: DIFlagFwdDecl)
!1083 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !906, file: !907, line: 140, baseType: !1085, size: 64, offset: 1280)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !907, line: 25, size: 64, elements: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1086, file: !907, line: 26, baseType: !87, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1086, file: !907, line: 27, baseType: !91, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1086, file: !907, line: 28, baseType: !1091, offset: 64)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, elements: !719)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !907, line: 142, baseType: !1093, size: 128, offset: 1344)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !907, line: 142, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1093, file: !907, line: 143, baseType: !91, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1093, file: !907, line: 144, baseType: !167, size: 128, align: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !240, file: !241, line: 1067, baseType: !904, size: 64, offset: 14528)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !240, file: !241, line: 1070, baseType: !904, size: 64, offset: 14592)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !240, file: !241, line: 1074, baseType: !943, size: 64, offset: 14656)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !240, file: !241, line: 1084, baseType: !1101, size: 128, offset: 14720)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !1102)
!1102 = !{!1103}
!1103 = !DISubrange(count: 16)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !240, file: !241, line: 1086, baseType: !1105, size: 64, offset: 14848)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !241, line: 55, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !240, file: !241, line: 1089, baseType: !1108, size: 64, offset: 14912)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1109, line: 12, size: 64, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1108, file: !1109, line: 13, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1109, line: 8, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !240, file: !241, line: 1090, baseType: !1115, size: 128, offset: 14976)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1116, line: 13, size: 128, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1115, file: !1116, line: 14, baseType: !160, size: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !240, file: !241, line: 1097, baseType: !1120, size: 64, offset: 15104)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !241, line: 50, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !240, file: !241, line: 1100, baseType: !1123, size: 64, offset: 15168)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !241, line: 1100, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !240, file: !241, line: 1103, baseType: !1126, size: 64, offset: 15232)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !241, line: 53, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !240, file: !241, line: 1107, baseType: !1129, size: 64, offset: 15296)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !241, line: 56, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !240, file: !241, line: 1110, baseType: !1132, size: 64, offset: 15360)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1134, line: 93, size: 8768, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1185, !1194, !1195, !1197, !1198, !1199, !1202, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1244, !1245, !1253, !1263, !1266, !1267, !1270, !1271, !1272, !1273, !1274, !1275}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1133, file: !1134, line: 94, baseType: !187, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1133, file: !1134, line: 95, baseType: !87, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1133, file: !1134, line: 96, baseType: !91, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1133, file: !1134, line: 97, baseType: !91, size: 32, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1133, file: !1134, line: 98, baseType: !160, size: 128, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1133, file: !1134, line: 100, baseType: !833, size: 192, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1133, file: !1134, line: 103, baseType: !239, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1133, file: !1134, line: 106, baseType: !1144, size: 192, offset: 512)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1083, line: 32, size: 192, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1144, file: !1083, line: 33, baseType: !160, size: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1144, file: !1083, line: 34, baseType: !1148, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1149, line: 25, baseType: !1150)
!1149 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1149, line: 23, size: 64, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1150, file: !1149, line: 24, baseType: !481, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1133, file: !1134, line: 109, baseType: !822, size: 64, offset: 704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1133, file: !1134, line: 112, baseType: !91, size: 32, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1133, file: !1134, line: 114, baseType: !91, size: 32, offset: 800)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1133, file: !1134, line: 115, baseType: !239, size: 64, offset: 832)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1133, file: !1134, line: 118, baseType: !91, size: 32, offset: 896)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !1134, line: 119, baseType: !7, size: 32, offset: 928)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1133, file: !1134, line: 121, baseType: !1160, size: 64, offset: 960)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1134, line: 80, size: 448, elements: !1162)
!1162 = !{!1163, !1164, !1170}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1161, file: !1134, line: 81, baseType: !87, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1161, file: !1134, line: 82, baseType: !1165, size: 128, offset: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1134, line: 75, size: 128, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1165, file: !1134, line: 76, baseType: !239, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1165, file: !1134, line: 77, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1161, file: !1134, line: 83, baseType: !854, size: 256, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1133, file: !1134, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1133, file: !1134, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1133, file: !1134, line: 138, baseType: !7, size: 32, offset: 1056)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1133, file: !1134, line: 139, baseType: !160, size: 128, offset: 1088)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1133, file: !1134, line: 142, baseType: !349, size: 512, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1133, file: !1134, line: 143, baseType: !151, size: 64, offset: 1728)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1133, file: !1134, line: 150, baseType: !1178, size: 256, offset: 1792)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 256, elements: !1183)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1134, line: 38, size: 128, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1179, file: !1134, line: 39, baseType: !176, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1179, file: !1134, line: 40, baseType: !176, size: 64, offset: 64)
!1183 = !{!1184}
!1184 = !DISubrange(count: 2)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1133, file: !1134, line: 156, baseType: !1186, size: 192, offset: 2048)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1134, line: 66, size: 192, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1186, file: !1134, line: 67, baseType: !1189, size: 192)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1134, line: 47, size: 192, elements: !1190)
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1189, file: !1134, line: 48, baseType: !587, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1189, file: !1134, line: 49, baseType: !587, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1189, file: !1134, line: 50, baseType: !587, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1133, file: !1134, line: 160, baseType: !884, size: 640, offset: 2240)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1133, file: !1134, line: 163, baseType: !1196, size: 256, offset: 2880)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 256, elements: !646)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1133, file: !1134, line: 169, baseType: !813, size: 64, offset: 3136)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1133, file: !1134, line: 172, baseType: !91, size: 32, offset: 3200)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1133, file: !1134, line: 174, baseType: !1200, size: 64, offset: 3264)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1134, line: 174, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1133, file: !1134, line: 185, baseType: !1203, size: 64, offset: 3328)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !400, line: 860, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 853, size: 64, elements: !1205)
!1205 = !{!1206, !1211}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1204, file: !400, line: 858, baseType: !1207, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !400, line: 275, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !400, line: 275, size: 32, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1208, file: !400, line: 275, baseType: !404, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1204, file: !400, line: 859, baseType: !67, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1133, file: !1134, line: 186, baseType: !176, size: 64, offset: 3392)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1133, file: !1134, line: 186, baseType: !176, size: 64, offset: 3456)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1133, file: !1134, line: 186, baseType: !176, size: 64, offset: 3520)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1133, file: !1134, line: 186, baseType: !176, size: 64, offset: 3584)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1133, file: !1134, line: 187, baseType: !176, size: 64, offset: 3648)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1133, file: !1134, line: 188, baseType: !176, size: 64, offset: 3712)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1133, file: !1134, line: 189, baseType: !872, size: 192, offset: 3776)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1133, file: !1134, line: 190, baseType: !181, size: 64, offset: 3968)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1133, file: !1134, line: 190, baseType: !181, size: 64, offset: 4032)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1133, file: !1134, line: 190, baseType: !181, size: 64, offset: 4096)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1133, file: !1134, line: 190, baseType: !181, size: 64, offset: 4160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1133, file: !1134, line: 191, baseType: !181, size: 64, offset: 4224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1133, file: !1134, line: 191, baseType: !181, size: 64, offset: 4288)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1133, file: !1134, line: 191, baseType: !181, size: 64, offset: 4352)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1133, file: !1134, line: 191, baseType: !181, size: 64, offset: 4416)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1133, file: !1134, line: 192, baseType: !181, size: 64, offset: 4480)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1133, file: !1134, line: 192, baseType: !181, size: 64, offset: 4544)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1133, file: !1134, line: 192, baseType: !181, size: 64, offset: 4608)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1133, file: !1134, line: 192, baseType: !181, size: 64, offset: 4672)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1133, file: !1134, line: 193, baseType: !181, size: 64, offset: 4736)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1133, file: !1134, line: 193, baseType: !181, size: 64, offset: 4800)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1133, file: !1134, line: 194, baseType: !1234, size: 448, offset: 4864)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1235, line: 12, size: 448, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1234, file: !1235, line: 15, baseType: !176, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1234, file: !1235, line: 17, baseType: !176, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1234, file: !1235, line: 19, baseType: !176, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1234, file: !1235, line: 21, baseType: !176, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1234, file: !1235, line: 29, baseType: !176, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1234, file: !1235, line: 35, baseType: !176, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1234, file: !1235, line: 44, baseType: !176, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1133, file: !1134, line: 202, baseType: !178, size: 64, offset: 5312)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1133, file: !1134, line: 213, baseType: !1246, size: 2048, offset: 5376)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 2048, elements: !1102)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1248, line: 43, size: 128, elements: !1249)
!1248 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1249 = !{!1250, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1247, file: !1248, line: 44, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !397, line: 16, baseType: !181)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1247, file: !1248, line: 45, baseType: !1251, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1133, file: !1134, line: 216, baseType: !1254, size: 448, offset: 7424)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1134, line: 30, size: 448, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1254, file: !1134, line: 31, baseType: !91, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1254, file: !1134, line: 32, baseType: !136, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1254, file: !1134, line: 33, baseType: !181, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1254, file: !1134, line: 34, baseType: !176, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1254, file: !1134, line: 34, baseType: !176, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1254, file: !1134, line: 35, baseType: !181, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1254, file: !1134, line: 35, baseType: !181, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1133, file: !1134, line: 219, baseType: !1264, size: 64, offset: 7872)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1134, line: 219, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1133, file: !1134, line: 222, baseType: !7, size: 32, offset: 7936)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1133, file: !1134, line: 223, baseType: !1268, size: 64, offset: 8000)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1134, line: 223, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1133, file: !1134, line: 230, baseType: !116, size: 8, offset: 8064)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1133, file: !1134, line: 231, baseType: !682, size: 16, offset: 8080)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1133, file: !1134, line: 232, baseType: !682, size: 16, offset: 8096)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1133, file: !1134, line: 234, baseType: !530, size: 64, offset: 8128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1133, file: !1134, line: 237, baseType: !665, size: 256, offset: 8192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1133, file: !1134, line: 243, baseType: !594, size: 320, offset: 8448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !240, file: !241, line: 1111, baseType: !1277, size: 64, offset: 15424)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1134, line: 20, size: 16640, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1278, file: !1134, line: 21, baseType: !67, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1278, file: !1134, line: 22, baseType: !187, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1278, file: !1134, line: 23, baseType: !833, size: 192, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1278, file: !1134, line: 24, baseType: !1284, size: 16384, offset: 256)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1285, size: 16384, elements: !1305)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1083, line: 51, size: 256, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1285, file: !1083, line: 52, baseType: !1288, size: 256)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1083, line: 37, size: 256, elements: !1289)
!1289 = !{!1290, !1297, !1298, !1304}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1288, file: !1083, line: 39, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1292, line: 83, baseType: !1293)
!1292 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1292, line: 82, baseType: !1295)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !91}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1288, file: !1083, line: 40, baseType: !181, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1288, file: !1083, line: 46, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1292, line: 86, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1292, line: 85, baseType: !1302)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1288, file: !1083, line: 48, baseType: !1148, size: 64, offset: 192)
!1305 = !{!1306}
!1306 = !DISubrange(count: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !240, file: !241, line: 1112, baseType: !1148, size: 64, offset: 15488)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !240, file: !241, line: 1113, baseType: !1148, size: 64, offset: 15552)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !240, file: !241, line: 1115, baseType: !1148, size: 64, offset: 15616)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !240, file: !241, line: 1116, baseType: !1144, size: 192, offset: 15680)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !240, file: !241, line: 1117, baseType: !181, size: 64, offset: 15872)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !240, file: !241, line: 1118, baseType: !1313, size: 64, offset: 15936)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 61, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !397, line: 72, baseType: !1251)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !240, file: !241, line: 1119, baseType: !7, size: 32, offset: 16000)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !240, file: !241, line: 1121, baseType: !170, size: 64, offset: 16064)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !240, file: !241, line: 1125, baseType: !1318, size: 64, offset: 16128)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !241, line: 43, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !240, file: !241, line: 1127, baseType: !911, size: 32, offset: 16192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !240, file: !241, line: 1128, baseType: !7, size: 32, offset: 16224)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !240, file: !241, line: 1130, baseType: !1323, size: 128, offset: 16256)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1324, line: 37, size: 128, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1323, file: !1324, line: 38, baseType: !91, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1323, file: !1324, line: 39, baseType: !87, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1323, file: !1324, line: 40, baseType: !1329, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1324, line: 24, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !240, file: !241, line: 1131, baseType: !1332, size: 256, offset: 16384)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1333, line: 12, size: 256, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1334 = !{!1335, !1336, !1337, !1338}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1332, file: !1333, line: 13, baseType: !145, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1332, file: !1333, line: 14, baseType: !181, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1332, file: !1333, line: 15, baseType: !181, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1332, file: !1333, line: 16, baseType: !116, size: 8, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !240, file: !241, line: 1134, baseType: !176, size: 64, offset: 16640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !240, file: !241, line: 1135, baseType: !176, size: 64, offset: 16704)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !240, file: !241, line: 1138, baseType: !67, size: 32, offset: 16768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !240, file: !241, line: 1141, baseType: !372, size: 32, offset: 16800)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !240, file: !241, line: 1143, baseType: !1344, size: 64, offset: 16832)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !241, line: 735, size: 64, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1344, file: !241, line: 736, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !240, file: !241, line: 1147, baseType: !413, size: 128, offset: 16896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !240, file: !241, line: 1149, baseType: !239, size: 64, offset: 17024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !240, file: !241, line: 1151, baseType: !1351, size: 64, offset: 17088)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !241, line: 1151, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !240, file: !241, line: 1188, baseType: !55, size: 64, offset: 17152)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !240, file: !241, line: 1191, baseType: !1355, size: 64, offset: 17216)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !241, line: 44, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !240, file: !241, line: 1194, baseType: !1358, size: 64, offset: 17280)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !241, line: 45, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !240, file: !241, line: 1197, baseType: !1361, size: 64, offset: 17344)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !241, line: 61, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !240, file: !241, line: 1199, baseType: !1364, size: 64, offset: 17408)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !241, line: 52, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !240, file: !241, line: 1202, baseType: !1367, size: 64, offset: 17472)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !241, line: 48, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !240, file: !241, line: 1205, baseType: !181, size: 64, offset: 17536)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !240, file: !241, line: 1206, baseType: !1371, size: 64, offset: 17600)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1083, line: 14, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1083, line: 12, size: 384, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !1083, line: 13, baseType: !1376, size: 384)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1373, file: !1083, line: 13, size: 384, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1376, file: !1083, line: 13, baseType: !91, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1376, file: !1083, line: 13, baseType: !91, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1376, file: !1083, line: 13, baseType: !91, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1376, file: !1083, line: 13, baseType: !1382, size: 256, offset: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1383, line: 37, size: 256, elements: !1384)
!1383 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1384 = !{!1385, !1390, !1403, !1409, !1419, !1446, !1451}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1382, file: !1383, line: 42, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1383, line: 39, size: 64, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1386, file: !1383, line: 40, baseType: !802, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1386, file: !1383, line: 41, baseType: !916, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1382, file: !1383, line: 50, baseType: !1391, size: 192)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1383, line: 45, size: 192, elements: !1392)
!1392 = !{!1393, !1395, !1396, !1402}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1391, file: !1383, line: 46, baseType: !1394, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !397, line: 95, baseType: !91)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1391, file: !1383, line: 47, baseType: !91, size: 32, offset: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1391, file: !1383, line: 48, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1383, line: 11, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1383, line: 8, size: 64, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1398, file: !1383, line: 9, baseType: !91, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1398, file: !1383, line: 10, baseType: !55, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1391, file: !1383, line: 49, baseType: !91, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1382, file: !1383, line: 57, baseType: !1404, size: 128)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1383, line: 53, size: 128, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1404, file: !1383, line: 54, baseType: !802, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1404, file: !1383, line: 55, baseType: !916, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1404, file: !1383, line: 56, baseType: !1397, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1382, file: !1383, line: 66, baseType: !1410, size: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1383, line: 60, size: 256, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1418}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1410, file: !1383, line: 61, baseType: !802, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1410, file: !1383, line: 62, baseType: !916, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1410, file: !1383, line: 63, baseType: !91, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1410, file: !1383, line: 64, baseType: !1416, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !397, line: 94, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !397, line: 15, baseType: !136)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1410, file: !1383, line: 65, baseType: !1416, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1382, file: !1383, line: 105, baseType: !1420, size: 256)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1383, line: 69, size: 256, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1420, file: !1383, line: 70, baseType: !55, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1383, line: 79, baseType: !1424, size: 192, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1383, line: 79, size: 192, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1435, !1440}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1424, file: !1383, line: 81, baseType: !91, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1424, file: !1383, line: 86, baseType: !682, size: 16)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1424, file: !1383, line: 92, baseType: !1429, size: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1383, line: 88, size: 192, elements: !1430)
!1430 = !{!1431, !1433, !1434}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1429, file: !1383, line: 89, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !391)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1429, file: !1383, line: 90, baseType: !55, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1429, file: !1383, line: 91, baseType: !55, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1424, file: !1383, line: 97, baseType: !1436, size: 96)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1383, line: 94, size: 96, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1436, file: !1383, line: 95, baseType: !1432, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1436, file: !1383, line: 96, baseType: !251, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1424, file: !1383, line: 103, baseType: !1441, size: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1383, line: 99, size: 128, elements: !1442)
!1442 = !{!1443, !1444, !1445}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1441, file: !1383, line: 100, baseType: !181, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1441, file: !1383, line: 101, baseType: !251, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1441, file: !1383, line: 102, baseType: !251, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1382, file: !1383, line: 111, baseType: !1447, size: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1383, line: 108, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1447, file: !1383, line: 109, baseType: !136, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1447, file: !1383, line: 110, baseType: !91, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1382, file: !1383, line: 118, baseType: !1452, size: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1383, line: 114, size: 128, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1452, file: !1383, line: 115, baseType: !55, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1452, file: !1383, line: 116, baseType: !91, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1452, file: !1383, line: 117, baseType: !7, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !240, file: !241, line: 1208, baseType: !1234, size: 448, offset: 17664)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !240, file: !241, line: 1215, baseType: !176, size: 64, offset: 18112)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !240, file: !241, line: 1217, baseType: !176, size: 64, offset: 18176)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !240, file: !241, line: 1219, baseType: !176, size: 64, offset: 18240)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !240, file: !241, line: 1223, baseType: !1462, size: 64, offset: 18304)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1463, line: 99, baseType: !1464)
!1463 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1463, line: 99, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1464, file: !1463, line: 99, baseType: !481, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !240, file: !241, line: 1225, baseType: !1207, size: 32, offset: 18368)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !240, file: !241, line: 1226, baseType: !91, size: 32, offset: 18400)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !240, file: !241, line: 1227, baseType: !91, size: 32, offset: 18432)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !240, file: !241, line: 1231, baseType: !1471, size: 64, offset: 18496)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !241, line: 1231, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !240, file: !241, line: 1233, baseType: !160, size: 128, offset: 18560)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !240, file: !241, line: 1240, baseType: !1475, size: 64, offset: 18688)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !241, line: 62, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !240, file: !241, line: 1242, baseType: !1478, size: 64, offset: 18752)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !241, line: 1242, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !240, file: !241, line: 1244, baseType: !160, size: 128, offset: 18816)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !240, file: !241, line: 1245, baseType: !1482, size: 64, offset: 18944)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !241, line: 51, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !240, file: !241, line: 1246, baseType: !665, size: 256, offset: 19008)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !240, file: !241, line: 1247, baseType: !7, size: 32, offset: 19264)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !240, file: !241, line: 1250, baseType: !1487, size: 64, offset: 19328)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !241, line: 57, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !240, file: !241, line: 1251, baseType: !665, size: 256, offset: 19392)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !240, file: !241, line: 1252, baseType: !160, size: 128, offset: 19648)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !240, file: !241, line: 1259, baseType: !1492, size: 64, offset: 19776)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !241, line: 54, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !240, file: !241, line: 1260, baseType: !682, size: 16, offset: 19840)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !240, file: !241, line: 1261, baseType: !682, size: 16, offset: 19856)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !240, file: !241, line: 1314, baseType: !1497, size: 64, offset: 19904)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1499, line: 62, size: 256, align: 256, elements: !1500)
!1499 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1498, file: !1499, line: 75, baseType: !251, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1498, file: !1499, line: 90, baseType: !251, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1498, file: !1499, line: 112, baseType: !177, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1499, line: 132, baseType: !251, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1498, file: !1499, line: 140, baseType: !251, size: 32, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1498, file: !1499, line: 149, baseType: !251, size: 32, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1498, file: !1499, line: 154, baseType: !1508, offset: 224)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, elements: !719)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !240, file: !241, line: 1315, baseType: !250, size: 32, offset: 19968)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !240, file: !241, line: 1316, baseType: !250, size: 32, offset: 20000)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !240, file: !241, line: 1321, baseType: !181, size: 64, offset: 20032)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !240, file: !241, line: 1325, baseType: !91, size: 32, offset: 20096)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !240, file: !241, line: 1326, baseType: !91, size: 32, offset: 20128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !240, file: !241, line: 1327, baseType: !91, size: 32, offset: 20160)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !240, file: !241, line: 1328, baseType: !91, size: 32, offset: 20192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !240, file: !241, line: 1329, baseType: !167, size: 128, align: 64, offset: 20224)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !240, file: !241, line: 1332, baseType: !1518, size: 128, offset: 20352)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1519, line: 51, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1520 = !{!1521, !1526, !1527}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1518, file: !1519, line: 60, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1523, line: 7, size: 64, elements: !1524)
!1523 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1522, file: !1523, line: 12, baseType: !478, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1518, file: !1519, line: 63, baseType: !116, size: 8, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1518, file: !1519, line: 70, baseType: !116, size: 8, offset: 72)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !240, file: !241, line: 1335, baseType: !1529, size: 64, offset: 20480)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !241, line: 59, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !240, file: !241, line: 1337, baseType: !1532, size: 128, offset: 20544)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1519, line: 39, size: 128, elements: !1533)
!1533 = !{!1534, !1597, !1598}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1532, file: !1519, line: 40, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !532, line: 74, size: 512, align: 128, elements: !1537)
!1537 = !{!1538, !1539, !1591, !1596}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1536, file: !532, line: 75, baseType: !181, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !532, line: 83, baseType: !1540, size: 320, offset: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !532, line: 83, size: 320, elements: !1541)
!1541 = !{!1542, !1565, !1579, !1583, !1590}
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !532, line: 84, baseType: !1543, size: 320)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !532, line: 84, size: 320, elements: !1544)
!1544 = !{!1545, !1556, !1559, !1564}
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !532, line: 90, baseType: !1546, size: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !532, line: 90, size: 128, elements: !1547)
!1547 = !{!1548, !1549, !1554, !1555}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1546, file: !532, line: 91, baseType: !160, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !532, line: 94, baseType: !1550, size: 128)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !532, line: 94, size: 128, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1550, file: !532, line: 96, baseType: !55, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1550, file: !532, line: 98, baseType: !7, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1546, file: !532, line: 102, baseType: !160, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1546, file: !532, line: 103, baseType: !160, size: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1543, file: !532, line: 106, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !532, line: 32, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !532, line: 107, baseType: !1560, size: 64, offset: 192)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !532, line: 107, size: 64, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1560, file: !532, line: 108, baseType: !181, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1560, file: !532, line: 109, baseType: !181, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1543, file: !532, line: 117, baseType: !181, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !532, line: 119, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !532, line: 119, size: 320, elements: !1567)
!1567 = !{!1568, !1569, !1572, !1573, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1566, file: !532, line: 124, baseType: !181, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1566, file: !532, line: 125, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !532, line: 125, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1566, file: !532, line: 126, baseType: !181, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1566, file: !532, line: 127, baseType: !181, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !532, line: 128, baseType: !1575, size: 64, offset: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !532, line: 128, size: 64, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1575, file: !532, line: 133, baseType: !181, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1575, file: !532, line: 138, baseType: !585, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !532, line: 141, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !532, line: 141, size: 64, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1580, file: !532, line: 142, baseType: !181, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !532, line: 144, baseType: !1584, size: 128)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !532, line: 144, size: 128, elements: !1585)
!1585 = !{!1586, !1589}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1584, file: !532, line: 146, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !532, line: 146, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1584, file: !532, line: 147, baseType: !55, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1540, file: !532, line: 161, baseType: !167, size: 128, align: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !532, line: 164, baseType: !1592, size: 32, offset: 384)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !532, line: 164, size: 32, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1592, file: !532, line: 169, baseType: !87, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1592, file: !532, line: 177, baseType: !7, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1536, file: !532, line: 181, baseType: !87, size: 32, offset: 416)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1532, file: !1519, line: 42, baseType: !251, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1532, file: !1519, line: 43, baseType: !251, size: 32, offset: 96)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !240, file: !241, line: 1340, baseType: !1600, size: 64, offset: 20672)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !241, line: 69, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !240, file: !241, line: 1351, baseType: !91, size: 32, offset: 20736)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !240, file: !241, line: 1352, baseType: !91, size: 32, offset: 20768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !240, file: !241, line: 1354, baseType: !181, size: 64, offset: 20800)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !240, file: !241, line: 1364, baseType: !176, size: 64, offset: 20864)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !240, file: !241, line: 1365, baseType: !176, size: 64, offset: 20928)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !240, file: !241, line: 1412, baseType: !181, size: 64, offset: 20992)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !240, file: !241, line: 1453, baseType: !1609, size: 64, offset: 21056)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !241, line: 1453, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !240, file: !241, line: 1457, baseType: !1612, size: 64, offset: 21120)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1614)
!1614 = !{!1615, !1616, !1635, !1638, !1639, !1672, !1682}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1613, file: !18, line: 62, baseType: !17, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !18, line: 64, baseType: !1617, size: 192, offset: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1613, file: !18, line: 64, size: 192, elements: !1618)
!1618 = !{!1619, !1630}
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !18, line: 65, baseType: !1620, size: 192)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !18, line: 65, size: 192, elements: !1621)
!1621 = !{!1622, !1629}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1620, file: !18, line: 66, baseType: !1623, size: 128)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1624, line: 50, size: 128, elements: !1625)
!1624 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1625 = !{!1626, !1627, !1628}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1623, file: !1624, line: 52, baseType: !181, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1623, file: !1624, line: 54, baseType: !7, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1623, file: !1624, line: 55, baseType: !7, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1620, file: !18, line: 67, baseType: !181, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !18, line: 70, baseType: !1631, size: 192)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !18, line: 70, size: 192, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1631, file: !18, line: 71, baseType: !167, size: 128, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1631, file: !18, line: 72, baseType: !181, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1613, file: !18, line: 76, baseType: !1636, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1613, file: !18, line: 77, baseType: !181, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1613, file: !18, line: 79, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1624, line: 25, size: 256, elements: !1642)
!1642 = !{!1643, !1649, !1653}
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1624, line: 26, baseType: !1644, size: 128)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !1624, line: 26, size: 128, elements: !1645)
!1645 = !{!1646, !1648}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1644, file: !1624, line: 27, baseType: !1647, size: 128)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !1102)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1644, file: !1624, line: 28, baseType: !1647, size: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1641, file: !1624, line: 31, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1624, line: 23, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1624, line: 33, baseType: !1654, size: 64, offset: 192)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !1624, line: 33, size: 64, elements: !1655)
!1655 = !{!1656, !1662, !1667}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1654, file: !1624, line: 38, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1624, line: 34, size: 64, elements: !1658)
!1658 = !{!1659, !1660, !1661}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1657, file: !1624, line: 35, baseType: !644, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1657, file: !1624, line: 36, baseType: !96, size: 8, offset: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1657, file: !1624, line: 37, baseType: !96, size: 8, offset: 40)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1654, file: !1624, line: 42, baseType: !1663, size: 16)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1624, line: 39, size: 16, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1663, file: !1624, line: 40, baseType: !96, size: 8)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1663, file: !1624, line: 41, baseType: !96, size: 8, offset: 8)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1654, file: !1624, line: 46, baseType: !1668, size: 16)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1624, line: 43, size: 16, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1668, file: !1624, line: 44, baseType: !96, size: 8)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1668, file: !1624, line: 45, baseType: !96, size: 8, offset: 8)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1613, file: !18, line: 81, baseType: !1673, size: 64, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1674, file: !18, line: 86, baseType: !1636, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1674, file: !18, line: 87, baseType: !181, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1674, file: !18, line: 88, baseType: !181, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1674, file: !18, line: 89, baseType: !181, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1674, file: !18, line: 90, baseType: !116, size: 8, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1674, file: !18, line: 92, baseType: !1673, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1613, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !240, file: !241, line: 1463, baseType: !1684, offset: 21184)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !241, line: 739, elements: !552)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !240, file: !241, line: 1470, baseType: !167, size: 128, align: 64, offset: 21184)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !240, file: !241, line: 1471, baseType: !187, size: 32, offset: 21312)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !240, file: !241, line: 1472, baseType: !91, size: 32, offset: 21344)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !240, file: !241, line: 1474, baseType: !239, size: 64, offset: 21376)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !240, file: !241, line: 1475, baseType: !1690, size: 320, offset: 21440)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1691, line: 11, size: 320, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1692 = !{!1693, !1694, !1695, !1700}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1690, file: !1691, line: 16, baseType: !826, size: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1690, file: !1691, line: 17, baseType: !181, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1690, file: !1691, line: 18, baseType: !1696, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !1691, line: 19, baseType: !250, size: 32, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !240, file: !241, line: 1478, baseType: !1702, size: 64, offset: 21760)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !241, line: 1478, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !240, file: !241, line: 1482, baseType: !187, size: 32, offset: 21824)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !240, file: !241, line: 1489, baseType: !55, size: 64, offset: 21888)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !240, file: !241, line: 1504, baseType: !55, size: 64, offset: 21952)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !240, file: !241, line: 1505, baseType: !177, size: 64, offset: 22016)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !240, file: !241, line: 1506, baseType: !176, size: 64, offset: 22080)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !240, file: !241, line: 1507, baseType: !177, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !240, file: !241, line: 1508, baseType: !177, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !240, file: !241, line: 1509, baseType: !177, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !240, file: !241, line: 1510, baseType: !167, size: 128, align: 64, offset: 22208)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !240, file: !241, line: 1511, baseType: !91, size: 32, offset: 22336)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !240, file: !241, line: 1515, baseType: !1715, size: 64, offset: 22400)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !218, line: 56, size: 64, elements: !1716)
!1716 = !{!1717}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1715, file: !218, line: 57, baseType: !221, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !240, file: !241, line: 1518, baseType: !1715, size: 64, offset: 22464)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !240, file: !241, line: 1528, baseType: !167, size: 128, align: 64, offset: 22528)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !240, file: !241, line: 1552, baseType: !1721, size: 35328, offset: 23040)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1722, line: 430, size: 35328, elements: !1723)
!1722 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1723 = !{!1724, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1753, !1754, !1755, !1756, !1757, !1758, !1761, !1762, !1763, !1764}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1721, file: !1722, line: 432, baseType: !1725, size: 192)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1726, size: 192, elements: !893)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1727, line: 16, size: 64, elements: !1728)
!1727 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1726, file: !1727, line: 17, baseType: !106, size: 16)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1726, file: !1727, line: 18, baseType: !106, size: 16, offset: 16)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1726, file: !1727, line: 19, baseType: !106, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1726, file: !1727, line: 19, baseType: !106, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1726, file: !1727, line: 19, baseType: !106, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1726, file: !1727, line: 19, baseType: !106, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1726, file: !1727, line: 19, baseType: !106, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1726, file: !1727, line: 20, baseType: !106, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1726, file: !1727, line: 20, baseType: !106, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1726, file: !1727, line: 20, baseType: !106, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1726, file: !1727, line: 20, baseType: !106, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1726, file: !1727, line: 20, baseType: !106, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1726, file: !1727, line: 20, baseType: !106, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1721, file: !1722, line: 436, baseType: !181, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1721, file: !1722, line: 440, baseType: !108, size: 16, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1721, file: !1722, line: 441, baseType: !108, size: 16, offset: 272)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1721, file: !1722, line: 442, baseType: !108, size: 16, offset: 288)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1721, file: !1722, line: 443, baseType: !108, size: 16, offset: 304)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1721, file: !1722, line: 447, baseType: !181, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1721, file: !1722, line: 448, baseType: !181, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1721, file: !1722, line: 459, baseType: !1750, size: 256, offset: 448)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 256, elements: !646)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1722, line: 428, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1721, file: !1722, line: 461, baseType: !181, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1721, file: !1722, line: 463, baseType: !181, size: 64, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1721, file: !1722, line: 465, baseType: !181, size: 64, offset: 832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1721, file: !1722, line: 466, baseType: !181, size: 64, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1721, file: !1722, line: 467, baseType: !181, size: 64, offset: 960)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1721, file: !1722, line: 473, baseType: !1759, size: 64, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1722, line: 10, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1721, file: !1722, line: 480, baseType: !181, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1721, file: !1722, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1721, file: !1722, line: 491, baseType: !250, size: 32, offset: 1184)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1721, file: !1722, line: 501, baseType: !1765, size: 33792, offset: 1536)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1766, line: 448, size: 33792, elements: !1767)
!1766 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1767 = !{!1768, !1769, !1770, !1934, !1935, !1941, !1942}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1765, file: !1766, line: 461, baseType: !7, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1765, file: !1766, line: 468, baseType: !181, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1765, file: !1766, line: 476, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1766, line: 356, size: 33280, align: 512, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1772, file: !1766, line: 358, baseType: !7, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1772, file: !1766, line: 361, baseType: !7, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1772, file: !1766, line: 364, baseType: !176, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1772, file: !1766, line: 367, baseType: !176, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1772, file: !1766, line: 370, baseType: !176, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1772, file: !1766, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1772, file: !1766, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1772, file: !1766, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1772, file: !1766, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1772, file: !1766, line: 397, baseType: !1784, size: 32768, offset: 512)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1766, line: 348, size: 32768, elements: !1785)
!1785 = !{!1786, !1801, !1840, !1917, !1930}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1784, file: !1766, line: 349, baseType: !1787, size: 896)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1766, line: 12, size: 896, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1800}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1787, file: !1766, line: 13, baseType: !250, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1787, file: !1766, line: 14, baseType: !250, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1787, file: !1766, line: 15, baseType: !250, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1787, file: !1766, line: 16, baseType: !250, size: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1787, file: !1766, line: 17, baseType: !250, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1787, file: !1766, line: 18, baseType: !250, size: 32, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1787, file: !1766, line: 19, baseType: !250, size: 32, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1787, file: !1766, line: 22, baseType: !1797, size: 640, offset: 224)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 640, elements: !1798)
!1798 = !{!1799}
!1799 = !DISubrange(count: 20)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1787, file: !1766, line: 25, baseType: !250, size: 32, offset: 864)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1784, file: !1766, line: 350, baseType: !1802, size: 4096, align: 128)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1766, line: 34, size: 4096, align: 128, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1823, !1824, !1825, !1829, !1831, !1835}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1802, file: !1766, line: 35, baseType: !106, size: 16)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1802, file: !1766, line: 36, baseType: !106, size: 16, offset: 16)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1802, file: !1766, line: 37, baseType: !106, size: 16, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1802, file: !1766, line: 38, baseType: !106, size: 16, offset: 48)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1766, line: 39, baseType: !1809, size: 128, offset: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1766, line: 39, size: 128, elements: !1810)
!1810 = !{!1811, !1816}
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1766, line: 40, baseType: !1812, size: 128)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1809, file: !1766, line: 40, size: 128, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1812, file: !1766, line: 41, baseType: !176, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1812, file: !1766, line: 42, baseType: !176, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1766, line: 44, baseType: !1817, size: 128)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1809, file: !1766, line: 44, size: 128, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1817, file: !1766, line: 45, baseType: !250, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1817, file: !1766, line: 46, baseType: !250, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1817, file: !1766, line: 47, baseType: !250, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1817, file: !1766, line: 48, baseType: !250, size: 32, offset: 96)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1802, file: !1766, line: 51, baseType: !250, size: 32, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1802, file: !1766, line: 52, baseType: !250, size: 32, offset: 224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1802, file: !1766, line: 55, baseType: !1826, size: 1024, offset: 256)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1024, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1802, file: !1766, line: 58, baseType: !1830, size: 2048, offset: 1280)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 2048, elements: !1305)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1802, file: !1766, line: 60, baseType: !1832, size: 384, offset: 3328)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 384, elements: !1833)
!1833 = !{!1834}
!1834 = !DISubrange(count: 12)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1766, line: 62, baseType: !1836, size: 384, offset: 3712)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1766, line: 62, size: 384, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1836, file: !1766, line: 63, baseType: !1832, size: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1836, file: !1766, line: 64, baseType: !1832, size: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1784, file: !1766, line: 351, baseType: !1841, size: 1088)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1766, line: 79, size: 1088, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1916}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1841, file: !1766, line: 80, baseType: !250, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1841, file: !1766, line: 81, baseType: !250, size: 32, offset: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1841, file: !1766, line: 82, baseType: !250, size: 32, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1841, file: !1766, line: 83, baseType: !250, size: 32, offset: 96)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1841, file: !1766, line: 84, baseType: !250, size: 32, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1841, file: !1766, line: 85, baseType: !250, size: 32, offset: 160)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1841, file: !1766, line: 86, baseType: !250, size: 32, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1841, file: !1766, line: 88, baseType: !1797, size: 640, offset: 224)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1841, file: !1766, line: 89, baseType: !96, size: 8, offset: 864)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1841, file: !1766, line: 90, baseType: !96, size: 8, offset: 872)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1841, file: !1766, line: 91, baseType: !96, size: 8, offset: 880)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1841, file: !1766, line: 92, baseType: !96, size: 8, offset: 888)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1841, file: !1766, line: 93, baseType: !96, size: 8, offset: 896)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1841, file: !1766, line: 94, baseType: !96, size: 8, offset: 904)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1841, file: !1766, line: 95, baseType: !1858, size: 64, offset: 960)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1860, line: 11, size: 128, elements: !1861)
!1860 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1859, file: !1860, line: 12, baseType: !136, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1859, file: !1860, line: 13, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1866, line: 103, size: 1344, elements: !1867)
!1866 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1896, !1897, !1898}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1865, file: !1866, line: 109, baseType: !181, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1865, file: !1866, line: 110, baseType: !181, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1865, file: !1866, line: 111, baseType: !181, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1865, file: !1866, line: 112, baseType: !181, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1865, file: !1866, line: 113, baseType: !181, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1865, file: !1866, line: 114, baseType: !181, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1865, file: !1866, line: 117, baseType: !181, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1865, file: !1866, line: 118, baseType: !181, size: 64, offset: 448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1865, file: !1866, line: 119, baseType: !181, size: 64, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1865, file: !1866, line: 120, baseType: !181, size: 64, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1865, file: !1866, line: 121, baseType: !181, size: 64, offset: 640)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1865, file: !1866, line: 122, baseType: !181, size: 64, offset: 704)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1865, file: !1866, line: 123, baseType: !181, size: 64, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1865, file: !1866, line: 124, baseType: !181, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1865, file: !1866, line: 125, baseType: !181, size: 64, offset: 896)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1865, file: !1866, line: 139, baseType: !181, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1865, file: !1866, line: 142, baseType: !181, size: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1866, line: 144, baseType: !1886, size: 64, offset: 1088)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !1866, line: 144, size: 64, elements: !1887)
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1886, file: !1866, line: 146, baseType: !106, size: 16)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1886, file: !1866, line: 148, baseType: !176, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1886, file: !1866, line: 150, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1866, line: 59, size: 64, elements: !1892)
!1892 = !{!1893, !1894, !1895}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1891, file: !1866, line: 61, baseType: !176, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1891, file: !1866, line: 63, baseType: !176, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1891, file: !1866, line: 65, baseType: !176, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1865, file: !1866, line: 153, baseType: !181, size: 64, offset: 1152)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1865, file: !1866, line: 154, baseType: !181, size: 64, offset: 1216)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1865, file: !1866, line: 156, baseType: !1899, size: 64, offset: 1280)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !1866, line: 156, size: 64, elements: !1900)
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1899, file: !1866, line: 158, baseType: !106, size: 16)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1899, file: !1866, line: 160, baseType: !176, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1899, file: !1866, line: 162, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1866, line: 69, size: 64, elements: !1905)
!1905 = !{!1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1904, file: !1866, line: 71, baseType: !176, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1904, file: !1866, line: 73, baseType: !176, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1904, file: !1866, line: 75, baseType: !176, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1904, file: !1866, line: 77, baseType: !176, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1904, file: !1866, line: 80, baseType: !176, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1904, file: !1866, line: 83, baseType: !176, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1904, file: !1866, line: 86, baseType: !176, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1904, file: !1866, line: 88, baseType: !176, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1904, file: !1866, line: 93, baseType: !176, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1904, file: !1866, line: 100, baseType: !176, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1841, file: !1766, line: 96, baseType: !250, size: 32, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1784, file: !1766, line: 352, baseType: !1918, size: 4608, align: 512)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1766, line: 333, size: 4608, align: 512, elements: !1919)
!1919 = !{!1920, !1921, !1928}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1918, file: !1766, line: 334, baseType: !1802, size: 4096, align: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1918, file: !1766, line: 335, baseType: !1922, size: 512, offset: 4096)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1766, line: 312, size: 512, elements: !1923)
!1923 = !{!1924, !1925, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1922, file: !1766, line: 313, baseType: !176, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1922, file: !1766, line: 314, baseType: !176, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1922, file: !1766, line: 315, baseType: !1927, size: 384, offset: 128)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 384, elements: !994)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1918, file: !1766, line: 336, baseType: !1929, offset: 4608)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !719)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1784, file: !1766, line: 353, baseType: !1931, size: 32768)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32768, elements: !1932)
!1932 = !{!1933}
!1933 = !DISubrange(count: 4096)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1765, file: !1766, line: 484, baseType: !1771, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1765, file: !1766, line: 491, baseType: !1936, size: 128, offset: 256)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1766, line: 404, size: 128, elements: !1937)
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1936, file: !1766, line: 424, baseType: !176, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1936, file: !1766, line: 432, baseType: !7, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1936, file: !1766, line: 440, baseType: !7, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1765, file: !1766, line: 498, baseType: !1936, size: 128, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1765, file: !1766, line: 508, baseType: !1772, size: 33280, align: 512, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !59, file: !60, line: 49, baseType: !67, size: 32, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !57, line: 42, baseType: !181)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1949 = !{!0, !1950, !1952, !1954, !1959}
!1950 = !DIGlobalVariableExpression(var: !1951, expr: !DIExpression())
!1951 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_unwrap_next219", scope: !2, file: !3, line: 61, type: !55, isLocal: true, isDefinition: true)
!1952 = !DIGlobalVariableExpression(var: !1953, expr: !DIExpression())
!1953 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___dma_fence_unwrap_merge220", scope: !2, file: !3, line: 172, type: !55, isLocal: true, isDefinition: true)
!1954 = !DIGlobalVariableExpression(var: !1955, expr: !DIExpression())
!1955 = distinct !DIGlobalVariable(scope: null, file: !38, line: 596, type: !1956, isLocal: true, isDefinition: true)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 208, elements: !1957)
!1957 = !{!1958}
!1958 = !DISubrange(count: 26)
!1959 = !DIGlobalVariableExpression(var: !1960, expr: !DIExpression())
!1960 = distinct !DIGlobalVariable(scope: null, file: !45, line: 480, type: !1961, isLocal: true, isDefinition: true)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 168, elements: !1962)
!1962 = !{!1963}
!1963 = !DISubrange(count: 21)
!1964 = !{i32 7, !"Dwarf Version", i32 5}
!1965 = !{i32 2, !"Debug Info Version", i32 3}
!1966 = !{i32 1, !"wchar_size", i32 2}
!1967 = !{i32 8, !"cf-protection-branch", i32 1}
!1968 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1969 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1970 = !{i32 1, !"Code Model", i32 2}
!1971 = !{i32 1, !"override-stack-alignment", i32 8}
!1972 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1973 = distinct !DISubprogram(name: "dma_fence_unwrap_first", scope: !3, file: !3, line: 34, type: !1974, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1983)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!125, !125, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_unwrap", file: !1978, line: 18, size: 192, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/dma-fence-unwrap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "733283d63a464d6be1d3b78a63ef7d10")
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1977, file: !1978, line: 22, baseType: !125, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !1977, file: !1978, line: 26, baseType: !125, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1977, file: !1978, line: 30, baseType: !7, size: 32, offset: 128)
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "head", arg: 1, scope: !1973, file: !3, line: 34, type: !125)
!1985 = !DILocalVariable(name: "cursor", arg: 2, scope: !1973, file: !3, line: 35, type: !1976)
!1986 = !DILocation(line: 34, column: 60, scope: !1973)
!1987 = !DILocation(line: 35, column: 32, scope: !1973)
!1988 = !DILocation(line: 37, column: 32, scope: !1973)
!1989 = !DILocation(line: 37, column: 18, scope: !1973)
!1990 = !DILocation(line: 37, column: 2, scope: !1973)
!1991 = !DILocation(line: 37, column: 10, scope: !1973)
!1992 = !DILocation(line: 37, column: 16, scope: !1973)
!1993 = !DILocation(line: 38, column: 34, scope: !1973)
!1994 = !DILocation(line: 38, column: 9, scope: !1973)
!1995 = !DILocation(line: 38, column: 2, scope: !1973)
!1996 = distinct !DISubprogram(name: "dma_fence_get", scope: !38, file: !38, line: 305, type: !1997, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!125, !125}
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "fence", arg: 1, scope: !1996, file: !38, line: 305, type: !125)
!2001 = !DILocation(line: 305, column: 65, scope: !1996)
!2002 = !DILocation(line: 307, column: 6, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !38, line: 307, column: 6)
!2004 = !DILocation(line: 307, column: 6, scope: !1996)
!2005 = !DILocation(line: 308, column: 13, scope: !2003)
!2006 = !DILocation(line: 308, column: 20, scope: !2003)
!2007 = !DILocation(line: 308, column: 3, scope: !2003)
!2008 = !DILocation(line: 309, column: 9, scope: !1996)
!2009 = !DILocation(line: 309, column: 2, scope: !1996)
!2010 = distinct !DISubprogram(name: "__dma_fence_unwrap_array", scope: !3, file: !3, line: 19, type: !2011, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!125, !1976}
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "cursor", arg: 1, scope: !2010, file: !3, line: 19, type: !1976)
!2015 = !DILocation(line: 19, column: 51, scope: !2010)
!2016 = !DILocation(line: 21, column: 44, scope: !2010)
!2017 = !DILocation(line: 21, column: 52, scope: !2010)
!2018 = !DILocation(line: 21, column: 18, scope: !2010)
!2019 = !DILocation(line: 21, column: 2, scope: !2010)
!2020 = !DILocation(line: 21, column: 10, scope: !2010)
!2021 = !DILocation(line: 21, column: 16, scope: !2010)
!2022 = !DILocation(line: 22, column: 2, scope: !2010)
!2023 = !DILocation(line: 22, column: 10, scope: !2010)
!2024 = !DILocation(line: 22, column: 16, scope: !2010)
!2025 = !DILocation(line: 23, column: 31, scope: !2010)
!2026 = !DILocation(line: 23, column: 39, scope: !2010)
!2027 = !DILocation(line: 23, column: 9, scope: !2010)
!2028 = !DILocation(line: 23, column: 2, scope: !2010)
!2029 = distinct !DISubprogram(name: "dma_fence_unwrap_next", scope: !3, file: !3, line: 49, type: !2011, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "cursor", arg: 1, scope: !2029, file: !3, line: 49, type: !1976)
!2032 = !DILocalVariable(name: "tmp", scope: !2029, file: !3, line: 51, type: !125)
!2033 = !DILocation(line: 49, column: 66, scope: !2029)
!2034 = !DILocation(line: 51, column: 2, scope: !2029)
!2035 = !DILocation(line: 51, column: 20, scope: !2029)
!2036 = !DILocation(line: 53, column: 4, scope: !2029)
!2037 = !DILocation(line: 53, column: 12, scope: !2029)
!2038 = !DILocation(line: 53, column: 2, scope: !2029)
!2039 = !DILocation(line: 54, column: 29, scope: !2029)
!2040 = !DILocation(line: 54, column: 37, scope: !2029)
!2041 = !DILocation(line: 54, column: 44, scope: !2029)
!2042 = !DILocation(line: 54, column: 52, scope: !2029)
!2043 = !DILocation(line: 54, column: 8, scope: !2029)
!2044 = !DILocation(line: 54, column: 6, scope: !2029)
!2045 = !DILocation(line: 55, column: 6, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 55, column: 6)
!2047 = !DILocation(line: 55, column: 6, scope: !2029)
!2048 = !DILocation(line: 56, column: 10, scope: !2046)
!2049 = !DILocation(line: 56, column: 3, scope: !2046)
!2050 = !DILocation(line: 58, column: 39, scope: !2029)
!2051 = !DILocation(line: 58, column: 47, scope: !2029)
!2052 = !DILocation(line: 58, column: 18, scope: !2029)
!2053 = !DILocation(line: 58, column: 2, scope: !2029)
!2054 = !DILocation(line: 58, column: 10, scope: !2029)
!2055 = !DILocation(line: 58, column: 16, scope: !2029)
!2056 = !DILocation(line: 59, column: 34, scope: !2029)
!2057 = !DILocation(line: 59, column: 9, scope: !2029)
!2058 = !DILocation(line: 59, column: 2, scope: !2029)
!2059 = !DILocation(line: 60, column: 1, scope: !2029)
!2060 = !DISubprogram(name: "dma_fence_array_next", scope: !2061, file: !2061, line: 87, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2061 = !DIFile(filename: "./include/linux/dma-fence-array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c96d724a719bca3fee59864ce015357f")
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!125, !125, !7}
!2064 = !DISubprogram(name: "dma_fence_chain_walk", scope: !60, file: !60, line: 122, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2065 = distinct !DISubprogram(name: "__dma_fence_unwrap_merge", scope: !3, file: !3, line: 83, type: !2066, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!125, !7, !1948, !1976}
!2068 = !{!2069, !2070, !2071, !2072, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2097, !2106, !2107}
!2069 = !DILocalVariable(name: "num_fences", arg: 1, scope: !2065, file: !3, line: 83, type: !7)
!2070 = !DILocalVariable(name: "fences", arg: 2, scope: !2065, file: !3, line: 84, type: !1948)
!2071 = !DILocalVariable(name: "iter", arg: 3, scope: !2065, file: !3, line: 85, type: !1976)
!2072 = !DILocalVariable(name: "result", scope: !2065, file: !3, line: 87, type: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_array", file: !2061, line: 37, size: 960, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2074, file: !2061, line: 38, baseType: !63, size: 512)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2074, file: !2061, line: 40, baseType: !67, size: 32, offset: 512)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !2074, file: !2061, line: 41, baseType: !7, size: 32, offset: 544)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_pending", scope: !2074, file: !2061, line: 42, baseType: !87, size: 32, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !2074, file: !2061, line: 43, baseType: !1948, size: 64, offset: 640)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2074, file: !2061, line: 45, baseType: !209, size: 256, offset: 704)
!2082 = !DILocalVariable(name: "tmp", scope: !2065, file: !3, line: 88, type: !125)
!2083 = !DILocalVariable(name: "array", scope: !2065, file: !3, line: 88, type: !1948)
!2084 = !DILocalVariable(name: "timestamp", scope: !2065, file: !3, line: 89, type: !151)
!2085 = !DILocalVariable(name: "i", scope: !2065, file: !3, line: 90, type: !91)
!2086 = !DILocalVariable(name: "j", scope: !2065, file: !3, line: 90, type: !91)
!2087 = !DILocalVariable(name: "count", scope: !2065, file: !3, line: 90, type: !91)
!2088 = !DILocalVariable(name: "t", scope: !2089, file: !3, line: 99, type: !151)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 98, column: 11)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 96, column: 8)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 95, column: 55)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 95, column: 3)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 95, column: 3)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 94, column: 35)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 94, column: 2)
!2096 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 94, column: 2)
!2097 = !DILocalVariable(name: "t", scope: !2098, file: !3, line: 124, type: !151)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 123, column: 11)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 121, column: 8)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 120, column: 55)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 120, column: 3)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 120, column: 3)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 119, column: 35)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 119, column: 2)
!2105 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 119, column: 2)
!2106 = !DILabel(scope: !2065, name: "return_fastpath", file: !3, line: 162)
!2107 = !DILabel(scope: !2065, name: "return_tmp", file: !3, line: 168)
!2108 = !DILocation(line: 83, column: 57, scope: !2065)
!2109 = !DILocation(line: 84, column: 28, scope: !2065)
!2110 = !DILocation(line: 85, column: 34, scope: !2065)
!2111 = !DILocation(line: 87, column: 2, scope: !2065)
!2112 = !DILocation(line: 87, column: 26, scope: !2065)
!2113 = !DILocation(line: 88, column: 2, scope: !2065)
!2114 = !DILocation(line: 88, column: 20, scope: !2065)
!2115 = !DILocation(line: 88, column: 27, scope: !2065)
!2116 = !DILocation(line: 89, column: 2, scope: !2065)
!2117 = !DILocation(line: 89, column: 10, scope: !2065)
!2118 = !DILocation(line: 90, column: 2, scope: !2065)
!2119 = !DILocation(line: 90, column: 6, scope: !2065)
!2120 = !DILocation(line: 90, column: 9, scope: !2065)
!2121 = !DILocation(line: 90, column: 12, scope: !2065)
!2122 = !DILocation(line: 92, column: 8, scope: !2065)
!2123 = !DILocation(line: 93, column: 14, scope: !2065)
!2124 = !DILocation(line: 93, column: 12, scope: !2065)
!2125 = !DILocation(line: 94, column: 9, scope: !2096)
!2126 = !DILocation(line: 94, column: 7, scope: !2096)
!2127 = !DILocation(line: 94, column: 14, scope: !2095)
!2128 = !DILocation(line: 94, column: 18, scope: !2095)
!2129 = !DILocation(line: 94, column: 16, scope: !2095)
!2130 = !DILocation(line: 94, column: 2, scope: !2096)
!2131 = !DILocation(line: 95, column: 3, scope: !2093)
!2132 = !DILocation(line: 95, column: 3, scope: !2092)
!2133 = !DILocation(line: 96, column: 31, scope: !2090)
!2134 = !DILocation(line: 96, column: 9, scope: !2090)
!2135 = !DILocation(line: 96, column: 8, scope: !2091)
!2136 = !DILocation(line: 97, column: 5, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 96, column: 37)
!2138 = !DILocation(line: 98, column: 4, scope: !2137)
!2139 = !DILocation(line: 99, column: 5, scope: !2089)
!2140 = !DILocation(line: 99, column: 13, scope: !2089)
!2141 = !DILocation(line: 99, column: 37, scope: !2089)
!2142 = !DILocation(line: 99, column: 17, scope: !2089)
!2143 = !DILocation(line: 101, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 101, column: 9)
!2145 = !DILocation(line: 101, column: 24, scope: !2144)
!2146 = !DILocation(line: 101, column: 9, scope: !2144)
!2147 = !DILocation(line: 101, column: 9, scope: !2089)
!2148 = !DILocation(line: 102, column: 18, scope: !2144)
!2149 = !DILocation(line: 102, column: 16, scope: !2144)
!2150 = !DILocation(line: 102, column: 6, scope: !2144)
!2151 = !DILocation(line: 103, column: 4, scope: !2090)
!2152 = !DILocation(line: 104, column: 3, scope: !2091)
!2153 = distinct !{!2153, !2131, !2154, !2155, !2156}
!2154 = !DILocation(line: 104, column: 3, scope: !2093)
!2155 = !{!"llvm.loop.mustprogress"}
!2156 = !{!"llvm.loop.unroll.disable"}
!2157 = !DILocation(line: 105, column: 2, scope: !2094)
!2158 = !DILocation(line: 94, column: 30, scope: !2095)
!2159 = !DILocation(line: 94, column: 2, scope: !2095)
!2160 = distinct !{!2160, !2130, !2161, !2155, !2156}
!2161 = !DILocation(line: 105, column: 2, scope: !2096)
!2162 = !DILocation(line: 111, column: 6, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 111, column: 6)
!2164 = !DILocation(line: 111, column: 12, scope: !2163)
!2165 = !DILocation(line: 111, column: 6, scope: !2065)
!2166 = !DILocation(line: 112, column: 42, scope: !2163)
!2167 = !DILocation(line: 112, column: 10, scope: !2163)
!2168 = !DILocation(line: 112, column: 3, scope: !2163)
!2169 = !DILocation(line: 114, column: 24, scope: !2065)
!2170 = !DILocation(line: 114, column: 10, scope: !2065)
!2171 = !DILocation(line: 114, column: 8, scope: !2065)
!2172 = !DILocation(line: 115, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 115, column: 6)
!2174 = !DILocation(line: 115, column: 6, scope: !2065)
!2175 = !DILocation(line: 116, column: 3, scope: !2173)
!2176 = !DILocation(line: 118, column: 8, scope: !2065)
!2177 = !DILocation(line: 119, column: 9, scope: !2105)
!2178 = !DILocation(line: 119, column: 7, scope: !2105)
!2179 = !DILocation(line: 119, column: 14, scope: !2104)
!2180 = !DILocation(line: 119, column: 18, scope: !2104)
!2181 = !DILocation(line: 119, column: 16, scope: !2104)
!2182 = !DILocation(line: 119, column: 2, scope: !2105)
!2183 = !DILocation(line: 120, column: 3, scope: !2102)
!2184 = !DILocation(line: 120, column: 3, scope: !2101)
!2185 = !DILocation(line: 121, column: 31, scope: !2099)
!2186 = !DILocation(line: 121, column: 9, scope: !2099)
!2187 = !DILocation(line: 121, column: 8, scope: !2100)
!2188 = !DILocation(line: 122, column: 36, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 121, column: 37)
!2190 = !DILocation(line: 122, column: 22, scope: !2189)
!2191 = !DILocation(line: 122, column: 5, scope: !2189)
!2192 = !DILocation(line: 122, column: 16, scope: !2189)
!2193 = !DILocation(line: 122, column: 20, scope: !2189)
!2194 = !DILocation(line: 123, column: 4, scope: !2189)
!2195 = !DILocation(line: 124, column: 5, scope: !2098)
!2196 = !DILocation(line: 124, column: 13, scope: !2098)
!2197 = !DILocation(line: 124, column: 37, scope: !2098)
!2198 = !DILocation(line: 124, column: 17, scope: !2098)
!2199 = !DILocation(line: 126, column: 21, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 126, column: 9)
!2201 = !DILocation(line: 126, column: 24, scope: !2200)
!2202 = !DILocation(line: 126, column: 9, scope: !2200)
!2203 = !DILocation(line: 126, column: 9, scope: !2098)
!2204 = !DILocation(line: 127, column: 18, scope: !2200)
!2205 = !DILocation(line: 127, column: 16, scope: !2200)
!2206 = !DILocation(line: 127, column: 6, scope: !2200)
!2207 = !DILocation(line: 128, column: 4, scope: !2099)
!2208 = !DILocation(line: 129, column: 3, scope: !2100)
!2209 = distinct !{!2209, !2183, !2210, !2155, !2156}
!2210 = !DILocation(line: 129, column: 3, scope: !2102)
!2211 = !DILocation(line: 130, column: 2, scope: !2103)
!2212 = !DILocation(line: 119, column: 30, scope: !2104)
!2213 = !DILocation(line: 119, column: 2, scope: !2104)
!2214 = distinct !{!2214, !2182, !2215, !2155, !2156}
!2215 = !DILocation(line: 130, column: 2, scope: !2105)
!2216 = !DILocation(line: 132, column: 6, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 132, column: 6)
!2218 = !DILocation(line: 132, column: 12, scope: !2217)
!2219 = !DILocation(line: 132, column: 17, scope: !2217)
!2220 = !DILocation(line: 132, column: 20, scope: !2217)
!2221 = !DILocation(line: 132, column: 26, scope: !2217)
!2222 = !DILocation(line: 132, column: 6, scope: !2065)
!2223 = !DILocation(line: 133, column: 3, scope: !2217)
!2224 = !DILocation(line: 135, column: 7, scope: !2065)
!2225 = !DILocation(line: 135, column: 14, scope: !2065)
!2226 = !DILocation(line: 135, column: 2, scope: !2065)
!2227 = !DILocation(line: 140, column: 4, scope: !2065)
!2228 = !DILocation(line: 141, column: 9, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 141, column: 2)
!2230 = !DILocation(line: 141, column: 7, scope: !2229)
!2231 = !DILocation(line: 141, column: 14, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 141, column: 2)
!2233 = !DILocation(line: 141, column: 18, scope: !2232)
!2234 = !DILocation(line: 141, column: 16, scope: !2232)
!2235 = !DILocation(line: 141, column: 2, scope: !2229)
!2236 = !DILocation(line: 142, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 142, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 141, column: 30)
!2239 = !DILocation(line: 142, column: 13, scope: !2237)
!2240 = !DILocation(line: 142, column: 17, scope: !2237)
!2241 = !DILocation(line: 142, column: 28, scope: !2237)
!2242 = !DILocation(line: 142, column: 34, scope: !2237)
!2243 = !DILocation(line: 142, column: 38, scope: !2237)
!2244 = !DILocation(line: 142, column: 25, scope: !2237)
!2245 = !DILocation(line: 142, column: 7, scope: !2238)
!2246 = !DILocation(line: 143, column: 18, scope: !2237)
!2247 = !DILocation(line: 143, column: 24, scope: !2237)
!2248 = !DILocation(line: 143, column: 4, scope: !2237)
!2249 = !DILocation(line: 145, column: 17, scope: !2237)
!2250 = !DILocation(line: 145, column: 23, scope: !2237)
!2251 = !DILocation(line: 145, column: 4, scope: !2237)
!2252 = !DILocation(line: 145, column: 10, scope: !2237)
!2253 = !DILocation(line: 145, column: 15, scope: !2237)
!2254 = !DILocation(line: 146, column: 2, scope: !2238)
!2255 = !DILocation(line: 141, column: 26, scope: !2232)
!2256 = !DILocation(line: 141, column: 2, scope: !2232)
!2257 = distinct !{!2257, !2235, !2258, !2155, !2156}
!2258 = !DILocation(line: 146, column: 2, scope: !2229)
!2259 = !DILocation(line: 147, column: 10, scope: !2065)
!2260 = !DILocation(line: 147, column: 8, scope: !2065)
!2261 = !DILocation(line: 149, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 149, column: 6)
!2263 = !DILocation(line: 149, column: 12, scope: !2262)
!2264 = !DILocation(line: 149, column: 6, scope: !2065)
!2265 = !DILocation(line: 150, column: 35, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 149, column: 17)
!2267 = !DILocation(line: 150, column: 42, scope: !2266)
!2268 = !DILocation(line: 151, column: 7, scope: !2266)
!2269 = !DILocation(line: 150, column: 12, scope: !2266)
!2270 = !DILocation(line: 150, column: 10, scope: !2266)
!2271 = !DILocation(line: 153, column: 8, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 153, column: 7)
!2273 = !DILocation(line: 153, column: 7, scope: !2266)
!2274 = !DILocation(line: 154, column: 11, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 154, column: 4)
!2276 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 153, column: 16)
!2277 = !DILocation(line: 154, column: 9, scope: !2275)
!2278 = !DILocation(line: 154, column: 16, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 154, column: 4)
!2280 = !DILocation(line: 154, column: 20, scope: !2279)
!2281 = !DILocation(line: 154, column: 18, scope: !2279)
!2282 = !DILocation(line: 154, column: 4, scope: !2275)
!2283 = !DILocation(line: 155, column: 19, scope: !2279)
!2284 = !DILocation(line: 155, column: 25, scope: !2279)
!2285 = !DILocation(line: 155, column: 5, scope: !2279)
!2286 = !DILocation(line: 154, column: 28, scope: !2279)
!2287 = !DILocation(line: 154, column: 4, scope: !2279)
!2288 = distinct !{!2288, !2282, !2289, !2155, !2156}
!2289 = !DILocation(line: 155, column: 27, scope: !2275)
!2290 = !DILocation(line: 156, column: 8, scope: !2276)
!2291 = !DILocation(line: 157, column: 4, scope: !2276)
!2292 = !DILocation(line: 159, column: 11, scope: !2266)
!2293 = !DILocation(line: 159, column: 19, scope: !2266)
!2294 = !DILocation(line: 159, column: 3, scope: !2266)
!2295 = !DILocation(line: 149, column: 14, scope: !2262)
!2296 = !DILocation(line: 162, column: 1, scope: !2065)
!2297 = !DILocation(line: 163, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 163, column: 6)
!2299 = !DILocation(line: 163, column: 12, scope: !2298)
!2300 = !DILocation(line: 163, column: 6, scope: !2065)
!2301 = !DILocation(line: 164, column: 41, scope: !2298)
!2302 = !DILocation(line: 164, column: 9, scope: !2298)
!2303 = !DILocation(line: 164, column: 7, scope: !2298)
!2304 = !DILocation(line: 164, column: 3, scope: !2298)
!2305 = !DILocation(line: 166, column: 9, scope: !2298)
!2306 = !DILocation(line: 166, column: 7, scope: !2298)
!2307 = !DILocation(line: 163, column: 15, scope: !2298)
!2308 = !DILocation(line: 168, column: 1, scope: !2065)
!2309 = !DILocation(line: 169, column: 8, scope: !2065)
!2310 = !DILocation(line: 169, column: 2, scope: !2065)
!2311 = !DILocation(line: 170, column: 9, scope: !2065)
!2312 = !DILocation(line: 170, column: 2, scope: !2065)
!2313 = !DILocation(line: 171, column: 1, scope: !2065)
!2314 = distinct !DISubprogram(name: "ns_to_ktime", scope: !152, file: !152, line: 222, type: !2315, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!151, !176}
!2317 = !{!2318}
!2318 = !DILocalVariable(name: "ns", arg: 1, scope: !2314, file: !152, line: 222, type: !176)
!2319 = !DILocation(line: 222, column: 39, scope: !2314)
!2320 = !DILocation(line: 224, column: 9, scope: !2314)
!2321 = !DILocation(line: 224, column: 2, scope: !2314)
!2322 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !38, file: !38, line: 449, type: !129, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "fence", arg: 1, scope: !2322, file: !38, line: 449, type: !125)
!2325 = !DILocation(line: 449, column: 41, scope: !2322)
!2326 = !DILocation(line: 451, column: 6, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !38, line: 451, column: 6)
!2328 = !DILocation(line: 451, column: 6, scope: !2322)
!2329 = !DILocation(line: 452, column: 3, scope: !2327)
!2330 = !DILocation(line: 454, column: 6, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2322, file: !38, line: 454, column: 6)
!2332 = !DILocation(line: 454, column: 13, scope: !2331)
!2333 = !DILocation(line: 454, column: 18, scope: !2331)
!2334 = !DILocation(line: 454, column: 27, scope: !2331)
!2335 = !DILocation(line: 454, column: 30, scope: !2331)
!2336 = !DILocation(line: 454, column: 37, scope: !2331)
!2337 = !DILocation(line: 454, column: 42, scope: !2331)
!2338 = !DILocation(line: 454, column: 51, scope: !2331)
!2339 = !DILocation(line: 454, column: 6, scope: !2322)
!2340 = !DILocation(line: 455, column: 20, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2331, file: !38, line: 454, column: 59)
!2342 = !DILocation(line: 455, column: 3, scope: !2341)
!2343 = !DILocation(line: 456, column: 3, scope: !2341)
!2344 = !DILocation(line: 459, column: 2, scope: !2322)
!2345 = !DILocation(line: 460, column: 1, scope: !2322)
!2346 = distinct !DISubprogram(name: "dma_fence_timestamp", scope: !38, file: !38, line: 594, type: !2347, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!151, !125}
!2349 = !{!2350, !2351, !2354}
!2350 = !DILocalVariable(name: "fence", arg: 1, scope: !2346, file: !38, line: 594, type: !125)
!2351 = !DILocalVariable(name: "__ret_warn_on", scope: !2352, file: !38, line: 596, type: !91)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !38, line: 596, column: 6)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !38, line: 596, column: 6)
!2354 = !DILocalVariable(name: "__flags", scope: !2355, file: !38, line: 596, type: !91)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !38, line: 596, column: 6)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !38, line: 596, column: 6)
!2357 = !DILocation(line: 594, column: 61, scope: !2346)
!2358 = !DILocation(line: 596, column: 6, scope: !2352)
!2359 = !DILocation(line: 596, column: 6, scope: !2356)
!2360 = !DILocation(line: 596, column: 6, scope: !2355)
!2361 = !DILocation(line: 596, column: 6, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2355, file: !38, line: 596, column: 6)
!2363 = !DILocation(line: 596, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2355, file: !38, line: 596, column: 6)
!2365 = !{i64 2150834751, i64 2150834780, i64 2150834826, i64 2150834884, i64 2150834938, i64 2150834992, i64 2150835047, i64 2150835078, i64 2150835386, i64 2150835392, i64 2150835439, i64 2150835462, i64 2150835488}
!2366 = !DILocation(line: 596, column: 6, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2355, file: !38, line: 596, column: 6)
!2368 = !DILocation(line: 596, column: 6, scope: !2353)
!2369 = !DILocation(line: 596, column: 6, scope: !2346)
!2370 = !DILocation(line: 597, column: 10, scope: !2353)
!2371 = !DILocation(line: 597, column: 3, scope: !2353)
!2372 = !DILocation(line: 599, column: 2, scope: !2346)
!2373 = !DILocation(line: 599, column: 10, scope: !2346)
!2374 = !DILocation(line: 599, column: 9, scope: !2346)
!2375 = !DILocation(line: 600, column: 3, scope: !2346)
!2376 = distinct !{!2376, !2372, !2377, !2155, !2156}
!2377 = !DILocation(line: 600, column: 13, scope: !2346)
!2378 = !DILocation(line: 602, column: 9, scope: !2346)
!2379 = !DILocation(line: 602, column: 16, scope: !2346)
!2380 = !DILocation(line: 602, column: 2, scope: !2346)
!2381 = !DILocation(line: 603, column: 1, scope: !2346)
!2382 = distinct !DISubprogram(name: "ktime_after", scope: !152, file: !152, line: 111, type: !2383, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2386)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!116, !2385, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2386 = !{!2387, !2388}
!2387 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2382, file: !152, line: 111, type: !2385)
!2388 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2382, file: !152, line: 111, type: !2385)
!2389 = !DILocation(line: 111, column: 46, scope: !2382)
!2390 = !DILocation(line: 111, column: 66, scope: !2382)
!2391 = !DILocation(line: 113, column: 23, scope: !2382)
!2392 = !DILocation(line: 113, column: 29, scope: !2382)
!2393 = !DILocation(line: 113, column: 9, scope: !2382)
!2394 = !DILocation(line: 113, column: 35, scope: !2382)
!2395 = !DILocation(line: 113, column: 2, scope: !2382)
!2396 = !DISubprogram(name: "dma_fence_allocate_private_stub", scope: !38, file: !38, line: 643, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!125, !151}
!2399 = distinct !DISubprogram(name: "kmalloc_array", scope: !45, file: !45, line: 629, type: !2400, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!55, !1313, !1313, !56}
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "n", arg: 1, scope: !2399, file: !45, line: 629, type: !1313)
!2404 = !DILocalVariable(name: "size", arg: 2, scope: !2399, file: !45, line: 629, type: !1313)
!2405 = !DILocalVariable(name: "flags", arg: 3, scope: !2399, file: !45, line: 629, type: !56)
!2406 = !DILocalVariable(name: "bytes", scope: !2399, file: !45, line: 631, type: !1313)
!2407 = !DILocation(line: 629, column: 61, scope: !2399)
!2408 = !DILocation(line: 629, column: 71, scope: !2399)
!2409 = !DILocation(line: 629, column: 83, scope: !2399)
!2410 = !DILocation(line: 631, column: 2, scope: !2399)
!2411 = !DILocation(line: 631, column: 9, scope: !2399)
!2412 = !DILocation(line: 633, column: 6, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2399, file: !45, line: 633, column: 6)
!2414 = !DILocation(line: 633, column: 6, scope: !2399)
!2415 = !DILocation(line: 634, column: 3, scope: !2413)
!2416 = !DILocation(line: 635, column: 27, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2399, file: !45, line: 635, column: 6)
!2418 = !DILocation(line: 635, column: 6, scope: !2417)
!2419 = !DILocation(line: 635, column: 30, scope: !2417)
!2420 = !DILocation(line: 635, column: 54, scope: !2417)
!2421 = !DILocation(line: 635, column: 33, scope: !2417)
!2422 = !DILocation(line: 635, column: 6, scope: !2399)
!2423 = !DILocation(line: 636, column: 18, scope: !2417)
!2424 = !DILocation(line: 636, column: 25, scope: !2417)
!2425 = !DILocation(line: 636, column: 10, scope: !2417)
!2426 = !DILocation(line: 636, column: 3, scope: !2417)
!2427 = !DILocation(line: 637, column: 19, scope: !2399)
!2428 = !DILocation(line: 637, column: 26, scope: !2399)
!2429 = !DILocation(line: 637, column: 9, scope: !2399)
!2430 = !DILocation(line: 637, column: 2, scope: !2399)
!2431 = !DILocation(line: 638, column: 1, scope: !2399)
!2432 = !DISubprogram(name: "sort", scope: !2433, file: !2433, line: 12, type: !2434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2433 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !55, !1313, !1313, !2436, !2442}
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !57, line: 245, baseType: !2437)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!91, !2440, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !57, line: 242, baseType: !2443)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !55, !55, !91}
!2446 = distinct !DISubprogram(name: "fence_cmp", scope: !3, file: !3, line: 64, type: !2438, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2447)
!2447 = !{!2448, !2449, !2450, !2451}
!2448 = !DILocalVariable(name: "_a", arg: 1, scope: !2446, file: !3, line: 64, type: !2440)
!2449 = !DILocalVariable(name: "_b", arg: 2, scope: !2446, file: !3, line: 64, type: !2440)
!2450 = !DILocalVariable(name: "a", scope: !2446, file: !3, line: 66, type: !125)
!2451 = !DILocalVariable(name: "b", scope: !2446, file: !3, line: 67, type: !125)
!2452 = !DILocation(line: 64, column: 34, scope: !2446)
!2453 = !DILocation(line: 64, column: 50, scope: !2446)
!2454 = !DILocation(line: 66, column: 2, scope: !2446)
!2455 = !DILocation(line: 66, column: 20, scope: !2446)
!2456 = !DILocation(line: 66, column: 46, scope: !2446)
!2457 = !DILocation(line: 66, column: 24, scope: !2446)
!2458 = !DILocation(line: 67, column: 2, scope: !2446)
!2459 = !DILocation(line: 67, column: 20, scope: !2446)
!2460 = !DILocation(line: 67, column: 46, scope: !2446)
!2461 = !DILocation(line: 67, column: 24, scope: !2446)
!2462 = !DILocation(line: 69, column: 6, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 69, column: 6)
!2464 = !DILocation(line: 69, column: 9, scope: !2463)
!2465 = !DILocation(line: 69, column: 19, scope: !2463)
!2466 = !DILocation(line: 69, column: 22, scope: !2463)
!2467 = !DILocation(line: 69, column: 17, scope: !2463)
!2468 = !DILocation(line: 69, column: 6, scope: !2446)
!2469 = !DILocation(line: 70, column: 3, scope: !2463)
!2470 = !DILocation(line: 71, column: 11, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 71, column: 11)
!2472 = !DILocation(line: 71, column: 14, scope: !2471)
!2473 = !DILocation(line: 71, column: 24, scope: !2471)
!2474 = !DILocation(line: 71, column: 27, scope: !2471)
!2475 = !DILocation(line: 71, column: 22, scope: !2471)
!2476 = !DILocation(line: 71, column: 11, scope: !2463)
!2477 = !DILocation(line: 72, column: 3, scope: !2471)
!2478 = !DILocation(line: 74, column: 25, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 74, column: 6)
!2480 = !DILocation(line: 74, column: 28, scope: !2479)
!2481 = !DILocation(line: 74, column: 6, scope: !2479)
!2482 = !DILocation(line: 74, column: 6, scope: !2446)
!2483 = !DILocation(line: 75, column: 3, scope: !2479)
!2484 = !DILocation(line: 76, column: 30, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 76, column: 11)
!2486 = !DILocation(line: 76, column: 33, scope: !2485)
!2487 = !DILocation(line: 76, column: 11, scope: !2485)
!2488 = !DILocation(line: 76, column: 11, scope: !2479)
!2489 = !DILocation(line: 77, column: 3, scope: !2485)
!2490 = !DILocation(line: 79, column: 2, scope: !2446)
!2491 = !DILocation(line: 80, column: 1, scope: !2446)
!2492 = distinct !DISubprogram(name: "dma_fence_put", scope: !38, file: !38, line: 293, type: !139, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2493)
!2493 = !{!2494}
!2494 = !DILocalVariable(name: "fence", arg: 1, scope: !2492, file: !38, line: 293, type: !125)
!2495 = !DILocation(line: 293, column: 52, scope: !2492)
!2496 = !DILocation(line: 295, column: 6, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !38, line: 295, column: 6)
!2498 = !DILocation(line: 295, column: 6, scope: !2492)
!2499 = !DILocation(line: 296, column: 13, scope: !2497)
!2500 = !DILocation(line: 296, column: 20, scope: !2497)
!2501 = !DILocation(line: 296, column: 3, scope: !2497)
!2502 = !DILocation(line: 297, column: 1, scope: !2492)
!2503 = !DISubprogram(name: "dma_fence_array_create", scope: !2061, file: !2061, line: 79, type: !2504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2073, !91, !1948, !176, !7, !116}
!2506 = !DISubprogram(name: "dma_fence_context_alloc", scope: !38, file: !38, line: 644, type: !2507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!176, !7}
!2509 = !DISubprogram(name: "kfree", scope: !45, file: !45, line: 227, type: !2510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !2440}
!2512 = distinct !DISubprogram(name: "kref_get", scope: !184, file: !184, line: 43, type: !2513, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "kref", arg: 1, scope: !2512, file: !184, line: 43, type: !2515)
!2518 = !DILocation(line: 43, column: 42, scope: !2512)
!2519 = !DILocation(line: 45, column: 16, scope: !2512)
!2520 = !DILocation(line: 45, column: 22, scope: !2512)
!2521 = !DILocation(line: 45, column: 2, scope: !2512)
!2522 = !DILocation(line: 46, column: 1, scope: !2512)
!2523 = distinct !DISubprogram(name: "refcount_inc", scope: !30, file: !30, line: 265, type: !2524, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2527)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2527 = !{!2528}
!2528 = !DILocalVariable(name: "r", arg: 1, scope: !2523, file: !30, line: 265, type: !2526)
!2529 = !DILocation(line: 265, column: 45, scope: !2523)
!2530 = !DILocation(line: 267, column: 17, scope: !2523)
!2531 = !DILocation(line: 267, column: 2, scope: !2523)
!2532 = !DILocation(line: 268, column: 1, scope: !2523)
!2533 = distinct !DISubprogram(name: "__refcount_inc", scope: !30, file: !30, line: 248, type: !2534, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2526, !865}
!2536 = !{!2537, !2538}
!2537 = !DILocalVariable(name: "r", arg: 1, scope: !2533, file: !30, line: 248, type: !2526)
!2538 = !DILocalVariable(name: "oldp", arg: 2, scope: !2533, file: !30, line: 248, type: !865)
!2539 = !DILocation(line: 248, column: 47, scope: !2533)
!2540 = !DILocation(line: 248, column: 55, scope: !2533)
!2541 = !DILocation(line: 250, column: 20, scope: !2533)
!2542 = !DILocation(line: 250, column: 23, scope: !2533)
!2543 = !DILocation(line: 250, column: 2, scope: !2533)
!2544 = !DILocation(line: 251, column: 1, scope: !2533)
!2545 = distinct !DISubprogram(name: "__refcount_add", scope: !30, file: !30, line: 191, type: !2546, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !91, !2526, !865}
!2548 = !{!2549, !2550, !2551, !2552}
!2549 = !DILocalVariable(name: "i", arg: 1, scope: !2545, file: !30, line: 191, type: !91)
!2550 = !DILocalVariable(name: "r", arg: 2, scope: !2545, file: !30, line: 191, type: !2526)
!2551 = !DILocalVariable(name: "oldp", arg: 3, scope: !2545, file: !30, line: 191, type: !865)
!2552 = !DILocalVariable(name: "old", scope: !2545, file: !30, line: 193, type: !91)
!2553 = !DILocation(line: 191, column: 39, scope: !2545)
!2554 = !DILocation(line: 191, column: 54, scope: !2545)
!2555 = !DILocation(line: 191, column: 62, scope: !2545)
!2556 = !DILocation(line: 193, column: 2, scope: !2545)
!2557 = !DILocation(line: 193, column: 6, scope: !2545)
!2558 = !DILocation(line: 193, column: 37, scope: !2545)
!2559 = !DILocation(line: 193, column: 41, scope: !2545)
!2560 = !DILocation(line: 193, column: 44, scope: !2545)
!2561 = !DILocation(line: 193, column: 12, scope: !2545)
!2562 = !DILocation(line: 195, column: 6, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2545, file: !30, line: 195, column: 6)
!2564 = !DILocation(line: 195, column: 6, scope: !2545)
!2565 = !DILocation(line: 196, column: 11, scope: !2563)
!2566 = !DILocation(line: 196, column: 4, scope: !2563)
!2567 = !DILocation(line: 196, column: 9, scope: !2563)
!2568 = !DILocation(line: 196, column: 3, scope: !2563)
!2569 = !DILocation(line: 198, column: 6, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2545, file: !30, line: 198, column: 6)
!2571 = !DILocation(line: 198, column: 6, scope: !2545)
!2572 = !DILocation(line: 199, column: 26, scope: !2570)
!2573 = !DILocation(line: 199, column: 3, scope: !2570)
!2574 = !DILocation(line: 200, column: 11, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !30, line: 200, column: 11)
!2576 = !DILocation(line: 200, column: 11, scope: !2570)
!2577 = !DILocation(line: 201, column: 26, scope: !2575)
!2578 = !DILocation(line: 201, column: 3, scope: !2575)
!2579 = !DILocation(line: 202, column: 1, scope: !2545)
!2580 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2581, file: !2581, line: 250, type: !2582, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2585)
!2581 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!91, !91, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "i", arg: 1, scope: !2580, file: !2581, line: 250, type: !91)
!2587 = !DILocalVariable(name: "v", arg: 2, scope: !2580, file: !2581, line: 250, type: !2584)
!2588 = !DILocation(line: 250, column: 30, scope: !2580)
!2589 = !DILocation(line: 250, column: 43, scope: !2580)
!2590 = !DILocation(line: 252, column: 31, scope: !2580)
!2591 = !DILocation(line: 252, column: 2, scope: !2580)
!2592 = !DILocation(line: 253, column: 38, scope: !2580)
!2593 = !DILocation(line: 253, column: 41, scope: !2580)
!2594 = !DILocation(line: 253, column: 9, scope: !2580)
!2595 = !DILocation(line: 253, column: 2, scope: !2580)
!2596 = !DISubprogram(name: "refcount_warn_saturate", scope: !30, file: !30, line: 127, type: !2597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2526, !29}
!2599 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2600, file: !2600, line: 94, type: !2601, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2606)
!2600 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !2603, !1313}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "v", arg: 1, scope: !2599, file: !2600, line: 94, type: !2603)
!2608 = !DILocalVariable(name: "size", arg: 2, scope: !2599, file: !2600, line: 94, type: !1313)
!2609 = !DILocation(line: 94, column: 79, scope: !2599)
!2610 = !DILocation(line: 94, column: 89, scope: !2599)
!2611 = !DILocation(line: 96, column: 20, scope: !2599)
!2612 = !DILocation(line: 96, column: 23, scope: !2599)
!2613 = !DILocation(line: 96, column: 2, scope: !2599)
!2614 = !DILocation(line: 97, column: 2, scope: !2599)
!2615 = !DILocation(line: 98, column: 1, scope: !2599)
!2616 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2617, file: !2617, line: 731, type: !2582, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2618)
!2617 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2618 = !{!2619, !2620}
!2619 = !DILocalVariable(name: "i", arg: 1, scope: !2616, file: !2617, line: 731, type: !91)
!2620 = !DILocalVariable(name: "v", arg: 2, scope: !2616, file: !2617, line: 731, type: !2584)
!2621 = !DILocation(line: 731, column: 34, scope: !2616)
!2622 = !DILocation(line: 731, column: 47, scope: !2616)
!2623 = !DILocation(line: 736, column: 31, scope: !2616)
!2624 = !DILocation(line: 736, column: 34, scope: !2616)
!2625 = !DILocation(line: 736, column: 9, scope: !2616)
!2626 = !DILocation(line: 736, column: 2, scope: !2616)
!2627 = distinct !DISubprogram(name: "kasan_check_write", scope: !2628, file: !2628, line: 44, type: !2629, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2631)
!2628 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!116, !2603, !7}
!2631 = !{!2632, !2633}
!2632 = !DILocalVariable(name: "p", arg: 1, scope: !2627, file: !2628, line: 44, type: !2603)
!2633 = !DILocalVariable(name: "size", arg: 2, scope: !2627, file: !2628, line: 44, type: !7)
!2634 = !DILocation(line: 44, column: 59, scope: !2627)
!2635 = !DILocation(line: 44, column: 75, scope: !2627)
!2636 = !DILocation(line: 46, column: 2, scope: !2627)
!2637 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2638, file: !2638, line: 229, type: !2639, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2638 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2603, !1313, !91}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "ptr", arg: 1, scope: !2637, file: !2638, line: 229, type: !2603)
!2643 = !DILocalVariable(name: "size", arg: 2, scope: !2637, file: !2638, line: 229, type: !1313)
!2644 = !DILocalVariable(name: "type", arg: 3, scope: !2637, file: !2638, line: 230, type: !91)
!2645 = !DILocation(line: 229, column: 60, scope: !2637)
!2646 = !DILocation(line: 229, column: 72, scope: !2637)
!2647 = !DILocation(line: 230, column: 15, scope: !2637)
!2648 = !DILocation(line: 230, column: 23, scope: !2637)
!2649 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2650, file: !2650, line: 95, type: !2582, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2651)
!2650 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2651 = !{!2652, !2653, !2654}
!2652 = !DILocalVariable(name: "i", arg: 1, scope: !2649, file: !2650, line: 95, type: !91)
!2653 = !DILocalVariable(name: "v", arg: 2, scope: !2649, file: !2650, line: 95, type: !2584)
!2654 = !DILocalVariable(name: "__ret", scope: !2655, file: !2650, line: 97, type: !91)
!2655 = distinct !DILexicalBlock(scope: !2649, file: !2650, line: 97, column: 9)
!2656 = !DILocation(line: 95, column: 54, scope: !2649)
!2657 = !DILocation(line: 95, column: 67, scope: !2649)
!2658 = !DILocation(line: 97, column: 9, scope: !2655)
!2659 = !{i64 2148881696, i64 2148881735, i64 2148881756, i64 2148881793, i64 2148881816, i64 2148881825}
!2660 = !DILocation(line: 97, column: 9, scope: !2649)
!2661 = !DILocation(line: 97, column: 2, scope: !2649)
!2662 = distinct !DISubprogram(name: "dma_fence_chain_contained", scope: !60, file: !60, line: 77, type: !1997, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2663)
!2663 = !{!2664, !2665}
!2664 = !DILocalVariable(name: "fence", arg: 1, scope: !2662, file: !60, line: 77, type: !125)
!2665 = !DILocalVariable(name: "chain", scope: !2662, file: !60, line: 79, type: !58)
!2666 = !DILocation(line: 77, column: 45, scope: !2662)
!2667 = !DILocation(line: 79, column: 2, scope: !2662)
!2668 = !DILocation(line: 79, column: 26, scope: !2662)
!2669 = !DILocation(line: 79, column: 53, scope: !2662)
!2670 = !DILocation(line: 79, column: 34, scope: !2662)
!2671 = !DILocation(line: 81, column: 9, scope: !2662)
!2672 = !DILocation(line: 81, column: 17, scope: !2662)
!2673 = !DILocation(line: 81, column: 24, scope: !2662)
!2674 = !DILocation(line: 81, column: 32, scope: !2662)
!2675 = !DILocation(line: 82, column: 1, scope: !2662)
!2676 = !DILocation(line: 81, column: 2, scope: !2662)
!2677 = !DISubprogram(name: "dma_fence_array_first", scope: !2061, file: !2061, line: 86, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2678 = distinct !DISubprogram(name: "to_dma_fence_chain", scope: !60, file: !60, line: 61, type: !2679, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!58, !125}
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "fence", arg: 1, scope: !2678, file: !60, line: 61, type: !125)
!2683 = !DILocalVariable(name: "__mptr", scope: !2684, file: !60, line: 66, type: !55)
!2684 = distinct !DILexicalBlock(scope: !2678, file: !60, line: 66, column: 9)
!2685 = !DILocation(line: 61, column: 38, scope: !2678)
!2686 = !DILocation(line: 63, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2678, file: !60, line: 63, column: 6)
!2688 = !DILocation(line: 63, column: 13, scope: !2687)
!2689 = !DILocation(line: 63, column: 36, scope: !2687)
!2690 = !DILocation(line: 63, column: 17, scope: !2687)
!2691 = !DILocation(line: 63, column: 6, scope: !2678)
!2692 = !DILocation(line: 64, column: 3, scope: !2687)
!2693 = !DILocation(line: 66, column: 9, scope: !2684)
!2694 = !DILocation(line: 66, column: 9, scope: !2678)
!2695 = !DILocation(line: 66, column: 2, scope: !2678)
!2696 = !DILocation(line: 67, column: 1, scope: !2678)
!2697 = distinct !DISubprogram(name: "dma_fence_is_chain", scope: !38, file: !38, line: 666, type: !129, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2698)
!2698 = !{!2699}
!2699 = !DILocalVariable(name: "fence", arg: 1, scope: !2697, file: !38, line: 666, type: !125)
!2700 = !DILocation(line: 666, column: 57, scope: !2697)
!2701 = !DILocation(line: 668, column: 9, scope: !2697)
!2702 = !DILocation(line: 668, column: 16, scope: !2697)
!2703 = !DILocation(line: 668, column: 20, scope: !2697)
!2704 = !DILocation(line: 668, column: 2, scope: !2697)
!2705 = distinct !DISubprogram(name: "const_test_bit", scope: !2706, file: !2706, line: 166, type: !2707, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2712)
!2706 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!116, !181, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!2712 = !{!2713, !2714, !2715, !2716, !2717}
!2713 = !DILocalVariable(name: "nr", arg: 1, scope: !2705, file: !2706, line: 166, type: !181)
!2714 = !DILocalVariable(name: "addr", arg: 2, scope: !2705, file: !2706, line: 166, type: !2709)
!2715 = !DILocalVariable(name: "p", scope: !2705, file: !2706, line: 168, type: !1945)
!2716 = !DILocalVariable(name: "mask", scope: !2705, file: !2706, line: 169, type: !181)
!2717 = !DILocalVariable(name: "val", scope: !2705, file: !2706, line: 170, type: !181)
!2718 = !DILocation(line: 166, column: 30, scope: !2705)
!2719 = !DILocation(line: 166, column: 64, scope: !2705)
!2720 = !DILocation(line: 168, column: 2, scope: !2705)
!2721 = !DILocation(line: 168, column: 23, scope: !2705)
!2722 = !DILocation(line: 168, column: 50, scope: !2705)
!2723 = !DILocation(line: 168, column: 57, scope: !2705)
!2724 = !DILocation(line: 168, column: 55, scope: !2705)
!2725 = !DILocation(line: 169, column: 2, scope: !2705)
!2726 = !DILocation(line: 169, column: 16, scope: !2705)
!2727 = !DILocation(line: 169, column: 23, scope: !2705)
!2728 = !DILocation(line: 170, column: 2, scope: !2705)
!2729 = !DILocation(line: 170, column: 16, scope: !2705)
!2730 = !DILocation(line: 170, column: 23, scope: !2705)
!2731 = !DILocation(line: 170, column: 22, scope: !2705)
!2732 = !DILocation(line: 172, column: 12, scope: !2705)
!2733 = !DILocation(line: 172, column: 18, scope: !2705)
!2734 = !DILocation(line: 172, column: 16, scope: !2705)
!2735 = !DILocation(line: 172, column: 10, scope: !2705)
!2736 = !DILocation(line: 172, column: 9, scope: !2705)
!2737 = !DILocation(line: 173, column: 1, scope: !2705)
!2738 = !DILocation(line: 172, column: 2, scope: !2705)
!2739 = distinct !DISubprogram(name: "_test_bit", scope: !2740, file: !2740, line: 139, type: !2707, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2741)
!2740 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "nr", arg: 1, scope: !2739, file: !2740, line: 139, type: !181)
!2743 = !DILocalVariable(name: "addr", arg: 2, scope: !2739, file: !2740, line: 139, type: !2709)
!2744 = !DILocation(line: 139, column: 25, scope: !2739)
!2745 = !DILocation(line: 139, column: 59, scope: !2739)
!2746 = !DILocation(line: 141, column: 25, scope: !2739)
!2747 = !DILocation(line: 141, column: 32, scope: !2739)
!2748 = !DILocation(line: 141, column: 30, scope: !2739)
!2749 = !DILocation(line: 141, column: 2, scope: !2739)
!2750 = !DILocation(line: 142, column: 23, scope: !2739)
!2751 = !DILocation(line: 142, column: 27, scope: !2739)
!2752 = !DILocation(line: 142, column: 9, scope: !2739)
!2753 = !DILocation(line: 142, column: 2, scope: !2739)
!2754 = !DISubprogram(name: "dma_fence_signal", scope: !38, file: !38, line: 390, type: !2755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!91, !125}
!2757 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2600, file: !2600, line: 66, type: !2601, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2758)
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "v", arg: 1, scope: !2757, file: !2600, line: 66, type: !2603)
!2760 = !DILocalVariable(name: "size", arg: 2, scope: !2757, file: !2600, line: 66, type: !1313)
!2761 = !DILocation(line: 66, column: 73, scope: !2757)
!2762 = !DILocation(line: 66, column: 83, scope: !2757)
!2763 = !DILocation(line: 68, column: 19, scope: !2757)
!2764 = !DILocation(line: 68, column: 22, scope: !2757)
!2765 = !DILocation(line: 68, column: 2, scope: !2757)
!2766 = !DILocation(line: 69, column: 2, scope: !2757)
!2767 = !DILocation(line: 70, column: 1, scope: !2757)
!2768 = distinct !DISubprogram(name: "arch_test_bit", scope: !2769, file: !2769, line: 237, type: !2707, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2770)
!2769 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2770 = !{!2771, !2772}
!2771 = !DILocalVariable(name: "nr", arg: 1, scope: !2768, file: !2769, line: 237, type: !181)
!2772 = !DILocalVariable(name: "addr", arg: 2, scope: !2768, file: !2769, line: 237, type: !2709)
!2773 = !DILocation(line: 237, column: 29, scope: !2768)
!2774 = !DILocation(line: 237, column: 63, scope: !2768)
!2775 = !DILocation(line: 239, column: 30, scope: !2768)
!2776 = !DILocation(line: 239, column: 9, scope: !2768)
!2777 = !DILocation(line: 239, column: 54, scope: !2768)
!2778 = !DILocation(line: 239, column: 58, scope: !2768)
!2779 = !DILocation(line: 239, column: 36, scope: !2768)
!2780 = !DILocation(line: 240, column: 26, scope: !2768)
!2781 = !DILocation(line: 240, column: 30, scope: !2768)
!2782 = !DILocation(line: 240, column: 8, scope: !2768)
!2783 = !DILocation(line: 239, column: 2, scope: !2768)
!2784 = distinct !DISubprogram(name: "kasan_check_read", scope: !2628, file: !2628, line: 40, type: !2629, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "p", arg: 1, scope: !2784, file: !2628, line: 40, type: !2603)
!2787 = !DILocalVariable(name: "size", arg: 2, scope: !2784, file: !2628, line: 40, type: !7)
!2788 = !DILocation(line: 40, column: 58, scope: !2784)
!2789 = !DILocation(line: 40, column: 74, scope: !2784)
!2790 = !DILocation(line: 42, column: 2, scope: !2784)
!2791 = distinct !DISubprogram(name: "constant_test_bit", scope: !2769, file: !2769, line: 204, type: !2792, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!116, !136, !2709}
!2794 = !{!2795, !2796}
!2795 = !DILocalVariable(name: "nr", arg: 1, scope: !2791, file: !2769, line: 204, type: !136)
!2796 = !DILocalVariable(name: "addr", arg: 2, scope: !2791, file: !2769, line: 204, type: !2709)
!2797 = !DILocation(line: 204, column: 52, scope: !2791)
!2798 = !DILocation(line: 204, column: 86, scope: !2791)
!2799 = !DILocation(line: 206, column: 19, scope: !2791)
!2800 = !DILocation(line: 206, column: 22, scope: !2791)
!2801 = !DILocation(line: 206, column: 15, scope: !2791)
!2802 = !DILocation(line: 207, column: 4, scope: !2791)
!2803 = !DILocation(line: 207, column: 9, scope: !2791)
!2804 = !DILocation(line: 207, column: 12, scope: !2791)
!2805 = !DILocation(line: 206, column: 44, scope: !2791)
!2806 = !DILocation(line: 207, column: 37, scope: !2791)
!2807 = !DILocation(line: 206, column: 2, scope: !2791)
!2808 = distinct !DISubprogram(name: "variable_test_bit", scope: !2769, file: !2769, line: 224, type: !2792, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2809)
!2809 = !{!2810, !2811, !2812}
!2810 = !DILocalVariable(name: "nr", arg: 1, scope: !2808, file: !2769, line: 224, type: !136)
!2811 = !DILocalVariable(name: "addr", arg: 2, scope: !2808, file: !2769, line: 224, type: !2709)
!2812 = !DILocalVariable(name: "oldbit", scope: !2808, file: !2769, line: 226, type: !116)
!2813 = !DILocation(line: 224, column: 52, scope: !2808)
!2814 = !DILocation(line: 224, column: 86, scope: !2808)
!2815 = !DILocation(line: 226, column: 2, scope: !2808)
!2816 = !DILocation(line: 226, column: 7, scope: !2808)
!2817 = !DILocation(line: 231, column: 33, scope: !2808)
!2818 = !DILocation(line: 231, column: 46, scope: !2808)
!2819 = !DILocation(line: 228, column: 2, scope: !2808)
!2820 = !{i64 2148047705, i64 2148047779}
!2821 = !DILocation(line: 233, column: 9, scope: !2808)
!2822 = !{i8 0, i8 2}
!2823 = !DILocation(line: 234, column: 1, scope: !2808)
!2824 = !DILocation(line: 233, column: 2, scope: !2808)
!2825 = !DISubprogram(name: "ktime_get", scope: !2826, file: !2826, line: 67, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2826 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!2827 = distinct !DISubprogram(name: "cpu_relax", scope: !2828, file: !2828, line: 16, type: !1302, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2828 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!2829 = !DILocation(line: 18, column: 2, scope: !2827)
!2830 = !DILocation(line: 19, column: 1, scope: !2827)
!2831 = distinct !DISubprogram(name: "rep_nop", scope: !2828, file: !2828, line: 11, type: !1302, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2832 = !DILocation(line: 13, column: 2, scope: !2831)
!2833 = !{i64 1989052}
!2834 = !DILocation(line: 14, column: 1, scope: !2831)
!2835 = distinct !DISubprogram(name: "ktime_compare", scope: !152, file: !152, line: 95, type: !2836, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!91, !2385, !2385}
!2838 = !{!2839, !2840}
!2839 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2835, file: !152, line: 95, type: !2385)
!2840 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2835, file: !152, line: 95, type: !2385)
!2841 = !DILocation(line: 95, column: 47, scope: !2835)
!2842 = !DILocation(line: 95, column: 67, scope: !2835)
!2843 = !DILocation(line: 97, column: 6, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2835, file: !152, line: 97, column: 6)
!2845 = !DILocation(line: 97, column: 13, scope: !2844)
!2846 = !DILocation(line: 97, column: 11, scope: !2844)
!2847 = !DILocation(line: 97, column: 6, scope: !2835)
!2848 = !DILocation(line: 98, column: 3, scope: !2844)
!2849 = !DILocation(line: 99, column: 6, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2835, file: !152, line: 99, column: 6)
!2851 = !DILocation(line: 99, column: 13, scope: !2850)
!2852 = !DILocation(line: 99, column: 11, scope: !2850)
!2853 = !DILocation(line: 99, column: 6, scope: !2835)
!2854 = !DILocation(line: 100, column: 3, scope: !2850)
!2855 = !DILocation(line: 101, column: 2, scope: !2835)
!2856 = !DILocation(line: 102, column: 1, scope: !2835)
!2857 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2858, file: !2858, line: 51, type: !2859, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2861)
!2858 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!116, !116}
!2861 = !{!2862}
!2862 = !DILocalVariable(name: "overflow", arg: 1, scope: !2857, file: !2858, line: 51, type: !116)
!2863 = !DILocation(line: 51, column: 60, scope: !2857)
!2864 = !DILocation(line: 53, column: 9, scope: !2857)
!2865 = !DILocation(line: 53, column: 2, scope: !2857)
!2866 = distinct !DISubprogram(name: "kmalloc", scope: !45, file: !45, line: 591, type: !2867, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!55, !1313, !56}
!2869 = !{!2870, !2871, !2872}
!2870 = !DILocalVariable(name: "size", arg: 1, scope: !2866, file: !45, line: 591, type: !1313)
!2871 = !DILocalVariable(name: "flags", arg: 2, scope: !2866, file: !45, line: 591, type: !56)
!2872 = !DILocalVariable(name: "index", scope: !2873, file: !45, line: 594, type: !7)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !45, line: 593, column: 42)
!2874 = distinct !DILexicalBlock(scope: !2866, file: !45, line: 593, column: 6)
!2875 = !DILocation(line: 591, column: 61, scope: !2866)
!2876 = !DILocation(line: 591, column: 73, scope: !2866)
!2877 = !DILocation(line: 593, column: 27, scope: !2874)
!2878 = !DILocation(line: 593, column: 6, scope: !2874)
!2879 = !DILocation(line: 593, column: 33, scope: !2874)
!2880 = !DILocation(line: 593, column: 36, scope: !2874)
!2881 = !DILocation(line: 593, column: 6, scope: !2866)
!2882 = !DILocation(line: 594, column: 3, scope: !2873)
!2883 = !DILocation(line: 594, column: 16, scope: !2873)
!2884 = !DILocation(line: 596, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2873, file: !45, line: 596, column: 7)
!2886 = !DILocation(line: 596, column: 12, scope: !2885)
!2887 = !DILocation(line: 596, column: 7, scope: !2873)
!2888 = !DILocation(line: 597, column: 25, scope: !2885)
!2889 = !DILocation(line: 597, column: 31, scope: !2885)
!2890 = !DILocation(line: 597, column: 11, scope: !2885)
!2891 = !DILocation(line: 597, column: 4, scope: !2885)
!2892 = !DILocation(line: 599, column: 11, scope: !2873)
!2893 = !DILocation(line: 599, column: 9, scope: !2873)
!2894 = !DILocation(line: 601, column: 33, scope: !2873)
!2895 = !DILocation(line: 601, column: 40, scope: !2873)
!2896 = !DILocation(line: 601, column: 20, scope: !2873)
!2897 = !DILocation(line: 601, column: 5, scope: !2873)
!2898 = !DILocation(line: 601, column: 51, scope: !2873)
!2899 = !DILocation(line: 602, column: 5, scope: !2873)
!2900 = !DILocation(line: 602, column: 12, scope: !2873)
!2901 = !DILocation(line: 600, column: 10, scope: !2873)
!2902 = !DILocation(line: 600, column: 3, scope: !2873)
!2903 = !DILocation(line: 603, column: 2, scope: !2874)
!2904 = !DILocation(line: 604, column: 19, scope: !2866)
!2905 = !DILocation(line: 604, column: 25, scope: !2866)
!2906 = !DILocation(line: 604, column: 9, scope: !2866)
!2907 = !DILocation(line: 604, column: 2, scope: !2866)
!2908 = !DILocation(line: 605, column: 1, scope: !2866)
!2909 = !DISubprogram(name: "__kmalloc", scope: !45, file: !45, line: 488, type: !2867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2910 = !DISubprogram(name: "kmalloc_large", scope: !45, file: !45, line: 531, type: !2867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2911 = distinct !DISubprogram(name: "__kmalloc_index", scope: !45, file: !45, line: 444, type: !2912, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!7, !1313, !116}
!2914 = !{!2915, !2916}
!2915 = !DILocalVariable(name: "size", arg: 1, scope: !2911, file: !45, line: 444, type: !1313)
!2916 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2911, file: !45, line: 445, type: !116)
!2917 = !DILocation(line: 444, column: 60, scope: !2911)
!2918 = !DILocation(line: 445, column: 16, scope: !2911)
!2919 = !DILocation(line: 447, column: 7, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 447, column: 6)
!2921 = !DILocation(line: 447, column: 6, scope: !2911)
!2922 = !DILocation(line: 448, column: 3, scope: !2920)
!2923 = !DILocation(line: 450, column: 6, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 450, column: 6)
!2925 = !DILocation(line: 450, column: 11, scope: !2924)
!2926 = !DILocation(line: 450, column: 6, scope: !2911)
!2927 = !DILocation(line: 451, column: 3, scope: !2924)
!2928 = !DILocation(line: 453, column: 32, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 453, column: 6)
!2930 = !DILocation(line: 453, column: 37, scope: !2929)
!2931 = !DILocation(line: 453, column: 42, scope: !2929)
!2932 = !DILocation(line: 453, column: 45, scope: !2929)
!2933 = !DILocation(line: 453, column: 50, scope: !2929)
!2934 = !DILocation(line: 453, column: 6, scope: !2911)
!2935 = !DILocation(line: 454, column: 3, scope: !2929)
!2936 = !DILocation(line: 455, column: 32, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 455, column: 6)
!2938 = !DILocation(line: 455, column: 37, scope: !2937)
!2939 = !DILocation(line: 455, column: 43, scope: !2937)
!2940 = !DILocation(line: 455, column: 46, scope: !2937)
!2941 = !DILocation(line: 455, column: 51, scope: !2937)
!2942 = !DILocation(line: 455, column: 6, scope: !2911)
!2943 = !DILocation(line: 456, column: 3, scope: !2937)
!2944 = !DILocation(line: 457, column: 6, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 457, column: 6)
!2946 = !DILocation(line: 457, column: 11, scope: !2945)
!2947 = !DILocation(line: 457, column: 6, scope: !2911)
!2948 = !DILocation(line: 457, column: 26, scope: !2945)
!2949 = !DILocation(line: 458, column: 6, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 458, column: 6)
!2951 = !DILocation(line: 458, column: 11, scope: !2950)
!2952 = !DILocation(line: 458, column: 6, scope: !2911)
!2953 = !DILocation(line: 458, column: 26, scope: !2950)
!2954 = !DILocation(line: 459, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 459, column: 6)
!2956 = !DILocation(line: 459, column: 11, scope: !2955)
!2957 = !DILocation(line: 459, column: 6, scope: !2911)
!2958 = !DILocation(line: 459, column: 26, scope: !2955)
!2959 = !DILocation(line: 460, column: 6, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 460, column: 6)
!2961 = !DILocation(line: 460, column: 11, scope: !2960)
!2962 = !DILocation(line: 460, column: 6, scope: !2911)
!2963 = !DILocation(line: 460, column: 26, scope: !2960)
!2964 = !DILocation(line: 461, column: 6, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 461, column: 6)
!2966 = !DILocation(line: 461, column: 11, scope: !2965)
!2967 = !DILocation(line: 461, column: 6, scope: !2911)
!2968 = !DILocation(line: 461, column: 26, scope: !2965)
!2969 = !DILocation(line: 462, column: 6, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 462, column: 6)
!2971 = !DILocation(line: 462, column: 11, scope: !2970)
!2972 = !DILocation(line: 462, column: 6, scope: !2911)
!2973 = !DILocation(line: 462, column: 26, scope: !2970)
!2974 = !DILocation(line: 463, column: 6, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 463, column: 6)
!2976 = !DILocation(line: 463, column: 11, scope: !2975)
!2977 = !DILocation(line: 463, column: 6, scope: !2911)
!2978 = !DILocation(line: 463, column: 26, scope: !2975)
!2979 = !DILocation(line: 464, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 464, column: 6)
!2981 = !DILocation(line: 464, column: 11, scope: !2980)
!2982 = !DILocation(line: 464, column: 6, scope: !2911)
!2983 = !DILocation(line: 464, column: 26, scope: !2980)
!2984 = !DILocation(line: 465, column: 6, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 465, column: 6)
!2986 = !DILocation(line: 465, column: 11, scope: !2985)
!2987 = !DILocation(line: 465, column: 6, scope: !2911)
!2988 = !DILocation(line: 465, column: 26, scope: !2985)
!2989 = !DILocation(line: 466, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 466, column: 6)
!2991 = !DILocation(line: 466, column: 11, scope: !2990)
!2992 = !DILocation(line: 466, column: 6, scope: !2911)
!2993 = !DILocation(line: 466, column: 26, scope: !2990)
!2994 = !DILocation(line: 467, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 467, column: 6)
!2996 = !DILocation(line: 467, column: 11, scope: !2995)
!2997 = !DILocation(line: 467, column: 6, scope: !2911)
!2998 = !DILocation(line: 467, column: 26, scope: !2995)
!2999 = !DILocation(line: 468, column: 6, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 468, column: 6)
!3001 = !DILocation(line: 468, column: 11, scope: !3000)
!3002 = !DILocation(line: 468, column: 6, scope: !2911)
!3003 = !DILocation(line: 468, column: 26, scope: !3000)
!3004 = !DILocation(line: 469, column: 6, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 469, column: 6)
!3006 = !DILocation(line: 469, column: 11, scope: !3005)
!3007 = !DILocation(line: 469, column: 6, scope: !2911)
!3008 = !DILocation(line: 469, column: 26, scope: !3005)
!3009 = !DILocation(line: 470, column: 6, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 470, column: 6)
!3011 = !DILocation(line: 470, column: 11, scope: !3010)
!3012 = !DILocation(line: 470, column: 6, scope: !2911)
!3013 = !DILocation(line: 470, column: 26, scope: !3010)
!3014 = !DILocation(line: 471, column: 6, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 471, column: 6)
!3016 = !DILocation(line: 471, column: 11, scope: !3015)
!3017 = !DILocation(line: 471, column: 6, scope: !2911)
!3018 = !DILocation(line: 471, column: 26, scope: !3015)
!3019 = !DILocation(line: 472, column: 6, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 472, column: 6)
!3021 = !DILocation(line: 472, column: 11, scope: !3020)
!3022 = !DILocation(line: 472, column: 6, scope: !2911)
!3023 = !DILocation(line: 472, column: 26, scope: !3020)
!3024 = !DILocation(line: 473, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 473, column: 6)
!3026 = !DILocation(line: 473, column: 11, scope: !3025)
!3027 = !DILocation(line: 473, column: 6, scope: !2911)
!3028 = !DILocation(line: 473, column: 26, scope: !3025)
!3029 = !DILocation(line: 474, column: 6, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 474, column: 6)
!3031 = !DILocation(line: 474, column: 11, scope: !3030)
!3032 = !DILocation(line: 474, column: 6, scope: !2911)
!3033 = !DILocation(line: 474, column: 27, scope: !3030)
!3034 = !DILocation(line: 475, column: 6, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 475, column: 6)
!3036 = !DILocation(line: 475, column: 11, scope: !3035)
!3037 = !DILocation(line: 475, column: 6, scope: !2911)
!3038 = !DILocation(line: 475, column: 32, scope: !3035)
!3039 = !DILocation(line: 477, column: 50, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2911, file: !45, line: 477, column: 6)
!3041 = !DILocation(line: 477, column: 6, scope: !2911)
!3042 = !DILocation(line: 478, column: 3, scope: !3040)
!3043 = !DILocation(line: 478, column: 3, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !45, line: 478, column: 3)
!3045 = distinct !DILexicalBlock(scope: !3040, file: !45, line: 478, column: 3)
!3046 = !{i32 -2142197399}
!3047 = !DILocation(line: 478, column: 3, scope: !3045)
!3048 = !DILocation(line: 480, column: 3, scope: !3040)
!3049 = !DILocation(line: 480, column: 3, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3040, file: !45, line: 480, column: 3)
!3051 = !DILocation(line: 480, column: 3, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3050, file: !45, line: 480, column: 3)
!3053 = !DILocation(line: 480, column: 3, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !45, line: 480, column: 3)
!3055 = !{i64 2152770100, i64 2152770129, i64 2152770175, i64 2152770233, i64 2152770287, i64 2152770341, i64 2152770396, i64 2152770427}
!3056 = !DILocation(line: 483, column: 2, scope: !2911)
!3057 = !DILocation(line: 484, column: 1, scope: !2911)
!3058 = !DISubprogram(name: "kmalloc_trace", scope: !45, file: !45, line: 525, type: !3059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!55, !3061, !56, !1313}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3063, line: 325, flags: DIFlagFwdDecl)
!3063 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3064 = distinct !DISubprogram(name: "kmalloc_type", scope: !45, file: !45, line: 401, type: !3065, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!44, !56, !181}
!3067 = !{!3068, !3069}
!3068 = !DILocalVariable(name: "flags", arg: 1, scope: !3064, file: !45, line: 401, type: !56)
!3069 = !DILocalVariable(name: "caller", arg: 2, scope: !3064, file: !45, line: 401, type: !181)
!3070 = !DILocation(line: 401, column: 67, scope: !3064)
!3071 = !DILocation(line: 401, column: 88, scope: !3064)
!3072 = !DILocation(line: 407, column: 6, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3064, file: !45, line: 407, column: 6)
!3074 = !DILocation(line: 407, column: 6, scope: !3064)
!3075 = !DILocation(line: 413, column: 3, scope: !3073)
!3076 = !DILocation(line: 423, column: 38, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3064, file: !45, line: 423, column: 6)
!3078 = !DILocation(line: 423, column: 44, scope: !3077)
!3079 = !DILocation(line: 423, column: 6, scope: !3064)
!3080 = !DILocation(line: 424, column: 3, scope: !3077)
!3081 = !DILocation(line: 426, column: 3, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3064, file: !45, line: 425, column: 6)
!3083 = !DILocation(line: 429, column: 1, scope: !3064)
!3084 = !DISubprogram(name: "__compiletime_assert_217", scope: !45, file: !45, line: 478, type: !1302, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3085 = distinct !DISubprogram(name: "dma_fence_is_later", scope: !38, file: !38, line: 492, type: !3086, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!116, !125, !125}
!3088 = !{!3089, !3090, !3091, !3094}
!3089 = !DILocalVariable(name: "f1", arg: 1, scope: !3085, file: !38, line: 492, type: !125)
!3090 = !DILocalVariable(name: "f2", arg: 2, scope: !3085, file: !38, line: 493, type: !125)
!3091 = !DILocalVariable(name: "__ret_warn_on", scope: !3092, file: !38, line: 495, type: !91)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !38, line: 495, column: 6)
!3093 = distinct !DILexicalBlock(scope: !3085, file: !38, line: 495, column: 6)
!3094 = !DILocalVariable(name: "__flags", scope: !3095, file: !38, line: 495, type: !91)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !38, line: 495, column: 6)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !38, line: 495, column: 6)
!3097 = !DILocation(line: 492, column: 57, scope: !3085)
!3098 = !DILocation(line: 493, column: 29, scope: !3085)
!3099 = !DILocation(line: 495, column: 6, scope: !3092)
!3100 = !DILocation(line: 495, column: 6, scope: !3096)
!3101 = !DILocation(line: 495, column: 6, scope: !3095)
!3102 = !DILocation(line: 495, column: 6, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3095, file: !38, line: 495, column: 6)
!3104 = !DILocation(line: 495, column: 6, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3095, file: !38, line: 495, column: 6)
!3106 = !{i64 2150825993, i64 2150826022, i64 2150826068, i64 2150826126, i64 2150826180, i64 2150826234, i64 2150826289, i64 2150826320, i64 2150826628, i64 2150826634, i64 2150826681, i64 2150826704, i64 2150826730}
!3107 = !DILocation(line: 495, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3095, file: !38, line: 495, column: 6)
!3109 = !DILocation(line: 495, column: 6, scope: !3093)
!3110 = !DILocation(line: 495, column: 6, scope: !3085)
!3111 = !DILocation(line: 496, column: 3, scope: !3093)
!3112 = !DILocation(line: 498, column: 30, scope: !3085)
!3113 = !DILocation(line: 498, column: 34, scope: !3085)
!3114 = !DILocation(line: 498, column: 41, scope: !3085)
!3115 = !DILocation(line: 498, column: 45, scope: !3085)
!3116 = !DILocation(line: 498, column: 52, scope: !3085)
!3117 = !DILocation(line: 498, column: 56, scope: !3085)
!3118 = !DILocation(line: 498, column: 9, scope: !3085)
!3119 = !DILocation(line: 498, column: 2, scope: !3085)
!3120 = !DILocation(line: 499, column: 1, scope: !3085)
!3121 = distinct !DISubprogram(name: "__dma_fence_is_later", scope: !38, file: !38, line: 471, type: !3122, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!116, !176, !176, !111}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "f1", arg: 1, scope: !3121, file: !38, line: 471, type: !176)
!3126 = !DILocalVariable(name: "f2", arg: 2, scope: !3121, file: !38, line: 471, type: !176)
!3127 = !DILocalVariable(name: "ops", arg: 3, scope: !3121, file: !38, line: 472, type: !111)
!3128 = !DILocation(line: 471, column: 45, scope: !3121)
!3129 = !DILocation(line: 471, column: 53, scope: !3121)
!3130 = !DILocation(line: 472, column: 34, scope: !3121)
!3131 = !DILocation(line: 478, column: 6, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3121, file: !38, line: 478, column: 6)
!3133 = !DILocation(line: 478, column: 11, scope: !3132)
!3134 = !DILocation(line: 478, column: 6, scope: !3121)
!3135 = !DILocation(line: 479, column: 10, scope: !3132)
!3136 = !DILocation(line: 479, column: 15, scope: !3132)
!3137 = !DILocation(line: 479, column: 13, scope: !3132)
!3138 = !DILocation(line: 479, column: 3, scope: !3132)
!3139 = !DILocation(line: 481, column: 15, scope: !3121)
!3140 = !DILocation(line: 481, column: 35, scope: !3121)
!3141 = !DILocation(line: 481, column: 33, scope: !3121)
!3142 = !DILocation(line: 481, column: 54, scope: !3121)
!3143 = !DILocation(line: 481, column: 2, scope: !3121)
!3144 = !DILocation(line: 482, column: 1, scope: !3121)
!3145 = distinct !DISubprogram(name: "kref_put", scope: !184, file: !184, line: 62, type: !3146, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3149)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!91, !2515, !3148}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "kref", arg: 1, scope: !3145, file: !184, line: 62, type: !2515)
!3151 = !DILocalVariable(name: "release", arg: 2, scope: !3145, file: !184, line: 62, type: !3148)
!3152 = !DILocation(line: 62, column: 41, scope: !3145)
!3153 = !DILocation(line: 62, column: 54, scope: !3145)
!3154 = !DILocation(line: 64, column: 29, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3145, file: !184, line: 64, column: 6)
!3156 = !DILocation(line: 64, column: 35, scope: !3155)
!3157 = !DILocation(line: 64, column: 6, scope: !3155)
!3158 = !DILocation(line: 64, column: 6, scope: !3145)
!3159 = !DILocation(line: 65, column: 3, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3155, file: !184, line: 64, column: 46)
!3161 = !DILocation(line: 65, column: 11, scope: !3160)
!3162 = !DILocation(line: 66, column: 3, scope: !3160)
!3163 = !DILocation(line: 68, column: 2, scope: !3145)
!3164 = !DILocation(line: 69, column: 1, scope: !3145)
!3165 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !30, file: !30, line: 331, type: !3166, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!116, !2526}
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "r", arg: 1, scope: !3165, file: !30, line: 331, type: !2526)
!3170 = !DILocation(line: 331, column: 67, scope: !3165)
!3171 = !DILocation(line: 333, column: 33, scope: !3165)
!3172 = !DILocation(line: 333, column: 9, scope: !3165)
!3173 = !DILocation(line: 333, column: 2, scope: !3165)
!3174 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !30, file: !30, line: 313, type: !3175, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!116, !2526, !865}
!3177 = !{!3178, !3179}
!3178 = !DILocalVariable(name: "r", arg: 1, scope: !3174, file: !30, line: 313, type: !2526)
!3179 = !DILocalVariable(name: "oldp", arg: 2, scope: !3174, file: !30, line: 313, type: !865)
!3180 = !DILocation(line: 313, column: 69, scope: !3174)
!3181 = !DILocation(line: 313, column: 77, scope: !3174)
!3182 = !DILocation(line: 315, column: 36, scope: !3174)
!3183 = !DILocation(line: 315, column: 39, scope: !3174)
!3184 = !DILocation(line: 315, column: 9, scope: !3174)
!3185 = !DILocation(line: 315, column: 2, scope: !3174)
!3186 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !30, file: !30, line: 270, type: !3187, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!116, !91, !2526, !865}
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DILocalVariable(name: "i", arg: 1, scope: !3186, file: !30, line: 270, type: !91)
!3191 = !DILocalVariable(name: "r", arg: 2, scope: !3186, file: !30, line: 270, type: !2526)
!3192 = !DILocalVariable(name: "oldp", arg: 3, scope: !3186, file: !30, line: 270, type: !865)
!3193 = !DILocalVariable(name: "old", scope: !3186, file: !30, line: 272, type: !91)
!3194 = !DILocation(line: 270, column: 61, scope: !3186)
!3195 = !DILocation(line: 270, column: 76, scope: !3186)
!3196 = !DILocation(line: 270, column: 84, scope: !3186)
!3197 = !DILocation(line: 272, column: 2, scope: !3186)
!3198 = !DILocation(line: 272, column: 6, scope: !3186)
!3199 = !DILocation(line: 272, column: 37, scope: !3186)
!3200 = !DILocation(line: 272, column: 41, scope: !3186)
!3201 = !DILocation(line: 272, column: 44, scope: !3186)
!3202 = !DILocation(line: 272, column: 12, scope: !3186)
!3203 = !DILocation(line: 274, column: 6, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3186, file: !30, line: 274, column: 6)
!3205 = !DILocation(line: 274, column: 6, scope: !3186)
!3206 = !DILocation(line: 275, column: 11, scope: !3204)
!3207 = !DILocation(line: 275, column: 4, scope: !3204)
!3208 = !DILocation(line: 275, column: 9, scope: !3204)
!3209 = !DILocation(line: 275, column: 3, scope: !3204)
!3210 = !DILocation(line: 277, column: 6, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3186, file: !30, line: 277, column: 6)
!3212 = !DILocation(line: 277, column: 13, scope: !3211)
!3213 = !DILocation(line: 277, column: 10, scope: !3211)
!3214 = !DILocation(line: 277, column: 6, scope: !3186)
!3215 = !DILocation(line: 278, column: 3, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !30, line: 277, column: 16)
!3217 = !DILocation(line: 278, column: 3, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3216, file: !30, line: 278, column: 3)
!3219 = !DILocation(line: 278, column: 3, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3218, file: !30, line: 278, column: 3)
!3221 = !DILocation(line: 278, column: 3, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !30, line: 278, column: 3)
!3223 = !DILocation(line: 278, column: 3, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3222, file: !30, line: 278, column: 3)
!3225 = !{i64 2149828197}
!3226 = !DILocation(line: 279, column: 3, scope: !3216)
!3227 = !DILocation(line: 282, column: 6, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3186, file: !30, line: 282, column: 6)
!3229 = !DILocation(line: 282, column: 6, scope: !3186)
!3230 = !DILocation(line: 283, column: 26, scope: !3228)
!3231 = !DILocation(line: 283, column: 3, scope: !3228)
!3232 = !DILocation(line: 285, column: 2, scope: !3186)
!3233 = !DILocation(line: 286, column: 1, scope: !3186)
!3234 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2581, file: !2581, line: 397, type: !2582, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3235)
!3235 = !{!3236, !3237}
!3236 = !DILocalVariable(name: "i", arg: 1, scope: !3234, file: !2581, line: 397, type: !91)
!3237 = !DILocalVariable(name: "v", arg: 2, scope: !3234, file: !2581, line: 397, type: !2584)
!3238 = !DILocation(line: 397, column: 30, scope: !3234)
!3239 = !DILocation(line: 397, column: 43, scope: !3234)
!3240 = !DILocation(line: 399, column: 2, scope: !3234)
!3241 = !DILocation(line: 399, column: 2, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3234, file: !2581, line: 399, column: 2)
!3243 = !DILocation(line: 400, column: 31, scope: !3234)
!3244 = !DILocation(line: 400, column: 2, scope: !3234)
!3245 = !DILocation(line: 401, column: 38, scope: !3234)
!3246 = !DILocation(line: 401, column: 41, scope: !3234)
!3247 = !DILocation(line: 401, column: 9, scope: !3234)
!3248 = !DILocation(line: 401, column: 2, scope: !3234)
!3249 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !2617, file: !2617, line: 928, type: !2582, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3250)
!3250 = !{!3251, !3252}
!3251 = !DILocalVariable(name: "i", arg: 1, scope: !3249, file: !2617, line: 928, type: !91)
!3252 = !DILocalVariable(name: "v", arg: 2, scope: !3249, file: !2617, line: 928, type: !2584)
!3253 = !DILocation(line: 928, column: 34, scope: !3249)
!3254 = !DILocation(line: 928, column: 47, scope: !3249)
!3255 = !DILocation(line: 936, column: 31, scope: !3249)
!3256 = !DILocation(line: 936, column: 34, scope: !3249)
!3257 = !DILocation(line: 936, column: 9, scope: !3249)
!3258 = !DILocation(line: 936, column: 2, scope: !3249)
!3259 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2650, file: !2650, line: 101, type: !2582, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3260)
!3260 = !{!3261, !3262, !3263}
!3261 = !DILocalVariable(name: "i", arg: 1, scope: !3259, file: !2650, line: 101, type: !91)
!3262 = !DILocalVariable(name: "v", arg: 2, scope: !3259, file: !2650, line: 101, type: !2584)
!3263 = !DILocalVariable(name: "__ret", scope: !3264, file: !2650, line: 103, type: !91)
!3264 = distinct !DILexicalBlock(scope: !3259, file: !2650, line: 103, column: 9)
!3265 = !DILocation(line: 101, column: 54, scope: !3259)
!3266 = !DILocation(line: 101, column: 67, scope: !3259)
!3267 = !DILocation(line: 103, column: 9, scope: !3264)
!3268 = !{i64 2148883881, i64 2148883920, i64 2148883941, i64 2148883978, i64 2148884001, i64 2148884010}
!3269 = !DILocation(line: 103, column: 9, scope: !3259)
!3270 = !DILocation(line: 103, column: 2, scope: !3259)
