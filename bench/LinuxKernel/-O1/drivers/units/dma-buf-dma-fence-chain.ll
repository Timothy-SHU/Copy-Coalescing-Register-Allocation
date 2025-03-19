; ModuleID = 'drivers/dma-buf/dma-fence-chain.c'
source_filename = "drivers/dma-buf/dma-fence-chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_chain_walk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_chain_walk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_chain_find_seqno: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_chain_find_seqno ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_chain_ops: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_chain_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_chain_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dma_fence_chain_init ; .previous"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_chain = type { %struct.dma_fence, ptr, i64, ptr, %union.anon.14, %struct.spinlock }
%struct.dma_fence = type { ptr, ptr, %union.anon.13, i64, i64, i64, %struct.kref, i32 }
%union.anon.13 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.14 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }

@__UNIQUE_ID___addressable_dma_fence_chain_walk219 = internal global ptr @dma_fence_chain_walk, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_dma_fence_chain_find_seqno220 = internal global ptr @dma_fence_chain_find_seqno, section ".discard.addressable", align 8, !dbg !1949
@dma_fence_chain_ops = hidden constant %struct.dma_fence_ops { i8 1, ptr @dma_fence_chain_get_driver_name, ptr @dma_fence_chain_get_timeline_name, ptr @dma_fence_chain_enable_signaling, ptr @dma_fence_chain_signaled, ptr null, ptr @dma_fence_chain_release, ptr null, ptr null, ptr @dma_fence_chain_set_deadline }, align 8, !dbg !1951
@__UNIQUE_ID___addressable_dma_fence_chain_ops222 = internal global ptr @dma_fence_chain_ops, section ".discard.addressable", align 8, !dbg !1953
@.str = private unnamed_addr constant [34 x i8] c"drivers/dma-buf/dma-fence-chain.c\00", align 1, !dbg !1955
@__UNIQUE_ID___addressable_dma_fence_chain_init228 = internal global ptr @dma_fence_chain_init, section ".discard.addressable", align 8, !dbg !1960
@.str.1 = private unnamed_addr constant [16 x i8] c"dma_fence_chain\00", align 1, !dbg !1962
@.str.2 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1, !dbg !1964
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_dma_fence_chain_walk219, ptr @__UNIQUE_ID___addressable_dma_fence_chain_find_seqno220, ptr @__UNIQUE_ID___addressable_dma_fence_chain_ops222, ptr @__UNIQUE_ID___addressable_dma_fence_chain_init228], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dma_fence_chain_walk(ptr noundef %fence) #0 align 16 !dbg !1975 {
entry:
  %retval = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %chain = alloca ptr, align 8
  %prev_chain = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %replacement = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu218 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !1979, metadata !DIExpression()), !dbg !1996
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #11, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !1980, metadata !DIExpression()), !dbg !1998
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_chain) #11, !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %prev_chain, metadata !1981, metadata !DIExpression()), !dbg !1999
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #11, !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !1982, metadata !DIExpression()), !dbg !2001
  call void @llvm.lifetime.start.p0(i64 8, ptr %replacement) #11, !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %replacement, metadata !1983, metadata !DIExpression()), !dbg !2002
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1984, metadata !DIExpression()), !dbg !2003
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2004
  %call = call ptr @to_dma_fence_chain(ptr noundef %0) #12, !dbg !2005
  store ptr %call, ptr %chain, align 8, !dbg !2006
  %1 = load ptr, ptr %chain, align 8, !dbg !2007
  %tobool = icmp ne ptr %1, null, !dbg !2007
  br i1 %tobool, label %if.end, label %if.then, !dbg !2009

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2010
  call void @dma_fence_put(ptr noundef %2) #12, !dbg !2012
  store ptr null, ptr %retval, align 8, !dbg !2013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2013

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2014

while.cond:                                       ; preds = %if.end21, %if.end
  %3 = load ptr, ptr %chain, align 8, !dbg !2015
  %call1 = call ptr @dma_fence_chain_get_prev(ptr noundef %3) #12, !dbg !2016
  store ptr %call1, ptr %prev, align 8, !dbg !2017
  %tobool2 = icmp ne ptr %call1, null, !dbg !2014
  br i1 %tobool2, label %while.body, label %while.end, !dbg !2014

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %prev, align 8, !dbg !2018
  %call3 = call ptr @to_dma_fence_chain(ptr noundef %4) #12, !dbg !2019
  store ptr %call3, ptr %prev_chain, align 8, !dbg !2020
  %5 = load ptr, ptr %prev_chain, align 8, !dbg !2021
  %tobool4 = icmp ne ptr %5, null, !dbg !2021
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2023

if.then5:                                         ; preds = %while.body
  %6 = load ptr, ptr %prev_chain, align 8, !dbg !2024
  %fence6 = getelementptr inbounds %struct.dma_fence_chain, ptr %6, i32 0, i32 3, !dbg !2027
  %7 = load ptr, ptr %fence6, align 8, !dbg !2027
  %call7 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %7) #12, !dbg !2028
  br i1 %call7, label %if.end9, label %if.then8, !dbg !2029

if.then8:                                         ; preds = %if.then5
  br label %while.end, !dbg !2030

if.end9:                                          ; preds = %if.then5
  %8 = load ptr, ptr %prev_chain, align 8, !dbg !2031
  %call10 = call ptr @dma_fence_chain_get_prev(ptr noundef %8) #12, !dbg !2032
  store ptr %call10, ptr %replacement, align 8, !dbg !2033
  br label %if.end14, !dbg !2034

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %prev, align 8, !dbg !2035
  %call11 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %9) #12, !dbg !2038
  br i1 %call11, label %if.end13, label %if.then12, !dbg !2039

if.then12:                                        ; preds = %if.else
  br label %while.end, !dbg !2040

if.end13:                                         ; preds = %if.else
  store ptr null, ptr %replacement, align 8, !dbg !2041
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu218) #11, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu218, metadata !1985, metadata !DIExpression()), !dbg !2042
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #11, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !1988, metadata !DIExpression()), !dbg !2043
  %10 = load ptr, ptr %chain, align 8, !dbg !2043
  %prev15 = getelementptr inbounds %struct.dma_fence_chain, ptr %10, i32 0, i32 1, !dbg !2043
  store ptr %prev15, ptr %__ai_ptr, align 8, !dbg !2043
  br label %do.body, !dbg !2043

do.body:                                          ; preds = %if.end14
  br label %do.cond, !dbg !2044

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2044

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %__ai_ptr, align 8, !dbg !2043
  call void @instrument_atomic_read_write(ptr noundef %11, i64 noundef 8) #12, !dbg !2043
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #11, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1991, metadata !DIExpression()), !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #11, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1993, metadata !DIExpression()), !dbg !2046
  %12 = load ptr, ptr %prev, align 8, !dbg !2046
  store ptr %12, ptr %__old, align 8, !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #11, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1994, metadata !DIExpression()), !dbg !2046
  %13 = load ptr, ptr %replacement, align 8, !dbg !2046
  store ptr %13, ptr %__new, align 8, !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1995, metadata !DIExpression()), !dbg !2046
  %14 = load ptr, ptr %__ai_ptr, align 8, !dbg !2046
  store ptr %14, ptr %__ptr, align 8, !dbg !2046
  %15 = load ptr, ptr %__ptr, align 8, !dbg !2046
  %16 = load ptr, ptr %__new, align 8, !dbg !2046
  %17 = load ptr, ptr %__old, align 8, !dbg !2046
  %18 = call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %15, ptr %16, ptr %17, ptr elementtype(i64) %15) #11, !dbg !2046, !srcloc !2047
  store ptr %18, ptr %__ret, align 8, !dbg !2046
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !2046
  %19 = load ptr, ptr %__ret, align 8, !dbg !2046
  store ptr %19, ptr %tmp17, align 8, !dbg !2046
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #11, !dbg !2043
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #11, !dbg !2043
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #11, !dbg !2043
  %20 = load ptr, ptr %tmp17, align 8, !dbg !2046
  store ptr %20, ptr %tmp16, align 8, !dbg !2043
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #11, !dbg !2042
  %21 = load ptr, ptr %tmp16, align 8, !dbg !2043
  store ptr %21, ptr %__UNIQUE_ID_rcu218, align 8, !dbg !2042
  %22 = load ptr, ptr %__UNIQUE_ID_rcu218, align 8, !dbg !2042
  store ptr %22, ptr %tmp18, align 8, !dbg !2042
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu218) #11, !dbg !2048
  %23 = load ptr, ptr %tmp18, align 8, !dbg !2042
  store ptr %23, ptr %tmp, align 8, !dbg !2049
  %24 = load ptr, ptr %tmp, align 8, !dbg !2050
  %25 = load ptr, ptr %prev, align 8, !dbg !2052
  %cmp = icmp eq ptr %24, %25, !dbg !2053
  br i1 %cmp, label %if.then19, label %if.else20, !dbg !2054

if.then19:                                        ; preds = %do.end
  %26 = load ptr, ptr %tmp, align 8, !dbg !2055
  call void @dma_fence_put(ptr noundef %26) #12, !dbg !2056
  br label %if.end21, !dbg !2056

if.else20:                                        ; preds = %do.end
  %27 = load ptr, ptr %replacement, align 8, !dbg !2057
  call void @dma_fence_put(ptr noundef %27) #12, !dbg !2058
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  %28 = load ptr, ptr %prev, align 8, !dbg !2059
  call void @dma_fence_put(ptr noundef %28) #12, !dbg !2060
  br label %while.cond, !dbg !2014, !llvm.loop !2061

while.end:                                        ; preds = %if.then12, %if.then8, %while.cond
  %29 = load ptr, ptr %fence.addr, align 8, !dbg !2065
  call void @dma_fence_put(ptr noundef %29) #12, !dbg !2066
  %30 = load ptr, ptr %prev, align 8, !dbg !2067
  store ptr %30, ptr %retval, align 8, !dbg !2068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %replacement) #11, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #11, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_chain) #11, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #11, !dbg !2069
  %31 = load ptr, ptr %retval, align 8, !dbg !2069
  ret ptr %31, !dbg !2069
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_dma_fence_chain(ptr noundef %fence) #3 align 16 !dbg !2070 {
entry:
  %retval = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2074, metadata !DIExpression()), !dbg !2077
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2078
  %tobool = icmp ne ptr %0, null, !dbg !2078
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2080

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2081
  %call = call zeroext i1 @dma_fence_is_chain(ptr noundef %1) #12, !dbg !2082
  br i1 %call, label %if.end, label %if.then, !dbg !2083

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !2084
  br label %return, !dbg !2084

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2075, metadata !DIExpression()), !dbg !2085
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2085
  store ptr %2, ptr %__mptr, align 8, !dbg !2085
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2085
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !2085
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2085
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !2086
  %4 = load ptr, ptr %tmp, align 8, !dbg !2085
  store ptr %4, ptr %retval, align 8, !dbg !2087
  br label %return, !dbg !2087

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2088
  ret ptr %5, !dbg !2088
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #3 align 16 !dbg !2089 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2091, metadata !DIExpression()), !dbg !2092
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2093
  %tobool = icmp ne ptr %0, null, !dbg !2093
  br i1 %tobool, label %if.then, label %if.end, !dbg !2095

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2096
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !2097
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #12, !dbg !2098
  br label %if.end, !dbg !2098

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_chain_get_prev(ptr noundef %chain) #0 align 16 !dbg !2100 {
entry:
  %chain.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %chain, ptr %chain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chain.addr, metadata !2104, metadata !DIExpression()), !dbg !2106
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #11, !dbg !2107
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !2105, metadata !DIExpression()), !dbg !2108
  call void @rcu_read_lock() #12, !dbg !2109
  %0 = load ptr, ptr %chain.addr, align 8, !dbg !2110
  %prev1 = getelementptr inbounds %struct.dma_fence_chain, ptr %0, i32 0, i32 1, !dbg !2111
  %call = call ptr @dma_fence_get_rcu_safe(ptr noundef %prev1) #12, !dbg !2112
  store ptr %call, ptr %prev, align 8, !dbg !2113
  call void @rcu_read_unlock() #12, !dbg !2114
  %1 = load ptr, ptr %prev, align 8, !dbg !2115
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #11, !dbg !2116
  ret ptr %1, !dbg !2117
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) #3 align 16 !dbg !2118 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2120, metadata !DIExpression()), !dbg !2121
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2122
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !2122
  %1 = ptrtoint ptr %flags to i64, !dbg !2122
  %cmp = icmp ne i64 %1, 0, !dbg !2122
  %conv = zext i1 %cmp to i32, !dbg !2122
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2122
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2122

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2122
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !2122
  %4 = ptrtoint ptr %flags1 to i64, !dbg !2122
  %cmp2 = icmp ne i64 %4, 0, !dbg !2122
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2122

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2122
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !2122
  %6 = load i64, ptr %flags5, align 8, !dbg !2122
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2122
  br i1 %7, label %cond.true, label %cond.false, !dbg !2124

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !2122
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !2122
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #12, !dbg !2122
  br i1 %call, label %if.then, label %if.end, !dbg !2122

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !2122
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !2122
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #12, !dbg !2122
  br i1 %call9, label %if.then, label %if.end, !dbg !2124

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !2125
  br label %return, !dbg !2125

if.end:                                           ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !2126
  %ops = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1, !dbg !2128
  %11 = load ptr, ptr %ops, align 8, !dbg !2128
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4, !dbg !2129
  %12 = load ptr, ptr %signaled, align 8, !dbg !2129
  %tobool = icmp ne ptr %12, null, !dbg !2126
  br i1 %tobool, label %land.lhs.true11, label %if.end18, !dbg !2130

land.lhs.true11:                                  ; preds = %if.end
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !2131
  %ops12 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !2132
  %14 = load ptr, ptr %ops12, align 8, !dbg !2132
  %signaled13 = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 4, !dbg !2133
  %15 = load ptr, ptr %signaled13, align 8, !dbg !2133
  %16 = load ptr, ptr %fence.addr, align 8, !dbg !2134
  %call14 = call zeroext i1 %15(ptr noundef %16) #12, !dbg !2131
  br i1 %call14, label %if.then16, label %if.end18, !dbg !2135

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !2136
  %call17 = call i32 @dma_fence_signal(ptr noundef %17) #12, !dbg !2138
  store i1 true, ptr %retval, align 1, !dbg !2139
  br label %return, !dbg !2139

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  store i1 false, ptr %retval, align 1, !dbg !2140
  br label %return, !dbg !2140

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !2141
  ret i1 %18, !dbg !2141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2142 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2150, metadata !DIExpression()), !dbg !2152
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2151, metadata !DIExpression()), !dbg !2153
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2154
  %1 = load i64, ptr %size.addr, align 8, !dbg !2155
  %conv = trunc i64 %1 to i32, !dbg !2155
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !2156
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2157
  %3 = load i64, ptr %size.addr, align 8, !dbg !2157
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !2157
  ret void, !dbg !2158
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_fence_chain_find_seqno(ptr noundef %pfence, i64 noundef %seqno) #0 align 16 !dbg !2159 {
entry:
  %retval = alloca i32, align 4
  %pfence.addr = alloca ptr, align 8
  %seqno.addr = alloca i64, align 8
  %chain = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pfence, ptr %pfence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfence.addr, metadata !2164, metadata !DIExpression()), !dbg !2167
  store i64 %seqno, ptr %seqno.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqno.addr, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #11, !dbg !2169
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !2166, metadata !DIExpression()), !dbg !2170
  %0 = load i64, ptr %seqno.addr, align 8, !dbg !2171
  %tobool = icmp ne i64 %0, 0, !dbg !2171
  br i1 %tobool, label %if.end, label %if.then, !dbg !2173

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2174

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pfence.addr, align 8, !dbg !2175
  %2 = load ptr, ptr %1, align 8, !dbg !2176
  %call = call ptr @to_dma_fence_chain(ptr noundef %2) #12, !dbg !2177
  store ptr %call, ptr %chain, align 8, !dbg !2178
  %3 = load ptr, ptr %chain, align 8, !dbg !2179
  %tobool1 = icmp ne ptr %3, null, !dbg !2179
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !2181

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %chain, align 8, !dbg !2182
  %base = getelementptr inbounds %struct.dma_fence_chain, ptr %4, i32 0, i32 0, !dbg !2183
  %seqno2 = getelementptr inbounds %struct.dma_fence, ptr %base, i32 0, i32 4, !dbg !2184
  %5 = load i64, ptr %seqno2, align 8, !dbg !2184
  %6 = load i64, ptr %seqno.addr, align 8, !dbg !2185
  %cmp = icmp ult i64 %5, %6, !dbg !2186
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2187

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !2188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2188

if.end4:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %chain, align 8, !dbg !2189
  %base5 = getelementptr inbounds %struct.dma_fence_chain, ptr %7, i32 0, i32 0, !dbg !2189
  %call6 = call ptr @dma_fence_get(ptr noundef %base5) #12, !dbg !2189
  %8 = load ptr, ptr %pfence.addr, align 8, !dbg !2189
  store ptr %call6, ptr %8, align 8, !dbg !2189
  br label %for.cond, !dbg !2189

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load ptr, ptr %pfence.addr, align 8, !dbg !2191
  %10 = load ptr, ptr %9, align 8, !dbg !2191
  %tobool7 = icmp ne ptr %10, null, !dbg !2189
  br i1 %tobool7, label %for.body, label %for.end, !dbg !2189

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pfence.addr, align 8, !dbg !2193
  %12 = load ptr, ptr %11, align 8, !dbg !2196
  %context = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 3, !dbg !2197
  %13 = load i64, ptr %context, align 8, !dbg !2197
  %14 = load ptr, ptr %chain, align 8, !dbg !2198
  %base8 = getelementptr inbounds %struct.dma_fence_chain, ptr %14, i32 0, i32 0, !dbg !2199
  %context9 = getelementptr inbounds %struct.dma_fence, ptr %base8, i32 0, i32 3, !dbg !2200
  %15 = load i64, ptr %context9, align 8, !dbg !2200
  %cmp10 = icmp ne i64 %13, %15, !dbg !2201
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11, !dbg !2202

lor.lhs.false11:                                  ; preds = %for.body
  %16 = load ptr, ptr %pfence.addr, align 8, !dbg !2203
  %17 = load ptr, ptr %16, align 8, !dbg !2204
  %call12 = call ptr @to_dma_fence_chain(ptr noundef %17) #12, !dbg !2205
  %prev_seqno = getelementptr inbounds %struct.dma_fence_chain, ptr %call12, i32 0, i32 2, !dbg !2206
  %18 = load i64, ptr %prev_seqno, align 8, !dbg !2206
  %19 = load i64, ptr %seqno.addr, align 8, !dbg !2207
  %cmp13 = icmp ult i64 %18, %19, !dbg !2208
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2209

if.then14:                                        ; preds = %lor.lhs.false11, %for.body
  br label %for.end, !dbg !2210

if.end15:                                         ; preds = %lor.lhs.false11
  br label %for.inc, !dbg !2211

for.inc:                                          ; preds = %if.end15
  %20 = load ptr, ptr %pfence.addr, align 8, !dbg !2191
  %21 = load ptr, ptr %20, align 8, !dbg !2191
  %call16 = call ptr @dma_fence_chain_walk(ptr noundef %21) #12, !dbg !2191
  %22 = load ptr, ptr %pfence.addr, align 8, !dbg !2191
  store ptr %call16, ptr %22, align 8, !dbg !2191
  br label %for.cond, !dbg !2191, !llvm.loop !2212

for.end:                                          ; preds = %if.then14, %for.cond
  %23 = load ptr, ptr %chain, align 8, !dbg !2214
  %base17 = getelementptr inbounds %struct.dma_fence_chain, ptr %23, i32 0, i32 0, !dbg !2215
  call void @dma_fence_put(ptr noundef %base17) #12, !dbg !2216
  store i32 0, ptr %retval, align 4, !dbg !2217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2217

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #11, !dbg !2218
  %24 = load i32, ptr %retval, align 4, !dbg !2218
  ret i32 %24, !dbg !2218
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #3 align 16 !dbg !2219 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2221, metadata !DIExpression()), !dbg !2222
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2223
  %tobool = icmp ne ptr %0, null, !dbg !2223
  br i1 %tobool, label %if.then, label %if.end, !dbg !2225

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2226
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !2227
  call void @kref_get(ptr noundef %refcount) #12, !dbg !2228
  br label %if.end, !dbg !2228

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2229
  ret ptr %2, !dbg !2230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_chain_get_driver_name(ptr noundef %fence) #0 align 16 !dbg !2231 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2233, metadata !DIExpression()), !dbg !2234
  ret ptr @.str.1, !dbg !2235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_chain_get_timeline_name(ptr noundef %fence) #0 align 16 !dbg !2236 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2238, metadata !DIExpression()), !dbg !2239
  ret ptr @.str.2, !dbg !2240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_chain_enable_signaling(ptr noundef %fence) #0 align 16 !dbg !2241 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2243, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #11, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %head, metadata !2244, metadata !DIExpression()), !dbg !2251
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2252
  %call = call ptr @to_dma_fence_chain(ptr noundef %0) #12, !dbg !2253
  store ptr %call, ptr %head, align 8, !dbg !2251
  %1 = load ptr, ptr %head, align 8, !dbg !2254
  %base = getelementptr inbounds %struct.dma_fence_chain, ptr %1, i32 0, i32 0, !dbg !2255
  %call1 = call ptr @dma_fence_get(ptr noundef %base) #12, !dbg !2256
  %2 = load ptr, ptr %head, align 8, !dbg !2257
  %base2 = getelementptr inbounds %struct.dma_fence_chain, ptr %2, i32 0, i32 0, !dbg !2257
  %call3 = call ptr @dma_fence_get(ptr noundef %base2) #12, !dbg !2257
  store ptr %call3, ptr %fence.addr, align 8, !dbg !2257
  br label %for.cond, !dbg !2257

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2258
  %tobool = icmp ne ptr %3, null, !dbg !2257
  br i1 %tobool, label %for.body, label %for.end, !dbg !2257

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %f, metadata !2245, metadata !DIExpression()), !dbg !2260
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !2261
  %call4 = call ptr @dma_fence_chain_contained(ptr noundef %4) #12, !dbg !2262
  store ptr %call4, ptr %f, align 8, !dbg !2260
  %5 = load ptr, ptr %f, align 8, !dbg !2263
  %call5 = call ptr @dma_fence_get(ptr noundef %5) #12, !dbg !2264
  %6 = load ptr, ptr %f, align 8, !dbg !2265
  %7 = load ptr, ptr %head, align 8, !dbg !2267
  %8 = getelementptr inbounds %struct.dma_fence_chain, ptr %7, i32 0, i32 4, !dbg !2268
  %call6 = call i32 @dma_fence_add_callback(ptr noundef %6, ptr noundef %8, ptr noundef @dma_fence_chain_cb) #12, !dbg !2269
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2269
  br i1 %tobool7, label %if.end, label %if.then, !dbg !2270

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !2271
  call void @dma_fence_put(ptr noundef %9) #12, !dbg !2273
  store i1 true, ptr %retval, align 1, !dbg !2274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2274

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %f, align 8, !dbg !2275
  call void @dma_fence_put(ptr noundef %10) #12, !dbg !2276
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2277
  br label %cleanup, !dbg !2277

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !2277
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2278

for.inc:                                          ; preds = %cleanup.cont
  %11 = load ptr, ptr %fence.addr, align 8, !dbg !2258
  %call8 = call ptr @dma_fence_chain_walk(ptr noundef %11) #12, !dbg !2258
  store ptr %call8, ptr %fence.addr, align 8, !dbg !2258
  br label %for.cond, !dbg !2258, !llvm.loop !2279

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %head, align 8, !dbg !2281
  %base9 = getelementptr inbounds %struct.dma_fence_chain, ptr %12, i32 0, i32 0, !dbg !2282
  call void @dma_fence_put(ptr noundef %base9) #12, !dbg !2283
  store i1 false, ptr %retval, align 1, !dbg !2284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !2284

cleanup10:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #11, !dbg !2285
  %13 = load i1, ptr %retval, align 1, !dbg !2285
  ret i1 %13, !dbg !2285
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_chain_signaled(ptr noundef %fence) #0 align 16 !dbg !2286 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2288, metadata !DIExpression()), !dbg !2293
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2294
  %call = call ptr @dma_fence_get(ptr noundef %0) #12, !dbg !2294
  store ptr %call, ptr %fence.addr, align 8, !dbg !2294
  br label %for.cond, !dbg !2294

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2295
  %tobool = icmp ne ptr %1, null, !dbg !2294
  br i1 %tobool, label %for.body, label %for.end, !dbg !2294

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %f, metadata !2289, metadata !DIExpression()), !dbg !2297
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2298
  %call1 = call ptr @dma_fence_chain_contained(ptr noundef %2) #12, !dbg !2299
  store ptr %call1, ptr %f, align 8, !dbg !2297
  %3 = load ptr, ptr %f, align 8, !dbg !2300
  %call2 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %3) #12, !dbg !2302
  br i1 %call2, label %if.end, label %if.then, !dbg !2303

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !2304
  call void @dma_fence_put(ptr noundef %4) #12, !dbg !2306
  store i1 false, ptr %retval, align 1, !dbg !2307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2307

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2308
  br label %cleanup, !dbg !2308

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !2308
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2309

for.inc:                                          ; preds = %cleanup.cont
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2295
  %call3 = call ptr @dma_fence_chain_walk(ptr noundef %5) #12, !dbg !2295
  store ptr %call3, ptr %fence.addr, align 8, !dbg !2295
  br label %for.cond, !dbg !2295, !llvm.loop !2310

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !2312
  br label %return, !dbg !2312

return:                                           ; preds = %for.end, %cleanup
  %6 = load i1, ptr %retval, align 1, !dbg !2313
  ret i1 %6, !dbg !2313

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_chain_release(ptr noundef %fence) #0 align 16 !dbg !2314 {
entry:
  %fence.addr = alloca ptr, align 8
  %chain = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %prev_chain = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2316, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #11, !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !2317, metadata !DIExpression()), !dbg !2323
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2324
  %call = call ptr @to_dma_fence_chain(ptr noundef %0) #12, !dbg !2325
  store ptr %call, ptr %chain, align 8, !dbg !2323
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #11, !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !2318, metadata !DIExpression()), !dbg !2327
  br label %while.cond, !dbg !2328

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %do.body, !dbg !2329

do.body:                                          ; preds = %while.cond
  br label %do.cond, !dbg !2331

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2331

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %chain, align 8, !dbg !2329
  %prev1 = getelementptr inbounds %struct.dma_fence_chain, ptr %1, i32 0, i32 1, !dbg !2329
  %2 = load ptr, ptr %prev1, align 8, !dbg !2329
  store ptr %2, ptr %tmp, align 8, !dbg !2331
  %3 = load ptr, ptr %tmp, align 8, !dbg !2329
  store ptr %3, ptr %prev, align 8, !dbg !2333
  %tobool = icmp ne ptr %3, null, !dbg !2328
  br i1 %tobool, label %while.body, label %while.end, !dbg !2328

while.body:                                       ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_chain) #11, !dbg !2334
  call void @llvm.dbg.declare(metadata ptr %prev_chain, metadata !2319, metadata !DIExpression()), !dbg !2335
  %4 = load ptr, ptr %prev, align 8, !dbg !2336
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6, !dbg !2338
  %call2 = call i32 @kref_read(ptr noundef %refcount) #12, !dbg !2339
  %cmp = icmp ugt i32 %call2, 1, !dbg !2340
  br i1 %cmp, label %if.then, label %if.end, !dbg !2341

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2342

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %prev, align 8, !dbg !2343
  %call3 = call ptr @to_dma_fence_chain(ptr noundef %5) #12, !dbg !2344
  store ptr %call3, ptr %prev_chain, align 8, !dbg !2345
  %6 = load ptr, ptr %prev_chain, align 8, !dbg !2346
  %tobool4 = icmp ne ptr %6, null, !dbg !2346
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2348

if.then5:                                         ; preds = %if.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2349

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %prev_chain, align 8, !dbg !2350
  %prev7 = getelementptr inbounds %struct.dma_fence_chain, ptr %7, i32 0, i32 1, !dbg !2351
  %8 = load ptr, ptr %prev7, align 8, !dbg !2351
  %9 = load ptr, ptr %chain, align 8, !dbg !2352
  %prev8 = getelementptr inbounds %struct.dma_fence_chain, ptr %9, i32 0, i32 1, !dbg !2353
  store ptr %8, ptr %prev8, align 8, !dbg !2354
  br label %do.body9, !dbg !2355

do.body9:                                         ; preds = %if.end6
  br label %do.body10, !dbg !2356

do.body10:                                        ; preds = %do.body9
  br label %do.body11, !dbg !2358

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2360

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2360

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2358

do.body14:                                        ; preds = %do.end13
  %10 = load ptr, ptr %prev_chain, align 8, !dbg !2362
  %prev15 = getelementptr inbounds %struct.dma_fence_chain, ptr %10, i32 0, i32 1, !dbg !2362
  store volatile ptr null, ptr %prev15, align 8, !dbg !2362
  br label %do.cond16, !dbg !2362

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !2362

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !2358

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !2358

do.end19:                                         ; preds = %do.cond18
  br label %do.cond20, !dbg !2356

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2356

do.end21:                                         ; preds = %do.cond20
  %11 = load ptr, ptr %prev, align 8, !dbg !2364
  call void @dma_fence_put(ptr noundef %11) #12, !dbg !2365
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2366
  br label %cleanup, !dbg !2366

cleanup:                                          ; preds = %do.end21, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_chain) #11, !dbg !2366
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2328, !llvm.loop !2367

