; ModuleID = 'drivers/dma-buf/dma-fence-array.c'
source_filename = "drivers/dma-buf/dma-fence-array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_ops: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_array_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_array_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_match_context: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_match_context ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_first: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_array_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_next: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_array_next ; .previous"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.dma_fence = type { ptr, ptr, %union.anon.13, i64, i64, i64, %struct.kref, i32 }
%union.anon.13 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_array_cb = type { %struct.dma_fence_cb, ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }

@dma_fence_array_ops = hidden constant %struct.dma_fence_ops { i8 0, ptr @dma_fence_array_get_driver_name, ptr @dma_fence_array_get_timeline_name, ptr @dma_fence_array_enable_signaling, ptr @dma_fence_array_signaled, ptr null, ptr @dma_fence_array_release, ptr null, ptr null, ptr @dma_fence_array_set_deadline }, align 8, !dbg !0
@__UNIQUE_ID___addressable_dma_fence_array_ops218 = internal global ptr @dma_fence_array_ops, section ".discard.addressable", align 8, !dbg !1958
@.str = private unnamed_addr constant [34 x i8] c"drivers/dma-buf/dma-fence-array.c\00", align 1, !dbg !1960
@__UNIQUE_ID___addressable_dma_fence_array_create219 = internal global ptr @dma_fence_array_create, section ".discard.addressable", align 8, !dbg !1965
@__UNIQUE_ID___addressable_dma_fence_match_context220 = internal global ptr @dma_fence_match_context, section ".discard.addressable", align 8, !dbg !1967
@__UNIQUE_ID___addressable_dma_fence_array_first221 = internal global ptr @dma_fence_array_first, section ".discard.addressable", align 8, !dbg !1969
@__UNIQUE_ID___addressable_dma_fence_array_next222 = internal global ptr @dma_fence_array_next, section ".discard.addressable", align 8, !dbg !1971
@.str.1 = private unnamed_addr constant [16 x i8] c"dma_fence_array\00", align 1, !dbg !1973
@.str.2 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1, !dbg !1975
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1977
@dma_fence_chain_ops = external dso_local constant %struct.dma_fence_ops, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_dma_fence_array_ops218, ptr @__UNIQUE_ID___addressable_dma_fence_array_create219, ptr @__UNIQUE_ID___addressable_dma_fence_match_context220, ptr @__UNIQUE_ID___addressable_dma_fence_array_first221, ptr @__UNIQUE_ID___addressable_dma_fence_array_next222], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_array_get_driver_name(ptr noundef %fence) #0 align 16 !dbg !1991 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !1993, metadata !DIExpression()), !dbg !1994
  ret ptr @.str.1, !dbg !1995
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_array_get_timeline_name(ptr noundef %fence) #0 align 16 !dbg !1996 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !1998, metadata !DIExpression()), !dbg !1999
  ret ptr @.str.2, !dbg !2000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_array_enable_signaling(ptr noundef %fence) #0 align 16 !dbg !2001 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2003, metadata !DIExpression()), !dbg !2013
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2004, metadata !DIExpression()), !dbg !2015
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2016
  %call = call ptr @to_dma_fence_array(ptr noundef %0) #17, !dbg !2017
  store ptr %call, ptr %array, align 8, !dbg !2015
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #16, !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !2005, metadata !DIExpression()), !dbg !2019
  %1 = load ptr, ptr %array, align 8, !dbg !2020
  %arrayidx = getelementptr %struct.dma_fence_array, ptr %1, i64 1, !dbg !2020
  store ptr %arrayidx, ptr %cb, align 8, !dbg !2019
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2006, metadata !DIExpression()), !dbg !2022
  store i32 0, ptr %i, align 4, !dbg !2023
  br label %for.cond, !dbg !2024

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !2025
  %3 = load ptr, ptr %array, align 8, !dbg !2026
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %3, i32 0, i32 2, !dbg !2027
  %4 = load i32, ptr %num_fences, align 4, !dbg !2027
  %cmp = icmp ult i32 %2, %4, !dbg !2028
  br i1 %cmp, label %for.body, label %for.end, !dbg !2029

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %array, align 8, !dbg !2030
  %6 = load ptr, ptr %cb, align 8, !dbg !2031
  %7 = load i32, ptr %i, align 4, !dbg !2032
  %idxprom = zext i32 %7 to i64, !dbg !2031
  %arrayidx1 = getelementptr %struct.dma_fence_array_cb, ptr %6, i64 %idxprom, !dbg !2031
  %array2 = getelementptr inbounds %struct.dma_fence_array_cb, ptr %arrayidx1, i32 0, i32 1, !dbg !2033
  store ptr %5, ptr %array2, align 8, !dbg !2034
  %8 = load ptr, ptr %array, align 8, !dbg !2035
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 0, !dbg !2036
  %call3 = call ptr @dma_fence_get(ptr noundef %base) #17, !dbg !2037
  %9 = load ptr, ptr %array, align 8, !dbg !2038
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %9, i32 0, i32 4, !dbg !2039
  %10 = load ptr, ptr %fences, align 8, !dbg !2039
  %11 = load i32, ptr %i, align 4, !dbg !2040
  %idxprom4 = zext i32 %11 to i64, !dbg !2038
  %arrayidx5 = getelementptr ptr, ptr %10, i64 %idxprom4, !dbg !2038
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !2038
  %13 = load ptr, ptr %cb, align 8, !dbg !2041
  %14 = load i32, ptr %i, align 4, !dbg !2042
  %idxprom6 = zext i32 %14 to i64, !dbg !2041
  %arrayidx7 = getelementptr %struct.dma_fence_array_cb, ptr %13, i64 %idxprom6, !dbg !2041
  %cb8 = getelementptr inbounds %struct.dma_fence_array_cb, ptr %arrayidx7, i32 0, i32 0, !dbg !2043
  %call9 = call i32 @dma_fence_add_callback(ptr noundef %12, ptr noundef %cb8, ptr noundef @dma_fence_array_cb_func) #17, !dbg !2044
  %tobool = icmp ne i32 %call9, 0, !dbg !2044
  br i1 %tobool, label %if.then, label %if.end17, !dbg !2045

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2007, metadata !DIExpression()), !dbg !2047
  %15 = load ptr, ptr %array, align 8, !dbg !2048
  %fences10 = getelementptr inbounds %struct.dma_fence_array, ptr %15, i32 0, i32 4, !dbg !2049
  %16 = load ptr, ptr %fences10, align 8, !dbg !2049
  %17 = load i32, ptr %i, align 4, !dbg !2050
  %idxprom11 = zext i32 %17 to i64, !dbg !2048
  %arrayidx12 = getelementptr ptr, ptr %16, i64 %idxprom11, !dbg !2048
  %18 = load ptr, ptr %arrayidx12, align 8, !dbg !2048
  %error13 = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 7, !dbg !2051
  %19 = load i32, ptr %error13, align 4, !dbg !2051
  store i32 %19, ptr %error, align 4, !dbg !2047
  %20 = load ptr, ptr %array, align 8, !dbg !2052
  %21 = load i32, ptr %error, align 4, !dbg !2053
  call void @dma_fence_array_set_pending_error(ptr noundef %20, i32 noundef %21) #17, !dbg !2054
  %22 = load ptr, ptr %array, align 8, !dbg !2055
  %base14 = getelementptr inbounds %struct.dma_fence_array, ptr %22, i32 0, i32 0, !dbg !2056
  call void @dma_fence_put(ptr noundef %base14) #17, !dbg !2057
  %23 = load ptr, ptr %array, align 8, !dbg !2058
  %num_pending = getelementptr inbounds %struct.dma_fence_array, ptr %23, i32 0, i32 3, !dbg !2060
  %call15 = call zeroext i1 @atomic_dec_and_test(ptr noundef %num_pending) #17, !dbg !2061
  br i1 %call15, label %if.then16, label %if.end, !dbg !2062

if.then16:                                        ; preds = %if.then
  %24 = load ptr, ptr %array, align 8, !dbg !2063
  call void @dma_fence_array_clear_pending_error(ptr noundef %24) #17, !dbg !2065
  store i1 false, ptr %retval, align 1, !dbg !2066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2066

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2067
  br label %cleanup, !dbg !2067

cleanup:                                          ; preds = %if.end, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !2067
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17, !dbg !2068

if.end17:                                         ; preds = %cleanup.cont, %for.body
  br label %for.inc, !dbg !2069

for.inc:                                          ; preds = %if.end17
  %25 = load i32, ptr %i, align 4, !dbg !2070
  %inc = add i32 %25, 1, !dbg !2070
  store i32 %inc, ptr %i, align 4, !dbg !2070
  br label %for.cond, !dbg !2071, !llvm.loop !2072

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !2076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !2076

cleanup18:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #16, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2077
  %26 = load i1, ptr %retval, align 1, !dbg !2077
  ret i1 %26, !dbg !2077
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_array_signaled(ptr noundef %fence) #0 align 16 !dbg !2078 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  %num_pending = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2080, metadata !DIExpression()), !dbg !2085
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2086
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2081, metadata !DIExpression()), !dbg !2087
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2088
  %call = call ptr @to_dma_fence_array(ptr noundef %0) #17, !dbg !2089
  store ptr %call, ptr %array, align 8, !dbg !2087
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pending) #16, !dbg !2090
  call void @llvm.dbg.declare(metadata ptr %num_pending, metadata !2082, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2092
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2083, metadata !DIExpression()), !dbg !2093
  %1 = load ptr, ptr %array, align 8, !dbg !2094
  %num_pending1 = getelementptr inbounds %struct.dma_fence_array, ptr %1, i32 0, i32 3, !dbg !2095
  %call2 = call i32 @atomic_read_acquire(ptr noundef %num_pending1) #17, !dbg !2096
  store i32 %call2, ptr %num_pending, align 4, !dbg !2097
  %2 = load ptr, ptr %array, align 8, !dbg !2098
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %2, i32 0, i32 0, !dbg !2098
  %flags = getelementptr inbounds %struct.dma_fence, ptr %base, i32 0, i32 5, !dbg !2098
  %3 = ptrtoint ptr %flags to i64, !dbg !2098
  %cmp = icmp ne i64 %3, 0, !dbg !2098
  %conv = zext i1 %cmp to i32, !dbg !2098
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2098
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !2098

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %array, align 8, !dbg !2098
  %base3 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 0, !dbg !2098
  %flags4 = getelementptr inbounds %struct.dma_fence, ptr %base3, i32 0, i32 5, !dbg !2098
  %6 = ptrtoint ptr %flags4 to i64, !dbg !2098
  %cmp5 = icmp ne i64 %6, 0, !dbg !2098
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !2098

land.lhs.true7:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %array, align 8, !dbg !2098
  %base8 = getelementptr inbounds %struct.dma_fence_array, ptr %7, i32 0, i32 0, !dbg !2098
  %flags9 = getelementptr inbounds %struct.dma_fence, ptr %base8, i32 0, i32 5, !dbg !2098
  %8 = load i64, ptr %flags9, align 8, !dbg !2098
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !2098
  br i1 %9, label %cond.true, label %cond.false, !dbg !2100

cond.true:                                        ; preds = %land.lhs.true7
  %10 = load ptr, ptr %array, align 8, !dbg !2098
  %base10 = getelementptr inbounds %struct.dma_fence_array, ptr %10, i32 0, i32 0, !dbg !2098
  %flags11 = getelementptr inbounds %struct.dma_fence, ptr %base10, i32 0, i32 5, !dbg !2098
  %call12 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags11) #17, !dbg !2098
  br i1 %call12, label %if.then, label %if.end21, !dbg !2098

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %entry
  %11 = load ptr, ptr %array, align 8, !dbg !2098
  %base14 = getelementptr inbounds %struct.dma_fence_array, ptr %11, i32 0, i32 0, !dbg !2098
  %flags15 = getelementptr inbounds %struct.dma_fence, ptr %base14, i32 0, i32 5, !dbg !2098
  %call16 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags15) #17, !dbg !2098
  br i1 %call16, label %if.then, label %if.end21, !dbg !2100

if.then:                                          ; preds = %cond.false, %cond.true
  %12 = load i32, ptr %num_pending, align 4, !dbg !2101
  %cmp18 = icmp sle i32 %12, 0, !dbg !2104
  br i1 %cmp18, label %if.then20, label %if.end, !dbg !2105

if.then20:                                        ; preds = %if.then
  br label %signal, !dbg !2106

if.end:                                           ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !2107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2107

if.end21:                                         ; preds = %cond.false, %cond.true
  store i32 0, ptr %i, align 4, !dbg !2108
  br label %for.cond, !dbg !2110

for.cond:                                         ; preds = %for.inc, %if.end21
  %13 = load i32, ptr %i, align 4, !dbg !2111
  %14 = load ptr, ptr %array, align 8, !dbg !2113
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %14, i32 0, i32 2, !dbg !2114
  %15 = load i32, ptr %num_fences, align 4, !dbg !2114
  %cmp22 = icmp ult i32 %13, %15, !dbg !2115
  br i1 %cmp22, label %for.body, label %for.end, !dbg !2116

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %array, align 8, !dbg !2117
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %16, i32 0, i32 4, !dbg !2120
  %17 = load ptr, ptr %fences, align 8, !dbg !2120
  %18 = load i32, ptr %i, align 4, !dbg !2121
  %idxprom = zext i32 %18 to i64, !dbg !2117
  %arrayidx = getelementptr ptr, ptr %17, i64 %idxprom, !dbg !2117
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !2117
  %call24 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %19) #17, !dbg !2122
  br i1 %call24, label %land.lhs.true26, label %if.end28, !dbg !2123

land.lhs.true26:                                  ; preds = %for.body
  %20 = load i32, ptr %num_pending, align 4, !dbg !2124
  %dec = add i32 %20, -1, !dbg !2124
  store i32 %dec, ptr %num_pending, align 4, !dbg !2124
  %tobool = icmp ne i32 %dec, 0, !dbg !2124
  br i1 %tobool, label %if.end28, label %if.then27, !dbg !2125

if.then27:                                        ; preds = %land.lhs.true26
  br label %signal, !dbg !2126

if.end28:                                         ; preds = %land.lhs.true26, %for.body
  br label %for.inc, !dbg !2127

for.inc:                                          ; preds = %if.end28
  %21 = load i32, ptr %i, align 4, !dbg !2128
  %inc = add i32 %21, 1, !dbg !2128
  store i32 %inc, ptr %i, align 4, !dbg !2128
  br label %for.cond, !dbg !2129, !llvm.loop !2130

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2132

signal:                                           ; preds = %if.then27, %if.then20
  call void @llvm.dbg.label(metadata !2084), !dbg !2133
  %22 = load ptr, ptr %array, align 8, !dbg !2134
  call void @dma_fence_array_clear_pending_error(ptr noundef %22) #17, !dbg !2135
  store i1 true, ptr %retval, align 1, !dbg !2136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2136

cleanup:                                          ; preds = %signal, %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pending) #16, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2137
  %23 = load i1, ptr %retval, align 1, !dbg !2137
  ret i1 %23, !dbg !2137
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_array_release(ptr noundef %fence) #0 align 16 !dbg !2138 {
entry:
  %fence.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2141, metadata !DIExpression()), !dbg !2145
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2146
  %call = call ptr @to_dma_fence_array(ptr noundef %0) #17, !dbg !2147
  store ptr %call, ptr %array, align 8, !dbg !2145
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2148
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2142, metadata !DIExpression()), !dbg !2149
  store i32 0, ptr %i, align 4, !dbg !2150
  br label %for.cond, !dbg !2152

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2153
  %2 = load ptr, ptr %array, align 8, !dbg !2155
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %2, i32 0, i32 2, !dbg !2156
  %3 = load i32, ptr %num_fences, align 4, !dbg !2156
  %cmp = icmp ult i32 %1, %3, !dbg !2157
  br i1 %cmp, label %for.body, label %for.end, !dbg !2158

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %array, align 8, !dbg !2159
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %4, i32 0, i32 4, !dbg !2160
  %5 = load ptr, ptr %fences, align 8, !dbg !2160
  %6 = load i32, ptr %i, align 4, !dbg !2161
  %idxprom = zext i32 %6 to i64, !dbg !2159
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !2159
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2159
  call void @dma_fence_put(ptr noundef %7) #17, !dbg !2162
  br label %for.inc, !dbg !2162

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2163
  %inc = add i32 %8, 1, !dbg !2163
  store i32 %inc, ptr %i, align 4, !dbg !2163
  br label %for.cond, !dbg !2164, !llvm.loop !2165

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %array, align 8, !dbg !2167
  %fences1 = getelementptr inbounds %struct.dma_fence_array, ptr %9, i32 0, i32 4, !dbg !2168
  %10 = load ptr, ptr %fences1, align 8, !dbg !2168
  call void @kfree(ptr noundef %10) #17, !dbg !2169
  %11 = load ptr, ptr %fence.addr, align 8, !dbg !2170
  call void @dma_fence_free(ptr noundef %11) #17, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2172
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2172
  ret void, !dbg !2172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_array_set_deadline(ptr noundef %fence, i64 noundef %deadline) #0 align 16 !dbg !2173 {
entry:
  %fence.addr = alloca ptr, align 8
  %deadline.addr = alloca i64, align 8
  %array = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2175, metadata !DIExpression()), !dbg !2179
  store i64 %deadline, ptr %deadline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deadline.addr, metadata !2176, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2181
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2177, metadata !DIExpression()), !dbg !2182
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2183
  %call = call ptr @to_dma_fence_array(ptr noundef %0) #17, !dbg !2184
  store ptr %call, ptr %array, align 8, !dbg !2182
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2185
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2178, metadata !DIExpression()), !dbg !2186
  store i32 0, ptr %i, align 4, !dbg !2187
  br label %for.cond, !dbg !2189

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2190
  %2 = load ptr, ptr %array, align 8, !dbg !2192
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %2, i32 0, i32 2, !dbg !2193
  %3 = load i32, ptr %num_fences, align 4, !dbg !2193
  %cmp = icmp ult i32 %1, %3, !dbg !2194
  br i1 %cmp, label %for.body, label %for.end, !dbg !2195

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %array, align 8, !dbg !2196
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %4, i32 0, i32 4, !dbg !2197
  %5 = load ptr, ptr %fences, align 8, !dbg !2197
  %6 = load i32, ptr %i, align 4, !dbg !2198
  %idxprom = zext i32 %6 to i64, !dbg !2196
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !2196
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2196
  %8 = load i64, ptr %deadline.addr, align 8, !dbg !2199
  call void @dma_fence_set_deadline(ptr noundef %7, i64 noundef %8) #17, !dbg !2200
  br label %for.inc, !dbg !2200

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !2201
  %inc = add i32 %9, 1, !dbg !2201
  store i32 %inc, ptr %i, align 4, !dbg !2201
  br label %for.cond, !dbg !2202, !llvm.loop !2203

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2205
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2205
  ret void, !dbg !2205
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_fence_array_create(i32 noundef %num_fences, ptr noundef %fences, i64 noundef %context, i32 noundef %seqno, i1 noundef zeroext %signal_on_any) #0 align 16 !dbg !2206 {
entry:
  %retval = alloca ptr, align 8
  %num_fences.addr = alloca i32, align 4
  %fences.addr = alloca ptr, align 8
  %context.addr = alloca i64, align 8
  %seqno.addr = alloca i32, align 4
  %signal_on_any.addr = alloca i8, align 1
  %array = alloca ptr, align 8
  %size = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %__ret_warn_on43 = alloca i32, align 4
  %__flags59 = alloca i32, align 4
  %tmp72 = alloca i64, align 8
  store i32 %num_fences, ptr %num_fences.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_fences.addr, metadata !2210, metadata !DIExpression()), !dbg !2227
  store ptr %fences, ptr %fences.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fences.addr, metadata !2211, metadata !DIExpression()), !dbg !2228
  store i64 %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2212, metadata !DIExpression()), !dbg !2229
  store i32 %seqno, ptr %seqno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seqno.addr, metadata !2213, metadata !DIExpression()), !dbg !2230
  %frombool = zext i1 %signal_on_any to i8
  store i8 %frombool, ptr %signal_on_any.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %signal_on_any.addr, metadata !2214, metadata !DIExpression()), !dbg !2231
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2215, metadata !DIExpression()), !dbg !2233
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2216, metadata !DIExpression()), !dbg !2235
  store i64 120, ptr %size, align 8, !dbg !2235
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2217, metadata !DIExpression()), !dbg !2236
  %0 = load i32, ptr %num_fences.addr, align 4, !dbg !2236
  %tobool = icmp ne i32 %0, 0, !dbg !2236
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2236

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %fences.addr, align 8, !dbg !2236
  %tobool1 = icmp ne ptr %1, null, !dbg !2236
  %lnot = xor i1 %tobool1, true, !dbg !2236
  br label %lor.end, !dbg !2236

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !2236
  %lnot3 = xor i1 %lnot2, true, !dbg !2236
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2236
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2236
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2237
  %tobool4 = icmp ne i32 %3, 0, !dbg !2237
  %lnot5 = xor i1 %tobool4, true, !dbg !2237
  %lnot7 = xor i1 %lnot5, true, !dbg !2237
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2237
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2237
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2237
  %tobool9 = icmp ne i64 %expval, 0, !dbg !2237
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2236

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2237

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !2238
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2219, metadata !DIExpression()), !dbg !2238
  store i32 2305, ptr %__flags, align 4, !dbg !2238
  br label %do.body10, !dbg !2238

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !2239

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !2239

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !2238

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !2241
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 199, i32 %4, i64 12) #16, !dbg !2241, !srcloc !2243
  br label %do.cond12, !dbg !2241

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2241

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2238

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !2244

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2244

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !2237
  br label %do.cond17, !dbg !2238

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2238

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !2238

if.end:                                           ; preds = %do.end18, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2236
  %tobool19 = icmp ne i32 %5, 0, !dbg !2236
  %lnot20 = xor i1 %tobool19, true, !dbg !2236
  %lnot22 = xor i1 %lnot20, true, !dbg !2236
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2236
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2236
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2236
  store i64 %expval25, ptr %tmp, align 8, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2246
  %6 = load i64, ptr %tmp, align 8, !dbg !2236
  %7 = load i32, ptr %num_fences.addr, align 4, !dbg !2247
  %conv26 = sext i32 %7 to i64, !dbg !2247
  %mul = mul i64 %conv26, 32, !dbg !2248
  %8 = load i64, ptr %size, align 8, !dbg !2249
  %add = add i64 %8, %mul, !dbg !2249
  store i64 %add, ptr %size, align 8, !dbg !2249
  %9 = load i64, ptr %size, align 8, !dbg !2250
  %call = call noalias ptr @kzalloc(i64 noundef %9, i32 noundef 3264) #18, !dbg !2251
  store ptr %call, ptr %array, align 8, !dbg !2252
  %10 = load ptr, ptr %array, align 8, !dbg !2253
  %tobool27 = icmp ne ptr %10, null, !dbg !2253
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !2255

if.then28:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2256

if.end29:                                         ; preds = %if.end
  br label %do.body30, !dbg !2257

do.body30:                                        ; preds = %if.end29
  %11 = load ptr, ptr %array, align 8, !dbg !2258
  %lock = getelementptr inbounds %struct.dma_fence_array, ptr %11, i32 0, i32 1, !dbg !2258
  %call31 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !2258
  %12 = load ptr, ptr %array, align 8, !dbg !2258
  %lock32 = getelementptr inbounds %struct.dma_fence_array, ptr %12, i32 0, i32 1, !dbg !2258
  %13 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2258
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %13, i32 0, i32 0, !dbg !2258
  %14 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2258
  %counter = getelementptr inbounds %struct.atomic_t, ptr %14, i32 0, i32 0, !dbg !2258
  store i32 0, ptr %counter, align 4, !dbg !2258
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock32, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2258
  br label %do.cond33, !dbg !2258

do.cond33:                                        ; preds = %do.body30
  br label %do.end34, !dbg !2258

do.end34:                                         ; preds = %do.cond33
  %15 = load ptr, ptr %array, align 8, !dbg !2260
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %15, i32 0, i32 0, !dbg !2261
  %16 = load ptr, ptr %array, align 8, !dbg !2262
  %lock35 = getelementptr inbounds %struct.dma_fence_array, ptr %16, i32 0, i32 1, !dbg !2263
  %17 = load i64, ptr %context.addr, align 8, !dbg !2264
  %18 = load i32, ptr %seqno.addr, align 4, !dbg !2265
  %conv36 = zext i32 %18 to i64, !dbg !2265
  call void @dma_fence_init(ptr noundef %base, ptr noundef @dma_fence_array_ops, ptr noundef %lock35, i64 noundef %17, i64 noundef %conv36) #17, !dbg !2266
  %19 = load ptr, ptr %array, align 8, !dbg !2267
  %work = getelementptr inbounds %struct.dma_fence_array, ptr %19, i32 0, i32 5, !dbg !2268
  call void @init_irq_work(ptr noundef %work, ptr noundef @irq_dma_fence_array_work) #17, !dbg !2269
  %20 = load i32, ptr %num_fences.addr, align 4, !dbg !2270
  %21 = load ptr, ptr %array, align 8, !dbg !2271
  %num_fences37 = getelementptr inbounds %struct.dma_fence_array, ptr %21, i32 0, i32 2, !dbg !2272
  store i32 %20, ptr %num_fences37, align 4, !dbg !2273
  %22 = load ptr, ptr %array, align 8, !dbg !2274
  %num_pending = getelementptr inbounds %struct.dma_fence_array, ptr %22, i32 0, i32 3, !dbg !2275
  %23 = load i8, ptr %signal_on_any.addr, align 1, !dbg !2276, !range !2277, !noundef !555
  %tobool38 = trunc i8 %23 to i1, !dbg !2276
  br i1 %tobool38, label %cond.true, label %cond.false, !dbg !2276

cond.true:                                        ; preds = %do.end34
  br label %cond.end, !dbg !2276

cond.false:                                       ; preds = %do.end34
  %24 = load i32, ptr %num_fences.addr, align 4, !dbg !2278
  br label %cond.end, !dbg !2276

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %24, %cond.false ], !dbg !2276
  call void @atomic_set(ptr noundef %num_pending, i32 noundef %cond) #17, !dbg !2279
  %25 = load ptr, ptr %fences.addr, align 8, !dbg !2280
  %26 = load ptr, ptr %array, align 8, !dbg !2281
  %fences40 = getelementptr inbounds %struct.dma_fence_array, ptr %26, i32 0, i32 4, !dbg !2282
  store ptr %25, ptr %fences40, align 8, !dbg !2283
  %27 = load ptr, ptr %array, align 8, !dbg !2284
  %base41 = getelementptr inbounds %struct.dma_fence_array, ptr %27, i32 0, i32 0, !dbg !2285
  %error = getelementptr inbounds %struct.dma_fence, ptr %base41, i32 0, i32 7, !dbg !2286
  store i32 1, ptr %error, align 4, !dbg !2287
  br label %while.cond, !dbg !2288

while.cond:                                       ; preds = %if.end71, %cond.end
  %28 = load i32, ptr %num_fences.addr, align 4, !dbg !2289
  %dec = add i32 %28, -1, !dbg !2289
  store i32 %dec, ptr %num_fences.addr, align 4, !dbg !2289
  %tobool42 = icmp ne i32 %28, 0, !dbg !2288
  br i1 %tobool42, label %while.body, label %while.end, !dbg !2288

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on43) #16, !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on43, metadata !2222, metadata !DIExpression()), !dbg !2290
  %29 = load ptr, ptr %fences.addr, align 8, !dbg !2290
  %30 = load i32, ptr %num_fences.addr, align 4, !dbg !2290
  %idxprom = sext i32 %30 to i64, !dbg !2290
  %arrayidx = getelementptr ptr, ptr %29, i64 %idxprom, !dbg !2290
  %31 = load ptr, ptr %arrayidx, align 8, !dbg !2290
  %call44 = call zeroext i1 @dma_fence_is_container(ptr noundef %31) #17, !dbg !2290
  %lnot45 = xor i1 %call44, true, !dbg !2290
  %lnot47 = xor i1 %lnot45, true, !dbg !2290
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !2290
  store i32 %lnot.ext48, ptr %__ret_warn_on43, align 4, !dbg !2290
  %32 = load i32, ptr %__ret_warn_on43, align 4, !dbg !2291
  %tobool49 = icmp ne i32 %32, 0, !dbg !2291
  %lnot50 = xor i1 %tobool49, true, !dbg !2291
  %lnot52 = xor i1 %lnot50, true, !dbg !2291
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !2291
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !2291
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !2291
  %tobool56 = icmp ne i64 %expval55, 0, !dbg !2291
  br i1 %tobool56, label %if.then57, label %if.end71, !dbg !2290

if.then57:                                        ; preds = %while.body
  br label %do.body58, !dbg !2291

do.body58:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags59) #16, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %__flags59, metadata !2224, metadata !DIExpression()), !dbg !2292
  store i32 2305, ptr %__flags59, align 4, !dbg !2292
  br label %do.body60, !dbg !2292

do.body60:                                        ; preds = %do.body58
  br label %do.cond61, !dbg !2293

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2293

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !2292

do.body63:                                        ; preds = %do.end62
  %33 = load i32, ptr %__flags59, align 4, !dbg !2295
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 230, i32 %33, i64 12) #16, !dbg !2295, !srcloc !2297
  br label %do.cond64, !dbg !2295

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !2295

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !2292

do.body66:                                        ; preds = %do.end65
  br label %do.cond67, !dbg !2298

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !2298

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags59) #16, !dbg !2291
  br label %do.cond69, !dbg !2292

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !2292

do.end70:                                         ; preds = %do.cond69
  br label %if.end71, !dbg !2292

if.end71:                                         ; preds = %do.end70, %while.body
  %34 = load i32, ptr %__ret_warn_on43, align 4, !dbg !2290
  %tobool73 = icmp ne i32 %34, 0, !dbg !2290
  %lnot74 = xor i1 %tobool73, true, !dbg !2290
  %lnot76 = xor i1 %lnot74, true, !dbg !2290
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !2290
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !2290
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !2290
  store i64 %expval79, ptr %tmp72, align 8, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on43) #16, !dbg !2300
  %35 = load i64, ptr %tmp72, align 8, !dbg !2290
  br label %while.cond, !dbg !2288, !llvm.loop !2301

while.end:                                        ; preds = %while.cond
  %36 = load ptr, ptr %array, align 8, !dbg !2302
  store ptr %36, ptr %retval, align 8, !dbg !2303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2303

cleanup:                                          ; preds = %while.end, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !2304
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2304
  %37 = load ptr, ptr %retval, align 8, !dbg !2304
  ret ptr %37, !dbg !2304
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !2305 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2309, metadata !DIExpression()), !dbg !2311
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2310, metadata !DIExpression()), !dbg !2312
  %0 = load i64, ptr %size.addr, align 8, !dbg !2313
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2314
  %or = or i32 %1, 256, !dbg !2315
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !2316
  ret ptr %call, !dbg !2317
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !2318 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2324, metadata !DIExpression()), !dbg !2325
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2326
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2327
  ret ptr %1, !dbg !2328
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2329 dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_irq_work(ptr noundef %work, ptr noundef %func) #8 align 16 !dbg !2332 {
entry:
  %work.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.irq_work, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2336, metadata !DIExpression()), !dbg !2338
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2337, metadata !DIExpression()), !dbg !2339
  %0 = load ptr, ptr %work.addr, align 8, !dbg !2340
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 32, i1 false), !dbg !2341
  %func1 = getelementptr inbounds %struct.irq_work, ptr %.compoundliteral, i32 0, i32 1, !dbg !2341
  %1 = load ptr, ptr %func.addr, align 8, !dbg !2341
  store ptr %1, ptr %func1, align 8, !dbg !2341
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !2341
  ret void, !dbg !2342
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_dma_fence_array_work(ptr noundef %wrk) #0 align 16 !dbg !2343 {
entry:
  %wrk.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %wrk, ptr %wrk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wrk.addr, metadata !2345, metadata !DIExpression()), !dbg !2349
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2350
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2346, metadata !DIExpression()), !dbg !2351
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2347, metadata !DIExpression()), !dbg !2352
  %0 = load ptr, ptr %wrk.addr, align 8, !dbg !2352
  store ptr %0, ptr %__mptr, align 8, !dbg !2352
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2352
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !2352
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2353
  %2 = load ptr, ptr %tmp, align 8, !dbg !2352
  store ptr %2, ptr %array, align 8, !dbg !2351
  %3 = load ptr, ptr %array, align 8, !dbg !2354
  call void @dma_fence_array_clear_pending_error(ptr noundef %3) #17, !dbg !2355
  %4 = load ptr, ptr %array, align 8, !dbg !2356
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %4, i32 0, i32 0, !dbg !2357
  %call = call i32 @dma_fence_signal(ptr noundef %base) #17, !dbg !2358
  %5 = load ptr, ptr %array, align 8, !dbg !2359
  %base1 = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 0, !dbg !2360
  call void @dma_fence_put(ptr noundef %base1) #17, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2362
  ret void, !dbg !2362
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !2363 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2369, metadata !DIExpression()), !dbg !2371
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2370, metadata !DIExpression()), !dbg !2372
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2373
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !2374
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2375
  %2 = load i32, ptr %i.addr, align 4, !dbg !2376
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !2377
  ret void, !dbg !2378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_container(ptr noundef %fence) #8 align 16 !dbg !2379 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2381, metadata !DIExpression()), !dbg !2382
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2383
  %call = call zeroext i1 @dma_fence_is_array(ptr noundef %0) #17, !dbg !2384
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !2385

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2386
  %call1 = call zeroext i1 @dma_fence_is_chain(ptr noundef %1) #17, !dbg !2387
  br label %lor.end, !dbg !2385

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2, !dbg !2388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @dma_fence_match_context(ptr noundef %fence, i64 noundef %context) #0 align 16 !dbg !2389 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  %context.addr = alloca i64, align 8
  %array = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2393, metadata !DIExpression()), !dbg !2397
  store i64 %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2394, metadata !DIExpression()), !dbg !2398
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2399
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2395, metadata !DIExpression()), !dbg !2400
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2401
  %call = call ptr @to_dma_fence_array(ptr noundef %0) #17, !dbg !2402
  store ptr %call, ptr %array, align 8, !dbg !2400
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2396, metadata !DIExpression()), !dbg !2404
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2405
  %call1 = call zeroext i1 @dma_fence_is_array(ptr noundef %1) #17, !dbg !2407
  br i1 %call1, label %if.end, label %if.then, !dbg !2408

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2409
  %context2 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 3, !dbg !2410
  %3 = load i64, ptr %context2, align 8, !dbg !2410
  %4 = load i64, ptr %context.addr, align 8, !dbg !2411
  %cmp = icmp eq i64 %3, %4, !dbg !2412
  store i1 %cmp, ptr %retval, align 1, !dbg !2413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2413

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2414
  br label %for.cond, !dbg !2416

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !2417
  %6 = load ptr, ptr %array, align 8, !dbg !2419
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %6, i32 0, i32 2, !dbg !2420
  %7 = load i32, ptr %num_fences, align 4, !dbg !2420
  %cmp3 = icmp ult i32 %5, %7, !dbg !2421
  br i1 %cmp3, label %for.body, label %for.end, !dbg !2422

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %array, align 8, !dbg !2423
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 4, !dbg !2426
  %9 = load ptr, ptr %fences, align 8, !dbg !2426
  %10 = load i32, ptr %i, align 4, !dbg !2427
  %idxprom = zext i32 %10 to i64, !dbg !2423
  %arrayidx = getelementptr ptr, ptr %9, i64 %idxprom, !dbg !2423
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !2423
  %context4 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 3, !dbg !2428
  %12 = load i64, ptr %context4, align 8, !dbg !2428
  %13 = load i64, ptr %context.addr, align 8, !dbg !2429
  %cmp5 = icmp ne i64 %12, %13, !dbg !2430
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2431

if.then6:                                         ; preds = %for.body
  store i1 false, ptr %retval, align 1, !dbg !2432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2432

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !2433

for.inc:                                          ; preds = %if.end7
  %14 = load i32, ptr %i, align 4, !dbg !2434
  %inc = add i32 %14, 1, !dbg !2434
  store i32 %inc, ptr %i, align 4, !dbg !2434
  br label %for.cond, !dbg !2435, !llvm.loop !2436

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !2438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2438

cleanup:                                          ; preds = %for.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2439
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2439
  %15 = load i1, ptr %retval, align 1, !dbg !2439
  ret i1 %15, !dbg !2439
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_dma_fence_array(ptr noundef %fence) #8 align 16 !dbg !2440 {
entry:
  %retval = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2444, metadata !DIExpression()), !dbg !2447
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2448
  %tobool = icmp ne ptr %0, null, !dbg !2448
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2450

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2451
  %call = call zeroext i1 @dma_fence_is_array(ptr noundef %1) #17, !dbg !2452
  br i1 %call, label %if.end, label %if.then, !dbg !2453

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !2454
  br label %return, !dbg !2454

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2445, metadata !DIExpression()), !dbg !2455
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2455
  store ptr %2, ptr %__mptr, align 8, !dbg !2455
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2455
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !2455
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2456
  %4 = load ptr, ptr %tmp, align 8, !dbg !2455
  store ptr %4, ptr %retval, align 8, !dbg !2457
  br label %return, !dbg !2457

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2458
  ret ptr %5, !dbg !2458
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_array(ptr noundef %fence) #8 align 16 !dbg !2459 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2461, metadata !DIExpression()), !dbg !2462
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2463
  %ops = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1, !dbg !2464
  %1 = load ptr, ptr %ops, align 8, !dbg !2464
  %cmp = icmp eq ptr %1, @dma_fence_array_ops, !dbg !2465
  ret i1 %cmp, !dbg !2466
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_fence_array_first(ptr noundef %head) #0 align 16 !dbg !2467 {
entry:
  %retval = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2472, metadata !DIExpression()), !dbg !2475
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2476
  %tobool = icmp ne ptr %0, null, !dbg !2476
  br i1 %tobool, label %if.end, label %if.then, !dbg !2478

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2479

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2480
  %call = call ptr @to_dma_fence_array(ptr noundef %1) #17, !dbg !2481
  store ptr %call, ptr %array, align 8, !dbg !2482
  %2 = load ptr, ptr %array, align 8, !dbg !2483
  %tobool1 = icmp ne ptr %2, null, !dbg !2483
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2485

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2486
  store ptr %3, ptr %retval, align 8, !dbg !2487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2487

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %array, align 8, !dbg !2488
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %4, i32 0, i32 2, !dbg !2490
  %5 = load i32, ptr %num_fences, align 4, !dbg !2490
  %tobool4 = icmp ne i32 %5, 0, !dbg !2488
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2491

if.then5:                                         ; preds = %if.end3
  store ptr null, ptr %retval, align 8, !dbg !2492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2492

if.end6:                                          ; preds = %if.end3
  %6 = load ptr, ptr %array, align 8, !dbg !2493
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %6, i32 0, i32 4, !dbg !2494
  %7 = load ptr, ptr %fences, align 8, !dbg !2494
  %arrayidx = getelementptr ptr, ptr %7, i64 0, !dbg !2493
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !2493
  store ptr %8, ptr %retval, align 8, !dbg !2495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2495

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2496
  %9 = load ptr, ptr %retval, align 8, !dbg !2496
  ret ptr %9, !dbg !2496
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_fence_array_next(ptr noundef %head, i32 noundef %index) #0 align 16 !dbg !2497 {
entry:
  %retval = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2501, metadata !DIExpression()), !dbg !2504
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2503, metadata !DIExpression()), !dbg !2507
  %0 = load ptr, ptr %head.addr, align 8, !dbg !2508
  %call = call ptr @to_dma_fence_array(ptr noundef %0) #17, !dbg !2509
  store ptr %call, ptr %array, align 8, !dbg !2507
  %1 = load ptr, ptr %array, align 8, !dbg !2510
  %tobool = icmp ne ptr %1, null, !dbg !2510
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2512

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %index.addr, align 4, !dbg !2513
  %3 = load ptr, ptr %array, align 8, !dbg !2514
  %num_fences = getelementptr inbounds %struct.dma_fence_array, ptr %3, i32 0, i32 2, !dbg !2515
  %4 = load i32, ptr %num_fences, align 4, !dbg !2515
  %cmp = icmp uge i32 %2, %4, !dbg !2516
  br i1 %cmp, label %if.then, label %if.end, !dbg !2517

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !2518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2518

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %array, align 8, !dbg !2519
  %fences = getelementptr inbounds %struct.dma_fence_array, ptr %5, i32 0, i32 4, !dbg !2520
  %6 = load ptr, ptr %fences, align 8, !dbg !2520
  %7 = load i32, ptr %index.addr, align 4, !dbg !2521
  %idxprom = zext i32 %7 to i64, !dbg !2519
  %arrayidx = getelementptr ptr, ptr %6, i64 %idxprom, !dbg !2519
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !2519
  store ptr %8, ptr %retval, align 8, !dbg !2522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2522

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2523
  %9 = load ptr, ptr %retval, align 8, !dbg !2523
  ret ptr %9, !dbg !2523
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #8 align 16 !dbg !2524 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2528
  %tobool = icmp ne ptr %0, null, !dbg !2528
  br i1 %tobool, label %if.then, label %if.end, !dbg !2530

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2531
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !2532
  call void @kref_get(ptr noundef %refcount) #17, !dbg !2533
  br label %if.end, !dbg !2533

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2534
  ret ptr %2, !dbg !2535
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2536 dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_array_cb_func(ptr noundef %f, ptr noundef %cb) #0 align 16 !dbg !2539 {
entry:
  %f.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %array_cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %array = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2541, metadata !DIExpression()), !dbg !2547
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !2542, metadata !DIExpression()), !dbg !2548
  call void @llvm.lifetime.start.p0(i64 8, ptr %array_cb) #16, !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %array_cb, metadata !2543, metadata !DIExpression()), !dbg !2550
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2544, metadata !DIExpression()), !dbg !2551
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !2551
  store ptr %0, ptr %__mptr, align 8, !dbg !2551
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2551
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2551
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !2552
  %2 = load ptr, ptr %tmp, align 8, !dbg !2551
  store ptr %2, ptr %array_cb, align 8, !dbg !2550
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #16, !dbg !2553
  call void @llvm.dbg.declare(metadata ptr %array, metadata !2546, metadata !DIExpression()), !dbg !2554
  %3 = load ptr, ptr %array_cb, align 8, !dbg !2555
  %array1 = getelementptr inbounds %struct.dma_fence_array_cb, ptr %3, i32 0, i32 1, !dbg !2556
  %4 = load ptr, ptr %array1, align 8, !dbg !2556
  store ptr %4, ptr %array, align 8, !dbg !2554
  %5 = load ptr, ptr %array, align 8, !dbg !2557
  %6 = load ptr, ptr %f.addr, align 8, !dbg !2558
  %error = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 7, !dbg !2559
  %7 = load i32, ptr %error, align 4, !dbg !2559
  call void @dma_fence_array_set_pending_error(ptr noundef %5, i32 noundef %7) #17, !dbg !2560
  %8 = load ptr, ptr %array, align 8, !dbg !2561
  %num_pending = getelementptr inbounds %struct.dma_fence_array, ptr %8, i32 0, i32 3, !dbg !2563
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %num_pending) #17, !dbg !2564
  br i1 %call, label %if.then, label %if.else, !dbg !2565

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %array, align 8, !dbg !2566
  %work = getelementptr inbounds %struct.dma_fence_array, ptr %9, i32 0, i32 5, !dbg !2567
  %call2 = call zeroext i1 @irq_work_queue(ptr noundef %work) #17, !dbg !2568
  br label %if.end, !dbg !2568

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %array, align 8, !dbg !2569
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %10, i32 0, i32 0, !dbg !2570
  call void @dma_fence_put(ptr noundef %base) #17, !dbg !2571
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #16, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 8, ptr %array_cb) #16, !dbg !2572
  ret void, !dbg !2572
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_array_set_pending_error(ptr noundef %array, i32 noundef %error) #0 align 16 !dbg !2573 {
entry:
  %array.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !2577, metadata !DIExpression()), !dbg !2587
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2578, metadata !DIExpression()), !dbg !2588
  %0 = load i32, ptr %error.addr, align 4, !dbg !2589
  %tobool = icmp ne i32 %0, 0, !dbg !2589
  br i1 %tobool, label %if.then, label %if.end, !dbg !2590

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #16, !dbg !2591
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2579, metadata !DIExpression()), !dbg !2591
  %1 = load ptr, ptr %array.addr, align 8, !dbg !2591
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %1, i32 0, i32 0, !dbg !2591
  %error1 = getelementptr inbounds %struct.dma_fence, ptr %base, i32 0, i32 7, !dbg !2591
  store ptr %error1, ptr %__ai_ptr, align 8, !dbg !2591
  br label %do.body, !dbg !2591

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2592

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2592

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !2591
  call void @instrument_atomic_read_write(ptr noundef %2, i64 noundef 4) #17, !dbg !2591
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2582, metadata !DIExpression()), !dbg !2594
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #16, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2584, metadata !DIExpression()), !dbg !2594
  store i32 1, ptr %__old, align 4, !dbg !2594
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #16, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2585, metadata !DIExpression()), !dbg !2594
  %3 = load i32, ptr %error.addr, align 4, !dbg !2594
  store i32 %3, ptr %__new, align 4, !dbg !2594
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2586, metadata !DIExpression()), !dbg !2594
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !2594
  store ptr %4, ptr %__ptr, align 8, !dbg !2594
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2594
  %6 = load i32, ptr %__new, align 4, !dbg !2594
  %7 = load i32, ptr %__old, align 4, !dbg !2594
  %8 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %6, i32 %7, ptr elementtype(i32) %5) #16, !dbg !2594, !srcloc !2595
  store i32 %8, ptr %__ret, align 4, !dbg !2594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2594
  %9 = load i32, ptr %__ret, align 4, !dbg !2594
  store i32 %9, ptr %tmp2, align 4, !dbg !2594
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #16, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #16, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !2591
  %10 = load i32, ptr %tmp2, align 4, !dbg !2594
  store i32 %10, ptr %tmp, align 4, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #16, !dbg !2596
  %11 = load i32, ptr %tmp, align 4, !dbg !2591
  br label %if.end, !dbg !2596

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !2597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #8 align 16 !dbg !2598 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2600, metadata !DIExpression()), !dbg !2601
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2602
  %tobool = icmp ne ptr %0, null, !dbg !2602
  br i1 %tobool, label %if.then, label %if.end, !dbg !2604

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2605
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !2606
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #17, !dbg !2607
  br label %if.end, !dbg !2607

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !2609 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  br label %do.body, !dbg !2615

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2616

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2618
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !2619
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2620
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #17, !dbg !2621
  ret i1 %call, !dbg !2622
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_array_clear_pending_error(ptr noundef %array) #0 align 16 !dbg !2623 {
entry:
  %array.addr = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !2627, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #16, !dbg !2636
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2628, metadata !DIExpression()), !dbg !2636
  %0 = load ptr, ptr %array.addr, align 8, !dbg !2636
  %base = getelementptr inbounds %struct.dma_fence_array, ptr %0, i32 0, i32 0, !dbg !2636
  %error = getelementptr inbounds %struct.dma_fence, ptr %base, i32 0, i32 7, !dbg !2636
  store ptr %error, ptr %__ai_ptr, align 8, !dbg !2636
  br label %do.body, !dbg !2636

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2637

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2637

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !2636
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #17, !dbg !2636
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2630, metadata !DIExpression()), !dbg !2639
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #16, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2632, metadata !DIExpression()), !dbg !2639
  store i32 1, ptr %__old, align 4, !dbg !2639
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #16, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2633, metadata !DIExpression()), !dbg !2639
  store i32 0, ptr %__new, align 4, !dbg !2639
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2634, metadata !DIExpression()), !dbg !2639
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !2639
  store ptr %2, ptr %__ptr, align 8, !dbg !2639
  %3 = load ptr, ptr %__ptr, align 8, !dbg !2639
  %4 = load i32, ptr %__new, align 4, !dbg !2639
  %5 = load i32, ptr %__old, align 4, !dbg !2639
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #16, !dbg !2639, !srcloc !2640
  store i32 %6, ptr %__ret, align 4, !dbg !2639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2639
  %7 = load i32, ptr %__ret, align 4, !dbg !2639
  store i32 %7, ptr %tmp1, align 4, !dbg !2639
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #16, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #16, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !2636
  %8 = load i32, ptr %tmp1, align 4, !dbg !2639
  store i32 %8, ptr %tmp, align 4, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #16, !dbg !2641
  %9 = load i32, ptr %tmp, align 4, !dbg !2636
  ret void, !dbg !2642
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #8 align 16 !dbg !2643 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2648, metadata !DIExpression()), !dbg !2649
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2650
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2651
  call void @refcount_inc(ptr noundef %refcount) #17, !dbg !2652
  ret void, !dbg !2653
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #8 align 16 !dbg !2654 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2659, metadata !DIExpression()), !dbg !2660
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2661
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #17, !dbg !2662
  ret void, !dbg !2663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !2664 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2668, metadata !DIExpression()), !dbg !2670
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2669, metadata !DIExpression()), !dbg !2671
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2672
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2673
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !2674
  ret void, !dbg !2675
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !2676 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2680, metadata !DIExpression()), !dbg !2684
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2681, metadata !DIExpression()), !dbg !2685
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2682, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2683, metadata !DIExpression()), !dbg !2688
  %0 = load i32, ptr %i.addr, align 4, !dbg !2689
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2690
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2691
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #17, !dbg !2692
  store i32 %call, ptr %old, align 4, !dbg !2688
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2693
  %tobool = icmp ne ptr %2, null, !dbg !2693
  br i1 %tobool, label %if.then, label %if.end, !dbg !2695

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2696
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2697
  store i32 %3, ptr %4, align 4, !dbg !2698
  br label %if.end, !dbg !2699

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2700
  %tobool1 = icmp ne i32 %5, 0, !dbg !2700
  %lnot = xor i1 %tobool1, true, !dbg !2700
  %lnot2 = xor i1 %lnot, true, !dbg !2700
  %lnot3 = xor i1 %lnot2, true, !dbg !2700
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2700
  %conv = sext i32 %lnot.ext to i64, !dbg !2700
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2700
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2700
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2702

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2703
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #17, !dbg !2704
  br label %if.end18, !dbg !2704

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2705
  %cmp = icmp slt i32 %7, 0, !dbg !2705
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2705

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !2705
  %9 = load i32, ptr %i.addr, align 4, !dbg !2705
  %add = add i32 %8, %9, !dbg !2705
  %cmp7 = icmp slt i32 %add, 0, !dbg !2705
  br label %lor.end, !dbg !2705

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !2705
  %lnot11 = xor i1 %lnot9, true, !dbg !2705
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2705
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !2705
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !2705
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !2705
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2707

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2708
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #17, !dbg !2709
  br label %if.end17, !dbg !2709

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !2710
  ret void, !dbg !2710
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2711 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2715, metadata !DIExpression()), !dbg !2717
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2716, metadata !DIExpression()), !dbg !2718
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2719
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !2720
  %1 = load i32, ptr %i.addr, align 4, !dbg !2721
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2722
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #17, !dbg !2723
  ret i32 %call, !dbg !2724
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2725 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2728 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2736, metadata !DIExpression()), !dbg !2738
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2737, metadata !DIExpression()), !dbg !2739
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2740
  %1 = load i64, ptr %size.addr, align 8, !dbg !2741
  %conv = trunc i64 %1 to i32, !dbg !2741
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !2742
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2743
  %3 = load i64, ptr %size.addr, align 8, !dbg !2743
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !2743
  ret void, !dbg !2744
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2745 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2748, metadata !DIExpression()), !dbg !2750
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2749, metadata !DIExpression()), !dbg !2751
  %0 = load i32, ptr %i.addr, align 4, !dbg !2752
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2753
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #17, !dbg !2754
  ret i32 %call, !dbg !2755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !2756 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2761, metadata !DIExpression()), !dbg !2763
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2762, metadata !DIExpression()), !dbg !2764
  ret i1 true, !dbg !2765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !2766 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2771, metadata !DIExpression()), !dbg !2774
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2772, metadata !DIExpression()), !dbg !2775
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2773, metadata !DIExpression()), !dbg !2776
  ret void, !dbg !2777
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2778 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2781, metadata !DIExpression()), !dbg !2785
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2782, metadata !DIExpression()), !dbg !2786
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !2787
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2783, metadata !DIExpression()), !dbg !2787
  %0 = load i32, ptr %i.addr, align 4, !dbg !2787
  store i32 %0, ptr %__ret, align 4, !dbg !2787
  %1 = load i32, ptr %__ret, align 4, !dbg !2787
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2787
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2787
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !2787, !srcloc !2788
  store i32 %3, ptr %__ret, align 4, !dbg !2787
  %4 = load i32, ptr %__ret, align 4, !dbg !2787
  store i32 %4, ptr %tmp, align 4, !dbg !2787
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !2789
  %5 = load i32, ptr %tmp, align 4, !dbg !2787
  ret i32 %5, !dbg !2790
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2791 dso_local zeroext i1 @irq_work_queue(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #8 align 16 !dbg !2794 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2799, metadata !DIExpression()), !dbg !2801
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !2800, metadata !DIExpression()), !dbg !2802
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2803
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2805
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #17, !dbg !2806
  br i1 %call, label %if.then, label %if.end, !dbg !2807

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !2808
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !2810
  call void %1(ptr noundef %2) #17, !dbg !2808
  store i32 1, ptr %retval, align 4, !dbg !2811
  br label %return, !dbg !2811

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2812
  br label %return, !dbg !2812

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2813
  ret i32 %3, !dbg !2813
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #8 align 16 !dbg !2814 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2820
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #17, !dbg !2821
  ret i1 %call, !dbg !2822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !2823 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2827, metadata !DIExpression()), !dbg !2829
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2828, metadata !DIExpression()), !dbg !2830
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2831
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2832
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !2833
  ret i1 %call, !dbg !2834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !2835 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2839, metadata !DIExpression()), !dbg !2843
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2840, metadata !DIExpression()), !dbg !2844
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2841, metadata !DIExpression()), !dbg !2845
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2842, metadata !DIExpression()), !dbg !2847
  %0 = load i32, ptr %i.addr, align 4, !dbg !2848
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2849
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2850
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !2851
  store i32 %call, ptr %old, align 4, !dbg !2847
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2852
  %tobool = icmp ne ptr %2, null, !dbg !2852
  br i1 %tobool, label %if.then, label %if.end, !dbg !2854

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2855
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2856
  store i32 %3, ptr %4, align 4, !dbg !2857
  br label %if.end, !dbg !2858

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2859
  %6 = load i32, ptr %i.addr, align 4, !dbg !2861
  %cmp = icmp eq i32 %5, %6, !dbg !2862
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !2863

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !2864

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !2866

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2868

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2868

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2866

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !2870

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !2872

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2872

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !2870, !srcloc !2874
  br label %do.cond7, !dbg !2870

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2870

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !2866

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !2866

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !2875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2875

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2876
  %cmp12 = icmp slt i32 %7, 0, !dbg !2876
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !2876

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !2876
  %9 = load i32, ptr %i.addr, align 4, !dbg !2876
  %sub = sub i32 %8, %9, !dbg !2876
  %cmp13 = icmp slt i32 %sub, 0, !dbg !2876
  br label %lor.end, !dbg !2876

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !2876
  %lnot14 = xor i1 %lnot, true, !dbg !2876
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !2876
  %conv = sext i32 %lnot.ext to i64, !dbg !2876
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2876
  %tobool15 = icmp ne i64 %expval, 0, !dbg !2876
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2878

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2879
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !2880
  br label %if.end17, !dbg !2880

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !2881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2881

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !2882
  %12 = load i1, ptr %retval, align 1, !dbg !2882
  ret i1 %12, !dbg !2882
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2883 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2885, metadata !DIExpression()), !dbg !2887
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2886, metadata !DIExpression()), !dbg !2888
  br label %do.body, !dbg !2889

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2890

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2892
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !2893
  %1 = load i32, ptr %i.addr, align 4, !dbg !2894
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2895
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !2896
  ret i32 %call, !dbg !2897
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2898 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2900, metadata !DIExpression()), !dbg !2902
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2901, metadata !DIExpression()), !dbg !2903
  %0 = load i32, ptr %i.addr, align 4, !dbg !2904
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2905
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !2906
  ret i32 %call, !dbg !2907
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !2908 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2910, metadata !DIExpression()), !dbg !2914
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2911, metadata !DIExpression()), !dbg !2915
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !2916
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2912, metadata !DIExpression()), !dbg !2916
  %0 = load i32, ptr %i.addr, align 4, !dbg !2916
  %sub = sub i32 0, %0, !dbg !2916
  store i32 %sub, ptr %__ret, align 4, !dbg !2916
  %1 = load i32, ptr %__ret, align 4, !dbg !2916
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2916
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2916
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !2916, !srcloc !2917
  store i32 %3, ptr %__ret, align 4, !dbg !2916
  %4 = load i32, ptr %__ret, align 4, !dbg !2916
  store i32 %4, ptr %tmp, align 4, !dbg !2916
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !2918
  %5 = load i32, ptr %tmp, align 4, !dbg !2916
  ret i32 %5, !dbg !2919
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !2920 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2922, metadata !DIExpression()), !dbg !2923
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2924
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #17, !dbg !2925
  ret i1 %call, !dbg !2926
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !2927 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !2933
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2930, metadata !DIExpression()), !dbg !2933
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2933
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2933
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !2933, !srcloc !2934
  %2 = icmp ult i8 %1, 2, !dbg !2933
  call void @llvm.assume(i1 %2), !dbg !2933
  store i8 %1, ptr %c, align 1, !dbg !2933
  %3 = load i8, ptr %c, align 1, !dbg !2933, !range !2277, !noundef !555
  %tobool = trunc i8 %3 to i1, !dbg !2933
  %frombool = zext i1 %tobool to i8, !dbg !2933
  store i8 %frombool, ptr %tmp, align 1, !dbg !2933
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !2935
  %4 = load i8, ptr %tmp, align 1, !dbg !2933, !range !2277, !noundef !555
  %tobool1 = trunc i8 %4 to i1, !dbg !2933
  ret i1 %tobool1, !dbg !2936
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read_acquire(ptr noundef %v) #5 align 16 !dbg !2937 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2943, metadata !DIExpression()), !dbg !2944
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2945
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !2946
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2947
  %call = call i32 @raw_atomic_read_acquire(ptr noundef %1) #17, !dbg !2948
  ret i32 %call, !dbg !2949
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2950 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2958, metadata !DIExpression()), !dbg !2963
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2959, metadata !DIExpression()), !dbg !2964
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !2965
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2960, metadata !DIExpression()), !dbg !2966
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2967
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2968
  %div = udiv i64 %1, 64, !dbg !2968
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2969
  store ptr %add.ptr, ptr %p, align 8, !dbg !2966
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !2970
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2961, metadata !DIExpression()), !dbg !2971
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2972
  %rem = urem i64 %2, 64, !dbg !2972
  %shl = shl i64 1, %rem, !dbg !2972
  store i64 %shl, ptr %mask, align 8, !dbg !2971
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !2973
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2962, metadata !DIExpression()), !dbg !2974
  %3 = load ptr, ptr %p, align 8, !dbg !2975
  %4 = load i64, ptr %3, align 8, !dbg !2976
  store i64 %4, ptr %val, align 8, !dbg !2974
  %5 = load i64, ptr %val, align 8, !dbg !2977
  %6 = load i64, ptr %mask, align 8, !dbg !2978
  %and = and i64 %5, %6, !dbg !2979
  %tobool = icmp ne i64 %and, 0, !dbg !2980
  %lnot = xor i1 %tobool, true, !dbg !2980
  %lnot1 = xor i1 %lnot, true, !dbg !2981
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !2982
  ret i1 %lnot1, !dbg !2983
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2984 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2987, metadata !DIExpression()), !dbg !2989
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2988, metadata !DIExpression()), !dbg !2990
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2991
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2992
  %div = udiv i64 %1, 64, !dbg !2992
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2993
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !2994
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2995
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2996
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !2997
  ret i1 %call, !dbg !2998
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) #8 align 16 !dbg !2999 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3001, metadata !DIExpression()), !dbg !3002
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !3003
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !3003
  %1 = ptrtoint ptr %flags to i64, !dbg !3003
  %cmp = icmp ne i64 %1, 0, !dbg !3003
  %conv = zext i1 %cmp to i32, !dbg !3003
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3003
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !3003

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !3003
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !3003
  %4 = ptrtoint ptr %flags1 to i64, !dbg !3003
  %cmp2 = icmp ne i64 %4, 0, !dbg !3003
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !3003

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !3003
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !3003
  %6 = load i64, ptr %flags5, align 8, !dbg !3003
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !3003
  br i1 %7, label %cond.true, label %cond.false, !dbg !3005

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !3003
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !3003
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #17, !dbg !3003
  br i1 %call, label %if.then, label %if.end, !dbg !3003

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !3003
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !3003
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #17, !dbg !3003
  br i1 %call9, label %if.then, label %if.end, !dbg !3005

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !3006
  br label %return, !dbg !3006

if.end:                                           ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !3007
  %ops = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1, !dbg !3009
  %11 = load ptr, ptr %ops, align 8, !dbg !3009
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4, !dbg !3010
  %12 = load ptr, ptr %signaled, align 8, !dbg !3010
  %tobool = icmp ne ptr %12, null, !dbg !3007
  br i1 %tobool, label %land.lhs.true11, label %if.end18, !dbg !3011

land.lhs.true11:                                  ; preds = %if.end
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !3012
  %ops12 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !3013
  %14 = load ptr, ptr %ops12, align 8, !dbg !3013
  %signaled13 = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 4, !dbg !3014
  %15 = load ptr, ptr %signaled13, align 8, !dbg !3014
  %16 = load ptr, ptr %fence.addr, align 8, !dbg !3015
  %call14 = call zeroext i1 %15(ptr noundef %16) #17, !dbg !3012
  br i1 %call14, label %if.then16, label %if.end18, !dbg !3016

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !3017
  %call17 = call i32 @dma_fence_signal(ptr noundef %17) #17, !dbg !3019
  store i1 true, ptr %retval, align 1, !dbg !3020
  br label %return, !dbg !3020

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  store i1 false, ptr %retval, align 1, !dbg !3021
  br label %return, !dbg !3021

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !3022
  ret i1 %18, !dbg !3022
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3023 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3025, metadata !DIExpression()), !dbg !3027
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3026, metadata !DIExpression()), !dbg !3028
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3029
  %1 = load i64, ptr %size.addr, align 8, !dbg !3030
  %conv = trunc i64 %1 to i32, !dbg !3030
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !3031
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3032
  %3 = load i64, ptr %size.addr, align 8, !dbg !3032
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !3032
  ret void, !dbg !3033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read_acquire(ptr noundef %v) #5 align 16 !dbg !3034 {