while.end:                                        ; preds = %cleanup, %do.end
  %12 = load ptr, ptr %prev, align 8, !dbg !2368
  call void @dma_fence_put(ptr noundef %12) #12, !dbg !2369
  %13 = load ptr, ptr %chain, align 8, !dbg !2370
  %fence22 = getelementptr inbounds %struct.dma_fence_chain, ptr %13, i32 0, i32 3, !dbg !2371
  %14 = load ptr, ptr %fence22, align 8, !dbg !2371
  call void @dma_fence_put(ptr noundef %14) #12, !dbg !2372
  %15 = load ptr, ptr %fence.addr, align 8, !dbg !2373
  call void @dma_fence_free(ptr noundef %15) #12, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #11, !dbg !2375
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #11, !dbg !2375
  ret void, !dbg !2375

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_chain_set_deadline(ptr noundef %fence, i64 noundef %deadline) #0 align 16 !dbg !2376 {
entry:
  %fence.addr = alloca ptr, align 8
  %deadline.addr = alloca i64, align 8
  %f = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2378, metadata !DIExpression()), !dbg !2384
  store i64 %deadline, ptr %deadline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deadline.addr, metadata !2379, metadata !DIExpression()), !dbg !2385
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2386
  %call = call ptr @dma_fence_get(ptr noundef %0) #12, !dbg !2386
  store ptr %call, ptr %fence.addr, align 8, !dbg !2386
  br label %for.cond, !dbg !2386

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2387
  %tobool = icmp ne ptr %1, null, !dbg !2386
  br i1 %tobool, label %for.body, label %for.end, !dbg !2386

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %f, metadata !2380, metadata !DIExpression()), !dbg !2389
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2390
  %call1 = call ptr @dma_fence_chain_contained(ptr noundef %2) #12, !dbg !2391
  store ptr %call1, ptr %f, align 8, !dbg !2389
  %3 = load ptr, ptr %f, align 8, !dbg !2392
  %4 = load i64, ptr %deadline.addr, align 8, !dbg !2393
  call void @dma_fence_set_deadline(ptr noundef %3, i64 noundef %4) #12, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !2395
  br label %for.inc, !dbg !2396

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2387
  %call2 = call ptr @dma_fence_chain_walk(ptr noundef %5) #12, !dbg !2387
  store ptr %call2, ptr %fence.addr, align 8, !dbg !2387
  br label %for.cond, !dbg !2387, !llvm.loop !2397

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_fence_chain_init(ptr noundef %chain, ptr noundef %prev, ptr noundef %fence, i64 noundef %seqno) #0 align 16 !dbg !2400 {
entry:
  %chain.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %seqno.addr = alloca i64, align 8
  %prev_chain = alloca ptr, align 8
  %context = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %_r_a_p__v = alloca i64, align 8
  %__UNIQUE_ID___x226 = alloca i64, align 8
  %__UNIQUE_ID___y227 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp77 = alloca i64, align 8
  store ptr %chain, ptr %chain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chain.addr, metadata !2404, metadata !DIExpression()), !dbg !2423
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2405, metadata !DIExpression()), !dbg !2424
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2406, metadata !DIExpression()), !dbg !2425
  store i64 %seqno, ptr %seqno.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seqno.addr, metadata !2407, metadata !DIExpression()), !dbg !2426
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_chain) #11, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %prev_chain, metadata !2408, metadata !DIExpression()), !dbg !2428
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2429
  %call = call ptr @to_dma_fence_chain(ptr noundef %0) #12, !dbg !2430
  store ptr %call, ptr %prev_chain, align 8, !dbg !2428
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #11, !dbg !2431
  call void @llvm.dbg.declare(metadata ptr %context, metadata !2409, metadata !DIExpression()), !dbg !2432
  br label %do.body, !dbg !2433

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %chain.addr, align 8, !dbg !2434
  %lock = getelementptr inbounds %struct.dma_fence_chain, ptr %1, i32 0, i32 5, !dbg !2434
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #12, !dbg !2434
  %2 = load ptr, ptr %chain.addr, align 8, !dbg !2434
  %lock2 = getelementptr inbounds %struct.dma_fence_chain, ptr %2, i32 0, i32 5, !dbg !2434
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2434
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !2434
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2434
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !2434
  store i32 0, ptr %counter, align 4, !dbg !2434
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2434
  br label %do.cond, !dbg !2434

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2434

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2436

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #11, !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2410, metadata !DIExpression()), !dbg !2437
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !2437
  %6 = ptrtoint ptr %5 to i64, !dbg !2437
  store i64 %6, ptr %_r_a_p__v, align 8, !dbg !2437
  br i1 false, label %land.lhs.true, label %if.else, !dbg !2438

land.lhs.true:                                    ; preds = %do.body3
  %7 = load i64, ptr %_r_a_p__v, align 8, !dbg !2438
  %cmp = icmp eq i64 %7, 0, !dbg !2438
  br i1 %cmp, label %if.then, label %if.else, !dbg !2437

if.then:                                          ; preds = %land.lhs.true
  br label %do.body4, !dbg !2438

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !2440

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !2442

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2442

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !2440

do.body8:                                         ; preds = %do.end7
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !2444
  %9 = inttoptr i64 %8 to ptr, !dbg !2444
  %10 = load ptr, ptr %chain.addr, align 8, !dbg !2444
  %prev9 = getelementptr inbounds %struct.dma_fence_chain, ptr %10, i32 0, i32 1, !dbg !2444
  store volatile ptr %9, ptr %prev9, align 8, !dbg !2444
  br label %do.cond10, !dbg !2444

do.cond10:                                        ; preds = %do.body8
  br label %do.end11, !dbg !2444

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !2440

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2440

do.end13:                                         ; preds = %do.cond12
  br label %if.end, !dbg !2440

if.else:                                          ; preds = %land.lhs.true, %do.body3
  br label %do.body14, !dbg !2438

do.body14:                                        ; preds = %if.else
  br label %do.body15, !dbg !2446

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !2448

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2448

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !2446

do.body18:                                        ; preds = %do.end17
  br label %do.body19, !dbg !2450

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !2452

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2452

do.end21:                                         ; preds = %do.cond20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2450, !srcloc !2454
  br label %do.body22, !dbg !2450

do.body22:                                        ; preds = %do.end21
  br label %do.body23, !dbg !2455

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !2457

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !2457

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !2455

do.body26:                                        ; preds = %do.end25
  %11 = load i64, ptr %_r_a_p__v, align 8, !dbg !2459
  %12 = inttoptr i64 %11 to ptr, !dbg !2459
  %13 = load ptr, ptr %chain.addr, align 8, !dbg !2459
  %prev27 = getelementptr inbounds %struct.dma_fence_chain, ptr %13, i32 0, i32 1, !dbg !2459
  store volatile ptr %12, ptr %prev27, align 8, !dbg !2459
  br label %do.cond28, !dbg !2459

do.cond28:                                        ; preds = %do.body26
  br label %do.end29, !dbg !2459

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !2455

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !2455

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !2450

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !2450

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !2446

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !2446

do.end35:                                         ; preds = %do.cond34
  br label %if.end

if.end:                                           ; preds = %do.end35, %do.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #11, !dbg !2436
  br label %do.cond36, !dbg !2437

do.cond36:                                        ; preds = %if.end
  br label %do.end37, !dbg !2437

do.end37:                                         ; preds = %do.cond36
  %14 = load ptr, ptr %fence.addr, align 8, !dbg !2461
  %15 = load ptr, ptr %chain.addr, align 8, !dbg !2462
  %fence38 = getelementptr inbounds %struct.dma_fence_chain, ptr %15, i32 0, i32 3, !dbg !2463
  store ptr %14, ptr %fence38, align 8, !dbg !2464
  %16 = load ptr, ptr %chain.addr, align 8, !dbg !2465
  %prev_seqno = getelementptr inbounds %struct.dma_fence_chain, ptr %16, i32 0, i32 2, !dbg !2466
  store i64 0, ptr %prev_seqno, align 8, !dbg !2467
  %17 = load ptr, ptr %prev_chain, align 8, !dbg !2468
  %tobool = icmp ne ptr %17, null, !dbg !2468
  br i1 %tobool, label %land.lhs.true39, label %if.else46, !dbg !2469

land.lhs.true39:                                  ; preds = %do.end37
  %18 = load i64, ptr %seqno.addr, align 8, !dbg !2470
  %19 = load ptr, ptr %prev.addr, align 8, !dbg !2471
  %seqno40 = getelementptr inbounds %struct.dma_fence, ptr %19, i32 0, i32 4, !dbg !2472
  %20 = load i64, ptr %seqno40, align 8, !dbg !2472
  %21 = load ptr, ptr %prev.addr, align 8, !dbg !2473
  %ops = getelementptr inbounds %struct.dma_fence, ptr %21, i32 0, i32 1, !dbg !2474
  %22 = load ptr, ptr %ops, align 8, !dbg !2474
  %call41 = call zeroext i1 @__dma_fence_is_later(i64 noundef %18, i64 noundef %20, ptr noundef %22) #12, !dbg !2475
  br i1 %call41, label %if.then42, label %if.else46, !dbg !2476

if.then42:                                        ; preds = %land.lhs.true39
  %23 = load ptr, ptr %prev.addr, align 8, !dbg !2477
  %context43 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 3, !dbg !2479
  %24 = load i64, ptr %context43, align 8, !dbg !2479
  store i64 %24, ptr %context, align 8, !dbg !2480
  %25 = load ptr, ptr %prev.addr, align 8, !dbg !2481
  %seqno44 = getelementptr inbounds %struct.dma_fence, ptr %25, i32 0, i32 4, !dbg !2482
  %26 = load i64, ptr %seqno44, align 8, !dbg !2482
  %27 = load ptr, ptr %chain.addr, align 8, !dbg !2483
  %prev_seqno45 = getelementptr inbounds %struct.dma_fence_chain, ptr %27, i32 0, i32 2, !dbg !2484
  store i64 %26, ptr %prev_seqno45, align 8, !dbg !2485
  br label %if.end53, !dbg !2486

if.else46:                                        ; preds = %land.lhs.true39, %do.end37
  %call47 = call i64 @dma_fence_context_alloc(i32 noundef 1) #12, !dbg !2487
  store i64 %call47, ptr %context, align 8, !dbg !2488
  %28 = load ptr, ptr %prev_chain, align 8, !dbg !2489
  %tobool48 = icmp ne ptr %28, null, !dbg !2489
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !2490

if.then49:                                        ; preds = %if.else46
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x226) #11, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x226, metadata !2412, metadata !DIExpression()), !dbg !2491
  %29 = load ptr, ptr %prev.addr, align 8, !dbg !2491
  %seqno50 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 4, !dbg !2491
  %30 = load i64, ptr %seqno50, align 8, !dbg !2491
  store i64 %30, ptr %__UNIQUE_ID___x226, align 8, !dbg !2491
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y227) #11, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y227, metadata !2417, metadata !DIExpression()), !dbg !2491
  %31 = load i64, ptr %seqno.addr, align 8, !dbg !2491
  store i64 %31, ptr %__UNIQUE_ID___y227, align 8, !dbg !2491
  %32 = load i64, ptr %__UNIQUE_ID___x226, align 8, !dbg !2491
  %33 = load i64, ptr %__UNIQUE_ID___y227, align 8, !dbg !2491
  %cmp51 = icmp ugt i64 %32, %33, !dbg !2491
  br i1 %cmp51, label %cond.true, label %cond.false, !dbg !2491

cond.true:                                        ; preds = %if.then49
  %34 = load i64, ptr %__UNIQUE_ID___x226, align 8, !dbg !2491
  br label %cond.end, !dbg !2491

cond.false:                                       ; preds = %if.then49
  %35 = load i64, ptr %__UNIQUE_ID___y227, align 8, !dbg !2491
  br label %cond.end, !dbg !2491

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %34, %cond.true ], [ %35, %cond.false ], !dbg !2491
  store i64 %cond, ptr %tmp, align 8, !dbg !2491
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y227) #11, !dbg !2492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x226) #11, !dbg !2492
  %36 = load i64, ptr %tmp, align 8, !dbg !2491
  store i64 %36, ptr %seqno.addr, align 8, !dbg !2493
  br label %if.end52, !dbg !2494

if.end52:                                         ; preds = %cond.end, %if.else46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then42
  %37 = load ptr, ptr %chain.addr, align 8, !dbg !2495
  %base = getelementptr inbounds %struct.dma_fence_chain, ptr %37, i32 0, i32 0, !dbg !2496
  %38 = load ptr, ptr %chain.addr, align 8, !dbg !2497
  %lock54 = getelementptr inbounds %struct.dma_fence_chain, ptr %38, i32 0, i32 5, !dbg !2498
  %39 = load i64, ptr %context, align 8, !dbg !2499
  %40 = load i64, ptr %seqno.addr, align 8, !dbg !2500
  call void @dma_fence_init(ptr noundef %base, ptr noundef @dma_fence_chain_ops, ptr noundef %lock54, i64 noundef %39, i64 noundef %40) #12, !dbg !2501
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2418, metadata !DIExpression()), !dbg !2502
  %41 = load ptr, ptr %fence.addr, align 8, !dbg !2502
  %call55 = call zeroext i1 @dma_fence_is_chain(ptr noundef %41) #12, !dbg !2502
  %lnot = xor i1 %call55, true, !dbg !2502
  %lnot56 = xor i1 %lnot, true, !dbg !2502
  %lnot.ext = zext i1 %lnot56 to i32, !dbg !2502
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2502
  %42 = load i32, ptr %__ret_warn_on, align 4, !dbg !2503
  %tobool57 = icmp ne i32 %42, 0, !dbg !2503
  %lnot58 = xor i1 %tobool57, true, !dbg !2503
  %lnot60 = xor i1 %lnot58, true, !dbg !2503
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !2503
  %conv = sext i32 %lnot.ext61 to i64, !dbg !2503
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2503
  %tobool62 = icmp ne i64 %expval, 0, !dbg !2503
  br i1 %tobool62, label %if.then63, label %if.end76, !dbg !2502

if.then63:                                        ; preds = %if.end53
  br label %do.body64, !dbg !2503

do.body64:                                        ; preds = %if.then63
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2420, metadata !DIExpression()), !dbg !2504
  store i32 2305, ptr %__flags, align 4, !dbg !2504
  br label %do.body65, !dbg !2504

do.body65:                                        ; preds = %do.body64
  br label %do.cond66, !dbg !2505

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !2505

do.end67:                                         ; preds = %do.cond66
  br label %do.body68, !dbg !2504

do.body68:                                        ; preds = %do.end67
  %43 = load i32, ptr %__flags, align 4, !dbg !2507
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 275, i32 %43, i64 12) #11, !dbg !2507, !srcloc !2509
  br label %do.cond69, !dbg !2507

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !2507

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !2504

do.body71:                                        ; preds = %do.end70
  br label %do.cond72, !dbg !2510

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2510

do.end73:                                         ; preds = %do.cond72
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !2503
  br label %do.cond74, !dbg !2504

do.cond74:                                        ; preds = %do.end73
  br label %do.end75, !dbg !2504

do.end75:                                         ; preds = %do.cond74
  br label %if.end76, !dbg !2504

if.end76:                                         ; preds = %do.end75, %if.end53
  %44 = load i32, ptr %__ret_warn_on, align 4, !dbg !2502
  %tobool78 = icmp ne i32 %44, 0, !dbg !2502
  %lnot79 = xor i1 %tobool78, true, !dbg !2502
  %lnot81 = xor i1 %lnot79, true, !dbg !2502
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !2502
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !2502
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !2502
  store i64 %expval84, ptr %tmp77, align 8, !dbg !2503
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !2512
  %45 = load i64, ptr %tmp77, align 8, !dbg !2502
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #11, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_chain) #11, !dbg !2513
  ret void, !dbg !2513
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !2514 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2522
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2523
  ret ptr %1, !dbg !2524
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__dma_fence_is_later(i64 noundef %f1, i64 noundef %f2, ptr noundef %ops) #3 align 16 !dbg !2525 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  store i64 %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !2529, metadata !DIExpression()), !dbg !2532
  store i64 %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !2530, metadata !DIExpression()), !dbg !2533
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !2531, metadata !DIExpression()), !dbg !2534
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !2535
  %use_64bit_seqno = getelementptr inbounds %struct.dma_fence_ops, ptr %0, i32 0, i32 0, !dbg !2537
  %1 = load i8, ptr %use_64bit_seqno, align 8, !dbg !2537, !range !2538, !noundef !546
  %tobool = trunc i8 %1 to i1, !dbg !2537
  br i1 %tobool, label %if.then, label %if.end, !dbg !2539

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %f1.addr, align 8, !dbg !2540
  %3 = load i64, ptr %f2.addr, align 8, !dbg !2541
  %cmp = icmp ugt i64 %2, %3, !dbg !2542
  store i1 %cmp, ptr %retval, align 1, !dbg !2543
  br label %return, !dbg !2543

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %f1.addr, align 8, !dbg !2544
  %and = and i64 %4, 4294967295, !dbg !2544
  %conv = trunc i64 %and to i32, !dbg !2544
  %5 = load i64, ptr %f2.addr, align 8, !dbg !2545
  %and1 = and i64 %5, 4294967295, !dbg !2545
  %conv2 = trunc i64 %and1 to i32, !dbg !2545
  %sub = sub i32 %conv, %conv2, !dbg !2546
  %cmp3 = icmp sgt i32 %sub, 0, !dbg !2547
  store i1 %cmp3, ptr %retval, align 1, !dbg !2548
  br label %return, !dbg !2548

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !2549
  ret i1 %6, !dbg !2549
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2550 dso_local i64 @dma_fence_context_alloc(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2553 dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_chain(ptr noundef %fence) #3 align 16 !dbg !2556 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2560
  %ops = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1, !dbg !2561
  %1 = load ptr, ptr %ops, align 8, !dbg !2561
  %cmp = icmp eq ptr %1, @dma_fence_chain_ops, !dbg !2562
  ret i1 %cmp, !dbg !2563
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #3 align 16 !dbg !2564 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2572, metadata !DIExpression()), !dbg !2574
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !2573, metadata !DIExpression()), !dbg !2575
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2576
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2578
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #12, !dbg !2579
  br i1 %call, label %if.then, label %if.end, !dbg !2580

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !2581
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !2583
  call void %1(ptr noundef %2) #12, !dbg !2581
  store i32 1, ptr %retval, align 4, !dbg !2584
  br label %return, !dbg !2584

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2585
  br label %return, !dbg !2585

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2586
  ret i32 %3, !dbg !2586
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !2587 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2594
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #12, !dbg !2595
  ret i1 %call, !dbg !2596
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !2597 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2601, metadata !DIExpression()), !dbg !2603
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2602, metadata !DIExpression()), !dbg !2604
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2605
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2606
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !2607
  ret i1 %call, !dbg !2608
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !2609 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2613, metadata !DIExpression()), !dbg !2617
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2614, metadata !DIExpression()), !dbg !2618
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2615, metadata !DIExpression()), !dbg !2619
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2616, metadata !DIExpression()), !dbg !2621
  %0 = load i32, ptr %i.addr, align 4, !dbg !2622
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2623
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2624
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #12, !dbg !2625
  store i32 %call, ptr %old, align 4, !dbg !2621
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2626
  %tobool = icmp ne ptr %2, null, !dbg !2626
  br i1 %tobool, label %if.then, label %if.end, !dbg !2628

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2629
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2630
  store i32 %3, ptr %4, align 4, !dbg !2631
  br label %if.end, !dbg !2632

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2633
  %6 = load i32, ptr %i.addr, align 4, !dbg !2635
  %cmp = icmp eq i32 %5, %6, !dbg !2636
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !2637

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !2638

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !2640

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2642

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2642

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2640

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !2644

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !2646

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2646

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2644, !srcloc !2648
  br label %do.cond7, !dbg !2644

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2644

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !2640

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !2640

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !2649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2649

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2650
  %cmp12 = icmp slt i32 %7, 0, !dbg !2650
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !2650

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !2650
  %9 = load i32, ptr %i.addr, align 4, !dbg !2650
  %sub = sub i32 %8, %9, !dbg !2650
  %cmp13 = icmp slt i32 %sub, 0, !dbg !2650
  br label %lor.end, !dbg !2650

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !2650
  %lnot14 = xor i1 %lnot, true, !dbg !2650
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !2650
  %conv = sext i32 %lnot.ext to i64, !dbg !2650
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2650
  %tobool15 = icmp ne i64 %expval, 0, !dbg !2650
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2652

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2653
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #12, !dbg !2654
  br label %if.end17, !dbg !2654

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !2655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2655

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !2656
  %12 = load i1, ptr %retval, align 1, !dbg !2656
  ret i1 %12, !dbg !2656
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !2657 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2663, metadata !DIExpression()), !dbg !2665
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2664, metadata !DIExpression()), !dbg !2666
  br label %do.body, !dbg !2667

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2668

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2670
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !2671
  %1 = load i32, ptr %i.addr, align 4, !dbg !2672
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2673
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #12, !dbg !2674
  ret i32 %call, !dbg !2675
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2676 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !2679 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2682, metadata !DIExpression()), !dbg !2684
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2683, metadata !DIExpression()), !dbg !2685
  %0 = load i32, ptr %i.addr, align 4, !dbg !2686
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2687
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #12, !dbg !2688
  ret i32 %call, !dbg !2689
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !2690 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2693, metadata !DIExpression()), !dbg !2697
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2694, metadata !DIExpression()), !dbg !2698
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !2699
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2695, metadata !DIExpression()), !dbg !2699
  %0 = load i32, ptr %i.addr, align 4, !dbg !2699
  %sub = sub i32 0, %0, !dbg !2699
  store i32 %sub, ptr %__ret, align 4, !dbg !2699
  %1 = load i32, ptr %__ret, align 4, !dbg !2699
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2699
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2699
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !2699, !srcloc !2700
  store i32 %3, ptr %__ret, align 4, !dbg !2699
  %4 = load i32, ptr %__ret, align 4, !dbg !2699
  store i32 %4, ptr %tmp, align 4, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !2701
  %5 = load i32, ptr %tmp, align 4, !dbg !2699
  ret i32 %5, !dbg !2702
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !2703 {
entry:
  call void @__rcu_read_lock() #12, !dbg !2705
  br label %do.body, !dbg !2706

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2707

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !2709

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2710

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !2712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get_rcu_safe(ptr noundef %fencep) #3 align 16 !dbg !2713 {
entry:
  %retval = alloca ptr, align 8
  %fencep.addr = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %__UNIQUE_ID_rcu148 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu150 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %fencep, ptr %fencep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fencep.addr, metadata !2717, metadata !DIExpression()), !dbg !2725
  br label %do.body, !dbg !2726

do.body:                                          ; preds = %do.cond16, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #11, !dbg !2727
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !2718, metadata !DIExpression()), !dbg !2728
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu148) #11, !dbg !2729
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu148, metadata !2720, metadata !DIExpression()), !dbg !2729
  br label %do.body1, !dbg !2730

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !2732

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2732

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %fencep.addr, align 8, !dbg !2730
  %1 = load volatile ptr, ptr %0, align 8, !dbg !2730
  store ptr %1, ptr %tmp, align 8, !dbg !2732
  %2 = load ptr, ptr %tmp, align 8, !dbg !2730
  store ptr %2, ptr %__UNIQUE_ID_rcu148, align 8, !dbg !2729
  br label %do.body2, !dbg !2729

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !2734

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !2734

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %__UNIQUE_ID_rcu148, align 8, !dbg !2729
  store ptr %3, ptr %tmp5, align 8, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu148) #11, !dbg !2736
  %4 = load ptr, ptr %tmp5, align 8, !dbg !2729
  store ptr %4, ptr %fence, align 8, !dbg !2737
  %5 = load ptr, ptr %fence, align 8, !dbg !2738
  %tobool = icmp ne ptr %5, null, !dbg !2738
  br i1 %tobool, label %if.end, label %if.then, !dbg !2740

if.then:                                          ; preds = %do.end4
  store ptr null, ptr %retval, align 8, !dbg !2741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2741

if.end:                                           ; preds = %do.end4
  %6 = load ptr, ptr %fence, align 8, !dbg !2742
  %call = call ptr @dma_fence_get_rcu(ptr noundef %6) #12, !dbg !2744
  %tobool6 = icmp ne ptr %call, null, !dbg !2744
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2745

if.then7:                                         ; preds = %if.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2746

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %fence, align 8, !dbg !2747
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu150) #11, !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu150, metadata !2722, metadata !DIExpression()), !dbg !2748
  br label %do.body9, !dbg !2749

do.body9:                                         ; preds = %if.end8
  br label %do.cond10, !dbg !2751

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2751

do.end11:                                         ; preds = %do.cond10
  %8 = load ptr, ptr %fencep.addr, align 8, !dbg !2749
  %9 = load volatile ptr, ptr %8, align 8, !dbg !2749
  store ptr %9, ptr %tmp12, align 8, !dbg !2751
  %10 = load ptr, ptr %tmp12, align 8, !dbg !2749
  store ptr %10, ptr %__UNIQUE_ID_rcu150, align 8, !dbg !2748
  %11 = load ptr, ptr %__UNIQUE_ID_rcu150, align 8, !dbg !2748
  store ptr %11, ptr %tmp13, align 8, !dbg !2748
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu150) #11, !dbg !2753
  %12 = load ptr, ptr %tmp13, align 8, !dbg !2748
  %cmp = icmp eq ptr %7, %12, !dbg !2754
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !2755

if.then14:                                        ; preds = %do.end11
  %13 = load ptr, ptr %fence, align 8, !dbg !2756
  store ptr %13, ptr %retval, align 8, !dbg !2757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2757

if.end15:                                         ; preds = %do.end11
  %14 = load ptr, ptr %fence, align 8, !dbg !2758
  call void @dma_fence_put(ptr noundef %14) #12, !dbg !2759
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2760
  br label %cleanup, !dbg !2760

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #11, !dbg !2760
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %do.end17
    i32 3, label %do.cond16
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond16, !dbg !2761

do.cond16:                                        ; preds = %cleanup.cont, %cleanup
  br i1 true, label %do.body, label %do.end17, !dbg !2761, !llvm.loop !2762