entry:
  %v.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %___p1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3036, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3044
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3037, metadata !DIExpression()), !dbg !3045
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p1) #16, !dbg !3046
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !3038, metadata !DIExpression()), !dbg !3046
  br label %do.body, !dbg !3047

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3049

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3049

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3047
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3047
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3047
  store i32 %1, ptr %tmp, align 4, !dbg !3049
  %2 = load i32, ptr %tmp, align 4, !dbg !3047
  store i32 %2, ptr %___p1, align 4, !dbg !3046
  br label %do.body1, !dbg !3046

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !3051

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !3051

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3046, !srcloc !3053
  %3 = load i32, ptr %___p1, align 4, !dbg !3046
  store i32 %3, ptr %tmp4, align 4, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p1) #16, !dbg !3054
  %4 = load i32, ptr %tmp4, align 4, !dbg !3046
  store i32 %4, ptr %ret, align 4, !dbg !3055
  %5 = load i32, ptr %ret, align 4, !dbg !3056
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3057
  ret i32 %5, !dbg !3058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !3059 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3061, metadata !DIExpression()), !dbg !3063
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3062, metadata !DIExpression()), !dbg !3064
  ret i1 true, !dbg !3065
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3066 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3069, metadata !DIExpression()), !dbg !3071
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3070, metadata !DIExpression()), !dbg !3072
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3073
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3074
  br i1 %1, label %cond.true, label %cond.false, !dbg !3074

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3075
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3076
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3077
  %conv = zext i1 %call to i32, !dbg !3077
  br label %cond.end, !dbg !3074

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3078
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3079
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !3080
  %conv2 = zext i1 %call1 to i32, !dbg !3080
  br label %cond.end, !dbg !3074

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3074
  %tobool = icmp ne i32 %cond, 0, !dbg !3074
  ret i1 %tobool, !dbg !3081
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3082 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3086, metadata !DIExpression()), !dbg !3088
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3087, metadata !DIExpression()), !dbg !3089
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3090
  %and = and i64 %0, 63, !dbg !3091
  %shl = shl i64 1, %and, !dbg !3092
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3093
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3094
  %shr = ashr i64 %2, 6, !dbg !3095
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3093
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3093
  %and1 = and i64 %shl, %3, !dbg !3096
  %cmp = icmp ne i64 %and1, 0, !dbg !3097
  ret i1 %cmp, !dbg !3098
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3099 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3101, metadata !DIExpression()), !dbg !3104
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3102, metadata !DIExpression()), !dbg !3105
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !3106
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3103, metadata !DIExpression()), !dbg !3107
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3108
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3109
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !3110, !srcloc !3111
  %3 = icmp ult i8 %2, 2, !dbg !3110
  call void @llvm.assume(i1 %3), !dbg !3110
  store i8 %2, ptr %oldbit, align 1, !dbg !3110
  %4 = load i8, ptr %oldbit, align 1, !dbg !3112, !range !2277, !noundef !555
  %tobool = trunc i8 %4 to i1, !dbg !3112
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !3113
  ret i1 %tobool, !dbg !3114
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3115 dso_local i32 @dma_fence_signal(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3118 dso_local void @kfree(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3123 dso_local void @dma_fence_free(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3124 dso_local void @dma_fence_set_deadline(ptr noundef, i64 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !3125 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3127, metadata !DIExpression()), !dbg !3132
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3128, metadata !DIExpression()), !dbg !3133
  %0 = load i64, ptr %size.addr, align 8, !dbg !3134
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3135
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3136

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3137
  %tobool = icmp ne i64 %2, 0, !dbg !3137
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3138

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3129, metadata !DIExpression()), !dbg !3140
  %3 = load i64, ptr %size.addr, align 8, !dbg !3141
  %cmp = icmp ugt i64 %3, 8192, !dbg !3143
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3144

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3145
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3146
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !3147
  store ptr %call, ptr %retval, align 8, !dbg !3148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3148

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3149
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !3149
  store i32 %call2, ptr %index, align 4, !dbg !3150
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3151
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3152
  %9 = ptrtoint ptr %8 to i64, !dbg !3152
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !3153
  %idxprom = zext i32 %call3 to i64, !dbg !3154
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3154
  %10 = load i32, ptr %index, align 4, !dbg !3155
  %idxprom4 = zext i32 %10 to i64, !dbg !3154
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3154
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3154
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3156
  %13 = load i64, ptr %size.addr, align 8, !dbg !3157
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !3158
  store ptr %call6, ptr %retval, align 8, !dbg !3159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3159

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3160
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3161
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3162
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !3163
  store ptr %call8, ptr %retval, align 8, !dbg !3164
  br label %return, !dbg !3164

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3165
  ret ptr %16, !dbg !3165
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3166 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !3167 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3171, metadata !DIExpression()), !dbg !3173
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3172, metadata !DIExpression()), !dbg !3174
  %0 = load i64, ptr %size.addr, align 8, !dbg !3175
  %tobool = icmp ne i64 %0, 0, !dbg !3175
  br i1 %tobool, label %if.end, label %if.then, !dbg !3177

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3178
  br label %return, !dbg !3178

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3179
  %cmp = icmp ule i64 %1, 8, !dbg !3181
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3182

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3183
  br label %return, !dbg !3183

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3184
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3186
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3187

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3188
  %cmp4 = icmp ule i64 %3, 96, !dbg !3189
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3190

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3191
  br label %return, !dbg !3191

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3192
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3194
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3195

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3196
  %cmp9 = icmp ule i64 %5, 192, !dbg !3197
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3198

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3199
  br label %return, !dbg !3199

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3200
  %cmp12 = icmp ule i64 %6, 8, !dbg !3202
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3203

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3204
  br label %return, !dbg !3204

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3205
  %cmp15 = icmp ule i64 %7, 16, !dbg !3207
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3208

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3209
  br label %return, !dbg !3209

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3210
  %cmp18 = icmp ule i64 %8, 32, !dbg !3212
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3213

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3214
  br label %return, !dbg !3214

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3215
  %cmp21 = icmp ule i64 %9, 64, !dbg !3217
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3218

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3219
  br label %return, !dbg !3219

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3220
  %cmp24 = icmp ule i64 %10, 128, !dbg !3222
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3223

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3224
  br label %return, !dbg !3224

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3225
  %cmp27 = icmp ule i64 %11, 256, !dbg !3227
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3228

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3229
  br label %return, !dbg !3229

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3230
  %cmp30 = icmp ule i64 %12, 512, !dbg !3232
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3233

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3234
  br label %return, !dbg !3234

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3235
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3237
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3238

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3239
  br label %return, !dbg !3239

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3240
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3242
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3243

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3244
  br label %return, !dbg !3244

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3245
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3247
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3248

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3249
  br label %return, !dbg !3249

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3250
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3252
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3253

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3254
  br label %return, !dbg !3254

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3255
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3257
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3258

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3259
  br label %return, !dbg !3259

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3260
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3262
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3263

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3264
  br label %return, !dbg !3264

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3265
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3267
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3268

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3269
  br label %return, !dbg !3269

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3270
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3272
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3273

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3274
  br label %return, !dbg !3274

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3275
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3277
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3278

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3279
  br label %return, !dbg !3279

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3280
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3282
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3283

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3284
  br label %return, !dbg !3284

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3285
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3287
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3288

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3289
  br label %return, !dbg !3289

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3290
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3292
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3293

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3294
  br label %return, !dbg !3294

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3295, !range !2277, !noundef !555
  %tobool69 = trunc i8 %25 to i1, !dbg !3295
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3297

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3298

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !3299, !srcloc !3302
  unreachable, !dbg !3299

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3303

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3304

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3305

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3307

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3305

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #16, !dbg !3309, !srcloc !3311
  br label %do.end75, !dbg !3309

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3305

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3312
  br label %return, !dbg !3312

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3313
  ret i32 %26, !dbg !3313
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3314 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !3319 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3323, metadata !DIExpression()), !dbg !3325
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3324, metadata !DIExpression()), !dbg !3326
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3327
  %and = and i32 %0, 17, !dbg !3327
  %cmp = icmp eq i32 %and, 0, !dbg !3327
  %lnot = xor i1 %cmp, true, !dbg !3327
  %lnot1 = xor i1 %lnot, true, !dbg !3327
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3327
  %conv = sext i32 %lnot.ext to i64, !dbg !3327
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3327
  %tobool = icmp ne i64 %expval, 0, !dbg !3327
  br i1 %tobool, label %if.then, label %if.end, !dbg !3329

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3330
  br label %return, !dbg !3330

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3331
  %and2 = and i32 %1, 1, !dbg !3333
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3333
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3334

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3335
  br label %return, !dbg !3335

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3336
  br label %return, !dbg !3336

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3338
  ret i32 %2, !dbg !3338
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3339 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3340 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3341 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3343, metadata !DIExpression()), !dbg !3345
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3344, metadata !DIExpression()), !dbg !3346
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3347
  %1 = load i64, ptr %size.addr, align 8, !dbg !3348
  %conv = trunc i64 %1 to i32, !dbg !3348
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !3349
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3350
  %3 = load i64, ptr %size.addr, align 8, !dbg !3350
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !3350
  ret void, !dbg !3351
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !3352 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3354, metadata !DIExpression()), !dbg !3356
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3355, metadata !DIExpression()), !dbg !3357
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3358
  %1 = load i32, ptr %i.addr, align 4, !dbg !3359
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !3360
  ret void, !dbg !3361
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !3362 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3364, metadata !DIExpression()), !dbg !3366
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3365, metadata !DIExpression()), !dbg !3367
  br label %do.body, !dbg !3368

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !3369
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3369
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !3369
  store volatile i32 %0, ptr %counter, align 4, !dbg !3369
  br label %do.end, !dbg !3369