do.end17:                                         ; preds = %cleanup, %do.cond16
  %15 = load ptr, ptr %retval, align 8, !dbg !2764
  ret ptr %15, !dbg !2764

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !2765 {
entry:
  br label %do.body, !dbg !2766

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2767

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #12, !dbg !2769
  br label %do.body1, !dbg !2770

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !2771

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !2773
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2774 dso_local void @__rcu_read_lock() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get_rcu(ptr noundef %fence) #3 align 16 !dbg !2775 {
entry:
  %retval = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2779
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6, !dbg !2781
  %call = call i32 @kref_get_unless_zero(ptr noundef %refcount) #12, !dbg !2782
  %tobool = icmp ne i32 %call, 0, !dbg !2782
  br i1 %tobool, label %if.then, label %if.else, !dbg !2783

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2784
  store ptr %1, ptr %retval, align 8, !dbg !2785
  br label %return, !dbg !2785

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2786
  br label %return, !dbg !2786

return:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !2787
  ret ptr %2, !dbg !2787
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_get_unless_zero(ptr noundef %kref) #3 align 16 !dbg !2788 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2792, metadata !DIExpression()), !dbg !2793
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2794
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2795
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcount) #12, !dbg !2796
  %conv = zext i1 %call to i32, !dbg !2796
  ret i32 %conv, !dbg !2797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #3 align 16 !dbg !2798 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2802
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #12, !dbg !2803
  ret i1 %call, !dbg !2804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !2805 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2807, metadata !DIExpression()), !dbg !2809
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2808, metadata !DIExpression()), !dbg !2810
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2811
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2812
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !2813
  ret i1 %call, !dbg !2814
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !2815 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2817, metadata !DIExpression()), !dbg !2821
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2818, metadata !DIExpression()), !dbg !2822
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2819, metadata !DIExpression()), !dbg !2823
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2820, metadata !DIExpression()), !dbg !2825
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2826
  %call = call i32 @refcount_read(ptr noundef %0) #12, !dbg !2827
  store i32 %call, ptr %old, align 4, !dbg !2825
  br label %do.body, !dbg !2828

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !2829
  %tobool = icmp ne i32 %1, 0, !dbg !2829
  br i1 %tobool, label %if.end, label %if.then, !dbg !2832

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !2833

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2834

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2835
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !2836
  %3 = load i32, ptr %old, align 4, !dbg !2837
  %4 = load i32, ptr %i.addr, align 4, !dbg !2838
  %add = add i32 %3, %4, !dbg !2839
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #12, !dbg !2840
  %lnot = xor i1 %call1, true, !dbg !2841
  br i1 %lnot, label %do.body, label %do.end, !dbg !2834, !llvm.loop !2842

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !2844
  %tobool2 = icmp ne ptr %5, null, !dbg !2844
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2846

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !2847
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !2848
  store i32 %6, ptr %7, align 4, !dbg !2849
  br label %if.end4, !dbg !2850

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !2851
  %cmp = icmp slt i32 %8, 0, !dbg !2851
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2851

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !2851
  %10 = load i32, ptr %i.addr, align 4, !dbg !2851
  %add5 = add i32 %9, %10, !dbg !2851
  %cmp6 = icmp slt i32 %add5, 0, !dbg !2851
  br label %lor.end, !dbg !2851

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !2851
  %lnot8 = xor i1 %lnot7, true, !dbg !2851
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !2851
  %conv = sext i32 %lnot.ext to i64, !dbg !2851
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2851
  %tobool9 = icmp ne i64 %expval, 0, !dbg !2851
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2853

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2854
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #12, !dbg !2855
  br label %if.end11, !dbg !2855

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !2856
  %tobool12 = icmp ne i32 %13, 0, !dbg !2856
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !2857
  ret i1 %tobool12, !dbg !2858
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #3 align 16 !dbg !2859 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2867
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !2868
  %call = call i32 @atomic_read(ptr noundef %refs) #12, !dbg !2869
  ret i32 %call, !dbg !2870
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !2871 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2875, metadata !DIExpression()), !dbg !2878
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2876, metadata !DIExpression()), !dbg !2879
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2877, metadata !DIExpression()), !dbg !2880
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2881
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !2882
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2883
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #12, !dbg !2884
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2885
  %3 = load ptr, ptr %old.addr, align 8, !dbg !2886
  %4 = load i32, ptr %new.addr, align 4, !dbg !2887
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #12, !dbg !2888
  ret i1 %call, !dbg !2889
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !2890 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2896, metadata !DIExpression()), !dbg !2897
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2898
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #12, !dbg !2899
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2900
  %call = call i32 @raw_atomic_read(ptr noundef %1) #12, !dbg !2901
  ret i32 %call, !dbg !2902
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2903 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2905, metadata !DIExpression()), !dbg !2907
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2906, metadata !DIExpression()), !dbg !2908
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2909
  %1 = load i64, ptr %size.addr, align 8, !dbg !2910
  %conv = trunc i64 %1 to i32, !dbg !2910
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !2911
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2912
  %3 = load i64, ptr %size.addr, align 8, !dbg !2912
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !2912
  ret void, !dbg !2913
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !2914 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2916, metadata !DIExpression()), !dbg !2917
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2918
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !2919
  ret i32 %call, !dbg !2920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !2921 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2926, metadata !DIExpression()), !dbg !2928
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2927, metadata !DIExpression()), !dbg !2929
  ret i1 true, !dbg !2930
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !2931 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2936, metadata !DIExpression()), !dbg !2939
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2937, metadata !DIExpression()), !dbg !2940
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2938, metadata !DIExpression()), !dbg !2941
  ret void, !dbg !2942
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !2943 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2945, metadata !DIExpression()), !dbg !2946
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2947
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2947
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2947
  ret i32 %1, !dbg !2948
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !2949 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2951, metadata !DIExpression()), !dbg !2954
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2952, metadata !DIExpression()), !dbg !2955
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2953, metadata !DIExpression()), !dbg !2956
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2957
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2958
  %2 = load i32, ptr %new.addr, align 4, !dbg !2959
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12, !dbg !2960
  ret i1 %call, !dbg !2961
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !2962 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2964, metadata !DIExpression()), !dbg !2973
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2965, metadata !DIExpression()), !dbg !2974
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2966, metadata !DIExpression()), !dbg !2975
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #11, !dbg !2976
  call void @llvm.dbg.declare(metadata ptr %success, metadata !2967, metadata !DIExpression()), !dbg !2976
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #11, !dbg !2976
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !2969, metadata !DIExpression()), !dbg !2976
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2976
  store ptr %0, ptr %_old, align 8, !dbg !2976
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #11, !dbg !2976
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2970, metadata !DIExpression()), !dbg !2976
  %1 = load ptr, ptr %_old, align 8, !dbg !2976
  %2 = load i32, ptr %1, align 4, !dbg !2976
  store i32 %2, ptr %__old, align 4, !dbg !2976
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #11, !dbg !2976
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2971, metadata !DIExpression()), !dbg !2976
  %3 = load i32, ptr %new.addr, align 4, !dbg !2976
  store i32 %3, ptr %__new, align 4, !dbg !2976
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !2976
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2972, metadata !DIExpression()), !dbg !2976
  %4 = load ptr, ptr %v.addr, align 8, !dbg !2976
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !2976
  store ptr %counter, ptr %__ptr, align 8, !dbg !2976
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2976
  %6 = load i32, ptr %__old, align 4, !dbg !2976
  %7 = load i32, ptr %__new, align 4, !dbg !2976
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #11, !dbg !2976, !srcloc !2977
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !2976
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !2976
  %9 = icmp ult i8 %asmresult, 2, !dbg !2976
  call void @llvm.assume(i1 %9), !dbg !2976
  store i8 %asmresult, ptr %success, align 1, !dbg !2976
  store i32 %asmresult1, ptr %__old, align 4, !dbg !2976
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !2976
  %10 = load i8, ptr %success, align 1, !dbg !2978, !range !2538, !noundef !546
  %tobool = trunc i8 %10 to i1, !dbg !2978
  %lnot = xor i1 %tobool, true, !dbg !2978
  %lnot2 = xor i1 %lnot, true, !dbg !2978
  %lnot3 = xor i1 %lnot2, true, !dbg !2978
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2978
  %conv = sext i32 %lnot.ext to i64, !dbg !2978
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2978
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2978
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2976

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !2978
  %12 = load ptr, ptr %_old, align 8, !dbg !2978
  store i32 %11, ptr %12, align 4, !dbg !2978
  br label %if.end, !dbg !2978

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !2976, !range !2538, !noundef !546
  %tobool5 = trunc i8 %13 to i1, !dbg !2976
  %lnot6 = xor i1 %tobool5, true, !dbg !2976
  %lnot8 = xor i1 %lnot6, true, !dbg !2976
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2976
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2976
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2976
  store i64 %expval11, ptr %tmp, align 8, !dbg !2978
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #11, !dbg !2980
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #11, !dbg !2980
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #11, !dbg !2980
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #11, !dbg !2980
  %14 = load i64, ptr %tmp, align 8, !dbg !2976
  %tobool12 = icmp ne i64 %14, 0, !dbg !2980
  ret i1 %tobool12, !dbg !2981
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2982 dso_local void @__rcu_read_unlock() #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2983 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2991, metadata !DIExpression()), !dbg !2996
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2992, metadata !DIExpression()), !dbg !2997
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !2998
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2993, metadata !DIExpression()), !dbg !2999
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3000
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3001
  %div = udiv i64 %1, 64, !dbg !3001
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3002
  store ptr %add.ptr, ptr %p, align 8, !dbg !2999
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !3003
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2994, metadata !DIExpression()), !dbg !3004
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3005
  %rem = urem i64 %2, 64, !dbg !3005
  %shl = shl i64 1, %rem, !dbg !3005
  store i64 %shl, ptr %mask, align 8, !dbg !3004
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !3006
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2995, metadata !DIExpression()), !dbg !3007
  %3 = load ptr, ptr %p, align 8, !dbg !3008
  %4 = load i64, ptr %3, align 8, !dbg !3009
  store i64 %4, ptr %val, align 8, !dbg !3007
  %5 = load i64, ptr %val, align 8, !dbg !3010
  %6 = load i64, ptr %mask, align 8, !dbg !3011
  %and = and i64 %5, %6, !dbg !3012
  %tobool = icmp ne i64 %and, 0, !dbg !3013
  %lnot = xor i1 %tobool, true, !dbg !3013
  %lnot1 = xor i1 %lnot, true, !dbg !3014
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !3015
  ret i1 %lnot1, !dbg !3016
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3017 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3020, metadata !DIExpression()), !dbg !3022
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3021, metadata !DIExpression()), !dbg !3023
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3024
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3025
  %div = udiv i64 %1, 64, !dbg !3025
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3026
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !3027
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3028
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3029
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !3030
  ret i1 %call, !dbg !3031
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3032 dso_local i32 @dma_fence_signal(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3035 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3038, metadata !DIExpression()), !dbg !3040
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3039, metadata !DIExpression()), !dbg !3041
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3042
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3043
  br i1 %1, label %cond.true, label %cond.false, !dbg !3043

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3044
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3045
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !3046
  %conv = zext i1 %call to i32, !dbg !3046
  br label %cond.end, !dbg !3043

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3047
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3048
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !3049
  %conv2 = zext i1 %call1 to i32, !dbg !3049
  br label %cond.end, !dbg !3043

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3043
  %tobool = icmp ne i32 %cond, 0, !dbg !3043
  ret i1 %tobool, !dbg !3050
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3051 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3055, metadata !DIExpression()), !dbg !3057
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3056, metadata !DIExpression()), !dbg !3058
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3059
  %and = and i64 %0, 63, !dbg !3060
  %shl = shl i64 1, %and, !dbg !3061
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3062
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3063
  %shr = ashr i64 %2, 6, !dbg !3064
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3062
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3062
  %and1 = and i64 %shl, %3, !dbg !3065
  %cmp = icmp ne i64 %and1, 0, !dbg !3066
  ret i1 %cmp, !dbg !3067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !3068 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3070, metadata !DIExpression()), !dbg !3073
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3071, metadata !DIExpression()), !dbg !3074
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !3075
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3072, metadata !DIExpression()), !dbg !3076
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3077
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3078
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !3079, !srcloc !3080
  %3 = icmp ult i8 %2, 2, !dbg !3079
  call void @llvm.assume(i1 %3), !dbg !3079
  store i8 %2, ptr %oldbit, align 1, !dbg !3079
  %4 = load i8, ptr %oldbit, align 1, !dbg !3081, !range !2538, !noundef !546
  %tobool = trunc i8 %4 to i1, !dbg !3081
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !3082
  ret i1 %tobool, !dbg !3083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !3084 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3086, metadata !DIExpression()), !dbg !3088
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3087, metadata !DIExpression()), !dbg !3089
  ret i1 true, !dbg !3090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #3 align 16 !dbg !3091 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !3093, metadata !DIExpression()), !dbg !3094
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !3095
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !3096
  call void @refcount_inc(ptr noundef %refcount) #12, !dbg !3097
  ret void, !dbg !3098
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !3099 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3105
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #12, !dbg !3106
  ret void, !dbg !3107
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !3108 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3112, metadata !DIExpression()), !dbg !3114
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3113, metadata !DIExpression()), !dbg !3115
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3116
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3117
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #12, !dbg !3118
  ret void, !dbg !3119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !3120 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3124, metadata !DIExpression()), !dbg !3128
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3125, metadata !DIExpression()), !dbg !3129
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3126, metadata !DIExpression()), !dbg !3130
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !3131
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3127, metadata !DIExpression()), !dbg !3132
  %0 = load i32, ptr %i.addr, align 4, !dbg !3133
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3134
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3135
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #12, !dbg !3136
  store i32 %call, ptr %old, align 4, !dbg !3132
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3137
  %tobool = icmp ne ptr %2, null, !dbg !3137
  br i1 %tobool, label %if.then, label %if.end, !dbg !3139

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3140
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3141
  store i32 %3, ptr %4, align 4, !dbg !3142
  br label %if.end, !dbg !3143

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3144
  %tobool1 = icmp ne i32 %5, 0, !dbg !3144
  %lnot = xor i1 %tobool1, true, !dbg !3144
  %lnot2 = xor i1 %lnot, true, !dbg !3144
  %lnot3 = xor i1 %lnot2, true, !dbg !3144
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3144
  %conv = sext i32 %lnot.ext to i64, !dbg !3144
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3144
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3144
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3146

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3147
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #12, !dbg !3148
  br label %if.end18, !dbg !3148

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3149
  %cmp = icmp slt i32 %7, 0, !dbg !3149
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3149

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !3149
  %9 = load i32, ptr %i.addr, align 4, !dbg !3149
  %add = add i32 %8, %9, !dbg !3149
  %cmp7 = icmp slt i32 %add, 0, !dbg !3149
  br label %lor.end, !dbg !3149

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !3149
  %lnot11 = xor i1 %lnot9, true, !dbg !3149
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3149
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !3149
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !3149
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !3149
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3151

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3152
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #12, !dbg !3153
  br label %if.end17, !dbg !3153

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !3154
  ret void, !dbg !3154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !3155 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3157, metadata !DIExpression()), !dbg !3159
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3158, metadata !DIExpression()), !dbg !3160
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3161
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !3162
  %1 = load i32, ptr %i.addr, align 4, !dbg !3163
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3164
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #12, !dbg !3165
  ret i32 %call, !dbg !3166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !3167 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3169, metadata !DIExpression()), !dbg !3171
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3170, metadata !DIExpression()), !dbg !3172
  %0 = load i32, ptr %i.addr, align 4, !dbg !3173
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3174
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #12, !dbg !3175
  ret i32 %call, !dbg !3176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !3177 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3179, metadata !DIExpression()), !dbg !3183
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3180, metadata !DIExpression()), !dbg !3184
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !3185
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3181, metadata !DIExpression()), !dbg !3185
  %0 = load i32, ptr %i.addr, align 4, !dbg !3185
  store i32 %0, ptr %__ret, align 4, !dbg !3185
  %1 = load i32, ptr %__ret, align 4, !dbg !3185
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3185
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3185
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !3185, !srcloc !3186
  store i32 %3, ptr %__ret, align 4, !dbg !3185
  %4 = load i32, ptr %__ret, align 4, !dbg !3185
  store i32 %4, ptr %tmp, align 4, !dbg !3185
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !3187
  %5 = load i32, ptr %tmp, align 4, !dbg !3185
  ret i32 %5, !dbg !3188
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_chain_contained(ptr noundef %fence) #3 align 16 !dbg !3189 {
entry:
  %fence.addr = alloca ptr, align 8
  %chain = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #11, !dbg !3194
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !3192, metadata !DIExpression()), !dbg !3195
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !3196
  %call = call ptr @to_dma_fence_chain(ptr noundef %0) #12, !dbg !3197
  store ptr %call, ptr %chain, align 8, !dbg !3195
  %1 = load ptr, ptr %chain, align 8, !dbg !3198
  %tobool = icmp ne ptr %1, null, !dbg !3198
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3198

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %chain, align 8, !dbg !3199
  %fence1 = getelementptr inbounds %struct.dma_fence_chain, ptr %2, i32 0, i32 3, !dbg !3200
  %3 = load ptr, ptr %fence1, align 8, !dbg !3200
  br label %cond.end, !dbg !3198

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !3201
  br label %cond.end, !dbg !3198

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ], !dbg !3198
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #11, !dbg !3202
  ret ptr %cond, !dbg !3203
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3204 dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_chain_cb(ptr noundef %f, ptr noundef %cb) #0 align 16 !dbg !3207 {
entry:
  %f.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %chain = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !3209, metadata !DIExpression()), !dbg !3214
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !3210, metadata !DIExpression()), !dbg !3215
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #11, !dbg !3216
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !3211, metadata !DIExpression()), !dbg !3217
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !3218
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3212, metadata !DIExpression()), !dbg !3218
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !3218
  store ptr %0, ptr %__mptr, align 8, !dbg !3218
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3218
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !3218
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3218
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !3219
  %2 = load ptr, ptr %tmp, align 8, !dbg !3218
  store ptr %2, ptr %chain, align 8, !dbg !3220
  %3 = load ptr, ptr %chain, align 8, !dbg !3221
  %4 = getelementptr inbounds %struct.dma_fence_chain, ptr %3, i32 0, i32 4, !dbg !3222
  call void @init_irq_work(ptr noundef %4, ptr noundef @dma_fence_chain_irq_work) #12, !dbg !3223
  %5 = load ptr, ptr %chain, align 8, !dbg !3224
  %6 = getelementptr inbounds %struct.dma_fence_chain, ptr %5, i32 0, i32 4, !dbg !3225
  %call = call zeroext i1 @irq_work_queue(ptr noundef %6) #12, !dbg !3226
  %7 = load ptr, ptr %f.addr, align 8, !dbg !3227
  call void @dma_fence_put(ptr noundef %7) #12, !dbg !3228
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #11, !dbg !3229
  ret void, !dbg !3229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_irq_work(ptr noundef %work, ptr noundef %func) #3 align 16 !dbg !3230 {
entry:
  %work.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.irq_work, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3234, metadata !DIExpression()), !dbg !3236
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !3235, metadata !DIExpression()), !dbg !3237
  %0 = load ptr, ptr %work.addr, align 8, !dbg !3238
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 32, i1 false), !dbg !3239
  %func1 = getelementptr inbounds %struct.irq_work, ptr %.compoundliteral, i32 0, i32 1, !dbg !3239
  %1 = load ptr, ptr %func.addr, align 8, !dbg !3239
  store ptr %1, ptr %func1, align 8, !dbg !3239
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !3239
  ret void, !dbg !3240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_chain_irq_work(ptr noundef %work) #0 align 16 !dbg !3241 {