do.end:                                           ; preds = %do.body
  ret void, !dbg !3371
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_chain(ptr noundef %fence) #8 align 16 !dbg !3372 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3374, metadata !DIExpression()), !dbg !3375
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !3376
  %ops = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1, !dbg !3377
  %1 = load ptr, ptr %ops, align 8, !dbg !3377
  %cmp = icmp eq ptr %1, @dma_fence_chain_ops, !dbg !3378
  ret i1 %cmp, !dbg !3379
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989}
!llvm.ident = !{!1990}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dma_fence_array_ops", scope: !2, file: !3, line: 162, type: !126, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma-buf/.dma-fence-array.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma-buf/dma-fence-array\22 -D KBUILD_BASENAME=\22dma_fence_array\22 -D KBUILD_MODNAME=\22dma_fence_array\22 -D __KBUILD_MODNAME=kmod_dma_fence_array -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma-buf/dma-fence-array.ll drivers/dma-buf/dma-fence-array.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !1957, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/dma-fence-array.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e9f8c6cbb67a09e9b5add32ab0b39e4")
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
!54 = !{!55, !56, !58, !1947, !1949, !1950, !1952, !1955, !189, !202, !1956}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !57, line: 154, baseType: !7)
!57 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_array_cb", file: !60, line: 23, size: 256, elements: !61)
!60 = !DIFile(filename: "./include/linux/dma-fence-array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c96d724a719bca3fee59864ce015357f")
!61 = !{!62, !201}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !59, file: !60, line: 24, baseType: !63, size: 192)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !38, line: 116, size: 192, elements: !64)
!64 = !{!65, !71}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !63, file: !38, line: 117, baseType: !66, size: 128)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !57, line: 190, size: 128, elements: !67)
!67 = !{!68, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !57, line: 191, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !57, line: 191, baseType: !69, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !63, file: !38, line: 118, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !38, line: 105, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76, !200}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !38, line: 65, size: 512, elements: !78)
!78 = !{!79, !124, !169, !183, !187, !188, !190, !199}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !77, file: !38, line: 66, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !82, line: 29, baseType: !83)
!82 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !82, line: 17, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !82, line: 18, baseType: !86, size: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !82, line: 18, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !86, file: !82, line: 19, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !90, line: 14, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !89, file: !90, line: 15, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !94, line: 44, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !94, line: 14, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !94, line: 15, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !94, line: 15, size: 32, elements: !99)
!99 = !{!100, !106, !116}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !98, file: !94, line: 16, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !57, line: 174, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 172, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !102, file: !57, line: 173, baseType: !105, size: 32)
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !94, line: 24, baseType: !107, size: 16)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !94, line: 24, size: 16, elements: !108)
!108 = !{!109, !115}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !107, file: !94, line: 25, baseType: !110, size: 8)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !111, line: 17, baseType: !112)
!111 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !113, line: 21, baseType: !114)
!113 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !107, file: !94, line: 26, baseType: !110, size: 8, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !94, line: 28, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !94, line: 28, size: 32, elements: !118)
!118 = !{!119, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !117, file: !94, line: 29, baseType: !120, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !111, line: 19, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !113, line: 24, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !117, file: !94, line: 30, baseType: !120, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !77, file: !38, line: 67, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !38, line: 125, size: 640, elements: !128)
!128 = !{!129, !132, !139, !140, !144, !145, !150, !154, !159, !160}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !127, file: !38, line: 132, baseType: !130, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !57, line: 35, baseType: !131)
!131 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !127, file: !38, line: 143, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !76}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !127, file: !38, line: 155, baseType: !133, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !127, file: !38, line: 192, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!130, !76}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !127, file: !38, line: 209, baseType: !141, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !127, file: !38, line: 227, baseType: !146, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !76, !130, !149}
!149 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !127, file: !38, line: 238, baseType: !151, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !76}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !127, file: !38, line: 248, baseType: !155, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !76, !158, !105}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !127, file: !38, line: 258, baseType: !155, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !127, file: !38, line: 279, baseType: !161, size: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !76, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !165, line: 29, baseType: !166)
!165 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !111, line: 22, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !113, line: 30, baseType: !168)
!168 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !38, line: 84, baseType: !170, size: 128, offset: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !38, line: 84, size: 128, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !170, file: !38, line: 85, baseType: !66, size: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !170, file: !38, line: 87, baseType: !164, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !170, file: !38, line: 89, baseType: !175, size: 128, align: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !57, line: 232, size: 128, align: 64, elements: !176)
!176 = !{!177, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !57, line: 233, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !175, file: !57, line: 234, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !178}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !77, file: !38, line: 91, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !111, line: 23, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !113, line: 31, baseType: !186)
!186 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !77, file: !38, line: 92, baseType: !184, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !38, line: 93, baseType: !189, size: 64, offset: 384)
!189 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !77, file: !38, line: 94, baseType: !191, size: 32, offset: 448)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !192, line: 19, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !191, file: !192, line: 20, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !30, line: 113, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !30, line: 111, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !196, file: !30, line: 112, baseType: !101, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !77, file: !38, line: 95, baseType: !105, size: 32, offset: 480)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !59, file: !60, line: 25, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_array", file: !60, line: 37, size: 960, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !211}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !203, file: !60, line: 38, baseType: !77, size: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !203, file: !60, line: 40, baseType: !81, size: 32, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !203, file: !60, line: 41, baseType: !7, size: 32, offset: 544)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "num_pending", scope: !203, file: !60, line: 42, baseType: !101, size: 32, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !203, file: !60, line: 43, baseType: !210, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !203, file: !60, line: 45, baseType: !212, size: 256, offset: 704)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !213, line: 17, size: 256, elements: !214)
!213 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!214 = !{!215, !232, !237}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !212, file: !213, line: 18, baseType: !216, size: 128)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !217, line: 58, size: 128, elements: !218)
!217 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!218 = !{!219, !225, !230, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !216, file: !217, line: 59, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !221, line: 60, size: 64, elements: !222)
!221 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !221, line: 61, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !217, line: 60, baseType: !226, size: 32, offset: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !217, line: 60, size: 32, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !226, file: !217, line: 61, baseType: !7, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !226, file: !217, line: 62, baseType: !101, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !216, file: !217, line: 65, baseType: !120, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !216, file: !217, line: 65, baseType: !120, size: 16, offset: 112)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !212, file: !213, line: 19, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !212, file: !213, line: 20, baseType: !238, size: 64, offset: 192)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !239, line: 16, size: 64, elements: !240)
!239 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !238, file: !239, line: 17, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !244, line: 746, size: 58368, elements: !245)
!244 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!245 = !{!246, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !324, !335, !435, !439, !442, !473, !474, !475, !476, !487, !489, !490, !491, !492, !493, !494, !505, !506, !509, !510, !511, !512, !513, !514, !515, !516, !523, !524, !531, !532, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !802, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !850, !852, !853, !854, !866, !868, !869, !870, !871, !872, !873, !879, !880, !881, !882, !883, !884, !885, !899, !905, !1100, !1101, !1102, !1103, !1107, !1110, !1117, !1122, !1125, !1128, !1131, !1134, !1279, !1310, !1311, !1312, !1313, !1314, !1315, !1318, !1319, !1320, !1323, !1324, !1325, !1334, !1342, !1343, !1344, !1345, !1346, !1351, !1352, !1353, !1356, !1357, !1360, !1363, !1366, !1369, !1372, !1373, !1460, !1461, !1462, !1463, !1464, !1470, !1471, !1472, !1473, !1476, !1477, !1480, !1483, !1484, !1487, !1488, !1489, !1492, !1493, !1494, !1497, !1498, !1499, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1531, !1534, !1602, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1614, !1686, !1688, !1689, !1690, !1691, !1692, !1704, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1722, !1723, !1724}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !243, file: !244, line: 752, baseType: !247, size: 192)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !248, line: 56, size: 192, elements: !249)
!248 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!249 = !{!250, !251, !252, !255}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !248, line: 57, baseType: !189, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !247, file: !248, line: 58, baseType: !189, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !247, file: !248, line: 59, baseType: !253, size: 32, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !111, line: 21, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !113, line: 27, baseType: !7)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !247, file: !248, line: 61, baseType: !253, size: 32, offset: 160)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !243, file: !244, line: 754, baseType: !7, size: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !243, file: !244, line: 767, baseType: !55, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !243, file: !244, line: 768, baseType: !195, size: 32, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !244, line: 770, baseType: !7, size: 32, offset: 352)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !243, file: !244, line: 771, baseType: !7, size: 32, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !243, file: !244, line: 774, baseType: !105, size: 32, offset: 416)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !243, file: !244, line: 775, baseType: !216, size: 128, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !243, file: !244, line: 776, baseType: !7, size: 32, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !243, file: !244, line: 777, baseType: !189, size: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !243, file: !244, line: 778, baseType: !242, size: 64, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !243, file: !244, line: 787, baseType: !105, size: 32, offset: 768)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !243, file: !244, line: 788, baseType: !105, size: 32, offset: 800)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !243, file: !244, line: 790, baseType: !105, size: 32, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !243, file: !244, line: 792, baseType: !105, size: 32, offset: 864)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !243, file: !244, line: 793, baseType: !105, size: 32, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !243, file: !244, line: 794, baseType: !105, size: 32, offset: 928)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !243, file: !244, line: 795, baseType: !7, size: 32, offset: 960)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !243, file: !244, line: 797, baseType: !274, size: 2048, offset: 1024)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !244, line: 551, size: 2048, elements: !275)
!275 = !{!276, !281, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !303, !306, !307, !308}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !274, file: !244, line: 553, baseType: !277, size: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !244, line: 411, size: 128, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !277, file: !244, line: 412, baseType: !189, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !277, file: !244, line: 413, baseType: !253, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !274, file: !244, line: 554, baseType: !282, size: 192, align: 64, offset: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !283, line: 5, size: 192, align: 64, elements: !284)
!283 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!284 = !{!285, !286, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !282, file: !283, line: 6, baseType: !189, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !282, file: !283, line: 7, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !282, file: !283, line: 8, baseType: !287, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !274, file: !244, line: 555, baseType: !184, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !274, file: !244, line: 556, baseType: !184, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !274, file: !244, line: 558, baseType: !66, size: 128, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !274, file: !244, line: 559, baseType: !7, size: 32, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !274, file: !244, line: 561, baseType: !184, size: 64, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !274, file: !244, line: 562, baseType: !184, size: 64, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !274, file: !244, line: 563, baseType: !184, size: 64, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !274, file: !244, line: 564, baseType: !184, size: 64, offset: 832)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !274, file: !244, line: 565, baseType: !166, size: 64, offset: 896)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !274, file: !244, line: 566, baseType: !184, size: 64, offset: 960)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !274, file: !244, line: 568, baseType: !184, size: 64, offset: 1024)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !274, file: !244, line: 571, baseType: !105, size: 32, offset: 1088)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !244, line: 572, baseType: !302, size: 64, offset: 1152)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !274, file: !244, line: 574, baseType: !304, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !244, line: 49, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !274, file: !244, line: 576, baseType: !304, size: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !274, file: !244, line: 578, baseType: !189, size: 64, offset: 1344)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !274, file: !244, line: 588, baseType: !309, size: 512, align: 512, offset: 1536)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !244, line: 497, size: 512, align: 512, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !309, file: !244, line: 498, baseType: !184, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !309, file: !244, line: 499, baseType: !184, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !309, file: !244, line: 500, baseType: !184, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !309, file: !244, line: 501, baseType: !253, size: 32, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !309, file: !244, line: 502, baseType: !253, size: 32, offset: 224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !309, file: !244, line: 503, baseType: !189, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !309, file: !244, line: 504, baseType: !189, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !309, file: !244, line: 505, baseType: !189, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !309, file: !244, line: 506, baseType: !320, size: 64, align: 64, offset: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !244, line: 445, size: 64, align: 64, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !320, file: !244, line: 446, baseType: !7, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !320, file: !244, line: 447, baseType: !7, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !243, file: !244, line: 798, baseType: !325, size: 384, offset: 3072)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !244, line: 592, size: 384, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !325, file: !244, line: 593, baseType: !66, size: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !325, file: !244, line: 594, baseType: !189, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !325, file: !244, line: 595, baseType: !189, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !325, file: !244, line: 596, baseType: !7, size: 32, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !325, file: !244, line: 597, baseType: !122, size: 16, offset: 288)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !325, file: !244, line: 598, baseType: !122, size: 16, offset: 304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !325, file: !244, line: 600, baseType: !334, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !243, file: !244, line: 799, baseType: !336, size: 1792, offset: 3456)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !244, line: 610, size: 1792, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !432, !433}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !336, file: !244, line: 611, baseType: !282, size: 192, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !336, file: !244, line: 618, baseType: !184, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !336, file: !244, line: 619, baseType: !184, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !336, file: !244, line: 620, baseType: !184, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !336, file: !244, line: 621, baseType: !184, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !336, file: !244, line: 622, baseType: !184, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !336, file: !244, line: 629, baseType: !166, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !336, file: !244, line: 630, baseType: !184, size: 64, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !244, line: 631, baseType: !7, size: 32, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !336, file: !244, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !336, file: !244, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !336, file: !244, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !336, file: !244, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !336, file: !244, line: 662, baseType: !352, size: 512, offset: 704)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !353)
!353 = !{!354, !360, !361, !366, !428, !429, !430, !431}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !6, line: 119, baseType: !355, size: 256)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !356, line: 9, size: 256, elements: !357)
!356 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !356, line: 10, baseType: !282, size: 192, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !355, file: !356, line: 11, baseType: !164, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !352, file: !6, line: 120, baseType: !164, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !352, file: !6, line: 121, baseType: !362, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!5, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !352, file: !6, line: 122, baseType: !367, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !369)
!369 = !{!370, !396, !397, !401, !411, !412, !423, !427}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !368, file: !6, line: 160, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !373)
!373 = !{!374, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !372, file: !6, line: 216, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !90, line: 23, baseType: !89)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !372, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !372, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !372, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !372, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !372, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !372, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !372, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !372, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !372, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !372, file: !6, line: 227, baseType: !122, size: 16, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !372, file: !6, line: 228, baseType: !122, size: 16, offset: 208)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !372, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !372, file: !6, line: 235, baseType: !164, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !372, file: !6, line: 236, baseType: !365, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !372, file: !6, line: 237, baseType: !164, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !372, file: !6, line: 238, baseType: !365, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !372, file: !6, line: 239, baseType: !393, size: 4096, align: 512, offset: 512)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 4096, align: 512, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !368, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !368, file: !6, line: 162, baseType: !398, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !57, line: 32, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !400, line: 96, baseType: !105)
!400 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!401 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !368, file: !6, line: 163, baseType: !402, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !403, line: 274, baseType: !404)
!403 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !403, line: 274, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !404, file: !403, line: 274, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !403, line: 69, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !403, line: 64, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !408, file: !403, line: 65, baseType: !7, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !368, file: !6, line: 164, baseType: !365, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !368, file: !6, line: 165, baseType: !413, size: 128, offset: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !356, line: 14, size: 128, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !413, file: !356, line: 15, baseType: !416, size: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !283, line: 26, size: 128, elements: !417)
!417 = !{!418, !422}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !416, file: !283, line: 27, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !283, line: 12, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !419, file: !283, line: 13, baseType: !287, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !416, file: !283, line: 28, baseType: !287, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !368, file: !6, line: 166, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!164}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !368, file: !6, line: 167, baseType: !164, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !6, line: 123, baseType: !110, size: 8, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !352, file: !6, line: 124, baseType: !110, size: 8, offset: 456)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !352, file: !6, line: 125, baseType: !110, size: 8, offset: 464)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !352, file: !6, line: 126, baseType: !110, size: 8, offset: 472)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !336, file: !244, line: 671, baseType: !352, size: 512, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !336, file: !244, line: 679, baseType: !434, size: 64, offset: 1728)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !243, file: !244, line: 800, baseType: !436, size: 64, offset: 5248)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !244, line: 800, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !243, file: !244, line: 809, baseType: !440, size: 64, offset: 5312)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !244, line: 70, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !243, file: !244, line: 825, baseType: !443, size: 2048, align: 512, offset: 5632)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !244, line: 509, size: 2048, align: 512, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !443, file: !244, line: 511, baseType: !184, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !443, file: !244, line: 512, baseType: !184, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !443, file: !244, line: 513, baseType: !184, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !443, file: !244, line: 514, baseType: !184, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !443, file: !244, line: 515, baseType: !184, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !443, file: !244, line: 516, baseType: !184, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !443, file: !244, line: 518, baseType: !184, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !443, file: !244, line: 519, baseType: !184, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !443, file: !244, line: 520, baseType: !166, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !443, file: !244, line: 522, baseType: !184, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !443, file: !244, line: 523, baseType: !184, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !443, file: !244, line: 524, baseType: !166, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !443, file: !244, line: 526, baseType: !166, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !443, file: !244, line: 527, baseType: !184, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !443, file: !244, line: 529, baseType: !184, size: 64, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !443, file: !244, line: 530, baseType: !184, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !443, file: !244, line: 531, baseType: !184, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !443, file: !244, line: 532, baseType: !184, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !443, file: !244, line: 533, baseType: !184, size: 64, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !443, file: !244, line: 535, baseType: !184, size: 64, offset: 1216)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !443, file: !244, line: 536, baseType: !184, size: 64, offset: 1280)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !443, file: !244, line: 537, baseType: !184, size: 64, offset: 1344)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !443, file: !244, line: 538, baseType: !184, size: 64, offset: 1408)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !443, file: !244, line: 539, baseType: !184, size: 64, offset: 1472)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !443, file: !244, line: 540, baseType: !184, size: 64, offset: 1536)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !443, file: !244, line: 541, baseType: !184, size: 64, offset: 1600)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !443, file: !244, line: 542, baseType: !184, size: 64, offset: 1664)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !443, file: !244, line: 543, baseType: !184, size: 64, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !243, file: !244, line: 833, baseType: !7, size: 32, offset: 7680)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !243, file: !244, line: 836, baseType: !7, size: 32, offset: 7712)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !243, file: !244, line: 837, baseType: !105, size: 32, offset: 7744)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !243, file: !244, line: 838, baseType: !477, size: 64, offset: 7808)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !480, line: 19, baseType: !481)
!480 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !480, line: 19, size: 64, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !481, file: !480, line: 19, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 1)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !243, file: !244, line: 839, baseType: !488, size: 64, offset: 7872)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !243, file: !244, line: 840, baseType: !479, size: 64, offset: 7936)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !243, file: !244, line: 841, baseType: !55, size: 64, offset: 8000)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !243, file: !244, line: 843, baseType: !122, size: 16, offset: 8064)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !243, file: !244, line: 845, baseType: !122, size: 16, offset: 8080)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !243, file: !244, line: 848, baseType: !105, size: 32, offset: 8096)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !243, file: !244, line: 849, baseType: !495, size: 32, offset: 8128)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !244, line: 718, size: 32, elements: !496)
!496 = !{!497, !504}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !495, file: !244, line: 724, baseType: !498, size: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !495, file: !244, line: 719, size: 32, elements: !499)
!499 = !{!500, !501, !502, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !498, file: !244, line: 720, baseType: !110, size: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !498, file: !244, line: 721, baseType: !110, size: 8, offset: 8)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !498, file: !244, line: 722, baseType: !110, size: 8, offset: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !498, file: !244, line: 723, baseType: !110, size: 8, offset: 24)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !495, file: !244, line: 725, baseType: !253, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !243, file: !244, line: 850, baseType: !66, size: 128, offset: 8192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !243, file: !244, line: 851, baseType: !507, size: 64, offset: 8320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !244, line: 60, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !243, file: !244, line: 855, baseType: !189, size: 64, offset: 8384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !243, file: !244, line: 856, baseType: !110, size: 8, offset: 8448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !243, file: !244, line: 857, baseType: !110, size: 8, offset: 8456)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !243, file: !244, line: 858, baseType: !105, size: 32, offset: 8480)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !243, file: !244, line: 859, baseType: !66, size: 128, offset: 8512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !243, file: !244, line: 860, baseType: !105, size: 32, offset: 8640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !243, file: !244, line: 861, baseType: !66, size: 128, offset: 8704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !243, file: !244, line: 873, baseType: !517, size: 256, offset: 8832)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !244, line: 376, size: 256, elements: !518)
!518 = !{!519, !520, !521, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !517, file: !244, line: 381, baseType: !189, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !517, file: !244, line: 384, baseType: !186, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !517, file: !244, line: 389, baseType: !186, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !517, file: !244, line: 392, baseType: !186, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !243, file: !244, line: 875, baseType: !66, size: 128, offset: 9088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !243, file: !244, line: 877, baseType: !525, size: 320, offset: 9216)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !526, line: 86, size: 320, elements: !527)
!526 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!527 = !{!528, !529, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !525, file: !526, line: 87, baseType: !105, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !525, file: !526, line: 88, baseType: !66, size: 128, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !525, file: !526, line: 89, baseType: !66, size: 128, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !243, file: !244, line: 878, baseType: !282, size: 192, align: 64, offset: 9536)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !243, file: !244, line: 881, baseType: !533, size: 64, offset: 9728)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !535, line: 733, size: 10240, elements: !536)
!535 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!536 = !{!537, !719}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !535, line: 734, baseType: !538, size: 10240)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !534, file: !535, line: 734, size: 10240, elements: !539)
!539 = !{!540, !544, !558, !565, !566, !567, !568, !569, !570, !578, !579, !580, !586, !587, !594, !595, !596, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !637, !651, !654, !686, !687, !688, !691, !694, !695, !698, !699, !700, !706, !707}
!540 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !535, line: 739, baseType: !541, size: 512, align: 512)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !538, file: !535, line: 739, size: 512, align: 512, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !541, file: !535, line: 747, baseType: !101, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !538, file: !535, line: 750, baseType: !545, size: 128, offset: 512)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !546, line: 218, size: 128, elements: !547)
!546 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!547 = !{!548, !556, !557}
!548 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !546, line: 219, baseType: !549, size: 32)
!549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !546, line: 219, size: 32, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !549, file: !546, line: 220, baseType: !81, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !549, file: !546, line: 221, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !546, line: 197, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 197, elements: !555)
!555 = !{}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !545, file: !546, line: 223, baseType: !7, size: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !545, file: !546, line: 224, baseType: !55, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !538, file: !535, line: 752, baseType: !559, size: 64, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!189, !562, !189, !189, !189, !189}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !564, line: 537, flags: DIFlagFwdDecl)
!564 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !538, file: !535, line: 756, baseType: !189, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !538, file: !535, line: 757, baseType: !189, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !538, file: !535, line: 760, baseType: !189, size: 64, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !538, file: !535, line: 761, baseType: !189, size: 64, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !538, file: !535, line: 763, baseType: !189, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !538, file: !535, line: 764, baseType: !571, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !564, line: 299, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 299, size: 64, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !573, file: !564, line: 299, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !577, line: 18, baseType: !189)
!577 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !538, file: !535, line: 773, baseType: !101, size: 32, offset: 1088)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !538, file: !535, line: 785, baseType: !101, size: 32, offset: 1120)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !538, file: !535, line: 795, baseType: !581, size: 64, offset: 1152)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !535, line: 726, size: 128, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !582, file: !535, line: 727, baseType: !184, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !582, file: !535, line: 728, baseType: !105, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !538, file: !535, line: 801, baseType: !189, size: 64, offset: 1216)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !538, file: !535, line: 804, baseType: !588, size: 64, offset: 1280)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !589, line: 13, baseType: !590)
!589 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !57, line: 181, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 179, size: 64, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !591, file: !57, line: 180, baseType: !166, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !538, file: !535, line: 806, baseType: !105, size: 32, offset: 1344)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !538, file: !535, line: 808, baseType: !81, size: 32, offset: 1376)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !538, file: !535, line: 823, baseType: !597, size: 320, offset: 1408)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !598, line: 48, size: 320, elements: !599)
!598 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!599 = !{!600, !601, !602, !607, !608}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !597, file: !598, line: 49, baseType: !588, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !597, file: !598, line: 55, baseType: !588, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !597, file: !598, line: 57, baseType: !603, size: 32, offset: 128)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !604, line: 15, size: 32, elements: !605)
!604 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !603, file: !604, line: 20, baseType: !101, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !597, file: !598, line: 59, baseType: !375, size: 32, offset: 160)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !597, file: !598, line: 60, baseType: !66, size: 128, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !538, file: !535, line: 825, baseType: !66, size: 128, offset: 1728)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !538, file: !535, line: 845, baseType: !105, size: 32, offset: 1856)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !538, file: !535, line: 849, baseType: !189, size: 64, offset: 1920)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !538, file: !535, line: 850, baseType: !189, size: 64, offset: 1984)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !538, file: !535, line: 852, baseType: !189, size: 64, offset: 2048)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !538, file: !535, line: 853, baseType: !189, size: 64, offset: 2112)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !538, file: !535, line: 854, baseType: !590, size: 64, offset: 2176)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !538, file: !535, line: 855, baseType: !189, size: 64, offset: 2240)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !538, file: !535, line: 856, baseType: !189, size: 64, offset: 2304)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !538, file: !535, line: 857, baseType: !189, size: 64, offset: 2368)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !538, file: !535, line: 858, baseType: !189, size: 64, offset: 2432)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !538, file: !535, line: 865, baseType: !407, size: 32, offset: 2496)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !538, file: !535, line: 867, baseType: !81, size: 32, offset: 2528)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !538, file: !535, line: 869, baseType: !189, size: 64, offset: 2560)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !538, file: !535, line: 869, baseType: !189, size: 64, offset: 2624)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !538, file: !535, line: 869, baseType: !189, size: 64, offset: 2688)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !538, file: !535, line: 869, baseType: !189, size: 64, offset: 2752)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !538, file: !535, line: 870, baseType: !189, size: 64, offset: 2816)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !538, file: !535, line: 870, baseType: !189, size: 64, offset: 2880)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !538, file: !535, line: 870, baseType: !189, size: 64, offset: 2944)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !538, file: !535, line: 871, baseType: !189, size: 64, offset: 3008)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !538, file: !535, line: 871, baseType: !189, size: 64, offset: 3072)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !538, file: !535, line: 871, baseType: !189, size: 64, offset: 3136)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !538, file: !535, line: 871, baseType: !189, size: 64, offset: 3200)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !538, file: !535, line: 873, baseType: !634, size: 3328, offset: 3264)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 3328, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 52)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !538, file: !535, line: 875, baseType: !638, size: 1280, offset: 6592)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 1280, elements: !649)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !640, line: 22, size: 320, elements: !641)
!640 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!641 = !{!642, !643, !644, !645}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !639, file: !640, line: 23, baseType: !375, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !639, file: !640, line: 24, baseType: !166, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !639, file: !640, line: 26, baseType: !66, size: 128, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !639, file: !640, line: 28, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !111, line: 20, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !113, line: 26, baseType: !105)
!649 = !{!650}
!650 = !DISubrange(count: 4)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !538, file: !535, line: 877, baseType: !652, size: 64, offset: 7872)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !535, line: 877, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !538, file: !535, line: 880, baseType: !655, size: 1088, offset: 7936)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !656, line: 72, baseType: !657)
!656 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 23, size: 1088, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !666, !667, !675, !676, !680, !681, !682}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !657, file: !656, line: 28, baseType: !184, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !657, file: !656, line: 38, baseType: !590, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !657, file: !656, line: 40, baseType: !189, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !657, file: !656, line: 43, baseType: !597, size: 320, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !657, file: !656, line: 44, baseType: !664, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !656, line: 44, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !656, line: 48, baseType: !189, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !657, file: !656, line: 59, baseType: !668, size: 256, offset: 640)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !669, line: 66, size: 256, elements: !670)
!669 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!670 = !{!671, !672, !673, !674}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !668, file: !669, line: 67, baseType: !588, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !668, file: !669, line: 68, baseType: !375, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !668, file: !669, line: 70, baseType: !603, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !668, file: !669, line: 72, baseType: !66, size: 128, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !657, file: !656, line: 60, baseType: !55, size: 64, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !657, file: !656, line: 61, baseType: !677, size: 64, offset: 960)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !656, line: 61, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !657, file: !656, line: 63, baseType: !101, size: 32, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !657, file: !656, line: 69, baseType: !120, size: 16, offset: 1056)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !657, file: !656, line: 70, baseType: !683, size: 16, offset: 1072)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !111, line: 18, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !113, line: 23, baseType: !685)
!685 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !535, line: 882, baseType: !189, size: 64, offset: 9024)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !538, file: !535, line: 885, baseType: !81, size: 32, offset: 9088)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !538, file: !535, line: 886, baseType: !689, size: 64, offset: 9152)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !535, line: 732, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !538, file: !535, line: 901, baseType: !692, size: 64, offset: 9216)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !535, line: 901, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !538, file: !535, line: 904, baseType: !562, size: 64, offset: 9280)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !538, file: !535, line: 906, baseType: !696, size: 64, offset: 9344)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !535, line: 906, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !538, file: !535, line: 930, baseType: !101, size: 32, offset: 9408)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !538, file: !535, line: 933, baseType: !101, size: 32, offset: 9440)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !538, file: !535, line: 935, baseType: !701, size: 64, offset: 9472)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !701, file: !18, line: 104, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !538, file: !535, line: 940, baseType: !588, size: 64, offset: 9536)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !538, file: !535, line: 942, baseType: !708, size: 256, offset: 9600)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !709, line: 98, size: 256, elements: !710)
!709 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !708, file: !709, line: 99, baseType: !588, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !708, file: !709, line: 100, baseType: !66, size: 128, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !708, file: !709, line: 101, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !709, line: 21, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !534, file: !535, line: 986, baseType: !720, offset: 10240)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: -1)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !243, file: !244, line: 882, baseType: !533, size: 64, offset: 9792)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !243, file: !244, line: 884, baseType: !105, size: 32, offset: 9856)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !243, file: !244, line: 885, baseType: !105, size: 32, offset: 9888)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !243, file: !244, line: 886, baseType: !105, size: 32, offset: 9920)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !243, file: !244, line: 888, baseType: !105, size: 32, offset: 9952)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !243, file: !244, line: 890, baseType: !189, size: 64, offset: 9984)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !243, file: !244, line: 893, baseType: !7, size: 32, offset: 10048)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !243, file: !244, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !243, file: !244, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !243, file: !244, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !243, file: !244, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !243, file: !244, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !243, file: !244, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !243, file: !244, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !243, file: !244, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !243, file: !244, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !243, file: !244, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !243, file: !244, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !243, file: !244, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !243, file: !244, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !243, file: !244, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !243, file: !244, line: 969, baseType: !189, size: 64, offset: 10176)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !243, file: !244, line: 971, baseType: !746, size: 448, offset: 10240)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !747)
!747 = !{!748, !749, !754}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !746, file: !12, line: 26, baseType: !189, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !746, file: !12, line: 27, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!149, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !12, line: 28, baseType: !755, size: 320, offset: 128)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !12, line: 28, size: 320, elements: !756)
!756 = !{!757, !767, !792}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !755, file: !12, line: 37, baseType: !758, size: 320)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !12, line: 30, size: 320, elements: !759)
!759 = !{!760, !762, !763, !764, !765, !766}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !758, file: !12, line: 31, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !758, file: !12, line: 32, baseType: !253, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !12, line: 33, baseType: !253, size: 32, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !758, file: !12, line: 34, baseType: !253, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !758, file: !12, line: 35, baseType: !184, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !758, file: !12, line: 36, baseType: !761, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !755, file: !12, line: 47, baseType: !768, size: 192)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !12, line: 39, size: 192, elements: !769)
!769 = !{!770, !771, !772, !791}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !768, file: !12, line: 40, baseType: !398, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !12, line: 42, baseType: !773, size: 64, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !12, line: 42, size: 64, elements: !774)
!774 = !{!775, !783}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !773, file: !12, line: 43, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !778, line: 7, size: 128, elements: !779)
!778 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!779 = !{!780, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !777, file: !778, line: 8, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !400, line: 93, baseType: !168)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !777, file: !778, line: 9, baseType: !168, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !773, file: !12, line: 44, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !786, line: 7, size: 64, elements: !787)
!786 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!787 = !{!788, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !785, file: !786, line: 8, baseType: !789, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !786, line: 5, baseType: !647)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !785, file: !786, line: 9, baseType: !647, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !768, file: !12, line: 46, baseType: !184, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !755, file: !12, line: 55, baseType: !793, size: 256)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !12, line: 49, size: 256, elements: !794)
!794 = !{!795, !798, !799, !800, !801}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !793, file: !12, line: 50, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !793, file: !12, line: 51, baseType: !105, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !793, file: !12, line: 52, baseType: !105, size: 32, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !793, file: !12, line: 53, baseType: !189, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !793, file: !12, line: 54, baseType: !189, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !243, file: !244, line: 973, baseType: !803, size: 32, offset: 10688)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !57, line: 27, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !400, line: 28, baseType: !105)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !243, file: !244, line: 974, baseType: !803, size: 32, offset: 10720)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !243, file: !244, line: 978, baseType: !189, size: 64, offset: 10752)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !243, file: !244, line: 987, baseType: !242, size: 64, offset: 10816)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !243, file: !244, line: 990, baseType: !242, size: 64, offset: 10880)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !243, file: !244, line: 995, baseType: !66, size: 128, offset: 10944)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !243, file: !244, line: 996, baseType: !66, size: 128, offset: 11072)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !243, file: !244, line: 997, baseType: !242, size: 64, offset: 11200)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !243, file: !244, line: 1005, baseType: !66, size: 128, offset: 11264)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !243, file: !244, line: 1006, baseType: !66, size: 128, offset: 11392)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !243, file: !244, line: 1009, baseType: !815, size: 64, offset: 11520)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !817, line: 59, size: 768, elements: !818)
!817 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!818 = !{!819, !820, !821, !822, !833, !834, !841, !842}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !816, file: !817, line: 61, baseType: !195, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !816, file: !817, line: 62, baseType: !7, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !816, file: !817, line: 63, baseType: !81, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !816, file: !817, line: 65, baseType: !823, size: 256, offset: 128)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 256, elements: !649)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !57, line: 194, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !824, file: !57, line: 195, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !57, line: 198, size: 128, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !57, line: 199, baseType: !827, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !828, file: !57, line: 199, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !816, file: !817, line: 66, baseType: !824, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !816, file: !817, line: 68, baseType: !835, size: 192, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !836, line: 41, baseType: !837)
!836 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !836, line: 37, size: 192, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !836, line: 38, baseType: !81, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !837, file: !836, line: 39, baseType: !66, size: 128, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !816, file: !817, line: 69, baseType: !175, size: 128, align: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !816, file: !817, line: 70, baseType: !843, offset: 768)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, elements: !721)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !817, line: 54, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !844, file: !817, line: 55, baseType: !105, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !844, file: !817, line: 56, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !817, line: 56, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !243, file: !244, line: 1010, baseType: !851, size: 512, offset: 11584)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 512, elements: !649)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !243, file: !244, line: 1011, baseType: !66, size: 128, offset: 12096)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !243, file: !244, line: 1012, baseType: !66, size: 128, offset: 12224)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !243, file: !244, line: 1014, baseType: !855, size: 64, offset: 12352)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !857, line: 26, size: 256, elements: !858)
!857 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !856, file: !857, line: 27, baseType: !7, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !856, file: !857, line: 28, baseType: !861, size: 192, offset: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !862, line: 43, size: 192, elements: !863)
!862 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !861, file: !862, line: 44, baseType: !375, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !861, file: !862, line: 45, baseType: !66, size: 128, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !243, file: !244, line: 1017, baseType: !867, size: 64, offset: 12416)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !243, file: !244, line: 1020, baseType: !867, size: 64, offset: 12480)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !243, file: !244, line: 1023, baseType: !55, size: 64, offset: 12544)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !243, file: !244, line: 1025, baseType: !184, size: 64, offset: 12608)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !243, file: !244, line: 1026, baseType: !184, size: 64, offset: 12672)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !243, file: !244, line: 1031, baseType: !184, size: 64, offset: 12736)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !243, file: !244, line: 1032, baseType: !874, size: 192, offset: 12800)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !244, line: 324, size: 192, elements: !875)
!875 = !{!876, !877, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !874, file: !244, line: 326, baseType: !184, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !874, file: !244, line: 327, baseType: !184, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !874, file: !244, line: 328, baseType: !375, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !243, file: !244, line: 1041, baseType: !189, size: 64, offset: 12992)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !243, file: !244, line: 1042, baseType: !189, size: 64, offset: 13056)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !243, file: !244, line: 1045, baseType: !184, size: 64, offset: 13120)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !243, file: !244, line: 1048, baseType: !184, size: 64, offset: 13184)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !243, file: !244, line: 1051, baseType: !189, size: 64, offset: 13248)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !243, file: !244, line: 1052, baseType: !189, size: 64, offset: 13312)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !243, file: !244, line: 1055, baseType: !886, size: 640, offset: 13376)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !887, line: 132, size: 640, elements: !888)
!887 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!888 = !{!889, !897, !898}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !886, file: !887, line: 133, baseType: !890, size: 576)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 576, elements: !895)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !887, line: 117, size: 192, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !891, file: !887, line: 118, baseType: !184, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !891, file: !887, line: 119, baseType: !413, size: 128, offset: 64)
!895 = !{!896}
!896 = !DISubrange(count: 3)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !886, file: !887, line: 134, baseType: !7, size: 32, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !886, file: !887, line: 135, baseType: !7, size: 32, offset: 608)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !243, file: !244, line: 1058, baseType: !900, size: 448, offset: 14016)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !887, line: 144, size: 448, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !900, file: !887, line: 145, baseType: !175, size: 128, align: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !900, file: !887, line: 146, baseType: !668, size: 256, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !900, file: !887, line: 147, baseType: !7, size: 32, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !243, file: !244, line: 1064, baseType: !906, size: 64, offset: 14464)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !909, line: 110, size: 1472, elements: !910)
!909 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!910 = !{!911, !912, !920, !927, !928, !929, !930, !931, !932, !933, !934, !940, !941, !942, !943, !944, !945, !1055, !1056, !1057, !1058, !1059, !1082, !1083, !1087, !1095}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !908, file: !909, line: 111, baseType: !588, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !908, file: !909, line: 112, baseType: !913, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !914, line: 23, baseType: !915)
!914 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !914, line: 21, size: 32, elements: !916)
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !915, file: !914, line: 22, baseType: !918, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !57, line: 37, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !400, line: 49, baseType: !7)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !908, file: !909, line: 113, baseType: !921, size: 32, offset: 96)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !914, line: 28, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !914, line: 26, size: 32, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !922, file: !914, line: 27, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !57, line: 38, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !400, line: 50, baseType: !7)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !908, file: !909, line: 114, baseType: !913, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !908, file: !909, line: 115, baseType: !921, size: 32, offset: 160)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !908, file: !909, line: 116, baseType: !913, size: 32, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !908, file: !909, line: 117, baseType: !921, size: 32, offset: 224)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !908, file: !909, line: 118, baseType: !913, size: 32, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !908, file: !909, line: 119, baseType: !921, size: 32, offset: 288)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !908, file: !909, line: 120, baseType: !7, size: 32, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !908, file: !909, line: 121, baseType: !935, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !936, line: 24, baseType: !937)
!936 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !936, line: 24, size: 64, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !937, file: !936, line: 24, baseType: !184, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !908, file: !909, line: 122, baseType: !935, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !908, file: !909, line: 123, baseType: !935, size: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !908, file: !909, line: 124, baseType: !935, size: 64, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !908, file: !909, line: 125, baseType: !935, size: 64, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !908, file: !909, line: 127, baseType: !114, size: 8, offset: 704)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !908, file: !909, line: 129, baseType: !946, size: 64, offset: 768)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !948, line: 195, size: 1728, elements: !949)
!948 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!949 = !{!950, !951, !954, !959, !960, !963, !964, !971, !972, !973, !974, !977, !978, !979, !980, !981, !1019, !1040}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !947, file: !948, line: 196, baseType: !195, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !947, file: !948, line: 197, baseType: !952, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !948, line: 28, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !57, line: 104, baseType: !647)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !948, line: 198, baseType: !955, size: 192, offset: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !948, line: 198, size: 192, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !955, file: !948, line: 199, baseType: !66, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !955, file: !948, line: 200, baseType: !282, size: 192, align: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !947, file: !948, line: 205, baseType: !597, size: 320, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !947, file: !948, line: 206, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !948, line: 206, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !947, file: !948, line: 207, baseType: !55, size: 64, offset: 640)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !948, line: 208, baseType: !965, size: 64, offset: 704)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !948, line: 208, size: 64, elements: !966)
!966 = !{!967, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !965, file: !948, line: 209, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !969, line: 8, baseType: !167)
!969 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!970 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !965, file: !948, line: 210, baseType: !968, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !947, file: !948, line: 212, baseType: !968, size: 64, offset: 768)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !947, file: !948, line: 213, baseType: !913, size: 32, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !947, file: !948, line: 214, baseType: !921, size: 32, offset: 864)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !947, file: !948, line: 215, baseType: !975, size: 32, offset: 896)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !948, line: 31, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !57, line: 110, baseType: !253)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !947, file: !948, line: 216, baseType: !122, size: 16, offset: 928)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !947, file: !948, line: 217, baseType: !122, size: 16, offset: 944)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !947, file: !948, line: 221, baseType: !685, size: 16, offset: 960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !947, file: !948, line: 228, baseType: !189, size: 64, offset: 1024)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !948, line: 245, baseType: !982, size: 320, offset: 1088)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !948, line: 245, size: 320, elements: !983)
!983 = !{!984, !1011}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !982, file: !948, line: 246, baseType: !985, size: 320)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !948, line: 114, size: 320, elements: !986)
!986 = !{!987, !988, !1000, !1003, !1010}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !985, file: !948, line: 116, baseType: !189, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !948, line: 117, baseType: !989, size: 64, offset: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !948, line: 117, size: 64, elements: !990)
!990 = !{!991, !999}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !948, line: 118, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !948, line: 118, size: 64, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !992, file: !948, line: 120, baseType: !120, size: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !992, file: !948, line: 121, baseType: !996, size: 48, offset: 16)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 48, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 6)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !989, file: !948, line: 127, baseType: !189, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !985, file: !948, line: 129, baseType: !1001, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !948, line: 102, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !985, file: !948, line: 130, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !948, line: 108, size: 192, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1005, file: !948, line: 109, baseType: !175, size: 128, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1005, file: !948, line: 110, baseType: !195, size: 32, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1005, file: !948, line: 111, baseType: !130, size: 8, offset: 160)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !985, file: !948, line: 131, baseType: !136, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !948, line: 247, baseType: !1012, size: 320)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !948, line: 247, size: 320, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1012, file: !948, line: 248, baseType: !189, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1012, file: !948, line: 249, baseType: !189, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1012, file: !948, line: 250, baseType: !1001, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1012, file: !948, line: 251, baseType: !1004, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1012, file: !948, line: 252, baseType: !158, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !948, line: 260, baseType: !1020, size: 256, offset: 1408)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !948, line: 260, size: 256, elements: !1021)
!1021 = !{!1022, !1028}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1020, file: !948, line: 261, baseType: !1023, size: 256)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !948, line: 134, size: 256, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1023, file: !948, line: 135, baseType: !55, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1023, file: !948, line: 136, baseType: !1027, size: 256)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !649)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !948, line: 262, baseType: !1029, size: 256)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !948, line: 262, size: 256, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1029, file: !948, line: 264, baseType: !66, size: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1029, file: !948, line: 265, baseType: !1033, size: 128, offset: 128)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1034, line: 22, size: 128, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1035 = !{!1036, !1039}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1033, file: !1034, line: 23, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1034, line: 23, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1033, file: !1034, line: 24, baseType: !189, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !947, file: !948, line: 280, baseType: !1041, size: 64, offset: 1664)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !948, line: 176, size: 192, elements: !1043)
!1043 = !{!1044, !1053, !1054}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1042, file: !948, line: 177, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !948, line: 171, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!105, !946, !1049, !1051, !946}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1042, file: !948, line: 178, baseType: !946, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1042, file: !948, line: 179, baseType: !1001, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !908, file: !909, line: 130, baseType: !946, size: 64, offset: 832)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !908, file: !909, line: 131, baseType: !946, size: 64, offset: 896)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !908, file: !909, line: 132, baseType: !946, size: 64, offset: 960)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !908, file: !909, line: 135, baseType: !55, size: 64, offset: 1024)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !908, file: !909, line: 137, baseType: !1060, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1062, line: 14, size: 1088, elements: !1063)
!1062 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1061, file: !1062, line: 15, baseType: !195, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1061, file: !1062, line: 17, baseType: !639, size: 320, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1061, file: !1062, line: 19, baseType: !189, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1061, file: !1062, line: 20, baseType: !588, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1061, file: !1062, line: 23, baseType: !828, size: 128, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1061, file: !1062, line: 24, baseType: !913, size: 32, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1061, file: !1062, line: 29, baseType: !588, size: 64, offset: 704)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1061, file: !1062, line: 36, baseType: !1072, size: 320, offset: 768)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1073, line: 15, size: 320, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !1073, line: 16, baseType: !375, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1072, file: !1073, line: 18, baseType: !105, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1072, file: !1073, line: 19, baseType: !105, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1072, file: !1073, line: 20, baseType: !105, size: 32, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1072, file: !1073, line: 21, baseType: !105, size: 32, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1072, file: !1073, line: 22, baseType: !189, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !1073, line: 23, baseType: !189, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !908, file: !909, line: 138, baseType: !692, size: 64, offset: 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !908, file: !909, line: 139, baseType: !1084, size: 64, offset: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1086, line: 16, flags: DIFlagFwdDecl)
!1086 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !908, file: !909, line: 140, baseType: !1088, size: 64, offset: 1280)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !909, line: 25, size: 64, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1089, file: !909, line: 26, baseType: !101, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1089, file: !909, line: 27, baseType: !105, size: 32, offset: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1089, file: !909, line: 28, baseType: !1094, offset: 64)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, elements: !721)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !909, line: 142, baseType: !1096, size: 128, offset: 1344)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !909, line: 142, size: 128, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1096, file: !909, line: 143, baseType: !105, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1096, file: !909, line: 144, baseType: !175, size: 128, align: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !243, file: !244, line: 1067, baseType: !906, size: 64, offset: 14528)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !243, file: !244, line: 1070, baseType: !906, size: 64, offset: 14592)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !243, file: !244, line: 1074, baseType: !946, size: 64, offset: 14656)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !243, file: !244, line: 1084, baseType: !1104, size: 128, offset: 14720)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 16)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !243, file: !244, line: 1086, baseType: !1108, size: 64, offset: 14848)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !244, line: 55, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !243, file: !244, line: 1089, baseType: !1111, size: 64, offset: 14912)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1112, line: 12, size: 64, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1111, file: !1112, line: 13, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1112, line: 8, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !243, file: !244, line: 1090, baseType: !1118, size: 128, offset: 14976)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1119, line: 13, size: 128, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1118, file: !1119, line: 14, baseType: !66, size: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !243, file: !244, line: 1097, baseType: !1123, size: 64, offset: 15104)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !244, line: 50, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !243, file: !244, line: 1100, baseType: !1126, size: 64, offset: 15168)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !244, line: 1100, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !243, file: !244, line: 1103, baseType: !1129, size: 64, offset: 15232)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !244, line: 53, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !243, file: !244, line: 1107, baseType: !1132, size: 64, offset: 15296)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !244, line: 56, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !243, file: !244, line: 1110, baseType: !1135, size: 64, offset: 15360)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1137, line: 93, size: 8768, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1188, !1197, !1198, !1200, !1201, !1202, !1205, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1247, !1248, !1256, !1266, !1269, !1270, !1273, !1274, !1275, !1276, !1277, !1278}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1136, file: !1137, line: 94, baseType: !195, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1136, file: !1137, line: 95, baseType: !101, size: 32, offset: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1136, file: !1137, line: 96, baseType: !105, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1136, file: !1137, line: 97, baseType: !105, size: 32, offset: 96)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1136, file: !1137, line: 98, baseType: !66, size: 128, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1136, file: !1137, line: 100, baseType: !835, size: 192, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1136, file: !1137, line: 103, baseType: !242, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1136, file: !1137, line: 106, baseType: !1147, size: 192, offset: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1086, line: 32, size: 192, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1147, file: !1086, line: 33, baseType: !66, size: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1147, file: !1086, line: 34, baseType: !1151, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1152, line: 25, baseType: !1153)
!1152 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1152, line: 23, size: 64, elements: !1154)
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1153, file: !1152, line: 24, baseType: !484, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1136, file: !1137, line: 109, baseType: !824, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1136, file: !1137, line: 112, baseType: !105, size: 32, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1136, file: !1137, line: 114, baseType: !105, size: 32, offset: 800)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1136, file: !1137, line: 115, baseType: !242, size: 64, offset: 832)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1136, file: !1137, line: 118, baseType: !105, size: 32, offset: 896)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !1137, line: 119, baseType: !7, size: 32, offset: 928)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1136, file: !1137, line: 121, baseType: !1163, size: 64, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1137, line: 80, size: 448, elements: !1165)
!1165 = !{!1166, !1167, !1173}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1164, file: !1137, line: 81, baseType: !101, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1164, file: !1137, line: 82, baseType: !1168, size: 128, offset: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1137, line: 75, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1168, file: !1137, line: 76, baseType: !242, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1168, file: !1137, line: 77, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1164, file: !1137, line: 83, baseType: !856, size: 256, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1136, file: !1137, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1136, file: !1137, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1136, file: !1137, line: 138, baseType: !7, size: 32, offset: 1056)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1136, file: !1137, line: 139, baseType: !66, size: 128, offset: 1088)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1136, file: !1137, line: 142, baseType: !352, size: 512, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1136, file: !1137, line: 143, baseType: !164, size: 64, offset: 1728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1136, file: !1137, line: 150, baseType: !1181, size: 256, offset: 1792)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 256, elements: !1186)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1137, line: 38, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1182, file: !1137, line: 39, baseType: !184, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1182, file: !1137, line: 40, baseType: !184, size: 64, offset: 64)
!1186 = !{!1187}
!1187 = !DISubrange(count: 2)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1136, file: !1137, line: 156, baseType: !1189, size: 192, offset: 2048)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1137, line: 66, size: 192, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1189, file: !1137, line: 67, baseType: !1192, size: 192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1137, line: 47, size: 192, elements: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1192, file: !1137, line: 48, baseType: !590, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1192, file: !1137, line: 49, baseType: !590, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1192, file: !1137, line: 50, baseType: !590, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1136, file: !1137, line: 160, baseType: !886, size: 640, offset: 2240)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1136, file: !1137, line: 163, baseType: !1199, size: 256, offset: 2880)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 256, elements: !649)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1136, file: !1137, line: 169, baseType: !815, size: 64, offset: 3136)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1136, file: !1137, line: 172, baseType: !105, size: 32, offset: 3200)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1136, file: !1137, line: 174, baseType: !1203, size: 64, offset: 3264)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1137, line: 174, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1136, file: !1137, line: 185, baseType: !1206, size: 64, offset: 3328)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !403, line: 860, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 853, size: 64, elements: !1208)
!1208 = !{!1209, !1214}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1207, file: !403, line: 858, baseType: !1210, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !403, line: 275, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !403, line: 275, size: 32, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1211, file: !403, line: 275, baseType: !407, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1207, file: !403, line: 859, baseType: !81, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1136, file: !1137, line: 186, baseType: !184, size: 64, offset: 3392)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1136, file: !1137, line: 186, baseType: !184, size: 64, offset: 3456)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1136, file: !1137, line: 186, baseType: !184, size: 64, offset: 3520)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1136, file: !1137, line: 186, baseType: !184, size: 64, offset: 3584)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1136, file: !1137, line: 187, baseType: !184, size: 64, offset: 3648)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1136, file: !1137, line: 188, baseType: !184, size: 64, offset: 3712)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1136, file: !1137, line: 189, baseType: !874, size: 192, offset: 3776)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1136, file: !1137, line: 190, baseType: !189, size: 64, offset: 3968)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1136, file: !1137, line: 190, baseType: !189, size: 64, offset: 4032)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1136, file: !1137, line: 190, baseType: !189, size: 64, offset: 4096)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1136, file: !1137, line: 190, baseType: !189, size: 64, offset: 4160)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1136, file: !1137, line: 191, baseType: !189, size: 64, offset: 4224)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1136, file: !1137, line: 191, baseType: !189, size: 64, offset: 4288)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1136, file: !1137, line: 191, baseType: !189, size: 64, offset: 4352)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1136, file: !1137, line: 191, baseType: !189, size: 64, offset: 4416)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1136, file: !1137, line: 192, baseType: !189, size: 64, offset: 4480)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1136, file: !1137, line: 192, baseType: !189, size: 64, offset: 4544)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1136, file: !1137, line: 192, baseType: !189, size: 64, offset: 4608)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1136, file: !1137, line: 192, baseType: !189, size: 64, offset: 4672)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1136, file: !1137, line: 193, baseType: !189, size: 64, offset: 4736)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1136, file: !1137, line: 193, baseType: !189, size: 64, offset: 4800)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1136, file: !1137, line: 194, baseType: !1237, size: 448, offset: 4864)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1238, line: 12, size: 448, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1237, file: !1238, line: 15, baseType: !184, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1237, file: !1238, line: 17, baseType: !184, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1237, file: !1238, line: 19, baseType: !184, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1237, file: !1238, line: 21, baseType: !184, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1237, file: !1238, line: 29, baseType: !184, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1237, file: !1238, line: 35, baseType: !184, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1237, file: !1238, line: 44, baseType: !184, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1136, file: !1137, line: 202, baseType: !186, size: 64, offset: 5312)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1136, file: !1137, line: 213, baseType: !1249, size: 2048, offset: 5376)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1250, size: 2048, elements: !1105)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1251, line: 43, size: 128, elements: !1252)
!1251 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1252 = !{!1253, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1250, file: !1251, line: 44, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !400, line: 16, baseType: !189)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1250, file: !1251, line: 45, baseType: !1254, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1136, file: !1137, line: 216, baseType: !1257, size: 448, offset: 7424)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1137, line: 30, size: 448, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1257, file: !1137, line: 31, baseType: !105, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1257, file: !1137, line: 32, baseType: !149, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1257, file: !1137, line: 33, baseType: !189, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1257, file: !1137, line: 34, baseType: !184, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1257, file: !1137, line: 34, baseType: !184, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1257, file: !1137, line: 35, baseType: !189, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1257, file: !1137, line: 35, baseType: !189, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1136, file: !1137, line: 219, baseType: !1267, size: 64, offset: 7872)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1137, line: 219, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1136, file: !1137, line: 222, baseType: !7, size: 32, offset: 7936)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1136, file: !1137, line: 223, baseType: !1271, size: 64, offset: 8000)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1137, line: 223, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1136, file: !1137, line: 230, baseType: !130, size: 8, offset: 8064)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1136, file: !1137, line: 231, baseType: !685, size: 16, offset: 8080)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1136, file: !1137, line: 232, baseType: !685, size: 16, offset: 8096)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1136, file: !1137, line: 234, baseType: !533, size: 64, offset: 8128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1136, file: !1137, line: 237, baseType: !668, size: 256, offset: 8192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1136, file: !1137, line: 243, baseType: !597, size: 320, offset: 8448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !243, file: !244, line: 1111, baseType: !1280, size: 64, offset: 15424)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1137, line: 20, size: 16640, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1281, file: !1137, line: 21, baseType: !81, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1281, file: !1137, line: 22, baseType: !195, size: 32, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1281, file: !1137, line: 23, baseType: !835, size: 192, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1281, file: !1137, line: 24, baseType: !1287, size: 16384, offset: 256)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 16384, elements: !1308)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1086, line: 51, size: 256, elements: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1288, file: !1086, line: 52, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1086, line: 37, size: 256, elements: !1292)
!1292 = !{!1293, !1300, !1301, !1307}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1291, file: !1086, line: 39, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1295, line: 83, baseType: !1296)
!1295 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1295, line: 82, baseType: !1298)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !105}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1291, file: !1086, line: 40, baseType: !189, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1291, file: !1086, line: 46, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1295, line: 86, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1295, line: 85, baseType: !1305)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1291, file: !1086, line: 48, baseType: !1151, size: 64, offset: 192)
!1308 = !{!1309}
!1309 = !DISubrange(count: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !243, file: !244, line: 1112, baseType: !1151, size: 64, offset: 15488)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !243, file: !244, line: 1113, baseType: !1151, size: 64, offset: 15552)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !243, file: !244, line: 1115, baseType: !1151, size: 64, offset: 15616)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !243, file: !244, line: 1116, baseType: !1147, size: 192, offset: 15680)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !243, file: !244, line: 1117, baseType: !189, size: 64, offset: 15872)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !243, file: !244, line: 1118, baseType: !1316, size: 64, offset: 15936)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 61, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !400, line: 72, baseType: !1254)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !243, file: !244, line: 1119, baseType: !7, size: 32, offset: 16000)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !243, file: !244, line: 1121, baseType: !178, size: 64, offset: 16064)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !243, file: !244, line: 1125, baseType: !1321, size: 64, offset: 16128)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !244, line: 43, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !243, file: !244, line: 1127, baseType: !913, size: 32, offset: 16192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !243, file: !244, line: 1128, baseType: !7, size: 32, offset: 16224)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !243, file: !244, line: 1130, baseType: !1326, size: 128, offset: 16256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1327, line: 37, size: 128, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1326, file: !1327, line: 38, baseType: !105, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1326, file: !1327, line: 39, baseType: !101, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1326, file: !1327, line: 40, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1327, line: 24, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !243, file: !244, line: 1131, baseType: !1335, size: 256, offset: 16384)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1336, line: 12, size: 256, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1337 = !{!1338, !1339, !1340, !1341}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1335, file: !1336, line: 13, baseType: !158, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1335, file: !1336, line: 14, baseType: !189, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1335, file: !1336, line: 15, baseType: !189, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1335, file: !1336, line: 16, baseType: !130, size: 8, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !243, file: !244, line: 1134, baseType: !184, size: 64, offset: 16640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !243, file: !244, line: 1135, baseType: !184, size: 64, offset: 16704)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !243, file: !244, line: 1138, baseType: !81, size: 32, offset: 16768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !243, file: !244, line: 1141, baseType: !375, size: 32, offset: 16800)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !243, file: !244, line: 1143, baseType: !1347, size: 64, offset: 16832)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !244, line: 735, size: 64, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1347, file: !244, line: 736, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !243, file: !244, line: 1147, baseType: !416, size: 128, offset: 16896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !243, file: !244, line: 1149, baseType: !242, size: 64, offset: 17024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !243, file: !244, line: 1151, baseType: !1354, size: 64, offset: 17088)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !244, line: 1151, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !243, file: !244, line: 1188, baseType: !55, size: 64, offset: 17152)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !243, file: !244, line: 1191, baseType: !1358, size: 64, offset: 17216)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !244, line: 44, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !243, file: !244, line: 1194, baseType: !1361, size: 64, offset: 17280)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !244, line: 45, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !243, file: !244, line: 1197, baseType: !1364, size: 64, offset: 17344)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !244, line: 61, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !243, file: !244, line: 1199, baseType: !1367, size: 64, offset: 17408)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !244, line: 52, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !243, file: !244, line: 1202, baseType: !1370, size: 64, offset: 17472)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !244, line: 48, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !243, file: !244, line: 1205, baseType: !189, size: 64, offset: 17536)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !243, file: !244, line: 1206, baseType: !1374, size: 64, offset: 17600)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1086, line: 14, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1086, line: 12, size: 384, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !1086, line: 13, baseType: !1379, size: 384)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1086, line: 13, size: 384, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1379, file: !1086, line: 13, baseType: !105, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1379, file: !1086, line: 13, baseType: !105, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1379, file: !1086, line: 13, baseType: !105, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1379, file: !1086, line: 13, baseType: !1385, size: 256, offset: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1386, line: 37, size: 256, elements: !1387)
!1386 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1387 = !{!1388, !1393, !1406, !1412, !1422, !1449, !1454}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1385, file: !1386, line: 42, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1386, line: 39, size: 64, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1389, file: !1386, line: 40, baseType: !804, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1389, file: !1386, line: 41, baseType: !919, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1385, file: !1386, line: 50, baseType: !1394, size: 192)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1386, line: 45, size: 192, elements: !1395)
!1395 = !{!1396, !1398, !1399, !1405}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1394, file: !1386, line: 46, baseType: !1397, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !400, line: 95, baseType: !105)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1394, file: !1386, line: 47, baseType: !105, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1394, file: !1386, line: 48, baseType: !1400, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1386, line: 11, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1386, line: 8, size: 64, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1401, file: !1386, line: 9, baseType: !105, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1401, file: !1386, line: 10, baseType: !55, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1394, file: !1386, line: 49, baseType: !105, size: 32, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1385, file: !1386, line: 57, baseType: !1407, size: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1386, line: 53, size: 128, elements: !1408)
!1408 = !{!1409, !1410, !1411}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1407, file: !1386, line: 54, baseType: !804, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1407, file: !1386, line: 55, baseType: !919, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1407, file: !1386, line: 56, baseType: !1400, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1385, file: !1386, line: 66, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1386, line: 60, size: 256, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1421}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1413, file: !1386, line: 61, baseType: !804, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1413, file: !1386, line: 62, baseType: !919, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1413, file: !1386, line: 63, baseType: !105, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1413, file: !1386, line: 64, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !400, line: 94, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !400, line: 15, baseType: !149)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1413, file: !1386, line: 65, baseType: !1419, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1385, file: !1386, line: 105, baseType: !1423, size: 256)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1386, line: 69, size: 256, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1423, file: !1386, line: 70, baseType: !55, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1386, line: 79, baseType: !1427, size: 192, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1386, line: 79, size: 192, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1438, !1443}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1427, file: !1386, line: 81, baseType: !105, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1427, file: !1386, line: 86, baseType: !685, size: 16)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1427, file: !1386, line: 92, baseType: !1432, size: 192)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1386, line: 88, size: 192, elements: !1433)
!1433 = !{!1434, !1436, !1437}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1432, file: !1386, line: 89, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !394)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1432, file: !1386, line: 90, baseType: !55, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1432, file: !1386, line: 91, baseType: !55, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1427, file: !1386, line: 97, baseType: !1439, size: 96)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1386, line: 94, size: 96, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1439, file: !1386, line: 95, baseType: !1435, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1439, file: !1386, line: 96, baseType: !254, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1427, file: !1386, line: 103, baseType: !1444, size: 128)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1386, line: 99, size: 128, elements: !1445)
!1445 = !{!1446, !1447, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1444, file: !1386, line: 100, baseType: !189, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1444, file: !1386, line: 101, baseType: !254, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1444, file: !1386, line: 102, baseType: !254, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1385, file: !1386, line: 111, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1386, line: 108, size: 128, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1450, file: !1386, line: 109, baseType: !149, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1450, file: !1386, line: 110, baseType: !105, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1385, file: !1386, line: 118, baseType: !1455, size: 128)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1386, line: 114, size: 128, elements: !1456)
!1456 = !{!1457, !1458, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1455, file: !1386, line: 115, baseType: !55, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1455, file: !1386, line: 116, baseType: !105, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1455, file: !1386, line: 117, baseType: !7, size: 32, offset: 96)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !243, file: !244, line: 1208, baseType: !1237, size: 448, offset: 17664)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !243, file: !244, line: 1215, baseType: !184, size: 64, offset: 18112)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !243, file: !244, line: 1217, baseType: !184, size: 64, offset: 18176)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !243, file: !244, line: 1219, baseType: !184, size: 64, offset: 18240)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !243, file: !244, line: 1223, baseType: !1465, size: 64, offset: 18304)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1466, line: 99, baseType: !1467)
!1466 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1466, line: 99, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1467, file: !1466, line: 99, baseType: !484, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !243, file: !244, line: 1225, baseType: !1210, size: 32, offset: 18368)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !243, file: !244, line: 1226, baseType: !105, size: 32, offset: 18400)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !243, file: !244, line: 1227, baseType: !105, size: 32, offset: 18432)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !243, file: !244, line: 1231, baseType: !1474, size: 64, offset: 18496)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !244, line: 1231, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !243, file: !244, line: 1233, baseType: !66, size: 128, offset: 18560)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !243, file: !244, line: 1240, baseType: !1478, size: 64, offset: 18688)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !244, line: 62, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !243, file: !244, line: 1242, baseType: !1481, size: 64, offset: 18752)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !244, line: 1242, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !243, file: !244, line: 1244, baseType: !66, size: 128, offset: 18816)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !243, file: !244, line: 1245, baseType: !1485, size: 64, offset: 18944)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !244, line: 51, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !243, file: !244, line: 1246, baseType: !668, size: 256, offset: 19008)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !243, file: !244, line: 1247, baseType: !7, size: 32, offset: 19264)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !243, file: !244, line: 1250, baseType: !1490, size: 64, offset: 19328)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !244, line: 57, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !243, file: !244, line: 1251, baseType: !668, size: 256, offset: 19392)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !243, file: !244, line: 1252, baseType: !66, size: 128, offset: 19648)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !243, file: !244, line: 1259, baseType: !1495, size: 64, offset: 19776)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !535, line: 717, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !243, file: !244, line: 1260, baseType: !685, size: 16, offset: 19840)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !243, file: !244, line: 1261, baseType: !685, size: 16, offset: 19856)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !243, file: !244, line: 1314, baseType: !1500, size: 64, offset: 19904)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1502, line: 62, size: 256, align: 256, elements: !1503)
!1502 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1501, file: !1502, line: 75, baseType: !254, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1501, file: !1502, line: 90, baseType: !254, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1501, file: !1502, line: 112, baseType: !185, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1501, file: !1502, line: 132, baseType: !254, size: 32, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1501, file: !1502, line: 140, baseType: !254, size: 32, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1501, file: !1502, line: 149, baseType: !254, size: 32, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1501, file: !1502, line: 154, baseType: !1511, offset: 224)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, elements: !721)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !243, file: !244, line: 1315, baseType: !253, size: 32, offset: 19968)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !243, file: !244, line: 1316, baseType: !253, size: 32, offset: 20000)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !243, file: !244, line: 1321, baseType: !189, size: 64, offset: 20032)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !243, file: !244, line: 1325, baseType: !105, size: 32, offset: 20096)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !243, file: !244, line: 1326, baseType: !105, size: 32, offset: 20128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !243, file: !244, line: 1327, baseType: !105, size: 32, offset: 20160)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !243, file: !244, line: 1328, baseType: !105, size: 32, offset: 20192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !243, file: !244, line: 1329, baseType: !175, size: 128, align: 64, offset: 20224)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !243, file: !244, line: 1332, baseType: !1521, size: 128, offset: 20352)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1522, line: 51, size: 128, elements: !1523)
!1522 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1523 = !{!1524, !1529, !1530}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1521, file: !1522, line: 60, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1526, line: 7, size: 64, elements: !1527)
!1526 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1525, file: !1526, line: 12, baseType: !481, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1521, file: !1522, line: 63, baseType: !130, size: 8, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1521, file: !1522, line: 70, baseType: !130, size: 8, offset: 72)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !243, file: !244, line: 1335, baseType: !1532, size: 64, offset: 20480)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !244, line: 59, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !243, file: !244, line: 1337, baseType: !1535, size: 128, offset: 20544)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1522, line: 39, size: 128, elements: !1536)
!1536 = !{!1537, !1600, !1601}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1535, file: !1522, line: 40, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !535, line: 74, size: 512, align: 128, elements: !1540)
!1540 = !{!1541, !1542, !1594, !1599}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !535, line: 75, baseType: !189, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !535, line: 83, baseType: !1543, size: 320, offset: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !535, line: 83, size: 320, elements: !1544)
!1544 = !{!1545, !1568, !1582, !1586, !1593}
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !535, line: 84, baseType: !1546, size: 320)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !535, line: 84, size: 320, elements: !1547)
!1547 = !{!1548, !1559, !1562, !1567}
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !535, line: 90, baseType: !1549, size: 128)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !535, line: 90, size: 128, elements: !1550)
!1550 = !{!1551, !1552, !1557, !1558}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1549, file: !535, line: 91, baseType: !66, size: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !535, line: 94, baseType: !1553, size: 128)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1549, file: !535, line: 94, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1553, file: !535, line: 96, baseType: !55, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1553, file: !535, line: 98, baseType: !7, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1549, file: !535, line: 102, baseType: !66, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1549, file: !535, line: 103, baseType: !66, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1546, file: !535, line: 106, baseType: !1560, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !535, line: 32, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !535, line: 107, baseType: !1563, size: 64, offset: 192)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !535, line: 107, size: 64, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1563, file: !535, line: 108, baseType: !189, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1563, file: !535, line: 109, baseType: !189, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1546, file: !535, line: 117, baseType: !189, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !535, line: 119, baseType: !1569, size: 320)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !535, line: 119, size: 320, elements: !1570)
!1570 = !{!1571, !1572, !1575, !1576, !1577}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1569, file: !535, line: 124, baseType: !189, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1569, file: !535, line: 125, baseType: !1573, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !535, line: 125, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1569, file: !535, line: 126, baseType: !189, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1569, file: !535, line: 127, baseType: !189, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !535, line: 128, baseType: !1578, size: 64, offset: 256)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !535, line: 128, size: 64, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1578, file: !535, line: 133, baseType: !189, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1578, file: !535, line: 138, baseType: !588, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !535, line: 141, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !535, line: 141, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1583, file: !535, line: 142, baseType: !189, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !535, line: 144, baseType: !1587, size: 128)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !535, line: 144, size: 128, elements: !1588)
!1588 = !{!1589, !1592}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1587, file: !535, line: 146, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !535, line: 146, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1587, file: !535, line: 147, baseType: !55, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1543, file: !535, line: 161, baseType: !175, size: 128, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !535, line: 164, baseType: !1595, size: 32, offset: 384)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !535, line: 164, size: 32, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1595, file: !535, line: 169, baseType: !101, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1595, file: !535, line: 177, baseType: !7, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1539, file: !535, line: 181, baseType: !101, size: 32, offset: 416)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1535, file: !1522, line: 42, baseType: !254, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1535, file: !1522, line: 43, baseType: !254, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !243, file: !244, line: 1340, baseType: !1603, size: 64, offset: 20672)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !244, line: 69, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !243, file: !244, line: 1351, baseType: !105, size: 32, offset: 20736)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !243, file: !244, line: 1352, baseType: !105, size: 32, offset: 20768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !243, file: !244, line: 1354, baseType: !189, size: 64, offset: 20800)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !243, file: !244, line: 1364, baseType: !184, size: 64, offset: 20864)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !243, file: !244, line: 1365, baseType: !184, size: 64, offset: 20928)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !243, file: !244, line: 1412, baseType: !189, size: 64, offset: 20992)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !243, file: !244, line: 1453, baseType: !1612, size: 64, offset: 21056)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !244, line: 1453, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !243, file: !244, line: 1457, baseType: !1615, size: 64, offset: 21120)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1617)
!1617 = !{!1618, !1619, !1638, !1641, !1642, !1675, !1685}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1616, file: !18, line: 62, baseType: !17, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !18, line: 64, baseType: !1620, size: 192, offset: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1616, file: !18, line: 64, size: 192, elements: !1621)
!1621 = !{!1622, !1633}
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !18, line: 65, baseType: !1623, size: 192)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !18, line: 65, size: 192, elements: !1624)
!1624 = !{!1625, !1632}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1623, file: !18, line: 66, baseType: !1626, size: 128)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1627, line: 50, size: 128, elements: !1628)
!1627 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1626, file: !1627, line: 52, baseType: !189, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1626, file: !1627, line: 54, baseType: !7, size: 32, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1626, file: !1627, line: 55, baseType: !7, size: 32, offset: 96)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1623, file: !18, line: 67, baseType: !189, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !18, line: 70, baseType: !1634, size: 192)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !18, line: 70, size: 192, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1634, file: !18, line: 71, baseType: !175, size: 128, align: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1634, file: !18, line: 72, baseType: !189, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1616, file: !18, line: 76, baseType: !1639, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1616, file: !18, line: 77, baseType: !189, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1616, file: !18, line: 79, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1627, line: 25, size: 256, elements: !1645)
!1645 = !{!1646, !1652, !1656}
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1627, line: 26, baseType: !1647, size: 128)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !1627, line: 26, size: 128, elements: !1648)
!1648 = !{!1649, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1647, file: !1627, line: 27, baseType: !1650, size: 128)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 128, elements: !1105)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1647, file: !1627, line: 28, baseType: !1650, size: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1644, file: !1627, line: 31, baseType: !1653, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1627, line: 23, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1627, line: 33, baseType: !1657, size: 64, offset: 192)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1644, file: !1627, line: 33, size: 64, elements: !1658)
!1658 = !{!1659, !1665, !1670}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1657, file: !1627, line: 38, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1627, line: 34, size: 64, elements: !1661)
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1660, file: !1627, line: 35, baseType: !647, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1660, file: !1627, line: 36, baseType: !110, size: 8, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1660, file: !1627, line: 37, baseType: !110, size: 8, offset: 40)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1657, file: !1627, line: 42, baseType: !1666, size: 16)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1627, line: 39, size: 16, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1666, file: !1627, line: 40, baseType: !110, size: 8)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1666, file: !1627, line: 41, baseType: !110, size: 8, offset: 8)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1657, file: !1627, line: 46, baseType: !1671, size: 16)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1657, file: !1627, line: 43, size: 16, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1671, file: !1627, line: 44, baseType: !110, size: 8)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1671, file: !1627, line: 45, baseType: !110, size: 8, offset: 8)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1616, file: !18, line: 81, baseType: !1676, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1677, file: !18, line: 86, baseType: !1639, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1677, file: !18, line: 87, baseType: !189, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1677, file: !18, line: 88, baseType: !189, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1677, file: !18, line: 89, baseType: !189, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1677, file: !18, line: 90, baseType: !130, size: 8, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1677, file: !18, line: 92, baseType: !1676, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1616, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !243, file: !244, line: 1463, baseType: !1687, offset: 21184)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !244, line: 739, elements: !555)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !243, file: !244, line: 1470, baseType: !175, size: 128, align: 64, offset: 21184)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !243, file: !244, line: 1471, baseType: !195, size: 32, offset: 21312)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !243, file: !244, line: 1472, baseType: !105, size: 32, offset: 21344)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !243, file: !244, line: 1474, baseType: !242, size: 64, offset: 21376)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !243, file: !244, line: 1475, baseType: !1693, size: 320, offset: 21440)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1694, line: 11, size: 320, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1695 = !{!1696, !1697, !1698, !1703}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1693, file: !1694, line: 16, baseType: !828, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1693, file: !1694, line: 17, baseType: !189, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1693, file: !1694, line: 18, baseType: !1699, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1693, file: !1694, line: 19, baseType: !253, size: 32, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !243, file: !244, line: 1478, baseType: !1705, size: 64, offset: 21760)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1707, line: 14, flags: DIFlagFwdDecl)
!1707 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !243, file: !244, line: 1482, baseType: !195, size: 32, offset: 21824)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !243, file: !244, line: 1489, baseType: !55, size: 64, offset: 21888)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !243, file: !244, line: 1504, baseType: !55, size: 64, offset: 21952)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !243, file: !244, line: 1505, baseType: !185, size: 64, offset: 22016)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !243, file: !244, line: 1506, baseType: !184, size: 64, offset: 22080)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !243, file: !244, line: 1507, baseType: !185, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !243, file: !244, line: 1508, baseType: !185, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !243, file: !244, line: 1509, baseType: !185, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !243, file: !244, line: 1510, baseType: !175, size: 128, align: 64, offset: 22208)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !243, file: !244, line: 1511, baseType: !105, size: 32, offset: 22336)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !243, file: !244, line: 1515, baseType: !1719, size: 64, offset: 22400)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !221, line: 56, size: 64, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1719, file: !221, line: 57, baseType: !224, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !243, file: !244, line: 1518, baseType: !1719, size: 64, offset: 22464)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !243, file: !244, line: 1528, baseType: !175, size: 128, align: 64, offset: 22528)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !243, file: !244, line: 1552, baseType: !1725, size: 35328, offset: 23040)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1726, line: 430, size: 35328, elements: !1727)
!1726 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1727 = !{!1728, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1757, !1758, !1759, !1760, !1761, !1762, !1765, !1766, !1767, !1768}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1725, file: !1726, line: 432, baseType: !1729, size: 192)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, size: 192, elements: !895)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1731, line: 16, size: 64, elements: !1732)
!1731 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1730, file: !1731, line: 17, baseType: !120, size: 16)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1730, file: !1731, line: 18, baseType: !120, size: 16, offset: 16)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1730, file: !1731, line: 19, baseType: !120, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1730, file: !1731, line: 19, baseType: !120, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1730, file: !1731, line: 19, baseType: !120, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1730, file: !1731, line: 19, baseType: !120, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1730, file: !1731, line: 19, baseType: !120, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1730, file: !1731, line: 20, baseType: !120, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1730, file: !1731, line: 20, baseType: !120, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1730, file: !1731, line: 20, baseType: !120, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1730, file: !1731, line: 20, baseType: !120, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1730, file: !1731, line: 20, baseType: !120, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1730, file: !1731, line: 20, baseType: !120, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1725, file: !1726, line: 436, baseType: !189, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1725, file: !1726, line: 440, baseType: !122, size: 16, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1725, file: !1726, line: 441, baseType: !122, size: 16, offset: 272)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1725, file: !1726, line: 442, baseType: !122, size: 16, offset: 288)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1725, file: !1726, line: 443, baseType: !122, size: 16, offset: 304)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1725, file: !1726, line: 447, baseType: !189, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1725, file: !1726, line: 448, baseType: !189, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1725, file: !1726, line: 459, baseType: !1754, size: 256, offset: 448)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1755, size: 256, elements: !649)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1726, line: 428, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1725, file: !1726, line: 461, baseType: !189, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1725, file: !1726, line: 463, baseType: !189, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1725, file: !1726, line: 465, baseType: !189, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1725, file: !1726, line: 466, baseType: !189, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1725, file: !1726, line: 467, baseType: !189, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1725, file: !1726, line: 473, baseType: !1763, size: 64, offset: 1024)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1726, line: 10, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1725, file: !1726, line: 480, baseType: !189, size: 64, offset: 1088)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1725, file: !1726, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1725, file: !1726, line: 491, baseType: !253, size: 32, offset: 1184)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1725, file: !1726, line: 501, baseType: !1769, size: 33792, offset: 1536)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1770, line: 448, size: 33792, elements: !1771)
!1770 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1771 = !{!1772, !1773, !1774, !1938, !1939, !1945, !1946}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1769, file: !1770, line: 461, baseType: !7, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1769, file: !1770, line: 468, baseType: !189, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1769, file: !1770, line: 476, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1770, line: 356, size: 33280, align: 512, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1776, file: !1770, line: 358, baseType: !7, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1776, file: !1770, line: 361, baseType: !7, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1776, file: !1770, line: 364, baseType: !184, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1776, file: !1770, line: 367, baseType: !184, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1776, file: !1770, line: 370, baseType: !184, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1776, file: !1770, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1776, file: !1770, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1776, file: !1770, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1776, file: !1770, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1776, file: !1770, line: 397, baseType: !1788, size: 32768, offset: 512)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1770, line: 348, size: 32768, elements: !1789)
!1789 = !{!1790, !1805, !1844, !1921, !1934}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1788, file: !1770, line: 349, baseType: !1791, size: 896)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1770, line: 12, size: 896, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1804}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1791, file: !1770, line: 13, baseType: !253, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1791, file: !1770, line: 14, baseType: !253, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1791, file: !1770, line: 15, baseType: !253, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1791, file: !1770, line: 16, baseType: !253, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1791, file: !1770, line: 17, baseType: !253, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1791, file: !1770, line: 18, baseType: !253, size: 32, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1791, file: !1770, line: 19, baseType: !253, size: 32, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1791, file: !1770, line: 22, baseType: !1801, size: 640, offset: 224)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 640, elements: !1802)
!1802 = !{!1803}
!1803 = !DISubrange(count: 20)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1791, file: !1770, line: 25, baseType: !253, size: 32, offset: 864)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1788, file: !1770, line: 350, baseType: !1806, size: 4096, align: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1770, line: 34, size: 4096, align: 128, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1827, !1828, !1829, !1833, !1835, !1839}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1806, file: !1770, line: 35, baseType: !120, size: 16)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1806, file: !1770, line: 36, baseType: !120, size: 16, offset: 16)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1806, file: !1770, line: 37, baseType: !120, size: 16, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1806, file: !1770, line: 38, baseType: !120, size: 16, offset: 48)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1770, line: 39, baseType: !1813, size: 128, offset: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !1770, line: 39, size: 128, elements: !1814)
!1814 = !{!1815, !1820}
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1770, line: 40, baseType: !1816, size: 128)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !1770, line: 40, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1816, file: !1770, line: 41, baseType: !184, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1816, file: !1770, line: 42, baseType: !184, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1770, line: 44, baseType: !1821, size: 128)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1813, file: !1770, line: 44, size: 128, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1821, file: !1770, line: 45, baseType: !253, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1821, file: !1770, line: 46, baseType: !253, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1821, file: !1770, line: 47, baseType: !253, size: 32, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1821, file: !1770, line: 48, baseType: !253, size: 32, offset: 96)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1806, file: !1770, line: 51, baseType: !253, size: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1806, file: !1770, line: 52, baseType: !253, size: 32, offset: 224)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1806, file: !1770, line: 55, baseType: !1830, size: 1024, offset: 256)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 1024, elements: !1831)
!1831 = !{!1832}
!1832 = !DISubrange(count: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1806, file: !1770, line: 58, baseType: !1834, size: 2048, offset: 1280)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 2048, elements: !1308)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1806, file: !1770, line: 60, baseType: !1836, size: 384, offset: 3328)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 384, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 12)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1770, line: 62, baseType: !1840, size: 384, offset: 3712)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !1770, line: 62, size: 384, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1840, file: !1770, line: 63, baseType: !1836, size: 384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1840, file: !1770, line: 64, baseType: !1836, size: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1788, file: !1770, line: 351, baseType: !1845, size: 1088)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1770, line: 79, size: 1088, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1920}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1845, file: !1770, line: 80, baseType: !253, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1845, file: !1770, line: 81, baseType: !253, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1845, file: !1770, line: 82, baseType: !253, size: 32, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1845, file: !1770, line: 83, baseType: !253, size: 32, offset: 96)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1845, file: !1770, line: 84, baseType: !253, size: 32, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1845, file: !1770, line: 85, baseType: !253, size: 32, offset: 160)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1845, file: !1770, line: 86, baseType: !253, size: 32, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1845, file: !1770, line: 88, baseType: !1801, size: 640, offset: 224)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1845, file: !1770, line: 89, baseType: !110, size: 8, offset: 864)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1845, file: !1770, line: 90, baseType: !110, size: 8, offset: 872)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1845, file: !1770, line: 91, baseType: !110, size: 8, offset: 880)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1845, file: !1770, line: 92, baseType: !110, size: 8, offset: 888)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1845, file: !1770, line: 93, baseType: !110, size: 8, offset: 896)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1845, file: !1770, line: 94, baseType: !110, size: 8, offset: 904)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1845, file: !1770, line: 95, baseType: !1862, size: 64, offset: 960)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1864, line: 11, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1863, file: !1864, line: 12, baseType: !149, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1863, file: !1864, line: 13, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1870, line: 103, size: 1344, elements: !1871)
!1870 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1900, !1901, !1902}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1869, file: !1870, line: 109, baseType: !189, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1869, file: !1870, line: 110, baseType: !189, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1869, file: !1870, line: 111, baseType: !189, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1869, file: !1870, line: 112, baseType: !189, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1869, file: !1870, line: 113, baseType: !189, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1869, file: !1870, line: 114, baseType: !189, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1869, file: !1870, line: 117, baseType: !189, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1869, file: !1870, line: 118, baseType: !189, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1869, file: !1870, line: 119, baseType: !189, size: 64, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1869, file: !1870, line: 120, baseType: !189, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1869, file: !1870, line: 121, baseType: !189, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1869, file: !1870, line: 122, baseType: !189, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1869, file: !1870, line: 123, baseType: !189, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1869, file: !1870, line: 124, baseType: !189, size: 64, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1869, file: !1870, line: 125, baseType: !189, size: 64, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1869, file: !1870, line: 139, baseType: !189, size: 64, offset: 960)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1869, file: !1870, line: 142, baseType: !189, size: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1870, line: 144, baseType: !1890, size: 64, offset: 1088)
!1890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1869, file: !1870, line: 144, size: 64, elements: !1891)
!1891 = !{!1892, !1893, !1894}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1890, file: !1870, line: 146, baseType: !120, size: 16)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1890, file: !1870, line: 148, baseType: !184, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1890, file: !1870, line: 150, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1870, line: 59, size: 64, elements: !1896)
!1896 = !{!1897, !1898, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1895, file: !1870, line: 61, baseType: !184, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1895, file: !1870, line: 63, baseType: !184, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1895, file: !1870, line: 65, baseType: !184, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !1870, line: 153, baseType: !189, size: 64, offset: 1152)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1869, file: !1870, line: 154, baseType: !189, size: 64, offset: 1216)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1870, line: 156, baseType: !1903, size: 64, offset: 1280)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1869, file: !1870, line: 156, size: 64, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1903, file: !1870, line: 158, baseType: !120, size: 16)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1903, file: !1870, line: 160, baseType: !184, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1903, file: !1870, line: 162, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1870, line: 69, size: 64, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1908, file: !1870, line: 71, baseType: !184, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1908, file: !1870, line: 73, baseType: !184, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1908, file: !1870, line: 75, baseType: !184, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1908, file: !1870, line: 77, baseType: !184, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1908, file: !1870, line: 80, baseType: !184, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1908, file: !1870, line: 83, baseType: !184, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1908, file: !1870, line: 86, baseType: !184, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1908, file: !1870, line: 88, baseType: !184, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1908, file: !1870, line: 93, baseType: !184, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1908, file: !1870, line: 100, baseType: !184, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1845, file: !1770, line: 96, baseType: !253, size: 32, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1788, file: !1770, line: 352, baseType: !1922, size: 4608, align: 512)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1770, line: 333, size: 4608, align: 512, elements: !1923)
!1923 = !{!1924, !1925, !1932}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1922, file: !1770, line: 334, baseType: !1806, size: 4096, align: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1922, file: !1770, line: 335, baseType: !1926, size: 512, offset: 4096)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1770, line: 312, size: 512, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1926, file: !1770, line: 313, baseType: !184, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1926, file: !1770, line: 314, baseType: !184, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1926, file: !1770, line: 315, baseType: !1931, size: 384, offset: 128)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 384, elements: !997)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1922, file: !1770, line: 336, baseType: !1933, offset: 4608)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !721)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1788, file: !1770, line: 353, baseType: !1935, size: 32768)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32768, elements: !1936)
!1936 = !{!1937}
!1937 = !DISubrange(count: 4096)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1769, file: !1770, line: 484, baseType: !1775, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1769, file: !1770, line: 491, baseType: !1940, size: 128, offset: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1770, line: 404, size: 128, elements: !1941)
!1941 = !{!1942, !1943, !1944}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1940, file: !1770, line: 424, baseType: !184, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1940, file: !1770, line: 432, baseType: !7, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1940, file: !1770, line: 440, baseType: !7, size: 32, offset: 96)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1769, file: !1770, line: 498, baseType: !1940, size: 128, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1769, file: !1770, line: 508, baseType: !1776, size: 33280, align: 512, offset: 512)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !253)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !57, line: 42, baseType: !189)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1957 = !{!0, !1958, !1960, !1965, !1967, !1969, !1971, !1973, !1975, !1977}
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_array_ops218", scope: !2, file: !3, line: 170, type: !55, isLocal: true, isDefinition: true)
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !1962, isLocal: true, isDefinition: true)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 272, elements: !1963)
!1963 = !{!1964}
!1964 = !DISubrange(count: 34)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_array_create219", scope: !2, file: !3, line: 234, type: !55, isLocal: true, isDefinition: true)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_match_context220", scope: !2, file: !3, line: 260, type: !55, isLocal: true, isDefinition: true)
!1969 = !DIGlobalVariableExpression(var: !1970, expr: !DIExpression())
!1970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_array_first221", scope: !2, file: !3, line: 278, type: !55, isLocal: true, isDefinition: true)
!1971 = !DIGlobalVariableExpression(var: !1972, expr: !DIExpression())
!1972 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_array_next222", scope: !2, file: !3, line: 290, type: !55, isLocal: true, isDefinition: true)
!1973 = !DIGlobalVariableExpression(var: !1974, expr: !DIExpression())
!1974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 20, type: !1104, isLocal: true, isDefinition: true)
!1975 = !DIGlobalVariableExpression(var: !1976, expr: !DIExpression())
!1976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !1435, isLocal: true, isDefinition: true)
!1977 = !DIGlobalVariableExpression(var: !1978, expr: !DIExpression())
!1978 = distinct !DIGlobalVariable(scope: null, file: !45, line: 480, type: !1979, isLocal: true, isDefinition: true)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 168, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 21)
!1982 = !{i32 7, !"Dwarf Version", i32 5}
!1983 = !{i32 2, !"Debug Info Version", i32 3}
!1984 = !{i32 1, !"wchar_size", i32 2}
!1985 = !{i32 8, !"cf-protection-branch", i32 1}
!1986 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1987 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1988 = !{i32 1, !"Code Model", i32 2}
!1989 = !{i32 1, !"override-stack-alignment", i32 8}
!1990 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1991 = distinct !DISubprogram(name: "dma_fence_array_get_driver_name", scope: !3, file: !3, line: 18, type: !134, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1992 = !{!1993}
!1993 = !DILocalVariable(name: "fence", arg: 1, scope: !1991, file: !3, line: 18, type: !76)
!1994 = !DILocation(line: 18, column: 70, scope: !1991)
!1995 = !DILocation(line: 20, column: 2, scope: !1991)
!1996 = distinct !DISubprogram(name: "dma_fence_array_get_timeline_name", scope: !3, file: !3, line: 23, type: !134, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1997 = !{!1998}
!1998 = !DILocalVariable(name: "fence", arg: 1, scope: !1996, file: !3, line: 23, type: !76)
!1999 = !DILocation(line: 23, column: 72, scope: !1996)
!2000 = !DILocation(line: 25, column: 2, scope: !1996)
!2001 = distinct !DISubprogram(name: "dma_fence_array_enable_signaling", scope: !3, file: !3, line: 70, type: !142, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007}
!2003 = !DILocalVariable(name: "fence", arg: 1, scope: !2001, file: !3, line: 70, type: !76)
!2004 = !DILocalVariable(name: "array", scope: !2001, file: !3, line: 72, type: !202)
!2005 = !DILocalVariable(name: "cb", scope: !2001, file: !3, line: 73, type: !58)
!2006 = !DILocalVariable(name: "i", scope: !2001, file: !3, line: 74, type: !7)
!2007 = !DILocalVariable(name: "error", scope: !2008, file: !3, line: 89, type: !105)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 88, column: 35)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 87, column: 7)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 76, column: 42)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 76, column: 2)
!2012 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 76, column: 2)
!2013 = !DILocation(line: 70, column: 64, scope: !2001)
!2014 = !DILocation(line: 72, column: 2, scope: !2001)
!2015 = !DILocation(line: 72, column: 26, scope: !2001)
!2016 = !DILocation(line: 72, column: 53, scope: !2001)
!2017 = !DILocation(line: 72, column: 34, scope: !2001)
!2018 = !DILocation(line: 73, column: 2, scope: !2001)
!2019 = !DILocation(line: 73, column: 29, scope: !2001)
!2020 = !DILocation(line: 73, column: 44, scope: !2001)
!2021 = !DILocation(line: 74, column: 2, scope: !2001)
!2022 = !DILocation(line: 74, column: 11, scope: !2001)
!2023 = !DILocation(line: 76, column: 9, scope: !2012)
!2024 = !DILocation(line: 76, column: 7, scope: !2012)
!2025 = !DILocation(line: 76, column: 14, scope: !2011)
!2026 = !DILocation(line: 76, column: 18, scope: !2011)
!2027 = !DILocation(line: 76, column: 25, scope: !2011)
!2028 = !DILocation(line: 76, column: 16, scope: !2011)
!2029 = !DILocation(line: 76, column: 2, scope: !2012)
!2030 = !DILocation(line: 77, column: 17, scope: !2010)
!2031 = !DILocation(line: 77, column: 3, scope: !2010)
!2032 = !DILocation(line: 77, column: 6, scope: !2010)
!2033 = !DILocation(line: 77, column: 9, scope: !2010)
!2034 = !DILocation(line: 77, column: 15, scope: !2010)
!2035 = !DILocation(line: 86, column: 18, scope: !2010)
!2036 = !DILocation(line: 86, column: 25, scope: !2010)
!2037 = !DILocation(line: 86, column: 3, scope: !2010)
!2038 = !DILocation(line: 87, column: 30, scope: !2009)
!2039 = !DILocation(line: 87, column: 37, scope: !2009)
!2040 = !DILocation(line: 87, column: 44, scope: !2009)
!2041 = !DILocation(line: 87, column: 49, scope: !2009)
!2042 = !DILocation(line: 87, column: 52, scope: !2009)
!2043 = !DILocation(line: 87, column: 55, scope: !2009)
!2044 = !DILocation(line: 87, column: 7, scope: !2009)
!2045 = !DILocation(line: 87, column: 7, scope: !2010)
!2046 = !DILocation(line: 89, column: 4, scope: !2008)
!2047 = !DILocation(line: 89, column: 8, scope: !2008)
!2048 = !DILocation(line: 89, column: 16, scope: !2008)
!2049 = !DILocation(line: 89, column: 23, scope: !2008)
!2050 = !DILocation(line: 89, column: 30, scope: !2008)
!2051 = !DILocation(line: 89, column: 34, scope: !2008)
!2052 = !DILocation(line: 91, column: 38, scope: !2008)
!2053 = !DILocation(line: 91, column: 45, scope: !2008)
!2054 = !DILocation(line: 91, column: 4, scope: !2008)
!2055 = !DILocation(line: 92, column: 19, scope: !2008)
!2056 = !DILocation(line: 92, column: 26, scope: !2008)
!2057 = !DILocation(line: 92, column: 4, scope: !2008)
!2058 = !DILocation(line: 93, column: 29, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 93, column: 8)
!2060 = !DILocation(line: 93, column: 36, scope: !2059)
!2061 = !DILocation(line: 93, column: 8, scope: !2059)
!2062 = !DILocation(line: 93, column: 8, scope: !2008)
!2063 = !DILocation(line: 94, column: 41, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 93, column: 50)
!2065 = !DILocation(line: 94, column: 5, scope: !2064)
!2066 = !DILocation(line: 95, column: 5, scope: !2064)
!2067 = !DILocation(line: 97, column: 3, scope: !2009)
!2068 = !DILocation(line: 97, column: 3, scope: !2008)
!2069 = !DILocation(line: 98, column: 2, scope: !2010)
!2070 = !DILocation(line: 76, column: 37, scope: !2011)
!2071 = !DILocation(line: 76, column: 2, scope: !2011)
!2072 = distinct !{!2072, !2029, !2073, !2074, !2075}
!2073 = !DILocation(line: 98, column: 2, scope: !2012)
!2074 = !{!"llvm.loop.mustprogress"}
!2075 = !{!"llvm.loop.unroll.disable"}
!2076 = !DILocation(line: 100, column: 2, scope: !2001)
!2077 = !DILocation(line: 101, column: 1, scope: !2001)
!2078 = distinct !DISubprogram(name: "dma_fence_array_signaled", scope: !3, file: !3, line: 103, type: !142, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2079)
!2079 = !{!2080, !2081, !2082, !2083, !2084}
!2080 = !DILocalVariable(name: "fence", arg: 1, scope: !2078, file: !3, line: 103, type: !76)
!2081 = !DILocalVariable(name: "array", scope: !2078, file: !3, line: 105, type: !202)
!2082 = !DILocalVariable(name: "num_pending", scope: !2078, file: !3, line: 106, type: !105)
!2083 = !DILocalVariable(name: "i", scope: !2078, file: !3, line: 107, type: !7)
!2084 = !DILabel(scope: !2078, name: "signal", file: !3, line: 135)
!2085 = !DILocation(line: 103, column: 56, scope: !2078)
!2086 = !DILocation(line: 105, column: 2, scope: !2078)
!2087 = !DILocation(line: 105, column: 26, scope: !2078)
!2088 = !DILocation(line: 105, column: 53, scope: !2078)
!2089 = !DILocation(line: 105, column: 34, scope: !2078)
!2090 = !DILocation(line: 106, column: 2, scope: !2078)
!2091 = !DILocation(line: 106, column: 6, scope: !2078)
!2092 = !DILocation(line: 107, column: 2, scope: !2078)
!2093 = !DILocation(line: 107, column: 15, scope: !2078)
!2094 = !DILocation(line: 122, column: 37, scope: !2078)
!2095 = !DILocation(line: 122, column: 44, scope: !2078)
!2096 = !DILocation(line: 122, column: 16, scope: !2078)
!2097 = !DILocation(line: 122, column: 14, scope: !2078)
!2098 = !DILocation(line: 123, column: 6, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 123, column: 6)
!2100 = !DILocation(line: 123, column: 6, scope: !2078)
!2101 = !DILocation(line: 124, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 124, column: 7)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 123, column: 70)
!2104 = !DILocation(line: 124, column: 19, scope: !2102)
!2105 = !DILocation(line: 124, column: 7, scope: !2103)
!2106 = !DILocation(line: 125, column: 4, scope: !2102)
!2107 = !DILocation(line: 126, column: 3, scope: !2103)
!2108 = !DILocation(line: 129, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 129, column: 2)
!2110 = !DILocation(line: 129, column: 7, scope: !2109)
!2111 = !DILocation(line: 129, column: 14, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 129, column: 2)
!2113 = !DILocation(line: 129, column: 18, scope: !2112)
!2114 = !DILocation(line: 129, column: 25, scope: !2112)
!2115 = !DILocation(line: 129, column: 16, scope: !2112)
!2116 = !DILocation(line: 129, column: 2, scope: !2109)
!2117 = !DILocation(line: 130, column: 29, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 130, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 129, column: 42)
!2120 = !DILocation(line: 130, column: 36, scope: !2118)
!2121 = !DILocation(line: 130, column: 43, scope: !2118)
!2122 = !DILocation(line: 130, column: 7, scope: !2118)
!2123 = !DILocation(line: 130, column: 47, scope: !2118)
!2124 = !DILocation(line: 130, column: 51, scope: !2118)
!2125 = !DILocation(line: 130, column: 7, scope: !2119)
!2126 = !DILocation(line: 131, column: 4, scope: !2118)
!2127 = !DILocation(line: 132, column: 2, scope: !2119)
!2128 = !DILocation(line: 129, column: 37, scope: !2112)
!2129 = !DILocation(line: 129, column: 2, scope: !2112)
!2130 = distinct !{!2130, !2116, !2131, !2074, !2075}
!2131 = !DILocation(line: 132, column: 2, scope: !2109)
!2132 = !DILocation(line: 133, column: 2, scope: !2078)
!2133 = !DILocation(line: 135, column: 1, scope: !2078)
!2134 = !DILocation(line: 136, column: 38, scope: !2078)
!2135 = !DILocation(line: 136, column: 2, scope: !2078)
!2136 = !DILocation(line: 137, column: 2, scope: !2078)
!2137 = !DILocation(line: 138, column: 1, scope: !2078)
!2138 = distinct !DISubprogram(name: "dma_fence_array_release", scope: !3, file: !3, line: 140, type: !152, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DILocalVariable(name: "fence", arg: 1, scope: !2138, file: !3, line: 140, type: !76)
!2141 = !DILocalVariable(name: "array", scope: !2138, file: !3, line: 142, type: !202)
!2142 = !DILocalVariable(name: "i", scope: !2138, file: !3, line: 143, type: !7)
!2143 = !DILocation(line: 140, column: 55, scope: !2138)
!2144 = !DILocation(line: 142, column: 2, scope: !2138)
!2145 = !DILocation(line: 142, column: 26, scope: !2138)
!2146 = !DILocation(line: 142, column: 53, scope: !2138)
!2147 = !DILocation(line: 142, column: 34, scope: !2138)
!2148 = !DILocation(line: 143, column: 2, scope: !2138)
!2149 = !DILocation(line: 143, column: 11, scope: !2138)
!2150 = !DILocation(line: 145, column: 9, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 145, column: 2)
!2152 = !DILocation(line: 145, column: 7, scope: !2151)
!2153 = !DILocation(line: 145, column: 14, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 145, column: 2)
!2155 = !DILocation(line: 145, column: 18, scope: !2154)
!2156 = !DILocation(line: 145, column: 25, scope: !2154)
!2157 = !DILocation(line: 145, column: 16, scope: !2154)
!2158 = !DILocation(line: 145, column: 2, scope: !2151)
!2159 = !DILocation(line: 146, column: 17, scope: !2154)
!2160 = !DILocation(line: 146, column: 24, scope: !2154)
!2161 = !DILocation(line: 146, column: 31, scope: !2154)
!2162 = !DILocation(line: 146, column: 3, scope: !2154)
!2163 = !DILocation(line: 145, column: 37, scope: !2154)
!2164 = !DILocation(line: 145, column: 2, scope: !2154)
!2165 = distinct !{!2165, !2158, !2166, !2074, !2075}
!2166 = !DILocation(line: 146, column: 33, scope: !2151)
!2167 = !DILocation(line: 148, column: 8, scope: !2138)
!2168 = !DILocation(line: 148, column: 15, scope: !2138)
!2169 = !DILocation(line: 148, column: 2, scope: !2138)
!2170 = !DILocation(line: 149, column: 17, scope: !2138)
!2171 = !DILocation(line: 149, column: 2, scope: !2138)
!2172 = !DILocation(line: 150, column: 1, scope: !2138)
!2173 = distinct !DISubprogram(name: "dma_fence_array_set_deadline", scope: !3, file: !3, line: 152, type: !162, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2174 = !{!2175, !2176, !2177, !2178}
!2175 = !DILocalVariable(name: "fence", arg: 1, scope: !2173, file: !3, line: 152, type: !76)
!2176 = !DILocalVariable(name: "deadline", arg: 2, scope: !2173, file: !3, line: 153, type: !164)
!2177 = !DILocalVariable(name: "array", scope: !2173, file: !3, line: 155, type: !202)
!2178 = !DILocalVariable(name: "i", scope: !2173, file: !3, line: 156, type: !7)
!2179 = !DILocation(line: 152, column: 60, scope: !2173)
!2180 = !DILocation(line: 153, column: 15, scope: !2173)
!2181 = !DILocation(line: 155, column: 2, scope: !2173)
!2182 = !DILocation(line: 155, column: 26, scope: !2173)
!2183 = !DILocation(line: 155, column: 53, scope: !2173)
!2184 = !DILocation(line: 155, column: 34, scope: !2173)
!2185 = !DILocation(line: 156, column: 2, scope: !2173)
!2186 = !DILocation(line: 156, column: 11, scope: !2173)
!2187 = !DILocation(line: 158, column: 9, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 158, column: 2)
!2189 = !DILocation(line: 158, column: 7, scope: !2188)
!2190 = !DILocation(line: 158, column: 14, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 158, column: 2)
!2192 = !DILocation(line: 158, column: 18, scope: !2191)
!2193 = !DILocation(line: 158, column: 25, scope: !2191)
!2194 = !DILocation(line: 158, column: 16, scope: !2191)
!2195 = !DILocation(line: 158, column: 2, scope: !2188)
!2196 = !DILocation(line: 159, column: 26, scope: !2191)
!2197 = !DILocation(line: 159, column: 33, scope: !2191)
!2198 = !DILocation(line: 159, column: 40, scope: !2191)
!2199 = !DILocation(line: 159, column: 44, scope: !2191)
!2200 = !DILocation(line: 159, column: 3, scope: !2191)
!2201 = !DILocation(line: 158, column: 37, scope: !2191)
!2202 = !DILocation(line: 158, column: 2, scope: !2191)
!2203 = distinct !{!2203, !2195, !2204, !2074, !2075}
!2204 = !DILocation(line: 159, column: 52, scope: !2188)
!2205 = !DILocation(line: 160, column: 1, scope: !2173)
!2206 = distinct !DISubprogram(name: "dma_fence_array_create", scope: !3, file: !3, line: 191, type: !2207, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!202, !105, !210, !184, !7, !130}
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2219, !2222, !2224}
!2210 = !DILocalVariable(name: "num_fences", arg: 1, scope: !2206, file: !3, line: 191, type: !105)
!2211 = !DILocalVariable(name: "fences", arg: 2, scope: !2206, file: !3, line: 192, type: !210)
!2212 = !DILocalVariable(name: "context", arg: 3, scope: !2206, file: !3, line: 193, type: !184)
!2213 = !DILocalVariable(name: "seqno", arg: 4, scope: !2206, file: !3, line: 193, type: !7)
!2214 = !DILocalVariable(name: "signal_on_any", arg: 5, scope: !2206, file: !3, line: 194, type: !130)
!2215 = !DILocalVariable(name: "array", scope: !2206, file: !3, line: 196, type: !202)
!2216 = !DILocalVariable(name: "size", scope: !2206, file: !3, line: 197, type: !1316)
!2217 = !DILocalVariable(name: "__ret_warn_on", scope: !2218, file: !3, line: 199, type: !105)
!2218 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 199, column: 2)
!2219 = !DILocalVariable(name: "__flags", scope: !2220, file: !3, line: 199, type: !105)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 199, column: 2)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 199, column: 2)
!2222 = !DILocalVariable(name: "__ret_warn_on", scope: !2223, file: !3, line: 230, type: !105)
!2223 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 230, column: 3)
!2224 = !DILocalVariable(name: "__flags", scope: !2225, file: !3, line: 230, type: !105)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 230, column: 3)
!2226 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 230, column: 3)
!2227 = !DILocation(line: 191, column: 52, scope: !2206)
!2228 = !DILocation(line: 192, column: 32, scope: !2206)
!2229 = !DILocation(line: 193, column: 17, scope: !2206)
!2230 = !DILocation(line: 193, column: 35, scope: !2206)
!2231 = !DILocation(line: 194, column: 18, scope: !2206)
!2232 = !DILocation(line: 196, column: 2, scope: !2206)
!2233 = !DILocation(line: 196, column: 26, scope: !2206)
!2234 = !DILocation(line: 197, column: 2, scope: !2206)
!2235 = !DILocation(line: 197, column: 9, scope: !2206)
!2236 = !DILocation(line: 199, column: 2, scope: !2218)
!2237 = !DILocation(line: 199, column: 2, scope: !2221)
!2238 = !DILocation(line: 199, column: 2, scope: !2220)
!2239 = !DILocation(line: 199, column: 2, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 199, column: 2)
!2241 = !DILocation(line: 199, column: 2, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 199, column: 2)
!2243 = !{i64 2152782760, i64 2152782789, i64 2152782835, i64 2152782893, i64 2152782947, i64 2152783001, i64 2152783056, i64 2152783087, i64 2152783395, i64 2152783401, i64 2152783448, i64 2152783471, i64 2152783497}
!2244 = !DILocation(line: 199, column: 2, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 199, column: 2)
!2246 = !DILocation(line: 199, column: 2, scope: !2206)
!2247 = !DILocation(line: 202, column: 10, scope: !2206)
!2248 = !DILocation(line: 202, column: 21, scope: !2206)
!2249 = !DILocation(line: 202, column: 7, scope: !2206)
!2250 = !DILocation(line: 203, column: 18, scope: !2206)
!2251 = !DILocation(line: 203, column: 10, scope: !2206)
!2252 = !DILocation(line: 203, column: 8, scope: !2206)
!2253 = !DILocation(line: 204, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 204, column: 6)
!2255 = !DILocation(line: 204, column: 6, scope: !2206)
!2256 = !DILocation(line: 205, column: 3, scope: !2254)
!2257 = !DILocation(line: 207, column: 2, scope: !2206)
!2258 = !DILocation(line: 207, column: 2, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 207, column: 2)
!2260 = !DILocation(line: 208, column: 18, scope: !2206)
!2261 = !DILocation(line: 208, column: 25, scope: !2206)
!2262 = !DILocation(line: 208, column: 54, scope: !2206)
!2263 = !DILocation(line: 208, column: 61, scope: !2206)
!2264 = !DILocation(line: 209, column: 10, scope: !2206)
!2265 = !DILocation(line: 209, column: 19, scope: !2206)
!2266 = !DILocation(line: 208, column: 2, scope: !2206)
!2267 = !DILocation(line: 210, column: 17, scope: !2206)
!2268 = !DILocation(line: 210, column: 24, scope: !2206)
!2269 = !DILocation(line: 210, column: 2, scope: !2206)
!2270 = !DILocation(line: 212, column: 22, scope: !2206)
!2271 = !DILocation(line: 212, column: 2, scope: !2206)
!2272 = !DILocation(line: 212, column: 9, scope: !2206)
!2273 = !DILocation(line: 212, column: 20, scope: !2206)
!2274 = !DILocation(line: 213, column: 14, scope: !2206)
!2275 = !DILocation(line: 213, column: 21, scope: !2206)
!2276 = !DILocation(line: 213, column: 34, scope: !2206)
!2277 = !{i8 0, i8 2}
!2278 = !DILocation(line: 213, column: 54, scope: !2206)
!2279 = !DILocation(line: 213, column: 2, scope: !2206)
!2280 = !DILocation(line: 214, column: 18, scope: !2206)
!2281 = !DILocation(line: 214, column: 2, scope: !2206)
!2282 = !DILocation(line: 214, column: 9, scope: !2206)
!2283 = !DILocation(line: 214, column: 16, scope: !2206)
!2284 = !DILocation(line: 216, column: 2, scope: !2206)
!2285 = !DILocation(line: 216, column: 9, scope: !2206)
!2286 = !DILocation(line: 216, column: 14, scope: !2206)
!2287 = !DILocation(line: 216, column: 20, scope: !2206)
!2288 = !DILocation(line: 229, column: 2, scope: !2206)
!2289 = !DILocation(line: 229, column: 19, scope: !2206)
!2290 = !DILocation(line: 230, column: 3, scope: !2223)
!2291 = !DILocation(line: 230, column: 3, scope: !2226)
!2292 = !DILocation(line: 230, column: 3, scope: !2225)
!2293 = !DILocation(line: 230, column: 3, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 230, column: 3)
!2295 = !DILocation(line: 230, column: 3, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 230, column: 3)
!2297 = !{i64 2152784932, i64 2152784961, i64 2152785007, i64 2152785065, i64 2152785119, i64 2152785173, i64 2152785228, i64 2152785259, i64 2152785567, i64 2152785573, i64 2152785620, i64 2152785643, i64 2152785669}
!2298 = !DILocation(line: 230, column: 3, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 230, column: 3)
!2300 = !DILocation(line: 230, column: 3, scope: !2206)
!2301 = distinct !{!2301, !2288, !2300, !2074, !2075}
!2302 = !DILocation(line: 232, column: 9, scope: !2206)
!2303 = !DILocation(line: 232, column: 2, scope: !2206)
!2304 = !DILocation(line: 233, column: 1, scope: !2206)
!2305 = distinct !DISubprogram(name: "kzalloc", scope: !45, file: !45, line: 719, type: !2306, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!55, !1316, !56}
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "size", arg: 1, scope: !2305, file: !45, line: 719, type: !1316)
!2310 = !DILocalVariable(name: "flags", arg: 2, scope: !2305, file: !45, line: 719, type: !56)
!2311 = !DILocation(line: 719, column: 52, scope: !2305)
!2312 = !DILocation(line: 719, column: 64, scope: !2305)
!2313 = !DILocation(line: 721, column: 17, scope: !2305)
!2314 = !DILocation(line: 721, column: 23, scope: !2305)
!2315 = !DILocation(line: 721, column: 29, scope: !2305)
!2316 = !DILocation(line: 721, column: 9, scope: !2305)
!2317 = !DILocation(line: 721, column: 2, scope: !2305)
!2318 = distinct !DISubprogram(name: "spinlock_check", scope: !2319, file: !2319, line: 324, type: !2320, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2319 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2322, !80}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "lock", arg: 1, scope: !2318, file: !2319, line: 324, type: !80)
!2325 = !DILocation(line: 324, column: 67, scope: !2318)
!2326 = !DILocation(line: 326, column: 10, scope: !2318)
!2327 = !DILocation(line: 326, column: 16, scope: !2318)
!2328 = !DILocation(line: 326, column: 2, scope: !2318)
!2329 = !DISubprogram(name: "dma_fence_init", scope: !38, file: !38, line: 282, type: !2330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !76, !125, !80, !184, !184}
!2332 = distinct !DISubprogram(name: "init_irq_work", scope: !213, file: !213, line: 37, type: !2333, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !236, !233}
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "work", arg: 1, scope: !2332, file: !213, line: 37, type: !236)
!2337 = !DILocalVariable(name: "func", arg: 2, scope: !2332, file: !213, line: 37, type: !233)
!2338 = !DILocation(line: 37, column: 37, scope: !2332)
!2339 = !DILocation(line: 37, column: 50, scope: !2332)
!2340 = !DILocation(line: 39, column: 3, scope: !2332)
!2341 = !DILocation(line: 39, column: 10, scope: !2332)
!2342 = !DILocation(line: 40, column: 1, scope: !2332)
!2343 = distinct !DISubprogram(name: "irq_dma_fence_array_work", scope: !3, file: !3, line: 45, type: !234, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2344 = !{!2345, !2346, !2347}
!2345 = !DILocalVariable(name: "wrk", arg: 1, scope: !2343, file: !3, line: 45, type: !236)
!2346 = !DILocalVariable(name: "array", scope: !2343, file: !3, line: 47, type: !202)
!2347 = !DILocalVariable(name: "__mptr", scope: !2348, file: !3, line: 47, type: !55)
!2348 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 47, column: 34)
!2349 = !DILocation(line: 45, column: 55, scope: !2343)
!2350 = !DILocation(line: 47, column: 2, scope: !2343)
!2351 = !DILocation(line: 47, column: 26, scope: !2343)
!2352 = !DILocation(line: 47, column: 34, scope: !2348)
!2353 = !DILocation(line: 47, column: 34, scope: !2343)
!2354 = !DILocation(line: 49, column: 38, scope: !2343)
!2355 = !DILocation(line: 49, column: 2, scope: !2343)
!2356 = !DILocation(line: 51, column: 20, scope: !2343)
!2357 = !DILocation(line: 51, column: 27, scope: !2343)
!2358 = !DILocation(line: 51, column: 2, scope: !2343)
!2359 = !DILocation(line: 52, column: 17, scope: !2343)
!2360 = !DILocation(line: 52, column: 24, scope: !2343)
!2361 = !DILocation(line: 52, column: 2, scope: !2343)
!2362 = !DILocation(line: 53, column: 1, scope: !2343)
!2363 = distinct !DISubprogram(name: "atomic_set", scope: !2364, file: !2364, line: 65, type: !2365, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2364 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2367, !105}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2368 = !{!2369, !2370}
!2369 = !DILocalVariable(name: "v", arg: 1, scope: !2363, file: !2364, line: 65, type: !2367)
!2370 = !DILocalVariable(name: "i", arg: 2, scope: !2363, file: !2364, line: 65, type: !105)
!2371 = !DILocation(line: 65, column: 22, scope: !2363)
!2372 = !DILocation(line: 65, column: 29, scope: !2363)
!2373 = !DILocation(line: 67, column: 26, scope: !2363)
!2374 = !DILocation(line: 67, column: 2, scope: !2363)
!2375 = !DILocation(line: 68, column: 17, scope: !2363)
!2376 = !DILocation(line: 68, column: 20, scope: !2363)
!2377 = !DILocation(line: 68, column: 2, scope: !2363)
!2378 = !DILocation(line: 69, column: 1, scope: !2363)
!2379 = distinct !DISubprogram(name: "dma_fence_is_container", scope: !38, file: !38, line: 679, type: !142, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2380)
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "fence", arg: 1, scope: !2379, file: !38, line: 679, type: !76)
!2382 = !DILocation(line: 679, column: 61, scope: !2379)
!2383 = !DILocation(line: 681, column: 28, scope: !2379)
!2384 = !DILocation(line: 681, column: 9, scope: !2379)
!2385 = !DILocation(line: 681, column: 35, scope: !2379)
!2386 = !DILocation(line: 681, column: 57, scope: !2379)
!2387 = !DILocation(line: 681, column: 38, scope: !2379)
!2388 = !DILocation(line: 681, column: 2, scope: !2379)
!2389 = distinct !DISubprogram(name: "dma_fence_match_context", scope: !3, file: !3, line: 245, type: !2390, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!130, !76, !184}
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DILocalVariable(name: "fence", arg: 1, scope: !2389, file: !3, line: 245, type: !76)
!2394 = !DILocalVariable(name: "context", arg: 2, scope: !2389, file: !3, line: 245, type: !184)
!2395 = !DILocalVariable(name: "array", scope: !2389, file: !3, line: 247, type: !202)
!2396 = !DILocalVariable(name: "i", scope: !2389, file: !3, line: 248, type: !7)
!2397 = !DILocation(line: 245, column: 48, scope: !2389)
!2398 = !DILocation(line: 245, column: 59, scope: !2389)
!2399 = !DILocation(line: 247, column: 2, scope: !2389)
!2400 = !DILocation(line: 247, column: 26, scope: !2389)
!2401 = !DILocation(line: 247, column: 53, scope: !2389)
!2402 = !DILocation(line: 247, column: 34, scope: !2389)
!2403 = !DILocation(line: 248, column: 2, scope: !2389)
!2404 = !DILocation(line: 248, column: 11, scope: !2389)
!2405 = !DILocation(line: 250, column: 26, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 250, column: 6)
!2407 = !DILocation(line: 250, column: 7, scope: !2406)
!2408 = !DILocation(line: 250, column: 6, scope: !2389)
!2409 = !DILocation(line: 251, column: 10, scope: !2406)
!2410 = !DILocation(line: 251, column: 17, scope: !2406)
!2411 = !DILocation(line: 251, column: 28, scope: !2406)
!2412 = !DILocation(line: 251, column: 25, scope: !2406)
!2413 = !DILocation(line: 251, column: 3, scope: !2406)
!2414 = !DILocation(line: 253, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 253, column: 2)
!2416 = !DILocation(line: 253, column: 7, scope: !2415)
!2417 = !DILocation(line: 253, column: 14, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 253, column: 2)
!2419 = !DILocation(line: 253, column: 18, scope: !2418)
!2420 = !DILocation(line: 253, column: 25, scope: !2418)
!2421 = !DILocation(line: 253, column: 16, scope: !2418)
!2422 = !DILocation(line: 253, column: 2, scope: !2415)
!2423 = !DILocation(line: 254, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 254, column: 7)
!2425 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 253, column: 42)
!2426 = !DILocation(line: 254, column: 14, scope: !2424)
!2427 = !DILocation(line: 254, column: 21, scope: !2424)
!2428 = !DILocation(line: 254, column: 25, scope: !2424)
!2429 = !DILocation(line: 254, column: 36, scope: !2424)
!2430 = !DILocation(line: 254, column: 33, scope: !2424)
!2431 = !DILocation(line: 254, column: 7, scope: !2425)
!2432 = !DILocation(line: 255, column: 4, scope: !2424)
!2433 = !DILocation(line: 256, column: 2, scope: !2425)
!2434 = !DILocation(line: 253, column: 38, scope: !2418)
!2435 = !DILocation(line: 253, column: 2, scope: !2418)
!2436 = distinct !{!2436, !2422, !2437, !2074, !2075}
!2437 = !DILocation(line: 256, column: 2, scope: !2415)
!2438 = !DILocation(line: 258, column: 2, scope: !2389)
!2439 = !DILocation(line: 259, column: 1, scope: !2389)
!2440 = distinct !DISubprogram(name: "to_dma_fence_array", scope: !60, file: !60, line: 56, type: !2441, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!202, !76}
!2443 = !{!2444, !2445}
!2444 = !DILocalVariable(name: "fence", arg: 1, scope: !2440, file: !60, line: 56, type: !76)
!2445 = !DILocalVariable(name: "__mptr", scope: !2446, file: !60, line: 61, type: !55)
!2446 = distinct !DILexicalBlock(scope: !2440, file: !60, line: 61, column: 9)
!2447 = !DILocation(line: 56, column: 38, scope: !2440)
!2448 = !DILocation(line: 58, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2440, file: !60, line: 58, column: 6)
!2450 = !DILocation(line: 58, column: 13, scope: !2449)
!2451 = !DILocation(line: 58, column: 36, scope: !2449)
!2452 = !DILocation(line: 58, column: 17, scope: !2449)
!2453 = !DILocation(line: 58, column: 6, scope: !2440)
!2454 = !DILocation(line: 59, column: 3, scope: !2449)
!2455 = !DILocation(line: 61, column: 9, scope: !2446)
!2456 = !DILocation(line: 61, column: 9, scope: !2440)
!2457 = !DILocation(line: 61, column: 2, scope: !2440)
!2458 = !DILocation(line: 62, column: 1, scope: !2440)
!2459 = distinct !DISubprogram(name: "dma_fence_is_array", scope: !38, file: !38, line: 655, type: !142, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2460)
!2460 = !{!2461}
!2461 = !DILocalVariable(name: "fence", arg: 1, scope: !2459, file: !38, line: 655, type: !76)
!2462 = !DILocation(line: 655, column: 57, scope: !2459)
!2463 = !DILocation(line: 657, column: 9, scope: !2459)
!2464 = !DILocation(line: 657, column: 16, scope: !2459)
!2465 = !DILocation(line: 657, column: 20, scope: !2459)
!2466 = !DILocation(line: 657, column: 2, scope: !2459)
!2467 = distinct !DISubprogram(name: "dma_fence_array_first", scope: !3, file: !3, line: 262, type: !2468, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!76, !76}
!2470 = !{!2471, !2472}
!2471 = !DILocalVariable(name: "head", arg: 1, scope: !2467, file: !3, line: 262, type: !76)
!2472 = !DILocalVariable(name: "array", scope: !2467, file: !3, line: 264, type: !202)
!2473 = !DILocation(line: 262, column: 59, scope: !2467)
!2474 = !DILocation(line: 264, column: 2, scope: !2467)
!2475 = !DILocation(line: 264, column: 26, scope: !2467)
!2476 = !DILocation(line: 266, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 266, column: 6)
!2478 = !DILocation(line: 266, column: 6, scope: !2467)
!2479 = !DILocation(line: 267, column: 3, scope: !2477)
!2480 = !DILocation(line: 269, column: 29, scope: !2467)
!2481 = !DILocation(line: 269, column: 10, scope: !2467)
!2482 = !DILocation(line: 269, column: 8, scope: !2467)
!2483 = !DILocation(line: 270, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 270, column: 6)
!2485 = !DILocation(line: 270, column: 6, scope: !2467)
!2486 = !DILocation(line: 271, column: 10, scope: !2484)
!2487 = !DILocation(line: 271, column: 3, scope: !2484)
!2488 = !DILocation(line: 273, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 273, column: 6)
!2490 = !DILocation(line: 273, column: 14, scope: !2489)
!2491 = !DILocation(line: 273, column: 6, scope: !2467)
!2492 = !DILocation(line: 274, column: 3, scope: !2489)
!2493 = !DILocation(line: 276, column: 9, scope: !2467)
!2494 = !DILocation(line: 276, column: 16, scope: !2467)
!2495 = !DILocation(line: 276, column: 2, scope: !2467)
!2496 = !DILocation(line: 277, column: 1, scope: !2467)
!2497 = distinct !DISubprogram(name: "dma_fence_array_next", scope: !3, file: !3, line: 280, type: !2498, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!76, !76, !7}
!2500 = !{!2501, !2502, !2503}
!2501 = !DILocalVariable(name: "head", arg: 1, scope: !2497, file: !3, line: 280, type: !76)
!2502 = !DILocalVariable(name: "index", arg: 2, scope: !2497, file: !3, line: 281, type: !7)
!2503 = !DILocalVariable(name: "array", scope: !2497, file: !3, line: 283, type: !202)
!2504 = !DILocation(line: 280, column: 58, scope: !2497)
!2505 = !DILocation(line: 281, column: 25, scope: !2497)
!2506 = !DILocation(line: 283, column: 2, scope: !2497)
!2507 = !DILocation(line: 283, column: 26, scope: !2497)
!2508 = !DILocation(line: 283, column: 53, scope: !2497)
!2509 = !DILocation(line: 283, column: 34, scope: !2497)
!2510 = !DILocation(line: 285, column: 7, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 285, column: 6)
!2512 = !DILocation(line: 285, column: 13, scope: !2511)
!2513 = !DILocation(line: 285, column: 16, scope: !2511)
!2514 = !DILocation(line: 285, column: 25, scope: !2511)
!2515 = !DILocation(line: 285, column: 32, scope: !2511)
!2516 = !DILocation(line: 285, column: 22, scope: !2511)
!2517 = !DILocation(line: 285, column: 6, scope: !2497)
!2518 = !DILocation(line: 286, column: 3, scope: !2511)
!2519 = !DILocation(line: 288, column: 9, scope: !2497)
!2520 = !DILocation(line: 288, column: 16, scope: !2497)
!2521 = !DILocation(line: 288, column: 23, scope: !2497)
!2522 = !DILocation(line: 288, column: 2, scope: !2497)
!2523 = !DILocation(line: 289, column: 1, scope: !2497)
!2524 = distinct !DISubprogram(name: "dma_fence_get", scope: !38, file: !38, line: 305, type: !2468, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2525)
!2525 = !{!2526}
!2526 = !DILocalVariable(name: "fence", arg: 1, scope: !2524, file: !38, line: 305, type: !76)
!2527 = !DILocation(line: 305, column: 65, scope: !2524)
!2528 = !DILocation(line: 307, column: 6, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2524, file: !38, line: 307, column: 6)
!2530 = !DILocation(line: 307, column: 6, scope: !2524)
!2531 = !DILocation(line: 308, column: 13, scope: !2529)
!2532 = !DILocation(line: 308, column: 20, scope: !2529)
!2533 = !DILocation(line: 308, column: 3, scope: !2529)
!2534 = !DILocation(line: 309, column: 9, scope: !2524)
!2535 = !DILocation(line: 309, column: 2, scope: !2524)
!2536 = !DISubprogram(name: "dma_fence_add_callback", scope: !38, file: !38, line: 397, type: !2537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!105, !76, !200, !72}
!2539 = distinct !DISubprogram(name: "dma_fence_array_cb_func", scope: !3, file: !3, line: 55, type: !74, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2540)
!2540 = !{!2541, !2542, !2543, !2544, !2546}
!2541 = !DILocalVariable(name: "f", arg: 1, scope: !2539, file: !3, line: 55, type: !76)
!2542 = !DILocalVariable(name: "cb", arg: 2, scope: !2539, file: !3, line: 56, type: !200)
!2543 = !DILocalVariable(name: "array_cb", scope: !2539, file: !3, line: 58, type: !58)
!2544 = !DILocalVariable(name: "__mptr", scope: !2545, file: !3, line: 59, type: !55)
!2545 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 59, column: 3)
!2546 = !DILocalVariable(name: "array", scope: !2539, file: !3, line: 60, type: !202)
!2547 = !DILocation(line: 55, column: 55, scope: !2539)
!2548 = !DILocation(line: 56, column: 30, scope: !2539)
!2549 = !DILocation(line: 58, column: 2, scope: !2539)
!2550 = !DILocation(line: 58, column: 29, scope: !2539)
!2551 = !DILocation(line: 59, column: 3, scope: !2545)
!2552 = !DILocation(line: 59, column: 3, scope: !2539)
!2553 = !DILocation(line: 60, column: 2, scope: !2539)
!2554 = !DILocation(line: 60, column: 26, scope: !2539)
!2555 = !DILocation(line: 60, column: 34, scope: !2539)
!2556 = !DILocation(line: 60, column: 44, scope: !2539)
!2557 = !DILocation(line: 62, column: 36, scope: !2539)
!2558 = !DILocation(line: 62, column: 43, scope: !2539)
!2559 = !DILocation(line: 62, column: 46, scope: !2539)
!2560 = !DILocation(line: 62, column: 2, scope: !2539)
!2561 = !DILocation(line: 64, column: 27, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 64, column: 6)
!2563 = !DILocation(line: 64, column: 34, scope: !2562)
!2564 = !DILocation(line: 64, column: 6, scope: !2562)
!2565 = !DILocation(line: 64, column: 6, scope: !2539)
!2566 = !DILocation(line: 65, column: 19, scope: !2562)
!2567 = !DILocation(line: 65, column: 26, scope: !2562)
!2568 = !DILocation(line: 65, column: 3, scope: !2562)
!2569 = !DILocation(line: 67, column: 18, scope: !2562)
!2570 = !DILocation(line: 67, column: 25, scope: !2562)
!2571 = !DILocation(line: 67, column: 3, scope: !2562)
!2572 = !DILocation(line: 68, column: 1, scope: !2539)
!2573 = distinct !DISubprogram(name: "dma_fence_array_set_pending_error", scope: !3, file: !3, line: 28, type: !2574, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !202, !105}
!2576 = !{!2577, !2578, !2579, !2582, !2584, !2585, !2586}
!2577 = !DILocalVariable(name: "array", arg: 1, scope: !2573, file: !3, line: 28, type: !202)
!2578 = !DILocalVariable(name: "error", arg: 2, scope: !2573, file: !3, line: 29, type: !105)
!2579 = !DILocalVariable(name: "__ai_ptr", scope: !2580, file: !3, line: 36, type: !867)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 36, column: 3)
!2581 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 35, column: 6)
!2582 = !DILocalVariable(name: "__ret", scope: !2583, file: !3, line: 36, type: !105)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 36, column: 3)
!2584 = !DILocalVariable(name: "__old", scope: !2583, file: !3, line: 36, type: !105)
!2585 = !DILocalVariable(name: "__new", scope: !2583, file: !3, line: 36, type: !105)
!2586 = !DILocalVariable(name: "__ptr", scope: !2583, file: !3, line: 36, type: !1947)
!2587 = !DILocation(line: 28, column: 71, scope: !2573)
!2588 = !DILocation(line: 29, column: 16, scope: !2573)
!2589 = !DILocation(line: 35, column: 6, scope: !2581)
!2590 = !DILocation(line: 35, column: 6, scope: !2573)
!2591 = !DILocation(line: 36, column: 3, scope: !2580)
!2592 = !DILocation(line: 36, column: 3, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 36, column: 3)
!2594 = !DILocation(line: 36, column: 3, scope: !2583)
!2595 = !{i64 2152770720, i64 2152770759, i64 2152770780, i64 2152770817, i64 2152770840, i64 2152770849}
!2596 = !DILocation(line: 36, column: 3, scope: !2581)
!2597 = !DILocation(line: 37, column: 1, scope: !2573)
!2598 = distinct !DISubprogram(name: "dma_fence_put", scope: !38, file: !38, line: 293, type: !152, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2599 = !{!2600}
!2600 = !DILocalVariable(name: "fence", arg: 1, scope: !2598, file: !38, line: 293, type: !76)
!2601 = !DILocation(line: 293, column: 52, scope: !2598)
!2602 = !DILocation(line: 295, column: 6, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !38, line: 295, column: 6)
!2604 = !DILocation(line: 295, column: 6, scope: !2598)
!2605 = !DILocation(line: 296, column: 13, scope: !2603)
!2606 = !DILocation(line: 296, column: 20, scope: !2603)
!2607 = !DILocation(line: 296, column: 3, scope: !2603)
!2608 = !DILocation(line: 297, column: 1, scope: !2598)
!2609 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !2364, file: !2364, line: 1372, type: !2610, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!130, !2367}
!2612 = !{!2613}
!2613 = !DILocalVariable(name: "v", arg: 1, scope: !2609, file: !2364, line: 1372, type: !2367)
!2614 = !DILocation(line: 1372, column: 31, scope: !2609)
!2615 = !DILocation(line: 1374, column: 2, scope: !2609)
!2616 = !DILocation(line: 1374, column: 2, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2609, file: !2364, line: 1374, column: 2)
!2618 = !DILocation(line: 1375, column: 31, scope: !2609)
!2619 = !DILocation(line: 1375, column: 2, scope: !2609)
!2620 = !DILocation(line: 1376, column: 33, scope: !2609)
!2621 = !DILocation(line: 1376, column: 9, scope: !2609)
!2622 = !DILocation(line: 1376, column: 2, scope: !2609)
!2623 = distinct !DISubprogram(name: "dma_fence_array_clear_pending_error", scope: !3, file: !3, line: 39, type: !2624, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !202}
!2626 = !{!2627, !2628, !2630, !2632, !2633, !2634}
!2627 = !DILocalVariable(name: "array", arg: 1, scope: !2623, file: !3, line: 39, type: !202)
!2628 = !DILocalVariable(name: "__ai_ptr", scope: !2629, file: !3, line: 42, type: !867)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 42, column: 2)
!2630 = !DILocalVariable(name: "__ret", scope: !2631, file: !3, line: 42, type: !105)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 42, column: 2)
!2632 = !DILocalVariable(name: "__old", scope: !2631, file: !3, line: 42, type: !105)
!2633 = !DILocalVariable(name: "__new", scope: !2631, file: !3, line: 42, type: !105)
!2634 = !DILocalVariable(name: "__ptr", scope: !2631, file: !3, line: 42, type: !1947)
!2635 = !DILocation(line: 39, column: 73, scope: !2623)
!2636 = !DILocation(line: 42, column: 2, scope: !2629)
!2637 = !DILocation(line: 42, column: 2, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 42, column: 2)
!2639 = !DILocation(line: 42, column: 2, scope: !2631)
!2640 = !{i64 2152773251, i64 2152773290, i64 2152773311, i64 2152773348, i64 2152773371, i64 2152773380}
!2641 = !DILocation(line: 42, column: 2, scope: !2623)
!2642 = !DILocation(line: 43, column: 1, scope: !2623)
!2643 = distinct !DISubprogram(name: "kref_get", scope: !192, file: !192, line: 43, type: !2644, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2647)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2647 = !{!2648}
!2648 = !DILocalVariable(name: "kref", arg: 1, scope: !2643, file: !192, line: 43, type: !2646)
!2649 = !DILocation(line: 43, column: 42, scope: !2643)
!2650 = !DILocation(line: 45, column: 16, scope: !2643)
!2651 = !DILocation(line: 45, column: 22, scope: !2643)
!2652 = !DILocation(line: 45, column: 2, scope: !2643)
!2653 = !DILocation(line: 46, column: 1, scope: !2643)
!2654 = distinct !DISubprogram(name: "refcount_inc", scope: !30, file: !30, line: 265, type: !2655, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2658)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !2657}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!2658 = !{!2659}
!2659 = !DILocalVariable(name: "r", arg: 1, scope: !2654, file: !30, line: 265, type: !2657)
!2660 = !DILocation(line: 265, column: 45, scope: !2654)
!2661 = !DILocation(line: 267, column: 17, scope: !2654)
!2662 = !DILocation(line: 267, column: 2, scope: !2654)
!2663 = !DILocation(line: 268, column: 1, scope: !2654)
!2664 = distinct !DISubprogram(name: "__refcount_inc", scope: !30, file: !30, line: 248, type: !2665, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2657, !867}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "r", arg: 1, scope: !2664, file: !30, line: 248, type: !2657)
!2669 = !DILocalVariable(name: "oldp", arg: 2, scope: !2664, file: !30, line: 248, type: !867)
!2670 = !DILocation(line: 248, column: 47, scope: !2664)
!2671 = !DILocation(line: 248, column: 55, scope: !2664)
!2672 = !DILocation(line: 250, column: 20, scope: !2664)
!2673 = !DILocation(line: 250, column: 23, scope: !2664)
!2674 = !DILocation(line: 250, column: 2, scope: !2664)
!2675 = !DILocation(line: 251, column: 1, scope: !2664)
!2676 = distinct !DISubprogram(name: "__refcount_add", scope: !30, file: !30, line: 191, type: !2677, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !105, !2657, !867}
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DILocalVariable(name: "i", arg: 1, scope: !2676, file: !30, line: 191, type: !105)
!2681 = !DILocalVariable(name: "r", arg: 2, scope: !2676, file: !30, line: 191, type: !2657)
!2682 = !DILocalVariable(name: "oldp", arg: 3, scope: !2676, file: !30, line: 191, type: !867)
!2683 = !DILocalVariable(name: "old", scope: !2676, file: !30, line: 193, type: !105)
!2684 = !DILocation(line: 191, column: 39, scope: !2676)
!2685 = !DILocation(line: 191, column: 54, scope: !2676)
!2686 = !DILocation(line: 191, column: 62, scope: !2676)
!2687 = !DILocation(line: 193, column: 2, scope: !2676)
!2688 = !DILocation(line: 193, column: 6, scope: !2676)
!2689 = !DILocation(line: 193, column: 37, scope: !2676)
!2690 = !DILocation(line: 193, column: 41, scope: !2676)
!2691 = !DILocation(line: 193, column: 44, scope: !2676)
!2692 = !DILocation(line: 193, column: 12, scope: !2676)
!2693 = !DILocation(line: 195, column: 6, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 195, column: 6)
!2695 = !DILocation(line: 195, column: 6, scope: !2676)
!2696 = !DILocation(line: 196, column: 11, scope: !2694)
!2697 = !DILocation(line: 196, column: 4, scope: !2694)
!2698 = !DILocation(line: 196, column: 9, scope: !2694)
!2699 = !DILocation(line: 196, column: 3, scope: !2694)
!2700 = !DILocation(line: 198, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 198, column: 6)
!2702 = !DILocation(line: 198, column: 6, scope: !2676)
!2703 = !DILocation(line: 199, column: 26, scope: !2701)
!2704 = !DILocation(line: 199, column: 3, scope: !2701)
!2705 = !DILocation(line: 200, column: 11, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !30, line: 200, column: 11)
!2707 = !DILocation(line: 200, column: 11, scope: !2701)
!2708 = !DILocation(line: 201, column: 26, scope: !2706)
!2709 = !DILocation(line: 201, column: 3, scope: !2706)
!2710 = !DILocation(line: 202, column: 1, scope: !2676)
!2711 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2364, file: !2364, line: 250, type: !2712, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!105, !105, !2367}
!2714 = !{!2715, !2716}
!2715 = !DILocalVariable(name: "i", arg: 1, scope: !2711, file: !2364, line: 250, type: !105)
!2716 = !DILocalVariable(name: "v", arg: 2, scope: !2711, file: !2364, line: 250, type: !2367)
!2717 = !DILocation(line: 250, column: 30, scope: !2711)
!2718 = !DILocation(line: 250, column: 43, scope: !2711)
!2719 = !DILocation(line: 252, column: 31, scope: !2711)
!2720 = !DILocation(line: 252, column: 2, scope: !2711)
!2721 = !DILocation(line: 253, column: 38, scope: !2711)
!2722 = !DILocation(line: 253, column: 41, scope: !2711)
!2723 = !DILocation(line: 253, column: 9, scope: !2711)
!2724 = !DILocation(line: 253, column: 2, scope: !2711)
!2725 = !DISubprogram(name: "refcount_warn_saturate", scope: !30, file: !30, line: 127, type: !2726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2657, !29}
!2728 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2729, file: !2729, line: 94, type: !2730, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2735)
!2729 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !2732, !1316}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2734)
!2734 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "v", arg: 1, scope: !2728, file: !2729, line: 94, type: !2732)
!2737 = !DILocalVariable(name: "size", arg: 2, scope: !2728, file: !2729, line: 94, type: !1316)
!2738 = !DILocation(line: 94, column: 79, scope: !2728)
!2739 = !DILocation(line: 94, column: 89, scope: !2728)
!2740 = !DILocation(line: 96, column: 20, scope: !2728)
!2741 = !DILocation(line: 96, column: 23, scope: !2728)
!2742 = !DILocation(line: 96, column: 2, scope: !2728)
!2743 = !DILocation(line: 97, column: 2, scope: !2728)
!2744 = !DILocation(line: 98, column: 1, scope: !2728)
!2745 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2746, file: !2746, line: 731, type: !2712, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2747)
!2746 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2747 = !{!2748, !2749}
!2748 = !DILocalVariable(name: "i", arg: 1, scope: !2745, file: !2746, line: 731, type: !105)
!2749 = !DILocalVariable(name: "v", arg: 2, scope: !2745, file: !2746, line: 731, type: !2367)
!2750 = !DILocation(line: 731, column: 34, scope: !2745)
!2751 = !DILocation(line: 731, column: 47, scope: !2745)
!2752 = !DILocation(line: 736, column: 31, scope: !2745)
!2753 = !DILocation(line: 736, column: 34, scope: !2745)
!2754 = !DILocation(line: 736, column: 9, scope: !2745)
!2755 = !DILocation(line: 736, column: 2, scope: !2745)
!2756 = distinct !DISubprogram(name: "kasan_check_write", scope: !2757, file: !2757, line: 44, type: !2758, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2757 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!130, !2732, !7}
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "p", arg: 1, scope: !2756, file: !2757, line: 44, type: !2732)
!2762 = !DILocalVariable(name: "size", arg: 2, scope: !2756, file: !2757, line: 44, type: !7)
!2763 = !DILocation(line: 44, column: 59, scope: !2756)
!2764 = !DILocation(line: 44, column: 75, scope: !2756)
!2765 = !DILocation(line: 46, column: 2, scope: !2756)
!2766 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2767, file: !2767, line: 229, type: !2768, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2770)
!2767 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2732, !1316, !105}
!2770 = !{!2771, !2772, !2773}
!2771 = !DILocalVariable(name: "ptr", arg: 1, scope: !2766, file: !2767, line: 229, type: !2732)
!2772 = !DILocalVariable(name: "size", arg: 2, scope: !2766, file: !2767, line: 229, type: !1316)
!2773 = !DILocalVariable(name: "type", arg: 3, scope: !2766, file: !2767, line: 230, type: !105)
!2774 = !DILocation(line: 229, column: 60, scope: !2766)
!2775 = !DILocation(line: 229, column: 72, scope: !2766)
!2776 = !DILocation(line: 230, column: 15, scope: !2766)
!2777 = !DILocation(line: 230, column: 23, scope: !2766)
!2778 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2779, file: !2779, line: 95, type: !2712, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2779 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2780 = !{!2781, !2782, !2783}
!2781 = !DILocalVariable(name: "i", arg: 1, scope: !2778, file: !2779, line: 95, type: !105)
!2782 = !DILocalVariable(name: "v", arg: 2, scope: !2778, file: !2779, line: 95, type: !2367)
!2783 = !DILocalVariable(name: "__ret", scope: !2784, file: !2779, line: 97, type: !105)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !2779, line: 97, column: 9)
!2785 = !DILocation(line: 95, column: 54, scope: !2778)
!2786 = !DILocation(line: 95, column: 67, scope: !2778)
!2787 = !DILocation(line: 97, column: 9, scope: !2784)
!2788 = !{i64 2148929427, i64 2148929466, i64 2148929487, i64 2148929524, i64 2148929547, i64 2148929556}
!2789 = !DILocation(line: 97, column: 9, scope: !2778)
!2790 = !DILocation(line: 97, column: 2, scope: !2778)
!2791 = !DISubprogram(name: "irq_work_queue", scope: !213, file: !213, line: 57, type: !2792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!130, !236}
!2794 = distinct !DISubprogram(name: "kref_put", scope: !192, file: !192, line: 62, type: !2795, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2798)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!105, !2646, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2798 = !{!2799, !2800}
!2799 = !DILocalVariable(name: "kref", arg: 1, scope: !2794, file: !192, line: 62, type: !2646)
!2800 = !DILocalVariable(name: "release", arg: 2, scope: !2794, file: !192, line: 62, type: !2797)
!2801 = !DILocation(line: 62, column: 41, scope: !2794)
!2802 = !DILocation(line: 62, column: 54, scope: !2794)
!2803 = !DILocation(line: 64, column: 29, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2794, file: !192, line: 64, column: 6)
!2805 = !DILocation(line: 64, column: 35, scope: !2804)
!2806 = !DILocation(line: 64, column: 6, scope: !2804)
!2807 = !DILocation(line: 64, column: 6, scope: !2794)
!2808 = !DILocation(line: 65, column: 3, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2804, file: !192, line: 64, column: 46)
!2810 = !DILocation(line: 65, column: 11, scope: !2809)
!2811 = !DILocation(line: 66, column: 3, scope: !2809)
!2812 = !DILocation(line: 68, column: 2, scope: !2794)
!2813 = !DILocation(line: 69, column: 1, scope: !2794)
!2814 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !30, file: !30, line: 331, type: !2815, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!130, !2657}
!2817 = !{!2818}
!2818 = !DILocalVariable(name: "r", arg: 1, scope: !2814, file: !30, line: 331, type: !2657)
!2819 = !DILocation(line: 331, column: 67, scope: !2814)
!2820 = !DILocation(line: 333, column: 33, scope: !2814)
!2821 = !DILocation(line: 333, column: 9, scope: !2814)
!2822 = !DILocation(line: 333, column: 2, scope: !2814)
!2823 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !30, file: !30, line: 313, type: !2824, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!130, !2657, !867}
!2826 = !{!2827, !2828}
!2827 = !DILocalVariable(name: "r", arg: 1, scope: !2823, file: !30, line: 313, type: !2657)
!2828 = !DILocalVariable(name: "oldp", arg: 2, scope: !2823, file: !30, line: 313, type: !867)
!2829 = !DILocation(line: 313, column: 69, scope: !2823)
!2830 = !DILocation(line: 313, column: 77, scope: !2823)
!2831 = !DILocation(line: 315, column: 36, scope: !2823)
!2832 = !DILocation(line: 315, column: 39, scope: !2823)
!2833 = !DILocation(line: 315, column: 9, scope: !2823)
!2834 = !DILocation(line: 315, column: 2, scope: !2823)
!2835 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !30, file: !30, line: 270, type: !2836, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!130, !105, !2657, !867}
!2838 = !{!2839, !2840, !2841, !2842}
!2839 = !DILocalVariable(name: "i", arg: 1, scope: !2835, file: !30, line: 270, type: !105)
!2840 = !DILocalVariable(name: "r", arg: 2, scope: !2835, file: !30, line: 270, type: !2657)
!2841 = !DILocalVariable(name: "oldp", arg: 3, scope: !2835, file: !30, line: 270, type: !867)
!2842 = !DILocalVariable(name: "old", scope: !2835, file: !30, line: 272, type: !105)
!2843 = !DILocation(line: 270, column: 61, scope: !2835)
!2844 = !DILocation(line: 270, column: 76, scope: !2835)
!2845 = !DILocation(line: 270, column: 84, scope: !2835)
!2846 = !DILocation(line: 272, column: 2, scope: !2835)
!2847 = !DILocation(line: 272, column: 6, scope: !2835)
!2848 = !DILocation(line: 272, column: 37, scope: !2835)
!2849 = !DILocation(line: 272, column: 41, scope: !2835)
!2850 = !DILocation(line: 272, column: 44, scope: !2835)
!2851 = !DILocation(line: 272, column: 12, scope: !2835)
!2852 = !DILocation(line: 274, column: 6, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2835, file: !30, line: 274, column: 6)
!2854 = !DILocation(line: 274, column: 6, scope: !2835)
!2855 = !DILocation(line: 275, column: 11, scope: !2853)
!2856 = !DILocation(line: 275, column: 4, scope: !2853)
!2857 = !DILocation(line: 275, column: 9, scope: !2853)
!2858 = !DILocation(line: 275, column: 3, scope: !2853)
!2859 = !DILocation(line: 277, column: 6, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2835, file: !30, line: 277, column: 6)
!2861 = !DILocation(line: 277, column: 13, scope: !2860)
!2862 = !DILocation(line: 277, column: 10, scope: !2860)
!2863 = !DILocation(line: 277, column: 6, scope: !2835)
!2864 = !DILocation(line: 278, column: 3, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !30, line: 277, column: 16)
!2866 = !DILocation(line: 278, column: 3, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !30, line: 278, column: 3)
!2868 = !DILocation(line: 278, column: 3, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2867, file: !30, line: 278, column: 3)
!2870 = !DILocation(line: 278, column: 3, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !30, line: 278, column: 3)
!2872 = !DILocation(line: 278, column: 3, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2871, file: !30, line: 278, column: 3)
!2874 = !{i64 2150222125}
!2875 = !DILocation(line: 279, column: 3, scope: !2865)
!2876 = !DILocation(line: 282, column: 6, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2835, file: !30, line: 282, column: 6)
!2878 = !DILocation(line: 282, column: 6, scope: !2835)
!2879 = !DILocation(line: 283, column: 26, scope: !2877)
!2880 = !DILocation(line: 283, column: 3, scope: !2877)
!2881 = !DILocation(line: 285, column: 2, scope: !2835)
!2882 = !DILocation(line: 286, column: 1, scope: !2835)
!2883 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2364, file: !2364, line: 397, type: !2712, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2884)
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "i", arg: 1, scope: !2883, file: !2364, line: 397, type: !105)
!2886 = !DILocalVariable(name: "v", arg: 2, scope: !2883, file: !2364, line: 397, type: !2367)
!2887 = !DILocation(line: 397, column: 30, scope: !2883)
!2888 = !DILocation(line: 397, column: 43, scope: !2883)
!2889 = !DILocation(line: 399, column: 2, scope: !2883)
!2890 = !DILocation(line: 399, column: 2, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2883, file: !2364, line: 399, column: 2)
!2892 = !DILocation(line: 400, column: 31, scope: !2883)
!2893 = !DILocation(line: 400, column: 2, scope: !2883)
!2894 = !DILocation(line: 401, column: 38, scope: !2883)
!2895 = !DILocation(line: 401, column: 41, scope: !2883)
!2896 = !DILocation(line: 401, column: 9, scope: !2883)
!2897 = !DILocation(line: 401, column: 2, scope: !2883)
!2898 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !2746, file: !2746, line: 928, type: !2712, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2899)
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "i", arg: 1, scope: !2898, file: !2746, line: 928, type: !105)
!2901 = !DILocalVariable(name: "v", arg: 2, scope: !2898, file: !2746, line: 928, type: !2367)
!2902 = !DILocation(line: 928, column: 34, scope: !2898)
!2903 = !DILocation(line: 928, column: 47, scope: !2898)
!2904 = !DILocation(line: 936, column: 31, scope: !2898)
!2905 = !DILocation(line: 936, column: 34, scope: !2898)
!2906 = !DILocation(line: 936, column: 9, scope: !2898)
!2907 = !DILocation(line: 936, column: 2, scope: !2898)
!2908 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2779, file: !2779, line: 101, type: !2712, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2909)
!2909 = !{!2910, !2911, !2912}
!2910 = !DILocalVariable(name: "i", arg: 1, scope: !2908, file: !2779, line: 101, type: !105)
!2911 = !DILocalVariable(name: "v", arg: 2, scope: !2908, file: !2779, line: 101, type: !2367)
!2912 = !DILocalVariable(name: "__ret", scope: !2913, file: !2779, line: 103, type: !105)
!2913 = distinct !DILexicalBlock(scope: !2908, file: !2779, line: 103, column: 9)
!2914 = !DILocation(line: 101, column: 54, scope: !2908)
!2915 = !DILocation(line: 101, column: 67, scope: !2908)
!2916 = !DILocation(line: 103, column: 9, scope: !2913)
!2917 = !{i64 2148931612, i64 2148931651, i64 2148931672, i64 2148931709, i64 2148931732, i64 2148931741}
!2918 = !DILocation(line: 103, column: 9, scope: !2908)
!2919 = !DILocation(line: 103, column: 2, scope: !2908)
!2920 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !2746, file: !2746, line: 2254, type: !2610, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "v", arg: 1, scope: !2920, file: !2746, line: 2254, type: !2367)
!2923 = !DILocation(line: 2254, column: 35, scope: !2920)
!2924 = !DILocation(line: 2257, column: 34, scope: !2920)
!2925 = !DILocation(line: 2257, column: 9, scope: !2920)
!2926 = !DILocation(line: 2257, column: 2, scope: !2920)
!2927 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !2779, file: !2779, line: 65, type: !2610, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "v", arg: 1, scope: !2927, file: !2779, line: 65, type: !2367)
!2930 = !DILocalVariable(name: "c", scope: !2931, file: !2779, line: 67, type: !130)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !2779, line: 67, column: 9)
!2932 = !DILocation(line: 65, column: 64, scope: !2927)
!2933 = !DILocation(line: 67, column: 9, scope: !2931)
!2934 = !{i64 2148921051, i64 2148921090, i64 2148921111, i64 2148921148, i64 2148921171, i64 2148921180, i64 2148921254}
!2935 = !DILocation(line: 67, column: 9, scope: !2927)
!2936 = !DILocation(line: 67, column: 2, scope: !2927)
!2937 = distinct !DISubprogram(name: "atomic_read_acquire", scope: !2364, file: !2364, line: 47, type: !2938, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2942)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!105, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2942 = !{!2943}
!2943 = !DILocalVariable(name: "v", arg: 1, scope: !2937, file: !2364, line: 47, type: !2940)
!2944 = !DILocation(line: 47, column: 37, scope: !2937)
!2945 = !DILocation(line: 49, column: 25, scope: !2937)
!2946 = !DILocation(line: 49, column: 2, scope: !2937)
!2947 = !DILocation(line: 50, column: 33, scope: !2937)
!2948 = !DILocation(line: 50, column: 9, scope: !2937)
!2949 = !DILocation(line: 50, column: 2, scope: !2937)
!2950 = distinct !DISubprogram(name: "const_test_bit", scope: !2951, file: !2951, line: 166, type: !2952, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2957)
!2951 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!130, !189, !2954}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !189)
!2957 = !{!2958, !2959, !2960, !2961, !2962}
!2958 = !DILocalVariable(name: "nr", arg: 1, scope: !2950, file: !2951, line: 166, type: !189)
!2959 = !DILocalVariable(name: "addr", arg: 2, scope: !2950, file: !2951, line: 166, type: !2954)
!2960 = !DILocalVariable(name: "p", scope: !2950, file: !2951, line: 168, type: !1950)
!2961 = !DILocalVariable(name: "mask", scope: !2950, file: !2951, line: 169, type: !189)
!2962 = !DILocalVariable(name: "val", scope: !2950, file: !2951, line: 170, type: !189)
!2963 = !DILocation(line: 166, column: 30, scope: !2950)
!2964 = !DILocation(line: 166, column: 64, scope: !2950)
!2965 = !DILocation(line: 168, column: 2, scope: !2950)
!2966 = !DILocation(line: 168, column: 23, scope: !2950)
!2967 = !DILocation(line: 168, column: 50, scope: !2950)
!2968 = !DILocation(line: 168, column: 57, scope: !2950)
!2969 = !DILocation(line: 168, column: 55, scope: !2950)
!2970 = !DILocation(line: 169, column: 2, scope: !2950)
!2971 = !DILocation(line: 169, column: 16, scope: !2950)
!2972 = !DILocation(line: 169, column: 23, scope: !2950)
!2973 = !DILocation(line: 170, column: 2, scope: !2950)
!2974 = !DILocation(line: 170, column: 16, scope: !2950)
!2975 = !DILocation(line: 170, column: 23, scope: !2950)
!2976 = !DILocation(line: 170, column: 22, scope: !2950)
!2977 = !DILocation(line: 172, column: 12, scope: !2950)
!2978 = !DILocation(line: 172, column: 18, scope: !2950)
!2979 = !DILocation(line: 172, column: 16, scope: !2950)
!2980 = !DILocation(line: 172, column: 10, scope: !2950)
!2981 = !DILocation(line: 172, column: 9, scope: !2950)
!2982 = !DILocation(line: 173, column: 1, scope: !2950)
!2983 = !DILocation(line: 172, column: 2, scope: !2950)
!2984 = distinct !DISubprogram(name: "_test_bit", scope: !2985, file: !2985, line: 139, type: !2952, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2986)
!2985 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2986 = !{!2987, !2988}
!2987 = !DILocalVariable(name: "nr", arg: 1, scope: !2984, file: !2985, line: 139, type: !189)
!2988 = !DILocalVariable(name: "addr", arg: 2, scope: !2984, file: !2985, line: 139, type: !2954)
!2989 = !DILocation(line: 139, column: 25, scope: !2984)
!2990 = !DILocation(line: 139, column: 59, scope: !2984)
!2991 = !DILocation(line: 141, column: 25, scope: !2984)
!2992 = !DILocation(line: 141, column: 32, scope: !2984)
!2993 = !DILocation(line: 141, column: 30, scope: !2984)
!2994 = !DILocation(line: 141, column: 2, scope: !2984)
!2995 = !DILocation(line: 142, column: 23, scope: !2984)
!2996 = !DILocation(line: 142, column: 27, scope: !2984)
!2997 = !DILocation(line: 142, column: 9, scope: !2984)
!2998 = !DILocation(line: 142, column: 2, scope: !2984)
!2999 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !38, file: !38, line: 449, type: !142, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3000)
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "fence", arg: 1, scope: !2999, file: !38, line: 449, type: !76)
!3002 = !DILocation(line: 449, column: 41, scope: !2999)
!3003 = !DILocation(line: 451, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !38, line: 451, column: 6)
!3005 = !DILocation(line: 451, column: 6, scope: !2999)
!3006 = !DILocation(line: 452, column: 3, scope: !3004)
!3007 = !DILocation(line: 454, column: 6, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2999, file: !38, line: 454, column: 6)
!3009 = !DILocation(line: 454, column: 13, scope: !3008)
!3010 = !DILocation(line: 454, column: 18, scope: !3008)
!3011 = !DILocation(line: 454, column: 27, scope: !3008)
!3012 = !DILocation(line: 454, column: 30, scope: !3008)
!3013 = !DILocation(line: 454, column: 37, scope: !3008)
!3014 = !DILocation(line: 454, column: 42, scope: !3008)
!3015 = !DILocation(line: 454, column: 51, scope: !3008)
!3016 = !DILocation(line: 454, column: 6, scope: !2999)
!3017 = !DILocation(line: 455, column: 20, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3008, file: !38, line: 454, column: 59)
!3019 = !DILocation(line: 455, column: 3, scope: !3018)
!3020 = !DILocation(line: 456, column: 3, scope: !3018)
!3021 = !DILocation(line: 459, column: 2, scope: !2999)
!3022 = !DILocation(line: 460, column: 1, scope: !2999)
!3023 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2729, file: !2729, line: 66, type: !2730, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3024)
!3024 = !{!3025, !3026}
!3025 = !DILocalVariable(name: "v", arg: 1, scope: !3023, file: !2729, line: 66, type: !2732)
!3026 = !DILocalVariable(name: "size", arg: 2, scope: !3023, file: !2729, line: 66, type: !1316)
!3027 = !DILocation(line: 66, column: 73, scope: !3023)
!3028 = !DILocation(line: 66, column: 83, scope: !3023)
!3029 = !DILocation(line: 68, column: 19, scope: !3023)
!3030 = !DILocation(line: 68, column: 22, scope: !3023)
!3031 = !DILocation(line: 68, column: 2, scope: !3023)
!3032 = !DILocation(line: 69, column: 2, scope: !3023)
!3033 = !DILocation(line: 70, column: 1, scope: !3023)
!3034 = distinct !DISubprogram(name: "raw_atomic_read_acquire", scope: !2746, file: !2746, line: 458, type: !2938, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3035 = !{!3036, !3037, !3038}
!3036 = !DILocalVariable(name: "v", arg: 1, scope: !3034, file: !2746, line: 458, type: !2940)
!3037 = !DILocalVariable(name: "ret", scope: !3034, file: !2746, line: 463, type: !105)
!3038 = !DILocalVariable(name: "___p1", scope: !3039, file: !2746, line: 466, type: !3042)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !2746, line: 466, column: 9)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !2746, line: 465, column: 31)
!3041 = distinct !DILexicalBlock(scope: !3034, file: !2746, line: 465, column: 6)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!3043 = !DILocation(line: 458, column: 41, scope: !3034)
!3044 = !DILocation(line: 463, column: 2, scope: !3034)
!3045 = !DILocation(line: 463, column: 6, scope: !3034)
!3046 = !DILocation(line: 466, column: 9, scope: !3039)
!3047 = !DILocation(line: 466, column: 9, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3039, file: !2746, line: 466, column: 9)
!3049 = !DILocation(line: 466, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3048, file: !2746, line: 466, column: 9)
!3051 = !DILocation(line: 466, column: 9, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3039, file: !2746, line: 466, column: 9)
!3053 = !{i64 2149104503}
!3054 = !DILocation(line: 466, column: 9, scope: !3040)
!3055 = !DILocation(line: 466, column: 7, scope: !3040)
!3056 = !DILocation(line: 472, column: 9, scope: !3034)
!3057 = !DILocation(line: 474, column: 1, scope: !3034)
!3058 = !DILocation(line: 472, column: 2, scope: !3034)
!3059 = distinct !DISubprogram(name: "kasan_check_read", scope: !2757, file: !2757, line: 40, type: !2758, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3060)
!3060 = !{!3061, !3062}
!3061 = !DILocalVariable(name: "p", arg: 1, scope: !3059, file: !2757, line: 40, type: !2732)
!3062 = !DILocalVariable(name: "size", arg: 2, scope: !3059, file: !2757, line: 40, type: !7)
!3063 = !DILocation(line: 40, column: 58, scope: !3059)
!3064 = !DILocation(line: 40, column: 74, scope: !3059)
!3065 = !DILocation(line: 42, column: 2, scope: !3059)
!3066 = distinct !DISubprogram(name: "arch_test_bit", scope: !3067, file: !3067, line: 237, type: !2952, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3068)
!3067 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "nr", arg: 1, scope: !3066, file: !3067, line: 237, type: !189)
!3070 = !DILocalVariable(name: "addr", arg: 2, scope: !3066, file: !3067, line: 237, type: !2954)
!3071 = !DILocation(line: 237, column: 29, scope: !3066)
!3072 = !DILocation(line: 237, column: 63, scope: !3066)
!3073 = !DILocation(line: 239, column: 30, scope: !3066)
!3074 = !DILocation(line: 239, column: 9, scope: !3066)
!3075 = !DILocation(line: 239, column: 54, scope: !3066)
!3076 = !DILocation(line: 239, column: 58, scope: !3066)
!3077 = !DILocation(line: 239, column: 36, scope: !3066)
!3078 = !DILocation(line: 240, column: 26, scope: !3066)
!3079 = !DILocation(line: 240, column: 30, scope: !3066)
!3080 = !DILocation(line: 240, column: 8, scope: !3066)
!3081 = !DILocation(line: 239, column: 2, scope: !3066)
!3082 = distinct !DISubprogram(name: "constant_test_bit", scope: !3067, file: !3067, line: 204, type: !3083, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!130, !149, !2954}
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "nr", arg: 1, scope: !3082, file: !3067, line: 204, type: !149)
!3087 = !DILocalVariable(name: "addr", arg: 2, scope: !3082, file: !3067, line: 204, type: !2954)
!3088 = !DILocation(line: 204, column: 52, scope: !3082)
!3089 = !DILocation(line: 204, column: 86, scope: !3082)
!3090 = !DILocation(line: 206, column: 19, scope: !3082)
!3091 = !DILocation(line: 206, column: 22, scope: !3082)
!3092 = !DILocation(line: 206, column: 15, scope: !3082)
!3093 = !DILocation(line: 207, column: 4, scope: !3082)
!3094 = !DILocation(line: 207, column: 9, scope: !3082)
!3095 = !DILocation(line: 207, column: 12, scope: !3082)
!3096 = !DILocation(line: 206, column: 44, scope: !3082)
!3097 = !DILocation(line: 207, column: 37, scope: !3082)
!3098 = !DILocation(line: 206, column: 2, scope: !3082)
!3099 = distinct !DISubprogram(name: "variable_test_bit", scope: !3067, file: !3067, line: 224, type: !3083, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3100)
!3100 = !{!3101, !3102, !3103}
!3101 = !DILocalVariable(name: "nr", arg: 1, scope: !3099, file: !3067, line: 224, type: !149)
!3102 = !DILocalVariable(name: "addr", arg: 2, scope: !3099, file: !3067, line: 224, type: !2954)
!3103 = !DILocalVariable(name: "oldbit", scope: !3099, file: !3067, line: 226, type: !130)
!3104 = !DILocation(line: 224, column: 52, scope: !3099)
!3105 = !DILocation(line: 224, column: 86, scope: !3099)
!3106 = !DILocation(line: 226, column: 2, scope: !3099)
!3107 = !DILocation(line: 226, column: 7, scope: !3099)
!3108 = !DILocation(line: 231, column: 33, scope: !3099)
!3109 = !DILocation(line: 231, column: 46, scope: !3099)
!3110 = !DILocation(line: 228, column: 2, scope: !3099)
!3111 = !{i64 2148087372, i64 2148087446}
!3112 = !DILocation(line: 233, column: 9, scope: !3099)
!3113 = !DILocation(line: 234, column: 1, scope: !3099)
!3114 = !DILocation(line: 233, column: 2, scope: !3099)
!3115 = !DISubprogram(name: "dma_fence_signal", scope: !38, file: !38, line: 390, type: !3116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!105, !76}
!3118 = !DISubprogram(name: "kfree", scope: !45, file: !45, line: 227, type: !3119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3123 = !DISubprogram(name: "dma_fence_free", scope: !38, file: !38, line: 286, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3124 = !DISubprogram(name: "dma_fence_set_deadline", scope: !38, file: !38, line: 640, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3125 = distinct !DISubprogram(name: "kmalloc", scope: !45, file: !45, line: 591, type: !2306, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3126 = !{!3127, !3128, !3129}
!3127 = !DILocalVariable(name: "size", arg: 1, scope: !3125, file: !45, line: 591, type: !1316)
!3128 = !DILocalVariable(name: "flags", arg: 2, scope: !3125, file: !45, line: 591, type: !56)
!3129 = !DILocalVariable(name: "index", scope: !3130, file: !45, line: 594, type: !7)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !45, line: 593, column: 42)
!3131 = distinct !DILexicalBlock(scope: !3125, file: !45, line: 593, column: 6)
!3132 = !DILocation(line: 591, column: 61, scope: !3125)
!3133 = !DILocation(line: 591, column: 73, scope: !3125)
!3134 = !DILocation(line: 593, column: 27, scope: !3131)
!3135 = !DILocation(line: 593, column: 6, scope: !3131)
!3136 = !DILocation(line: 593, column: 33, scope: !3131)
!3137 = !DILocation(line: 593, column: 36, scope: !3131)
!3138 = !DILocation(line: 593, column: 6, scope: !3125)
!3139 = !DILocation(line: 594, column: 3, scope: !3130)
!3140 = !DILocation(line: 594, column: 16, scope: !3130)
!3141 = !DILocation(line: 596, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3130, file: !45, line: 596, column: 7)
!3143 = !DILocation(line: 596, column: 12, scope: !3142)
!3144 = !DILocation(line: 596, column: 7, scope: !3130)
!3145 = !DILocation(line: 597, column: 25, scope: !3142)
!3146 = !DILocation(line: 597, column: 31, scope: !3142)
!3147 = !DILocation(line: 597, column: 11, scope: !3142)
!3148 = !DILocation(line: 597, column: 4, scope: !3142)
!3149 = !DILocation(line: 599, column: 11, scope: !3130)
!3150 = !DILocation(line: 599, column: 9, scope: !3130)
!3151 = !DILocation(line: 601, column: 33, scope: !3130)
!3152 = !DILocation(line: 601, column: 40, scope: !3130)
!3153 = !DILocation(line: 601, column: 20, scope: !3130)
!3154 = !DILocation(line: 601, column: 5, scope: !3130)
!3155 = !DILocation(line: 601, column: 51, scope: !3130)
!3156 = !DILocation(line: 602, column: 5, scope: !3130)
!3157 = !DILocation(line: 602, column: 12, scope: !3130)
!3158 = !DILocation(line: 600, column: 10, scope: !3130)
!3159 = !DILocation(line: 600, column: 3, scope: !3130)
!3160 = !DILocation(line: 603, column: 2, scope: !3131)
!3161 = !DILocation(line: 604, column: 19, scope: !3125)
!3162 = !DILocation(line: 604, column: 25, scope: !3125)
!3163 = !DILocation(line: 604, column: 9, scope: !3125)
!3164 = !DILocation(line: 604, column: 2, scope: !3125)
!3165 = !DILocation(line: 605, column: 1, scope: !3125)
!3166 = !DISubprogram(name: "kmalloc_large", scope: !45, file: !45, line: 531, type: !2306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3167 = distinct !DISubprogram(name: "__kmalloc_index", scope: !45, file: !45, line: 444, type: !3168, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!7, !1316, !130}
!3170 = !{!3171, !3172}
!3171 = !DILocalVariable(name: "size", arg: 1, scope: !3167, file: !45, line: 444, type: !1316)
!3172 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3167, file: !45, line: 445, type: !130)
!3173 = !DILocation(line: 444, column: 60, scope: !3167)
!3174 = !DILocation(line: 445, column: 16, scope: !3167)
!3175 = !DILocation(line: 447, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 447, column: 6)
!3177 = !DILocation(line: 447, column: 6, scope: !3167)
!3178 = !DILocation(line: 448, column: 3, scope: !3176)
!3179 = !DILocation(line: 450, column: 6, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 450, column: 6)
!3181 = !DILocation(line: 450, column: 11, scope: !3180)
!3182 = !DILocation(line: 450, column: 6, scope: !3167)
!3183 = !DILocation(line: 451, column: 3, scope: !3180)
!3184 = !DILocation(line: 453, column: 32, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 453, column: 6)
!3186 = !DILocation(line: 453, column: 37, scope: !3185)
!3187 = !DILocation(line: 453, column: 42, scope: !3185)
!3188 = !DILocation(line: 453, column: 45, scope: !3185)
!3189 = !DILocation(line: 453, column: 50, scope: !3185)
!3190 = !DILocation(line: 453, column: 6, scope: !3167)
!3191 = !DILocation(line: 454, column: 3, scope: !3185)
!3192 = !DILocation(line: 455, column: 32, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 455, column: 6)
!3194 = !DILocation(line: 455, column: 37, scope: !3193)
!3195 = !DILocation(line: 455, column: 43, scope: !3193)
!3196 = !DILocation(line: 455, column: 46, scope: !3193)
!3197 = !DILocation(line: 455, column: 51, scope: !3193)
!3198 = !DILocation(line: 455, column: 6, scope: !3167)
!3199 = !DILocation(line: 456, column: 3, scope: !3193)
!3200 = !DILocation(line: 457, column: 6, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 457, column: 6)
!3202 = !DILocation(line: 457, column: 11, scope: !3201)
!3203 = !DILocation(line: 457, column: 6, scope: !3167)
!3204 = !DILocation(line: 457, column: 26, scope: !3201)
!3205 = !DILocation(line: 458, column: 6, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 458, column: 6)
!3207 = !DILocation(line: 458, column: 11, scope: !3206)
!3208 = !DILocation(line: 458, column: 6, scope: !3167)
!3209 = !DILocation(line: 458, column: 26, scope: !3206)
!3210 = !DILocation(line: 459, column: 6, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 459, column: 6)
!3212 = !DILocation(line: 459, column: 11, scope: !3211)
!3213 = !DILocation(line: 459, column: 6, scope: !3167)
!3214 = !DILocation(line: 459, column: 26, scope: !3211)
!3215 = !DILocation(line: 460, column: 6, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 460, column: 6)
!3217 = !DILocation(line: 460, column: 11, scope: !3216)
!3218 = !DILocation(line: 460, column: 6, scope: !3167)
!3219 = !DILocation(line: 460, column: 26, scope: !3216)
!3220 = !DILocation(line: 461, column: 6, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 461, column: 6)
!3222 = !DILocation(line: 461, column: 11, scope: !3221)
!3223 = !DILocation(line: 461, column: 6, scope: !3167)
!3224 = !DILocation(line: 461, column: 26, scope: !3221)
!3225 = !DILocation(line: 462, column: 6, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 462, column: 6)
!3227 = !DILocation(line: 462, column: 11, scope: !3226)
!3228 = !DILocation(line: 462, column: 6, scope: !3167)
!3229 = !DILocation(line: 462, column: 26, scope: !3226)
!3230 = !DILocation(line: 463, column: 6, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 463, column: 6)
!3232 = !DILocation(line: 463, column: 11, scope: !3231)
!3233 = !DILocation(line: 463, column: 6, scope: !3167)
!3234 = !DILocation(line: 463, column: 26, scope: !3231)
!3235 = !DILocation(line: 464, column: 6, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 464, column: 6)
!3237 = !DILocation(line: 464, column: 11, scope: !3236)
!3238 = !DILocation(line: 464, column: 6, scope: !3167)
!3239 = !DILocation(line: 464, column: 26, scope: !3236)
!3240 = !DILocation(line: 465, column: 6, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 465, column: 6)
!3242 = !DILocation(line: 465, column: 11, scope: !3241)
!3243 = !DILocation(line: 465, column: 6, scope: !3167)
!3244 = !DILocation(line: 465, column: 26, scope: !3241)
!3245 = !DILocation(line: 466, column: 6, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 466, column: 6)
!3247 = !DILocation(line: 466, column: 11, scope: !3246)
!3248 = !DILocation(line: 466, column: 6, scope: !3167)
!3249 = !DILocation(line: 466, column: 26, scope: !3246)
!3250 = !DILocation(line: 467, column: 6, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 467, column: 6)
!3252 = !DILocation(line: 467, column: 11, scope: !3251)
!3253 = !DILocation(line: 467, column: 6, scope: !3167)
!3254 = !DILocation(line: 467, column: 26, scope: !3251)
!3255 = !DILocation(line: 468, column: 6, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 468, column: 6)
!3257 = !DILocation(line: 468, column: 11, scope: !3256)
!3258 = !DILocation(line: 468, column: 6, scope: !3167)
!3259 = !DILocation(line: 468, column: 26, scope: !3256)
!3260 = !DILocation(line: 469, column: 6, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 469, column: 6)
!3262 = !DILocation(line: 469, column: 11, scope: !3261)
!3263 = !DILocation(line: 469, column: 6, scope: !3167)
!3264 = !DILocation(line: 469, column: 26, scope: !3261)
!3265 = !DILocation(line: 470, column: 6, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 470, column: 6)
!3267 = !DILocation(line: 470, column: 11, scope: !3266)
!3268 = !DILocation(line: 470, column: 6, scope: !3167)
!3269 = !DILocation(line: 470, column: 26, scope: !3266)
!3270 = !DILocation(line: 471, column: 6, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 471, column: 6)
!3272 = !DILocation(line: 471, column: 11, scope: !3271)
!3273 = !DILocation(line: 471, column: 6, scope: !3167)
!3274 = !DILocation(line: 471, column: 26, scope: !3271)
!3275 = !DILocation(line: 472, column: 6, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 472, column: 6)
!3277 = !DILocation(line: 472, column: 11, scope: !3276)
!3278 = !DILocation(line: 472, column: 6, scope: !3167)
!3279 = !DILocation(line: 472, column: 26, scope: !3276)
!3280 = !DILocation(line: 473, column: 6, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 473, column: 6)
!3282 = !DILocation(line: 473, column: 11, scope: !3281)
!3283 = !DILocation(line: 473, column: 6, scope: !3167)
!3284 = !DILocation(line: 473, column: 26, scope: !3281)
!3285 = !DILocation(line: 474, column: 6, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 474, column: 6)
!3287 = !DILocation(line: 474, column: 11, scope: !3286)
!3288 = !DILocation(line: 474, column: 6, scope: !3167)
!3289 = !DILocation(line: 474, column: 27, scope: !3286)
!3290 = !DILocation(line: 475, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 475, column: 6)
!3292 = !DILocation(line: 475, column: 11, scope: !3291)
!3293 = !DILocation(line: 475, column: 6, scope: !3167)
!3294 = !DILocation(line: 475, column: 32, scope: !3291)
!3295 = !DILocation(line: 477, column: 50, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3167, file: !45, line: 477, column: 6)
!3297 = !DILocation(line: 477, column: 6, scope: !3167)
!3298 = !DILocation(line: 478, column: 3, scope: !3296)
!3299 = !DILocation(line: 478, column: 3, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !45, line: 478, column: 3)
!3301 = distinct !DILexicalBlock(scope: !3296, file: !45, line: 478, column: 3)
!3302 = !{i32 -2143562192}
!3303 = !DILocation(line: 478, column: 3, scope: !3301)
!3304 = !DILocation(line: 480, column: 3, scope: !3296)
!3305 = !DILocation(line: 480, column: 3, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3296, file: !45, line: 480, column: 3)
!3307 = !DILocation(line: 480, column: 3, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3306, file: !45, line: 480, column: 3)
!3309 = !DILocation(line: 480, column: 3, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !45, line: 480, column: 3)
!3311 = !{i64 2151405307, i64 2151405336, i64 2151405382, i64 2151405440, i64 2151405494, i64 2151405548, i64 2151405603, i64 2151405634}
!3312 = !DILocation(line: 483, column: 2, scope: !3167)
!3313 = !DILocation(line: 484, column: 1, scope: !3167)
!3314 = !DISubprogram(name: "kmalloc_trace", scope: !45, file: !45, line: 525, type: !3315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!55, !3317, !56, !1316}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1707, line: 11, flags: DIFlagFwdDecl)
!3319 = distinct !DISubprogram(name: "kmalloc_type", scope: !45, file: !45, line: 401, type: !3320, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!44, !56, !189}
!3322 = !{!3323, !3324}
!3323 = !DILocalVariable(name: "flags", arg: 1, scope: !3319, file: !45, line: 401, type: !56)
!3324 = !DILocalVariable(name: "caller", arg: 2, scope: !3319, file: !45, line: 401, type: !189)
!3325 = !DILocation(line: 401, column: 67, scope: !3319)
!3326 = !DILocation(line: 401, column: 88, scope: !3319)
!3327 = !DILocation(line: 407, column: 6, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3319, file: !45, line: 407, column: 6)
!3329 = !DILocation(line: 407, column: 6, scope: !3319)
!3330 = !DILocation(line: 413, column: 3, scope: !3328)
!3331 = !DILocation(line: 423, column: 38, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3319, file: !45, line: 423, column: 6)
!3333 = !DILocation(line: 423, column: 44, scope: !3332)
!3334 = !DILocation(line: 423, column: 6, scope: !3319)
!3335 = !DILocation(line: 424, column: 3, scope: !3332)
!3336 = !DILocation(line: 426, column: 3, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3319, file: !45, line: 425, column: 6)
!3338 = !DILocation(line: 429, column: 1, scope: !3319)
!3339 = !DISubprogram(name: "__kmalloc", scope: !45, file: !45, line: 488, type: !2306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3340 = !DISubprogram(name: "__compiletime_assert_117", scope: !45, file: !45, line: 478, type: !1305, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3341 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2729, file: !2729, line: 80, type: !2730, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3342)
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "v", arg: 1, scope: !3341, file: !2729, line: 80, type: !2732)
!3344 = !DILocalVariable(name: "size", arg: 2, scope: !3341, file: !2729, line: 80, type: !1316)
!3345 = !DILocation(line: 80, column: 74, scope: !3341)
!3346 = !DILocation(line: 80, column: 84, scope: !3341)
!3347 = !DILocation(line: 82, column: 20, scope: !3341)
!3348 = !DILocation(line: 82, column: 23, scope: !3341)
!3349 = !DILocation(line: 82, column: 2, scope: !3341)
!3350 = !DILocation(line: 83, column: 2, scope: !3341)
!3351 = !DILocation(line: 84, column: 1, scope: !3341)
!3352 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2746, file: !2746, line: 488, type: !2365, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3353 = !{!3354, !3355}
!3354 = !DILocalVariable(name: "v", arg: 1, scope: !3352, file: !2746, line: 488, type: !2367)
!3355 = !DILocalVariable(name: "i", arg: 2, scope: !3352, file: !2746, line: 488, type: !105)
!3356 = !DILocation(line: 488, column: 26, scope: !3352)
!3357 = !DILocation(line: 488, column: 33, scope: !3352)
!3358 = !DILocation(line: 490, column: 18, scope: !3352)
!3359 = !DILocation(line: 490, column: 21, scope: !3352)
!3360 = !DILocation(line: 490, column: 2, scope: !3352)
!3361 = !DILocation(line: 491, column: 1, scope: !3352)
!3362 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2779, file: !2779, line: 26, type: !2365, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3363 = !{!3364, !3365}
!3364 = !DILocalVariable(name: "v", arg: 1, scope: !3362, file: !2779, line: 26, type: !2367)
!3365 = !DILocalVariable(name: "i", arg: 2, scope: !3362, file: !2779, line: 26, type: !105)
!3366 = !DILocation(line: 26, column: 55, scope: !3362)
!3367 = !DILocation(line: 26, column: 62, scope: !3362)
!3368 = !DILocation(line: 28, column: 2, scope: !3362)
!3369 = !DILocation(line: 28, column: 2, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3362, file: !2779, line: 28, column: 2)
!3371 = !DILocation(line: 29, column: 1, scope: !3362)
!3372 = distinct !DISubprogram(name: "dma_fence_is_chain", scope: !38, file: !38, line: 666, type: !142, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3373)
!3373 = !{!3374}
!3374 = !DILocalVariable(name: "fence", arg: 1, scope: !3372, file: !38, line: 666, type: !76)
!3375 = !DILocation(line: 666, column: 57, scope: !3372)
!3376 = !DILocation(line: 668, column: 9, scope: !3372)
!3377 = !DILocation(line: 668, column: 16, scope: !3372)
!3378 = !DILocation(line: 668, column: 20, scope: !3372)
!3379 = !DILocation(line: 668, column: 2, scope: !3372)