entry:
  %work.addr = alloca ptr, align 8
  %chain = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #11, !dbg !3248
  call void @llvm.dbg.declare(metadata ptr %chain, metadata !3244, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !3250
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3245, metadata !DIExpression()), !dbg !3250
  %0 = load ptr, ptr %work.addr, align 8, !dbg !3250
  store ptr %0, ptr %__mptr, align 8, !dbg !3250
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3250
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !3250
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !3251
  %2 = load ptr, ptr %tmp, align 8, !dbg !3250
  store ptr %2, ptr %chain, align 8, !dbg !3252
  %3 = load ptr, ptr %chain, align 8, !dbg !3253
  %base = getelementptr inbounds %struct.dma_fence_chain, ptr %3, i32 0, i32 0, !dbg !3255
  %call = call zeroext i1 @dma_fence_chain_enable_signaling(ptr noundef %base) #12, !dbg !3256
  br i1 %call, label %if.end, label %if.then, !dbg !3257

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %chain, align 8, !dbg !3258
  %base1 = getelementptr inbounds %struct.dma_fence_chain, ptr %4, i32 0, i32 0, !dbg !3259
  %call2 = call i32 @dma_fence_signal(ptr noundef %base1) #12, !dbg !3260
  br label %if.end, !dbg !3260

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %chain, align 8, !dbg !3261
  %base3 = getelementptr inbounds %struct.dma_fence_chain, ptr %5, i32 0, i32 0, !dbg !3262
  call void @dma_fence_put(ptr noundef %base3) #12, !dbg !3263
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #11, !dbg !3264
  ret void, !dbg !3264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3265 dso_local zeroext i1 @irq_work_queue(ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_read(ptr noundef %kref) #3 align 16 !dbg !3268 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !3274, metadata !DIExpression()), !dbg !3275
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !3276
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !3277
  %call = call i32 @refcount_read(ptr noundef %refcount) #12, !dbg !3278
  ret i32 %call, !dbg !3279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3280 dso_local void @dma_fence_free(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3281 dso_local void @dma_fence_set_deadline(ptr noundef, i64 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973}
!llvm.ident = !{!1974}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_chain_walk219", scope: !2, file: !3, line: 77, type: !177, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma-buf/.dma-fence-chain.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma-buf/dma-fence-chain\22 -D KBUILD_BASENAME=\22dma_fence_chain\22 -D KBUILD_MODNAME=\22dma_fence_chain\22 -D __KBUILD_MODNAME=kmod_dma_fence_chain -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma-buf/dma-fence-chain.ll drivers/dma-buf/dma-fence-chain.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !1948, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/dma-fence-chain.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd9505c7f85e5f6d20db5fbb12ff74bf")
!4 = !{!5, !11, !17, !24, !29, !37}
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
!44 = !{!45, !175, !177, !178, !179, !181, !1938, !1940, !859, !1943, !1945, !1947, !75, !244}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !38, line: 65, size: 512, elements: !47)
!47 = !{!48, !94, !139, !158, !162, !163, !165, !174}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !46, file: !38, line: 66, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !51, line: 29, baseType: !52)
!51 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !51, line: 17, size: 32, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !51, line: 18, baseType: !55, size: 32)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !51, line: 18, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !55, file: !51, line: 19, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !59, line: 14, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !58, file: !59, line: 15, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !63, line: 44, baseType: !64)
!63 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !63, line: 14, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 15, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 15, size: 32, elements: !68)
!68 = !{!69, !76, !86}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !63, line: 16, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !71, line: 174, baseType: !72)
!71 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 172, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !72, file: !71, line: 173, baseType: !75, size: 32)
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !63, line: 24, baseType: !77, size: 16)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !63, line: 24, size: 16, elements: !78)
!78 = !{!79, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !77, file: !63, line: 25, baseType: !80, size: 8)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !81, line: 17, baseType: !82)
!81 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !83, line: 21, baseType: !84)
!83 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !77, file: !63, line: 26, baseType: !80, size: 8, offset: 8)
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !63, line: 28, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !63, line: 28, size: 32, elements: !88)
!88 = !{!89, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !87, file: !63, line: 29, baseType: !90, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !81, line: 19, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !83, line: 24, baseType: !92)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !87, file: !63, line: 30, baseType: !90, size: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !46, file: !38, line: 67, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !38, line: 125, size: 640, elements: !98)
!98 = !{!99, !102, !109, !110, !114, !115, !120, !124, !129, !130}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !97, file: !38, line: 132, baseType: !100, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !71, line: 35, baseType: !101)
!101 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !97, file: !38, line: 143, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !45}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !97, file: !38, line: 155, baseType: !103, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !97, file: !38, line: 192, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!100, !45}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !97, file: !38, line: 209, baseType: !111, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !97, file: !38, line: 227, baseType: !116, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !45, !100, !119}
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !97, file: !38, line: 238, baseType: !121, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !45}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !97, file: !38, line: 248, baseType: !125, size: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !45, !128, !75}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !97, file: !38, line: 258, baseType: !125, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !97, file: !38, line: 279, baseType: !131, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !45, !134}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !135, line: 29, baseType: !136)
!135 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !81, line: 22, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !83, line: 30, baseType: !138)
!138 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !46, file: !38, line: 84, baseType: !140, size: 128, offset: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !46, file: !38, line: 84, size: 128, elements: !141)
!141 = !{!142, !148, !149}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !140, file: !38, line: 85, baseType: !143, size: 128)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !71, line: 190, size: 128, elements: !144)
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !71, line: 191, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !71, line: 191, baseType: !146, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !140, file: !38, line: 87, baseType: !134, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !140, file: !38, line: 89, baseType: !150, size: 128, align: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !71, line: 232, size: 128, align: 64, elements: !151)
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !71, line: 233, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !150, file: !71, line: 234, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !153}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !46, file: !38, line: 91, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !81, line: 23, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !83, line: 31, baseType: !161)
!161 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !46, file: !38, line: 92, baseType: !159, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !38, line: 93, baseType: !164, size: 64, offset: 384)
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !46, file: !38, line: 94, baseType: !166, size: 32, offset: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !167, line: 19, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !166, file: !167, line: 20, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !30, line: 113, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !30, line: 111, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !171, file: !30, line: 112, baseType: !70, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !46, file: !38, line: 95, baseType: !75, size: 32, offset: 480)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !71, line: 42, baseType: !164)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_chain", file: !183, line: 25, size: 1024, elements: !184)
!183 = !DIFile(filename: "./include/linux/dma-fence-chain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f67e6ff9d63142f4c4d80e4fb60a6c7")
!184 = !{!185, !186, !187, !188, !189, !1937}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !182, file: !183, line: 26, baseType: !46, size: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !183, line: 27, baseType: !45, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prev_seqno", scope: !182, file: !183, line: 28, baseType: !159, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !182, file: !183, line: 29, baseType: !45, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !183, line: 30, baseType: !190, size: 256, offset: 704)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !183, line: 30, size: 256, elements: !191)
!191 = !{!192, !202}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !190, file: !183, line: 38, baseType: !193, size: 192)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !38, line: 116, size: 192, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !38, line: 117, baseType: !143, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !193, file: !38, line: 118, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !38, line: 105, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !45, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !190, file: !183, line: 47, baseType: !203, size: 256)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !204, line: 17, size: 256, elements: !205)
!204 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!205 = !{!206, !223, !228}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !204, line: 18, baseType: !207, size: 128)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !208, line: 58, size: 128, elements: !209)
!208 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!209 = !{!210, !216, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !207, file: !208, line: 59, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !212, line: 60, size: 64, elements: !213)
!212 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !212, line: 61, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !208, line: 60, baseType: !217, size: 32, offset: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !208, line: 60, size: 32, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !217, file: !208, line: 61, baseType: !7, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !217, file: !208, line: 62, baseType: !70, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !207, file: !208, line: 65, baseType: !90, size: 16, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !207, file: !208, line: 65, baseType: !90, size: 16, offset: 112)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !203, file: !204, line: 19, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !203, file: !204, line: 20, baseType: !229, size: 64, offset: 192)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !230, line: 16, size: 64, elements: !231)
!230 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !229, file: !230, line: 17, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !235, line: 746, size: 58368, elements: !236)
!235 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!236 = !{!237, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !315, !326, !426, !430, !433, !464, !465, !466, !467, !478, !480, !481, !482, !483, !484, !485, !496, !497, !500, !501, !502, !503, !504, !505, !506, !507, !514, !515, !522, !523, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !794, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !842, !844, !845, !846, !858, !860, !861, !862, !863, !864, !865, !871, !872, !873, !874, !875, !876, !877, !891, !897, !1091, !1092, !1093, !1094, !1098, !1101, !1108, !1113, !1116, !1119, !1122, !1125, !1270, !1301, !1302, !1303, !1304, !1305, !1306, !1309, !1310, !1311, !1314, !1315, !1316, !1325, !1333, !1334, !1335, !1336, !1337, !1342, !1343, !1344, !1347, !1348, !1351, !1354, !1357, !1360, !1363, !1364, !1451, !1452, !1453, !1454, !1455, !1461, !1462, !1463, !1464, !1467, !1468, !1471, !1474, !1475, !1478, !1479, !1480, !1483, !1484, !1485, !1488, !1489, !1490, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1522, !1525, !1593, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1605, !1677, !1679, !1680, !1681, !1682, !1683, !1695, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1712, !1713, !1714}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !234, file: !235, line: 752, baseType: !238, size: 192)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !239, line: 56, size: 192, elements: !240)
!239 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!240 = !{!241, !242, !243, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !239, line: 57, baseType: !164, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !238, file: !239, line: 58, baseType: !164, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !238, file: !239, line: 59, baseType: !244, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !81, line: 21, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !83, line: 27, baseType: !7)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !238, file: !239, line: 61, baseType: !244, size: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !234, file: !235, line: 754, baseType: !7, size: 32, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !234, file: !235, line: 767, baseType: !177, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !234, file: !235, line: 768, baseType: !170, size: 32, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !235, line: 770, baseType: !7, size: 32, offset: 352)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !234, file: !235, line: 771, baseType: !7, size: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !234, file: !235, line: 774, baseType: !75, size: 32, offset: 416)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !234, file: !235, line: 775, baseType: !207, size: 128, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !234, file: !235, line: 776, baseType: !7, size: 32, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !234, file: !235, line: 777, baseType: !164, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !234, file: !235, line: 778, baseType: !233, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !234, file: !235, line: 787, baseType: !75, size: 32, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !234, file: !235, line: 788, baseType: !75, size: 32, offset: 800)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !234, file: !235, line: 790, baseType: !75, size: 32, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !234, file: !235, line: 792, baseType: !75, size: 32, offset: 864)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !234, file: !235, line: 793, baseType: !75, size: 32, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !234, file: !235, line: 794, baseType: !75, size: 32, offset: 928)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !234, file: !235, line: 795, baseType: !7, size: 32, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !234, file: !235, line: 797, baseType: !265, size: 2048, offset: 1024)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !235, line: 551, size: 2048, elements: !266)
!266 = !{!267, !272, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !294, !297, !298, !299}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !265, file: !235, line: 553, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !235, line: 411, size: 128, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !268, file: !235, line: 412, baseType: !164, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !268, file: !235, line: 413, baseType: !244, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !265, file: !235, line: 554, baseType: !273, size: 192, align: 64, offset: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !274, line: 5, size: 192, align: 64, elements: !275)
!274 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!275 = !{!276, !277, !279}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !273, file: !274, line: 6, baseType: !164, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !273, file: !274, line: 7, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !273, file: !274, line: 8, baseType: !278, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !265, file: !235, line: 555, baseType: !159, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !265, file: !235, line: 556, baseType: !159, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !265, file: !235, line: 558, baseType: !143, size: 128, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !265, file: !235, line: 559, baseType: !7, size: 32, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !265, file: !235, line: 561, baseType: !159, size: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !265, file: !235, line: 562, baseType: !159, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !265, file: !235, line: 563, baseType: !159, size: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !265, file: !235, line: 564, baseType: !159, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !265, file: !235, line: 565, baseType: !136, size: 64, offset: 896)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !265, file: !235, line: 566, baseType: !159, size: 64, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !265, file: !235, line: 568, baseType: !159, size: 64, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !265, file: !235, line: 571, baseType: !75, size: 32, offset: 1088)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !235, line: 572, baseType: !293, size: 64, offset: 1152)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !265, file: !235, line: 574, baseType: !295, size: 64, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !235, line: 49, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !265, file: !235, line: 576, baseType: !295, size: 64, offset: 1280)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !265, file: !235, line: 578, baseType: !164, size: 64, offset: 1344)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !265, file: !235, line: 588, baseType: !300, size: 512, align: 512, offset: 1536)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !235, line: 497, size: 512, align: 512, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !300, file: !235, line: 498, baseType: !159, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !300, file: !235, line: 499, baseType: !159, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !300, file: !235, line: 500, baseType: !159, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !300, file: !235, line: 501, baseType: !244, size: 32, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !300, file: !235, line: 502, baseType: !244, size: 32, offset: 224)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !300, file: !235, line: 503, baseType: !164, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !300, file: !235, line: 504, baseType: !164, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !300, file: !235, line: 505, baseType: !164, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !300, file: !235, line: 506, baseType: !311, size: 64, align: 64, offset: 448)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !235, line: 445, size: 64, align: 64, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !311, file: !235, line: 446, baseType: !7, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !311, file: !235, line: 447, baseType: !7, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !234, file: !235, line: 798, baseType: !316, size: 384, offset: 3072)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !235, line: 592, size: 384, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !316, file: !235, line: 593, baseType: !143, size: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !316, file: !235, line: 594, baseType: !164, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !316, file: !235, line: 595, baseType: !164, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !316, file: !235, line: 596, baseType: !7, size: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !316, file: !235, line: 597, baseType: !92, size: 16, offset: 288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !316, file: !235, line: 598, baseType: !92, size: 16, offset: 304)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !316, file: !235, line: 600, baseType: !325, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !234, file: !235, line: 799, baseType: !327, size: 1792, offset: 3456)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !235, line: 610, size: 1792, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !423, !424}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !327, file: !235, line: 611, baseType: !273, size: 192, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !327, file: !235, line: 618, baseType: !159, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !327, file: !235, line: 619, baseType: !159, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !327, file: !235, line: 620, baseType: !159, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !327, file: !235, line: 621, baseType: !159, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !327, file: !235, line: 622, baseType: !159, size: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !327, file: !235, line: 629, baseType: !136, size: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !327, file: !235, line: 630, baseType: !159, size: 64, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !235, line: 631, baseType: !7, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !327, file: !235, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !327, file: !235, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !327, file: !235, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !327, file: !235, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !327, file: !235, line: 662, baseType: !343, size: 512, offset: 704)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !344)
!344 = !{!345, !351, !352, !357, !419, !420, !421, !422}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !343, file: !6, line: 119, baseType: !346, size: 256)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !347, line: 9, size: 256, elements: !348)
!347 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !346, file: !347, line: 10, baseType: !273, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !346, file: !347, line: 11, baseType: !134, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !343, file: !6, line: 120, baseType: !134, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !343, file: !6, line: 121, baseType: !353, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!5, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !343, file: !6, line: 122, baseType: !358, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !360)
!360 = !{!361, !387, !388, !392, !402, !403, !414, !418}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !359, file: !6, line: 160, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !364)
!364 = !{!365, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !363, file: !6, line: 216, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !59, line: 23, baseType: !58)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !363, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !363, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !363, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !363, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !363, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !363, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !363, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !363, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !363, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !363, file: !6, line: 227, baseType: !92, size: 16, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !363, file: !6, line: 228, baseType: !92, size: 16, offset: 208)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !363, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !363, file: !6, line: 235, baseType: !134, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !363, file: !6, line: 236, baseType: !356, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !363, file: !6, line: 237, baseType: !134, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !363, file: !6, line: 238, baseType: !356, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !363, file: !6, line: 239, baseType: !384, size: 4096, align: 512, offset: 512)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 4096, align: 512, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !359, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !359, file: !6, line: 162, baseType: !389, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !71, line: 32, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !391, line: 96, baseType: !75)
!391 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!392 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !359, file: !6, line: 163, baseType: !393, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !394, line: 274, baseType: !395)
!394 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !394, line: 274, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !395, file: !394, line: 274, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !394, line: 69, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !394, line: 64, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !399, file: !394, line: 65, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !359, file: !6, line: 164, baseType: !356, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !359, file: !6, line: 165, baseType: !404, size: 128, offset: 256)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !347, line: 14, size: 128, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !404, file: !347, line: 15, baseType: !407, size: 128)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !274, line: 26, size: 128, elements: !408)
!408 = !{!409, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !407, file: !274, line: 27, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !274, line: 12, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !410, file: !274, line: 13, baseType: !278, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !407, file: !274, line: 28, baseType: !278, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !359, file: !6, line: 166, baseType: !415, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!134}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !359, file: !6, line: 167, baseType: !134, size: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !6, line: 123, baseType: !80, size: 8, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !343, file: !6, line: 124, baseType: !80, size: 8, offset: 456)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !343, file: !6, line: 125, baseType: !80, size: 8, offset: 464)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !343, file: !6, line: 126, baseType: !80, size: 8, offset: 472)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !327, file: !235, line: 671, baseType: !343, size: 512, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !327, file: !235, line: 679, baseType: !425, size: 64, offset: 1728)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !234, file: !235, line: 800, baseType: !427, size: 64, offset: 5248)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !235, line: 800, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !234, file: !235, line: 809, baseType: !431, size: 64, offset: 5312)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !235, line: 70, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !234, file: !235, line: 825, baseType: !434, size: 2048, align: 512, offset: 5632)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !235, line: 509, size: 2048, align: 512, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !434, file: !235, line: 511, baseType: !159, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !434, file: !235, line: 512, baseType: !159, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !434, file: !235, line: 513, baseType: !159, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !434, file: !235, line: 514, baseType: !159, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !434, file: !235, line: 515, baseType: !159, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !434, file: !235, line: 516, baseType: !159, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !434, file: !235, line: 518, baseType: !159, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !434, file: !235, line: 519, baseType: !159, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !434, file: !235, line: 520, baseType: !136, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !434, file: !235, line: 522, baseType: !159, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !434, file: !235, line: 523, baseType: !159, size: 64, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !434, file: !235, line: 524, baseType: !136, size: 64, offset: 704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !434, file: !235, line: 526, baseType: !136, size: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !434, file: !235, line: 527, baseType: !159, size: 64, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !434, file: !235, line: 529, baseType: !159, size: 64, offset: 896)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !434, file: !235, line: 530, baseType: !159, size: 64, offset: 960)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !434, file: !235, line: 531, baseType: !159, size: 64, offset: 1024)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !434, file: !235, line: 532, baseType: !159, size: 64, offset: 1088)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !434, file: !235, line: 533, baseType: !159, size: 64, offset: 1152)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !434, file: !235, line: 535, baseType: !159, size: 64, offset: 1216)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !434, file: !235, line: 536, baseType: !159, size: 64, offset: 1280)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !434, file: !235, line: 537, baseType: !159, size: 64, offset: 1344)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !434, file: !235, line: 538, baseType: !159, size: 64, offset: 1408)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !434, file: !235, line: 539, baseType: !159, size: 64, offset: 1472)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !434, file: !235, line: 540, baseType: !159, size: 64, offset: 1536)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !434, file: !235, line: 541, baseType: !159, size: 64, offset: 1600)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !434, file: !235, line: 542, baseType: !159, size: 64, offset: 1664)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !434, file: !235, line: 543, baseType: !159, size: 64, offset: 1728)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !234, file: !235, line: 833, baseType: !7, size: 32, offset: 7680)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !234, file: !235, line: 836, baseType: !7, size: 32, offset: 7712)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !234, file: !235, line: 837, baseType: !75, size: 32, offset: 7744)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !234, file: !235, line: 838, baseType: !468, size: 64, offset: 7808)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !471, line: 19, baseType: !472)
!471 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !471, line: 19, size: 64, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !472, file: !471, line: 19, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 1)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !234, file: !235, line: 839, baseType: !479, size: 64, offset: 7872)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !234, file: !235, line: 840, baseType: !470, size: 64, offset: 7936)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !234, file: !235, line: 841, baseType: !177, size: 64, offset: 8000)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !234, file: !235, line: 843, baseType: !92, size: 16, offset: 8064)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !234, file: !235, line: 845, baseType: !92, size: 16, offset: 8080)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !234, file: !235, line: 848, baseType: !75, size: 32, offset: 8096)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !234, file: !235, line: 849, baseType: !486, size: 32, offset: 8128)
!486 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !235, line: 718, size: 32, elements: !487)
!487 = !{!488, !495}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !486, file: !235, line: 724, baseType: !489, size: 32)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !486, file: !235, line: 719, size: 32, elements: !490)
!490 = !{!491, !492, !493, !494}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !489, file: !235, line: 720, baseType: !80, size: 8)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !489, file: !235, line: 721, baseType: !80, size: 8, offset: 8)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !489, file: !235, line: 722, baseType: !80, size: 8, offset: 16)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !489, file: !235, line: 723, baseType: !80, size: 8, offset: 24)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !486, file: !235, line: 725, baseType: !244, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !234, file: !235, line: 850, baseType: !143, size: 128, offset: 8192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !234, file: !235, line: 851, baseType: !498, size: 64, offset: 8320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !235, line: 60, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !234, file: !235, line: 855, baseType: !164, size: 64, offset: 8384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !234, file: !235, line: 856, baseType: !80, size: 8, offset: 8448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !234, file: !235, line: 857, baseType: !80, size: 8, offset: 8456)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !234, file: !235, line: 858, baseType: !75, size: 32, offset: 8480)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !234, file: !235, line: 859, baseType: !143, size: 128, offset: 8512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !234, file: !235, line: 860, baseType: !75, size: 32, offset: 8640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !234, file: !235, line: 861, baseType: !143, size: 128, offset: 8704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !234, file: !235, line: 873, baseType: !508, size: 256, offset: 8832)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !235, line: 376, size: 256, elements: !509)
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !508, file: !235, line: 381, baseType: !164, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !508, file: !235, line: 384, baseType: !161, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !508, file: !235, line: 389, baseType: !161, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !508, file: !235, line: 392, baseType: !161, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !234, file: !235, line: 875, baseType: !143, size: 128, offset: 9088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !234, file: !235, line: 877, baseType: !516, size: 320, offset: 9216)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !517, line: 86, size: 320, elements: !518)
!517 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!518 = !{!519, !520, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !516, file: !517, line: 87, baseType: !75, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !516, file: !517, line: 88, baseType: !143, size: 128, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !516, file: !517, line: 89, baseType: !143, size: 128, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !234, file: !235, line: 878, baseType: !273, size: 192, align: 64, offset: 9536)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !234, file: !235, line: 881, baseType: !524, size: 64, offset: 9728)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !526, line: 733, size: 10240, elements: !527)
!526 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!527 = !{!528, !711}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !525, file: !526, line: 734, baseType: !529, size: 10240)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !525, file: !526, line: 734, size: 10240, elements: !530)
!530 = !{!531, !535, !549, !556, !557, !558, !559, !560, !561, !569, !570, !571, !577, !578, !585, !586, !587, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !628, !642, !645, !677, !678, !679, !682, !686, !687, !690, !691, !692, !698, !699}
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !526, line: 739, baseType: !532, size: 512, align: 512)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !526, line: 739, size: 512, align: 512, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !532, file: !526, line: 747, baseType: !70, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !529, file: !526, line: 750, baseType: !536, size: 128, offset: 512)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !537, line: 218, size: 128, elements: !538)
!537 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!538 = !{!539, !547, !548}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !537, line: 219, baseType: !540, size: 32)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 219, size: 32, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !540, file: !537, line: 220, baseType: !50, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !540, file: !537, line: 221, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !537, line: 197, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 197, elements: !546)
!546 = !{}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !536, file: !537, line: 223, baseType: !7, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !536, file: !537, line: 224, baseType: !177, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !529, file: !526, line: 752, baseType: !550, size: 64, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!164, !553, !164, !164, !164, !164}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !555, line: 537, flags: DIFlagFwdDecl)
!555 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !529, file: !526, line: 756, baseType: !164, size: 64, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !529, file: !526, line: 757, baseType: !164, size: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !529, file: !526, line: 760, baseType: !164, size: 64, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !529, file: !526, line: 761, baseType: !164, size: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !529, file: !526, line: 763, baseType: !164, size: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !529, file: !526, line: 764, baseType: !562, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !555, line: 299, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 299, size: 64, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !564, file: !555, line: 299, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !568, line: 18, baseType: !164)
!568 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !529, file: !526, line: 773, baseType: !70, size: 32, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !529, file: !526, line: 785, baseType: !70, size: 32, offset: 1120)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !529, file: !526, line: 795, baseType: !572, size: 64, offset: 1152)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !526, line: 726, size: 128, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !573, file: !526, line: 727, baseType: !159, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !573, file: !526, line: 728, baseType: !75, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !529, file: !526, line: 801, baseType: !164, size: 64, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !529, file: !526, line: 804, baseType: !579, size: 64, offset: 1280)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !580, line: 13, baseType: !581)
!580 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !71, line: 181, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 179, size: 64, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !582, file: !71, line: 180, baseType: !136, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !529, file: !526, line: 806, baseType: !75, size: 32, offset: 1344)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !529, file: !526, line: 808, baseType: !50, size: 32, offset: 1376)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !529, file: !526, line: 823, baseType: !588, size: 320, offset: 1408)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !589, line: 48, size: 320, elements: !590)
!589 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!590 = !{!591, !592, !593, !598, !599}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !588, file: !589, line: 49, baseType: !579, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !588, file: !589, line: 55, baseType: !579, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !588, file: !589, line: 57, baseType: !594, size: 32, offset: 128)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !595, line: 15, size: 32, elements: !596)
!595 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !594, file: !595, line: 20, baseType: !70, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !588, file: !589, line: 59, baseType: !366, size: 32, offset: 160)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !588, file: !589, line: 60, baseType: !143, size: 128, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !529, file: !526, line: 825, baseType: !143, size: 128, offset: 1728)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !529, file: !526, line: 845, baseType: !75, size: 32, offset: 1856)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !529, file: !526, line: 849, baseType: !164, size: 64, offset: 1920)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !529, file: !526, line: 850, baseType: !164, size: 64, offset: 1984)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !529, file: !526, line: 852, baseType: !164, size: 64, offset: 2048)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !529, file: !526, line: 853, baseType: !164, size: 64, offset: 2112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !529, file: !526, line: 854, baseType: !581, size: 64, offset: 2176)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !529, file: !526, line: 855, baseType: !164, size: 64, offset: 2240)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !529, file: !526, line: 856, baseType: !164, size: 64, offset: 2304)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !529, file: !526, line: 857, baseType: !164, size: 64, offset: 2368)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !529, file: !526, line: 858, baseType: !164, size: 64, offset: 2432)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !529, file: !526, line: 865, baseType: !398, size: 32, offset: 2496)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !529, file: !526, line: 867, baseType: !50, size: 32, offset: 2528)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !529, file: !526, line: 869, baseType: !164, size: 64, offset: 2560)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !529, file: !526, line: 869, baseType: !164, size: 64, offset: 2624)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !529, file: !526, line: 869, baseType: !164, size: 64, offset: 2688)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !529, file: !526, line: 869, baseType: !164, size: 64, offset: 2752)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !529, file: !526, line: 870, baseType: !164, size: 64, offset: 2816)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !529, file: !526, line: 870, baseType: !164, size: 64, offset: 2880)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !529, file: !526, line: 870, baseType: !164, size: 64, offset: 2944)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !529, file: !526, line: 871, baseType: !164, size: 64, offset: 3008)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !529, file: !526, line: 871, baseType: !164, size: 64, offset: 3072)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !529, file: !526, line: 871, baseType: !164, size: 64, offset: 3136)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !529, file: !526, line: 871, baseType: !164, size: 64, offset: 3200)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !529, file: !526, line: 873, baseType: !625, size: 3328, offset: 3264)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 3328, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 52)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !529, file: !526, line: 875, baseType: !629, size: 1280, offset: 6592)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 1280, elements: !640)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !631, line: 22, size: 320, elements: !632)
!631 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!632 = !{!633, !634, !635, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !630, file: !631, line: 23, baseType: !366, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !630, file: !631, line: 24, baseType: !136, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !630, file: !631, line: 26, baseType: !143, size: 128, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !630, file: !631, line: 28, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !81, line: 20, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !83, line: 26, baseType: !75)
!640 = !{!641}
!641 = !DISubrange(count: 4)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !529, file: !526, line: 877, baseType: !643, size: 64, offset: 7872)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !526, line: 877, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !529, file: !526, line: 880, baseType: !646, size: 1088, offset: 7936)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !647, line: 72, baseType: !648)
!647 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 23, size: 1088, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !657, !658, !666, !667, !671, !672, !673}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !648, file: !647, line: 28, baseType: !159, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !648, file: !647, line: 38, baseType: !581, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !648, file: !647, line: 40, baseType: !164, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !648, file: !647, line: 43, baseType: !588, size: 320, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !648, file: !647, line: 44, baseType: !655, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !647, line: 44, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !647, line: 48, baseType: !164, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !648, file: !647, line: 59, baseType: !659, size: 256, offset: 640)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !660, line: 66, size: 256, elements: !661)
!660 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!661 = !{!662, !663, !664, !665}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !659, file: !660, line: 67, baseType: !579, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !659, file: !660, line: 68, baseType: !366, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !659, file: !660, line: 70, baseType: !594, size: 32, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !659, file: !660, line: 72, baseType: !143, size: 128, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !648, file: !647, line: 60, baseType: !177, size: 64, offset: 896)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !648, file: !647, line: 61, baseType: !668, size: 64, offset: 960)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !647, line: 61, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !648, file: !647, line: 63, baseType: !70, size: 32, offset: 1024)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !648, file: !647, line: 69, baseType: !90, size: 16, offset: 1056)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !648, file: !647, line: 70, baseType: !674, size: 16, offset: 1072)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !81, line: 18, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !83, line: 23, baseType: !676)
!676 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !526, line: 882, baseType: !164, size: 64, offset: 9024)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !529, file: !526, line: 885, baseType: !50, size: 32, offset: 9088)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !529, file: !526, line: 886, baseType: !680, size: 64, offset: 9152)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !526, line: 732, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !529, file: !526, line: 901, baseType: !683, size: 64, offset: 9216)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !685, line: 18, flags: DIFlagFwdDecl)
!685 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!686 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !529, file: !526, line: 904, baseType: !553, size: 64, offset: 9280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !529, file: !526, line: 906, baseType: !688, size: 64, offset: 9344)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !526, line: 906, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !529, file: !526, line: 930, baseType: !70, size: 32, offset: 9408)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !529, file: !526, line: 933, baseType: !70, size: 32, offset: 9440)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !529, file: !526, line: 935, baseType: !693, size: 64, offset: 9472)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !693, file: !18, line: 104, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !529, file: !526, line: 940, baseType: !579, size: 64, offset: 9536)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !529, file: !526, line: 942, baseType: !700, size: 256, offset: 9600)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !701, line: 98, size: 256, elements: !702)
!701 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !700, file: !701, line: 99, baseType: !579, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !700, file: !701, line: 100, baseType: !143, size: 128, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !700, file: !701, line: 101, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !701, line: 21, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !525, file: !526, line: 986, baseType: !712, offset: 10240)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: -1)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !234, file: !235, line: 882, baseType: !524, size: 64, offset: 9792)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !234, file: !235, line: 884, baseType: !75, size: 32, offset: 9856)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !234, file: !235, line: 885, baseType: !75, size: 32, offset: 9888)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !234, file: !235, line: 886, baseType: !75, size: 32, offset: 9920)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !234, file: !235, line: 888, baseType: !75, size: 32, offset: 9952)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !234, file: !235, line: 890, baseType: !164, size: 64, offset: 9984)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !234, file: !235, line: 893, baseType: !7, size: 32, offset: 10048)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !234, file: !235, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !234, file: !235, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !234, file: !235, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !234, file: !235, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !234, file: !235, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !234, file: !235, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !234, file: !235, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !234, file: !235, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !234, file: !235, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !234, file: !235, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !234, file: !235, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !234, file: !235, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !234, file: !235, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !234, file: !235, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !234, file: !235, line: 969, baseType: !164, size: 64, offset: 10176)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !234, file: !235, line: 971, baseType: !738, size: 448, offset: 10240)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !739)
!739 = !{!740, !741, !746}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !738, file: !12, line: 26, baseType: !164, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !738, file: !12, line: 27, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!119, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !12, line: 28, baseType: !747, size: 320, offset: 128)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !12, line: 28, size: 320, elements: !748)
!748 = !{!749, !759, !784}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !747, file: !12, line: 37, baseType: !750, size: 320)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !12, line: 30, size: 320, elements: !751)
!751 = !{!752, !754, !755, !756, !757, !758}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !750, file: !12, line: 31, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !12, line: 32, baseType: !244, size: 32, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !12, line: 33, baseType: !244, size: 32, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !750, file: !12, line: 34, baseType: !244, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !750, file: !12, line: 35, baseType: !159, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !750, file: !12, line: 36, baseType: !753, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !747, file: !12, line: 47, baseType: !760, size: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !12, line: 39, size: 192, elements: !761)
!761 = !{!762, !763, !764, !783}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !760, file: !12, line: 40, baseType: !389, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !12, line: 42, baseType: !765, size: 64, offset: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !12, line: 42, size: 64, elements: !766)
!766 = !{!767, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !765, file: !12, line: 43, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !770, line: 7, size: 128, elements: !771)
!770 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!771 = !{!772, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !769, file: !770, line: 8, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !391, line: 93, baseType: !138)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !769, file: !770, line: 9, baseType: !138, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !765, file: !12, line: 44, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !778, line: 7, size: 64, elements: !779)
!778 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!779 = !{!780, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !777, file: !778, line: 8, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !778, line: 5, baseType: !638)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !777, file: !778, line: 9, baseType: !638, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !760, file: !12, line: 46, baseType: !159, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !747, file: !12, line: 55, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !747, file: !12, line: 49, size: 256, elements: !786)
!786 = !{!787, !790, !791, !792, !793}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !785, file: !12, line: 50, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !785, file: !12, line: 51, baseType: !75, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !785, file: !12, line: 52, baseType: !75, size: 32, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !785, file: !12, line: 53, baseType: !164, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !785, file: !12, line: 54, baseType: !164, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !234, file: !235, line: 973, baseType: !795, size: 32, offset: 10688)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !71, line: 27, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !391, line: 28, baseType: !75)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !234, file: !235, line: 974, baseType: !795, size: 32, offset: 10720)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !234, file: !235, line: 978, baseType: !164, size: 64, offset: 10752)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !234, file: !235, line: 987, baseType: !233, size: 64, offset: 10816)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !235, line: 990, baseType: !233, size: 64, offset: 10880)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !234, file: !235, line: 995, baseType: !143, size: 128, offset: 10944)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !234, file: !235, line: 996, baseType: !143, size: 128, offset: 11072)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !234, file: !235, line: 997, baseType: !233, size: 64, offset: 11200)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !234, file: !235, line: 1005, baseType: !143, size: 128, offset: 11264)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !234, file: !235, line: 1006, baseType: !143, size: 128, offset: 11392)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !234, file: !235, line: 1009, baseType: !807, size: 64, offset: 11520)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !809, line: 59, size: 768, elements: !810)
!809 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!810 = !{!811, !812, !813, !814, !825, !826, !833, !834}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !808, file: !809, line: 61, baseType: !170, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !808, file: !809, line: 62, baseType: !7, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !808, file: !809, line: 63, baseType: !50, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !808, file: !809, line: 65, baseType: !815, size: 256, offset: 128)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 256, elements: !640)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !71, line: 194, size: 64, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !816, file: !71, line: 195, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !71, line: 198, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !71, line: 199, baseType: !819, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !820, file: !71, line: 199, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !808, file: !809, line: 66, baseType: !816, size: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !808, file: !809, line: 68, baseType: !827, size: 192, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !828, line: 41, baseType: !829)
!828 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !828, line: 37, size: 192, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !829, file: !828, line: 38, baseType: !50, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !829, file: !828, line: 39, baseType: !143, size: 128, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !808, file: !809, line: 69, baseType: !150, size: 128, align: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !808, file: !809, line: 70, baseType: !835, offset: 768)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, elements: !713)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !809, line: 54, size: 128, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !836, file: !809, line: 55, baseType: !75, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !836, file: !809, line: 56, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !809, line: 56, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !234, file: !235, line: 1010, baseType: !843, size: 512, offset: 11584)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 512, elements: !640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !234, file: !235, line: 1011, baseType: !143, size: 128, offset: 12096)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !234, file: !235, line: 1012, baseType: !143, size: 128, offset: 12224)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !234, file: !235, line: 1014, baseType: !847, size: 64, offset: 12352)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !849, line: 26, size: 256, elements: !850)
!849 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !848, file: !849, line: 27, baseType: !7, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !848, file: !849, line: 28, baseType: !853, size: 192, offset: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !854, line: 43, size: 192, elements: !855)
!854 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !853, file: !854, line: 44, baseType: !366, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !853, file: !854, line: 45, baseType: !143, size: 128, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !234, file: !235, line: 1017, baseType: !859, size: 64, offset: 12416)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !234, file: !235, line: 1020, baseType: !859, size: 64, offset: 12480)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !234, file: !235, line: 1023, baseType: !177, size: 64, offset: 12544)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !234, file: !235, line: 1025, baseType: !159, size: 64, offset: 12608)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !234, file: !235, line: 1026, baseType: !159, size: 64, offset: 12672)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !234, file: !235, line: 1031, baseType: !159, size: 64, offset: 12736)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !234, file: !235, line: 1032, baseType: !866, size: 192, offset: 12800)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !235, line: 324, size: 192, elements: !867)
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !866, file: !235, line: 326, baseType: !159, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !866, file: !235, line: 327, baseType: !159, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !866, file: !235, line: 328, baseType: !366, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !234, file: !235, line: 1041, baseType: !164, size: 64, offset: 12992)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !234, file: !235, line: 1042, baseType: !164, size: 64, offset: 13056)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !234, file: !235, line: 1045, baseType: !159, size: 64, offset: 13120)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !234, file: !235, line: 1048, baseType: !159, size: 64, offset: 13184)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !234, file: !235, line: 1051, baseType: !164, size: 64, offset: 13248)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !234, file: !235, line: 1052, baseType: !164, size: 64, offset: 13312)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !234, file: !235, line: 1055, baseType: !878, size: 640, offset: 13376)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !879, line: 132, size: 640, elements: !880)
!879 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!880 = !{!881, !889, !890}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !878, file: !879, line: 133, baseType: !882, size: 576)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 576, elements: !887)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !879, line: 117, size: 192, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !883, file: !879, line: 118, baseType: !159, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !883, file: !879, line: 119, baseType: !404, size: 128, offset: 64)
!887 = !{!888}
!888 = !DISubrange(count: 3)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !878, file: !879, line: 134, baseType: !7, size: 32, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !878, file: !879, line: 135, baseType: !7, size: 32, offset: 608)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !234, file: !235, line: 1058, baseType: !892, size: 448, offset: 14016)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !879, line: 144, size: 448, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !892, file: !879, line: 145, baseType: !150, size: 128, align: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !892, file: !879, line: 146, baseType: !659, size: 256, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !892, file: !879, line: 147, baseType: !7, size: 32, offset: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !234, file: !235, line: 1064, baseType: !898, size: 64, offset: 14464)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !901, line: 110, size: 1472, elements: !902)
!901 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!902 = !{!903, !904, !911, !918, !919, !920, !921, !922, !923, !924, !925, !931, !932, !933, !934, !935, !936, !1046, !1047, !1048, !1049, !1050, !1073, !1074, !1078, !1086}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !900, file: !901, line: 111, baseType: !579, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !900, file: !901, line: 112, baseType: !905, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !685, line: 23, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !685, line: 21, size: 32, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !906, file: !685, line: 22, baseType: !909, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !71, line: 37, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !391, line: 49, baseType: !7)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !900, file: !901, line: 113, baseType: !912, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !685, line: 28, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !685, line: 26, size: 32, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !913, file: !685, line: 27, baseType: !916, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !71, line: 38, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !391, line: 50, baseType: !7)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !900, file: !901, line: 114, baseType: !905, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !900, file: !901, line: 115, baseType: !912, size: 32, offset: 160)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !900, file: !901, line: 116, baseType: !905, size: 32, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !900, file: !901, line: 117, baseType: !912, size: 32, offset: 224)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !900, file: !901, line: 118, baseType: !905, size: 32, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !900, file: !901, line: 119, baseType: !912, size: 32, offset: 288)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !900, file: !901, line: 120, baseType: !7, size: 32, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !900, file: !901, line: 121, baseType: !926, size: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !927, line: 24, baseType: !928)
!927 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !927, line: 24, size: 64, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !928, file: !927, line: 24, baseType: !159, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !900, file: !901, line: 122, baseType: !926, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !900, file: !901, line: 123, baseType: !926, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !900, file: !901, line: 124, baseType: !926, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !900, file: !901, line: 125, baseType: !926, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !900, file: !901, line: 127, baseType: !84, size: 8, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !900, file: !901, line: 129, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !939, line: 195, size: 1728, elements: !940)
!939 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!940 = !{!941, !942, !945, !950, !951, !954, !955, !962, !963, !964, !965, !968, !969, !970, !971, !972, !1010, !1031}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !938, file: !939, line: 196, baseType: !170, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !938, file: !939, line: 197, baseType: !943, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !939, line: 28, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !71, line: 104, baseType: !638)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 198, baseType: !946, size: 192, offset: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 198, size: 192, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !946, file: !939, line: 199, baseType: !143, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !946, file: !939, line: 200, baseType: !273, size: 192, align: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !938, file: !939, line: 205, baseType: !588, size: 320, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !938, file: !939, line: 206, baseType: !952, size: 64, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !939, line: 206, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !938, file: !939, line: 207, baseType: !177, size: 64, offset: 640)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 208, baseType: !956, size: 64, offset: 704)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 208, size: 64, elements: !957)
!957 = !{!958, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !956, file: !939, line: 209, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !960, line: 8, baseType: !137)
!960 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!961 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !956, file: !939, line: 210, baseType: !959, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !938, file: !939, line: 212, baseType: !959, size: 64, offset: 768)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !938, file: !939, line: 213, baseType: !905, size: 32, offset: 832)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !938, file: !939, line: 214, baseType: !912, size: 32, offset: 864)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !938, file: !939, line: 215, baseType: !966, size: 32, offset: 896)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !939, line: 31, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 110, baseType: !244)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !938, file: !939, line: 216, baseType: !92, size: 16, offset: 928)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !938, file: !939, line: 217, baseType: !92, size: 16, offset: 944)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !938, file: !939, line: 221, baseType: !676, size: 16, offset: 960)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !939, line: 228, baseType: !164, size: 64, offset: 1024)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 245, baseType: !973, size: 320, offset: 1088)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 245, size: 320, elements: !974)
!974 = !{!975, !1002}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !973, file: !939, line: 246, baseType: !976, size: 320)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !939, line: 114, size: 320, elements: !977)
!977 = !{!978, !979, !991, !994, !1001}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !976, file: !939, line: 116, baseType: !164, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !939, line: 117, baseType: !980, size: 64, offset: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !939, line: 117, size: 64, elements: !981)
!981 = !{!982, !990}
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !939, line: 118, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !980, file: !939, line: 118, size: 64, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !983, file: !939, line: 120, baseType: !90, size: 16)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !983, file: !939, line: 121, baseType: !987, size: 48, offset: 16)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 48, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 6)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !980, file: !939, line: 127, baseType: !164, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !976, file: !939, line: 129, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !939, line: 102, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !976, file: !939, line: 130, baseType: !995, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !939, line: 108, size: 192, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !996, file: !939, line: 109, baseType: !150, size: 128, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !996, file: !939, line: 110, baseType: !170, size: 32, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !996, file: !939, line: 111, baseType: !100, size: 8, offset: 160)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !976, file: !939, line: 131, baseType: !106, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !939, line: 247, baseType: !1003, size: 320)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !973, file: !939, line: 247, size: 320, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1003, file: !939, line: 248, baseType: !164, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1003, file: !939, line: 249, baseType: !164, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1003, file: !939, line: 250, baseType: !992, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1003, file: !939, line: 251, baseType: !995, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1003, file: !939, line: 252, baseType: !128, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !939, line: 260, baseType: !1011, size: 256, offset: 1408)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !939, line: 260, size: 256, elements: !1012)
!1012 = !{!1013, !1019}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1011, file: !939, line: 261, baseType: !1014, size: 256)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !939, line: 134, size: 256, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1014, file: !939, line: 135, baseType: !177, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1014, file: !939, line: 136, baseType: !1018, size: 256)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !640)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !939, line: 262, baseType: !1020, size: 256)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !939, line: 262, size: 256, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1020, file: !939, line: 264, baseType: !143, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1020, file: !939, line: 265, baseType: !1024, size: 128, offset: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1025, line: 22, size: 128, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1026 = !{!1027, !1030}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1024, file: !1025, line: 23, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1025, line: 23, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1024, file: !1025, line: 24, baseType: !164, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !938, file: !939, line: 280, baseType: !1032, size: 64, offset: 1664)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !939, line: 176, size: 192, elements: !1034)
!1034 = !{!1035, !1044, !1045}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1033, file: !939, line: 177, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !939, line: 171, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!75, !937, !1040, !1042, !937}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1033, file: !939, line: 178, baseType: !937, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1033, file: !939, line: 179, baseType: !992, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !900, file: !901, line: 130, baseType: !937, size: 64, offset: 832)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !900, file: !901, line: 131, baseType: !937, size: 64, offset: 896)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !900, file: !901, line: 132, baseType: !937, size: 64, offset: 960)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !900, file: !901, line: 135, baseType: !177, size: 64, offset: 1024)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !900, file: !901, line: 137, baseType: !1051, size: 64, offset: 1088)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1053, line: 14, size: 1088, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1052, file: !1053, line: 15, baseType: !170, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1052, file: !1053, line: 17, baseType: !630, size: 320, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1052, file: !1053, line: 19, baseType: !164, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1052, file: !1053, line: 20, baseType: !579, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1052, file: !1053, line: 23, baseType: !820, size: 128, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1052, file: !1053, line: 24, baseType: !905, size: 32, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1052, file: !1053, line: 29, baseType: !579, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1052, file: !1053, line: 36, baseType: !1063, size: 320, offset: 768)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1064, line: 15, size: 320, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !1064, line: 16, baseType: !366, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1063, file: !1064, line: 18, baseType: !75, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1063, file: !1064, line: 19, baseType: !75, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1063, file: !1064, line: 20, baseType: !75, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1063, file: !1064, line: 21, baseType: !75, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1063, file: !1064, line: 22, baseType: !164, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !1064, line: 23, baseType: !164, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !900, file: !901, line: 138, baseType: !683, size: 64, offset: 1152)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !900, file: !901, line: 139, baseType: !1075, size: 64, offset: 1216)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1077, line: 16, flags: DIFlagFwdDecl)
!1077 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !900, file: !901, line: 140, baseType: !1079, size: 64, offset: 1280)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !901, line: 25, size: 64, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1080, file: !901, line: 26, baseType: !70, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1080, file: !901, line: 27, baseType: !75, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1080, file: !901, line: 28, baseType: !1085, offset: 64)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, elements: !713)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !901, line: 142, baseType: !1087, size: 128, offset: 1344)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !901, line: 142, size: 128, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1087, file: !901, line: 143, baseType: !75, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1087, file: !901, line: 144, baseType: !150, size: 128, align: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !234, file: !235, line: 1067, baseType: !898, size: 64, offset: 14528)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !234, file: !235, line: 1070, baseType: !898, size: 64, offset: 14592)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !234, file: !235, line: 1074, baseType: !937, size: 64, offset: 14656)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !234, file: !235, line: 1084, baseType: !1095, size: 128, offset: 14720)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 16)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !234, file: !235, line: 1086, baseType: !1099, size: 64, offset: 14848)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !235, line: 55, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !234, file: !235, line: 1089, baseType: !1102, size: 64, offset: 14912)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1103, line: 12, size: 64, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1102, file: !1103, line: 13, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1103, line: 8, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !234, file: !235, line: 1090, baseType: !1109, size: 128, offset: 14976)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1110, line: 13, size: 128, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1109, file: !1110, line: 14, baseType: !143, size: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !234, file: !235, line: 1097, baseType: !1114, size: 64, offset: 15104)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !235, line: 50, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !234, file: !235, line: 1100, baseType: !1117, size: 64, offset: 15168)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !235, line: 1100, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !234, file: !235, line: 1103, baseType: !1120, size: 64, offset: 15232)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !235, line: 53, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !234, file: !235, line: 1107, baseType: !1123, size: 64, offset: 15296)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !235, line: 56, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !234, file: !235, line: 1110, baseType: !1126, size: 64, offset: 15360)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1128, line: 93, size: 8768, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1179, !1188, !1189, !1191, !1192, !1193, !1196, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1238, !1239, !1247, !1257, !1260, !1261, !1264, !1265, !1266, !1267, !1268, !1269}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1127, file: !1128, line: 94, baseType: !170, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1127, file: !1128, line: 95, baseType: !70, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1127, file: !1128, line: 96, baseType: !75, size: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1127, file: !1128, line: 97, baseType: !75, size: 32, offset: 96)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1127, file: !1128, line: 98, baseType: !143, size: 128, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1127, file: !1128, line: 100, baseType: !827, size: 192, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1127, file: !1128, line: 103, baseType: !233, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1127, file: !1128, line: 106, baseType: !1138, size: 192, offset: 512)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1077, line: 32, size: 192, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1138, file: !1077, line: 33, baseType: !143, size: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1138, file: !1077, line: 34, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1143, line: 25, baseType: !1144)
!1143 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1143, line: 23, size: 64, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1144, file: !1143, line: 24, baseType: !475, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1127, file: !1128, line: 109, baseType: !816, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1127, file: !1128, line: 112, baseType: !75, size: 32, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1127, file: !1128, line: 114, baseType: !75, size: 32, offset: 800)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1127, file: !1128, line: 115, baseType: !233, size: 64, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1127, file: !1128, line: 118, baseType: !75, size: 32, offset: 896)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !1128, line: 119, baseType: !7, size: 32, offset: 928)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1127, file: !1128, line: 121, baseType: !1154, size: 64, offset: 960)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1128, line: 80, size: 448, elements: !1156)
!1156 = !{!1157, !1158, !1164}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1155, file: !1128, line: 81, baseType: !70, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1155, file: !1128, line: 82, baseType: !1159, size: 128, offset: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1128, line: 75, size: 128, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1159, file: !1128, line: 76, baseType: !233, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1159, file: !1128, line: 77, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1155, file: !1128, line: 83, baseType: !848, size: 256, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1127, file: !1128, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1127, file: !1128, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1127, file: !1128, line: 138, baseType: !7, size: 32, offset: 1056)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1127, file: !1128, line: 139, baseType: !143, size: 128, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1127, file: !1128, line: 142, baseType: !343, size: 512, offset: 1216)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1127, file: !1128, line: 143, baseType: !134, size: 64, offset: 1728)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1127, file: !1128, line: 150, baseType: !1172, size: 256, offset: 1792)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 256, elements: !1177)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1128, line: 38, size: 128, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1173, file: !1128, line: 39, baseType: !159, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1173, file: !1128, line: 40, baseType: !159, size: 64, offset: 64)
!1177 = !{!1178}
!1178 = !DISubrange(count: 2)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1127, file: !1128, line: 156, baseType: !1180, size: 192, offset: 2048)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1128, line: 66, size: 192, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1180, file: !1128, line: 67, baseType: !1183, size: 192)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1128, line: 47, size: 192, elements: !1184)
!1184 = !{!1185, !1186, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1183, file: !1128, line: 48, baseType: !581, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1183, file: !1128, line: 49, baseType: !581, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1183, file: !1128, line: 50, baseType: !581, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1127, file: !1128, line: 160, baseType: !878, size: 640, offset: 2240)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1127, file: !1128, line: 163, baseType: !1190, size: 256, offset: 2880)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 256, elements: !640)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1127, file: !1128, line: 169, baseType: !807, size: 64, offset: 3136)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1127, file: !1128, line: 172, baseType: !75, size: 32, offset: 3200)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1127, file: !1128, line: 174, baseType: !1194, size: 64, offset: 3264)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1128, line: 174, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1127, file: !1128, line: 185, baseType: !1197, size: 64, offset: 3328)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !394, line: 860, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 853, size: 64, elements: !1199)
!1199 = !{!1200, !1205}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1198, file: !394, line: 858, baseType: !1201, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !394, line: 275, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !394, line: 275, size: 32, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1202, file: !394, line: 275, baseType: !398, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1198, file: !394, line: 859, baseType: !50, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1127, file: !1128, line: 186, baseType: !159, size: 64, offset: 3392)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1127, file: !1128, line: 186, baseType: !159, size: 64, offset: 3456)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1127, file: !1128, line: 186, baseType: !159, size: 64, offset: 3520)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1127, file: !1128, line: 186, baseType: !159, size: 64, offset: 3584)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1127, file: !1128, line: 187, baseType: !159, size: 64, offset: 3648)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1127, file: !1128, line: 188, baseType: !159, size: 64, offset: 3712)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1127, file: !1128, line: 189, baseType: !866, size: 192, offset: 3776)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1127, file: !1128, line: 190, baseType: !164, size: 64, offset: 3968)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1127, file: !1128, line: 190, baseType: !164, size: 64, offset: 4032)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1127, file: !1128, line: 190, baseType: !164, size: 64, offset: 4096)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1127, file: !1128, line: 190, baseType: !164, size: 64, offset: 4160)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1127, file: !1128, line: 191, baseType: !164, size: 64, offset: 4224)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1127, file: !1128, line: 191, baseType: !164, size: 64, offset: 4288)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1127, file: !1128, line: 191, baseType: !164, size: 64, offset: 4352)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1127, file: !1128, line: 191, baseType: !164, size: 64, offset: 4416)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1127, file: !1128, line: 192, baseType: !164, size: 64, offset: 4480)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1127, file: !1128, line: 192, baseType: !164, size: 64, offset: 4544)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1127, file: !1128, line: 192, baseType: !164, size: 64, offset: 4608)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1127, file: !1128, line: 192, baseType: !164, size: 64, offset: 4672)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1127, file: !1128, line: 193, baseType: !164, size: 64, offset: 4736)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1127, file: !1128, line: 193, baseType: !164, size: 64, offset: 4800)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1127, file: !1128, line: 194, baseType: !1228, size: 448, offset: 4864)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1229, line: 12, size: 448, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1228, file: !1229, line: 15, baseType: !159, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1228, file: !1229, line: 17, baseType: !159, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1228, file: !1229, line: 19, baseType: !159, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1228, file: !1229, line: 21, baseType: !159, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1228, file: !1229, line: 29, baseType: !159, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1228, file: !1229, line: 35, baseType: !159, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1228, file: !1229, line: 44, baseType: !159, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1127, file: !1128, line: 202, baseType: !161, size: 64, offset: 5312)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1127, file: !1128, line: 213, baseType: !1240, size: 2048, offset: 5376)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 2048, elements: !1096)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1242, line: 43, size: 128, elements: !1243)
!1242 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1243 = !{!1244, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1241, file: !1242, line: 44, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !391, line: 16, baseType: !164)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1241, file: !1242, line: 45, baseType: !1245, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1127, file: !1128, line: 216, baseType: !1248, size: 448, offset: 7424)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1128, line: 30, size: 448, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1248, file: !1128, line: 31, baseType: !75, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1248, file: !1128, line: 32, baseType: !119, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1248, file: !1128, line: 33, baseType: !164, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1248, file: !1128, line: 34, baseType: !159, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1248, file: !1128, line: 34, baseType: !159, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1248, file: !1128, line: 35, baseType: !164, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1248, file: !1128, line: 35, baseType: !164, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1127, file: !1128, line: 219, baseType: !1258, size: 64, offset: 7872)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1128, line: 219, flags: DIFlagFwdDecl)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1127, file: !1128, line: 222, baseType: !7, size: 32, offset: 7936)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1127, file: !1128, line: 223, baseType: !1262, size: 64, offset: 8000)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1128, line: 223, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1127, file: !1128, line: 230, baseType: !100, size: 8, offset: 8064)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1127, file: !1128, line: 231, baseType: !676, size: 16, offset: 8080)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1127, file: !1128, line: 232, baseType: !676, size: 16, offset: 8096)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1127, file: !1128, line: 234, baseType: !524, size: 64, offset: 8128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1127, file: !1128, line: 237, baseType: !659, size: 256, offset: 8192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1127, file: !1128, line: 243, baseType: !588, size: 320, offset: 8448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !234, file: !235, line: 1111, baseType: !1271, size: 64, offset: 15424)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1128, line: 20, size: 16640, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1272, file: !1128, line: 21, baseType: !50, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1272, file: !1128, line: 22, baseType: !170, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1272, file: !1128, line: 23, baseType: !827, size: 192, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1272, file: !1128, line: 24, baseType: !1278, size: 16384, offset: 256)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 16384, elements: !1299)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1077, line: 51, size: 256, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1279, file: !1077, line: 52, baseType: !1282, size: 256)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1077, line: 37, size: 256, elements: !1283)
!1283 = !{!1284, !1291, !1292, !1298}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1282, file: !1077, line: 39, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1286, line: 83, baseType: !1287)
!1286 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1286, line: 82, baseType: !1289)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !75}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1282, file: !1077, line: 40, baseType: !164, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1282, file: !1077, line: 46, baseType: !1293, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1286, line: 86, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1286, line: 85, baseType: !1296)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1282, file: !1077, line: 48, baseType: !1142, size: 64, offset: 192)
!1299 = !{!1300}
!1300 = !DISubrange(count: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !234, file: !235, line: 1112, baseType: !1142, size: 64, offset: 15488)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !234, file: !235, line: 1113, baseType: !1142, size: 64, offset: 15552)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !234, file: !235, line: 1115, baseType: !1142, size: 64, offset: 15616)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !234, file: !235, line: 1116, baseType: !1138, size: 192, offset: 15680)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !234, file: !235, line: 1117, baseType: !164, size: 64, offset: 15872)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !234, file: !235, line: 1118, baseType: !1307, size: 64, offset: 15936)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 61, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !391, line: 72, baseType: !1245)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !234, file: !235, line: 1119, baseType: !7, size: 32, offset: 16000)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !234, file: !235, line: 1121, baseType: !153, size: 64, offset: 16064)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !234, file: !235, line: 1125, baseType: !1312, size: 64, offset: 16128)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !235, line: 43, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !234, file: !235, line: 1127, baseType: !905, size: 32, offset: 16192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !234, file: !235, line: 1128, baseType: !7, size: 32, offset: 16224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !234, file: !235, line: 1130, baseType: !1317, size: 128, offset: 16256)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1318, line: 37, size: 128, elements: !1319)
!1318 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1317, file: !1318, line: 38, baseType: !75, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1317, file: !1318, line: 39, baseType: !70, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1317, file: !1318, line: 40, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1318, line: 24, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !234, file: !235, line: 1131, baseType: !1326, size: 256, offset: 16384)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1327, line: 12, size: 256, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1328 = !{!1329, !1330, !1331, !1332}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1326, file: !1327, line: 13, baseType: !128, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1326, file: !1327, line: 14, baseType: !164, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1326, file: !1327, line: 15, baseType: !164, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1326, file: !1327, line: 16, baseType: !100, size: 8, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !234, file: !235, line: 1134, baseType: !159, size: 64, offset: 16640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !234, file: !235, line: 1135, baseType: !159, size: 64, offset: 16704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !234, file: !235, line: 1138, baseType: !50, size: 32, offset: 16768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !234, file: !235, line: 1141, baseType: !366, size: 32, offset: 16800)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !234, file: !235, line: 1143, baseType: !1338, size: 64, offset: 16832)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !235, line: 735, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1338, file: !235, line: 736, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !234, file: !235, line: 1147, baseType: !407, size: 128, offset: 16896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !234, file: !235, line: 1149, baseType: !233, size: 64, offset: 17024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !234, file: !235, line: 1151, baseType: !1345, size: 64, offset: 17088)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !235, line: 1151, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !234, file: !235, line: 1188, baseType: !177, size: 64, offset: 17152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !234, file: !235, line: 1191, baseType: !1349, size: 64, offset: 17216)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !235, line: 44, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !234, file: !235, line: 1194, baseType: !1352, size: 64, offset: 17280)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !235, line: 45, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !234, file: !235, line: 1197, baseType: !1355, size: 64, offset: 17344)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !235, line: 61, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !234, file: !235, line: 1199, baseType: !1358, size: 64, offset: 17408)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !235, line: 52, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !234, file: !235, line: 1202, baseType: !1361, size: 64, offset: 17472)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !235, line: 48, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !234, file: !235, line: 1205, baseType: !164, size: 64, offset: 17536)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !234, file: !235, line: 1206, baseType: !1365, size: 64, offset: 17600)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1077, line: 14, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1077, line: 12, size: 384, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1077, line: 13, baseType: !1370, size: 384)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1077, line: 13, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1370, file: !1077, line: 13, baseType: !75, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1370, file: !1077, line: 13, baseType: !75, size: 32, offset: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1370, file: !1077, line: 13, baseType: !75, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1370, file: !1077, line: 13, baseType: !1376, size: 256, offset: 128)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1377, line: 37, size: 256, elements: !1378)
!1377 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1378 = !{!1379, !1384, !1397, !1403, !1413, !1440, !1445}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1376, file: !1377, line: 42, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1377, line: 39, size: 64, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1380, file: !1377, line: 40, baseType: !796, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1380, file: !1377, line: 41, baseType: !910, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1376, file: !1377, line: 50, baseType: !1385, size: 192)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1377, line: 45, size: 192, elements: !1386)
!1386 = !{!1387, !1389, !1390, !1396}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1385, file: !1377, line: 46, baseType: !1388, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !391, line: 95, baseType: !75)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1385, file: !1377, line: 47, baseType: !75, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1385, file: !1377, line: 48, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1377, line: 11, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1377, line: 8, size: 64, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1392, file: !1377, line: 9, baseType: !75, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1392, file: !1377, line: 10, baseType: !177, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1385, file: !1377, line: 49, baseType: !75, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1376, file: !1377, line: 57, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1377, line: 53, size: 128, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1398, file: !1377, line: 54, baseType: !796, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1398, file: !1377, line: 55, baseType: !910, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1398, file: !1377, line: 56, baseType: !1391, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1376, file: !1377, line: 66, baseType: !1404, size: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1377, line: 60, size: 256, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1404, file: !1377, line: 61, baseType: !796, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1404, file: !1377, line: 62, baseType: !910, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1404, file: !1377, line: 63, baseType: !75, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1404, file: !1377, line: 64, baseType: !1410, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !391, line: 94, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !391, line: 15, baseType: !119)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1404, file: !1377, line: 65, baseType: !1410, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1376, file: !1377, line: 105, baseType: !1414, size: 256)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1377, line: 69, size: 256, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1414, file: !1377, line: 70, baseType: !177, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1377, line: 79, baseType: !1418, size: 192, offset: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1377, line: 79, size: 192, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1429, !1434}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1418, file: !1377, line: 81, baseType: !75, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1418, file: !1377, line: 86, baseType: !676, size: 16)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1418, file: !1377, line: 92, baseType: !1423, size: 192)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !1377, line: 88, size: 192, elements: !1424)
!1424 = !{!1425, !1427, !1428}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1423, file: !1377, line: 89, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !385)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1423, file: !1377, line: 90, baseType: !177, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1423, file: !1377, line: 91, baseType: !177, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1418, file: !1377, line: 97, baseType: !1430, size: 96)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !1377, line: 94, size: 96, elements: !1431)
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1430, file: !1377, line: 95, baseType: !1426, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1430, file: !1377, line: 96, baseType: !245, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1418, file: !1377, line: 103, baseType: !1435, size: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !1377, line: 99, size: 128, elements: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1435, file: !1377, line: 100, baseType: !164, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1435, file: !1377, line: 101, baseType: !245, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1435, file: !1377, line: 102, baseType: !245, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1376, file: !1377, line: 111, baseType: !1441, size: 128)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1377, line: 108, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1441, file: !1377, line: 109, baseType: !119, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1441, file: !1377, line: 110, baseType: !75, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1376, file: !1377, line: 118, baseType: !1446, size: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1377, line: 114, size: 128, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1446, file: !1377, line: 115, baseType: !177, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1446, file: !1377, line: 116, baseType: !75, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1446, file: !1377, line: 117, baseType: !7, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !234, file: !235, line: 1208, baseType: !1228, size: 448, offset: 17664)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !234, file: !235, line: 1215, baseType: !159, size: 64, offset: 18112)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !234, file: !235, line: 1217, baseType: !159, size: 64, offset: 18176)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !234, file: !235, line: 1219, baseType: !159, size: 64, offset: 18240)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !234, file: !235, line: 1223, baseType: !1456, size: 64, offset: 18304)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1457, line: 99, baseType: !1458)
!1457 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1457, line: 99, size: 64, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1458, file: !1457, line: 99, baseType: !475, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !234, file: !235, line: 1225, baseType: !1201, size: 32, offset: 18368)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !234, file: !235, line: 1226, baseType: !75, size: 32, offset: 18400)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !234, file: !235, line: 1227, baseType: !75, size: 32, offset: 18432)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !234, file: !235, line: 1231, baseType: !1465, size: 64, offset: 18496)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !235, line: 1231, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !234, file: !235, line: 1233, baseType: !143, size: 128, offset: 18560)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !234, file: !235, line: 1240, baseType: !1469, size: 64, offset: 18688)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !235, line: 62, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !234, file: !235, line: 1242, baseType: !1472, size: 64, offset: 18752)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !235, line: 1242, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !234, file: !235, line: 1244, baseType: !143, size: 128, offset: 18816)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !234, file: !235, line: 1245, baseType: !1476, size: 64, offset: 18944)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !235, line: 51, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !234, file: !235, line: 1246, baseType: !659, size: 256, offset: 19008)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !234, file: !235, line: 1247, baseType: !7, size: 32, offset: 19264)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !234, file: !235, line: 1250, baseType: !1481, size: 64, offset: 19328)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !235, line: 57, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !234, file: !235, line: 1251, baseType: !659, size: 256, offset: 19392)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !234, file: !235, line: 1252, baseType: !143, size: 128, offset: 19648)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !234, file: !235, line: 1259, baseType: !1486, size: 64, offset: 19776)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !235, line: 54, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !234, file: !235, line: 1260, baseType: !676, size: 16, offset: 19840)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !234, file: !235, line: 1261, baseType: !676, size: 16, offset: 19856)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !234, file: !235, line: 1314, baseType: !1491, size: 64, offset: 19904)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1493, line: 62, size: 256, align: 256, elements: !1494)
!1493 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1492, file: !1493, line: 75, baseType: !245, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1492, file: !1493, line: 90, baseType: !245, size: 32, offset: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1492, file: !1493, line: 112, baseType: !160, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1493, line: 132, baseType: !245, size: 32, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1492, file: !1493, line: 140, baseType: !245, size: 32, offset: 160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1492, file: !1493, line: 149, baseType: !245, size: 32, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1492, file: !1493, line: 154, baseType: !1502, offset: 224)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, elements: !713)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !234, file: !235, line: 1315, baseType: !244, size: 32, offset: 19968)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !234, file: !235, line: 1316, baseType: !244, size: 32, offset: 20000)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !234, file: !235, line: 1321, baseType: !164, size: 64, offset: 20032)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !234, file: !235, line: 1325, baseType: !75, size: 32, offset: 20096)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !234, file: !235, line: 1326, baseType: !75, size: 32, offset: 20128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !234, file: !235, line: 1327, baseType: !75, size: 32, offset: 20160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !234, file: !235, line: 1328, baseType: !75, size: 32, offset: 20192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !234, file: !235, line: 1329, baseType: !150, size: 128, align: 64, offset: 20224)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !234, file: !235, line: 1332, baseType: !1512, size: 128, offset: 20352)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1513, line: 51, size: 128, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1514 = !{!1515, !1520, !1521}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1512, file: !1513, line: 60, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1517, line: 7, size: 64, elements: !1518)
!1517 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1516, file: !1517, line: 12, baseType: !472, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1512, file: !1513, line: 63, baseType: !100, size: 8, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1512, file: !1513, line: 70, baseType: !100, size: 8, offset: 72)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !234, file: !235, line: 1335, baseType: !1523, size: 64, offset: 20480)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !235, line: 59, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !234, file: !235, line: 1337, baseType: !1526, size: 128, offset: 20544)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1513, line: 39, size: 128, elements: !1527)
!1527 = !{!1528, !1591, !1592}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1526, file: !1513, line: 40, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !526, line: 74, size: 512, align: 128, elements: !1531)
!1531 = !{!1532, !1533, !1585, !1590}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !526, line: 75, baseType: !164, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !526, line: 83, baseType: !1534, size: 320, offset: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !526, line: 83, size: 320, elements: !1535)
!1535 = !{!1536, !1559, !1573, !1577, !1584}
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !526, line: 84, baseType: !1537, size: 320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !526, line: 84, size: 320, elements: !1538)
!1538 = !{!1539, !1550, !1553, !1558}
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !526, line: 90, baseType: !1540, size: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !526, line: 90, size: 128, elements: !1541)
!1541 = !{!1542, !1543, !1548, !1549}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1540, file: !526, line: 91, baseType: !143, size: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !526, line: 94, baseType: !1544, size: 128)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1540, file: !526, line: 94, size: 128, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1544, file: !526, line: 96, baseType: !177, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1544, file: !526, line: 98, baseType: !7, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1540, file: !526, line: 102, baseType: !143, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1540, file: !526, line: 103, baseType: !143, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1537, file: !526, line: 106, baseType: !1551, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !526, line: 32, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !526, line: 107, baseType: !1554, size: 64, offset: 192)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1537, file: !526, line: 107, size: 64, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1554, file: !526, line: 108, baseType: !164, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1554, file: !526, line: 109, baseType: !164, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1537, file: !526, line: 117, baseType: !164, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !526, line: 119, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !526, line: 119, size: 320, elements: !1561)
!1561 = !{!1562, !1563, !1566, !1567, !1568}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1560, file: !526, line: 124, baseType: !164, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1560, file: !526, line: 125, baseType: !1564, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !526, line: 125, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1560, file: !526, line: 126, baseType: !164, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1560, file: !526, line: 127, baseType: !164, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !526, line: 128, baseType: !1569, size: 64, offset: 256)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !526, line: 128, size: 64, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1569, file: !526, line: 133, baseType: !164, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1569, file: !526, line: 138, baseType: !579, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !526, line: 141, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !526, line: 141, size: 64, elements: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1574, file: !526, line: 142, baseType: !164, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !526, line: 144, baseType: !1578, size: 128)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !526, line: 144, size: 128, elements: !1579)
!1579 = !{!1580, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1578, file: !526, line: 146, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !526, line: 146, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1578, file: !526, line: 147, baseType: !177, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1534, file: !526, line: 161, baseType: !150, size: 128, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !526, line: 164, baseType: !1586, size: 32, offset: 384)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !526, line: 164, size: 32, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1586, file: !526, line: 169, baseType: !70, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1586, file: !526, line: 177, baseType: !7, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1530, file: !526, line: 181, baseType: !70, size: 32, offset: 416)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1526, file: !1513, line: 42, baseType: !245, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1526, file: !1513, line: 43, baseType: !245, size: 32, offset: 96)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !234, file: !235, line: 1340, baseType: !1594, size: 64, offset: 20672)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !235, line: 69, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !234, file: !235, line: 1351, baseType: !75, size: 32, offset: 20736)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !234, file: !235, line: 1352, baseType: !75, size: 32, offset: 20768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !234, file: !235, line: 1354, baseType: !164, size: 64, offset: 20800)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !234, file: !235, line: 1364, baseType: !159, size: 64, offset: 20864)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !234, file: !235, line: 1365, baseType: !159, size: 64, offset: 20928)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !234, file: !235, line: 1412, baseType: !164, size: 64, offset: 20992)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !234, file: !235, line: 1453, baseType: !1603, size: 64, offset: 21056)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !235, line: 1453, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !234, file: !235, line: 1457, baseType: !1606, size: 64, offset: 21120)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1608)
!1608 = !{!1609, !1610, !1629, !1632, !1633, !1666, !1676}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1607, file: !18, line: 62, baseType: !17, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !18, line: 64, baseType: !1611, size: 192, offset: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !18, line: 64, size: 192, elements: !1612)
!1612 = !{!1613, !1624}
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !18, line: 65, baseType: !1614, size: 192)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !18, line: 65, size: 192, elements: !1615)
!1615 = !{!1616, !1623}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1614, file: !18, line: 66, baseType: !1617, size: 128)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1618, line: 50, size: 128, elements: !1619)
!1618 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1619 = !{!1620, !1621, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1617, file: !1618, line: 52, baseType: !164, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1617, file: !1618, line: 54, baseType: !7, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1617, file: !1618, line: 55, baseType: !7, size: 32, offset: 96)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1614, file: !18, line: 67, baseType: !164, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !18, line: 70, baseType: !1625, size: 192)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !18, line: 70, size: 192, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1625, file: !18, line: 71, baseType: !150, size: 128, align: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1625, file: !18, line: 72, baseType: !164, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1607, file: !18, line: 76, baseType: !1630, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1607, file: !18, line: 77, baseType: !164, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1607, file: !18, line: 79, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1618, line: 25, size: 256, elements: !1636)
!1636 = !{!1637, !1643, !1647}
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1618, line: 26, baseType: !1638, size: 128)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1618, line: 26, size: 128, elements: !1639)
!1639 = !{!1640, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1638, file: !1618, line: 27, baseType: !1641, size: 128)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, elements: !1096)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1638, file: !1618, line: 28, baseType: !1641, size: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1635, file: !1618, line: 31, baseType: !1644, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1618, line: 23, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !1618, line: 33, baseType: !1648, size: 64, offset: 192)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !1618, line: 33, size: 64, elements: !1649)
!1649 = !{!1650, !1656, !1661}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1648, file: !1618, line: 38, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1618, line: 34, size: 64, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1651, file: !1618, line: 35, baseType: !638, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1651, file: !1618, line: 36, baseType: !80, size: 8, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1651, file: !1618, line: 37, baseType: !80, size: 8, offset: 40)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1648, file: !1618, line: 42, baseType: !1657, size: 16)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1618, line: 39, size: 16, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1657, file: !1618, line: 40, baseType: !80, size: 8)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1657, file: !1618, line: 41, baseType: !80, size: 8, offset: 8)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1648, file: !1618, line: 46, baseType: !1662, size: 16)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1618, line: 43, size: 16, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1662, file: !1618, line: 44, baseType: !80, size: 8)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1662, file: !1618, line: 45, baseType: !80, size: 8, offset: 8)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1607, file: !18, line: 81, baseType: !1667, size: 64, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1668, file: !18, line: 86, baseType: !1630, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1668, file: !18, line: 87, baseType: !164, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1668, file: !18, line: 88, baseType: !164, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1668, file: !18, line: 89, baseType: !164, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1668, file: !18, line: 90, baseType: !100, size: 8, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1668, file: !18, line: 92, baseType: !1667, size: 64, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1607, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !234, file: !235, line: 1463, baseType: !1678, offset: 21184)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !235, line: 739, elements: !546)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !234, file: !235, line: 1470, baseType: !150, size: 128, align: 64, offset: 21184)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !234, file: !235, line: 1471, baseType: !170, size: 32, offset: 21312)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !234, file: !235, line: 1472, baseType: !75, size: 32, offset: 21344)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !234, file: !235, line: 1474, baseType: !233, size: 64, offset: 21376)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !234, file: !235, line: 1475, baseType: !1684, size: 320, offset: 21440)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1685, line: 11, size: 320, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1686 = !{!1687, !1688, !1689, !1694}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1684, file: !1685, line: 16, baseType: !820, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1684, file: !1685, line: 17, baseType: !164, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1684, file: !1685, line: 18, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1684, file: !1685, line: 19, baseType: !244, size: 32, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !234, file: !235, line: 1478, baseType: !1696, size: 64, offset: 21760)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !235, line: 1478, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !234, file: !235, line: 1482, baseType: !170, size: 32, offset: 21824)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !234, file: !235, line: 1489, baseType: !177, size: 64, offset: 21888)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !234, file: !235, line: 1504, baseType: !177, size: 64, offset: 21952)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !234, file: !235, line: 1505, baseType: !160, size: 64, offset: 22016)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !234, file: !235, line: 1506, baseType: !159, size: 64, offset: 22080)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !234, file: !235, line: 1507, baseType: !160, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !234, file: !235, line: 1508, baseType: !160, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !234, file: !235, line: 1509, baseType: !160, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !234, file: !235, line: 1510, baseType: !150, size: 128, align: 64, offset: 22208)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !234, file: !235, line: 1511, baseType: !75, size: 32, offset: 22336)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !234, file: !235, line: 1515, baseType: !1709, size: 64, offset: 22400)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !212, line: 56, size: 64, elements: !1710)
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1709, file: !212, line: 57, baseType: !215, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !234, file: !235, line: 1518, baseType: !1709, size: 64, offset: 22464)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !234, file: !235, line: 1528, baseType: !150, size: 128, align: 64, offset: 22528)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !234, file: !235, line: 1552, baseType: !1715, size: 35328, offset: 23040)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1716, line: 430, size: 35328, elements: !1717)
!1716 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1717 = !{!1718, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1747, !1748, !1749, !1750, !1751, !1752, !1755, !1756, !1757, !1758}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1715, file: !1716, line: 432, baseType: !1719, size: 192)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1720, size: 192, elements: !887)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1721, line: 16, size: 64, elements: !1722)
!1721 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1720, file: !1721, line: 17, baseType: !90, size: 16)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1720, file: !1721, line: 18, baseType: !90, size: 16, offset: 16)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1720, file: !1721, line: 19, baseType: !90, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1720, file: !1721, line: 19, baseType: !90, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1720, file: !1721, line: 19, baseType: !90, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1720, file: !1721, line: 19, baseType: !90, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1720, file: !1721, line: 19, baseType: !90, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1720, file: !1721, line: 20, baseType: !90, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1720, file: !1721, line: 20, baseType: !90, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1720, file: !1721, line: 20, baseType: !90, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1720, file: !1721, line: 20, baseType: !90, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1720, file: !1721, line: 20, baseType: !90, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1720, file: !1721, line: 20, baseType: !90, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1715, file: !1716, line: 436, baseType: !164, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1715, file: !1716, line: 440, baseType: !92, size: 16, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1715, file: !1716, line: 441, baseType: !92, size: 16, offset: 272)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1715, file: !1716, line: 442, baseType: !92, size: 16, offset: 288)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1715, file: !1716, line: 443, baseType: !92, size: 16, offset: 304)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1715, file: !1716, line: 447, baseType: !164, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1715, file: !1716, line: 448, baseType: !164, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1715, file: !1716, line: 459, baseType: !1744, size: 256, offset: 448)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, size: 256, elements: !640)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1716, line: 428, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1715, file: !1716, line: 461, baseType: !164, size: 64, offset: 704)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1715, file: !1716, line: 463, baseType: !164, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1715, file: !1716, line: 465, baseType: !164, size: 64, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1715, file: !1716, line: 466, baseType: !164, size: 64, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1715, file: !1716, line: 467, baseType: !164, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1715, file: !1716, line: 473, baseType: !1753, size: 64, offset: 1024)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1716, line: 10, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1715, file: !1716, line: 480, baseType: !164, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1715, file: !1716, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1715, file: !1716, line: 491, baseType: !244, size: 32, offset: 1184)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1715, file: !1716, line: 501, baseType: !1759, size: 33792, offset: 1536)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1760, line: 448, size: 33792, elements: !1761)
!1760 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1761 = !{!1762, !1763, !1764, !1928, !1929, !1935, !1936}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1759, file: !1760, line: 461, baseType: !7, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1759, file: !1760, line: 468, baseType: !164, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1759, file: !1760, line: 476, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1760, line: 356, size: 33280, align: 512, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1766, file: !1760, line: 358, baseType: !7, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1766, file: !1760, line: 361, baseType: !7, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1766, file: !1760, line: 364, baseType: !159, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1766, file: !1760, line: 367, baseType: !159, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1766, file: !1760, line: 370, baseType: !159, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1766, file: !1760, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1766, file: !1760, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1766, file: !1760, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1766, file: !1760, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1766, file: !1760, line: 397, baseType: !1778, size: 32768, offset: 512)
!1778 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1760, line: 348, size: 32768, elements: !1779)
!1779 = !{!1780, !1795, !1834, !1911, !1924}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1778, file: !1760, line: 349, baseType: !1781, size: 896)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1760, line: 12, size: 896, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1794}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1781, file: !1760, line: 13, baseType: !244, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1781, file: !1760, line: 14, baseType: !244, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1781, file: !1760, line: 15, baseType: !244, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1781, file: !1760, line: 16, baseType: !244, size: 32, offset: 96)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1781, file: !1760, line: 17, baseType: !244, size: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1781, file: !1760, line: 18, baseType: !244, size: 32, offset: 160)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1781, file: !1760, line: 19, baseType: !244, size: 32, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1781, file: !1760, line: 22, baseType: !1791, size: 640, offset: 224)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 640, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 20)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1781, file: !1760, line: 25, baseType: !244, size: 32, offset: 864)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1778, file: !1760, line: 350, baseType: !1796, size: 4096, align: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1760, line: 34, size: 4096, align: 128, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1817, !1818, !1819, !1823, !1825, !1829}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1796, file: !1760, line: 35, baseType: !90, size: 16)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1796, file: !1760, line: 36, baseType: !90, size: 16, offset: 16)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1796, file: !1760, line: 37, baseType: !90, size: 16, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1796, file: !1760, line: 38, baseType: !90, size: 16, offset: 48)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1760, line: 39, baseType: !1803, size: 128, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1760, line: 39, size: 128, elements: !1804)
!1804 = !{!1805, !1810}
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1760, line: 40, baseType: !1806, size: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !1760, line: 40, size: 128, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1806, file: !1760, line: 41, baseType: !159, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1806, file: !1760, line: 42, baseType: !159, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1760, line: 44, baseType: !1811, size: 128)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !1760, line: 44, size: 128, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1811, file: !1760, line: 45, baseType: !244, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1811, file: !1760, line: 46, baseType: !244, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1811, file: !1760, line: 47, baseType: !244, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1811, file: !1760, line: 48, baseType: !244, size: 32, offset: 96)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1796, file: !1760, line: 51, baseType: !244, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1796, file: !1760, line: 52, baseType: !244, size: 32, offset: 224)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1796, file: !1760, line: 55, baseType: !1820, size: 1024, offset: 256)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 1024, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1796, file: !1760, line: 58, baseType: !1824, size: 2048, offset: 1280)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 2048, elements: !1299)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1796, file: !1760, line: 60, baseType: !1826, size: 384, offset: 3328)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 384, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 12)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1796, file: !1760, line: 62, baseType: !1830, size: 384, offset: 3712)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1796, file: !1760, line: 62, size: 384, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1830, file: !1760, line: 63, baseType: !1826, size: 384)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1830, file: !1760, line: 64, baseType: !1826, size: 384)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1778, file: !1760, line: 351, baseType: !1835, size: 1088)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1760, line: 79, size: 1088, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1910}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1835, file: !1760, line: 80, baseType: !244, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1835, file: !1760, line: 81, baseType: !244, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1835, file: !1760, line: 82, baseType: !244, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1835, file: !1760, line: 83, baseType: !244, size: 32, offset: 96)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1835, file: !1760, line: 84, baseType: !244, size: 32, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1835, file: !1760, line: 85, baseType: !244, size: 32, offset: 160)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1835, file: !1760, line: 86, baseType: !244, size: 32, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1835, file: !1760, line: 88, baseType: !1791, size: 640, offset: 224)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1835, file: !1760, line: 89, baseType: !80, size: 8, offset: 864)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1835, file: !1760, line: 90, baseType: !80, size: 8, offset: 872)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1835, file: !1760, line: 91, baseType: !80, size: 8, offset: 880)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1835, file: !1760, line: 92, baseType: !80, size: 8, offset: 888)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1835, file: !1760, line: 93, baseType: !80, size: 8, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1835, file: !1760, line: 94, baseType: !80, size: 8, offset: 904)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1835, file: !1760, line: 95, baseType: !1852, size: 64, offset: 960)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1854, line: 11, size: 128, elements: !1855)
!1854 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1853, file: !1854, line: 12, baseType: !119, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1853, file: !1854, line: 13, baseType: !1858, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1860, line: 103, size: 1344, elements: !1861)
!1860 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1890, !1891, !1892}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1859, file: !1860, line: 109, baseType: !164, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1859, file: !1860, line: 110, baseType: !164, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1859, file: !1860, line: 111, baseType: !164, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1859, file: !1860, line: 112, baseType: !164, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1859, file: !1860, line: 113, baseType: !164, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1859, file: !1860, line: 114, baseType: !164, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1859, file: !1860, line: 117, baseType: !164, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1859, file: !1860, line: 118, baseType: !164, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1859, file: !1860, line: 119, baseType: !164, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1859, file: !1860, line: 120, baseType: !164, size: 64, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1859, file: !1860, line: 121, baseType: !164, size: 64, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1859, file: !1860, line: 122, baseType: !164, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1859, file: !1860, line: 123, baseType: !164, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1859, file: !1860, line: 124, baseType: !164, size: 64, offset: 832)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1859, file: !1860, line: 125, baseType: !164, size: 64, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1859, file: !1860, line: 139, baseType: !164, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1859, file: !1860, line: 142, baseType: !164, size: 64, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1860, line: 144, baseType: !1880, size: 64, offset: 1088)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1860, line: 144, size: 64, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1880, file: !1860, line: 146, baseType: !90, size: 16)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1880, file: !1860, line: 148, baseType: !159, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1880, file: !1860, line: 150, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1860, line: 59, size: 64, elements: !1886)
!1886 = !{!1887, !1888, !1889}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1885, file: !1860, line: 61, baseType: !159, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1885, file: !1860, line: 63, baseType: !159, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1885, file: !1860, line: 65, baseType: !159, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1860, line: 153, baseType: !164, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1859, file: !1860, line: 154, baseType: !164, size: 64, offset: 1216)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1860, line: 156, baseType: !1893, size: 64, offset: 1280)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1860, line: 156, size: 64, elements: !1894)
!1894 = !{!1895, !1896, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1893, file: !1860, line: 158, baseType: !90, size: 16)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1893, file: !1860, line: 160, baseType: !159, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1893, file: !1860, line: 162, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1860, line: 69, size: 64, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1898, file: !1860, line: 71, baseType: !159, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1898, file: !1860, line: 73, baseType: !159, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1898, file: !1860, line: 75, baseType: !159, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1898, file: !1860, line: 77, baseType: !159, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1898, file: !1860, line: 80, baseType: !159, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1898, file: !1860, line: 83, baseType: !159, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1898, file: !1860, line: 86, baseType: !159, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1898, file: !1860, line: 88, baseType: !159, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1898, file: !1860, line: 93, baseType: !159, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1898, file: !1860, line: 100, baseType: !159, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1835, file: !1760, line: 96, baseType: !244, size: 32, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1778, file: !1760, line: 352, baseType: !1912, size: 4608, align: 512)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1760, line: 333, size: 4608, align: 512, elements: !1913)
!1913 = !{!1914, !1915, !1922}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1912, file: !1760, line: 334, baseType: !1796, size: 4096, align: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1912, file: !1760, line: 335, baseType: !1916, size: 512, offset: 4096)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1760, line: 312, size: 512, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1916, file: !1760, line: 313, baseType: !159, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1916, file: !1760, line: 314, baseType: !159, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1916, file: !1760, line: 315, baseType: !1921, size: 384, offset: 128)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 384, elements: !988)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1912, file: !1760, line: 336, baseType: !1923, offset: 4608)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, elements: !713)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1778, file: !1760, line: 353, baseType: !1925, size: 32768)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32768, elements: !1926)
!1926 = !{!1927}
!1927 = !DISubrange(count: 4096)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1759, file: !1760, line: 484, baseType: !1765, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1759, file: !1760, line: 491, baseType: !1930, size: 128, offset: 256)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1760, line: 404, size: 128, elements: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1930, file: !1760, line: 424, baseType: !159, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1930, file: !1760, line: 432, baseType: !7, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1930, file: !1760, line: 440, baseType: !7, size: 32, offset: 96)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1759, file: !1760, line: 498, baseType: !1930, size: 128, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1759, file: !1760, line: 508, baseType: !1766, size: 33280, align: 512, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !182, file: !183, line: 49, baseType: !50, size: 32, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !75)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !244)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1948 = !{!0, !1949, !1951, !1953, !1955, !1960, !1962, !1964}
!1949 = !DIGlobalVariableExpression(var: !1950, expr: !DIExpression())
!1950 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_chain_find_seqno220", scope: !2, file: !3, line: 110, type: !177, isLocal: true, isDefinition: true)
!1951 = !DIGlobalVariableExpression(var: !1952, expr: !DIExpression())
!1952 = distinct !DIGlobalVariable(name: "dma_fence_chain_ops", scope: !2, file: !3, line: 220, type: !96, isLocal: false, isDefinition: true)
!1953 = !DIGlobalVariableExpression(var: !1954, expr: !DIExpression())
!1954 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_chain_ops222", scope: !2, file: !3, line: 229, type: !177, isLocal: true, isDefinition: true)
!1955 = !DIGlobalVariableExpression(var: !1956, expr: !DIExpression())
!1956 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !1957, isLocal: true, isDefinition: true)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 272, elements: !1958)
!1958 = !{!1959}
!1959 = !DISubrange(count: 34)
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dma_fence_chain_init228", scope: !2, file: !3, line: 277, type: !177, isLocal: true, isDefinition: true)
!1962 = !DIGlobalVariableExpression(var: !1963, expr: !DIExpression())
!1963 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !1095, isLocal: true, isDefinition: true)
!1964 = !DIGlobalVariableExpression(var: !1965, expr: !DIExpression())
!1965 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !1426, isLocal: true, isDefinition: true)
!1966 = !{i32 7, !"Dwarf Version", i32 5}
!1967 = !{i32 2, !"Debug Info Version", i32 3}
!1968 = !{i32 1, !"wchar_size", i32 2}
!1969 = !{i32 8, !"cf-protection-branch", i32 1}
!1970 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1971 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1972 = !{i32 1, !"Code Model", i32 2}
!1973 = !{i32 1, !"override-stack-alignment", i32 8}
!1974 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1975 = distinct !DISubprogram(name: "dma_fence_chain_walk", scope: !3, file: !3, line: 39, type: !1976, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!45, !45}
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1988, !1991, !1993, !1994, !1995}
!1979 = !DILocalVariable(name: "fence", arg: 1, scope: !1975, file: !3, line: 39, type: !45)
!1980 = !DILocalVariable(name: "chain", scope: !1975, file: !3, line: 41, type: !181)
!1981 = !DILocalVariable(name: "prev_chain", scope: !1975, file: !3, line: 41, type: !181)
!1982 = !DILocalVariable(name: "prev", scope: !1975, file: !3, line: 42, type: !45)
!1983 = !DILocalVariable(name: "replacement", scope: !1975, file: !3, line: 42, type: !45)
!1984 = !DILocalVariable(name: "tmp", scope: !1975, file: !3, line: 42, type: !45)
!1985 = !DILocalVariable(name: "__UNIQUE_ID_rcu218", scope: !1986, file: !3, line: 65, type: !45)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 65, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 50, column: 51)
!1988 = !DILocalVariable(name: "__ai_ptr", scope: !1989, file: !3, line: 65, type: !1990)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 65, column: 9)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!1991 = !DILocalVariable(name: "__ret", scope: !1992, file: !3, line: 65, type: !45)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 65, column: 9)
!1993 = !DILocalVariable(name: "__old", scope: !1992, file: !3, line: 65, type: !45)
!1994 = !DILocalVariable(name: "__new", scope: !1992, file: !3, line: 65, type: !45)
!1995 = !DILocalVariable(name: "__ptr", scope: !1992, file: !3, line: 65, type: !175)
!1996 = !DILocation(line: 39, column: 58, scope: !1975)
!1997 = !DILocation(line: 41, column: 2, scope: !1975)
!1998 = !DILocation(line: 41, column: 26, scope: !1975)
!1999 = !DILocation(line: 41, column: 34, scope: !1975)
!2000 = !DILocation(line: 42, column: 2, scope: !1975)
!2001 = !DILocation(line: 42, column: 20, scope: !1975)
!2002 = !DILocation(line: 42, column: 27, scope: !1975)
!2003 = !DILocation(line: 42, column: 41, scope: !1975)
!2004 = !DILocation(line: 44, column: 29, scope: !1975)
!2005 = !DILocation(line: 44, column: 10, scope: !1975)
!2006 = !DILocation(line: 44, column: 8, scope: !1975)
!2007 = !DILocation(line: 45, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 45, column: 6)
!2009 = !DILocation(line: 45, column: 6, scope: !1975)
!2010 = !DILocation(line: 46, column: 17, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 45, column: 14)
!2012 = !DILocation(line: 46, column: 3, scope: !2011)
!2013 = !DILocation(line: 47, column: 3, scope: !2011)
!2014 = !DILocation(line: 50, column: 2, scope: !1975)
!2015 = !DILocation(line: 50, column: 42, scope: !1975)
!2016 = !DILocation(line: 50, column: 17, scope: !1975)
!2017 = !DILocation(line: 50, column: 15, scope: !1975)
!2018 = !DILocation(line: 52, column: 35, scope: !1987)
!2019 = !DILocation(line: 52, column: 16, scope: !1987)
!2020 = !DILocation(line: 52, column: 14, scope: !1987)
!2021 = !DILocation(line: 53, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 53, column: 7)
!2023 = !DILocation(line: 53, column: 7, scope: !1987)
!2024 = !DILocation(line: 54, column: 31, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 54, column: 8)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 53, column: 19)
!2027 = !DILocation(line: 54, column: 43, scope: !2025)
!2028 = !DILocation(line: 54, column: 9, scope: !2025)
!2029 = !DILocation(line: 54, column: 8, scope: !2026)
!2030 = !DILocation(line: 55, column: 5, scope: !2025)
!2031 = !DILocation(line: 57, column: 43, scope: !2026)
!2032 = !DILocation(line: 57, column: 18, scope: !2026)
!2033 = !DILocation(line: 57, column: 16, scope: !2026)
!2034 = !DILocation(line: 58, column: 3, scope: !2026)
!2035 = !DILocation(line: 59, column: 31, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 59, column: 8)
!2037 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 58, column: 10)
!2038 = !DILocation(line: 59, column: 9, scope: !2036)
!2039 = !DILocation(line: 59, column: 8, scope: !2037)
!2040 = !DILocation(line: 60, column: 5, scope: !2036)
!2041 = !DILocation(line: 62, column: 16, scope: !2037)
!2042 = !DILocation(line: 65, column: 9, scope: !1986)
!2043 = !DILocation(line: 65, column: 9, scope: !1989)
!2044 = !DILocation(line: 65, column: 9, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 65, column: 9)
!2046 = !DILocation(line: 65, column: 9, scope: !1992)
!2047 = !{i64 2152792426, i64 2152792465, i64 2152792486, i64 2152792523, i64 2152792546, i64 2152792555}
!2048 = !DILocation(line: 65, column: 9, scope: !1987)
!2049 = !DILocation(line: 65, column: 7, scope: !1987)
!2050 = !DILocation(line: 67, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 67, column: 7)
!2052 = !DILocation(line: 67, column: 14, scope: !2051)
!2053 = !DILocation(line: 67, column: 11, scope: !2051)
!2054 = !DILocation(line: 67, column: 7, scope: !1987)
!2055 = !DILocation(line: 68, column: 18, scope: !2051)
!2056 = !DILocation(line: 68, column: 4, scope: !2051)
!2057 = !DILocation(line: 70, column: 18, scope: !2051)
!2058 = !DILocation(line: 70, column: 4, scope: !2051)
!2059 = !DILocation(line: 71, column: 17, scope: !1987)
!2060 = !DILocation(line: 71, column: 3, scope: !1987)
!2061 = distinct !{!2061, !2014, !2062, !2063, !2064}
!2062 = !DILocation(line: 72, column: 2, scope: !1975)
!2063 = !{!"llvm.loop.mustprogress"}
!2064 = !{!"llvm.loop.unroll.disable"}
!2065 = !DILocation(line: 74, column: 16, scope: !1975)
!2066 = !DILocation(line: 74, column: 2, scope: !1975)
!2067 = !DILocation(line: 75, column: 9, scope: !1975)
!2068 = !DILocation(line: 75, column: 2, scope: !1975)
!2069 = !DILocation(line: 76, column: 1, scope: !1975)
!2070 = distinct !DISubprogram(name: "to_dma_fence_chain", scope: !183, file: !183, line: 61, type: !2071, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!181, !45}
!2073 = !{!2074, !2075}
!2074 = !DILocalVariable(name: "fence", arg: 1, scope: !2070, file: !183, line: 61, type: !45)
!2075 = !DILocalVariable(name: "__mptr", scope: !2076, file: !183, line: 66, type: !177)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !183, line: 66, column: 9)
!2077 = !DILocation(line: 61, column: 38, scope: !2070)
!2078 = !DILocation(line: 63, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2070, file: !183, line: 63, column: 6)
!2080 = !DILocation(line: 63, column: 13, scope: !2079)
!2081 = !DILocation(line: 63, column: 36, scope: !2079)
!2082 = !DILocation(line: 63, column: 17, scope: !2079)
!2083 = !DILocation(line: 63, column: 6, scope: !2070)
!2084 = !DILocation(line: 64, column: 3, scope: !2079)
!2085 = !DILocation(line: 66, column: 9, scope: !2076)
!2086 = !DILocation(line: 66, column: 9, scope: !2070)
!2087 = !DILocation(line: 66, column: 2, scope: !2070)
!2088 = !DILocation(line: 67, column: 1, scope: !2070)
!2089 = distinct !DISubprogram(name: "dma_fence_put", scope: !38, file: !38, line: 293, type: !122, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "fence", arg: 1, scope: !2089, file: !38, line: 293, type: !45)
!2092 = !DILocation(line: 293, column: 52, scope: !2089)
!2093 = !DILocation(line: 295, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !38, line: 295, column: 6)
!2095 = !DILocation(line: 295, column: 6, scope: !2089)
!2096 = !DILocation(line: 296, column: 13, scope: !2094)
!2097 = !DILocation(line: 296, column: 20, scope: !2094)
!2098 = !DILocation(line: 296, column: 3, scope: !2094)
!2099 = !DILocation(line: 297, column: 1, scope: !2089)
!2100 = distinct !DISubprogram(name: "dma_fence_chain_get_prev", scope: !3, file: !3, line: 21, type: !2101, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!45, !181}
!2103 = !{!2104, !2105}
!2104 = !DILocalVariable(name: "chain", arg: 1, scope: !2100, file: !3, line: 21, type: !181)
!2105 = !DILocalVariable(name: "prev", scope: !2100, file: !3, line: 23, type: !45)
!2106 = !DILocation(line: 21, column: 75, scope: !2100)
!2107 = !DILocation(line: 23, column: 2, scope: !2100)
!2108 = !DILocation(line: 23, column: 20, scope: !2100)
!2109 = !DILocation(line: 25, column: 2, scope: !2100)
!2110 = !DILocation(line: 26, column: 33, scope: !2100)
!2111 = !DILocation(line: 26, column: 40, scope: !2100)
!2112 = !DILocation(line: 26, column: 9, scope: !2100)
!2113 = !DILocation(line: 26, column: 7, scope: !2100)
!2114 = !DILocation(line: 27, column: 2, scope: !2100)
!2115 = !DILocation(line: 28, column: 9, scope: !2100)
!2116 = !DILocation(line: 29, column: 1, scope: !2100)
!2117 = !DILocation(line: 28, column: 2, scope: !2100)
!2118 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !38, file: !38, line: 449, type: !112, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2119)
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "fence", arg: 1, scope: !2118, file: !38, line: 449, type: !45)
!2121 = !DILocation(line: 449, column: 41, scope: !2118)
!2122 = !DILocation(line: 451, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !38, line: 451, column: 6)
!2124 = !DILocation(line: 451, column: 6, scope: !2118)
!2125 = !DILocation(line: 452, column: 3, scope: !2123)
!2126 = !DILocation(line: 454, column: 6, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2118, file: !38, line: 454, column: 6)
!2128 = !DILocation(line: 454, column: 13, scope: !2127)
!2129 = !DILocation(line: 454, column: 18, scope: !2127)
!2130 = !DILocation(line: 454, column: 27, scope: !2127)
!2131 = !DILocation(line: 454, column: 30, scope: !2127)
!2132 = !DILocation(line: 454, column: 37, scope: !2127)
!2133 = !DILocation(line: 454, column: 42, scope: !2127)
!2134 = !DILocation(line: 454, column: 51, scope: !2127)
!2135 = !DILocation(line: 454, column: 6, scope: !2118)
!2136 = !DILocation(line: 455, column: 20, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2127, file: !38, line: 454, column: 59)
!2138 = !DILocation(line: 455, column: 3, scope: !2137)
!2139 = !DILocation(line: 456, column: 3, scope: !2137)
!2140 = !DILocation(line: 459, column: 2, scope: !2118)
!2141 = !DILocation(line: 460, column: 1, scope: !2118)
!2142 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2143, file: !2143, line: 94, type: !2144, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2143 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2146, !1307}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2148)
!2148 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2149 = !{!2150, !2151}
!2150 = !DILocalVariable(name: "v", arg: 1, scope: !2142, file: !2143, line: 94, type: !2146)
!2151 = !DILocalVariable(name: "size", arg: 2, scope: !2142, file: !2143, line: 94, type: !1307)
!2152 = !DILocation(line: 94, column: 79, scope: !2142)
!2153 = !DILocation(line: 94, column: 89, scope: !2142)
!2154 = !DILocation(line: 96, column: 20, scope: !2142)
!2155 = !DILocation(line: 96, column: 23, scope: !2142)
!2156 = !DILocation(line: 96, column: 2, scope: !2142)
!2157 = !DILocation(line: 97, column: 2, scope: !2142)
!2158 = !DILocation(line: 98, column: 1, scope: !2142)
!2159 = distinct !DISubprogram(name: "dma_fence_chain_find_seqno", scope: !3, file: !3, line: 90, type: !2160, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2163)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!75, !1990, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !71, line: 113, baseType: !159)
!2163 = !{!2164, !2165, !2166}
!2164 = !DILocalVariable(name: "pfence", arg: 1, scope: !2159, file: !3, line: 90, type: !1990)
!2165 = !DILocalVariable(name: "seqno", arg: 2, scope: !2159, file: !3, line: 90, type: !2162)
!2166 = !DILocalVariable(name: "chain", scope: !2159, file: !3, line: 92, type: !181)
!2167 = !DILocation(line: 90, column: 51, scope: !2159)
!2168 = !DILocation(line: 90, column: 68, scope: !2159)
!2169 = !DILocation(line: 92, column: 2, scope: !2159)
!2170 = !DILocation(line: 92, column: 26, scope: !2159)
!2171 = !DILocation(line: 94, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 94, column: 6)
!2173 = !DILocation(line: 94, column: 6, scope: !2159)
!2174 = !DILocation(line: 95, column: 3, scope: !2172)
!2175 = !DILocation(line: 97, column: 30, scope: !2159)
!2176 = !DILocation(line: 97, column: 29, scope: !2159)
!2177 = !DILocation(line: 97, column: 10, scope: !2159)
!2178 = !DILocation(line: 97, column: 8, scope: !2159)
!2179 = !DILocation(line: 98, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 98, column: 6)
!2181 = !DILocation(line: 98, column: 13, scope: !2180)
!2182 = !DILocation(line: 98, column: 16, scope: !2180)
!2183 = !DILocation(line: 98, column: 23, scope: !2180)
!2184 = !DILocation(line: 98, column: 28, scope: !2180)
!2185 = !DILocation(line: 98, column: 36, scope: !2180)
!2186 = !DILocation(line: 98, column: 34, scope: !2180)
!2187 = !DILocation(line: 98, column: 6, scope: !2159)
!2188 = !DILocation(line: 99, column: 3, scope: !2180)
!2189 = !DILocation(line: 101, column: 2, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 101, column: 2)
!2191 = !DILocation(line: 101, column: 2, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 101, column: 2)
!2193 = !DILocation(line: 102, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 102, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 101, column: 50)
!2196 = !DILocation(line: 102, column: 8, scope: !2194)
!2197 = !DILocation(line: 102, column: 18, scope: !2194)
!2198 = !DILocation(line: 102, column: 29, scope: !2194)
!2199 = !DILocation(line: 102, column: 36, scope: !2194)
!2200 = !DILocation(line: 102, column: 41, scope: !2194)
!2201 = !DILocation(line: 102, column: 26, scope: !2194)
!2202 = !DILocation(line: 102, column: 49, scope: !2194)
!2203 = !DILocation(line: 103, column: 27, scope: !2194)
!2204 = !DILocation(line: 103, column: 26, scope: !2194)
!2205 = !DILocation(line: 103, column: 7, scope: !2194)
!2206 = !DILocation(line: 103, column: 36, scope: !2194)
!2207 = !DILocation(line: 103, column: 49, scope: !2194)
!2208 = !DILocation(line: 103, column: 47, scope: !2194)
!2209 = !DILocation(line: 102, column: 7, scope: !2195)
!2210 = !DILocation(line: 104, column: 4, scope: !2194)
!2211 = !DILocation(line: 105, column: 2, scope: !2195)
!2212 = distinct !{!2212, !2189, !2213, !2063, !2064}
!2213 = !DILocation(line: 105, column: 2, scope: !2190)
!2214 = !DILocation(line: 106, column: 17, scope: !2159)
!2215 = !DILocation(line: 106, column: 24, scope: !2159)
!2216 = !DILocation(line: 106, column: 2, scope: !2159)
!2217 = !DILocation(line: 108, column: 2, scope: !2159)
!2218 = !DILocation(line: 109, column: 1, scope: !2159)
!2219 = distinct !DISubprogram(name: "dma_fence_get", scope: !38, file: !38, line: 305, type: !1976, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2220)
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "fence", arg: 1, scope: !2219, file: !38, line: 305, type: !45)
!2222 = !DILocation(line: 305, column: 65, scope: !2219)
!2223 = !DILocation(line: 307, column: 6, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !38, line: 307, column: 6)
!2225 = !DILocation(line: 307, column: 6, scope: !2219)
!2226 = !DILocation(line: 308, column: 13, scope: !2224)
!2227 = !DILocation(line: 308, column: 20, scope: !2224)
!2228 = !DILocation(line: 308, column: 3, scope: !2224)
!2229 = !DILocation(line: 309, column: 9, scope: !2219)
!2230 = !DILocation(line: 309, column: 2, scope: !2219)
!2231 = distinct !DISubprogram(name: "dma_fence_chain_get_driver_name", scope: !3, file: !3, line: 112, type: !104, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "fence", arg: 1, scope: !2231, file: !3, line: 112, type: !45)
!2234 = !DILocation(line: 112, column: 70, scope: !2231)
!2235 = !DILocation(line: 114, column: 9, scope: !2231)
!2236 = distinct !DISubprogram(name: "dma_fence_chain_get_timeline_name", scope: !3, file: !3, line: 117, type: !104, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "fence", arg: 1, scope: !2236, file: !3, line: 117, type: !45)
!2239 = !DILocation(line: 117, column: 72, scope: !2236)
!2240 = !DILocation(line: 119, column: 9, scope: !2236)
!2241 = distinct !DISubprogram(name: "dma_fence_chain_enable_signaling", scope: !3, file: !3, line: 145, type: !112, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DILocalVariable(name: "fence", arg: 1, scope: !2241, file: !3, line: 145, type: !45)
!2244 = !DILocalVariable(name: "head", scope: !2241, file: !3, line: 147, type: !181)
!2245 = !DILocalVariable(name: "f", scope: !2246, file: !3, line: 151, type: !45)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 150, column: 47)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 150, column: 2)
!2248 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 150, column: 2)
!2249 = !DILocation(line: 145, column: 64, scope: !2241)
!2250 = !DILocation(line: 147, column: 2, scope: !2241)
!2251 = !DILocation(line: 147, column: 26, scope: !2241)
!2252 = !DILocation(line: 147, column: 52, scope: !2241)
!2253 = !DILocation(line: 147, column: 33, scope: !2241)
!2254 = !DILocation(line: 149, column: 17, scope: !2241)
!2255 = !DILocation(line: 149, column: 23, scope: !2241)
!2256 = !DILocation(line: 149, column: 2, scope: !2241)
!2257 = !DILocation(line: 150, column: 2, scope: !2248)
!2258 = !DILocation(line: 150, column: 2, scope: !2247)
!2259 = !DILocation(line: 151, column: 3, scope: !2246)
!2260 = !DILocation(line: 151, column: 21, scope: !2246)
!2261 = !DILocation(line: 151, column: 51, scope: !2246)
!2262 = !DILocation(line: 151, column: 25, scope: !2246)
!2263 = !DILocation(line: 153, column: 17, scope: !2246)
!2264 = !DILocation(line: 153, column: 3, scope: !2246)
!2265 = !DILocation(line: 154, column: 31, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 154, column: 7)
!2267 = !DILocation(line: 154, column: 35, scope: !2266)
!2268 = !DILocation(line: 154, column: 41, scope: !2266)
!2269 = !DILocation(line: 154, column: 8, scope: !2266)
!2270 = !DILocation(line: 154, column: 7, scope: !2246)
!2271 = !DILocation(line: 155, column: 18, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 154, column: 66)
!2273 = !DILocation(line: 155, column: 4, scope: !2272)
!2274 = !DILocation(line: 156, column: 4, scope: !2272)
!2275 = !DILocation(line: 158, column: 17, scope: !2246)
!2276 = !DILocation(line: 158, column: 3, scope: !2246)
!2277 = !DILocation(line: 159, column: 2, scope: !2247)
!2278 = !DILocation(line: 159, column: 2, scope: !2246)
!2279 = distinct !{!2279, !2257, !2280, !2063, !2064}
!2280 = !DILocation(line: 159, column: 2, scope: !2248)
!2281 = !DILocation(line: 160, column: 17, scope: !2241)
!2282 = !DILocation(line: 160, column: 23, scope: !2241)
!2283 = !DILocation(line: 160, column: 2, scope: !2241)
!2284 = !DILocation(line: 161, column: 2, scope: !2241)
!2285 = !DILocation(line: 162, column: 1, scope: !2241)
!2286 = distinct !DISubprogram(name: "dma_fence_chain_signaled", scope: !3, file: !3, line: 164, type: !112, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2287 = !{!2288, !2289}
!2288 = !DILocalVariable(name: "fence", arg: 1, scope: !2286, file: !3, line: 164, type: !45)
!2289 = !DILocalVariable(name: "f", scope: !2290, file: !3, line: 167, type: !45)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 166, column: 41)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 166, column: 2)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 166, column: 2)
!2293 = !DILocation(line: 164, column: 56, scope: !2286)
!2294 = !DILocation(line: 166, column: 2, scope: !2292)
!2295 = !DILocation(line: 166, column: 2, scope: !2291)
!2296 = !DILocation(line: 167, column: 3, scope: !2290)
!2297 = !DILocation(line: 167, column: 21, scope: !2290)
!2298 = !DILocation(line: 167, column: 51, scope: !2290)
!2299 = !DILocation(line: 167, column: 25, scope: !2290)
!2300 = !DILocation(line: 169, column: 30, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 169, column: 7)
!2302 = !DILocation(line: 169, column: 8, scope: !2301)
!2303 = !DILocation(line: 169, column: 7, scope: !2290)
!2304 = !DILocation(line: 170, column: 18, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 169, column: 34)
!2306 = !DILocation(line: 170, column: 4, scope: !2305)
!2307 = !DILocation(line: 171, column: 4, scope: !2305)
!2308 = !DILocation(line: 173, column: 2, scope: !2291)
!2309 = !DILocation(line: 173, column: 2, scope: !2290)
!2310 = distinct !{!2310, !2294, !2311, !2063, !2064}
!2311 = !DILocation(line: 173, column: 2, scope: !2292)
!2312 = !DILocation(line: 175, column: 2, scope: !2286)
!2313 = !DILocation(line: 176, column: 1, scope: !2286)
!2314 = distinct !DISubprogram(name: "dma_fence_chain_release", scope: !3, file: !3, line: 178, type: !122, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2315)
!2315 = !{!2316, !2317, !2318, !2319}
!2316 = !DILocalVariable(name: "fence", arg: 1, scope: !2314, file: !3, line: 178, type: !45)
!2317 = !DILocalVariable(name: "chain", scope: !2314, file: !3, line: 180, type: !181)
!2318 = !DILocalVariable(name: "prev", scope: !2314, file: !3, line: 181, type: !45)
!2319 = !DILocalVariable(name: "prev_chain", scope: !2320, file: !3, line: 187, type: !181)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 186, column: 64)
!2321 = !DILocation(line: 178, column: 55, scope: !2314)
!2322 = !DILocation(line: 180, column: 2, scope: !2314)
!2323 = !DILocation(line: 180, column: 26, scope: !2314)
!2324 = !DILocation(line: 180, column: 53, scope: !2314)
!2325 = !DILocation(line: 180, column: 34, scope: !2314)
!2326 = !DILocation(line: 181, column: 2, scope: !2314)
!2327 = !DILocation(line: 181, column: 20, scope: !2314)
!2328 = !DILocation(line: 186, column: 2, scope: !2314)
!2329 = !DILocation(line: 186, column: 17, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 186, column: 17)
!2331 = !DILocation(line: 186, column: 17, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 186, column: 17)
!2333 = !DILocation(line: 186, column: 15, scope: !2314)
!2334 = !DILocation(line: 187, column: 3, scope: !2320)
!2335 = !DILocation(line: 187, column: 27, scope: !2320)
!2336 = !DILocation(line: 189, column: 18, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 189, column: 7)
!2338 = !DILocation(line: 189, column: 24, scope: !2337)
!2339 = !DILocation(line: 189, column: 7, scope: !2337)
!2340 = !DILocation(line: 189, column: 34, scope: !2337)
!2341 = !DILocation(line: 189, column: 7, scope: !2320)
!2342 = !DILocation(line: 190, column: 10, scope: !2337)
!2343 = !DILocation(line: 192, column: 35, scope: !2320)
!2344 = !DILocation(line: 192, column: 16, scope: !2320)
!2345 = !DILocation(line: 192, column: 14, scope: !2320)
!2346 = !DILocation(line: 193, column: 8, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 193, column: 7)
!2348 = !DILocation(line: 193, column: 7, scope: !2320)
!2349 = !DILocation(line: 194, column: 4, scope: !2347)
!2350 = !DILocation(line: 199, column: 17, scope: !2320)
!2351 = !DILocation(line: 199, column: 29, scope: !2320)
!2352 = !DILocation(line: 199, column: 3, scope: !2320)
!2353 = !DILocation(line: 199, column: 10, scope: !2320)
!2354 = !DILocation(line: 199, column: 15, scope: !2320)
!2355 = !DILocation(line: 200, column: 3, scope: !2320)
!2356 = !DILocation(line: 200, column: 3, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 200, column: 3)
!2358 = !DILocation(line: 200, column: 3, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 200, column: 3)
!2360 = !DILocation(line: 200, column: 3, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 200, column: 3)
!2362 = !DILocation(line: 200, column: 3, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 200, column: 3)
!2364 = !DILocation(line: 201, column: 17, scope: !2320)
!2365 = !DILocation(line: 201, column: 3, scope: !2320)
!2366 = !DILocation(line: 202, column: 2, scope: !2314)
!2367 = distinct !{!2367, !2328, !2366, !2063, !2064}
!2368 = !DILocation(line: 203, column: 16, scope: !2314)
!2369 = !DILocation(line: 203, column: 2, scope: !2314)
!2370 = !DILocation(line: 205, column: 16, scope: !2314)
!2371 = !DILocation(line: 205, column: 23, scope: !2314)
!2372 = !DILocation(line: 205, column: 2, scope: !2314)
!2373 = !DILocation(line: 206, column: 17, scope: !2314)
!2374 = !DILocation(line: 206, column: 2, scope: !2314)
!2375 = !DILocation(line: 207, column: 1, scope: !2314)
!2376 = distinct !DISubprogram(name: "dma_fence_chain_set_deadline", scope: !3, file: !3, line: 210, type: !132, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "fence", arg: 1, scope: !2376, file: !3, line: 210, type: !45)
!2379 = !DILocalVariable(name: "deadline", arg: 2, scope: !2376, file: !3, line: 211, type: !134)
!2380 = !DILocalVariable(name: "f", scope: !2381, file: !3, line: 214, type: !45)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 213, column: 41)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 213, column: 2)
!2383 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 213, column: 2)
!2384 = !DILocation(line: 210, column: 60, scope: !2376)
!2385 = !DILocation(line: 211, column: 15, scope: !2376)
!2386 = !DILocation(line: 213, column: 2, scope: !2383)
!2387 = !DILocation(line: 213, column: 2, scope: !2382)
!2388 = !DILocation(line: 214, column: 3, scope: !2381)
!2389 = !DILocation(line: 214, column: 21, scope: !2381)
!2390 = !DILocation(line: 214, column: 51, scope: !2381)
!2391 = !DILocation(line: 214, column: 25, scope: !2381)
!2392 = !DILocation(line: 216, column: 26, scope: !2381)
!2393 = !DILocation(line: 216, column: 29, scope: !2381)
!2394 = !DILocation(line: 216, column: 3, scope: !2381)
!2395 = !DILocation(line: 217, column: 2, scope: !2382)
!2396 = !DILocation(line: 217, column: 2, scope: !2381)
!2397 = distinct !{!2397, !2386, !2398, !2063, !2064}
!2398 = !DILocation(line: 217, column: 2, scope: !2383)
!2399 = !DILocation(line: 218, column: 1, scope: !2376)
!2400 = distinct !DISubprogram(name: "dma_fence_chain_init", scope: !3, file: !3, line: 241, type: !2401, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !181, !45, !45, !2162}
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410, !2412, !2417, !2418, !2420}
!2404 = !DILocalVariable(name: "chain", arg: 1, scope: !2400, file: !3, line: 241, type: !181)
!2405 = !DILocalVariable(name: "prev", arg: 2, scope: !2400, file: !3, line: 242, type: !45)
!2406 = !DILocalVariable(name: "fence", arg: 3, scope: !2400, file: !3, line: 243, type: !45)
!2407 = !DILocalVariable(name: "seqno", arg: 4, scope: !2400, file: !3, line: 244, type: !2162)
!2408 = !DILocalVariable(name: "prev_chain", scope: !2400, file: !3, line: 246, type: !181)
!2409 = !DILocalVariable(name: "context", scope: !2400, file: !3, line: 247, type: !2162)
!2410 = !DILocalVariable(name: "_r_a_p__v", scope: !2411, file: !3, line: 250, type: !178)
!2411 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 250, column: 2)
!2412 = !DILocalVariable(name: "__UNIQUE_ID___x226", scope: !2413, file: !3, line: 262, type: !159)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 262, column: 12)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 261, column: 7)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 258, column: 9)
!2416 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 255, column: 6)
!2417 = !DILocalVariable(name: "__UNIQUE_ID___y227", scope: !2413, file: !3, line: 262, type: !2162)
!2418 = !DILocalVariable(name: "__ret_warn_on", scope: !2419, file: !3, line: 275, type: !75)
!2419 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 275, column: 2)
!2420 = !DILocalVariable(name: "__flags", scope: !2421, file: !3, line: 275, type: !75)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 275, column: 2)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 275, column: 2)
!2423 = !DILocation(line: 241, column: 51, scope: !2400)
!2424 = !DILocation(line: 242, column: 24, scope: !2400)
!2425 = !DILocation(line: 243, column: 24, scope: !2400)
!2426 = !DILocation(line: 244, column: 15, scope: !2400)
!2427 = !DILocation(line: 246, column: 2, scope: !2400)
!2428 = !DILocation(line: 246, column: 26, scope: !2400)
!2429 = !DILocation(line: 246, column: 58, scope: !2400)
!2430 = !DILocation(line: 246, column: 39, scope: !2400)
!2431 = !DILocation(line: 247, column: 2, scope: !2400)
!2432 = !DILocation(line: 247, column: 11, scope: !2400)
!2433 = !DILocation(line: 249, column: 2, scope: !2400)
!2434 = !DILocation(line: 249, column: 2, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 249, column: 2)
!2436 = !DILocation(line: 250, column: 2, scope: !2400)
!2437 = !DILocation(line: 250, column: 2, scope: !2411)
!2438 = !DILocation(line: 250, column: 2, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 250, column: 2)
!2440 = !DILocation(line: 250, column: 2, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 250, column: 2)
!2442 = !DILocation(line: 250, column: 2, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 250, column: 2)
!2444 = !DILocation(line: 250, column: 2, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 250, column: 2)
!2446 = !DILocation(line: 250, column: 2, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 250, column: 2)
!2448 = !DILocation(line: 250, column: 2, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 250, column: 2)
!2450 = !DILocation(line: 250, column: 2, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 250, column: 2)
!2452 = !DILocation(line: 250, column: 2, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 250, column: 2)
!2454 = !{i64 2152813724}
!2455 = !DILocation(line: 250, column: 2, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 250, column: 2)
!2457 = !DILocation(line: 250, column: 2, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 250, column: 2)
!2459 = !DILocation(line: 250, column: 2, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 250, column: 2)
!2461 = !DILocation(line: 251, column: 17, scope: !2400)
!2462 = !DILocation(line: 251, column: 2, scope: !2400)
!2463 = !DILocation(line: 251, column: 9, scope: !2400)
!2464 = !DILocation(line: 251, column: 15, scope: !2400)
!2465 = !DILocation(line: 252, column: 2, scope: !2400)
!2466 = !DILocation(line: 252, column: 9, scope: !2400)
!2467 = !DILocation(line: 252, column: 20, scope: !2400)
!2468 = !DILocation(line: 255, column: 6, scope: !2416)
!2469 = !DILocation(line: 255, column: 17, scope: !2416)
!2470 = !DILocation(line: 255, column: 41, scope: !2416)
!2471 = !DILocation(line: 255, column: 48, scope: !2416)
!2472 = !DILocation(line: 255, column: 54, scope: !2416)
!2473 = !DILocation(line: 255, column: 61, scope: !2416)
!2474 = !DILocation(line: 255, column: 67, scope: !2416)
!2475 = !DILocation(line: 255, column: 20, scope: !2416)
!2476 = !DILocation(line: 255, column: 6, scope: !2400)
!2477 = !DILocation(line: 256, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 255, column: 73)
!2479 = !DILocation(line: 256, column: 19, scope: !2478)
!2480 = !DILocation(line: 256, column: 11, scope: !2478)
!2481 = !DILocation(line: 257, column: 23, scope: !2478)
!2482 = !DILocation(line: 257, column: 29, scope: !2478)
!2483 = !DILocation(line: 257, column: 3, scope: !2478)
!2484 = !DILocation(line: 257, column: 10, scope: !2478)
!2485 = !DILocation(line: 257, column: 21, scope: !2478)
!2486 = !DILocation(line: 258, column: 2, scope: !2478)
!2487 = !DILocation(line: 259, column: 13, scope: !2415)
!2488 = !DILocation(line: 259, column: 11, scope: !2415)
!2489 = !DILocation(line: 261, column: 7, scope: !2414)
!2490 = !DILocation(line: 261, column: 7, scope: !2415)
!2491 = !DILocation(line: 262, column: 12, scope: !2413)
!2492 = !DILocation(line: 262, column: 12, scope: !2414)
!2493 = !DILocation(line: 262, column: 10, scope: !2414)
!2494 = !DILocation(line: 262, column: 4, scope: !2414)
!2495 = !DILocation(line: 265, column: 18, scope: !2400)
!2496 = !DILocation(line: 265, column: 25, scope: !2400)
!2497 = !DILocation(line: 266, column: 11, scope: !2400)
!2498 = !DILocation(line: 266, column: 18, scope: !2400)
!2499 = !DILocation(line: 266, column: 24, scope: !2400)
!2500 = !DILocation(line: 266, column: 33, scope: !2400)
!2501 = !DILocation(line: 265, column: 2, scope: !2400)
!2502 = !DILocation(line: 275, column: 2, scope: !2419)
!2503 = !DILocation(line: 275, column: 2, scope: !2422)
!2504 = !DILocation(line: 275, column: 2, scope: !2421)
!2505 = !DILocation(line: 275, column: 2, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 275, column: 2)
!2507 = !DILocation(line: 275, column: 2, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 275, column: 2)
!2509 = !{i64 2152824592, i64 2152824621, i64 2152824667, i64 2152824725, i64 2152824779, i64 2152824833, i64 2152824888, i64 2152824919, i64 2152825227, i64 2152825233, i64 2152825280, i64 2152825303, i64 2152825329}
!2510 = !DILocation(line: 275, column: 2, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 275, column: 2)
!2512 = !DILocation(line: 275, column: 2, scope: !2400)
!2513 = !DILocation(line: 276, column: 1, scope: !2400)
!2514 = distinct !DISubprogram(name: "spinlock_check", scope: !2515, file: !2515, line: 324, type: !2516, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2519)
!2515 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!2518, !49}
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2519 = !{!2520}
!2520 = !DILocalVariable(name: "lock", arg: 1, scope: !2514, file: !2515, line: 324, type: !49)
!2521 = !DILocation(line: 324, column: 67, scope: !2514)
!2522 = !DILocation(line: 326, column: 10, scope: !2514)
!2523 = !DILocation(line: 326, column: 16, scope: !2514)
!2524 = !DILocation(line: 326, column: 2, scope: !2514)
!2525 = distinct !DISubprogram(name: "__dma_fence_is_later", scope: !38, file: !38, line: 471, type: !2526, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!100, !159, !159, !95}
!2528 = !{!2529, !2530, !2531}
!2529 = !DILocalVariable(name: "f1", arg: 1, scope: !2525, file: !38, line: 471, type: !159)
!2530 = !DILocalVariable(name: "f2", arg: 2, scope: !2525, file: !38, line: 471, type: !159)
!2531 = !DILocalVariable(name: "ops", arg: 3, scope: !2525, file: !38, line: 472, type: !95)
!2532 = !DILocation(line: 471, column: 45, scope: !2525)
!2533 = !DILocation(line: 471, column: 53, scope: !2525)
!2534 = !DILocation(line: 472, column: 34, scope: !2525)
!2535 = !DILocation(line: 478, column: 6, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2525, file: !38, line: 478, column: 6)
!2537 = !DILocation(line: 478, column: 11, scope: !2536)
!2538 = !{i8 0, i8 2}
!2539 = !DILocation(line: 478, column: 6, scope: !2525)
!2540 = !DILocation(line: 479, column: 10, scope: !2536)
!2541 = !DILocation(line: 479, column: 15, scope: !2536)
!2542 = !DILocation(line: 479, column: 13, scope: !2536)
!2543 = !DILocation(line: 479, column: 3, scope: !2536)
!2544 = !DILocation(line: 481, column: 15, scope: !2525)
!2545 = !DILocation(line: 481, column: 35, scope: !2525)
!2546 = !DILocation(line: 481, column: 33, scope: !2525)
!2547 = !DILocation(line: 481, column: 54, scope: !2525)
!2548 = !DILocation(line: 481, column: 2, scope: !2525)
!2549 = !DILocation(line: 482, column: 1, scope: !2525)
!2550 = !DISubprogram(name: "dma_fence_context_alloc", scope: !38, file: !38, line: 644, type: !2551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!159, !7}
!2553 = !DISubprogram(name: "dma_fence_init", scope: !38, file: !38, line: 282, type: !2554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !45, !95, !49, !159, !159}
!2556 = distinct !DISubprogram(name: "dma_fence_is_chain", scope: !38, file: !38, line: 666, type: !112, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2557 = !{!2558}
!2558 = !DILocalVariable(name: "fence", arg: 1, scope: !2556, file: !38, line: 666, type: !45)
!2559 = !DILocation(line: 666, column: 57, scope: !2556)
!2560 = !DILocation(line: 668, column: 9, scope: !2556)
!2561 = !DILocation(line: 668, column: 16, scope: !2556)
!2562 = !DILocation(line: 668, column: 20, scope: !2556)
!2563 = !DILocation(line: 668, column: 2, scope: !2556)
!2564 = distinct !DISubprogram(name: "kref_put", scope: !167, file: !167, line: 62, type: !2565, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2571)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!75, !2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2567}
!2571 = !{!2572, !2573}
!2572 = !DILocalVariable(name: "kref", arg: 1, scope: !2564, file: !167, line: 62, type: !2567)
!2573 = !DILocalVariable(name: "release", arg: 2, scope: !2564, file: !167, line: 62, type: !2568)
!2574 = !DILocation(line: 62, column: 41, scope: !2564)
!2575 = !DILocation(line: 62, column: 54, scope: !2564)
!2576 = !DILocation(line: 64, column: 29, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2564, file: !167, line: 64, column: 6)
!2578 = !DILocation(line: 64, column: 35, scope: !2577)
!2579 = !DILocation(line: 64, column: 6, scope: !2577)
!2580 = !DILocation(line: 64, column: 6, scope: !2564)
!2581 = !DILocation(line: 65, column: 3, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !167, line: 64, column: 46)
!2583 = !DILocation(line: 65, column: 11, scope: !2582)
!2584 = !DILocation(line: 66, column: 3, scope: !2582)
!2585 = !DILocation(line: 68, column: 2, scope: !2564)
!2586 = !DILocation(line: 69, column: 1, scope: !2564)
!2587 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !30, file: !30, line: 331, type: !2588, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2591)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!100, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "r", arg: 1, scope: !2587, file: !30, line: 331, type: !2590)
!2593 = !DILocation(line: 331, column: 67, scope: !2587)
!2594 = !DILocation(line: 333, column: 33, scope: !2587)
!2595 = !DILocation(line: 333, column: 9, scope: !2587)
!2596 = !DILocation(line: 333, column: 2, scope: !2587)
!2597 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !30, file: !30, line: 313, type: !2598, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!100, !2590, !859}
!2600 = !{!2601, !2602}
!2601 = !DILocalVariable(name: "r", arg: 1, scope: !2597, file: !30, line: 313, type: !2590)
!2602 = !DILocalVariable(name: "oldp", arg: 2, scope: !2597, file: !30, line: 313, type: !859)
!2603 = !DILocation(line: 313, column: 69, scope: !2597)
!2604 = !DILocation(line: 313, column: 77, scope: !2597)
!2605 = !DILocation(line: 315, column: 36, scope: !2597)
!2606 = !DILocation(line: 315, column: 39, scope: !2597)
!2607 = !DILocation(line: 315, column: 9, scope: !2597)
!2608 = !DILocation(line: 315, column: 2, scope: !2597)
!2609 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !30, file: !30, line: 270, type: !2610, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!100, !75, !2590, !859}
!2612 = !{!2613, !2614, !2615, !2616}
!2613 = !DILocalVariable(name: "i", arg: 1, scope: !2609, file: !30, line: 270, type: !75)
!2614 = !DILocalVariable(name: "r", arg: 2, scope: !2609, file: !30, line: 270, type: !2590)
!2615 = !DILocalVariable(name: "oldp", arg: 3, scope: !2609, file: !30, line: 270, type: !859)
!2616 = !DILocalVariable(name: "old", scope: !2609, file: !30, line: 272, type: !75)
!2617 = !DILocation(line: 270, column: 61, scope: !2609)
!2618 = !DILocation(line: 270, column: 76, scope: !2609)
!2619 = !DILocation(line: 270, column: 84, scope: !2609)
!2620 = !DILocation(line: 272, column: 2, scope: !2609)
!2621 = !DILocation(line: 272, column: 6, scope: !2609)
!2622 = !DILocation(line: 272, column: 37, scope: !2609)
!2623 = !DILocation(line: 272, column: 41, scope: !2609)
!2624 = !DILocation(line: 272, column: 44, scope: !2609)
!2625 = !DILocation(line: 272, column: 12, scope: !2609)
!2626 = !DILocation(line: 274, column: 6, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2609, file: !30, line: 274, column: 6)
!2628 = !DILocation(line: 274, column: 6, scope: !2609)
!2629 = !DILocation(line: 275, column: 11, scope: !2627)
!2630 = !DILocation(line: 275, column: 4, scope: !2627)
!2631 = !DILocation(line: 275, column: 9, scope: !2627)
!2632 = !DILocation(line: 275, column: 3, scope: !2627)
!2633 = !DILocation(line: 277, column: 6, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2609, file: !30, line: 277, column: 6)
!2635 = !DILocation(line: 277, column: 13, scope: !2634)
!2636 = !DILocation(line: 277, column: 10, scope: !2634)
!2637 = !DILocation(line: 277, column: 6, scope: !2609)
!2638 = !DILocation(line: 278, column: 3, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !30, line: 277, column: 16)
!2640 = !DILocation(line: 278, column: 3, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2639, file: !30, line: 278, column: 3)
!2642 = !DILocation(line: 278, column: 3, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2641, file: !30, line: 278, column: 3)
!2644 = !DILocation(line: 278, column: 3, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !30, line: 278, column: 3)
!2646 = !DILocation(line: 278, column: 3, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !30, line: 278, column: 3)
!2648 = !{i64 2149834898}
!2649 = !DILocation(line: 279, column: 3, scope: !2639)
!2650 = !DILocation(line: 282, column: 6, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2609, file: !30, line: 282, column: 6)
!2652 = !DILocation(line: 282, column: 6, scope: !2609)
!2653 = !DILocation(line: 283, column: 26, scope: !2651)
!2654 = !DILocation(line: 283, column: 3, scope: !2651)
!2655 = !DILocation(line: 285, column: 2, scope: !2609)
!2656 = !DILocation(line: 286, column: 1, scope: !2609)
!2657 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2658, file: !2658, line: 397, type: !2659, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2662)
!2658 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!75, !75, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2662 = !{!2663, !2664}
!2663 = !DILocalVariable(name: "i", arg: 1, scope: !2657, file: !2658, line: 397, type: !75)
!2664 = !DILocalVariable(name: "v", arg: 2, scope: !2657, file: !2658, line: 397, type: !2661)
!2665 = !DILocation(line: 397, column: 30, scope: !2657)
!2666 = !DILocation(line: 397, column: 43, scope: !2657)
!2667 = !DILocation(line: 399, column: 2, scope: !2657)
!2668 = !DILocation(line: 399, column: 2, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2657, file: !2658, line: 399, column: 2)
!2670 = !DILocation(line: 400, column: 31, scope: !2657)
!2671 = !DILocation(line: 400, column: 2, scope: !2657)
!2672 = !DILocation(line: 401, column: 38, scope: !2657)
!2673 = !DILocation(line: 401, column: 41, scope: !2657)
!2674 = !DILocation(line: 401, column: 9, scope: !2657)
!2675 = !DILocation(line: 401, column: 2, scope: !2657)
!2676 = !DISubprogram(name: "refcount_warn_saturate", scope: !30, file: !30, line: 127, type: !2677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !2590, !29}
!2679 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !2680, file: !2680, line: 928, type: !2659, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2681)
!2680 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "i", arg: 1, scope: !2679, file: !2680, line: 928, type: !75)
!2683 = !DILocalVariable(name: "v", arg: 2, scope: !2679, file: !2680, line: 928, type: !2661)
!2684 = !DILocation(line: 928, column: 34, scope: !2679)
!2685 = !DILocation(line: 928, column: 47, scope: !2679)
!2686 = !DILocation(line: 936, column: 31, scope: !2679)
!2687 = !DILocation(line: 936, column: 34, scope: !2679)
!2688 = !DILocation(line: 936, column: 9, scope: !2679)
!2689 = !DILocation(line: 936, column: 2, scope: !2679)
!2690 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2691, file: !2691, line: 101, type: !2659, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2692 = !{!2693, !2694, !2695}
!2693 = !DILocalVariable(name: "i", arg: 1, scope: !2690, file: !2691, line: 101, type: !75)
!2694 = !DILocalVariable(name: "v", arg: 2, scope: !2690, file: !2691, line: 101, type: !2661)
!2695 = !DILocalVariable(name: "__ret", scope: !2696, file: !2691, line: 103, type: !75)
!2696 = distinct !DILexicalBlock(scope: !2690, file: !2691, line: 103, column: 9)
!2697 = !DILocation(line: 101, column: 54, scope: !2690)
!2698 = !DILocation(line: 101, column: 67, scope: !2690)
!2699 = !DILocation(line: 103, column: 9, scope: !2696)
!2700 = !{i64 2148890582, i64 2148890621, i64 2148890642, i64 2148890679, i64 2148890702, i64 2148890711}
!2701 = !DILocation(line: 103, column: 9, scope: !2690)
!2702 = !DILocation(line: 103, column: 2, scope: !2690)
!2703 = distinct !DISubprogram(name: "rcu_read_lock", scope: !2704, file: !2704, line: 782, type: !1296, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2704 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!2705 = !DILocation(line: 784, column: 2, scope: !2703)
!2706 = !DILocation(line: 786, column: 2, scope: !2703)
!2707 = !DILocation(line: 786, column: 2, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !2704, line: 786, column: 2)
!2709 = !DILocation(line: 787, column: 2, scope: !2703)
!2710 = !DILocation(line: 787, column: 2, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2703, file: !2704, line: 787, column: 2)
!2712 = !DILocation(line: 789, column: 1, scope: !2703)
!2713 = distinct !DISubprogram(name: "dma_fence_get_rcu_safe", scope: !38, file: !38, line: 344, type: !2714, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!45, !1990}
!2716 = !{!2717, !2718, !2720, !2722}
!2717 = !DILocalVariable(name: "fencep", arg: 1, scope: !2713, file: !38, line: 344, type: !1990)
!2718 = !DILocalVariable(name: "fence", scope: !2719, file: !38, line: 347, type: !45)
!2719 = distinct !DILexicalBlock(scope: !2713, file: !38, line: 346, column: 5)
!2720 = !DILocalVariable(name: "__UNIQUE_ID_rcu148", scope: !2721, file: !38, line: 349, type: !45)
!2721 = distinct !DILexicalBlock(scope: !2719, file: !38, line: 349, column: 11)
!2722 = !DILocalVariable(name: "__UNIQUE_ID_rcu150", scope: !2723, file: !38, line: 370, type: !45)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !38, line: 370, column: 16)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !38, line: 370, column: 7)
!2725 = !DILocation(line: 344, column: 49, scope: !2713)
!2726 = !DILocation(line: 346, column: 2, scope: !2713)
!2727 = !DILocation(line: 347, column: 3, scope: !2719)
!2728 = !DILocation(line: 347, column: 21, scope: !2719)
!2729 = !DILocation(line: 349, column: 11, scope: !2721)
!2730 = !DILocation(line: 349, column: 11, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2721, file: !38, line: 349, column: 11)
!2732 = !DILocation(line: 349, column: 11, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2731, file: !38, line: 349, column: 11)
!2734 = !DILocation(line: 349, column: 11, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2721, file: !38, line: 349, column: 11)
!2736 = !DILocation(line: 349, column: 11, scope: !2719)
!2737 = !DILocation(line: 349, column: 9, scope: !2719)
!2738 = !DILocation(line: 350, column: 8, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2719, file: !38, line: 350, column: 7)
!2740 = !DILocation(line: 350, column: 7, scope: !2719)
!2741 = !DILocation(line: 351, column: 4, scope: !2739)
!2742 = !DILocation(line: 353, column: 26, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2719, file: !38, line: 353, column: 7)
!2744 = !DILocation(line: 353, column: 8, scope: !2743)
!2745 = !DILocation(line: 353, column: 7, scope: !2719)
!2746 = !DILocation(line: 354, column: 4, scope: !2743)
!2747 = !DILocation(line: 370, column: 7, scope: !2724)
!2748 = !DILocation(line: 370, column: 16, scope: !2723)
!2749 = !DILocation(line: 370, column: 16, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2723, file: !38, line: 370, column: 16)
!2751 = !DILocation(line: 370, column: 16, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2750, file: !38, line: 370, column: 16)
!2753 = !DILocation(line: 370, column: 16, scope: !2724)
!2754 = !DILocation(line: 370, column: 13, scope: !2724)
!2755 = !DILocation(line: 370, column: 7, scope: !2719)
!2756 = !DILocation(line: 371, column: 11, scope: !2724)
!2757 = !DILocation(line: 371, column: 4, scope: !2724)
!2758 = !DILocation(line: 373, column: 17, scope: !2719)
!2759 = !DILocation(line: 373, column: 3, scope: !2719)
!2760 = !DILocation(line: 374, column: 2, scope: !2713)
!2761 = !DILocation(line: 374, column: 2, scope: !2719)
!2762 = distinct !{!2762, !2726, !2763, !2064}
!2763 = !DILocation(line: 374, column: 12, scope: !2713)
!2764 = !DILocation(line: 375, column: 1, scope: !2713)
!2765 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !2704, file: !2704, line: 813, type: !1296, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2766 = !DILocation(line: 815, column: 2, scope: !2765)
!2767 = !DILocation(line: 815, column: 2, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2765, file: !2704, line: 815, column: 2)
!2769 = !DILocation(line: 818, column: 2, scope: !2765)
!2770 = !DILocation(line: 819, column: 2, scope: !2765)
!2771 = !DILocation(line: 819, column: 2, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2765, file: !2704, line: 819, column: 2)
!2773 = !DILocation(line: 820, column: 1, scope: !2765)
!2774 = !DISubprogram(name: "__rcu_read_lock", scope: !2704, file: !2704, line: 74, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2775 = distinct !DISubprogram(name: "dma_fence_get_rcu", scope: !38, file: !38, line: 319, type: !1976, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2776 = !{!2777}
!2777 = !DILocalVariable(name: "fence", arg: 1, scope: !2775, file: !38, line: 319, type: !45)
!2778 = !DILocation(line: 319, column: 69, scope: !2775)
!2779 = !DILocation(line: 321, column: 28, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !38, line: 321, column: 6)
!2781 = !DILocation(line: 321, column: 35, scope: !2780)
!2782 = !DILocation(line: 321, column: 6, scope: !2780)
!2783 = !DILocation(line: 321, column: 6, scope: !2775)
!2784 = !DILocation(line: 322, column: 10, scope: !2780)
!2785 = !DILocation(line: 322, column: 3, scope: !2780)
!2786 = !DILocation(line: 324, column: 3, scope: !2780)
!2787 = !DILocation(line: 325, column: 1, scope: !2775)
!2788 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !167, file: !167, line: 109, type: !2789, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!75, !2567}
!2791 = !{!2792}
!2792 = !DILocalVariable(name: "kref", arg: 1, scope: !2788, file: !167, line: 109, type: !2567)
!2793 = !DILocation(line: 109, column: 66, scope: !2788)
!2794 = !DILocation(line: 111, column: 32, scope: !2788)
!2795 = !DILocation(line: 111, column: 38, scope: !2788)
!2796 = !DILocation(line: 111, column: 9, scope: !2788)
!2797 = !DILocation(line: 111, column: 2, scope: !2788)
!2798 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !30, file: !30, line: 243, type: !2588, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "r", arg: 1, scope: !2798, file: !30, line: 243, type: !2590)
!2801 = !DILocation(line: 243, column: 67, scope: !2798)
!2802 = !DILocation(line: 245, column: 33, scope: !2798)
!2803 = !DILocation(line: 245, column: 9, scope: !2798)
!2804 = !DILocation(line: 245, column: 2, scope: !2798)
!2805 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !30, file: !30, line: 225, type: !2598, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "r", arg: 1, scope: !2805, file: !30, line: 225, type: !2590)
!2808 = !DILocalVariable(name: "oldp", arg: 2, scope: !2805, file: !30, line: 225, type: !859)
!2809 = !DILocation(line: 225, column: 69, scope: !2805)
!2810 = !DILocation(line: 225, column: 77, scope: !2805)
!2811 = !DILocation(line: 227, column: 36, scope: !2805)
!2812 = !DILocation(line: 227, column: 39, scope: !2805)
!2813 = !DILocation(line: 227, column: 9, scope: !2805)
!2814 = !DILocation(line: 227, column: 2, scope: !2805)
!2815 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !30, file: !30, line: 150, type: !2610, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2816)
!2816 = !{!2817, !2818, !2819, !2820}
!2817 = !DILocalVariable(name: "i", arg: 1, scope: !2815, file: !30, line: 150, type: !75)
!2818 = !DILocalVariable(name: "r", arg: 2, scope: !2815, file: !30, line: 150, type: !2590)
!2819 = !DILocalVariable(name: "oldp", arg: 3, scope: !2815, file: !30, line: 150, type: !859)
!2820 = !DILocalVariable(name: "old", scope: !2815, file: !30, line: 152, type: !75)
!2821 = !DILocation(line: 150, column: 61, scope: !2815)
!2822 = !DILocation(line: 150, column: 76, scope: !2815)
!2823 = !DILocation(line: 150, column: 84, scope: !2815)
!2824 = !DILocation(line: 152, column: 2, scope: !2815)
!2825 = !DILocation(line: 152, column: 6, scope: !2815)
!2826 = !DILocation(line: 152, column: 26, scope: !2815)
!2827 = !DILocation(line: 152, column: 12, scope: !2815)
!2828 = !DILocation(line: 154, column: 2, scope: !2815)
!2829 = !DILocation(line: 155, column: 8, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !30, line: 155, column: 7)
!2831 = distinct !DILexicalBlock(scope: !2815, file: !30, line: 154, column: 5)
!2832 = !DILocation(line: 155, column: 7, scope: !2831)
!2833 = !DILocation(line: 156, column: 4, scope: !2830)
!2834 = !DILocation(line: 157, column: 2, scope: !2831)
!2835 = !DILocation(line: 157, column: 40, scope: !2815)
!2836 = !DILocation(line: 157, column: 43, scope: !2815)
!2837 = !DILocation(line: 157, column: 55, scope: !2815)
!2838 = !DILocation(line: 157, column: 61, scope: !2815)
!2839 = !DILocation(line: 157, column: 59, scope: !2815)
!2840 = !DILocation(line: 157, column: 12, scope: !2815)
!2841 = !DILocation(line: 157, column: 11, scope: !2815)
!2842 = distinct !{!2842, !2828, !2843, !2063, !2064}
!2843 = !DILocation(line: 157, column: 63, scope: !2815)
!2844 = !DILocation(line: 159, column: 6, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2815, file: !30, line: 159, column: 6)
!2846 = !DILocation(line: 159, column: 6, scope: !2815)
!2847 = !DILocation(line: 160, column: 11, scope: !2845)
!2848 = !DILocation(line: 160, column: 4, scope: !2845)
!2849 = !DILocation(line: 160, column: 9, scope: !2845)
!2850 = !DILocation(line: 160, column: 3, scope: !2845)
!2851 = !DILocation(line: 162, column: 6, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2815, file: !30, line: 162, column: 6)
!2853 = !DILocation(line: 162, column: 6, scope: !2815)
!2854 = !DILocation(line: 163, column: 26, scope: !2852)
!2855 = !DILocation(line: 163, column: 3, scope: !2852)
!2856 = !DILocation(line: 165, column: 9, scope: !2815)
!2857 = !DILocation(line: 166, column: 1, scope: !2815)
!2858 = !DILocation(line: 165, column: 2, scope: !2815)
!2859 = distinct !DISubprogram(name: "refcount_read", scope: !30, file: !30, line: 145, type: !2860, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2864)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!7, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!2864 = !{!2865}
!2865 = !DILocalVariable(name: "r", arg: 1, scope: !2859, file: !30, line: 145, type: !2862)
!2866 = !DILocation(line: 145, column: 60, scope: !2859)
!2867 = !DILocation(line: 147, column: 22, scope: !2859)
!2868 = !DILocation(line: 147, column: 25, scope: !2859)
!2869 = !DILocation(line: 147, column: 9, scope: !2859)
!2870 = !DILocation(line: 147, column: 2, scope: !2859)
!2871 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !2658, file: !2658, line: 1335, type: !2872, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!100, !2661, !859, !75}
!2874 = !{!2875, !2876, !2877}
!2875 = !DILocalVariable(name: "v", arg: 1, scope: !2871, file: !2658, line: 1335, type: !2661)
!2876 = !DILocalVariable(name: "old", arg: 2, scope: !2871, file: !2658, line: 1335, type: !859)
!2877 = !DILocalVariable(name: "new", arg: 3, scope: !2871, file: !2658, line: 1335, type: !75)
!2878 = !DILocation(line: 1335, column: 38, scope: !2871)
!2879 = !DILocation(line: 1335, column: 46, scope: !2871)
!2880 = !DILocation(line: 1335, column: 55, scope: !2871)
!2881 = !DILocation(line: 1337, column: 31, scope: !2871)
!2882 = !DILocation(line: 1337, column: 2, scope: !2871)
!2883 = !DILocation(line: 1338, column: 31, scope: !2871)
!2884 = !DILocation(line: 1338, column: 2, scope: !2871)
!2885 = !DILocation(line: 1339, column: 40, scope: !2871)
!2886 = !DILocation(line: 1339, column: 43, scope: !2871)
!2887 = !DILocation(line: 1339, column: 48, scope: !2871)
!2888 = !DILocation(line: 1339, column: 9, scope: !2871)
!2889 = !DILocation(line: 1339, column: 2, scope: !2871)
!2890 = distinct !DISubprogram(name: "atomic_read", scope: !2658, file: !2658, line: 30, type: !2891, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!75, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!2895 = !{!2896}
!2896 = !DILocalVariable(name: "v", arg: 1, scope: !2890, file: !2658, line: 30, type: !2893)
!2897 = !DILocation(line: 30, column: 29, scope: !2890)
!2898 = !DILocation(line: 32, column: 25, scope: !2890)
!2899 = !DILocation(line: 32, column: 2, scope: !2890)
!2900 = !DILocation(line: 33, column: 25, scope: !2890)
!2901 = !DILocation(line: 33, column: 9, scope: !2890)
!2902 = !DILocation(line: 33, column: 2, scope: !2890)
!2903 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2143, file: !2143, line: 66, type: !2144, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2904)
!2904 = !{!2905, !2906}
!2905 = !DILocalVariable(name: "v", arg: 1, scope: !2903, file: !2143, line: 66, type: !2146)
!2906 = !DILocalVariable(name: "size", arg: 2, scope: !2903, file: !2143, line: 66, type: !1307)
!2907 = !DILocation(line: 66, column: 73, scope: !2903)
!2908 = !DILocation(line: 66, column: 83, scope: !2903)
!2909 = !DILocation(line: 68, column: 19, scope: !2903)
!2910 = !DILocation(line: 68, column: 22, scope: !2903)
!2911 = !DILocation(line: 68, column: 2, scope: !2903)
!2912 = !DILocation(line: 69, column: 2, scope: !2903)
!2913 = !DILocation(line: 70, column: 1, scope: !2903)
!2914 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2680, file: !2680, line: 442, type: !2891, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2915)
!2915 = !{!2916}
!2916 = !DILocalVariable(name: "v", arg: 1, scope: !2914, file: !2680, line: 442, type: !2893)
!2917 = !DILocation(line: 442, column: 33, scope: !2914)
!2918 = !DILocation(line: 444, column: 26, scope: !2914)
!2919 = !DILocation(line: 444, column: 9, scope: !2914)
!2920 = !DILocation(line: 444, column: 2, scope: !2914)
!2921 = distinct !DISubprogram(name: "kasan_check_read", scope: !2922, file: !2922, line: 40, type: !2923, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2922 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!100, !2146, !7}
!2925 = !{!2926, !2927}
!2926 = !DILocalVariable(name: "p", arg: 1, scope: !2921, file: !2922, line: 40, type: !2146)
!2927 = !DILocalVariable(name: "size", arg: 2, scope: !2921, file: !2922, line: 40, type: !7)
!2928 = !DILocation(line: 40, column: 58, scope: !2921)
!2929 = !DILocation(line: 40, column: 74, scope: !2921)
!2930 = !DILocation(line: 42, column: 2, scope: !2921)
!2931 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2932, file: !2932, line: 229, type: !2933, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2935)
!2932 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2146, !1307, !75}
!2935 = !{!2936, !2937, !2938}
!2936 = !DILocalVariable(name: "ptr", arg: 1, scope: !2931, file: !2932, line: 229, type: !2146)
!2937 = !DILocalVariable(name: "size", arg: 2, scope: !2931, file: !2932, line: 229, type: !1307)
!2938 = !DILocalVariable(name: "type", arg: 3, scope: !2931, file: !2932, line: 230, type: !75)
!2939 = !DILocation(line: 229, column: 60, scope: !2931)
!2940 = !DILocation(line: 229, column: 72, scope: !2931)
!2941 = !DILocation(line: 230, column: 15, scope: !2931)
!2942 = !DILocation(line: 230, column: 23, scope: !2931)
!2943 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2691, file: !2691, line: 17, type: !2891, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2944)
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "v", arg: 1, scope: !2943, file: !2691, line: 17, type: !2893)
!2946 = !DILocation(line: 17, column: 61, scope: !2943)
!2947 = !DILocation(line: 23, column: 9, scope: !2943)
!2948 = !DILocation(line: 23, column: 2, scope: !2943)
!2949 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !2680, file: !2680, line: 2207, type: !2872, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2950 = !{!2951, !2952, !2953}
!2951 = !DILocalVariable(name: "v", arg: 1, scope: !2949, file: !2680, line: 2207, type: !2661)
!2952 = !DILocalVariable(name: "old", arg: 2, scope: !2949, file: !2680, line: 2207, type: !859)
!2953 = !DILocalVariable(name: "new", arg: 3, scope: !2949, file: !2680, line: 2207, type: !75)
!2954 = !DILocation(line: 2207, column: 42, scope: !2949)
!2955 = !DILocation(line: 2207, column: 50, scope: !2949)
!2956 = !DILocation(line: 2207, column: 59, scope: !2949)
!2957 = !DILocation(line: 2212, column: 33, scope: !2949)
!2958 = !DILocation(line: 2212, column: 36, scope: !2949)
!2959 = !DILocation(line: 2212, column: 41, scope: !2949)
!2960 = !DILocation(line: 2212, column: 9, scope: !2949)
!2961 = !DILocation(line: 2212, column: 2, scope: !2949)
!2962 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !2691, file: !2691, line: 113, type: !2872, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2969, !2970, !2971, !2972}
!2964 = !DILocalVariable(name: "v", arg: 1, scope: !2962, file: !2691, line: 113, type: !2661)
!2965 = !DILocalVariable(name: "old", arg: 2, scope: !2962, file: !2691, line: 113, type: !859)
!2966 = !DILocalVariable(name: "new", arg: 3, scope: !2962, file: !2691, line: 113, type: !75)
!2967 = !DILocalVariable(name: "success", scope: !2968, file: !2691, line: 115, type: !100)
!2968 = distinct !DILexicalBlock(scope: !2962, file: !2691, line: 115, column: 9)
!2969 = !DILocalVariable(name: "_old", scope: !2968, file: !2691, line: 115, type: !859)
!2970 = !DILocalVariable(name: "__old", scope: !2968, file: !2691, line: 115, type: !75)
!2971 = !DILocalVariable(name: "__new", scope: !2968, file: !2691, line: 115, type: !75)
!2972 = !DILocalVariable(name: "__ptr", scope: !2968, file: !2691, line: 115, type: !1943)
!2973 = !DILocation(line: 113, column: 63, scope: !2962)
!2974 = !DILocation(line: 113, column: 71, scope: !2962)
!2975 = !DILocation(line: 113, column: 80, scope: !2962)
!2976 = !DILocation(line: 115, column: 9, scope: !2968)
!2977 = !{i64 2148896289, i64 2148896328, i64 2148896349, i64 2148896386, i64 2148896409, i64 2148896418, i64 2148896716}
!2978 = !DILocation(line: 115, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2968, file: !2691, line: 115, column: 9)
!2980 = !DILocation(line: 115, column: 9, scope: !2962)
!2981 = !DILocation(line: 115, column: 2, scope: !2962)
!2982 = !DISubprogram(name: "__rcu_read_unlock", scope: !2704, file: !2704, line: 75, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2983 = distinct !DISubprogram(name: "const_test_bit", scope: !2984, file: !2984, line: 166, type: !2985, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2984 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!100, !164, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!2990 = !{!2991, !2992, !2993, !2994, !2995}
!2991 = !DILocalVariable(name: "nr", arg: 1, scope: !2983, file: !2984, line: 166, type: !164)
!2992 = !DILocalVariable(name: "addr", arg: 2, scope: !2983, file: !2984, line: 166, type: !2987)
!2993 = !DILocalVariable(name: "p", scope: !2983, file: !2984, line: 168, type: !1945)
!2994 = !DILocalVariable(name: "mask", scope: !2983, file: !2984, line: 169, type: !164)
!2995 = !DILocalVariable(name: "val", scope: !2983, file: !2984, line: 170, type: !164)
!2996 = !DILocation(line: 166, column: 30, scope: !2983)
!2997 = !DILocation(line: 166, column: 64, scope: !2983)
!2998 = !DILocation(line: 168, column: 2, scope: !2983)
!2999 = !DILocation(line: 168, column: 23, scope: !2983)
!3000 = !DILocation(line: 168, column: 50, scope: !2983)
!3001 = !DILocation(line: 168, column: 57, scope: !2983)
!3002 = !DILocation(line: 168, column: 55, scope: !2983)
!3003 = !DILocation(line: 169, column: 2, scope: !2983)
!3004 = !DILocation(line: 169, column: 16, scope: !2983)
!3005 = !DILocation(line: 169, column: 23, scope: !2983)
!3006 = !DILocation(line: 170, column: 2, scope: !2983)
!3007 = !DILocation(line: 170, column: 16, scope: !2983)
!3008 = !DILocation(line: 170, column: 23, scope: !2983)
!3009 = !DILocation(line: 170, column: 22, scope: !2983)
!3010 = !DILocation(line: 172, column: 12, scope: !2983)
!3011 = !DILocation(line: 172, column: 18, scope: !2983)
!3012 = !DILocation(line: 172, column: 16, scope: !2983)
!3013 = !DILocation(line: 172, column: 10, scope: !2983)
!3014 = !DILocation(line: 172, column: 9, scope: !2983)
!3015 = !DILocation(line: 173, column: 1, scope: !2983)
!3016 = !DILocation(line: 172, column: 2, scope: !2983)
!3017 = distinct !DISubprogram(name: "_test_bit", scope: !3018, file: !3018, line: 139, type: !2985, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!3018 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "nr", arg: 1, scope: !3017, file: !3018, line: 139, type: !164)
!3021 = !DILocalVariable(name: "addr", arg: 2, scope: !3017, file: !3018, line: 139, type: !2987)
!3022 = !DILocation(line: 139, column: 25, scope: !3017)
!3023 = !DILocation(line: 139, column: 59, scope: !3017)
!3024 = !DILocation(line: 141, column: 25, scope: !3017)
!3025 = !DILocation(line: 141, column: 32, scope: !3017)
!3026 = !DILocation(line: 141, column: 30, scope: !3017)
!3027 = !DILocation(line: 141, column: 2, scope: !3017)
!3028 = !DILocation(line: 142, column: 23, scope: !3017)
!3029 = !DILocation(line: 142, column: 27, scope: !3017)
!3030 = !DILocation(line: 142, column: 9, scope: !3017)
!3031 = !DILocation(line: 142, column: 2, scope: !3017)
!3032 = !DISubprogram(name: "dma_fence_signal", scope: !38, file: !38, line: 390, type: !3033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!75, !45}
!3035 = distinct !DISubprogram(name: "arch_test_bit", scope: !3036, file: !3036, line: 237, type: !2985, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3037)
!3036 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3037 = !{!3038, !3039}
!3038 = !DILocalVariable(name: "nr", arg: 1, scope: !3035, file: !3036, line: 237, type: !164)
!3039 = !DILocalVariable(name: "addr", arg: 2, scope: !3035, file: !3036, line: 237, type: !2987)
!3040 = !DILocation(line: 237, column: 29, scope: !3035)
!3041 = !DILocation(line: 237, column: 63, scope: !3035)
!3042 = !DILocation(line: 239, column: 30, scope: !3035)
!3043 = !DILocation(line: 239, column: 9, scope: !3035)
!3044 = !DILocation(line: 239, column: 54, scope: !3035)
!3045 = !DILocation(line: 239, column: 58, scope: !3035)
!3046 = !DILocation(line: 239, column: 36, scope: !3035)
!3047 = !DILocation(line: 240, column: 26, scope: !3035)
!3048 = !DILocation(line: 240, column: 30, scope: !3035)
!3049 = !DILocation(line: 240, column: 8, scope: !3035)
!3050 = !DILocation(line: 239, column: 2, scope: !3035)
!3051 = distinct !DISubprogram(name: "constant_test_bit", scope: !3036, file: !3036, line: 204, type: !3052, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!100, !119, !2987}
!3054 = !{!3055, !3056}
!3055 = !DILocalVariable(name: "nr", arg: 1, scope: !3051, file: !3036, line: 204, type: !119)
!3056 = !DILocalVariable(name: "addr", arg: 2, scope: !3051, file: !3036, line: 204, type: !2987)
!3057 = !DILocation(line: 204, column: 52, scope: !3051)
!3058 = !DILocation(line: 204, column: 86, scope: !3051)
!3059 = !DILocation(line: 206, column: 19, scope: !3051)
!3060 = !DILocation(line: 206, column: 22, scope: !3051)
!3061 = !DILocation(line: 206, column: 15, scope: !3051)
!3062 = !DILocation(line: 207, column: 4, scope: !3051)
!3063 = !DILocation(line: 207, column: 9, scope: !3051)
!3064 = !DILocation(line: 207, column: 12, scope: !3051)
!3065 = !DILocation(line: 206, column: 44, scope: !3051)
!3066 = !DILocation(line: 207, column: 37, scope: !3051)
!3067 = !DILocation(line: 206, column: 2, scope: !3051)
!3068 = distinct !DISubprogram(name: "variable_test_bit", scope: !3036, file: !3036, line: 224, type: !3052, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DILocalVariable(name: "nr", arg: 1, scope: !3068, file: !3036, line: 224, type: !119)
!3071 = !DILocalVariable(name: "addr", arg: 2, scope: !3068, file: !3036, line: 224, type: !2987)
!3072 = !DILocalVariable(name: "oldbit", scope: !3068, file: !3036, line: 226, type: !100)
!3073 = !DILocation(line: 224, column: 52, scope: !3068)
!3074 = !DILocation(line: 224, column: 86, scope: !3068)
!3075 = !DILocation(line: 226, column: 2, scope: !3068)
!3076 = !DILocation(line: 226, column: 7, scope: !3068)
!3077 = !DILocation(line: 231, column: 33, scope: !3068)
!3078 = !DILocation(line: 231, column: 46, scope: !3068)
!3079 = !DILocation(line: 228, column: 2, scope: !3068)
!3080 = !{i64 2148054406, i64 2148054480}
!3081 = !DILocation(line: 233, column: 9, scope: !3068)
!3082 = !DILocation(line: 234, column: 1, scope: !3068)
!3083 = !DILocation(line: 233, column: 2, scope: !3068)
!3084 = distinct !DISubprogram(name: "kasan_check_write", scope: !2922, file: !2922, line: 44, type: !2923, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "p", arg: 1, scope: !3084, file: !2922, line: 44, type: !2146)
!3087 = !DILocalVariable(name: "size", arg: 2, scope: !3084, file: !2922, line: 44, type: !7)
!3088 = !DILocation(line: 44, column: 59, scope: !3084)
!3089 = !DILocation(line: 44, column: 75, scope: !3084)
!3090 = !DILocation(line: 46, column: 2, scope: !3084)
!3091 = distinct !DISubprogram(name: "kref_get", scope: !167, file: !167, line: 43, type: !2569, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3092)
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "kref", arg: 1, scope: !3091, file: !167, line: 43, type: !2567)
!3094 = !DILocation(line: 43, column: 42, scope: !3091)
!3095 = !DILocation(line: 45, column: 16, scope: !3091)
!3096 = !DILocation(line: 45, column: 22, scope: !3091)
!3097 = !DILocation(line: 45, column: 2, scope: !3091)
!3098 = !DILocation(line: 46, column: 1, scope: !3091)
!3099 = distinct !DISubprogram(name: "refcount_inc", scope: !30, file: !30, line: 265, type: !3100, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !2590}
!3102 = !{!3103}
!3103 = !DILocalVariable(name: "r", arg: 1, scope: !3099, file: !30, line: 265, type: !2590)
!3104 = !DILocation(line: 265, column: 45, scope: !3099)
!3105 = !DILocation(line: 267, column: 17, scope: !3099)
!3106 = !DILocation(line: 267, column: 2, scope: !3099)
!3107 = !DILocation(line: 268, column: 1, scope: !3099)
!3108 = distinct !DISubprogram(name: "__refcount_inc", scope: !30, file: !30, line: 248, type: !3109, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !2590, !859}
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "r", arg: 1, scope: !3108, file: !30, line: 248, type: !2590)
!3113 = !DILocalVariable(name: "oldp", arg: 2, scope: !3108, file: !30, line: 248, type: !859)
!3114 = !DILocation(line: 248, column: 47, scope: !3108)
!3115 = !DILocation(line: 248, column: 55, scope: !3108)
!3116 = !DILocation(line: 250, column: 20, scope: !3108)
!3117 = !DILocation(line: 250, column: 23, scope: !3108)
!3118 = !DILocation(line: 250, column: 2, scope: !3108)
!3119 = !DILocation(line: 251, column: 1, scope: !3108)
!3120 = distinct !DISubprogram(name: "__refcount_add", scope: !30, file: !30, line: 191, type: !3121, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !75, !2590, !859}
!3123 = !{!3124, !3125, !3126, !3127}
!3124 = !DILocalVariable(name: "i", arg: 1, scope: !3120, file: !30, line: 191, type: !75)
!3125 = !DILocalVariable(name: "r", arg: 2, scope: !3120, file: !30, line: 191, type: !2590)
!3126 = !DILocalVariable(name: "oldp", arg: 3, scope: !3120, file: !30, line: 191, type: !859)
!3127 = !DILocalVariable(name: "old", scope: !3120, file: !30, line: 193, type: !75)
!3128 = !DILocation(line: 191, column: 39, scope: !3120)
!3129 = !DILocation(line: 191, column: 54, scope: !3120)
!3130 = !DILocation(line: 191, column: 62, scope: !3120)
!3131 = !DILocation(line: 193, column: 2, scope: !3120)
!3132 = !DILocation(line: 193, column: 6, scope: !3120)
!3133 = !DILocation(line: 193, column: 37, scope: !3120)
!3134 = !DILocation(line: 193, column: 41, scope: !3120)
!3135 = !DILocation(line: 193, column: 44, scope: !3120)
!3136 = !DILocation(line: 193, column: 12, scope: !3120)
!3137 = !DILocation(line: 195, column: 6, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3120, file: !30, line: 195, column: 6)
!3139 = !DILocation(line: 195, column: 6, scope: !3120)
!3140 = !DILocation(line: 196, column: 11, scope: !3138)
!3141 = !DILocation(line: 196, column: 4, scope: !3138)
!3142 = !DILocation(line: 196, column: 9, scope: !3138)
!3143 = !DILocation(line: 196, column: 3, scope: !3138)
!3144 = !DILocation(line: 198, column: 6, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3120, file: !30, line: 198, column: 6)
!3146 = !DILocation(line: 198, column: 6, scope: !3120)
!3147 = !DILocation(line: 199, column: 26, scope: !3145)
!3148 = !DILocation(line: 199, column: 3, scope: !3145)
!3149 = !DILocation(line: 200, column: 11, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !30, line: 200, column: 11)
!3151 = !DILocation(line: 200, column: 11, scope: !3145)
!3152 = !DILocation(line: 201, column: 26, scope: !3150)
!3153 = !DILocation(line: 201, column: 3, scope: !3150)
!3154 = !DILocation(line: 202, column: 1, scope: !3120)
!3155 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2658, file: !2658, line: 250, type: !2659, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3156)
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "i", arg: 1, scope: !3155, file: !2658, line: 250, type: !75)
!3158 = !DILocalVariable(name: "v", arg: 2, scope: !3155, file: !2658, line: 250, type: !2661)
!3159 = !DILocation(line: 250, column: 30, scope: !3155)
!3160 = !DILocation(line: 250, column: 43, scope: !3155)
!3161 = !DILocation(line: 252, column: 31, scope: !3155)
!3162 = !DILocation(line: 252, column: 2, scope: !3155)
!3163 = !DILocation(line: 253, column: 38, scope: !3155)
!3164 = !DILocation(line: 253, column: 41, scope: !3155)
!3165 = !DILocation(line: 253, column: 9, scope: !3155)
!3166 = !DILocation(line: 253, column: 2, scope: !3155)
!3167 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2680, file: !2680, line: 731, type: !2659, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3168)
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "i", arg: 1, scope: !3167, file: !2680, line: 731, type: !75)
!3170 = !DILocalVariable(name: "v", arg: 2, scope: !3167, file: !2680, line: 731, type: !2661)
!3171 = !DILocation(line: 731, column: 34, scope: !3167)
!3172 = !DILocation(line: 731, column: 47, scope: !3167)
!3173 = !DILocation(line: 736, column: 31, scope: !3167)
!3174 = !DILocation(line: 736, column: 34, scope: !3167)
!3175 = !DILocation(line: 736, column: 9, scope: !3167)
!3176 = !DILocation(line: 736, column: 2, scope: !3167)
!3177 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2691, file: !2691, line: 95, type: !2659, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3178)
!3178 = !{!3179, !3180, !3181}
!3179 = !DILocalVariable(name: "i", arg: 1, scope: !3177, file: !2691, line: 95, type: !75)
!3180 = !DILocalVariable(name: "v", arg: 2, scope: !3177, file: !2691, line: 95, type: !2661)
!3181 = !DILocalVariable(name: "__ret", scope: !3182, file: !2691, line: 97, type: !75)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !2691, line: 97, column: 9)
!3183 = !DILocation(line: 95, column: 54, scope: !3177)
!3184 = !DILocation(line: 95, column: 67, scope: !3177)
!3185 = !DILocation(line: 97, column: 9, scope: !3182)
!3186 = !{i64 2148888397, i64 2148888436, i64 2148888457, i64 2148888494, i64 2148888517, i64 2148888526}
!3187 = !DILocation(line: 97, column: 9, scope: !3177)
!3188 = !DILocation(line: 97, column: 2, scope: !3177)
!3189 = distinct !DISubprogram(name: "dma_fence_chain_contained", scope: !183, file: !183, line: 77, type: !1976, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3190 = !{!3191, !3192}
!3191 = !DILocalVariable(name: "fence", arg: 1, scope: !3189, file: !183, line: 77, type: !45)
!3192 = !DILocalVariable(name: "chain", scope: !3189, file: !183, line: 79, type: !181)
!3193 = !DILocation(line: 77, column: 45, scope: !3189)
!3194 = !DILocation(line: 79, column: 2, scope: !3189)
!3195 = !DILocation(line: 79, column: 26, scope: !3189)
!3196 = !DILocation(line: 79, column: 53, scope: !3189)
!3197 = !DILocation(line: 79, column: 34, scope: !3189)
!3198 = !DILocation(line: 81, column: 9, scope: !3189)
!3199 = !DILocation(line: 81, column: 17, scope: !3189)
!3200 = !DILocation(line: 81, column: 24, scope: !3189)
!3201 = !DILocation(line: 81, column: 32, scope: !3189)
!3202 = !DILocation(line: 82, column: 1, scope: !3189)
!3203 = !DILocation(line: 81, column: 2, scope: !3189)
!3204 = !DISubprogram(name: "dma_fence_add_callback", scope: !38, file: !38, line: 397, type: !3205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!75, !45, !201, !197}
!3207 = distinct !DISubprogram(name: "dma_fence_chain_cb", scope: !3, file: !3, line: 135, type: !199, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3208)
!3208 = !{!3209, !3210, !3211, !3212}
!3209 = !DILocalVariable(name: "f", arg: 1, scope: !3207, file: !3, line: 135, type: !45)
!3210 = !DILocalVariable(name: "cb", arg: 2, scope: !3207, file: !3, line: 135, type: !201)
!3211 = !DILocalVariable(name: "chain", scope: !3207, file: !3, line: 137, type: !181)
!3212 = !DILocalVariable(name: "__mptr", scope: !3213, file: !3, line: 139, type: !177)
!3213 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 139, column: 10)
!3214 = !DILocation(line: 135, column: 50, scope: !3207)
!3215 = !DILocation(line: 135, column: 74, scope: !3207)
!3216 = !DILocation(line: 137, column: 2, scope: !3207)
!3217 = !DILocation(line: 137, column: 26, scope: !3207)
!3218 = !DILocation(line: 139, column: 10, scope: !3213)
!3219 = !DILocation(line: 139, column: 10, scope: !3207)
!3220 = !DILocation(line: 139, column: 8, scope: !3207)
!3221 = !DILocation(line: 140, column: 17, scope: !3207)
!3222 = !DILocation(line: 140, column: 24, scope: !3207)
!3223 = !DILocation(line: 140, column: 2, scope: !3207)
!3224 = !DILocation(line: 141, column: 18, scope: !3207)
!3225 = !DILocation(line: 141, column: 25, scope: !3207)
!3226 = !DILocation(line: 141, column: 2, scope: !3207)
!3227 = !DILocation(line: 142, column: 16, scope: !3207)
!3228 = !DILocation(line: 142, column: 2, scope: !3207)
!3229 = !DILocation(line: 143, column: 1, scope: !3207)
!3230 = distinct !DISubprogram(name: "init_irq_work", scope: !204, file: !204, line: 37, type: !3231, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !227, !224}
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "work", arg: 1, scope: !3230, file: !204, line: 37, type: !227)
!3235 = !DILocalVariable(name: "func", arg: 2, scope: !3230, file: !204, line: 37, type: !224)
!3236 = !DILocation(line: 37, column: 37, scope: !3230)
!3237 = !DILocation(line: 37, column: 50, scope: !3230)
!3238 = !DILocation(line: 39, column: 3, scope: !3230)
!3239 = !DILocation(line: 39, column: 10, scope: !3230)
!3240 = !DILocation(line: 40, column: 1, scope: !3230)
!3241 = distinct !DISubprogram(name: "dma_fence_chain_irq_work", scope: !3, file: !3, line: 122, type: !225, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DILocalVariable(name: "work", arg: 1, scope: !3241, file: !3, line: 122, type: !227)
!3244 = !DILocalVariable(name: "chain", scope: !3241, file: !3, line: 124, type: !181)
!3245 = !DILocalVariable(name: "__mptr", scope: !3246, file: !3, line: 126, type: !177)
!3246 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 126, column: 10)
!3247 = !DILocation(line: 122, column: 55, scope: !3241)
!3248 = !DILocation(line: 124, column: 2, scope: !3241)
!3249 = !DILocation(line: 124, column: 26, scope: !3241)
!3250 = !DILocation(line: 126, column: 10, scope: !3246)
!3251 = !DILocation(line: 126, column: 10, scope: !3241)
!3252 = !DILocation(line: 126, column: 8, scope: !3241)
!3253 = !DILocation(line: 129, column: 41, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 129, column: 6)
!3255 = !DILocation(line: 129, column: 48, scope: !3254)
!3256 = !DILocation(line: 129, column: 7, scope: !3254)
!3257 = !DILocation(line: 129, column: 6, scope: !3241)
!3258 = !DILocation(line: 131, column: 21, scope: !3254)
!3259 = !DILocation(line: 131, column: 28, scope: !3254)
!3260 = !DILocation(line: 131, column: 3, scope: !3254)
!3261 = !DILocation(line: 132, column: 17, scope: !3241)
!3262 = !DILocation(line: 132, column: 24, scope: !3241)
!3263 = !DILocation(line: 132, column: 2, scope: !3241)
!3264 = !DILocation(line: 133, column: 1, scope: !3241)
!3265 = !DISubprogram(name: "irq_work_queue", scope: !204, file: !204, line: 57, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!100, !227}
!3268 = distinct !DISubprogram(name: "kref_read", scope: !167, file: !167, line: 34, type: !3269, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3273)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!7, !3271}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!3273 = !{!3274}
!3274 = !DILocalVariable(name: "kref", arg: 1, scope: !3268, file: !167, line: 34, type: !3271)
!3275 = !DILocation(line: 34, column: 57, scope: !3268)
!3276 = !DILocation(line: 36, column: 24, scope: !3268)
!3277 = !DILocation(line: 36, column: 30, scope: !3268)
!3278 = !DILocation(line: 36, column: 9, scope: !3268)
!3279 = !DILocation(line: 36, column: 2, scope: !3268)
!3280 = !DISubprogram(name: "dma_fence_free", scope: !38, file: !38, line: 286, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3281 = !DISubprogram(name: "dma_fence_set_deadline", scope: !38, file: !38, line: 640, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
