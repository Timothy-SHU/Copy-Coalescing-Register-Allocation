; ModuleID = 'drivers/gpu/drm/i915/i915_sw_fence.c'
source_filename = "drivers/gpu/drm/i915/i915_sw_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.i915_sw_fence = type { %struct.wait_queue_head, ptr, %struct.atomic_t, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i64, %struct.kref, i32 }
%union.anon.2 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.i915_sw_dma_fence_cb = type { %struct.dma_fence_cb, ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.i915_sw_dma_fence_cb_timer = type { %struct.i915_sw_dma_fence_cb, ptr, %struct.timer_list, %struct.irq_work, %struct.callback_head }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_resv_iter = type { ptr, i32, ptr, i32, i32, ptr, i32, i8 }

@.str = private unnamed_addr constant [37 x i8] c"drivers/gpu/drm/i915/i915_sw_fence.c\00", align 1, !dbg !0
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !7
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2006
@.str.2 = private unnamed_addr constant [62 x i8] c"\015Asynchronous wait on fence %s:%s:%llx timed out (hint:%ps)\0A\00", align 1, !dbg !2011
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_sw_fence_complete(ptr noundef %fence) #0 align 16 !dbg !2025 {
entry:
  %fence.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2029, metadata !DIExpression()), !dbg !2036
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2037
  call void @debug_fence_assert(ptr noundef %0) #16, !dbg !2038
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !2039
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2030, metadata !DIExpression()), !dbg !2039
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2039
  %call = call zeroext i1 @i915_sw_fence_done(ptr noundef %1) #16, !dbg !2039
  %lnot = xor i1 %call, true, !dbg !2039
  %lnot1 = xor i1 %lnot, true, !dbg !2039
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2039
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2039
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !2040
  %tobool = icmp ne i32 %2, 0, !dbg !2040
  %lnot2 = xor i1 %tobool, true, !dbg !2040
  %lnot4 = xor i1 %lnot2, true, !dbg !2040
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2040
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2040
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2040
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2040
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2039

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2040

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2033, metadata !DIExpression()), !dbg !2041
  store i32 2305, ptr %__flags, align 4, !dbg !2041
  br label %do.body7, !dbg !2041

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2042

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2042

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2041

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !2044
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 216, i32 %3, i64 12) #17, !dbg !2044, !srcloc !2046
  br label %do.cond9, !dbg !2044

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2044

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2041

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2047

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2047

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !2040
  br label %do.cond14, !dbg !2041

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2041

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2041

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2039
  %tobool16 = icmp ne i32 %4, 0, !dbg !2039
  %lnot17 = xor i1 %tobool16, true, !dbg !2039
  %lnot19 = xor i1 %lnot17, true, !dbg !2039
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2039
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2039
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2039
  store i64 %expval22, ptr %tmp, align 8, !dbg !2040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !2049
  %5 = load i64, ptr %tmp, align 8, !dbg !2039
  %tobool23 = icmp ne i64 %5, 0, !dbg !2049
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2050

if.then24:                                        ; preds = %if.end
  br label %return, !dbg !2051

if.end25:                                         ; preds = %if.end
  %6 = load ptr, ptr %fence.addr, align 8, !dbg !2052
  call void @__i915_sw_fence_complete(ptr noundef %6, ptr noundef null) #16, !dbg !2053
  br label %return, !dbg !2054

return:                                           ; preds = %if.end25, %if.then24
  ret void, !dbg !2054
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_fence_assert(ptr noundef %fence) #2 align 16 !dbg !2055 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2057, metadata !DIExpression()), !dbg !2058
  ret void, !dbg !2059
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @i915_sw_fence_done(ptr noundef %fence) #2 align 16 !dbg !2060 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2066, metadata !DIExpression()), !dbg !2067
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2068
  %pending = getelementptr inbounds %struct.i915_sw_fence, ptr %0, i32 0, i32 2, !dbg !2069
  %call = call i32 @atomic_read(ptr noundef %pending) #16, !dbg !2070
  %cmp = icmp slt i32 %call, 0, !dbg !2071
  ret i1 %cmp, !dbg !2072
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__i915_sw_fence_complete(ptr noundef %fence, ptr noundef %continuation) #0 align 16 !dbg !2073 {
entry:
  %fence.addr = alloca ptr, align 8
  %continuation.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2077, metadata !DIExpression()), !dbg !2079
  store ptr %continuation, ptr %continuation.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %continuation.addr, metadata !2078, metadata !DIExpression()), !dbg !2080
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2081
  call void @debug_fence_assert(ptr noundef %0) #16, !dbg !2082
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2083
  %pending = getelementptr inbounds %struct.i915_sw_fence, ptr %1, i32 0, i32 2, !dbg !2085
  %call = call zeroext i1 @atomic_dec_and_test(ptr noundef %pending) #16, !dbg !2086
  br i1 %call, label %if.end, label %if.then, !dbg !2087

if.then:                                          ; preds = %entry
  br label %return, !dbg !2088

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2089
  call void @debug_fence_set_state(ptr noundef %2, i32 noundef 0, i32 noundef 1) #16, !dbg !2090
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2091
  %call1 = call i32 @__i915_sw_fence_notify(ptr noundef %3, i32 noundef 0) #16, !dbg !2093
  %cmp = icmp ne i32 %call1, 0, !dbg !2094
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2095

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2096

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !2097
  call void @debug_fence_set_state(ptr noundef %4, i32 noundef 1, i32 noundef 0) #16, !dbg !2098
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2099
  %6 = load ptr, ptr %continuation.addr, align 8, !dbg !2100
  call void @__i915_sw_fence_wake_up_all(ptr noundef %5, ptr noundef %6) #16, !dbg !2101
  %7 = load ptr, ptr %fence.addr, align 8, !dbg !2102
  call void @debug_fence_destroy(ptr noundef %7) #16, !dbg !2103
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !2104
  %call4 = call i32 @__i915_sw_fence_notify(ptr noundef %8, i32 noundef 1) #16, !dbg !2105
  br label %return, !dbg !2106

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void, !dbg !2106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @i915_sw_fence_await(ptr noundef %fence) #0 align 16 !dbg !2107 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  %pending = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.start.p0(i64 4, ptr %pending) #17, !dbg !2114
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !2112, metadata !DIExpression()), !dbg !2115
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2116
  %pending1 = getelementptr inbounds %struct.i915_sw_fence, ptr %0, i32 0, i32 2, !dbg !2117
  %call = call i32 @atomic_read(ptr noundef %pending1) #16, !dbg !2118
  store i32 %call, ptr %pending, align 4, !dbg !2119
  br label %do.body, !dbg !2120

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %pending, align 4, !dbg !2121
  %cmp = icmp slt i32 %1, 1, !dbg !2124
  br i1 %cmp, label %if.then, label %if.end, !dbg !2125

if.then:                                          ; preds = %do.body
  store i1 false, ptr %retval, align 1, !dbg !2126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2126

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2127

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2128
  %pending2 = getelementptr inbounds %struct.i915_sw_fence, ptr %2, i32 0, i32 2, !dbg !2129
  %3 = load i32, ptr %pending, align 4, !dbg !2130
  %add = add i32 %3, 1, !dbg !2131
  %call3 = call zeroext i1 @atomic_try_cmpxchg(ptr noundef %pending2, ptr noundef %pending, i32 noundef %add) #16, !dbg !2132
  %lnot = xor i1 %call3, true, !dbg !2133
  br i1 %lnot, label %do.body, label %do.end, !dbg !2127, !llvm.loop !2134

do.end:                                           ; preds = %do.cond
  store i1 true, ptr %retval, align 1, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pending) #17, !dbg !2139
  %4 = load i1, ptr %retval, align 1, !dbg !2139
  ret i1 %4, !dbg !2139
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !2140 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2147, metadata !DIExpression()), !dbg !2148
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2149
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #16, !dbg !2150
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2151
  %call = call i32 @raw_atomic_read(ptr noundef %1) #16, !dbg !2152
  ret i32 %call, !dbg !2153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !2154 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2159, metadata !DIExpression()), !dbg !2162
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2160, metadata !DIExpression()), !dbg !2163
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2161, metadata !DIExpression()), !dbg !2164
  br label %do.body, !dbg !2165

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2166

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2168
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !2169
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2170
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #16, !dbg !2171
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2172
  %3 = load ptr, ptr %old.addr, align 8, !dbg !2173
  %4 = load i32, ptr %new.addr, align 4, !dbg !2174
  %call = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %2, ptr noundef %3, i32 noundef %4) #16, !dbg !2175
  ret i1 %call, !dbg !2176
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__i915_sw_fence_init(ptr noundef %fence, ptr noundef %fn, ptr noundef %name, ptr noundef %key) #0 align 16 !dbg !2177 {
entry:
  %fence.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2184, metadata !DIExpression()), !dbg !2188
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2185, metadata !DIExpression()), !dbg !2189
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2186, metadata !DIExpression()), !dbg !2190
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2187, metadata !DIExpression()), !dbg !2191
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2192
  %wait = getelementptr inbounds %struct.i915_sw_fence, ptr %0, i32 0, i32 0, !dbg !2193
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2194
  %2 = load ptr, ptr %key.addr, align 8, !dbg !2195
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef %1, ptr noundef %2) #16, !dbg !2196
  %3 = load ptr, ptr %fn.addr, align 8, !dbg !2197
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !2198
  %fn1 = getelementptr inbounds %struct.i915_sw_fence, ptr %4, i32 0, i32 1, !dbg !2199
  store ptr %3, ptr %fn1, align 8, !dbg !2200
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2201
  call void @i915_sw_fence_reinit(ptr noundef %5) #16, !dbg !2202
  ret void, !dbg !2203
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2204 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_sw_fence_reinit(ptr noundef %fence) #0 align 16 !dbg !2208 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2210, metadata !DIExpression()), !dbg !2211
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2212
  call void @debug_fence_init(ptr noundef %0) #16, !dbg !2213
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2214
  %pending = getelementptr inbounds %struct.i915_sw_fence, ptr %1, i32 0, i32 2, !dbg !2215
  call void @atomic_set(ptr noundef %pending, i32 noundef 1) #16, !dbg !2216
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2217
  %error = getelementptr inbounds %struct.i915_sw_fence, ptr %2, i32 0, i32 3, !dbg !2218
  store i32 0, ptr %error, align 4, !dbg !2219
  ret void, !dbg !2220
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_fence_init(ptr noundef %fence) #2 align 16 !dbg !2221 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2223, metadata !DIExpression()), !dbg !2224
  ret void, !dbg !2225
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !2226 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2230, metadata !DIExpression()), !dbg !2232
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2231, metadata !DIExpression()), !dbg !2233
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2234
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #16, !dbg !2235
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2236
  %2 = load i32, ptr %i.addr, align 4, !dbg !2237
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #16, !dbg !2238
  ret void, !dbg !2239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_sw_fence_commit(ptr noundef %fence) #0 align 16 !dbg !2240 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2242, metadata !DIExpression()), !dbg !2243
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2244
  call void @debug_fence_activate(ptr noundef %0) #16, !dbg !2245
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2246
  call void @i915_sw_fence_complete(ptr noundef %1) #16, !dbg !2247
  ret void, !dbg !2248
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_fence_activate(ptr noundef %fence) #2 align 16 !dbg !2249 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2251, metadata !DIExpression()), !dbg !2252
  ret void, !dbg !2253
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_sw_fence_await_sw_fence(ptr noundef %fence, ptr noundef %signaler, ptr noundef %wq) #0 align 16 !dbg !2254 {
entry:
  %fence.addr = alloca ptr, align 8
  %signaler.addr = alloca ptr, align 8
  %wq.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2258, metadata !DIExpression()), !dbg !2261
  store ptr %signaler, ptr %signaler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signaler.addr, metadata !2259, metadata !DIExpression()), !dbg !2262
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !2260, metadata !DIExpression()), !dbg !2263
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2264
  %1 = load ptr, ptr %signaler.addr, align 8, !dbg !2265
  %2 = load ptr, ptr %wq.addr, align 8, !dbg !2266
  %call = call i32 @__i915_sw_fence_await_sw_fence(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #16, !dbg !2267
  ret i32 %call, !dbg !2268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__i915_sw_fence_await_sw_fence(ptr noundef %fence, ptr noundef %signaler, ptr noundef %wq, i32 noundef %gfp) #0 align 16 !dbg !2269 {
entry:
  %retval = alloca i32, align 4
  %fence.addr = alloca ptr, align 8
  %signaler.addr = alloca ptr, align 8
  %wq.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %pending = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2273, metadata !DIExpression()), !dbg !2284
  store ptr %signaler, ptr %signaler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signaler.addr, metadata !2274, metadata !DIExpression()), !dbg !2285
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !2275, metadata !DIExpression()), !dbg !2286
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2276, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 4, ptr %pending) #17, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !2277, metadata !DIExpression()), !dbg !2289
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2278, metadata !DIExpression()), !dbg !2291
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2292
  call void @debug_fence_assert(ptr noundef %0) #16, !dbg !2293
  br label %do.body, !dbg !2294

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !2295
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %1) #16, !dbg !2295
  br i1 %call, label %if.then, label %if.end, !dbg !2298

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !2295

do.body1:                                         ; preds = %if.then
  call void @might_resched() #16, !dbg !2299
  br label %do.cond, !dbg !2299

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2299

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !2299

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2, !dbg !2298

do.cond2:                                         ; preds = %if.end
  br label %do.end3, !dbg !2298

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %signaler.addr, align 8, !dbg !2301
  %call4 = call zeroext i1 @i915_sw_fence_done(ptr noundef %2) #16, !dbg !2303
  br i1 %call4, label %if.then5, label %if.end6, !dbg !2304

if.then5:                                         ; preds = %do.end3
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2305
  %4 = load ptr, ptr %signaler.addr, align 8, !dbg !2307
  %error = getelementptr inbounds %struct.i915_sw_fence, ptr %4, i32 0, i32 3, !dbg !2308
  %5 = load i32, ptr %error, align 4, !dbg !2308
  call void @i915_sw_fence_set_error_once(ptr noundef %3, i32 noundef %5) #16, !dbg !2309
  store i32 0, ptr %retval, align 4, !dbg !2310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2310

if.end6:                                          ; preds = %do.end3
  %6 = load ptr, ptr %signaler.addr, align 8, !dbg !2311
  call void @debug_fence_assert(ptr noundef %6) #16, !dbg !2312
  %7 = load ptr, ptr %fence.addr, align 8, !dbg !2313
  %8 = load ptr, ptr %signaler.addr, align 8, !dbg !2313
  %call7 = call zeroext i1 @i915_sw_fence_check_if_after(ptr noundef %7, ptr noundef %8) #16, !dbg !2313
  %lnot = xor i1 %call7, true, !dbg !2313
  %lnot8 = xor i1 %lnot, true, !dbg !2313
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !2313
  %conv = sext i32 %lnot.ext to i64, !dbg !2313
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2313
  %tobool = icmp ne i64 %expval, 0, !dbg !2313
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !2315

if.then9:                                         ; preds = %if.end6
  store i32 -22, ptr %retval, align 4, !dbg !2316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2316

if.end10:                                         ; preds = %if.end6
  store i32 -2147483648, ptr %pending, align 4, !dbg !2317
  %9 = load ptr, ptr %wq.addr, align 8, !dbg !2318
  %tobool11 = icmp ne ptr %9, null, !dbg !2318
  br i1 %tobool11, label %if.end23, label %if.then12, !dbg !2320

if.then12:                                        ; preds = %if.end10
  %10 = load i32, ptr %gfp.addr, align 4, !dbg !2321
  %call13 = call noalias ptr @kmalloc(i64 noundef 40, i32 noundef %10) #18, !dbg !2323
  store ptr %call13, ptr %wq.addr, align 8, !dbg !2324
  %11 = load ptr, ptr %wq.addr, align 8, !dbg !2325
  %tobool14 = icmp ne ptr %11, null, !dbg !2325
  br i1 %tobool14, label %if.end20, label %if.then15, !dbg !2327

if.then15:                                        ; preds = %if.then12
  %12 = load i32, ptr %gfp.addr, align 4, !dbg !2328
  %call16 = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %12) #16, !dbg !2331
  br i1 %call16, label %if.end18, label %if.then17, !dbg !2332

if.then17:                                        ; preds = %if.then15
  store i32 -12, ptr %retval, align 4, !dbg !2333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2333

if.end18:                                         ; preds = %if.then15
  %13 = load ptr, ptr %signaler.addr, align 8, !dbg !2334
  call void @i915_sw_fence_wait(ptr noundef %13) #16, !dbg !2335
  %14 = load ptr, ptr %fence.addr, align 8, !dbg !2336
  %15 = load ptr, ptr %signaler.addr, align 8, !dbg !2337
  %error19 = getelementptr inbounds %struct.i915_sw_fence, ptr %15, i32 0, i32 3, !dbg !2338
  %16 = load i32, ptr %error19, align 4, !dbg !2338
  call void @i915_sw_fence_set_error_once(ptr noundef %14, i32 noundef %16) #16, !dbg !2339
  store i32 0, ptr %retval, align 4, !dbg !2340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2340

if.end20:                                         ; preds = %if.then12
  %17 = load i32, ptr %pending, align 4, !dbg !2341
  %conv21 = zext i32 %17 to i64, !dbg !2341
  %or = or i64 %conv21, 1073741824, !dbg !2341
  %conv22 = trunc i64 %or to i32, !dbg !2341
  store i32 %conv22, ptr %pending, align 4, !dbg !2341
  br label %if.end23, !dbg !2342

if.end23:                                         ; preds = %if.end20, %if.end10
  %18 = load ptr, ptr %wq.addr, align 8, !dbg !2343
  %entry24 = getelementptr inbounds %struct.wait_queue_entry, ptr %18, i32 0, i32 3, !dbg !2344
  call void @INIT_LIST_HEAD(ptr noundef %entry24) #16, !dbg !2345
  %19 = load i32, ptr %pending, align 4, !dbg !2346
  %20 = load ptr, ptr %wq.addr, align 8, !dbg !2347
  %flags25 = getelementptr inbounds %struct.wait_queue_entry, ptr %20, i32 0, i32 0, !dbg !2348
  store i32 %19, ptr %flags25, align 8, !dbg !2349
  %21 = load ptr, ptr %wq.addr, align 8, !dbg !2350
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %21, i32 0, i32 2, !dbg !2351
  store ptr @i915_sw_fence_wake, ptr %func, align 8, !dbg !2352
  %22 = load ptr, ptr %fence.addr, align 8, !dbg !2353
  %23 = load ptr, ptr %wq.addr, align 8, !dbg !2354
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %23, i32 0, i32 1, !dbg !2355
  store ptr %22, ptr %private, align 8, !dbg !2356
  %24 = load ptr, ptr %fence.addr, align 8, !dbg !2357
  %call26 = call zeroext i1 @i915_sw_fence_await(ptr noundef %24) #16, !dbg !2358
  br label %do.body27, !dbg !2359

do.body27:                                        ; preds = %if.end23
  br label %do.body28, !dbg !2360

do.body28:                                        ; preds = %do.body27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2279, metadata !DIExpression()), !dbg !2361
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2283, metadata !DIExpression()), !dbg !2361
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2361
  %conv29 = zext i1 %cmp to i32, !dbg !2361
  store i32 1, ptr %tmp, align 4, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !2362
  %25 = load i32, ptr %tmp, align 4, !dbg !2361
  %26 = load ptr, ptr %signaler.addr, align 8, !dbg !2362
  %wait = getelementptr inbounds %struct.i915_sw_fence, ptr %26, i32 0, i32 0, !dbg !2362
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %wait, i32 0, i32 0, !dbg !2362
  %call30 = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !2362
  %call31 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call30) #16, !dbg !2362
  store i64 %call31, ptr %flags, align 8, !dbg !2362
  br label %do.cond32, !dbg !2362

do.cond32:                                        ; preds = %do.body28
  br label %do.end33, !dbg !2362

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !2360

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !2360

do.end35:                                         ; preds = %do.cond34
  %27 = load ptr, ptr %signaler.addr, align 8, !dbg !2363
  %call36 = call zeroext i1 @i915_sw_fence_done(ptr noundef %27) #16, !dbg !2363
  %lnot37 = xor i1 %call36, true, !dbg !2363
  %lnot39 = xor i1 %lnot37, true, !dbg !2363
  %lnot41 = xor i1 %lnot39, true, !dbg !2363
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !2363
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !2363
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 1), !dbg !2363
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !2363
  br i1 %tobool45, label %if.then46, label %if.else, !dbg !2365

if.then46:                                        ; preds = %do.end35
  %28 = load ptr, ptr %signaler.addr, align 8, !dbg !2366
  %wait47 = getelementptr inbounds %struct.i915_sw_fence, ptr %28, i32 0, i32 0, !dbg !2368
  %29 = load ptr, ptr %wq.addr, align 8, !dbg !2369
  call void @__add_wait_queue_entry_tail(ptr noundef %wait47, ptr noundef %29) #16, !dbg !2370
  store i32 1, ptr %pending, align 4, !dbg !2371
  br label %if.end50, !dbg !2372

if.else:                                          ; preds = %do.end35
  %30 = load ptr, ptr %wq.addr, align 8, !dbg !2373
  %31 = load ptr, ptr %signaler.addr, align 8, !dbg !2375
  %error48 = getelementptr inbounds %struct.i915_sw_fence, ptr %31, i32 0, i32 3, !dbg !2376
  %32 = load i32, ptr %error48, align 4, !dbg !2376
  %call49 = call i32 @i915_sw_fence_wake(ptr noundef %30, i32 noundef 0, i32 noundef %32, ptr noundef null) #16, !dbg !2377
  store i32 0, ptr %pending, align 4, !dbg !2378
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then46
  %33 = load ptr, ptr %signaler.addr, align 8, !dbg !2379
  %wait51 = getelementptr inbounds %struct.i915_sw_fence, ptr %33, i32 0, i32 0, !dbg !2380
  %lock52 = getelementptr inbounds %struct.wait_queue_head, ptr %wait51, i32 0, i32 0, !dbg !2381
  %34 = load i64, ptr %flags, align 8, !dbg !2382
  call void @spin_unlock_irqrestore(ptr noundef %lock52, i64 noundef %34) #16, !dbg !2383
  %35 = load i32, ptr %pending, align 4, !dbg !2384
  store i32 %35, ptr %retval, align 4, !dbg !2385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2385

cleanup:                                          ; preds = %if.end50, %if.end18, %if.then17, %if.then9, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !2386
  call void @llvm.lifetime.end.p0(i64 4, ptr %pending) #17, !dbg !2386
  %36 = load i32, ptr %retval, align 4, !dbg !2386
  ret i32 %36, !dbg !2386
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_sw_fence_await_sw_fence_gfp(ptr noundef %fence, ptr noundef %signaler, i32 noundef %gfp) #0 align 16 !dbg !2387 {
entry:
  %fence.addr = alloca ptr, align 8
  %signaler.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2391, metadata !DIExpression()), !dbg !2394
  store ptr %signaler, ptr %signaler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signaler.addr, metadata !2392, metadata !DIExpression()), !dbg !2395
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2393, metadata !DIExpression()), !dbg !2396
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2397
  %1 = load ptr, ptr %signaler.addr, align 8, !dbg !2398
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !2399
  %call = call i32 @__i915_sw_fence_await_sw_fence(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2) #16, !dbg !2400
  ret i32 %call, !dbg !2401
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_sw_fence_await_dma_fence(ptr noundef %fence, ptr noundef %dma, i64 noundef %timeout, i32 noundef %gfp) #0 align 16 !dbg !2402 {
entry:
  %retval = alloca i32, align 4
  %fence.addr = alloca ptr, align 8
  %dma.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %cb = alloca ptr, align 8
  %func = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %timer = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2406, metadata !DIExpression()), !dbg !2418
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !2407, metadata !DIExpression()), !dbg !2419
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !2408, metadata !DIExpression()), !dbg !2420
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2409, metadata !DIExpression()), !dbg !2421
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !2410, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #17, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %func, metadata !2411, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2426
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2412, metadata !DIExpression()), !dbg !2427
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2428
  call void @debug_fence_assert(ptr noundef %0) #16, !dbg !2429
  br label %do.body, !dbg !2430

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !2431
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %1) #16, !dbg !2431
  br i1 %call, label %if.then, label %if.end, !dbg !2434

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !2431

do.body1:                                         ; preds = %if.then
  call void @might_resched() #16, !dbg !2435
  br label %do.cond, !dbg !2435

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2435

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !2435

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2, !dbg !2434

do.cond2:                                         ; preds = %if.end
  br label %do.end3, !dbg !2434

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %dma.addr, align 8, !dbg !2437
  %call4 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %2) #16, !dbg !2439
  br i1 %call4, label %if.then5, label %if.end6, !dbg !2440

if.then5:                                         ; preds = %do.end3
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2441
  %4 = load ptr, ptr %dma.addr, align 8, !dbg !2443
  %error = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 7, !dbg !2444
  %5 = load i32, ptr %error, align 4, !dbg !2444
  call void @i915_sw_fence_set_error_once(ptr noundef %3, i32 noundef %5) #16, !dbg !2445
  store i32 0, ptr %retval, align 4, !dbg !2446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2446

if.end6:                                          ; preds = %do.end3
  %6 = load i64, ptr %timeout.addr, align 8, !dbg !2447
  %tobool = icmp ne i64 %6, 0, !dbg !2447
  %7 = zext i1 %tobool to i64, !dbg !2447
  %cond = select i1 %tobool, i64 128, i64 32, !dbg !2447
  %8 = load i32, ptr %gfp.addr, align 4, !dbg !2448
  %call7 = call noalias ptr @kmalloc(i64 noundef %cond, i32 noundef %8) #18, !dbg !2449
  store ptr %call7, ptr %cb, align 8, !dbg !2450
  %9 = load ptr, ptr %cb, align 8, !dbg !2451
  %tobool8 = icmp ne ptr %9, null, !dbg !2451
  br i1 %tobool8, label %if.end18, label %if.then9, !dbg !2453

if.then9:                                         ; preds = %if.end6
  %10 = load i32, ptr %gfp.addr, align 4, !dbg !2454
  %call10 = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %10) #16, !dbg !2457
  br i1 %call10, label %if.end12, label %if.then11, !dbg !2458

if.then11:                                        ; preds = %if.then9
  store i32 -12, ptr %retval, align 4, !dbg !2459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2459

if.end12:                                         ; preds = %if.then9
  %11 = load ptr, ptr %dma.addr, align 8, !dbg !2460
  %call13 = call i64 @dma_fence_wait(ptr noundef %11, i1 noundef zeroext false) #16, !dbg !2461
  %conv = trunc i64 %call13 to i32, !dbg !2461
  store i32 %conv, ptr %ret, align 4, !dbg !2462
  %12 = load i32, ptr %ret, align 4, !dbg !2463
  %tobool14 = icmp ne i32 %12, 0, !dbg !2463
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2465

if.then15:                                        ; preds = %if.end12
  %13 = load i32, ptr %ret, align 4, !dbg !2466
  store i32 %13, ptr %retval, align 4, !dbg !2467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2467

if.end16:                                         ; preds = %if.end12
  %14 = load ptr, ptr %fence.addr, align 8, !dbg !2468
  %15 = load ptr, ptr %dma.addr, align 8, !dbg !2469
  %error17 = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 7, !dbg !2470
  %16 = load i32, ptr %error17, align 4, !dbg !2470
  call void @i915_sw_fence_set_error_once(ptr noundef %14, i32 noundef %16) #16, !dbg !2471
  store i32 0, ptr %retval, align 4, !dbg !2472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2472

if.end18:                                         ; preds = %if.end6
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !2473
  %18 = load ptr, ptr %cb, align 8, !dbg !2474
  %fence19 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %18, i32 0, i32 1, !dbg !2475
  store ptr %17, ptr %fence19, align 8, !dbg !2476
  %19 = load ptr, ptr %fence.addr, align 8, !dbg !2477
  %call20 = call zeroext i1 @i915_sw_fence_await(ptr noundef %19) #16, !dbg !2478
  store ptr @dma_i915_sw_fence_wake, ptr %func, align 8, !dbg !2479
  %20 = load i64, ptr %timeout.addr, align 8, !dbg !2480
  %tobool21 = icmp ne i64 %20, 0, !dbg !2480
  br i1 %tobool21, label %if.then22, label %if.end29, !dbg !2481

if.then22:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %timer) #17, !dbg !2482
  call void @llvm.dbg.declare(metadata ptr %timer, metadata !2413, metadata !DIExpression()), !dbg !2483
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2416, metadata !DIExpression()), !dbg !2484
  %21 = load ptr, ptr %cb, align 8, !dbg !2484
  store ptr %21, ptr %__mptr, align 8, !dbg !2484
  %22 = load ptr, ptr %__mptr, align 8, !dbg !2484
  %add.ptr = getelementptr i8, ptr %22, i64 0, !dbg !2484
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2484
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2485
  %23 = load ptr, ptr %tmp, align 8, !dbg !2484
  store ptr %23, ptr %timer, align 8, !dbg !2483
  %24 = load ptr, ptr %dma.addr, align 8, !dbg !2486
  %call23 = call ptr @dma_fence_get(ptr noundef %24) #16, !dbg !2487
  %25 = load ptr, ptr %timer, align 8, !dbg !2488
  %dma24 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %25, i32 0, i32 1, !dbg !2489
  store ptr %call23, ptr %dma24, align 8, !dbg !2490
  %26 = load ptr, ptr %timer, align 8, !dbg !2491
  %work = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %26, i32 0, i32 3, !dbg !2492
  call void @init_irq_work(ptr noundef %work, ptr noundef @irq_i915_sw_fence_work) #16, !dbg !2493
  %27 = load ptr, ptr %timer, align 8, !dbg !2494
  %timer25 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %27, i32 0, i32 2, !dbg !2494
  call void @init_timer_key(ptr noundef %timer25, ptr noundef @timer_i915_sw_fence_wake, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16, !dbg !2494
  %28 = load ptr, ptr %timer, align 8, !dbg !2495
  %timer26 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %28, i32 0, i32 2, !dbg !2496
  %29 = load volatile i64, ptr @jiffies, align 64, !dbg !2497
  %30 = load i64, ptr %timeout.addr, align 8, !dbg !2498
  %add = add i64 %29, %30, !dbg !2499
  %call27 = call i64 @round_jiffies_up(i64 noundef %add) #16, !dbg !2500
  %call28 = call i32 @mod_timer(ptr noundef %timer26, i64 noundef %call27) #16, !dbg !2501
  store ptr @dma_i915_sw_fence_wake_timer, ptr %func, align 8, !dbg !2502
  call void @llvm.lifetime.end.p0(i64 8, ptr %timer) #17, !dbg !2503
  br label %if.end29, !dbg !2504

if.end29:                                         ; preds = %if.then22, %if.end18
  %31 = load ptr, ptr %dma.addr, align 8, !dbg !2505
  %32 = load ptr, ptr %cb, align 8, !dbg !2506
  %base = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %32, i32 0, i32 0, !dbg !2507
  %33 = load ptr, ptr %func, align 8, !dbg !2508
  %call30 = call i32 @dma_fence_add_callback(ptr noundef %31, ptr noundef %base, ptr noundef %33) #16, !dbg !2509
  store i32 %call30, ptr %ret, align 4, !dbg !2510
  %34 = load i32, ptr %ret, align 4, !dbg !2511
  %cmp = icmp eq i32 %34, 0, !dbg !2513
  br i1 %cmp, label %if.then32, label %if.else, !dbg !2514

if.then32:                                        ; preds = %if.end29
  store i32 1, ptr %ret, align 4, !dbg !2515
  br label %if.end38, !dbg !2517

if.else:                                          ; preds = %if.end29
  %35 = load ptr, ptr %func, align 8, !dbg !2518
  %36 = load ptr, ptr %dma.addr, align 8, !dbg !2520
  %37 = load ptr, ptr %cb, align 8, !dbg !2521
  %base33 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %37, i32 0, i32 0, !dbg !2522
  call void %35(ptr noundef %36, ptr noundef %base33) #16, !dbg !2518
  %38 = load i32, ptr %ret, align 4, !dbg !2523
  %cmp34 = icmp eq i32 %38, -2, !dbg !2525
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !2526

if.then36:                                        ; preds = %if.else
  store i32 0, ptr %ret, align 4, !dbg !2527
  br label %if.end37, !dbg !2528

if.end37:                                         ; preds = %if.then36, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then32
  %39 = load i32, ptr %ret, align 4, !dbg !2529
  store i32 %39, ptr %retval, align 4, !dbg !2530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2530

cleanup:                                          ; preds = %if.end38, %if.end16, %if.then15, %if.then11, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2531
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #17, !dbg !2531
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !2531
  %40 = load i32, ptr %retval, align 4, !dbg !2531
  ret i32 %40, !dbg !2531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gfpflags_allow_blocking(i32 noundef %gfp_flags) #2 align 16 !dbg !2532 {
entry:
  %gfp_flags.addr = alloca i32, align 4
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  %0 = load i32, ptr %gfp_flags.addr, align 4, !dbg !2540
  %and = and i32 %0, 1024, !dbg !2541
  %tobool = icmp ne i32 %and, 0, !dbg !2542
  %lnot = xor i1 %tobool, true, !dbg !2542
  %lnot1 = xor i1 %lnot, true, !dbg !2543
  ret i1 %lnot1, !dbg !2544
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !9 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !2545
  %0 = load ptr, ptr %tmp, align 8, !dbg !2545
  %call = call i32 %0() #16, !dbg !2547
  ret void, !dbg !2548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) #2 align 16 !dbg !2549 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2551, metadata !DIExpression()), !dbg !2552
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2553
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !2553
  %1 = ptrtoint ptr %flags to i64, !dbg !2553
  %cmp = icmp ne i64 %1, 0, !dbg !2553
  %conv = zext i1 %cmp to i32, !dbg !2553
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2553
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2553

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !2553
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !2553
  %4 = ptrtoint ptr %flags1 to i64, !dbg !2553
  %cmp2 = icmp ne i64 %4, 0, !dbg !2553
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2553

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2553
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !2553
  %6 = load i64, ptr %flags5, align 8, !dbg !2553
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2553
  br i1 %7, label %cond.true, label %cond.false, !dbg !2555

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !2553
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !2553
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #16, !dbg !2553
  br i1 %call, label %if.then, label %if.end, !dbg !2553

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !2553
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !2553
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #16, !dbg !2553
  br i1 %call9, label %if.then, label %if.end, !dbg !2555

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !2556
  br label %return, !dbg !2556

if.end:                                           ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !2557
  %ops = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1, !dbg !2559
  %11 = load ptr, ptr %ops, align 8, !dbg !2559
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4, !dbg !2560
  %12 = load ptr, ptr %signaled, align 8, !dbg !2560
  %tobool = icmp ne ptr %12, null, !dbg !2557
  br i1 %tobool, label %land.lhs.true11, label %if.end18, !dbg !2561

land.lhs.true11:                                  ; preds = %if.end
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !2562
  %ops12 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !2563
  %14 = load ptr, ptr %ops12, align 8, !dbg !2563
  %signaled13 = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 4, !dbg !2564
  %15 = load ptr, ptr %signaled13, align 8, !dbg !2564
  %16 = load ptr, ptr %fence.addr, align 8, !dbg !2565
  %call14 = call zeroext i1 %15(ptr noundef %16) #16, !dbg !2562
  br i1 %call14, label %if.then16, label %if.end18, !dbg !2566

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !2567
  %call17 = call i32 @dma_fence_signal(ptr noundef %17) #16, !dbg !2569
  store i1 true, ptr %retval, align 1, !dbg !2570
  br label %return, !dbg !2570

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  store i1 false, ptr %retval, align 1, !dbg !2571
  br label %return, !dbg !2571

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !2572
  ret i1 %18, !dbg !2572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_sw_fence_set_error_once(ptr noundef %fence, i32 noundef %error) #2 align 16 !dbg !2573 {
entry:
  %fence.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp4 = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2577, metadata !DIExpression()), !dbg !2587
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2578, metadata !DIExpression()), !dbg !2588
  %0 = load i32, ptr %error.addr, align 4, !dbg !2589
  %tobool = icmp ne i32 %0, 0, !dbg !2589
  %lnot = xor i1 %tobool, true, !dbg !2589
  %lnot1 = xor i1 %lnot, true, !dbg !2589
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2589
  %conv = sext i32 %lnot.ext to i64, !dbg !2589
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2589
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2589
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2590

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !2591
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2579, metadata !DIExpression()), !dbg !2591
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2591
  %error3 = getelementptr inbounds %struct.i915_sw_fence, ptr %1, i32 0, i32 3, !dbg !2591
  store ptr %error3, ptr %__ai_ptr, align 8, !dbg !2591
  br label %do.body, !dbg !2591

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2592

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2592

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !2591
  call void @instrument_atomic_read_write(ptr noundef %2, i64 noundef 4) #16, !dbg !2591
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2582, metadata !DIExpression()), !dbg !2594
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #17, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2584, metadata !DIExpression()), !dbg !2594
  store i32 0, ptr %__old, align 4, !dbg !2594
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #17, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2585, metadata !DIExpression()), !dbg !2594
  %3 = load i32, ptr %error.addr, align 4, !dbg !2594
  store i32 %3, ptr %__new, align 4, !dbg !2594
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2586, metadata !DIExpression()), !dbg !2594
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !2594
  store ptr %4, ptr %__ptr, align 8, !dbg !2594
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2594
  %6 = load i32, ptr %__new, align 4, !dbg !2594
  %7 = load i32, ptr %__old, align 4, !dbg !2594
  %8 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %6, i32 %7, ptr elementtype(i32) %5) #17, !dbg !2594, !srcloc !2595
  store i32 %8, ptr %__ret, align 4, !dbg !2594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !2594
  %9 = load i32, ptr %__ret, align 4, !dbg !2594
  store i32 %9, ptr %tmp4, align 4, !dbg !2594
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #17, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #17, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !2591
  %10 = load i32, ptr %tmp4, align 4, !dbg !2594
  store i32 %10, ptr %tmp, align 4, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !2596
  %11 = load i32, ptr %tmp, align 4, !dbg !2591
  br label %if.end, !dbg !2596

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !2597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2598 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2602, metadata !DIExpression()), !dbg !2607
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2603, metadata !DIExpression()), !dbg !2608
  %0 = load i64, ptr %size.addr, align 8, !dbg !2609
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2610
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2611

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2612
  %tobool = icmp ne i64 %2, 0, !dbg !2612
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2613

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !2614
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2604, metadata !DIExpression()), !dbg !2615
  %3 = load i64, ptr %size.addr, align 8, !dbg !2616
  %cmp = icmp ugt i64 %3, 8192, !dbg !2618
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2619

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2620
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2621
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !2622
  store ptr %call, ptr %retval, align 8, !dbg !2623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2623

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2624
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !2624
  store i32 %call2, ptr %index, align 4, !dbg !2625
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2626
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2627
  %9 = ptrtoint ptr %8 to i64, !dbg !2627
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !2628
  %idxprom = zext i32 %call3 to i64, !dbg !2629
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2629
  %10 = load i32, ptr %index, align 4, !dbg !2630
  %idxprom4 = zext i32 %10 to i64, !dbg !2629
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2629
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2629
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2631
  %13 = load i64, ptr %size.addr, align 8, !dbg !2632
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !2633
  store ptr %call6, ptr %retval, align 8, !dbg !2634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2634

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !2635
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2636
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2637
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !2638
  store ptr %call8, ptr %retval, align 8, !dbg !2639
  br label %return, !dbg !2639

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2640
  ret ptr %16, !dbg !2640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dma_fence_wait(ptr noundef %fence, i1 noundef zeroext %intr) #2 align 16 !dbg !2641 {
entry:
  %fence.addr = alloca ptr, align 8
  %intr.addr = alloca i8, align 1
  %ret = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2645, metadata !DIExpression()), !dbg !2648
  %frombool = zext i1 %intr to i8
  store i8 %frombool, ptr %intr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %intr.addr, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2647, metadata !DIExpression()), !dbg !2651
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2652
  %1 = load i8, ptr %intr.addr, align 1, !dbg !2653, !range !2654, !noundef !608
  %tobool = trunc i8 %1 to i1, !dbg !2653
  %call = call i64 @dma_fence_wait_timeout(ptr noundef %0, i1 noundef zeroext %tobool, i64 noundef 9223372036854775807) #16, !dbg !2655
  store i64 %call, ptr %ret, align 8, !dbg !2656
  %2 = load i64, ptr %ret, align 8, !dbg !2657
  %cmp = icmp slt i64 %2, 0, !dbg !2658
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2657

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %ret, align 8, !dbg !2659
  br label %cond.end, !dbg !2657

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2657

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %cond.false ], !dbg !2657
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !2660
  ret i64 %cond, !dbg !2661
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_i915_sw_fence_wake(ptr noundef %dma, ptr noundef %data) #0 align 16 !dbg !2662 {
entry:
  %dma.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !2664, metadata !DIExpression()), !dbg !2669
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2665, metadata !DIExpression()), !dbg !2670
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !2671
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !2666, metadata !DIExpression()), !dbg !2672
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2673
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2667, metadata !DIExpression()), !dbg !2673
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2673
  store ptr %0, ptr %__mptr, align 8, !dbg !2673
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2673
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2673
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2674
  %2 = load ptr, ptr %tmp, align 8, !dbg !2673
  store ptr %2, ptr %cb, align 8, !dbg !2672
  %3 = load ptr, ptr %cb, align 8, !dbg !2675
  %fence = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %3, i32 0, i32 1, !dbg !2676
  %4 = load ptr, ptr %fence, align 8, !dbg !2676
  %5 = load ptr, ptr %dma.addr, align 8, !dbg !2677
  %error = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 7, !dbg !2678
  %6 = load i32, ptr %error, align 4, !dbg !2678
  call void @i915_sw_fence_set_error_once(ptr noundef %4, i32 noundef %6) #16, !dbg !2679
  %7 = load ptr, ptr %cb, align 8, !dbg !2680
  %fence1 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %7, i32 0, i32 1, !dbg !2681
  %8 = load ptr, ptr %fence1, align 8, !dbg !2681
  call void @i915_sw_fence_complete(ptr noundef %8) #16, !dbg !2682
  %9 = load ptr, ptr %cb, align 8, !dbg !2683
  call void @kfree(ptr noundef %9) #16, !dbg !2684
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !2685
  ret void, !dbg !2685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #2 align 16 !dbg !2686 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2690, metadata !DIExpression()), !dbg !2691
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2692
  %tobool = icmp ne ptr %0, null, !dbg !2692
  br i1 %tobool, label %if.then, label %if.end, !dbg !2694

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !2695
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !2696
  call void @kref_get(ptr noundef %refcount) #16, !dbg !2697
  br label %if.end, !dbg !2697

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2698
  ret ptr %2, !dbg !2699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_irq_work(ptr noundef %work, ptr noundef %func) #2 align 16 !dbg !2700 {
entry:
  %work.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.irq_work, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2704, metadata !DIExpression()), !dbg !2706
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2705, metadata !DIExpression()), !dbg !2707
  %0 = load ptr, ptr %work.addr, align 8, !dbg !2708
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 32, i1 false), !dbg !2709
  %func1 = getelementptr inbounds %struct.irq_work, ptr %.compoundliteral, i32 0, i32 1, !dbg !2709
  %1 = load ptr, ptr %func.addr, align 8, !dbg !2709
  store ptr %1, ptr %func1, align 8, !dbg !2709
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !2709
  ret void, !dbg !2710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_i915_sw_fence_work(ptr noundef %wrk) #0 align 16 !dbg !2711 {
entry:
  %wrk.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %wrk, ptr %wrk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wrk.addr, metadata !2713, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !2720
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !2714, metadata !DIExpression()), !dbg !2721
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2722
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2715, metadata !DIExpression()), !dbg !2722
  %0 = load ptr, ptr %wrk.addr, align 8, !dbg !2722
  store ptr %0, ptr %__mptr, align 8, !dbg !2722
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2722
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !2722
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2723
  %2 = load ptr, ptr %tmp, align 8, !dbg !2722
  store ptr %2, ptr %cb, align 8, !dbg !2721
  %3 = load ptr, ptr %cb, align 8, !dbg !2724
  %timer = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %3, i32 0, i32 2, !dbg !2725
  %call = call i32 @timer_shutdown_sync(ptr noundef %timer) #16, !dbg !2726
  %4 = load ptr, ptr %cb, align 8, !dbg !2727
  %dma = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %4, i32 0, i32 1, !dbg !2728
  %5 = load ptr, ptr %dma, align 8, !dbg !2728
  call void @dma_fence_put(ptr noundef %5) #16, !dbg !2729
  br label %do.body, !dbg !2730

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #17, !dbg !2731
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !2717, metadata !DIExpression()), !dbg !2731
  %6 = load ptr, ptr %cb, align 8, !dbg !2731
  store ptr %6, ptr %___p, align 8, !dbg !2731
  %7 = load ptr, ptr %___p, align 8, !dbg !2732
  %tobool = icmp ne ptr %7, null, !dbg !2732
  br i1 %tobool, label %if.then, label %if.end, !dbg !2731

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !2734

do.body1:                                         ; preds = %if.then
  br label %do.cond, !dbg !2736

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2736

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %___p, align 8, !dbg !2734
  %rcu = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %8, i32 0, i32 4, !dbg !2734
  %9 = load ptr, ptr %___p, align 8, !dbg !2734
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %9) #16, !dbg !2734
  br label %if.end, !dbg !2734

if.end:                                           ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #17, !dbg !2730
  br label %do.cond2, !dbg !2731

do.cond2:                                         ; preds = %if.end
  br label %do.end3, !dbg !2731

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !2738
  ret void, !dbg !2738
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2739 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timer_i915_sw_fence_wake(ptr noundef %t) #0 align 16 !dbg !2742 {
entry:
  %t.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2744, metadata !DIExpression()), !dbg !2754
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !2755
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !2745, metadata !DIExpression()), !dbg !2756
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2746, metadata !DIExpression()), !dbg !2757
  %0 = load ptr, ptr %t.addr, align 8, !dbg !2757
  store ptr %0, ptr %__mptr, align 8, !dbg !2757
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2757
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !2757
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2758
  %2 = load ptr, ptr %tmp, align 8, !dbg !2757
  store ptr %2, ptr %cb, align 8, !dbg !2756
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #17, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !2748, metadata !DIExpression()), !dbg !2760
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !2761
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2749, metadata !DIExpression()), !dbg !2761
  %3 = load ptr, ptr %cb, align 8, !dbg !2761
  %base = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %3, i32 0, i32 0, !dbg !2761
  %fence1 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %base, i32 0, i32 1, !dbg !2761
  store ptr %fence1, ptr %__ai_ptr, align 8, !dbg !2761
  br label %do.body, !dbg !2761

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2762

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2762

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !2761
  call void @instrument_atomic_read_write(ptr noundef %4, i64 noundef 8) #16, !dbg !2761
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !2764
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2752, metadata !DIExpression()), !dbg !2764
  store ptr null, ptr %__ret, align 8, !dbg !2764
  %5 = load ptr, ptr %__ret, align 8, !dbg !2764
  %6 = load ptr, ptr %__ai_ptr, align 8, !dbg !2764
  %7 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %6, ptr %5, ptr elementtype(ptr) %6) #17, !dbg !2764, !srcloc !2765
  store ptr %7, ptr %__ret, align 8, !dbg !2764
  %8 = load ptr, ptr %__ret, align 8, !dbg !2764
  store ptr %8, ptr %tmp3, align 8, !dbg !2764
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !2761
  %9 = load ptr, ptr %tmp3, align 8, !dbg !2764
  store ptr %9, ptr %tmp2, align 8, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !2766
  %10 = load ptr, ptr %tmp2, align 8, !dbg !2761
  store ptr %10, ptr %fence, align 8, !dbg !2767
  %11 = load ptr, ptr %fence, align 8, !dbg !2768
  %tobool = icmp ne ptr %11, null, !dbg !2768
  br i1 %tobool, label %if.end, label %if.then, !dbg !2770

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2771

if.end:                                           ; preds = %do.end
  br label %do.body4, !dbg !2772

do.body4:                                         ; preds = %if.end
  br label %do.cond5, !dbg !2774

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2774

do.end6:                                          ; preds = %do.cond5
  %12 = load ptr, ptr %cb, align 8, !dbg !2772
  %dma = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %12, i32 0, i32 1, !dbg !2772
  %13 = load ptr, ptr %dma, align 8, !dbg !2772
  %ops = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !2772
  %14 = load ptr, ptr %ops, align 8, !dbg !2772
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 1, !dbg !2772
  %15 = load ptr, ptr %get_driver_name, align 8, !dbg !2772
  %16 = load ptr, ptr %cb, align 8, !dbg !2772
  %dma8 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %16, i32 0, i32 1, !dbg !2772
  %17 = load ptr, ptr %dma8, align 8, !dbg !2772
  %call = call ptr %15(ptr noundef %17) #16, !dbg !2772
  %18 = load ptr, ptr %cb, align 8, !dbg !2772
  %dma9 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %18, i32 0, i32 1, !dbg !2772
  %19 = load ptr, ptr %dma9, align 8, !dbg !2772
  %ops10 = getelementptr inbounds %struct.dma_fence, ptr %19, i32 0, i32 1, !dbg !2772
  %20 = load ptr, ptr %ops10, align 8, !dbg !2772
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %20, i32 0, i32 2, !dbg !2772
  %21 = load ptr, ptr %get_timeline_name, align 8, !dbg !2772
  %22 = load ptr, ptr %cb, align 8, !dbg !2772
  %dma11 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %22, i32 0, i32 1, !dbg !2772
  %23 = load ptr, ptr %dma11, align 8, !dbg !2772
  %call12 = call ptr %21(ptr noundef %23) #16, !dbg !2772
  %24 = load ptr, ptr %cb, align 8, !dbg !2772
  %dma13 = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %24, i32 0, i32 1, !dbg !2772
  %25 = load ptr, ptr %dma13, align 8, !dbg !2772
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %25, i32 0, i32 4, !dbg !2772
  %26 = load i64, ptr %seqno, align 8, !dbg !2772
  %27 = load ptr, ptr %fence, align 8, !dbg !2772
  %call14 = call ptr @i915_sw_fence_debug_hint(ptr noundef %27) #16, !dbg !2772
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %call, ptr noundef %call12, i64 noundef %26, ptr noundef %call14) #20, !dbg !2772
  store i32 %call15, ptr %tmp7, align 4, !dbg !2774
  %28 = load i32, ptr %tmp7, align 4, !dbg !2772
  %29 = load ptr, ptr %fence, align 8, !dbg !2776
  call void @i915_sw_fence_set_error_once(ptr noundef %29, i32 noundef -110) #16, !dbg !2777
  %30 = load ptr, ptr %fence, align 8, !dbg !2778
  call void @i915_sw_fence_complete(ptr noundef %30) #16, !dbg !2779
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2780
  br label %cleanup, !dbg !2780

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #17, !dbg !2780
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !2780
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2780

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2781 dso_local i32 @mod_timer(ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2784 dso_local i64 @round_jiffies_up(i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_i915_sw_fence_wake_timer(ptr noundef %dma, ptr noundef %data) #0 align 16 !dbg !2787 {
entry:
  %dma.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !2789, metadata !DIExpression()), !dbg !2799
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2790, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !2801
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !2791, metadata !DIExpression()), !dbg !2802
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2803
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2792, metadata !DIExpression()), !dbg !2803
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2803
  store ptr %0, ptr %__mptr, align 8, !dbg !2803
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2803
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2803
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2803
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2804
  %2 = load ptr, ptr %tmp, align 8, !dbg !2803
  store ptr %2, ptr %cb, align 8, !dbg !2802
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #17, !dbg !2805
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !2794, metadata !DIExpression()), !dbg !2806
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #17, !dbg !2807
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !2795, metadata !DIExpression()), !dbg !2807
  %3 = load ptr, ptr %cb, align 8, !dbg !2807
  %base = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %3, i32 0, i32 0, !dbg !2807
  %fence1 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %base, i32 0, i32 1, !dbg !2807
  store ptr %fence1, ptr %__ai_ptr, align 8, !dbg !2807
  br label %do.body, !dbg !2807

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2808

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2808

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !2807
  call void @instrument_atomic_read_write(ptr noundef %4, i64 noundef 8) #16, !dbg !2807
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2797, metadata !DIExpression()), !dbg !2810
  store ptr null, ptr %__ret, align 8, !dbg !2810
  %5 = load ptr, ptr %__ret, align 8, !dbg !2810
  %6 = load ptr, ptr %__ai_ptr, align 8, !dbg !2810
  %7 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %6, ptr %5, ptr elementtype(ptr) %6) #17, !dbg !2810, !srcloc !2811
  store ptr %7, ptr %__ret, align 8, !dbg !2810
  %8 = load ptr, ptr %__ret, align 8, !dbg !2810
  store ptr %8, ptr %tmp3, align 8, !dbg !2810
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !2807
  %9 = load ptr, ptr %tmp3, align 8, !dbg !2810
  store ptr %9, ptr %tmp2, align 8, !dbg !2807
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #17, !dbg !2812
  %10 = load ptr, ptr %tmp2, align 8, !dbg !2807
  store ptr %10, ptr %fence, align 8, !dbg !2813
  %11 = load ptr, ptr %fence, align 8, !dbg !2814
  %tobool = icmp ne ptr %11, null, !dbg !2814
  br i1 %tobool, label %if.then, label %if.end, !dbg !2816

if.then:                                          ; preds = %do.end
  %12 = load ptr, ptr %fence, align 8, !dbg !2817
  %13 = load ptr, ptr %dma.addr, align 8, !dbg !2819
  %error = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 7, !dbg !2820
  %14 = load i32, ptr %error, align 4, !dbg !2820
  call void @i915_sw_fence_set_error_once(ptr noundef %12, i32 noundef %14) #16, !dbg !2821
  %15 = load ptr, ptr %fence, align 8, !dbg !2822
  call void @i915_sw_fence_complete(ptr noundef %15) #16, !dbg !2823
  br label %if.end, !dbg !2824

if.end:                                           ; preds = %if.then, %do.end
  %16 = load ptr, ptr %cb, align 8, !dbg !2825
  %work = getelementptr inbounds %struct.i915_sw_dma_fence_cb_timer, ptr %16, i32 0, i32 3, !dbg !2826
  %call = call zeroext i1 @irq_work_queue(ptr noundef %work) #16, !dbg !2827
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #17, !dbg !2828
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !2828
  ret void, !dbg !2828
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2829 dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__i915_sw_fence_await_dma_fence(ptr noundef %fence, ptr noundef %dma, ptr noundef %cb) #0 align 16 !dbg !2832 {
entry:
  %retval = alloca i32, align 4
  %fence.addr = alloca ptr, align 8
  %dma.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2836, metadata !DIExpression()), !dbg !2840
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !2837, metadata !DIExpression()), !dbg !2841
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !2838, metadata !DIExpression()), !dbg !2842
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2843
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2839, metadata !DIExpression()), !dbg !2844
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2845
  call void @debug_fence_assert(ptr noundef %0) #16, !dbg !2846
  %1 = load ptr, ptr %dma.addr, align 8, !dbg !2847
  %call = call zeroext i1 @dma_fence_is_signaled(ptr noundef %1) #16, !dbg !2849
  br i1 %call, label %if.then, label %if.end, !dbg !2850

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !2851
  %3 = load ptr, ptr %dma.addr, align 8, !dbg !2853
  %error = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 7, !dbg !2854
  %4 = load i32, ptr %error, align 4, !dbg !2854
  call void @i915_sw_fence_set_error_once(ptr noundef %2, i32 noundef %4) #16, !dbg !2855
  store i32 0, ptr %retval, align 4, !dbg !2856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2856

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2857
  %6 = load ptr, ptr %cb.addr, align 8, !dbg !2858
  %fence1 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %6, i32 0, i32 1, !dbg !2859
  store ptr %5, ptr %fence1, align 8, !dbg !2860
  %7 = load ptr, ptr %fence.addr, align 8, !dbg !2861
  %call2 = call zeroext i1 @i915_sw_fence_await(ptr noundef %7) #16, !dbg !2862
  store i32 1, ptr %ret, align 4, !dbg !2863
  %8 = load ptr, ptr %dma.addr, align 8, !dbg !2864
  %9 = load ptr, ptr %cb.addr, align 8, !dbg !2866
  %base = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %9, i32 0, i32 0, !dbg !2867
  %call3 = call i32 @dma_fence_add_callback(ptr noundef %8, ptr noundef %base, ptr noundef @__dma_i915_sw_fence_wake) #16, !dbg !2868
  %tobool = icmp ne i32 %call3, 0, !dbg !2868
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !2869

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %dma.addr, align 8, !dbg !2870
  %11 = load ptr, ptr %cb.addr, align 8, !dbg !2872
  %base5 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %11, i32 0, i32 0, !dbg !2873
  call void @__dma_i915_sw_fence_wake(ptr noundef %10, ptr noundef %base5) #16, !dbg !2874
  store i32 0, ptr %ret, align 4, !dbg !2875
  br label %if.end6, !dbg !2876

if.end6:                                          ; preds = %if.then4, %if.end
  %12 = load i32, ptr %ret, align 4, !dbg !2877
  store i32 %12, ptr %retval, align 4, !dbg !2878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2878

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2879
  %13 = load i32, ptr %retval, align 4, !dbg !2879
  ret i32 %13, !dbg !2879
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__dma_i915_sw_fence_wake(ptr noundef %dma, ptr noundef %data) #0 align 16 !dbg !2880 {
entry:
  %dma.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %cb = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !2882, metadata !DIExpression()), !dbg !2887
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2883, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #17, !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !2884, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2885, metadata !DIExpression()), !dbg !2891
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2891
  store ptr %0, ptr %__mptr, align 8, !dbg !2891
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2891
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2891
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2891
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2892
  %2 = load ptr, ptr %tmp, align 8, !dbg !2891
  store ptr %2, ptr %cb, align 8, !dbg !2890
  %3 = load ptr, ptr %cb, align 8, !dbg !2893
  %fence = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %3, i32 0, i32 1, !dbg !2894
  %4 = load ptr, ptr %fence, align 8, !dbg !2894
  %5 = load ptr, ptr %dma.addr, align 8, !dbg !2895
  %error = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 7, !dbg !2896
  %6 = load i32, ptr %error, align 4, !dbg !2896
  call void @i915_sw_fence_set_error_once(ptr noundef %4, i32 noundef %6) #16, !dbg !2897
  %7 = load ptr, ptr %cb, align 8, !dbg !2898
  %fence1 = getelementptr inbounds %struct.i915_sw_dma_fence_cb, ptr %7, i32 0, i32 1, !dbg !2899
  %8 = load ptr, ptr %fence1, align 8, !dbg !2899
  call void @i915_sw_fence_complete(ptr noundef %8) #16, !dbg !2900
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #17, !dbg !2901
  ret void, !dbg !2901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_sw_fence_await_reservation(ptr noundef %fence, ptr noundef %resv, i1 noundef zeroext %write, i64 noundef %timeout, i32 noundef %gfp) #0 align 16 !dbg !2902 {
entry:
  %fence.addr = alloca ptr, align 8
  %resv.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %timeout.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %cursor = alloca %struct.dma_resv_iter, align 8
  %f = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pending = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !2926, metadata !DIExpression()), !dbg !2945
  store ptr %resv, ptr %resv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resv.addr, metadata !2927, metadata !DIExpression()), !dbg !2946
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !2928, metadata !DIExpression()), !dbg !2947
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !2929, metadata !DIExpression()), !dbg !2948
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2930, metadata !DIExpression()), !dbg !2949
  call void @llvm.lifetime.start.p0(i64 48, ptr %cursor) #17, !dbg !2950
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !2931, metadata !DIExpression()), !dbg !2951
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #17, !dbg !2952
  call void @llvm.dbg.declare(metadata ptr %f, metadata !2942, metadata !DIExpression()), !dbg !2953
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2943, metadata !DIExpression()), !dbg !2955
  store i32 0, ptr %ret, align 4, !dbg !2955
  call void @llvm.lifetime.start.p0(i64 4, ptr %pending) #17, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !2944, metadata !DIExpression()), !dbg !2956
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !2957
  call void @debug_fence_assert(ptr noundef %0) #16, !dbg !2958
  br label %do.body, !dbg !2959

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !2960
  %call = call zeroext i1 @gfpflags_allow_blocking(i32 noundef %1) #16, !dbg !2960
  br i1 %call, label %if.then, label %if.end, !dbg !2963

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !2960

do.body1:                                         ; preds = %if.then
  call void @might_resched() #16, !dbg !2964
  br label %do.cond, !dbg !2964

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2964

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !2964

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2, !dbg !2963

do.cond2:                                         ; preds = %if.end
  br label %do.end3, !dbg !2963

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %resv.addr, align 8, !dbg !2966
  %3 = load i8, ptr %write.addr, align 1, !dbg !2967, !range !2654, !noundef !608
  %tobool = trunc i8 %3 to i1, !dbg !2967
  %call4 = call i32 @dma_resv_usage_rw(i1 noundef zeroext %tobool) #16, !dbg !2968
  call void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %2, i32 noundef %call4) #16, !dbg !2969
  %call5 = call ptr @dma_resv_iter_first_unlocked(ptr noundef %cursor) #16, !dbg !2970
  store ptr %call5, ptr %f, align 8, !dbg !2970
  br label %for.cond, !dbg !2970

for.cond:                                         ; preds = %for.inc, %do.end3
  %4 = load ptr, ptr %f, align 8, !dbg !2972
  %tobool6 = icmp ne ptr %4, null, !dbg !2970
  br i1 %tobool6, label %for.body, label %for.end, !dbg !2970

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !2974
  %6 = load ptr, ptr %f, align 8, !dbg !2976
  %7 = load i64, ptr %timeout.addr, align 8, !dbg !2977
  %8 = load i32, ptr %gfp.addr, align 4, !dbg !2978
  %call7 = call i32 @i915_sw_fence_await_dma_fence(ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #16, !dbg !2979
  store i32 %call7, ptr %pending, align 4, !dbg !2980
  %9 = load i32, ptr %pending, align 4, !dbg !2981
  %cmp = icmp slt i32 %9, 0, !dbg !2983
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !2984

if.then8:                                         ; preds = %for.body
  %10 = load i32, ptr %pending, align 4, !dbg !2985
  store i32 %10, ptr %ret, align 4, !dbg !2987
  br label %for.end, !dbg !2988

if.end9:                                          ; preds = %for.body
  %11 = load i32, ptr %pending, align 4, !dbg !2989
  %12 = load i32, ptr %ret, align 4, !dbg !2990
  %or = or i32 %12, %11, !dbg !2990
  store i32 %or, ptr %ret, align 4, !dbg !2990
  br label %for.inc, !dbg !2991

for.inc:                                          ; preds = %if.end9
  %call10 = call ptr @dma_resv_iter_next_unlocked(ptr noundef %cursor) #16, !dbg !2972
  store ptr %call10, ptr %f, align 8, !dbg !2972
  br label %for.cond, !dbg !2972, !llvm.loop !2992

for.end:                                          ; preds = %if.then8, %for.cond
  call void @dma_resv_iter_end(ptr noundef %cursor) #16, !dbg !2994
  %13 = load i32, ptr %ret, align 4, !dbg !2995
  call void @llvm.lifetime.end.p0(i64 4, ptr %pending) #17, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #17, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 48, ptr %cursor) #17, !dbg !2996
  ret i32 %13, !dbg !2997
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %obj, i32 noundef %usage) #2 align 16 !dbg !2998 {
entry:
  %cursor.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !3003, metadata !DIExpression()), !dbg !3006
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !3004, metadata !DIExpression()), !dbg !3007
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !3005, metadata !DIExpression()), !dbg !3008
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !3009
  %1 = load ptr, ptr %cursor.addr, align 8, !dbg !3010
  %obj1 = getelementptr inbounds %struct.dma_resv_iter, ptr %1, i32 0, i32 0, !dbg !3011
  store ptr %0, ptr %obj1, align 8, !dbg !3012
  %2 = load i32, ptr %usage.addr, align 4, !dbg !3013
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !3014
  %usage2 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 1, !dbg !3015
  store i32 %2, ptr %usage2, align 8, !dbg !3016
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !3017
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 2, !dbg !3018
  store ptr null, ptr %fence, align 8, !dbg !3019
  ret void, !dbg !3020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_usage_rw(i1 noundef zeroext %write) #2 align 16 !dbg !3021 {
entry:
  %write.addr = alloca i8, align 1
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !3025, metadata !DIExpression()), !dbg !3026
  %0 = load i8, ptr %write.addr, align 1, !dbg !3027, !range !2654, !noundef !608
  %tobool = trunc i8 %0 to i1, !dbg !3027
  %1 = zext i1 %tobool to i64, !dbg !3027
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !3027
  ret i32 %cond, !dbg !3028
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3029 dso_local ptr @dma_resv_iter_first_unlocked(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3032 dso_local ptr @dma_resv_iter_next_unlocked(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_iter_end(ptr noundef %cursor) #2 align 16 !dbg !3033 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !3039
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 2, !dbg !3040
  %1 = load ptr, ptr %fence, align 8, !dbg !3040
  call void @dma_fence_put(ptr noundef %1) #16, !dbg !3041
  ret void, !dbg !3042
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !3043 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3047, metadata !DIExpression()), !dbg !3048
  br label %do.body, !dbg !3049

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3050

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3052
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !3053
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3054
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #16, !dbg !3055
  ret i1 %call, !dbg !3056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_fence_set_state(ptr noundef %fence, i32 noundef %old, i32 noundef %new) #2 align 16 !dbg !3057 {
entry:
  %fence.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3061, metadata !DIExpression()), !dbg !3064
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3062, metadata !DIExpression()), !dbg !3065
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3063, metadata !DIExpression()), !dbg !3066
  ret void, !dbg !3067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__i915_sw_fence_notify(ptr noundef %fence, i32 noundef %state) #0 align 16 !dbg !3068 {
entry:
  %fence.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3070, metadata !DIExpression()), !dbg !3072
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3071, metadata !DIExpression()), !dbg !3073
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !3074
  %fn = getelementptr inbounds %struct.i915_sw_fence, ptr %0, i32 0, i32 1, !dbg !3075
  %1 = load ptr, ptr %fn, align 8, !dbg !3075
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !3076
  %3 = load i32, ptr %state.addr, align 4, !dbg !3077
  %call = call i32 %1(ptr noundef %2, i32 noundef %3) #16, !dbg !3074
  ret i32 %call, !dbg !3078
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__i915_sw_fence_wake_up_all(ptr noundef %fence, ptr noundef %continuation) #0 align 16 !dbg !3079 {
entry:
  %fence.addr = alloca ptr, align 8
  %continuation.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %next = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %extra = alloca %struct.list_head, align 8
  %__mptr30 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  %__mptr35 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  %wake_flags = alloca i32, align 4
  %__mptr56 = alloca ptr, align 8
  %tmp59 = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3081, metadata !DIExpression()), !dbg !3116
  store ptr %continuation, ptr %continuation.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %continuation.addr, metadata !3082, metadata !DIExpression()), !dbg !3117
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #17, !dbg !3118
  call void @llvm.dbg.declare(metadata ptr %x, metadata !3083, metadata !DIExpression()), !dbg !3119
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !3120
  %wait = getelementptr inbounds %struct.i915_sw_fence, ptr %0, i32 0, i32 0, !dbg !3121
  store ptr %wait, ptr %x, align 8, !dbg !3119
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #17, !dbg !3122
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3085, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #17, !dbg !3122
  call void @llvm.dbg.declare(metadata ptr %next, metadata !3086, metadata !DIExpression()), !dbg !3124
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !3125
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3087, metadata !DIExpression()), !dbg !3126
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !3127
  call void @debug_fence_deactivate(ptr noundef %1) #16, !dbg !3128
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !3129
  %pending = getelementptr inbounds %struct.i915_sw_fence, ptr %2, i32 0, i32 2, !dbg !3130
  call void @atomic_set_release(ptr noundef %pending, i32 noundef -1) #16, !dbg !3131
  br label %do.body, !dbg !3132

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3133

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !3134
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3088, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !3134
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3092, metadata !DIExpression()), !dbg !3134
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3134
  %conv = zext i1 %cmp to i32, !dbg !3134
  store i32 1, ptr %tmp, align 4, !dbg !3134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !3135
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !3135
  %3 = load i32, ptr %tmp, align 4, !dbg !3134
  %4 = load ptr, ptr %x, align 8, !dbg !3135
  %lock = getelementptr inbounds %struct.wait_queue_head, ptr %4, i32 0, i32 0, !dbg !3135
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !3135
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !3135
  store i64 %call2, ptr %flags, align 8, !dbg !3135
  br label %do.cond, !dbg !3135

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3135

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !3133

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3133

do.end4:                                          ; preds = %do.cond3
  %5 = load ptr, ptr %continuation.addr, align 8, !dbg !3136
  %tobool = icmp ne ptr %5, null, !dbg !3136
  br i1 %tobool, label %if.then, label %if.else27, !dbg !3137

if.then:                                          ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !3138
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3093, metadata !DIExpression()), !dbg !3138
  %6 = load ptr, ptr %x, align 8, !dbg !3138
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %6, i32 0, i32 1, !dbg !3138
  %next5 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 0, !dbg !3138
  %7 = load ptr, ptr %next5, align 8, !dbg !3138
  store ptr %7, ptr %__mptr, align 8, !dbg !3138
  %8 = load ptr, ptr %__mptr, align 8, !dbg !3138
  %add.ptr = getelementptr i8, ptr %8, i64 -24, !dbg !3138
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !3138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !3139
  %9 = load ptr, ptr %tmp6, align 8, !dbg !3138
  store ptr %9, ptr %pos, align 8, !dbg !3139
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #17, !dbg !3140
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !3098, metadata !DIExpression()), !dbg !3140
  %10 = load ptr, ptr %pos, align 8, !dbg !3140
  %entry8 = getelementptr inbounds %struct.wait_queue_entry, ptr %10, i32 0, i32 3, !dbg !3140
  %next9 = getelementptr inbounds %struct.list_head, ptr %entry8, i32 0, i32 0, !dbg !3140
  %11 = load ptr, ptr %next9, align 8, !dbg !3140
  store ptr %11, ptr %__mptr7, align 8, !dbg !3140
  %12 = load ptr, ptr %__mptr7, align 8, !dbg !3140
  %add.ptr11 = getelementptr i8, ptr %12, i64 -24, !dbg !3140
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !3140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #17, !dbg !3139
  %13 = load ptr, ptr %tmp10, align 8, !dbg !3140
  store ptr %13, ptr %next, align 8, !dbg !3139
  br label %for.cond, !dbg !3139

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load ptr, ptr %pos, align 8, !dbg !3141
  %entry12 = getelementptr inbounds %struct.wait_queue_entry, ptr %14, i32 0, i32 3, !dbg !3141
  %15 = load ptr, ptr %x, align 8, !dbg !3141
  %head13 = getelementptr inbounds %struct.wait_queue_head, ptr %15, i32 0, i32 1, !dbg !3141
  %cmp14 = icmp eq ptr %entry12, %head13, !dbg !3141
  %lnot = xor i1 %cmp14, true, !dbg !3141
  br i1 %lnot, label %for.body, label %for.end, !dbg !3139

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pos, align 8, !dbg !3142
  %flags16 = getelementptr inbounds %struct.wait_queue_entry, ptr %16, i32 0, i32 0, !dbg !3145
  %17 = load i32, ptr %flags16, align 8, !dbg !3145
  %conv17 = zext i32 %17 to i64, !dbg !3142
  %and = and i64 %conv17, 2147483648, !dbg !3146
  %tobool18 = icmp ne i64 %and, 0, !dbg !3146
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !3147

if.then19:                                        ; preds = %for.body
  %18 = load ptr, ptr %pos, align 8, !dbg !3148
  %entry20 = getelementptr inbounds %struct.wait_queue_entry, ptr %18, i32 0, i32 3, !dbg !3149
  %19 = load ptr, ptr %continuation.addr, align 8, !dbg !3150
  call void @list_move_tail(ptr noundef %entry20, ptr noundef %19) #16, !dbg !3151
  br label %if.end, !dbg !3151

if.else:                                          ; preds = %for.body
  %20 = load ptr, ptr %pos, align 8, !dbg !3152
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %20, i32 0, i32 2, !dbg !3153
  %21 = load ptr, ptr %func, align 8, !dbg !3153
  %22 = load ptr, ptr %pos, align 8, !dbg !3154
  %23 = load ptr, ptr %continuation.addr, align 8, !dbg !3155
  %call21 = call i32 %21(ptr noundef %22, i32 noundef 3, i32 noundef 0, ptr noundef %23) #16, !dbg !3152
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  br label %for.inc, !dbg !3156

for.inc:                                          ; preds = %if.end
  %24 = load ptr, ptr %next, align 8, !dbg !3141
  store ptr %24, ptr %pos, align 8, !dbg !3141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #17, !dbg !3157
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !3100, metadata !DIExpression()), !dbg !3157
  %25 = load ptr, ptr %next, align 8, !dbg !3157
  %entry23 = getelementptr inbounds %struct.wait_queue_entry, ptr %25, i32 0, i32 3, !dbg !3157
  %next24 = getelementptr inbounds %struct.list_head, ptr %entry23, i32 0, i32 0, !dbg !3157
  %26 = load ptr, ptr %next24, align 8, !dbg !3157
  store ptr %26, ptr %__mptr22, align 8, !dbg !3157
  %27 = load ptr, ptr %__mptr22, align 8, !dbg !3157
  %add.ptr26 = getelementptr i8, ptr %27, i64 -24, !dbg !3157
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !3157
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #17, !dbg !3141
  %28 = load ptr, ptr %tmp25, align 8, !dbg !3157
  store ptr %28, ptr %next, align 8, !dbg !3141
  br label %for.cond, !dbg !3141, !llvm.loop !3158

for.end:                                          ; preds = %for.cond
  br label %if.end69, !dbg !3160

if.else27:                                        ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 16, ptr %extra) #17, !dbg !3161
  call void @llvm.dbg.declare(metadata ptr %extra, metadata !3103, metadata !DIExpression()), !dbg !3161
  %next28 = getelementptr inbounds %struct.list_head, ptr %extra, i32 0, i32 0, !dbg !3161
  store ptr %extra, ptr %next28, align 8, !dbg !3161
  %prev = getelementptr inbounds %struct.list_head, ptr %extra, i32 0, i32 1, !dbg !3161
  store ptr %extra, ptr %prev, align 8, !dbg !3161
  br label %do.body29, !dbg !3162

do.body29:                                        ; preds = %do.cond67, %if.else27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr30) #17, !dbg !3163
  call void @llvm.dbg.declare(metadata ptr %__mptr30, metadata !3105, metadata !DIExpression()), !dbg !3163
  %29 = load ptr, ptr %x, align 8, !dbg !3163
  %head31 = getelementptr inbounds %struct.wait_queue_head, ptr %29, i32 0, i32 1, !dbg !3163
  %next32 = getelementptr inbounds %struct.list_head, ptr %head31, i32 0, i32 0, !dbg !3163
  %30 = load ptr, ptr %next32, align 8, !dbg !3163
  store ptr %30, ptr %__mptr30, align 8, !dbg !3163
  %31 = load ptr, ptr %__mptr30, align 8, !dbg !3163
  %add.ptr34 = getelementptr i8, ptr %31, i64 -24, !dbg !3163
  store ptr %add.ptr34, ptr %tmp33, align 8, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr30) #17, !dbg !3164
  %32 = load ptr, ptr %tmp33, align 8, !dbg !3163
  store ptr %32, ptr %pos, align 8, !dbg !3164
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr35) #17, !dbg !3165
  call void @llvm.dbg.declare(metadata ptr %__mptr35, metadata !3109, metadata !DIExpression()), !dbg !3165
  %33 = load ptr, ptr %pos, align 8, !dbg !3165
  %entry36 = getelementptr inbounds %struct.wait_queue_entry, ptr %33, i32 0, i32 3, !dbg !3165
  %next37 = getelementptr inbounds %struct.list_head, ptr %entry36, i32 0, i32 0, !dbg !3165
  %34 = load ptr, ptr %next37, align 8, !dbg !3165
  store ptr %34, ptr %__mptr35, align 8, !dbg !3165
  %35 = load ptr, ptr %__mptr35, align 8, !dbg !3165
  %add.ptr39 = getelementptr i8, ptr %35, i64 -24, !dbg !3165
  store ptr %add.ptr39, ptr %tmp38, align 8, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr35) #17, !dbg !3164
  %36 = load ptr, ptr %tmp38, align 8, !dbg !3165
  store ptr %36, ptr %next, align 8, !dbg !3164
  br label %for.cond40, !dbg !3164

for.cond40:                                       ; preds = %for.inc55, %do.body29
  %37 = load ptr, ptr %pos, align 8, !dbg !3166
  %entry41 = getelementptr inbounds %struct.wait_queue_entry, ptr %37, i32 0, i32 3, !dbg !3166
  %38 = load ptr, ptr %x, align 8, !dbg !3166
  %head42 = getelementptr inbounds %struct.wait_queue_head, ptr %38, i32 0, i32 1, !dbg !3166
  %cmp43 = icmp eq ptr %entry41, %head42, !dbg !3166
  %lnot45 = xor i1 %cmp43, true, !dbg !3166
  br i1 %lnot45, label %for.body46, label %for.end61, !dbg !3164

for.body46:                                       ; preds = %for.cond40
  call void @llvm.lifetime.start.p0(i64 4, ptr %wake_flags) #17, !dbg !3167
  call void @llvm.dbg.declare(metadata ptr %wake_flags, metadata !3111, metadata !DIExpression()), !dbg !3168
  store i32 0, ptr %wake_flags, align 4, !dbg !3169
  %39 = load ptr, ptr %pos, align 8, !dbg !3170
  %flags47 = getelementptr inbounds %struct.wait_queue_entry, ptr %39, i32 0, i32 0, !dbg !3172
  %40 = load i32, ptr %flags47, align 8, !dbg !3172
  %conv48 = zext i32 %40 to i64, !dbg !3170
  %and49 = and i64 %conv48, 2147483648, !dbg !3173
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3173
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !3174

if.then51:                                        ; preds = %for.body46
  %41 = load ptr, ptr %fence.addr, align 8, !dbg !3175
  %error = getelementptr inbounds %struct.i915_sw_fence, ptr %41, i32 0, i32 3, !dbg !3176
  %42 = load i32, ptr %error, align 4, !dbg !3176
  store i32 %42, ptr %wake_flags, align 4, !dbg !3177
  br label %if.end52, !dbg !3178

if.end52:                                         ; preds = %if.then51, %for.body46
  %43 = load ptr, ptr %pos, align 8, !dbg !3179
  %func53 = getelementptr inbounds %struct.wait_queue_entry, ptr %43, i32 0, i32 2, !dbg !3180
  %44 = load ptr, ptr %func53, align 8, !dbg !3180
  %45 = load ptr, ptr %pos, align 8, !dbg !3181
  %46 = load i32, ptr %wake_flags, align 4, !dbg !3182
  %call54 = call i32 %44(ptr noundef %45, i32 noundef 3, i32 noundef %46, ptr noundef %extra) #16, !dbg !3179
  call void @llvm.lifetime.end.p0(i64 4, ptr %wake_flags) #17, !dbg !3183
  br label %for.inc55, !dbg !3184

for.inc55:                                        ; preds = %if.end52
  %47 = load ptr, ptr %next, align 8, !dbg !3166
  store ptr %47, ptr %pos, align 8, !dbg !3166
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr56) #17, !dbg !3185
  call void @llvm.dbg.declare(metadata ptr %__mptr56, metadata !3114, metadata !DIExpression()), !dbg !3185
  %48 = load ptr, ptr %next, align 8, !dbg !3185
  %entry57 = getelementptr inbounds %struct.wait_queue_entry, ptr %48, i32 0, i32 3, !dbg !3185
  %next58 = getelementptr inbounds %struct.list_head, ptr %entry57, i32 0, i32 0, !dbg !3185
  %49 = load ptr, ptr %next58, align 8, !dbg !3185
  store ptr %49, ptr %__mptr56, align 8, !dbg !3185
  %50 = load ptr, ptr %__mptr56, align 8, !dbg !3185
  %add.ptr60 = getelementptr i8, ptr %50, i64 -24, !dbg !3185
  store ptr %add.ptr60, ptr %tmp59, align 8, !dbg !3185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr56) #17, !dbg !3166
  %51 = load ptr, ptr %tmp59, align 8, !dbg !3185
  store ptr %51, ptr %next, align 8, !dbg !3166
  br label %for.cond40, !dbg !3166, !llvm.loop !3186

for.end61:                                        ; preds = %for.cond40
  %call62 = call i32 @list_empty(ptr noundef %extra) #16, !dbg !3188
  %tobool63 = icmp ne i32 %call62, 0, !dbg !3188
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !3190

if.then64:                                        ; preds = %for.end61
  br label %do.end68, !dbg !3191

if.end65:                                         ; preds = %for.end61
  %52 = load ptr, ptr %x, align 8, !dbg !3192
  %head66 = getelementptr inbounds %struct.wait_queue_head, ptr %52, i32 0, i32 1, !dbg !3193
  call void @list_splice_tail_init(ptr noundef %extra, ptr noundef %head66) #16, !dbg !3194
  br label %do.cond67, !dbg !3195

do.cond67:                                        ; preds = %if.end65
  br i1 true, label %do.body29, label %do.end68, !dbg !3195, !llvm.loop !3196

do.end68:                                         ; preds = %do.cond67, %if.then64
  call void @llvm.lifetime.end.p0(i64 16, ptr %extra) #17, !dbg !3198
  br label %if.end69

if.end69:                                         ; preds = %do.end68, %for.end
  %53 = load ptr, ptr %x, align 8, !dbg !3199
  %lock70 = getelementptr inbounds %struct.wait_queue_head, ptr %53, i32 0, i32 0, !dbg !3200
  %54 = load i64, ptr %flags, align 8, !dbg !3201
  call void @spin_unlock_irqrestore(ptr noundef %lock70, i64 noundef %54) #16, !dbg !3202
  %55 = load ptr, ptr %fence.addr, align 8, !dbg !3203
  call void @debug_fence_assert(ptr noundef %55) #16, !dbg !3204
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !3205
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #17, !dbg !3205
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #17, !dbg !3205
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #17, !dbg !3205
  ret void, !dbg !3205
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_fence_destroy(ptr noundef %fence) #2 align 16 !dbg !3206 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  ret void, !dbg !3210
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3211 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3219, metadata !DIExpression()), !dbg !3221
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3220, metadata !DIExpression()), !dbg !3222
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3223
  %1 = load i64, ptr %size.addr, align 8, !dbg !3224
  %conv = trunc i64 %1 to i32, !dbg !3224
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !3225
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3226
  %3 = load i64, ptr %size.addr, align 8, !dbg !3226
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !3226
  ret void, !dbg !3227
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !3228 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3231, metadata !DIExpression()), !dbg !3232
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3233
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #16, !dbg !3234
  ret i1 %call, !dbg !3235
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !3236 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3241, metadata !DIExpression()), !dbg !3243
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3242, metadata !DIExpression()), !dbg !3244
  ret i1 true, !dbg !3245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !3246 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3251, metadata !DIExpression()), !dbg !3254
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3252, metadata !DIExpression()), !dbg !3255
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3253, metadata !DIExpression()), !dbg !3256
  ret void, !dbg !3257
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !3258 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3261, metadata !DIExpression()), !dbg !3264
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !3265
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3262, metadata !DIExpression()), !dbg !3265
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3265
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3265
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !3265, !srcloc !3266
  %2 = icmp ult i8 %1, 2, !dbg !3265
  call void @llvm.assume(i1 %2), !dbg !3265
  store i8 %1, ptr %c, align 1, !dbg !3265
  %3 = load i8, ptr %c, align 1, !dbg !3265, !range !2654, !noundef !608
  %tobool = trunc i8 %3 to i1, !dbg !3265
  %frombool = zext i1 %tobool to i8, !dbg !3265
  store i8 %frombool, ptr %tmp, align 1, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !3267
  %4 = load i8, ptr %tmp, align 1, !dbg !3265, !range !2654, !noundef !608
  %tobool1 = trunc i8 %4 to i1, !dbg !3265
  ret i1 %tobool1, !dbg !3268
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_fence_deactivate(ptr noundef %fence) #2 align 16 !dbg !3269 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  ret void, !dbg !3273
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set_release(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !3274 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3276, metadata !DIExpression()), !dbg !3278
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3277, metadata !DIExpression()), !dbg !3279
  br label %do.body, !dbg !3280

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3281

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3283
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #16, !dbg !3284
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3285
  %2 = load i32, ptr %i.addr, align 4, !dbg !3286
  call void @raw_atomic_set_release(ptr noundef %1, i32 noundef %2) #16, !dbg !3287
  ret void, !dbg !3288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3289 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !3294 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3301
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3302
  ret ptr %1, !dbg !3303
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move_tail(ptr noundef %list, ptr noundef %head) #2 align 16 !dbg !3304 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3309, metadata !DIExpression()), !dbg !3311
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3310, metadata !DIExpression()), !dbg !3312
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3313
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !3314
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3315
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3316
  call void @list_add_tail(ptr noundef %1, ptr noundef %2) #16, !dbg !3317
  ret void, !dbg !3318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #2 align 16 !dbg !3319 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3325, metadata !DIExpression()), !dbg !3326
  br label %do.body, !dbg !3327

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3329

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3327
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3327
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3327
  store ptr %1, ptr %tmp, align 8, !dbg !3329
  %2 = load ptr, ptr %tmp, align 8, !dbg !3327
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3331
  %cmp = icmp eq ptr %2, %3, !dbg !3332
  %conv = zext i1 %cmp to i32, !dbg !3332
  ret i32 %conv, !dbg !3333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail_init(ptr noundef %list, ptr noundef %head) #2 align 16 !dbg !3334 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3336, metadata !DIExpression()), !dbg !3338
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3337, metadata !DIExpression()), !dbg !3339
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3340
  %call = call i32 @list_empty(ptr noundef %0) #16, !dbg !3342
  %tobool = icmp ne i32 %call, 0, !dbg !3342
  br i1 %tobool, label %if.end, label %if.then, !dbg !3343

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3344
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3346
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3347
  %3 = load ptr, ptr %prev, align 8, !dbg !3347
  %4 = load ptr, ptr %head.addr, align 8, !dbg !3348
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #16, !dbg !3349
  %5 = load ptr, ptr %list.addr, align 8, !dbg !3350
  call void @INIT_LIST_HEAD(ptr noundef %5) #16, !dbg !3351
  br label %if.end, !dbg !3352

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !3354 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3358, metadata !DIExpression()), !dbg !3364
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3359, metadata !DIExpression()), !dbg !3365
  br label %do.body, !dbg !3366

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3360, metadata !DIExpression()), !dbg !3367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3363, metadata !DIExpression()), !dbg !3367
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3367
  %conv = zext i1 %cmp to i32, !dbg !3367
  store i32 1, ptr %tmp, align 4, !dbg !3367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !3368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !3368
  %0 = load i32, ptr %tmp, align 4, !dbg !3367
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !3368
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !3368
  %3 = load i64, ptr %flags.addr, align 8, !dbg !3368
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !3368
  br label %do.end, !dbg !3368

do.end:                                           ; preds = %do.body
  ret void, !dbg !3369
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3370 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3372, metadata !DIExpression()), !dbg !3374
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3373, metadata !DIExpression()), !dbg !3375
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3376
  %1 = load i64, ptr %size.addr, align 8, !dbg !3377
  %conv = trunc i64 %1 to i32, !dbg !3377
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !3378
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3379
  %3 = load i64, ptr %size.addr, align 8, !dbg !3379
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #16, !dbg !3379
  ret void, !dbg !3380
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set_release(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !3381 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3383, metadata !DIExpression()), !dbg !3385
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3384, metadata !DIExpression()), !dbg !3386
  br label %do.body, !dbg !3387

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3390

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3392

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3390

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !3394

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !3396

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !3394, !srcloc !3398
  br label %do.body5, !dbg !3394

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3399

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3401

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3399

do.body8:                                         ; preds = %do.end7
  %0 = load i32, ptr %i.addr, align 4, !dbg !3403
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3403
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !3403
  store volatile i32 %0, ptr %counter, align 4, !dbg !3403
  br label %do.end9, !dbg !3403

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3399

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !3394

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !3390

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !3405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #2 align 16 !dbg !3406 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3410, metadata !DIExpression()), !dbg !3411
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3412
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !3414
  br i1 %call, label %if.end, label %if.then, !dbg !3415

if.then:                                          ; preds = %entry
  br label %return, !dbg !3416

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3417
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3418
  %2 = load ptr, ptr %prev, align 8, !dbg !3418
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3419
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3420
  %4 = load ptr, ptr %next, align 8, !dbg !3420
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !3421
  br label %return, !dbg !3422

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3422
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !3423 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3425, metadata !DIExpression()), !dbg !3427
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3426, metadata !DIExpression()), !dbg !3428
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3429
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3430
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3431
  %2 = load ptr, ptr %prev, align 8, !dbg !3431
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3432
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !3433
  ret void, !dbg !3434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #2 align 16 !dbg !3435 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3439, metadata !DIExpression()), !dbg !3440
  ret i1 true, !dbg !3441
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3442 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3444, metadata !DIExpression()), !dbg !3446
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3445, metadata !DIExpression()), !dbg !3447
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3448
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3449
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3450
  store ptr %0, ptr %prev1, align 8, !dbg !3451
  br label %do.body, !dbg !3452

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3453

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3455

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3453

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3457
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3457
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3457
  store volatile ptr %2, ptr %next4, align 8, !dbg !3457
  br label %do.end5, !dbg !3457

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3453

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3459
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3460 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3464, metadata !DIExpression()), !dbg !3467
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3465, metadata !DIExpression()), !dbg !3468
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3466, metadata !DIExpression()), !dbg !3469
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3470
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3472
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3473
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !3474
  br i1 %call, label %if.end, label %if.then, !dbg !3475

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3476

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3477
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3478
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3479
  store ptr %3, ptr %prev1, align 8, !dbg !3480
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3481
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3482
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3483
  store ptr %5, ptr %next2, align 8, !dbg !3484
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3485
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3486
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3487
  store ptr %7, ptr %prev3, align 8, !dbg !3488
  br label %do.body, !dbg !3489

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3490

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3492

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3490

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3494
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3494
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3494
  store volatile ptr %9, ptr %next6, align 8, !dbg !3494
  br label %do.end7, !dbg !3494

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3490

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3497 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3501, metadata !DIExpression()), !dbg !3504
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3502, metadata !DIExpression()), !dbg !3505
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3503, metadata !DIExpression()), !dbg !3506
  ret i1 true, !dbg !3507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3508 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3512, metadata !DIExpression()), !dbg !3517
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3513, metadata !DIExpression()), !dbg !3518
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3514, metadata !DIExpression()), !dbg !3519
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #17, !dbg !3520
  call void @llvm.dbg.declare(metadata ptr %first, metadata !3515, metadata !DIExpression()), !dbg !3521
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3522
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3523
  %1 = load ptr, ptr %next1, align 8, !dbg !3523
  store ptr %1, ptr %first, align 8, !dbg !3521
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #17, !dbg !3524
  call void @llvm.dbg.declare(metadata ptr %last, metadata !3516, metadata !DIExpression()), !dbg !3525
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3526
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3527
  %3 = load ptr, ptr %prev2, align 8, !dbg !3527
  store ptr %3, ptr %last, align 8, !dbg !3525
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !3528
  %5 = load ptr, ptr %first, align 8, !dbg !3529
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !3530
  store ptr %4, ptr %prev3, align 8, !dbg !3531
  %6 = load ptr, ptr %first, align 8, !dbg !3532
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3533
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !3534
  store ptr %6, ptr %next4, align 8, !dbg !3535
  %8 = load ptr, ptr %next.addr, align 8, !dbg !3536
  %9 = load ptr, ptr %last, align 8, !dbg !3537
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !3538
  store ptr %8, ptr %next5, align 8, !dbg !3539
  %10 = load ptr, ptr %last, align 8, !dbg !3540
  %11 = load ptr, ptr %next.addr, align 8, !dbg !3541
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !3542
  store ptr %10, ptr %prev6, align 8, !dbg !3543
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #17, !dbg !3544
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #17, !dbg !3544
  ret void, !dbg !3544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #2 align 16 !dbg !3545 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  br label %do.body, !dbg !3549

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3550

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3552

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3550

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3554
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3554
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3554
  store volatile ptr %0, ptr %next, align 8, !dbg !3554
  br label %do.end3, !dbg !3554

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3550

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3556

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3557

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3559

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3557

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3561
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3561
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3561
  store volatile ptr %2, ptr %prev, align 8, !dbg !3561
  br label %do.end9, !dbg !3561

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3557

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3563
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3564 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3567 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3569, metadata !DIExpression()), !dbg !3571
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3570, metadata !DIExpression()), !dbg !3572
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3573
  %1 = load i64, ptr %size.addr, align 8, !dbg !3574
  %conv = trunc i64 %1 to i32, !dbg !3574
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !3575
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3576
  %3 = load i64, ptr %size.addr, align 8, !dbg !3576
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !3576
  ret void, !dbg !3577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !3578 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3580, metadata !DIExpression()), !dbg !3581
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3582
  %call = call i32 @arch_atomic_read(ptr noundef %0) #16, !dbg !3583
  ret i32 %call, !dbg !3584
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !3585 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3587, metadata !DIExpression()), !dbg !3589
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3588, metadata !DIExpression()), !dbg !3590
  ret i1 true, !dbg !3591
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !3592 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3594, metadata !DIExpression()), !dbg !3595
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3596
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3596
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3596
  ret i32 %1, !dbg !3597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !3598 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3600, metadata !DIExpression()), !dbg !3603
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3601, metadata !DIExpression()), !dbg !3604
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3602, metadata !DIExpression()), !dbg !3605
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3606
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3607
  %2 = load i32, ptr %new.addr, align 4, !dbg !3608
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16, !dbg !3609
  ret i1 %call, !dbg !3610
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !3611 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3613, metadata !DIExpression()), !dbg !3622
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3614, metadata !DIExpression()), !dbg !3623
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3615, metadata !DIExpression()), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %success, metadata !3616, metadata !DIExpression()), !dbg !3625
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !3618, metadata !DIExpression()), !dbg !3625
  %0 = load ptr, ptr %old.addr, align 8, !dbg !3625
  store ptr %0, ptr %_old, align 8, !dbg !3625
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #17, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3619, metadata !DIExpression()), !dbg !3625
  %1 = load ptr, ptr %_old, align 8, !dbg !3625
  %2 = load i32, ptr %1, align 4, !dbg !3625
  store i32 %2, ptr %__old, align 4, !dbg !3625
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #17, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3620, metadata !DIExpression()), !dbg !3625
  %3 = load i32, ptr %new.addr, align 4, !dbg !3625
  store i32 %3, ptr %__new, align 4, !dbg !3625
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3621, metadata !DIExpression()), !dbg !3625
  %4 = load ptr, ptr %v.addr, align 8, !dbg !3625
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !3625
  store ptr %counter, ptr %__ptr, align 8, !dbg !3625
  %5 = load ptr, ptr %__ptr, align 8, !dbg !3625
  %6 = load i32, ptr %__old, align 4, !dbg !3625
  %7 = load i32, ptr %__new, align 4, !dbg !3625
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #17, !dbg !3625, !srcloc !3626
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !3625
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !3625
  %9 = icmp ult i8 %asmresult, 2, !dbg !3625
  call void @llvm.assume(i1 %9), !dbg !3625
  store i8 %asmresult, ptr %success, align 1, !dbg !3625
  store i32 %asmresult1, ptr %__old, align 4, !dbg !3625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3625
  %10 = load i8, ptr %success, align 1, !dbg !3627, !range !2654, !noundef !608
  %tobool = trunc i8 %10 to i1, !dbg !3627
  %lnot = xor i1 %tobool, true, !dbg !3627
  %lnot2 = xor i1 %lnot, true, !dbg !3627
  %lnot3 = xor i1 %lnot2, true, !dbg !3627
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3627
  %conv = sext i32 %lnot.ext to i64, !dbg !3627
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3627
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3627
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3625

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !3627
  %12 = load ptr, ptr %_old, align 8, !dbg !3627
  store i32 %11, ptr %12, align 4, !dbg !3627
  br label %if.end, !dbg !3627

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !3625, !range !2654, !noundef !608
  %tobool5 = trunc i8 %13 to i1, !dbg !3625
  %lnot6 = xor i1 %tobool5, true, !dbg !3625
  %lnot8 = xor i1 %lnot6, true, !dbg !3625
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3625
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !3625
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !3625
  store i64 %expval11, ptr %tmp, align 8, !dbg !3627
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #17, !dbg !3629
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #17, !dbg !3629
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !3629
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !3629
  %14 = load i64, ptr %tmp, align 8, !dbg !3625
  %tobool12 = icmp ne i64 %14, 0, !dbg !3629
  ret i1 %tobool12, !dbg !3630
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !3631 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3633, metadata !DIExpression()), !dbg !3635
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3634, metadata !DIExpression()), !dbg !3636
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3637
  %1 = load i32, ptr %i.addr, align 4, !dbg !3638
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #16, !dbg !3639
  ret void, !dbg !3640
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #5 align 16 !dbg !3641 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3643, metadata !DIExpression()), !dbg !3645
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3644, metadata !DIExpression()), !dbg !3646
  br label %do.body, !dbg !3647

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !3648
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3648
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !3648
  store volatile i32 %0, ptr %counter, align 4, !dbg !3648
  br label %do.end, !dbg !3648

do.end:                                           ; preds = %do.body
  ret void, !dbg !3650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @i915_sw_fence_check_if_after(ptr noundef %fence, ptr noundef %signaler) #0 align 16 !dbg !3651 {
entry:
  %fence.addr = alloca ptr, align 8
  %signaler.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3656, metadata !DIExpression()), !dbg !3658
  store ptr %signaler, ptr %signaler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signaler.addr, metadata !3657, metadata !DIExpression()), !dbg !3659
  ret i1 false, !dbg !3660
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_sw_fence_wait(ptr noundef %fence) #2 align 16 !dbg !3661 {
entry:
  %fence.addr = alloca ptr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3663, metadata !DIExpression()), !dbg !3673
  br label %do.body, !dbg !3674

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3675

do.body1:                                         ; preds = %do.body
  call void @might_resched() #16, !dbg !3676
  br label %do.end, !dbg !3676

do.end:                                           ; preds = %do.body1
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !3678
  %call = call zeroext i1 @i915_sw_fence_done(ptr noundef %0) #16, !dbg !3678
  br i1 %call, label %if.then, label %if.end, !dbg !3675

if.then:                                          ; preds = %do.end
  br label %do.end7, !dbg !3678

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #17, !dbg !3680
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !3664, metadata !DIExpression()), !dbg !3680
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #17, !dbg !3680
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3667, metadata !DIExpression()), !dbg !3680
  store i64 0, ptr %__ret, align 8, !dbg !3680
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #16, !dbg !3680
  br label %for.cond, !dbg !3680

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #17, !dbg !3681
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !3668, metadata !DIExpression()), !dbg !3681
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !3681
  %wait = getelementptr inbounds %struct.i915_sw_fence, ptr %1, i32 0, i32 0, !dbg !3681
  %call2 = call i64 @prepare_to_wait_event(ptr noundef %wait, ptr noundef %__wq_entry, i32 noundef 2) #16, !dbg !3681
  store i64 %call2, ptr %__int, align 8, !dbg !3681
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !3682
  %call3 = call zeroext i1 @i915_sw_fence_done(ptr noundef %2) #16, !dbg !3682
  br i1 %call3, label %if.then4, label %if.end5, !dbg !3681

if.then4:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3682

if.end5:                                          ; preds = %for.cond
  call void @schedule() #16, !dbg !3681
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3684
  br label %cleanup, !dbg !3684

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #17, !dbg !3684
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !3684, !llvm.loop !3685

for.end:                                          ; preds = %cleanup
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !3680
  %wait6 = getelementptr inbounds %struct.i915_sw_fence, ptr %3, i32 0, i32 0, !dbg !3680
  call void @finish_wait(ptr noundef %wait6, ptr noundef %__wq_entry) #16, !dbg !3680
  br label %__out, !dbg !3680

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !3672), !dbg !3680
  %4 = load i64, ptr %__ret, align 8, !dbg !3680
  store i64 %4, ptr %tmp, align 8, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #17, !dbg !3675
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #17, !dbg !3675
  %5 = load i64, ptr %tmp, align 8, !dbg !3680
  br label %do.end7, !dbg !3675

do.end7:                                          ; preds = %__out, %if.then
  ret void, !dbg !3687

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_sw_fence_wake(ptr noundef %wq, i32 noundef %mode, i32 noundef %flags, ptr noundef %key) #0 align 16 !dbg !3688 {
entry:
  %wq.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !3692, metadata !DIExpression()), !dbg !3696
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3693, metadata !DIExpression()), !dbg !3697
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3694, metadata !DIExpression()), !dbg !3698
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3695, metadata !DIExpression()), !dbg !3699
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !3700
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1, !dbg !3701
  %1 = load ptr, ptr %private, align 8, !dbg !3701
  %2 = load i32, ptr %flags.addr, align 4, !dbg !3702
  call void @i915_sw_fence_set_error_once(ptr noundef %1, i32 noundef %2) #16, !dbg !3703
  %3 = load ptr, ptr %wq.addr, align 8, !dbg !3704
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, !dbg !3705
  call void @list_del(ptr noundef %entry1) #16, !dbg !3706
  %4 = load ptr, ptr %wq.addr, align 8, !dbg !3707
  %private2 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1, !dbg !3708
  %5 = load ptr, ptr %private2, align 8, !dbg !3708
  %6 = load ptr, ptr %key.addr, align 8, !dbg !3709
  call void @__i915_sw_fence_complete(ptr noundef %5, ptr noundef %6) #16, !dbg !3710
  %7 = load ptr, ptr %wq.addr, align 8, !dbg !3711
  %flags3 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 0, !dbg !3713
  %8 = load i32, ptr %flags3, align 8, !dbg !3713
  %conv = zext i32 %8 to i64, !dbg !3711
  %and = and i64 %conv, 1073741824, !dbg !3714
  %tobool = icmp ne i64 %and, 0, !dbg !3714
  br i1 %tobool, label %if.then, label %if.end, !dbg !3715

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %wq.addr, align 8, !dbg !3716
  call void @kfree(ptr noundef %9) #16, !dbg !3717
  br label %if.end, !dbg !3717

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !3718
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__add_wait_queue_entry_tail(ptr noundef %wq_head, ptr noundef %wq_entry) #2 align 16 !dbg !3719 {
entry:
  %wq_head.addr = alloca ptr, align 8
  %wq_entry.addr = alloca ptr, align 8
  store ptr %wq_head, ptr %wq_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_head.addr, metadata !3723, metadata !DIExpression()), !dbg !3725
  store ptr %wq_entry, ptr %wq_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_entry.addr, metadata !3724, metadata !DIExpression()), !dbg !3726
  %0 = load ptr, ptr %wq_entry.addr, align 8, !dbg !3727
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, !dbg !3728
  %1 = load ptr, ptr %wq_head.addr, align 8, !dbg !3729
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1, !dbg !3730
  call void @list_add_tail(ptr noundef %entry1, ptr noundef %head) #16, !dbg !3731
  ret void, !dbg !3732
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3733 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3736 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3739 dso_local void @schedule() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3740 dso_local void @finish_wait(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #2 align 16 !dbg !3741 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3743, metadata !DIExpression()), !dbg !3744
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3745
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !3746
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3747
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3748
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !3749
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3750
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3751
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !3752
  ret void, !dbg !3753
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3754 dso_local void @kfree(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3759 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3767, metadata !DIExpression()), !dbg !3772
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3768, metadata !DIExpression()), !dbg !3773
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !3774
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3769, metadata !DIExpression()), !dbg !3775
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3776
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3777
  %div = udiv i64 %1, 64, !dbg !3777
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3778
  store ptr %add.ptr, ptr %p, align 8, !dbg !3775
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !3779
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3770, metadata !DIExpression()), !dbg !3780
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3781
  %rem = urem i64 %2, 64, !dbg !3781
  %shl = shl i64 1, %rem, !dbg !3781
  store i64 %shl, ptr %mask, align 8, !dbg !3780
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !3782
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3771, metadata !DIExpression()), !dbg !3783
  %3 = load ptr, ptr %p, align 8, !dbg !3784
  %4 = load i64, ptr %3, align 8, !dbg !3785
  store i64 %4, ptr %val, align 8, !dbg !3783
  %5 = load i64, ptr %val, align 8, !dbg !3786
  %6 = load i64, ptr %mask, align 8, !dbg !3787
  %and = and i64 %5, %6, !dbg !3788
  %tobool = icmp ne i64 %and, 0, !dbg !3789
  %lnot = xor i1 %tobool, true, !dbg !3789
  %lnot1 = xor i1 %lnot, true, !dbg !3790
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !3791
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !3791
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !3791
  ret i1 %lnot1, !dbg !3792
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3793 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3796, metadata !DIExpression()), !dbg !3798
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3797, metadata !DIExpression()), !dbg !3799
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3800
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3801
  %div = udiv i64 %1, 64, !dbg !3801
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3802
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !3803
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3804
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3805
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !3806
  ret i1 %call, !dbg !3807
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3808 dso_local i32 @dma_fence_signal(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3811 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3814, metadata !DIExpression()), !dbg !3816
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3815, metadata !DIExpression()), !dbg !3817
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3818
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3819
  br i1 %1, label %cond.true, label %cond.false, !dbg !3819

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3820
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3821
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !3822
  %conv = zext i1 %call to i32, !dbg !3822
  br label %cond.end, !dbg !3819

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3823
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3824
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !3825
  %conv2 = zext i1 %call1 to i32, !dbg !3825
  br label %cond.end, !dbg !3819

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3819
  %tobool = icmp ne i32 %cond, 0, !dbg !3819
  ret i1 %tobool, !dbg !3826
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3827 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3831, metadata !DIExpression()), !dbg !3833
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3832, metadata !DIExpression()), !dbg !3834
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3835
  %and = and i64 %0, 63, !dbg !3836
  %shl = shl i64 1, %and, !dbg !3837
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3838
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3839
  %shr = ashr i64 %2, 6, !dbg !3840
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3838
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3838
  %and1 = and i64 %shl, %3, !dbg !3841
  %cmp = icmp ne i64 %and1, 0, !dbg !3842
  ret i1 %cmp, !dbg !3843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3844 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3846, metadata !DIExpression()), !dbg !3849
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3847, metadata !DIExpression()), !dbg !3850
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3848, metadata !DIExpression()), !dbg !3852
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3853
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3854
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !3855, !srcloc !3856
  %3 = icmp ult i8 %2, 2, !dbg !3855
  call void @llvm.assume(i1 %3), !dbg !3855
  store i8 %2, ptr %oldbit, align 1, !dbg !3855
  %4 = load i8, ptr %oldbit, align 1, !dbg !3857, !range !2654, !noundef !608
  %tobool = trunc i8 %4 to i1, !dbg !3857
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !3858
  ret i1 %tobool, !dbg !3859
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3860 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !3861 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3865, metadata !DIExpression()), !dbg !3867
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3866, metadata !DIExpression()), !dbg !3868
  %0 = load i64, ptr %size.addr, align 8, !dbg !3869
  %tobool = icmp ne i64 %0, 0, !dbg !3869
  br i1 %tobool, label %if.end, label %if.then, !dbg !3871

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3872
  br label %return, !dbg !3872

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3873
  %cmp = icmp ule i64 %1, 8, !dbg !3875
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3876

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3877
  br label %return, !dbg !3877

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3878
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3880
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3881

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3882
  %cmp4 = icmp ule i64 %3, 96, !dbg !3883
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3884

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3885
  br label %return, !dbg !3885

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3886
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3888
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3889

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3890
  %cmp9 = icmp ule i64 %5, 192, !dbg !3891
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3892

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3893
  br label %return, !dbg !3893

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3894
  %cmp12 = icmp ule i64 %6, 8, !dbg !3896
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3897

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3898
  br label %return, !dbg !3898

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3899
  %cmp15 = icmp ule i64 %7, 16, !dbg !3901
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3902

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3903
  br label %return, !dbg !3903

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3904
  %cmp18 = icmp ule i64 %8, 32, !dbg !3906
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3907

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3908
  br label %return, !dbg !3908

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3909
  %cmp21 = icmp ule i64 %9, 64, !dbg !3911
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3912

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3913
  br label %return, !dbg !3913

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3914
  %cmp24 = icmp ule i64 %10, 128, !dbg !3916
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3917

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3918
  br label %return, !dbg !3918

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3919
  %cmp27 = icmp ule i64 %11, 256, !dbg !3921
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3922

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3923
  br label %return, !dbg !3923

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3924
  %cmp30 = icmp ule i64 %12, 512, !dbg !3926
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3927

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3928
  br label %return, !dbg !3928

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3929
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3931
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3932

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3933
  br label %return, !dbg !3933

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3934
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3936
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3937

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3938
  br label %return, !dbg !3938

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3939
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3941
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3942

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3943
  br label %return, !dbg !3943

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3944
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3946
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3947

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3948
  br label %return, !dbg !3948

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3949
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3951
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3952

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3953
  br label %return, !dbg !3953

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3954
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3956
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3957

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3958
  br label %return, !dbg !3958

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3959
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3961
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3962

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3963
  br label %return, !dbg !3963

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3964
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3966
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3967

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3968
  br label %return, !dbg !3968

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3969
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3971
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3972

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3973
  br label %return, !dbg !3973

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3974
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3976
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3977

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3978
  br label %return, !dbg !3978

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3979
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3981
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3982

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3983
  br label %return, !dbg !3983

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3984
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3986
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3987

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3988
  br label %return, !dbg !3988

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3989, !range !2654, !noundef !608
  %tobool69 = trunc i8 %25 to i1, !dbg !3989
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3991

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3992

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !3993, !srcloc !3996
  unreachable, !dbg !3993

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3997

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3998

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3999

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4001

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3999

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #17, !dbg !4003, !srcloc !4005
  br label %do.end75, !dbg !4003

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3999

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4006
  br label %return, !dbg !4006

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4007
  ret i32 %26, !dbg !4007
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4008 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !4013 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4017, metadata !DIExpression()), !dbg !4019
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4018, metadata !DIExpression()), !dbg !4020
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4021
  %and = and i32 %0, 17, !dbg !4021
  %cmp = icmp eq i32 %and, 0, !dbg !4021
  %lnot = xor i1 %cmp, true, !dbg !4021
  %lnot1 = xor i1 %lnot, true, !dbg !4021
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4021
  %conv = sext i32 %lnot.ext to i64, !dbg !4021
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4021
  %tobool = icmp ne i64 %expval, 0, !dbg !4021
  br i1 %tobool, label %if.then, label %if.end, !dbg !4023

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4024
  br label %return, !dbg !4024

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4025
  %and2 = and i32 %1, 1, !dbg !4027
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4027
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4028

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4029
  br label %return, !dbg !4029

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4030
  br label %return, !dbg !4030

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4032
  ret i32 %2, !dbg !4032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4033 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4034 dso_local void @__compiletime_assert_117() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4035 dso_local i64 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #2 align 16 !dbg !4036 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4043
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4044
  call void @refcount_inc(ptr noundef %refcount) #16, !dbg !4045
  ret void, !dbg !4046
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !4047 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4052, metadata !DIExpression()), !dbg !4053
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4054
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #16, !dbg !4055
  ret void, !dbg !4056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4057 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4061, metadata !DIExpression()), !dbg !4063
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4062, metadata !DIExpression()), !dbg !4064
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4065
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4066
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !4067
  ret void, !dbg !4068
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4069 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4073, metadata !DIExpression()), !dbg !4077
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4074, metadata !DIExpression()), !dbg !4078
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4075, metadata !DIExpression()), !dbg !4079
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !4080
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4076, metadata !DIExpression()), !dbg !4081
  %0 = load i32, ptr %i.addr, align 4, !dbg !4082
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4083
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4084
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #16, !dbg !4085
  store i32 %call, ptr %old, align 4, !dbg !4081
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4086
  %tobool = icmp ne ptr %2, null, !dbg !4086
  br i1 %tobool, label %if.then, label %if.end, !dbg !4088

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4089
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4090
  store i32 %3, ptr %4, align 4, !dbg !4091
  br label %if.end, !dbg !4092

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4093
  %tobool1 = icmp ne i32 %5, 0, !dbg !4093
  %lnot = xor i1 %tobool1, true, !dbg !4093
  %lnot2 = xor i1 %lnot, true, !dbg !4093
  %lnot3 = xor i1 %lnot2, true, !dbg !4093
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4093
  %conv = sext i32 %lnot.ext to i64, !dbg !4093
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4093
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4093
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4095

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !4096
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #16, !dbg !4097
  br label %if.end18, !dbg !4097

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4098
  %cmp = icmp slt i32 %7, 0, !dbg !4098
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4098

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !4098
  %9 = load i32, ptr %i.addr, align 4, !dbg !4098
  %add = add i32 %8, %9, !dbg !4098
  %cmp7 = icmp slt i32 %add, 0, !dbg !4098
  br label %lor.end, !dbg !4098

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !4098
  %lnot11 = xor i1 %lnot9, true, !dbg !4098
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4098
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4098
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !4098
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !4098
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4100

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4101
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #16, !dbg !4102
  br label %if.end17, !dbg !4102

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !4103
  ret void, !dbg !4103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4104 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4108, metadata !DIExpression()), !dbg !4110
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4109, metadata !DIExpression()), !dbg !4111
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4112
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !4113
  %1 = load i32, ptr %i.addr, align 4, !dbg !4114
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4115
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #16, !dbg !4116
  ret i32 %call, !dbg !4117
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4118 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4121 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4123, metadata !DIExpression()), !dbg !4125
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4124, metadata !DIExpression()), !dbg !4126
  %0 = load i32, ptr %i.addr, align 4, !dbg !4127
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4128
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #16, !dbg !4129
  ret i32 %call, !dbg !4130
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4131 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4133, metadata !DIExpression()), !dbg !4137
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4134, metadata !DIExpression()), !dbg !4138
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !4139
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4135, metadata !DIExpression()), !dbg !4139
  %0 = load i32, ptr %i.addr, align 4, !dbg !4139
  store i32 %0, ptr %__ret, align 4, !dbg !4139
  %1 = load i32, ptr %__ret, align 4, !dbg !4139
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4139
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4139
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !4139, !srcloc !4140
  store i32 %3, ptr %__ret, align 4, !dbg !4139
  %4 = load i32, ptr %__ret, align 4, !dbg !4139
  store i32 %4, ptr %tmp, align 4, !dbg !4139
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !4141
  %5 = load i32, ptr %tmp, align 4, !dbg !4139
  ret i32 %5, !dbg !4142
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4143 dso_local i32 @timer_shutdown_sync(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #2 align 16 !dbg !4146 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4148, metadata !DIExpression()), !dbg !4149
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4150
  %tobool = icmp ne ptr %0, null, !dbg !4150
  br i1 %tobool, label %if.then, label %if.end, !dbg !4152

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4153
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !4154
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #16, !dbg !4155
  br label %if.end, !dbg !4155

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4156
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4157 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #2 align 16 !dbg !4161 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4166, metadata !DIExpression()), !dbg !4168
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !4167, metadata !DIExpression()), !dbg !4169
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4170
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4172
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #16, !dbg !4173
  br i1 %call, label %if.then, label %if.end, !dbg !4174

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !4175
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !4177
  call void %1(ptr noundef %2) #16, !dbg !4175
  store i32 1, ptr %retval, align 4, !dbg !4178
  br label %return, !dbg !4178

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4179
  br label %return, !dbg !4179

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4180
  ret i32 %3, !dbg !4180
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !4181 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4187
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #16, !dbg !4188
  ret i1 %call, !dbg !4189
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4190 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4194, metadata !DIExpression()), !dbg !4196
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4195, metadata !DIExpression()), !dbg !4197
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4198
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4199
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16, !dbg !4200
  ret i1 %call, !dbg !4201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !4202 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4206, metadata !DIExpression()), !dbg !4210
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4207, metadata !DIExpression()), !dbg !4211
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4208, metadata !DIExpression()), !dbg !4212
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4209, metadata !DIExpression()), !dbg !4214
  %0 = load i32, ptr %i.addr, align 4, !dbg !4215
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4216
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4217
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #16, !dbg !4218
  store i32 %call, ptr %old, align 4, !dbg !4214
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4219
  %tobool = icmp ne ptr %2, null, !dbg !4219
  br i1 %tobool, label %if.then, label %if.end, !dbg !4221

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4222
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4223
  store i32 %3, ptr %4, align 4, !dbg !4224
  br label %if.end, !dbg !4225

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4226
  %6 = load i32, ptr %i.addr, align 4, !dbg !4228
  %cmp = icmp eq i32 %5, %6, !dbg !4229
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4230

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4231

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4233

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4235

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4235

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4233

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4237

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4239

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4239

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4237, !srcloc !4241
  br label %do.cond7, !dbg !4237

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4237

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4233

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4233

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !4242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4242

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4243
  %cmp12 = icmp slt i32 %7, 0, !dbg !4243
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !4243

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !4243
  %9 = load i32, ptr %i.addr, align 4, !dbg !4243
  %sub = sub i32 %8, %9, !dbg !4243
  %cmp13 = icmp slt i32 %sub, 0, !dbg !4243
  br label %lor.end, !dbg !4243

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4243
  %lnot14 = xor i1 %lnot, true, !dbg !4243
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4243
  %conv = sext i32 %lnot.ext to i64, !dbg !4243
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4243
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4243
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4245

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4246
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16, !dbg !4247
  br label %if.end17, !dbg !4247

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !4248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4248

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !4249
  %12 = load i1, ptr %retval, align 1, !dbg !4249
  ret i1 %12, !dbg !4249
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4250 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4252, metadata !DIExpression()), !dbg !4254
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4253, metadata !DIExpression()), !dbg !4255
  br label %do.body, !dbg !4256

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4257

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4259
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !4260
  %1 = load i32, ptr %i.addr, align 4, !dbg !4261
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4262
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #16, !dbg !4263
  ret i32 %call, !dbg !4264
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4265 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4267, metadata !DIExpression()), !dbg !4269
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4268, metadata !DIExpression()), !dbg !4270
  %0 = load i32, ptr %i.addr, align 4, !dbg !4271
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4272
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #16, !dbg !4273
  ret i32 %call, !dbg !4274
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4275 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4277, metadata !DIExpression()), !dbg !4281
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4278, metadata !DIExpression()), !dbg !4282
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !4283
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4279, metadata !DIExpression()), !dbg !4283
  %0 = load i32, ptr %i.addr, align 4, !dbg !4283
  %sub = sub i32 0, %0, !dbg !4283
  store i32 %sub, ptr %__ret, align 4, !dbg !4283
  %1 = load i32, ptr %__ret, align 4, !dbg !4283
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4283
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4283
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !4283, !srcloc !4284
  store i32 %3, ptr %__ret, align 4, !dbg !4283
  %4 = load i32, ptr %__ret, align 4, !dbg !4283
  store i32 %4, ptr %tmp, align 4, !dbg !4283
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !4285
  %5 = load i32, ptr %tmp, align 4, !dbg !4283
  ret i32 %5, !dbg !4286
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4287 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_sw_fence_debug_hint(ptr noundef %addr) #0 align 16 !dbg !4291 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4295, metadata !DIExpression()), !dbg !4296
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4297
  %fn = getelementptr inbounds %struct.i915_sw_fence, ptr %0, i32 0, i32 1, !dbg !4298
  %1 = load ptr, ptr %fn, align 8, !dbg !4298
  ret ptr %1, !dbg !4299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4300 dso_local zeroext i1 @irq_work_queue(ptr noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023}
!llvm.ident = !{!2024}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/i915/i915_sw_fence.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52133bb10e02004d1fbdcc44fd5743c5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 37)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !9, file: !10, line: 112, type: !81, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "might_resched", scope: !10, file: !10, line: 110, type: !11, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!10 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_sw_fence.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_sw_fence\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_sw_fence.ll drivers/gpu/drm/i915/i915_sw_fence.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !80, globals: !2005, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !21, !26, !31, !37, !44, !51, !55, !62, !72}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i915_sw_fence_notify", file: !16, line: 22, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "drivers/gpu/drm/i915/i915_sw_fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03d1e1d9373fbc2e669daced9ccb8b3a")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "FENCE_COMPLETE", value: 0)
!20 = !DIEnumerator(name: "FENCE_FREE", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 10, baseType: !17, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "false", value: 0)
!25 = !DIEnumerator(name: "true", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !27, line: 65, baseType: !17, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!30 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !32, line: 16, baseType: !17, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "TT_NONE", value: 0)
!35 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!36 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !38, line: 51, baseType: !17, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!41 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!42 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!43 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_resv_usage", file: !45, line: 71, baseType: !17, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "DMA_RESV_USAGE_KERNEL", value: 0)
!48 = !DIEnumerator(name: "DMA_RESV_USAGE_WRITE", value: 1)
!49 = !DIEnumerator(name: "DMA_RESV_USAGE_READ", value: 2)
!50 = !DIEnumerator(name: "DMA_RESV_USAGE_BOOKKEEP", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 32, baseType: !17, size: 32, elements: !52)
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "DEBUG_FENCE_IDLE", value: 0)
!54 = !DIEnumerator(name: "DEBUG_FENCE_NOTIFY", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !56, line: 98, baseType: !17, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0)
!59 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1)
!60 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2)
!61 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !63, line: 364, baseType: !17, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!64 = !{!65, !66, !67, !68, !69, !70, !71}
!65 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!66 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!67 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!68 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!69 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!70 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!71 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !73, line: 119, baseType: !17, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!76 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!77 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!78 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!79 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!80 = !{!81, !82, !1976, !1989, !1991, !1993, !1995, !908, !1997, !1999, !2000, !2001, !2003, !215, !175, !2004, !228}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_sw_dma_fence_cb_timer", file: !2, line: 410, size: 1024, elements: !84)
!84 = !{!85, !245, !246, !266, !1975}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !83, file: !2, line: 411, baseType: !86, size: 256)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_sw_dma_fence_cb", file: !16, line: 79, size: 256, elements: !87)
!87 = !{!88, !227}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !86, file: !16, line: 80, baseType: !89, size: 192)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !56, line: 116, size: 192, elements: !90)
!90 = !{!91, !98}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !56, line: 117, baseType: !92, size: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !93, line: 190, size: 128, elements: !94)
!93 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !93, line: 191, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !92, file: !93, line: 191, baseType: !96, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !89, file: !56, line: 118, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !56, line: 105, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !226}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !56, line: 65, size: 512, elements: !105)
!105 = !{!106, !151, !195, !209, !213, !214, !216, !225}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !104, file: !56, line: 66, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !109, line: 29, baseType: !110)
!109 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !109, line: 17, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !109, line: 18, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !109, line: 18, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !113, file: !109, line: 19, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !117, line: 14, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !116, file: !117, line: 15, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !121, line: 44, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !121, line: 14, size: 32, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !121, line: 15, baseType: !125, size: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !121, line: 15, size: 32, elements: !126)
!126 = !{!127, !133, !143}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !121, line: 16, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !93, line: 174, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 172, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !129, file: !93, line: 173, baseType: !132, size: 32)
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !121, line: 24, baseType: !134, size: 16)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !121, line: 24, size: 16, elements: !135)
!135 = !{!136, !142}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !134, file: !121, line: 25, baseType: !137, size: 8)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !138, line: 17, baseType: !139)
!138 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !140, line: 21, baseType: !141)
!140 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !134, file: !121, line: 26, baseType: !137, size: 8, offset: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !121, line: 28, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !121, line: 28, size: 32, elements: !145)
!145 = !{!146, !150}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !144, file: !121, line: 29, baseType: !147, size: 16)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !138, line: 19, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !140, line: 24, baseType: !149)
!149 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !144, file: !121, line: 30, baseType: !147, size: 16, offset: 16)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !104, file: !56, line: 67, baseType: !152, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !56, line: 125, size: 640, elements: !155)
!155 = !{!156, !159, !165, !166, !170, !171, !176, !180, !185, !186}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !154, file: !56, line: 132, baseType: !157, size: 8)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !93, line: 35, baseType: !158)
!158 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !154, file: !56, line: 143, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !103}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !154, file: !56, line: 155, baseType: !160, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !154, file: !56, line: 192, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!157, !103}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !154, file: !56, line: 209, baseType: !167, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !154, file: !56, line: 227, baseType: !172, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !103, !157, !175}
!175 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !154, file: !56, line: 238, baseType: !177, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !103}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !154, file: !56, line: 248, baseType: !181, size: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !103, !184, !132}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !154, file: !56, line: 258, baseType: !181, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !154, file: !56, line: 279, baseType: !187, size: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !103, !190}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !191, line: 29, baseType: !192)
!191 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !138, line: 22, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !140, line: 30, baseType: !194)
!194 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !56, line: 84, baseType: !196, size: 128, offset: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !56, line: 84, size: 128, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !196, file: !56, line: 85, baseType: !92, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !196, file: !56, line: 87, baseType: !190, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !196, file: !56, line: 89, baseType: !201, size: 128, align: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !93, line: 232, size: 128, align: 64, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !93, line: 233, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !201, file: !93, line: 234, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !204}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !104, file: !56, line: 91, baseType: !210, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !138, line: 23, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !140, line: 31, baseType: !212)
!212 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !104, file: !56, line: 92, baseType: !210, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !56, line: 93, baseType: !215, size: 64, offset: 384)
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !104, file: !56, line: 94, baseType: !217, size: 32, offset: 448)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !218, line: 19, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !217, file: !218, line: 20, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !73, line: 113, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !73, line: 111, size: 32, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !222, file: !73, line: 112, baseType: !128, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !104, file: !56, line: 95, baseType: !132, size: 32, offset: 480)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !86, file: !16, line: 81, baseType: !228, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_sw_fence", file: !16, line: 30, size: 320, elements: !230)
!230 = !{!231, !238, !243, !244}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !229, file: !16, line: 31, baseType: !232, size: 192)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !233, line: 41, baseType: !234)
!233 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !233, line: 37, size: 192, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !234, file: !233, line: 38, baseType: !108, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !234, file: !233, line: 39, baseType: !92, size: 128, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !229, file: !16, line: 32, baseType: !239, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "i915_sw_fence_notify_t", file: !16, line: 27, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!132, !228, !15}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !229, file: !16, line: 36, baseType: !128, size: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !229, file: !16, line: 37, baseType: !132, size: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !83, file: !2, line: 412, baseType: !103, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !83, file: !2, line: 413, baseType: !247, size: 320, offset: 320)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !248, line: 11, size: 320, elements: !249)
!248 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!249 = !{!250, !257, !258, !263}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !247, file: !248, line: 16, baseType: !251, size: 128)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !93, line: 198, size: 128, elements: !252)
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !93, line: 199, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !251, file: !93, line: 199, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !247, file: !248, line: 17, baseType: !215, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !247, file: !248, line: 18, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !248, line: 19, baseType: !264, size: 32, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !138, line: 21, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !140, line: 27, baseType: !17)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !83, file: !2, line: 414, baseType: !267, size: 256, offset: 640)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !268, line: 17, size: 256, elements: !269)
!268 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!269 = !{!270, !287, !292}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !267, file: !268, line: 18, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !272, line: 58, size: 128, elements: !273)
!272 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!273 = !{!274, !280, !285, !286}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !271, file: !272, line: 59, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !276, line: 60, size: 64, elements: !277)
!276 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !276, line: 61, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !272, line: 60, baseType: !281, size: 32, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !272, line: 60, size: 32, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !281, file: !272, line: 61, baseType: !17, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !281, file: !272, line: 62, baseType: !128, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !271, file: !272, line: 65, baseType: !147, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !271, file: !272, line: 65, baseType: !147, size: 16, offset: 112)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !267, file: !268, line: 19, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !267, file: !268, line: 20, baseType: !293, size: 64, offset: 192)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !294, line: 16, size: 64, elements: !295)
!294 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !293, file: !294, line: 17, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !299, line: 746, size: 58368, elements: !300)
!299 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!300 = !{!301, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !377, !388, !488, !492, !495, !526, !527, !528, !529, !540, !542, !543, !544, !545, !546, !547, !558, !559, !562, !563, !564, !565, !566, !567, !568, !569, !576, !577, !584, !585, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !855, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !891, !893, !894, !895, !907, !909, !910, !911, !912, !913, !914, !920, !921, !922, !923, !924, !925, !926, !940, !946, !1141, !1142, !1143, !1144, !1148, !1151, !1158, !1163, !1166, !1169, !1172, !1175, !1320, !1349, !1350, !1351, !1352, !1353, !1354, !1357, !1358, !1359, !1362, !1363, !1364, !1373, !1381, !1382, !1383, !1384, !1385, !1390, !1391, !1392, !1395, !1396, !1399, !1402, !1405, !1408, !1411, !1412, !1499, !1500, !1501, !1502, !1503, !1509, !1510, !1511, !1512, !1515, !1516, !1519, !1522, !1523, !1526, !1527, !1528, !1531, !1532, !1533, !1536, !1537, !1538, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1570, !1573, !1641, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1653, !1725, !1727, !1728, !1729, !1730, !1731, !1732, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1750, !1751, !1752}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !298, file: !299, line: 752, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !303, line: 56, size: 192, elements: !304)
!303 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!304 = !{!305, !306, !307, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !303, line: 57, baseType: !215, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !302, file: !303, line: 58, baseType: !215, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !302, file: !303, line: 59, baseType: !264, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !302, file: !303, line: 61, baseType: !264, size: 32, offset: 160)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !298, file: !299, line: 754, baseType: !17, size: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !298, file: !299, line: 767, baseType: !81, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !298, file: !299, line: 768, baseType: !221, size: 32, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !299, line: 770, baseType: !17, size: 32, offset: 352)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !298, file: !299, line: 771, baseType: !17, size: 32, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !298, file: !299, line: 774, baseType: !132, size: 32, offset: 416)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !298, file: !299, line: 775, baseType: !271, size: 128, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !298, file: !299, line: 776, baseType: !17, size: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !298, file: !299, line: 777, baseType: !215, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !298, file: !299, line: 778, baseType: !297, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !298, file: !299, line: 787, baseType: !132, size: 32, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !298, file: !299, line: 788, baseType: !132, size: 32, offset: 800)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !298, file: !299, line: 790, baseType: !132, size: 32, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !298, file: !299, line: 792, baseType: !132, size: 32, offset: 864)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !298, file: !299, line: 793, baseType: !132, size: 32, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !298, file: !299, line: 794, baseType: !132, size: 32, offset: 928)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !298, file: !299, line: 795, baseType: !17, size: 32, offset: 960)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !298, file: !299, line: 797, baseType: !327, size: 2048, offset: 1024)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !299, line: 551, size: 2048, elements: !328)
!328 = !{!329, !334, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !356, !359, !360, !361}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !327, file: !299, line: 553, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !299, line: 411, size: 128, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !330, file: !299, line: 412, baseType: !215, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !330, file: !299, line: 413, baseType: !264, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !327, file: !299, line: 554, baseType: !335, size: 192, align: 64, offset: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !336, line: 5, size: 192, align: 64, elements: !337)
!336 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!337 = !{!338, !339, !341}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !335, file: !336, line: 6, baseType: !215, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !335, file: !336, line: 7, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !335, file: !336, line: 8, baseType: !340, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !327, file: !299, line: 555, baseType: !210, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !327, file: !299, line: 556, baseType: !210, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !327, file: !299, line: 558, baseType: !92, size: 128, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !327, file: !299, line: 559, baseType: !17, size: 32, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !327, file: !299, line: 561, baseType: !210, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !327, file: !299, line: 562, baseType: !210, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !327, file: !299, line: 563, baseType: !210, size: 64, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !327, file: !299, line: 564, baseType: !210, size: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !327, file: !299, line: 565, baseType: !192, size: 64, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !327, file: !299, line: 566, baseType: !210, size: 64, offset: 960)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !327, file: !299, line: 568, baseType: !210, size: 64, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !327, file: !299, line: 571, baseType: !132, size: 32, offset: 1088)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !327, file: !299, line: 572, baseType: !355, size: 64, offset: 1152)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !327, file: !299, line: 574, baseType: !357, size: 64, offset: 1216)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !299, line: 49, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !327, file: !299, line: 576, baseType: !357, size: 64, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !327, file: !299, line: 578, baseType: !215, size: 64, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !327, file: !299, line: 588, baseType: !362, size: 512, align: 512, offset: 1536)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !299, line: 497, size: 512, align: 512, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !362, file: !299, line: 498, baseType: !210, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !362, file: !299, line: 499, baseType: !210, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !362, file: !299, line: 500, baseType: !210, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !362, file: !299, line: 501, baseType: !264, size: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !362, file: !299, line: 502, baseType: !264, size: 32, offset: 224)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !362, file: !299, line: 503, baseType: !215, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !362, file: !299, line: 504, baseType: !215, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !362, file: !299, line: 505, baseType: !215, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !362, file: !299, line: 506, baseType: !373, size: 64, align: 64, offset: 448)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !299, line: 445, size: 64, align: 64, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !373, file: !299, line: 446, baseType: !17, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !373, file: !299, line: 447, baseType: !17, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !298, file: !299, line: 798, baseType: !378, size: 384, offset: 3072)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !299, line: 592, size: 384, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !378, file: !299, line: 593, baseType: !92, size: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !378, file: !299, line: 594, baseType: !215, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !378, file: !299, line: 595, baseType: !215, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !378, file: !299, line: 596, baseType: !17, size: 32, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !378, file: !299, line: 597, baseType: !149, size: 16, offset: 288)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !378, file: !299, line: 598, baseType: !149, size: 16, offset: 304)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !378, file: !299, line: 600, baseType: !387, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !298, file: !299, line: 799, baseType: !389, size: 1792, offset: 3456)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !299, line: 610, size: 1792, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !485, !486}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !389, file: !299, line: 611, baseType: !335, size: 192, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !389, file: !299, line: 618, baseType: !210, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !389, file: !299, line: 619, baseType: !210, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !389, file: !299, line: 620, baseType: !210, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !389, file: !299, line: 621, baseType: !210, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !389, file: !299, line: 622, baseType: !210, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !389, file: !299, line: 629, baseType: !192, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !389, file: !299, line: 630, baseType: !210, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !299, line: 631, baseType: !17, size: 32, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !389, file: !299, line: 653, baseType: !17, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !389, file: !299, line: 654, baseType: !17, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !389, file: !299, line: 655, baseType: !17, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !389, file: !299, line: 656, baseType: !17, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !389, file: !299, line: 662, baseType: !405, size: 512, offset: 704)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !406)
!406 = !{!407, !413, !414, !419, !481, !482, !483, !484}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !405, file: !27, line: 119, baseType: !408, size: 256)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !409, line: 9, size: 256, elements: !410)
!409 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !408, file: !409, line: 10, baseType: !335, size: 192, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !408, file: !409, line: 11, baseType: !190, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !405, file: !27, line: 120, baseType: !190, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !405, file: !27, line: 121, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!26, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !405, file: !27, line: 122, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !422)
!422 = !{!423, !449, !450, !454, !464, !465, !476, !480}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !421, file: !27, line: 160, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 215, size: 4608, align: 512, elements: !426)
!426 = !{!427, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !425, file: !27, line: 216, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !117, line: 23, baseType: !116)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !425, file: !27, line: 217, baseType: !17, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !425, file: !27, line: 218, baseType: !17, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !425, file: !27, line: 219, baseType: !17, size: 32, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !425, file: !27, line: 220, baseType: !17, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !425, file: !27, line: 221, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !425, file: !27, line: 222, baseType: !17, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !425, file: !27, line: 223, baseType: !17, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !425, file: !27, line: 224, baseType: !17, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !425, file: !27, line: 226, baseType: !17, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !425, file: !27, line: 227, baseType: !149, size: 16, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !425, file: !27, line: 228, baseType: !149, size: 16, offset: 208)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !425, file: !27, line: 229, baseType: !17, size: 32, offset: 224)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !425, file: !27, line: 235, baseType: !190, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !425, file: !27, line: 236, baseType: !418, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !425, file: !27, line: 237, baseType: !190, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !425, file: !27, line: 238, baseType: !418, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !425, file: !27, line: 239, baseType: !446, size: 4096, align: 512, offset: 512)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 4096, align: 512, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 8)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !421, file: !27, line: 161, baseType: !17, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !421, file: !27, line: 162, baseType: !451, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !93, line: 32, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !453, line: 96, baseType: !132)
!453 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!454 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !421, file: !27, line: 163, baseType: !455, size: 32, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !456, line: 274, baseType: !457)
!456 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !456, line: 274, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !457, file: !456, line: 274, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !456, line: 69, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !456, line: 64, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !461, file: !456, line: 65, baseType: !17, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !421, file: !27, line: 164, baseType: !418, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !421, file: !27, line: 165, baseType: !466, size: 128, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !409, line: 14, size: 128, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !466, file: !409, line: 15, baseType: !469, size: 128)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !336, line: 26, size: 128, elements: !470)
!470 = !{!471, !475}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !469, file: !336, line: 27, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !336, line: 12, size: 64, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !472, file: !336, line: 13, baseType: !340, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !469, file: !336, line: 28, baseType: !340, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !421, file: !27, line: 166, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!190}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !421, file: !27, line: 167, baseType: !190, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !27, line: 123, baseType: !137, size: 8, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !405, file: !27, line: 124, baseType: !137, size: 8, offset: 456)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !405, file: !27, line: 125, baseType: !137, size: 8, offset: 464)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !405, file: !27, line: 126, baseType: !137, size: 8, offset: 472)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !389, file: !299, line: 671, baseType: !405, size: 512, offset: 1216)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !389, file: !299, line: 679, baseType: !487, size: 64, offset: 1728)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !298, file: !299, line: 800, baseType: !489, size: 64, offset: 5248)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !299, line: 800, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !298, file: !299, line: 809, baseType: !493, size: 64, offset: 5312)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !299, line: 70, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !298, file: !299, line: 825, baseType: !496, size: 2048, align: 512, offset: 5632)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !299, line: 509, size: 2048, align: 512, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !496, file: !299, line: 511, baseType: !210, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !496, file: !299, line: 512, baseType: !210, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !496, file: !299, line: 513, baseType: !210, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !496, file: !299, line: 514, baseType: !210, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !496, file: !299, line: 515, baseType: !210, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !496, file: !299, line: 516, baseType: !210, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !496, file: !299, line: 518, baseType: !210, size: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !496, file: !299, line: 519, baseType: !210, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !496, file: !299, line: 520, baseType: !192, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !496, file: !299, line: 522, baseType: !210, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !496, file: !299, line: 523, baseType: !210, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !496, file: !299, line: 524, baseType: !192, size: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !496, file: !299, line: 526, baseType: !192, size: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !496, file: !299, line: 527, baseType: !210, size: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !496, file: !299, line: 529, baseType: !210, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !496, file: !299, line: 530, baseType: !210, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !496, file: !299, line: 531, baseType: !210, size: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !496, file: !299, line: 532, baseType: !210, size: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !496, file: !299, line: 533, baseType: !210, size: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !496, file: !299, line: 535, baseType: !210, size: 64, offset: 1216)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !496, file: !299, line: 536, baseType: !210, size: 64, offset: 1280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !496, file: !299, line: 537, baseType: !210, size: 64, offset: 1344)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !496, file: !299, line: 538, baseType: !210, size: 64, offset: 1408)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !496, file: !299, line: 539, baseType: !210, size: 64, offset: 1472)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !496, file: !299, line: 540, baseType: !210, size: 64, offset: 1536)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !496, file: !299, line: 541, baseType: !210, size: 64, offset: 1600)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !496, file: !299, line: 542, baseType: !210, size: 64, offset: 1664)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !496, file: !299, line: 543, baseType: !210, size: 64, offset: 1728)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !298, file: !299, line: 833, baseType: !17, size: 32, offset: 7680)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !298, file: !299, line: 836, baseType: !17, size: 32, offset: 7712)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !298, file: !299, line: 837, baseType: !132, size: 32, offset: 7744)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !298, file: !299, line: 838, baseType: !530, size: 64, offset: 7808)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !533, line: 19, baseType: !534)
!533 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !533, line: 19, size: 64, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !534, file: !533, line: 19, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 1)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !298, file: !299, line: 839, baseType: !541, size: 64, offset: 7872)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !298, file: !299, line: 840, baseType: !532, size: 64, offset: 7936)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !298, file: !299, line: 841, baseType: !81, size: 64, offset: 8000)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !298, file: !299, line: 843, baseType: !149, size: 16, offset: 8064)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !298, file: !299, line: 845, baseType: !149, size: 16, offset: 8080)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !298, file: !299, line: 848, baseType: !132, size: 32, offset: 8096)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !298, file: !299, line: 849, baseType: !548, size: 32, offset: 8128)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !299, line: 718, size: 32, elements: !549)
!549 = !{!550, !557}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !548, file: !299, line: 724, baseType: !551, size: 32)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !548, file: !299, line: 719, size: 32, elements: !552)
!552 = !{!553, !554, !555, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !551, file: !299, line: 720, baseType: !137, size: 8)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !551, file: !299, line: 721, baseType: !137, size: 8, offset: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !551, file: !299, line: 722, baseType: !137, size: 8, offset: 16)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !551, file: !299, line: 723, baseType: !137, size: 8, offset: 24)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !548, file: !299, line: 725, baseType: !264, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !298, file: !299, line: 850, baseType: !92, size: 128, offset: 8192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !298, file: !299, line: 851, baseType: !560, size: 64, offset: 8320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !299, line: 60, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !298, file: !299, line: 855, baseType: !215, size: 64, offset: 8384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !298, file: !299, line: 856, baseType: !137, size: 8, offset: 8448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !298, file: !299, line: 857, baseType: !137, size: 8, offset: 8456)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !298, file: !299, line: 858, baseType: !132, size: 32, offset: 8480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !298, file: !299, line: 859, baseType: !92, size: 128, offset: 8512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !298, file: !299, line: 860, baseType: !132, size: 32, offset: 8640)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !298, file: !299, line: 861, baseType: !92, size: 128, offset: 8704)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !298, file: !299, line: 873, baseType: !570, size: 256, offset: 8832)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !299, line: 376, size: 256, elements: !571)
!571 = !{!572, !573, !574, !575}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !570, file: !299, line: 381, baseType: !215, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !570, file: !299, line: 384, baseType: !212, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !570, file: !299, line: 389, baseType: !212, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !570, file: !299, line: 392, baseType: !212, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !298, file: !299, line: 875, baseType: !92, size: 128, offset: 9088)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !298, file: !299, line: 877, baseType: !578, size: 320, offset: 9216)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !579, line: 86, size: 320, elements: !580)
!579 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!580 = !{!581, !582, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !578, file: !579, line: 87, baseType: !132, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !578, file: !579, line: 88, baseType: !92, size: 128, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !578, file: !579, line: 89, baseType: !92, size: 128, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !298, file: !299, line: 878, baseType: !335, size: 192, align: 64, offset: 9536)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !298, file: !299, line: 881, baseType: !586, size: 64, offset: 9728)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !588, line: 733, size: 10240, elements: !589)
!588 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!589 = !{!590, !772}
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !588, line: 734, baseType: !591, size: 10240)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !588, line: 734, size: 10240, elements: !592)
!592 = !{!593, !597, !611, !618, !619, !620, !621, !622, !623, !631, !632, !633, !639, !640, !647, !648, !649, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !690, !704, !707, !739, !740, !741, !744, !747, !748, !751, !752, !753, !759, !760}
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !588, line: 739, baseType: !594, size: 512, align: 512)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !591, file: !588, line: 739, size: 512, align: 512, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !594, file: !588, line: 747, baseType: !128, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !591, file: !588, line: 750, baseType: !598, size: 128, offset: 512)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !599, line: 218, size: 128, elements: !600)
!599 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!600 = !{!601, !609, !610}
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !599, line: 219, baseType: !602, size: 32)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !599, line: 219, size: 32, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !602, file: !599, line: 220, baseType: !108, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !602, file: !599, line: 221, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !599, line: 197, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !599, line: 197, elements: !608)
!608 = !{}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !598, file: !599, line: 223, baseType: !17, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !598, file: !599, line: 224, baseType: !81, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !591, file: !588, line: 752, baseType: !612, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!215, !615, !215, !215, !215, !215}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !617, line: 537, flags: DIFlagFwdDecl)
!617 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !591, file: !588, line: 756, baseType: !215, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !591, file: !588, line: 757, baseType: !215, size: 64, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !591, file: !588, line: 760, baseType: !215, size: 64, offset: 832)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !591, file: !588, line: 761, baseType: !215, size: 64, offset: 896)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !591, file: !588, line: 763, baseType: !215, size: 64, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !591, file: !588, line: 764, baseType: !624, size: 64, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !617, line: 299, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !617, line: 299, size: 64, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !626, file: !617, line: 299, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !630, line: 18, baseType: !215)
!630 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !591, file: !588, line: 773, baseType: !128, size: 32, offset: 1088)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !591, file: !588, line: 785, baseType: !128, size: 32, offset: 1120)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !591, file: !588, line: 795, baseType: !634, size: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !588, line: 726, size: 128, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !635, file: !588, line: 727, baseType: !210, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !635, file: !588, line: 728, baseType: !132, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !591, file: !588, line: 801, baseType: !215, size: 64, offset: 1216)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !591, file: !588, line: 804, baseType: !641, size: 64, offset: 1280)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !642, line: 13, baseType: !643)
!642 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !93, line: 181, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 179, size: 64, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !644, file: !93, line: 180, baseType: !192, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !591, file: !588, line: 806, baseType: !132, size: 32, offset: 1344)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !591, file: !588, line: 808, baseType: !108, size: 32, offset: 1376)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !591, file: !588, line: 823, baseType: !650, size: 320, offset: 1408)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !651, line: 48, size: 320, elements: !652)
!651 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!652 = !{!653, !654, !655, !660, !661}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !650, file: !651, line: 49, baseType: !641, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !650, file: !651, line: 55, baseType: !641, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !650, file: !651, line: 57, baseType: !656, size: 32, offset: 128)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !657, line: 15, size: 32, elements: !658)
!657 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !656, file: !657, line: 20, baseType: !128, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !650, file: !651, line: 59, baseType: !428, size: 32, offset: 160)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !650, file: !651, line: 60, baseType: !92, size: 128, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !591, file: !588, line: 825, baseType: !92, size: 128, offset: 1728)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !591, file: !588, line: 845, baseType: !132, size: 32, offset: 1856)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !591, file: !588, line: 849, baseType: !215, size: 64, offset: 1920)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !591, file: !588, line: 850, baseType: !215, size: 64, offset: 1984)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !591, file: !588, line: 852, baseType: !215, size: 64, offset: 2048)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !591, file: !588, line: 853, baseType: !215, size: 64, offset: 2112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !591, file: !588, line: 854, baseType: !643, size: 64, offset: 2176)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !591, file: !588, line: 855, baseType: !215, size: 64, offset: 2240)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !591, file: !588, line: 856, baseType: !215, size: 64, offset: 2304)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !591, file: !588, line: 857, baseType: !215, size: 64, offset: 2368)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !591, file: !588, line: 858, baseType: !215, size: 64, offset: 2432)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !591, file: !588, line: 865, baseType: !460, size: 32, offset: 2496)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !591, file: !588, line: 867, baseType: !108, size: 32, offset: 2528)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !591, file: !588, line: 869, baseType: !215, size: 64, offset: 2560)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !591, file: !588, line: 869, baseType: !215, size: 64, offset: 2624)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !591, file: !588, line: 869, baseType: !215, size: 64, offset: 2688)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !591, file: !588, line: 869, baseType: !215, size: 64, offset: 2752)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !591, file: !588, line: 870, baseType: !215, size: 64, offset: 2816)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !591, file: !588, line: 870, baseType: !215, size: 64, offset: 2880)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !591, file: !588, line: 870, baseType: !215, size: 64, offset: 2944)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !591, file: !588, line: 871, baseType: !215, size: 64, offset: 3008)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !591, file: !588, line: 871, baseType: !215, size: 64, offset: 3072)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !591, file: !588, line: 871, baseType: !215, size: 64, offset: 3136)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !591, file: !588, line: 871, baseType: !215, size: 64, offset: 3200)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !591, file: !588, line: 873, baseType: !687, size: 3328, offset: 3264)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 3328, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 52)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !591, file: !588, line: 875, baseType: !691, size: 1280, offset: 6592)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 1280, elements: !702)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !693, line: 22, size: 320, elements: !694)
!693 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!694 = !{!695, !696, !697, !698}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !693, line: 23, baseType: !428, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !693, line: 24, baseType: !192, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !692, file: !693, line: 26, baseType: !92, size: 128, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !692, file: !693, line: 28, baseType: !699, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !138, line: 20, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !140, line: 26, baseType: !132)
!702 = !{!703}
!703 = !DISubrange(count: 4)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !591, file: !588, line: 877, baseType: !705, size: 64, offset: 7872)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !588, line: 877, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !591, file: !588, line: 880, baseType: !708, size: 1088, offset: 7936)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !709, line: 72, baseType: !710)
!709 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !709, line: 23, size: 1088, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !719, !720, !728, !729, !733, !734, !735}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !710, file: !709, line: 28, baseType: !210, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !710, file: !709, line: 38, baseType: !643, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !710, file: !709, line: 40, baseType: !215, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !710, file: !709, line: 43, baseType: !650, size: 320, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !710, file: !709, line: 44, baseType: !717, size: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !709, line: 44, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !709, line: 48, baseType: !215, size: 64, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !710, file: !709, line: 59, baseType: !721, size: 256, offset: 640)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !722, line: 66, size: 256, elements: !723)
!722 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!723 = !{!724, !725, !726, !727}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !721, file: !722, line: 67, baseType: !641, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !721, file: !722, line: 68, baseType: !428, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !721, file: !722, line: 70, baseType: !656, size: 32, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !721, file: !722, line: 72, baseType: !92, size: 128, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !710, file: !709, line: 60, baseType: !81, size: 64, offset: 896)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !710, file: !709, line: 61, baseType: !730, size: 64, offset: 960)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !709, line: 61, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !710, file: !709, line: 63, baseType: !128, size: 32, offset: 1024)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !710, file: !709, line: 69, baseType: !147, size: 16, offset: 1056)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !710, file: !709, line: 70, baseType: !736, size: 16, offset: 1072)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !138, line: 18, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !140, line: 23, baseType: !738)
!738 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !588, line: 882, baseType: !215, size: 64, offset: 9024)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !591, file: !588, line: 885, baseType: !108, size: 32, offset: 9088)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !591, file: !588, line: 886, baseType: !742, size: 64, offset: 9152)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !588, line: 732, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !591, file: !588, line: 901, baseType: !745, size: 64, offset: 9216)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !588, line: 901, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !591, file: !588, line: 904, baseType: !615, size: 64, offset: 9280)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !591, file: !588, line: 906, baseType: !749, size: 64, offset: 9344)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !588, line: 906, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !591, file: !588, line: 930, baseType: !128, size: 32, offset: 9408)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !591, file: !588, line: 933, baseType: !128, size: 32, offset: 9440)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !591, file: !588, line: 935, baseType: !754, size: 64, offset: 9472)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !38, line: 103, size: 64, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !754, file: !38, line: 104, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !38, line: 101, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !591, file: !588, line: 940, baseType: !641, size: 64, offset: 9536)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !591, file: !588, line: 942, baseType: !761, size: 256, offset: 9600)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !762, line: 98, size: 256, elements: !763)
!762 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!763 = !{!764, !765, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !761, file: !762, line: 99, baseType: !641, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !761, file: !762, line: 100, baseType: !92, size: 128, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !761, file: !762, line: 101, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !762, line: 21, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !587, file: !588, line: 986, baseType: !773, offset: 10240)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: -1)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !298, file: !299, line: 882, baseType: !586, size: 64, offset: 9792)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !298, file: !299, line: 884, baseType: !132, size: 32, offset: 9856)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !298, file: !299, line: 885, baseType: !132, size: 32, offset: 9888)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !298, file: !299, line: 886, baseType: !132, size: 32, offset: 9920)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !298, file: !299, line: 888, baseType: !132, size: 32, offset: 9952)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !298, file: !299, line: 890, baseType: !215, size: 64, offset: 9984)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !298, file: !299, line: 893, baseType: !17, size: 32, offset: 10048)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !298, file: !299, line: 896, baseType: !17, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !298, file: !299, line: 897, baseType: !17, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !298, file: !299, line: 898, baseType: !17, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !298, file: !299, line: 899, baseType: !17, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !298, file: !299, line: 919, baseType: !17, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !298, file: !299, line: 922, baseType: !17, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !298, file: !299, line: 923, baseType: !17, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !298, file: !299, line: 925, baseType: !17, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !298, file: !299, line: 939, baseType: !17, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !298, file: !299, line: 941, baseType: !17, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !298, file: !299, line: 944, baseType: !17, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !298, file: !299, line: 956, baseType: !17, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !298, file: !299, line: 962, baseType: !17, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !298, file: !299, line: 966, baseType: !17, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !298, file: !299, line: 969, baseType: !215, size: 64, offset: 10176)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !298, file: !299, line: 971, baseType: !799, size: 448, offset: 10240)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 448, elements: !800)
!800 = !{!801, !802, !807}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !799, file: !32, line: 26, baseType: !215, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !799, file: !32, line: 27, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!175, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !32, line: 28, baseType: !808, size: 320, offset: 128)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !32, line: 28, size: 320, elements: !809)
!809 = !{!810, !820, !845}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !808, file: !32, line: 37, baseType: !811, size: 320)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !32, line: 30, size: 320, elements: !812)
!812 = !{!813, !815, !816, !817, !818, !819}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !811, file: !32, line: 31, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !811, file: !32, line: 32, baseType: !264, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !32, line: 33, baseType: !264, size: 32, offset: 96)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !811, file: !32, line: 34, baseType: !264, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !811, file: !32, line: 35, baseType: !210, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !811, file: !32, line: 36, baseType: !814, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !808, file: !32, line: 47, baseType: !821, size: 192)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !32, line: 39, size: 192, elements: !822)
!822 = !{!823, !824, !825, !844}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !821, file: !32, line: 40, baseType: !451, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !821, file: !32, line: 41, baseType: !31, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !32, line: 42, baseType: !826, size: 64, offset: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !821, file: !32, line: 42, size: 64, elements: !827)
!827 = !{!828, !836}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !826, file: !32, line: 43, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !831, line: 7, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!832 = !{!833, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !830, file: !831, line: 8, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !453, line: 93, baseType: !194)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !830, file: !831, line: 9, baseType: !194, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !826, file: !32, line: 44, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !839, line: 7, size: 64, elements: !840)
!839 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!840 = !{!841, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !838, file: !839, line: 8, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !839, line: 5, baseType: !700)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !838, file: !839, line: 9, baseType: !700, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !821, file: !32, line: 46, baseType: !210, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !808, file: !32, line: 55, baseType: !846, size: 256)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !32, line: 49, size: 256, elements: !847)
!847 = !{!848, !851, !852, !853, !854}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !846, file: !32, line: 50, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !846, file: !32, line: 51, baseType: !132, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !846, file: !32, line: 52, baseType: !132, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !846, file: !32, line: 53, baseType: !215, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !846, file: !32, line: 54, baseType: !215, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !298, file: !299, line: 973, baseType: !856, size: 32, offset: 10688)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !93, line: 27, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !453, line: 28, baseType: !132)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !298, file: !299, line: 974, baseType: !856, size: 32, offset: 10720)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !298, file: !299, line: 978, baseType: !215, size: 64, offset: 10752)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !298, file: !299, line: 987, baseType: !297, size: 64, offset: 10816)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !298, file: !299, line: 990, baseType: !297, size: 64, offset: 10880)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !298, file: !299, line: 995, baseType: !92, size: 128, offset: 10944)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !298, file: !299, line: 996, baseType: !92, size: 128, offset: 11072)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !298, file: !299, line: 997, baseType: !297, size: 64, offset: 11200)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !298, file: !299, line: 1005, baseType: !92, size: 128, offset: 11264)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !298, file: !299, line: 1006, baseType: !92, size: 128, offset: 11392)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !298, file: !299, line: 1009, baseType: !868, size: 64, offset: 11520)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !870, line: 59, size: 768, elements: !871)
!870 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!871 = !{!872, !873, !874, !875, !880, !881, !882, !883}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !869, file: !870, line: 61, baseType: !221, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !869, file: !870, line: 62, baseType: !17, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !869, file: !870, line: 63, baseType: !108, size: 32, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !869, file: !870, line: 65, baseType: !876, size: 256, offset: 128)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 256, elements: !702)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !93, line: 194, size: 64, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !877, file: !93, line: 195, baseType: !254, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !869, file: !870, line: 66, baseType: !877, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !869, file: !870, line: 68, baseType: !232, size: 192, offset: 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !869, file: !870, line: 69, baseType: !201, size: 128, align: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !869, file: !870, line: 70, baseType: !884, offset: 768)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, elements: !774)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !870, line: 54, size: 128, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !885, file: !870, line: 55, baseType: !132, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !885, file: !870, line: 56, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !870, line: 56, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !298, file: !299, line: 1010, baseType: !892, size: 512, offset: 11584)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 512, elements: !702)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !298, file: !299, line: 1011, baseType: !92, size: 128, offset: 12096)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !298, file: !299, line: 1012, baseType: !92, size: 128, offset: 12224)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !298, file: !299, line: 1014, baseType: !896, size: 64, offset: 12352)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !898, line: 26, size: 256, elements: !899)
!898 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !897, file: !898, line: 27, baseType: !17, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !897, file: !898, line: 28, baseType: !902, size: 192, offset: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !903, line: 43, size: 192, elements: !904)
!903 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !902, file: !903, line: 44, baseType: !428, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !902, file: !903, line: 45, baseType: !92, size: 128, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !298, file: !299, line: 1017, baseType: !908, size: 64, offset: 12416)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !298, file: !299, line: 1020, baseType: !908, size: 64, offset: 12480)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !298, file: !299, line: 1023, baseType: !81, size: 64, offset: 12544)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !298, file: !299, line: 1025, baseType: !210, size: 64, offset: 12608)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !298, file: !299, line: 1026, baseType: !210, size: 64, offset: 12672)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !298, file: !299, line: 1031, baseType: !210, size: 64, offset: 12736)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !298, file: !299, line: 1032, baseType: !915, size: 192, offset: 12800)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !299, line: 324, size: 192, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !915, file: !299, line: 326, baseType: !210, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !915, file: !299, line: 327, baseType: !210, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !915, file: !299, line: 328, baseType: !428, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !298, file: !299, line: 1041, baseType: !215, size: 64, offset: 12992)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !298, file: !299, line: 1042, baseType: !215, size: 64, offset: 13056)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !298, file: !299, line: 1045, baseType: !210, size: 64, offset: 13120)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !298, file: !299, line: 1048, baseType: !210, size: 64, offset: 13184)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !298, file: !299, line: 1051, baseType: !215, size: 64, offset: 13248)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !298, file: !299, line: 1052, baseType: !215, size: 64, offset: 13312)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !298, file: !299, line: 1055, baseType: !927, size: 640, offset: 13376)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !928, line: 132, size: 640, elements: !929)
!928 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!929 = !{!930, !938, !939}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !927, file: !928, line: 133, baseType: !931, size: 576)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 576, elements: !936)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !928, line: 117, size: 192, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !932, file: !928, line: 118, baseType: !210, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !932, file: !928, line: 119, baseType: !466, size: 128, offset: 64)
!936 = !{!937}
!937 = !DISubrange(count: 3)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !927, file: !928, line: 134, baseType: !17, size: 32, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !927, file: !928, line: 135, baseType: !17, size: 32, offset: 608)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !298, file: !299, line: 1058, baseType: !941, size: 448, offset: 14016)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !928, line: 144, size: 448, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !941, file: !928, line: 145, baseType: !201, size: 128, align: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !941, file: !928, line: 146, baseType: !721, size: 256, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !941, file: !928, line: 147, baseType: !17, size: 32, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !298, file: !299, line: 1064, baseType: !947, size: 64, offset: 14464)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !950, line: 110, size: 1472, elements: !951)
!950 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!951 = !{!952, !953, !961, !968, !969, !970, !971, !972, !973, !974, !975, !981, !982, !983, !984, !985, !986, !1096, !1097, !1098, !1099, !1100, !1123, !1124, !1128, !1136}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !949, file: !950, line: 111, baseType: !641, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !949, file: !950, line: 112, baseType: !954, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !955, line: 23, baseType: !956)
!955 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 21, size: 32, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !956, file: !955, line: 22, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !93, line: 37, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !453, line: 49, baseType: !17)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !949, file: !950, line: 113, baseType: !962, size: 32, offset: 96)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !955, line: 28, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 26, size: 32, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !963, file: !955, line: 27, baseType: !966, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !93, line: 38, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !453, line: 50, baseType: !17)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !949, file: !950, line: 114, baseType: !954, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !949, file: !950, line: 115, baseType: !962, size: 32, offset: 160)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !949, file: !950, line: 116, baseType: !954, size: 32, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !949, file: !950, line: 117, baseType: !962, size: 32, offset: 224)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !949, file: !950, line: 118, baseType: !954, size: 32, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !949, file: !950, line: 119, baseType: !962, size: 32, offset: 288)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !949, file: !950, line: 120, baseType: !17, size: 32, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !949, file: !950, line: 121, baseType: !976, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !977, line: 24, baseType: !978)
!977 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !977, line: 24, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !978, file: !977, line: 24, baseType: !210, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !949, file: !950, line: 122, baseType: !976, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !949, file: !950, line: 123, baseType: !976, size: 64, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !949, file: !950, line: 124, baseType: !976, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !949, file: !950, line: 125, baseType: !976, size: 64, offset: 640)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !949, file: !950, line: 127, baseType: !141, size: 8, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !949, file: !950, line: 129, baseType: !987, size: 64, offset: 768)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !989, line: 195, size: 1728, elements: !990)
!989 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!990 = !{!991, !992, !995, !1000, !1001, !1004, !1005, !1012, !1013, !1014, !1015, !1018, !1019, !1020, !1021, !1022, !1060, !1081}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !988, file: !989, line: 196, baseType: !221, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !988, file: !989, line: 197, baseType: !993, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !989, line: 28, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !93, line: 104, baseType: !700)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !989, line: 198, baseType: !996, size: 192, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 198, size: 192, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !996, file: !989, line: 199, baseType: !92, size: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !996, file: !989, line: 200, baseType: !335, size: 192, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !988, file: !989, line: 205, baseType: !650, size: 320, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !988, file: !989, line: 206, baseType: !1002, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !989, line: 206, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !988, file: !989, line: 207, baseType: !81, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !989, line: 208, baseType: !1006, size: 64, offset: 704)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 208, size: 64, elements: !1007)
!1007 = !{!1008, !1011}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1006, file: !989, line: 209, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1010, line: 8, baseType: !193)
!1010 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1006, file: !989, line: 210, baseType: !1009, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !988, file: !989, line: 212, baseType: !1009, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !988, file: !989, line: 213, baseType: !954, size: 32, offset: 832)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !988, file: !989, line: 214, baseType: !962, size: 32, offset: 864)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !988, file: !989, line: 215, baseType: !1016, size: 32, offset: 896)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !989, line: 31, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 110, baseType: !264)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !988, file: !989, line: 216, baseType: !149, size: 16, offset: 928)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !988, file: !989, line: 217, baseType: !149, size: 16, offset: 944)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !988, file: !989, line: 221, baseType: !738, size: 16, offset: 960)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !988, file: !989, line: 228, baseType: !215, size: 64, offset: 1024)
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !989, line: 245, baseType: !1023, size: 320, offset: 1088)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 245, size: 320, elements: !1024)
!1024 = !{!1025, !1052}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1023, file: !989, line: 246, baseType: !1026, size: 320)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !989, line: 114, size: 320, elements: !1027)
!1027 = !{!1028, !1029, !1041, !1044, !1051}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1026, file: !989, line: 116, baseType: !215, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !989, line: 117, baseType: !1030, size: 64, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !989, line: 117, size: 64, elements: !1031)
!1031 = !{!1032, !1040}
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !989, line: 118, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !989, line: 118, size: 64, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1033, file: !989, line: 120, baseType: !147, size: 16)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1033, file: !989, line: 121, baseType: !1037, size: 48, offset: 16)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 6)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1030, file: !989, line: 127, baseType: !215, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1026, file: !989, line: 129, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !989, line: 102, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1026, file: !989, line: 130, baseType: !1045, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !989, line: 108, size: 192, elements: !1047)
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1046, file: !989, line: 109, baseType: !201, size: 128, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1046, file: !989, line: 110, baseType: !221, size: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1046, file: !989, line: 111, baseType: !157, size: 8, offset: 160)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1026, file: !989, line: 131, baseType: !163, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !989, line: 247, baseType: !1053, size: 320)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !989, line: 247, size: 320, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1053, file: !989, line: 248, baseType: !215, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1053, file: !989, line: 249, baseType: !215, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1053, file: !989, line: 250, baseType: !1042, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1053, file: !989, line: 251, baseType: !1045, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1053, file: !989, line: 252, baseType: !184, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !989, line: 260, baseType: !1061, size: 256, offset: 1408)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 260, size: 256, elements: !1062)
!1062 = !{!1063, !1069}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1061, file: !989, line: 261, baseType: !1064, size: 256)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !989, line: 134, size: 256, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1064, file: !989, line: 135, baseType: !81, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1064, file: !989, line: 136, baseType: !1068, size: 256)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !702)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !989, line: 262, baseType: !1070, size: 256)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !989, line: 262, size: 256, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1070, file: !989, line: 264, baseType: !92, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1070, file: !989, line: 265, baseType: !1074, size: 128, offset: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1075, line: 22, size: 128, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1076 = !{!1077, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1074, file: !1075, line: 23, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1075, line: 23, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1074, file: !1075, line: 24, baseType: !215, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !988, file: !989, line: 280, baseType: !1082, size: 64, offset: 1664)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !989, line: 176, size: 192, elements: !1084)
!1084 = !{!1085, !1094, !1095}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1083, file: !989, line: 177, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !989, line: 171, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!132, !987, !1090, !1092, !987}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1083, file: !989, line: 178, baseType: !987, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1083, file: !989, line: 179, baseType: !1042, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !949, file: !950, line: 130, baseType: !987, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !949, file: !950, line: 131, baseType: !987, size: 64, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !949, file: !950, line: 132, baseType: !987, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !949, file: !950, line: 135, baseType: !81, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !949, file: !950, line: 137, baseType: !1101, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1103, line: 14, size: 1088, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1102, file: !1103, line: 15, baseType: !221, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1102, file: !1103, line: 17, baseType: !692, size: 320, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1102, file: !1103, line: 19, baseType: !215, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1102, file: !1103, line: 20, baseType: !641, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1102, file: !1103, line: 23, baseType: !251, size: 128, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1102, file: !1103, line: 24, baseType: !954, size: 32, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1102, file: !1103, line: 29, baseType: !641, size: 64, offset: 704)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1102, file: !1103, line: 36, baseType: !1113, size: 320, offset: 768)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1114, line: 15, size: 320, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1113, file: !1114, line: 16, baseType: !428, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1113, file: !1114, line: 18, baseType: !132, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1113, file: !1114, line: 19, baseType: !132, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1113, file: !1114, line: 20, baseType: !132, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1113, file: !1114, line: 21, baseType: !132, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1113, file: !1114, line: 22, baseType: !215, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !1114, line: 23, baseType: !215, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !949, file: !950, line: 138, baseType: !745, size: 64, offset: 1152)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !949, file: !950, line: 139, baseType: !1125, size: 64, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1127, line: 16, flags: DIFlagFwdDecl)
!1127 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !949, file: !950, line: 140, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !950, line: 25, size: 64, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1130, file: !950, line: 26, baseType: !128, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1130, file: !950, line: 27, baseType: !132, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1130, file: !950, line: 28, baseType: !1135, offset: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, elements: !774)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !950, line: 142, baseType: !1137, size: 128, offset: 1344)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !950, line: 142, size: 128, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1137, file: !950, line: 143, baseType: !132, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1137, file: !950, line: 144, baseType: !201, size: 128, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !298, file: !299, line: 1067, baseType: !947, size: 64, offset: 14528)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !298, file: !299, line: 1070, baseType: !947, size: 64, offset: 14592)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !298, file: !299, line: 1074, baseType: !987, size: 64, offset: 14656)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !298, file: !299, line: 1084, baseType: !1145, size: 128, offset: 14720)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 16)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !298, file: !299, line: 1086, baseType: !1149, size: 64, offset: 14848)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !299, line: 55, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !298, file: !299, line: 1089, baseType: !1152, size: 64, offset: 14912)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1153, line: 12, size: 64, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1152, file: !1153, line: 13, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1153, line: 8, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !298, file: !299, line: 1090, baseType: !1159, size: 128, offset: 14976)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1160, line: 13, size: 128, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1159, file: !1160, line: 14, baseType: !92, size: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !298, file: !299, line: 1097, baseType: !1164, size: 64, offset: 15104)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !299, line: 50, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !298, file: !299, line: 1100, baseType: !1167, size: 64, offset: 15168)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !299, line: 1100, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !298, file: !299, line: 1103, baseType: !1170, size: 64, offset: 15232)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !299, line: 53, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !298, file: !299, line: 1107, baseType: !1173, size: 64, offset: 15296)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !299, line: 56, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !298, file: !299, line: 1110, baseType: !1176, size: 64, offset: 15360)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1178, line: 93, size: 8768, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1229, !1238, !1239, !1241, !1242, !1243, !1246, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1288, !1289, !1297, !1307, !1310, !1311, !1314, !1315, !1316, !1317, !1318, !1319}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1177, file: !1178, line: 94, baseType: !221, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1177, file: !1178, line: 95, baseType: !128, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1177, file: !1178, line: 96, baseType: !132, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1177, file: !1178, line: 97, baseType: !132, size: 32, offset: 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1177, file: !1178, line: 98, baseType: !92, size: 128, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1177, file: !1178, line: 100, baseType: !232, size: 192, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1177, file: !1178, line: 103, baseType: !297, size: 64, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1177, file: !1178, line: 106, baseType: !1188, size: 192, offset: 512)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1127, line: 32, size: 192, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1188, file: !1127, line: 33, baseType: !92, size: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1188, file: !1127, line: 34, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1193, line: 25, baseType: !1194)
!1193 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 23, size: 64, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1194, file: !1193, line: 24, baseType: !537, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1177, file: !1178, line: 109, baseType: !877, size: 64, offset: 704)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1177, file: !1178, line: 112, baseType: !132, size: 32, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1177, file: !1178, line: 114, baseType: !132, size: 32, offset: 800)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1177, file: !1178, line: 115, baseType: !297, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1177, file: !1178, line: 118, baseType: !132, size: 32, offset: 896)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1177, file: !1178, line: 119, baseType: !17, size: 32, offset: 928)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1177, file: !1178, line: 121, baseType: !1204, size: 64, offset: 960)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1178, line: 80, size: 448, elements: !1206)
!1206 = !{!1207, !1208, !1214}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1205, file: !1178, line: 81, baseType: !128, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1205, file: !1178, line: 82, baseType: !1209, size: 128, offset: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1178, line: 75, size: 128, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1209, file: !1178, line: 76, baseType: !297, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1209, file: !1178, line: 77, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1205, file: !1178, line: 83, baseType: !897, size: 256, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1177, file: !1178, line: 132, baseType: !17, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1177, file: !1178, line: 133, baseType: !17, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1177, file: !1178, line: 138, baseType: !17, size: 32, offset: 1056)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1177, file: !1178, line: 139, baseType: !92, size: 128, offset: 1088)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1177, file: !1178, line: 142, baseType: !405, size: 512, offset: 1216)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1177, file: !1178, line: 143, baseType: !190, size: 64, offset: 1728)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1177, file: !1178, line: 150, baseType: !1222, size: 256, offset: 1792)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1223, size: 256, elements: !1227)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1178, line: 38, size: 128, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1223, file: !1178, line: 39, baseType: !210, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1223, file: !1178, line: 40, baseType: !210, size: 64, offset: 64)
!1227 = !{!1228}
!1228 = !DISubrange(count: 2)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1177, file: !1178, line: 156, baseType: !1230, size: 192, offset: 2048)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1178, line: 66, size: 192, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1230, file: !1178, line: 67, baseType: !1233, size: 192)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1178, line: 47, size: 192, elements: !1234)
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1233, file: !1178, line: 48, baseType: !643, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1233, file: !1178, line: 49, baseType: !643, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1233, file: !1178, line: 50, baseType: !643, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1177, file: !1178, line: 160, baseType: !927, size: 640, offset: 2240)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1177, file: !1178, line: 163, baseType: !1240, size: 256, offset: 2880)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 256, elements: !702)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1177, file: !1178, line: 169, baseType: !868, size: 64, offset: 3136)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1177, file: !1178, line: 172, baseType: !132, size: 32, offset: 3200)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1177, file: !1178, line: 174, baseType: !1244, size: 64, offset: 3264)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1178, line: 174, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1177, file: !1178, line: 185, baseType: !1247, size: 64, offset: 3328)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !456, line: 860, baseType: !1248)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 853, size: 64, elements: !1249)
!1249 = !{!1250, !1255}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1248, file: !456, line: 858, baseType: !1251, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !456, line: 275, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !456, line: 275, size: 32, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1252, file: !456, line: 275, baseType: !460, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1248, file: !456, line: 859, baseType: !108, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1177, file: !1178, line: 186, baseType: !210, size: 64, offset: 3392)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1177, file: !1178, line: 186, baseType: !210, size: 64, offset: 3456)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1177, file: !1178, line: 186, baseType: !210, size: 64, offset: 3520)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1177, file: !1178, line: 186, baseType: !210, size: 64, offset: 3584)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1177, file: !1178, line: 187, baseType: !210, size: 64, offset: 3648)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1177, file: !1178, line: 188, baseType: !210, size: 64, offset: 3712)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1177, file: !1178, line: 189, baseType: !915, size: 192, offset: 3776)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1177, file: !1178, line: 190, baseType: !215, size: 64, offset: 3968)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1177, file: !1178, line: 190, baseType: !215, size: 64, offset: 4032)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1177, file: !1178, line: 190, baseType: !215, size: 64, offset: 4096)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1177, file: !1178, line: 190, baseType: !215, size: 64, offset: 4160)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1177, file: !1178, line: 191, baseType: !215, size: 64, offset: 4224)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1177, file: !1178, line: 191, baseType: !215, size: 64, offset: 4288)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1177, file: !1178, line: 191, baseType: !215, size: 64, offset: 4352)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1177, file: !1178, line: 191, baseType: !215, size: 64, offset: 4416)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1177, file: !1178, line: 192, baseType: !215, size: 64, offset: 4480)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1177, file: !1178, line: 192, baseType: !215, size: 64, offset: 4544)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1177, file: !1178, line: 192, baseType: !215, size: 64, offset: 4608)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1177, file: !1178, line: 192, baseType: !215, size: 64, offset: 4672)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1177, file: !1178, line: 193, baseType: !215, size: 64, offset: 4736)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1177, file: !1178, line: 193, baseType: !215, size: 64, offset: 4800)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1177, file: !1178, line: 194, baseType: !1278, size: 448, offset: 4864)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1279, line: 12, size: 448, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1278, file: !1279, line: 15, baseType: !210, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1278, file: !1279, line: 17, baseType: !210, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1278, file: !1279, line: 19, baseType: !210, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1278, file: !1279, line: 21, baseType: !210, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1278, file: !1279, line: 29, baseType: !210, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1278, file: !1279, line: 35, baseType: !210, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1278, file: !1279, line: 44, baseType: !210, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1177, file: !1178, line: 202, baseType: !212, size: 64, offset: 5312)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1177, file: !1178, line: 213, baseType: !1290, size: 2048, offset: 5376)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1291, size: 2048, elements: !1146)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1292, line: 43, size: 128, elements: !1293)
!1292 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1293 = !{!1294, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1291, file: !1292, line: 44, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !453, line: 16, baseType: !215)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1291, file: !1292, line: 45, baseType: !1295, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1177, file: !1178, line: 216, baseType: !1298, size: 448, offset: 7424)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1178, line: 30, size: 448, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1298, file: !1178, line: 31, baseType: !132, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1298, file: !1178, line: 32, baseType: !175, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1298, file: !1178, line: 33, baseType: !215, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1298, file: !1178, line: 34, baseType: !210, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1298, file: !1178, line: 34, baseType: !210, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1298, file: !1178, line: 35, baseType: !215, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1298, file: !1178, line: 35, baseType: !215, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1177, file: !1178, line: 219, baseType: !1308, size: 64, offset: 7872)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1178, line: 219, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1177, file: !1178, line: 222, baseType: !17, size: 32, offset: 7936)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1177, file: !1178, line: 223, baseType: !1312, size: 64, offset: 8000)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1178, line: 223, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1177, file: !1178, line: 230, baseType: !157, size: 8, offset: 8064)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1177, file: !1178, line: 231, baseType: !738, size: 16, offset: 8080)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1177, file: !1178, line: 232, baseType: !738, size: 16, offset: 8096)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1177, file: !1178, line: 234, baseType: !586, size: 64, offset: 8128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1177, file: !1178, line: 237, baseType: !721, size: 256, offset: 8192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1177, file: !1178, line: 243, baseType: !650, size: 320, offset: 8448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !298, file: !299, line: 1111, baseType: !1321, size: 64, offset: 15424)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1178, line: 20, size: 16640, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1322, file: !1178, line: 21, baseType: !108, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1322, file: !1178, line: 22, baseType: !221, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1322, file: !1178, line: 23, baseType: !232, size: 192, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1322, file: !1178, line: 24, baseType: !1328, size: 16384, offset: 256)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 16384, elements: !1347)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1127, line: 51, size: 256, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1329, file: !1127, line: 52, baseType: !1332, size: 256)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1127, line: 37, size: 256, elements: !1333)
!1333 = !{!1334, !1341, !1342, !1346}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1332, file: !1127, line: 39, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1336, line: 83, baseType: !1337)
!1336 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1336, line: 82, baseType: !1339)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !132}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1332, file: !1127, line: 40, baseType: !215, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1332, file: !1127, line: 46, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1336, line: 86, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1336, line: 85, baseType: !11)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1332, file: !1127, line: 48, baseType: !1192, size: 64, offset: 192)
!1347 = !{!1348}
!1348 = !DISubrange(count: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !298, file: !299, line: 1112, baseType: !1192, size: 64, offset: 15488)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !298, file: !299, line: 1113, baseType: !1192, size: 64, offset: 15552)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !298, file: !299, line: 1115, baseType: !1192, size: 64, offset: 15616)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !298, file: !299, line: 1116, baseType: !1188, size: 192, offset: 15680)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !298, file: !299, line: 1117, baseType: !215, size: 64, offset: 15872)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !298, file: !299, line: 1118, baseType: !1355, size: 64, offset: 15936)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 61, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !453, line: 72, baseType: !1295)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !298, file: !299, line: 1119, baseType: !17, size: 32, offset: 16000)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !298, file: !299, line: 1121, baseType: !204, size: 64, offset: 16064)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !298, file: !299, line: 1125, baseType: !1360, size: 64, offset: 16128)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !299, line: 43, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !298, file: !299, line: 1127, baseType: !954, size: 32, offset: 16192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !298, file: !299, line: 1128, baseType: !17, size: 32, offset: 16224)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !298, file: !299, line: 1130, baseType: !1365, size: 128, offset: 16256)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1366, line: 37, size: 128, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1365, file: !1366, line: 38, baseType: !132, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1365, file: !1366, line: 39, baseType: !128, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1365, file: !1366, line: 40, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1366, line: 24, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !298, file: !299, line: 1131, baseType: !1374, size: 256, offset: 16384)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1375, line: 12, size: 256, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1374, file: !1375, line: 13, baseType: !184, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1374, file: !1375, line: 14, baseType: !215, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1374, file: !1375, line: 15, baseType: !215, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1374, file: !1375, line: 16, baseType: !157, size: 8, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !298, file: !299, line: 1134, baseType: !210, size: 64, offset: 16640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !298, file: !299, line: 1135, baseType: !210, size: 64, offset: 16704)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !298, file: !299, line: 1138, baseType: !108, size: 32, offset: 16768)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !298, file: !299, line: 1141, baseType: !428, size: 32, offset: 16800)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !298, file: !299, line: 1143, baseType: !1386, size: 64, offset: 16832)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !299, line: 735, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1386, file: !299, line: 736, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !298, file: !299, line: 1147, baseType: !469, size: 128, offset: 16896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !298, file: !299, line: 1149, baseType: !297, size: 64, offset: 17024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !298, file: !299, line: 1151, baseType: !1393, size: 64, offset: 17088)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !299, line: 1151, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !298, file: !299, line: 1188, baseType: !81, size: 64, offset: 17152)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !298, file: !299, line: 1191, baseType: !1397, size: 64, offset: 17216)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !299, line: 44, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !298, file: !299, line: 1194, baseType: !1400, size: 64, offset: 17280)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !299, line: 45, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !298, file: !299, line: 1197, baseType: !1403, size: 64, offset: 17344)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !299, line: 61, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !298, file: !299, line: 1199, baseType: !1406, size: 64, offset: 17408)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !299, line: 52, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !298, file: !299, line: 1202, baseType: !1409, size: 64, offset: 17472)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !299, line: 48, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !298, file: !299, line: 1205, baseType: !215, size: 64, offset: 17536)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !298, file: !299, line: 1206, baseType: !1413, size: 64, offset: 17600)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1127, line: 14, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1127, line: 12, size: 384, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1127, line: 13, baseType: !1418, size: 384)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !1127, line: 13, size: 384, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1418, file: !1127, line: 13, baseType: !132, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1418, file: !1127, line: 13, baseType: !132, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1418, file: !1127, line: 13, baseType: !132, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1418, file: !1127, line: 13, baseType: !1424, size: 256, offset: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1425, line: 37, size: 256, elements: !1426)
!1425 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1426 = !{!1427, !1432, !1445, !1451, !1461, !1488, !1493}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1424, file: !1425, line: 42, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1425, line: 39, size: 64, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1428, file: !1425, line: 40, baseType: !857, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1428, file: !1425, line: 41, baseType: !960, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1424, file: !1425, line: 50, baseType: !1433, size: 192)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1425, line: 45, size: 192, elements: !1434)
!1434 = !{!1435, !1437, !1438, !1444}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1433, file: !1425, line: 46, baseType: !1436, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !453, line: 95, baseType: !132)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1433, file: !1425, line: 47, baseType: !132, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1433, file: !1425, line: 48, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1425, line: 11, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1425, line: 8, size: 64, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1440, file: !1425, line: 9, baseType: !132, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1440, file: !1425, line: 10, baseType: !81, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1433, file: !1425, line: 49, baseType: !132, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1424, file: !1425, line: 57, baseType: !1446, size: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1425, line: 53, size: 128, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1446, file: !1425, line: 54, baseType: !857, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1446, file: !1425, line: 55, baseType: !960, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1446, file: !1425, line: 56, baseType: !1439, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1424, file: !1425, line: 66, baseType: !1452, size: 256)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1425, line: 60, size: 256, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1460}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1452, file: !1425, line: 61, baseType: !857, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1452, file: !1425, line: 62, baseType: !960, size: 32, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1452, file: !1425, line: 63, baseType: !132, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1452, file: !1425, line: 64, baseType: !1458, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !453, line: 94, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !453, line: 15, baseType: !175)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1452, file: !1425, line: 65, baseType: !1458, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1424, file: !1425, line: 105, baseType: !1462, size: 256)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1425, line: 69, size: 256, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1462, file: !1425, line: 70, baseType: !81, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1425, line: 79, baseType: !1466, size: 192, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1425, line: 79, size: 192, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1477, !1482}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1466, file: !1425, line: 81, baseType: !132, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1466, file: !1425, line: 86, baseType: !738, size: 16)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1466, file: !1425, line: 92, baseType: !1471, size: 192)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !1425, line: 88, size: 192, elements: !1472)
!1472 = !{!1473, !1475, !1476}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1471, file: !1425, line: 89, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !447)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1471, file: !1425, line: 90, baseType: !81, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1471, file: !1425, line: 91, baseType: !81, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1466, file: !1425, line: 97, baseType: !1478, size: 96)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !1425, line: 94, size: 96, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1478, file: !1425, line: 95, baseType: !1474, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1478, file: !1425, line: 96, baseType: !265, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1466, file: !1425, line: 103, baseType: !1483, size: 128)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1466, file: !1425, line: 99, size: 128, elements: !1484)
!1484 = !{!1485, !1486, !1487}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1483, file: !1425, line: 100, baseType: !215, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1483, file: !1425, line: 101, baseType: !265, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1483, file: !1425, line: 102, baseType: !265, size: 32, offset: 96)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1424, file: !1425, line: 111, baseType: !1489, size: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1425, line: 108, size: 128, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1489, file: !1425, line: 109, baseType: !175, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1489, file: !1425, line: 110, baseType: !132, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1424, file: !1425, line: 118, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1425, line: 114, size: 128, elements: !1495)
!1495 = !{!1496, !1497, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1494, file: !1425, line: 115, baseType: !81, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1494, file: !1425, line: 116, baseType: !132, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1494, file: !1425, line: 117, baseType: !17, size: 32, offset: 96)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !298, file: !299, line: 1208, baseType: !1278, size: 448, offset: 17664)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !298, file: !299, line: 1215, baseType: !210, size: 64, offset: 18112)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !298, file: !299, line: 1217, baseType: !210, size: 64, offset: 18176)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !298, file: !299, line: 1219, baseType: !210, size: 64, offset: 18240)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !298, file: !299, line: 1223, baseType: !1504, size: 64, offset: 18304)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1505, line: 99, baseType: !1506)
!1505 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 99, size: 64, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1506, file: !1505, line: 99, baseType: !537, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !298, file: !299, line: 1225, baseType: !1251, size: 32, offset: 18368)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !298, file: !299, line: 1226, baseType: !132, size: 32, offset: 18400)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !298, file: !299, line: 1227, baseType: !132, size: 32, offset: 18432)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !298, file: !299, line: 1231, baseType: !1513, size: 64, offset: 18496)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !299, line: 1231, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !298, file: !299, line: 1233, baseType: !92, size: 128, offset: 18560)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !298, file: !299, line: 1240, baseType: !1517, size: 64, offset: 18688)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !299, line: 62, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !298, file: !299, line: 1242, baseType: !1520, size: 64, offset: 18752)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !299, line: 1242, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !298, file: !299, line: 1244, baseType: !92, size: 128, offset: 18816)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !298, file: !299, line: 1245, baseType: !1524, size: 64, offset: 18944)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !299, line: 51, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !298, file: !299, line: 1246, baseType: !721, size: 256, offset: 19008)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !298, file: !299, line: 1247, baseType: !17, size: 32, offset: 19264)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !298, file: !299, line: 1250, baseType: !1529, size: 64, offset: 19328)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !299, line: 57, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !298, file: !299, line: 1251, baseType: !721, size: 256, offset: 19392)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !298, file: !299, line: 1252, baseType: !92, size: 128, offset: 19648)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !298, file: !299, line: 1259, baseType: !1534, size: 64, offset: 19776)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !588, line: 717, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !298, file: !299, line: 1260, baseType: !738, size: 16, offset: 19840)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !298, file: !299, line: 1261, baseType: !738, size: 16, offset: 19856)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !298, file: !299, line: 1314, baseType: !1539, size: 64, offset: 19904)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1541, line: 62, size: 256, align: 256, elements: !1542)
!1541 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1540, file: !1541, line: 75, baseType: !265, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1540, file: !1541, line: 90, baseType: !265, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1540, file: !1541, line: 112, baseType: !211, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1540, file: !1541, line: 132, baseType: !265, size: 32, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1540, file: !1541, line: 140, baseType: !265, size: 32, offset: 160)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1540, file: !1541, line: 149, baseType: !265, size: 32, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1540, file: !1541, line: 154, baseType: !1550, offset: 224)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !774)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !298, file: !299, line: 1315, baseType: !264, size: 32, offset: 19968)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !298, file: !299, line: 1316, baseType: !264, size: 32, offset: 20000)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !298, file: !299, line: 1321, baseType: !215, size: 64, offset: 20032)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !298, file: !299, line: 1325, baseType: !132, size: 32, offset: 20096)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !298, file: !299, line: 1326, baseType: !132, size: 32, offset: 20128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !298, file: !299, line: 1327, baseType: !132, size: 32, offset: 20160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !298, file: !299, line: 1328, baseType: !132, size: 32, offset: 20192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !298, file: !299, line: 1329, baseType: !201, size: 128, align: 64, offset: 20224)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !298, file: !299, line: 1332, baseType: !1560, size: 128, offset: 20352)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1561, line: 51, size: 128, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1562 = !{!1563, !1568, !1569}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1560, file: !1561, line: 60, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1565, line: 7, size: 64, elements: !1566)
!1565 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1564, file: !1565, line: 12, baseType: !534, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1560, file: !1561, line: 63, baseType: !157, size: 8, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1560, file: !1561, line: 70, baseType: !157, size: 8, offset: 72)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !298, file: !299, line: 1335, baseType: !1571, size: 64, offset: 20480)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !299, line: 59, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !298, file: !299, line: 1337, baseType: !1574, size: 128, offset: 20544)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1561, line: 39, size: 128, elements: !1575)
!1575 = !{!1576, !1639, !1640}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1574, file: !1561, line: 40, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !588, line: 74, size: 512, align: 128, elements: !1579)
!1579 = !{!1580, !1581, !1633, !1638}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !588, line: 75, baseType: !215, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !588, line: 83, baseType: !1582, size: 320, offset: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !588, line: 83, size: 320, elements: !1583)
!1583 = !{!1584, !1607, !1621, !1625, !1632}
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !588, line: 84, baseType: !1585, size: 320)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !588, line: 84, size: 320, elements: !1586)
!1586 = !{!1587, !1598, !1601, !1606}
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !588, line: 90, baseType: !1588, size: 128)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !588, line: 90, size: 128, elements: !1589)
!1589 = !{!1590, !1591, !1596, !1597}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1588, file: !588, line: 91, baseType: !92, size: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !588, line: 94, baseType: !1592, size: 128)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !588, line: 94, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1592, file: !588, line: 96, baseType: !81, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1592, file: !588, line: 98, baseType: !17, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1588, file: !588, line: 102, baseType: !92, size: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1588, file: !588, line: 103, baseType: !92, size: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1585, file: !588, line: 106, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !588, line: 32, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !588, line: 107, baseType: !1602, size: 64, offset: 192)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !588, line: 107, size: 64, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1602, file: !588, line: 108, baseType: !215, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1602, file: !588, line: 109, baseType: !215, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1585, file: !588, line: 117, baseType: !215, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !588, line: 119, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !588, line: 119, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1614, !1615, !1616}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1608, file: !588, line: 124, baseType: !215, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1608, file: !588, line: 125, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !588, line: 125, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1608, file: !588, line: 126, baseType: !215, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1608, file: !588, line: 127, baseType: !215, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !588, line: 128, baseType: !1617, size: 64, offset: 256)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !588, line: 128, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1617, file: !588, line: 133, baseType: !215, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1617, file: !588, line: 138, baseType: !641, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !588, line: 141, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !588, line: 141, size: 64, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1622, file: !588, line: 142, baseType: !215, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !588, line: 144, baseType: !1626, size: 128)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !588, line: 144, size: 128, elements: !1627)
!1627 = !{!1628, !1631}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1626, file: !588, line: 146, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !588, line: 146, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1626, file: !588, line: 147, baseType: !81, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1582, file: !588, line: 161, baseType: !201, size: 128, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !588, line: 164, baseType: !1634, size: 32, offset: 384)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !588, line: 164, size: 32, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1634, file: !588, line: 169, baseType: !128, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1634, file: !588, line: 177, baseType: !17, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1578, file: !588, line: 181, baseType: !128, size: 32, offset: 416)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1574, file: !1561, line: 42, baseType: !265, size: 32, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1574, file: !1561, line: 43, baseType: !265, size: 32, offset: 96)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !298, file: !299, line: 1340, baseType: !1642, size: 64, offset: 20672)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !299, line: 69, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !298, file: !299, line: 1351, baseType: !132, size: 32, offset: 20736)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !298, file: !299, line: 1352, baseType: !132, size: 32, offset: 20768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !298, file: !299, line: 1354, baseType: !215, size: 64, offset: 20800)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !298, file: !299, line: 1364, baseType: !210, size: 64, offset: 20864)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !298, file: !299, line: 1365, baseType: !210, size: 64, offset: 20928)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !298, file: !299, line: 1412, baseType: !215, size: 64, offset: 20992)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !298, file: !299, line: 1453, baseType: !1651, size: 64, offset: 21056)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !299, line: 1453, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !298, file: !299, line: 1457, baseType: !1654, size: 64, offset: 21120)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !38, line: 61, size: 576, elements: !1656)
!1656 = !{!1657, !1658, !1677, !1680, !1681, !1714, !1724}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1655, file: !38, line: 62, baseType: !37, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !38, line: 64, baseType: !1659, size: 192, offset: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !38, line: 64, size: 192, elements: !1660)
!1660 = !{!1661, !1672}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !38, line: 65, baseType: !1662, size: 192)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !38, line: 65, size: 192, elements: !1663)
!1663 = !{!1664, !1671}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1662, file: !38, line: 66, baseType: !1665, size: 128)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1666, line: 50, size: 128, elements: !1667)
!1666 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1665, file: !1666, line: 52, baseType: !215, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1665, file: !1666, line: 54, baseType: !17, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1665, file: !1666, line: 55, baseType: !17, size: 32, offset: 96)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1662, file: !38, line: 67, baseType: !215, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !38, line: 70, baseType: !1673, size: 192)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !38, line: 70, size: 192, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1673, file: !38, line: 71, baseType: !201, size: 128, align: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1673, file: !38, line: 72, baseType: !215, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1655, file: !38, line: 76, baseType: !1678, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !38, line: 76, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1655, file: !38, line: 77, baseType: !215, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1655, file: !38, line: 79, baseType: !1682, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1666, line: 25, size: 256, elements: !1684)
!1684 = !{!1685, !1691, !1695}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1666, line: 26, baseType: !1686, size: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1666, line: 26, size: 128, elements: !1687)
!1687 = !{!1688, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1686, file: !1666, line: 27, baseType: !1689, size: 128)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !1146)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1686, file: !1666, line: 28, baseType: !1689, size: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1683, file: !1666, line: 31, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1666, line: 23, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1666, line: 33, baseType: !1696, size: 64, offset: 192)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1666, line: 33, size: 64, elements: !1697)
!1697 = !{!1698, !1704, !1709}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1696, file: !1666, line: 38, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1666, line: 34, size: 64, elements: !1700)
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1699, file: !1666, line: 35, baseType: !700, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1699, file: !1666, line: 36, baseType: !137, size: 8, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1699, file: !1666, line: 37, baseType: !137, size: 8, offset: 40)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1696, file: !1666, line: 42, baseType: !1705, size: 16)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1666, line: 39, size: 16, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1705, file: !1666, line: 40, baseType: !137, size: 8)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1705, file: !1666, line: 41, baseType: !137, size: 8, offset: 8)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1696, file: !1666, line: 46, baseType: !1710, size: 16)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1666, line: 43, size: 16, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1710, file: !1666, line: 44, baseType: !137, size: 8)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1710, file: !1666, line: 45, baseType: !137, size: 8, offset: 8)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1655, file: !38, line: 81, baseType: !1715, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !38, line: 85, size: 384, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1716, file: !38, line: 86, baseType: !1678, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1716, file: !38, line: 87, baseType: !215, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1716, file: !38, line: 88, baseType: !215, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1716, file: !38, line: 89, baseType: !215, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1716, file: !38, line: 90, baseType: !157, size: 8, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1716, file: !38, line: 92, baseType: !1715, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1655, file: !38, line: 82, baseType: !17, size: 32, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !298, file: !299, line: 1463, baseType: !1726, offset: 21184)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !299, line: 739, elements: !608)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !298, file: !299, line: 1470, baseType: !201, size: 128, align: 64, offset: 21184)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !298, file: !299, line: 1471, baseType: !221, size: 32, offset: 21312)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !298, file: !299, line: 1472, baseType: !132, size: 32, offset: 21344)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !298, file: !299, line: 1474, baseType: !297, size: 64, offset: 21376)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !298, file: !299, line: 1475, baseType: !247, size: 320, offset: 21440)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !298, file: !299, line: 1478, baseType: !1733, size: 64, offset: 21760)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1735, line: 14, flags: DIFlagFwdDecl)
!1735 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !298, file: !299, line: 1482, baseType: !221, size: 32, offset: 21824)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !298, file: !299, line: 1489, baseType: !81, size: 64, offset: 21888)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !298, file: !299, line: 1504, baseType: !81, size: 64, offset: 21952)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !298, file: !299, line: 1505, baseType: !211, size: 64, offset: 22016)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !298, file: !299, line: 1506, baseType: !210, size: 64, offset: 22080)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !298, file: !299, line: 1507, baseType: !211, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !298, file: !299, line: 1508, baseType: !211, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !298, file: !299, line: 1509, baseType: !211, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !298, file: !299, line: 1510, baseType: !201, size: 128, align: 64, offset: 22208)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !298, file: !299, line: 1511, baseType: !132, size: 32, offset: 22336)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !298, file: !299, line: 1515, baseType: !1747, size: 64, offset: 22400)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !276, line: 56, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1747, file: !276, line: 57, baseType: !279, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !298, file: !299, line: 1518, baseType: !1747, size: 64, offset: 22464)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !298, file: !299, line: 1528, baseType: !201, size: 128, align: 64, offset: 22528)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !298, file: !299, line: 1552, baseType: !1753, size: 35328, offset: 23040)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1754, line: 430, size: 35328, elements: !1755)
!1754 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1755 = !{!1756, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1785, !1786, !1787, !1788, !1789, !1790, !1793, !1794, !1795, !1796}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1753, file: !1754, line: 432, baseType: !1757, size: 192)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 192, elements: !936)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1759, line: 16, size: 64, elements: !1760)
!1759 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1758, file: !1759, line: 17, baseType: !147, size: 16)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1758, file: !1759, line: 18, baseType: !147, size: 16, offset: 16)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1758, file: !1759, line: 19, baseType: !147, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1758, file: !1759, line: 19, baseType: !147, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1758, file: !1759, line: 19, baseType: !147, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1758, file: !1759, line: 19, baseType: !147, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1758, file: !1759, line: 19, baseType: !147, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1758, file: !1759, line: 20, baseType: !147, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1758, file: !1759, line: 20, baseType: !147, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1758, file: !1759, line: 20, baseType: !147, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1758, file: !1759, line: 20, baseType: !147, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1758, file: !1759, line: 20, baseType: !147, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1758, file: !1759, line: 20, baseType: !147, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1753, file: !1754, line: 436, baseType: !215, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1753, file: !1754, line: 440, baseType: !149, size: 16, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1753, file: !1754, line: 441, baseType: !149, size: 16, offset: 272)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1753, file: !1754, line: 442, baseType: !149, size: 16, offset: 288)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1753, file: !1754, line: 443, baseType: !149, size: 16, offset: 304)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1753, file: !1754, line: 447, baseType: !215, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1753, file: !1754, line: 448, baseType: !215, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1753, file: !1754, line: 459, baseType: !1782, size: 256, offset: 448)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 256, elements: !702)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1754, line: 428, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1753, file: !1754, line: 461, baseType: !215, size: 64, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1753, file: !1754, line: 463, baseType: !215, size: 64, offset: 768)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1753, file: !1754, line: 465, baseType: !215, size: 64, offset: 832)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1753, file: !1754, line: 466, baseType: !215, size: 64, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1753, file: !1754, line: 467, baseType: !215, size: 64, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1753, file: !1754, line: 473, baseType: !1791, size: 64, offset: 1024)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1754, line: 10, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1753, file: !1754, line: 480, baseType: !215, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1753, file: !1754, line: 482, baseType: !17, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1753, file: !1754, line: 491, baseType: !264, size: 32, offset: 1184)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1753, file: !1754, line: 501, baseType: !1797, size: 33792, offset: 1536)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1798, line: 448, size: 33792, elements: !1799)
!1798 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1799 = !{!1800, !1801, !1802, !1966, !1967, !1973, !1974}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1797, file: !1798, line: 461, baseType: !17, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1797, file: !1798, line: 468, baseType: !215, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1797, file: !1798, line: 476, baseType: !1803, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1798, line: 356, size: 33280, align: 512, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1804, file: !1798, line: 358, baseType: !17, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1804, file: !1798, line: 361, baseType: !17, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1804, file: !1798, line: 364, baseType: !210, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1804, file: !1798, line: 367, baseType: !210, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1804, file: !1798, line: 370, baseType: !210, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1804, file: !1798, line: 373, baseType: !17, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1804, file: !1798, line: 376, baseType: !17, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1804, file: !1798, line: 391, baseType: !17, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1804, file: !1798, line: 394, baseType: !17, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1804, file: !1798, line: 397, baseType: !1816, size: 32768, offset: 512)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1798, line: 348, size: 32768, elements: !1817)
!1817 = !{!1818, !1833, !1872, !1949, !1962}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1816, file: !1798, line: 349, baseType: !1819, size: 896)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1798, line: 12, size: 896, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1832}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1819, file: !1798, line: 13, baseType: !264, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1819, file: !1798, line: 14, baseType: !264, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1819, file: !1798, line: 15, baseType: !264, size: 32, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1819, file: !1798, line: 16, baseType: !264, size: 32, offset: 96)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1819, file: !1798, line: 17, baseType: !264, size: 32, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1819, file: !1798, line: 18, baseType: !264, size: 32, offset: 160)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1819, file: !1798, line: 19, baseType: !264, size: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1819, file: !1798, line: 22, baseType: !1829, size: 640, offset: 224)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 640, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 20)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1819, file: !1798, line: 25, baseType: !264, size: 32, offset: 864)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1816, file: !1798, line: 350, baseType: !1834, size: 4096, align: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1798, line: 34, size: 4096, align: 128, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1855, !1856, !1857, !1861, !1863, !1867}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1834, file: !1798, line: 35, baseType: !147, size: 16)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1834, file: !1798, line: 36, baseType: !147, size: 16, offset: 16)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1834, file: !1798, line: 37, baseType: !147, size: 16, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1834, file: !1798, line: 38, baseType: !147, size: 16, offset: 48)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !1798, line: 39, baseType: !1841, size: 128, offset: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1834, file: !1798, line: 39, size: 128, elements: !1842)
!1842 = !{!1843, !1848}
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1798, line: 40, baseType: !1844, size: 128)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1798, line: 40, size: 128, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1844, file: !1798, line: 41, baseType: !210, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1844, file: !1798, line: 42, baseType: !210, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1798, line: 44, baseType: !1849, size: 128)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1798, line: 44, size: 128, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1849, file: !1798, line: 45, baseType: !264, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1849, file: !1798, line: 46, baseType: !264, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1849, file: !1798, line: 47, baseType: !264, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1849, file: !1798, line: 48, baseType: !264, size: 32, offset: 96)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1834, file: !1798, line: 51, baseType: !264, size: 32, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1834, file: !1798, line: 52, baseType: !264, size: 32, offset: 224)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1834, file: !1798, line: 55, baseType: !1858, size: 1024, offset: 256)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 1024, elements: !1859)
!1859 = !{!1860}
!1860 = !DISubrange(count: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1834, file: !1798, line: 58, baseType: !1862, size: 2048, offset: 1280)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 2048, elements: !1347)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1834, file: !1798, line: 60, baseType: !1864, size: 384, offset: 3328)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 384, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 12)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !1798, line: 62, baseType: !1868, size: 384, offset: 3712)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1834, file: !1798, line: 62, size: 384, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1868, file: !1798, line: 63, baseType: !1864, size: 384)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1868, file: !1798, line: 64, baseType: !1864, size: 384)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1816, file: !1798, line: 351, baseType: !1873, size: 1088)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1798, line: 79, size: 1088, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1948}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1873, file: !1798, line: 80, baseType: !264, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1873, file: !1798, line: 81, baseType: !264, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1873, file: !1798, line: 82, baseType: !264, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1873, file: !1798, line: 83, baseType: !264, size: 32, offset: 96)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1873, file: !1798, line: 84, baseType: !264, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1873, file: !1798, line: 85, baseType: !264, size: 32, offset: 160)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1873, file: !1798, line: 86, baseType: !264, size: 32, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1873, file: !1798, line: 88, baseType: !1829, size: 640, offset: 224)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1873, file: !1798, line: 89, baseType: !137, size: 8, offset: 864)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1873, file: !1798, line: 90, baseType: !137, size: 8, offset: 872)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1873, file: !1798, line: 91, baseType: !137, size: 8, offset: 880)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1873, file: !1798, line: 92, baseType: !137, size: 8, offset: 888)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1873, file: !1798, line: 93, baseType: !137, size: 8, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1873, file: !1798, line: 94, baseType: !137, size: 8, offset: 904)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1873, file: !1798, line: 95, baseType: !1890, size: 64, offset: 960)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1892, line: 11, size: 128, elements: !1893)
!1892 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1891, file: !1892, line: 12, baseType: !175, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1891, file: !1892, line: 13, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1898, line: 103, size: 1344, elements: !1899)
!1898 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1928, !1929, !1930}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1897, file: !1898, line: 109, baseType: !215, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1897, file: !1898, line: 110, baseType: !215, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1897, file: !1898, line: 111, baseType: !215, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1897, file: !1898, line: 112, baseType: !215, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1897, file: !1898, line: 113, baseType: !215, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1897, file: !1898, line: 114, baseType: !215, size: 64, offset: 320)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1897, file: !1898, line: 117, baseType: !215, size: 64, offset: 384)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1897, file: !1898, line: 118, baseType: !215, size: 64, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1897, file: !1898, line: 119, baseType: !215, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1897, file: !1898, line: 120, baseType: !215, size: 64, offset: 576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1897, file: !1898, line: 121, baseType: !215, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1897, file: !1898, line: 122, baseType: !215, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1897, file: !1898, line: 123, baseType: !215, size: 64, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1897, file: !1898, line: 124, baseType: !215, size: 64, offset: 832)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1897, file: !1898, line: 125, baseType: !215, size: 64, offset: 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1897, file: !1898, line: 139, baseType: !215, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1897, file: !1898, line: 142, baseType: !215, size: 64, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1898, line: 144, baseType: !1918, size: 64, offset: 1088)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !1898, line: 144, size: 64, elements: !1919)
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1918, file: !1898, line: 146, baseType: !147, size: 16)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1918, file: !1898, line: 148, baseType: !210, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1918, file: !1898, line: 150, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1898, line: 59, size: 64, elements: !1924)
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1923, file: !1898, line: 61, baseType: !210, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1923, file: !1898, line: 63, baseType: !210, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1923, file: !1898, line: 65, baseType: !210, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !1898, line: 153, baseType: !215, size: 64, offset: 1152)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1897, file: !1898, line: 154, baseType: !215, size: 64, offset: 1216)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1898, line: 156, baseType: !1931, size: 64, offset: 1280)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !1898, line: 156, size: 64, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1931, file: !1898, line: 158, baseType: !147, size: 16)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1931, file: !1898, line: 160, baseType: !210, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1931, file: !1898, line: 162, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1898, line: 69, size: 64, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1936, file: !1898, line: 71, baseType: !210, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1936, file: !1898, line: 73, baseType: !210, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1936, file: !1898, line: 75, baseType: !210, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1936, file: !1898, line: 77, baseType: !210, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1936, file: !1898, line: 80, baseType: !210, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1936, file: !1898, line: 83, baseType: !210, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1936, file: !1898, line: 86, baseType: !210, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1936, file: !1898, line: 88, baseType: !210, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1936, file: !1898, line: 93, baseType: !210, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1936, file: !1898, line: 100, baseType: !210, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1873, file: !1798, line: 96, baseType: !264, size: 32, offset: 1024)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1816, file: !1798, line: 352, baseType: !1950, size: 4608, align: 512)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1798, line: 333, size: 4608, align: 512, elements: !1951)
!1951 = !{!1952, !1953, !1960}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1950, file: !1798, line: 334, baseType: !1834, size: 4096, align: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1950, file: !1798, line: 335, baseType: !1954, size: 512, offset: 4096)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1798, line: 312, size: 512, elements: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1954, file: !1798, line: 313, baseType: !210, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1954, file: !1798, line: 314, baseType: !210, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1954, file: !1798, line: 315, baseType: !1959, size: 384, offset: 128)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 384, elements: !1038)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1950, file: !1798, line: 336, baseType: !1961, offset: 4608)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, elements: !774)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1816, file: !1798, line: 353, baseType: !1963, size: 32768)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 32768, elements: !1964)
!1964 = !{!1965}
!1965 = !DISubrange(count: 4096)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1797, file: !1798, line: 484, baseType: !1803, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1797, file: !1798, line: 491, baseType: !1968, size: 128, offset: 256)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1798, line: 404, size: 128, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1968, file: !1798, line: 424, baseType: !210, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1968, file: !1798, line: 432, baseType: !17, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1968, file: !1798, line: 440, baseType: !17, size: 32, offset: 96)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1797, file: !1798, line: 498, baseType: !1968, size: 128, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1797, file: !1798, line: 508, baseType: !1804, size: 33280, align: 512, offset: 512)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !83, file: !2, line: 415, baseType: !201, size: 128, align: 64, offset: 896)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !233, line: 14, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !233, line: 30, size: 320, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1988}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1978, file: !233, line: 31, baseType: !17, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1978, file: !233, line: 32, baseType: !81, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1978, file: !233, line: 33, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !233, line: 16, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!132, !1987, !17, !132, !81}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1978, file: !233, line: 34, baseType: !92, size: 128, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !264)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !93, line: 154, baseType: !17)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !93, line: 42, baseType: !215)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!2005 = !{!0, !7, !2006, !2011}
!2006 = !DIGlobalVariableExpression(var: !2007, expr: !DIExpression())
!2007 = distinct !DIGlobalVariable(scope: null, file: !63, line: 480, type: !2008, isLocal: true, isDefinition: true)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 21)
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(scope: null, file: !2, line: 437, type: !2013, isLocal: true, isDefinition: true)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !2014)
!2014 = !{!2015}
!2015 = !DISubrange(count: 62)
!2016 = !{i32 7, !"Dwarf Version", i32 5}
!2017 = !{i32 2, !"Debug Info Version", i32 3}
!2018 = !{i32 1, !"wchar_size", i32 2}
!2019 = !{i32 8, !"cf-protection-branch", i32 1}
!2020 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2021 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2022 = !{i32 1, !"Code Model", i32 2}
!2023 = !{i32 1, !"override-stack-alignment", i32 8}
!2024 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2025 = distinct !DISubprogram(name: "i915_sw_fence_complete", scope: !2, file: !2, line: 212, type: !2026, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !228}
!2028 = !{!2029, !2030, !2033}
!2029 = !DILocalVariable(name: "fence", arg: 1, scope: !2025, file: !2, line: 212, type: !228)
!2030 = !DILocalVariable(name: "__ret_warn_on", scope: !2031, file: !2, line: 216, type: !132)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 216, column: 6)
!2032 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 216, column: 6)
!2033 = !DILocalVariable(name: "__flags", scope: !2034, file: !2, line: 216, type: !132)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 216, column: 6)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 216, column: 6)
!2036 = !DILocation(line: 212, column: 51, scope: !2025)
!2037 = !DILocation(line: 214, column: 21, scope: !2025)
!2038 = !DILocation(line: 214, column: 2, scope: !2025)
!2039 = !DILocation(line: 216, column: 6, scope: !2031)
!2040 = !DILocation(line: 216, column: 6, scope: !2035)
!2041 = !DILocation(line: 216, column: 6, scope: !2034)
!2042 = !DILocation(line: 216, column: 6, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 216, column: 6)
!2044 = !DILocation(line: 216, column: 6, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 216, column: 6)
!2046 = !{i64 2152852524, i64 2152852553, i64 2152852599, i64 2152852657, i64 2152852711, i64 2152852765, i64 2152852820, i64 2152852851, i64 2152853159, i64 2152853165, i64 2152853212, i64 2152853235, i64 2152853261}
!2047 = !DILocation(line: 216, column: 6, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 216, column: 6)
!2049 = !DILocation(line: 216, column: 6, scope: !2032)
!2050 = !DILocation(line: 216, column: 6, scope: !2025)
!2051 = !DILocation(line: 217, column: 3, scope: !2032)
!2052 = !DILocation(line: 219, column: 27, scope: !2025)
!2053 = !DILocation(line: 219, column: 2, scope: !2025)
!2054 = !DILocation(line: 220, column: 1, scope: !2025)
!2055 = distinct !DISubprogram(name: "debug_fence_assert", scope: !2, file: !2, line: 122, type: !2026, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2056)
!2056 = !{!2057}
!2057 = !DILocalVariable(name: "fence", arg: 1, scope: !2055, file: !2, line: 122, type: !228)
!2058 = !DILocation(line: 122, column: 61, scope: !2055)
!2059 = !DILocation(line: 124, column: 1, scope: !2055)
!2060 = distinct !DISubprogram(name: "i915_sw_fence_done", scope: !16, file: !16, line: 106, type: !2061, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2065)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!157, !2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "fence", arg: 1, scope: !2060, file: !16, line: 106, type: !2063)
!2067 = !DILocation(line: 106, column: 67, scope: !2060)
!2068 = !DILocation(line: 108, column: 22, scope: !2060)
!2069 = !DILocation(line: 108, column: 29, scope: !2060)
!2070 = !DILocation(line: 108, column: 9, scope: !2060)
!2071 = !DILocation(line: 108, column: 38, scope: !2060)
!2072 = !DILocation(line: 108, column: 2, scope: !2060)
!2073 = distinct !DISubprogram(name: "__i915_sw_fence_complete", scope: !2, file: !2, line: 191, type: !2074, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !228, !96}
!2076 = !{!2077, !2078}
!2077 = !DILocalVariable(name: "fence", arg: 1, scope: !2073, file: !2, line: 191, type: !228)
!2078 = !DILocalVariable(name: "continuation", arg: 2, scope: !2073, file: !2, line: 192, type: !96)
!2079 = !DILocation(line: 191, column: 60, scope: !2073)
!2080 = !DILocation(line: 192, column: 28, scope: !2073)
!2081 = !DILocation(line: 194, column: 21, scope: !2073)
!2082 = !DILocation(line: 194, column: 2, scope: !2073)
!2083 = !DILocation(line: 196, column: 28, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 196, column: 6)
!2085 = !DILocation(line: 196, column: 35, scope: !2084)
!2086 = !DILocation(line: 196, column: 7, scope: !2084)
!2087 = !DILocation(line: 196, column: 6, scope: !2073)
!2088 = !DILocation(line: 197, column: 3, scope: !2084)
!2089 = !DILocation(line: 199, column: 24, scope: !2073)
!2090 = !DILocation(line: 199, column: 2, scope: !2073)
!2091 = !DILocation(line: 201, column: 29, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 201, column: 6)
!2093 = !DILocation(line: 201, column: 6, scope: !2092)
!2094 = !DILocation(line: 201, column: 52, scope: !2092)
!2095 = !DILocation(line: 201, column: 6, scope: !2073)
!2096 = !DILocation(line: 202, column: 3, scope: !2092)
!2097 = !DILocation(line: 204, column: 24, scope: !2073)
!2098 = !DILocation(line: 204, column: 2, scope: !2073)
!2099 = !DILocation(line: 206, column: 30, scope: !2073)
!2100 = !DILocation(line: 206, column: 37, scope: !2073)
!2101 = !DILocation(line: 206, column: 2, scope: !2073)
!2102 = !DILocation(line: 208, column: 22, scope: !2073)
!2103 = !DILocation(line: 208, column: 2, scope: !2073)
!2104 = !DILocation(line: 209, column: 25, scope: !2073)
!2105 = !DILocation(line: 209, column: 2, scope: !2073)
!2106 = !DILocation(line: 210, column: 1, scope: !2073)
!2107 = distinct !DISubprogram(name: "i915_sw_fence_await", scope: !2, file: !2, line: 222, type: !2108, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!157, !228}
!2110 = !{!2111, !2112}
!2111 = !DILocalVariable(name: "fence", arg: 1, scope: !2107, file: !2, line: 222, type: !228)
!2112 = !DILocalVariable(name: "pending", scope: !2107, file: !2, line: 224, type: !132)
!2113 = !DILocation(line: 222, column: 48, scope: !2107)
!2114 = !DILocation(line: 224, column: 2, scope: !2107)
!2115 = !DILocation(line: 224, column: 6, scope: !2107)
!2116 = !DILocation(line: 230, column: 25, scope: !2107)
!2117 = !DILocation(line: 230, column: 32, scope: !2107)
!2118 = !DILocation(line: 230, column: 12, scope: !2107)
!2119 = !DILocation(line: 230, column: 10, scope: !2107)
!2120 = !DILocation(line: 231, column: 2, scope: !2107)
!2121 = !DILocation(line: 232, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 232, column: 7)
!2123 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 231, column: 5)
!2124 = !DILocation(line: 232, column: 15, scope: !2122)
!2125 = !DILocation(line: 232, column: 7, scope: !2123)
!2126 = !DILocation(line: 233, column: 4, scope: !2122)
!2127 = !DILocation(line: 234, column: 2, scope: !2123)
!2128 = !DILocation(line: 234, column: 32, scope: !2107)
!2129 = !DILocation(line: 234, column: 39, scope: !2107)
!2130 = !DILocation(line: 234, column: 58, scope: !2107)
!2131 = !DILocation(line: 234, column: 66, scope: !2107)
!2132 = !DILocation(line: 234, column: 12, scope: !2107)
!2133 = !DILocation(line: 234, column: 11, scope: !2107)
!2134 = distinct !{!2134, !2120, !2135, !2136, !2137}
!2135 = !DILocation(line: 234, column: 70, scope: !2107)
!2136 = !{!"llvm.loop.mustprogress"}
!2137 = !{!"llvm.loop.unroll.disable"}
!2138 = !DILocation(line: 236, column: 2, scope: !2107)
!2139 = !DILocation(line: 237, column: 1, scope: !2107)
!2140 = distinct !DISubprogram(name: "atomic_read", scope: !2141, file: !2141, line: 30, type: !2142, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2146)
!2141 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!132, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!2146 = !{!2147}
!2147 = !DILocalVariable(name: "v", arg: 1, scope: !2140, file: !2141, line: 30, type: !2144)
!2148 = !DILocation(line: 30, column: 29, scope: !2140)
!2149 = !DILocation(line: 32, column: 25, scope: !2140)
!2150 = !DILocation(line: 32, column: 2, scope: !2140)
!2151 = !DILocation(line: 33, column: 25, scope: !2140)
!2152 = !DILocation(line: 33, column: 9, scope: !2140)
!2153 = !DILocation(line: 33, column: 2, scope: !2140)
!2154 = distinct !DISubprogram(name: "atomic_try_cmpxchg", scope: !2141, file: !2141, line: 1270, type: !2155, scopeLine: 1271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2158)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!157, !2157, !908, !132}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "v", arg: 1, scope: !2154, file: !2141, line: 1270, type: !2157)
!2160 = !DILocalVariable(name: "old", arg: 2, scope: !2154, file: !2141, line: 1270, type: !908)
!2161 = !DILocalVariable(name: "new", arg: 3, scope: !2154, file: !2141, line: 1270, type: !132)
!2162 = !DILocation(line: 1270, column: 30, scope: !2154)
!2163 = !DILocation(line: 1270, column: 38, scope: !2154)
!2164 = !DILocation(line: 1270, column: 47, scope: !2154)
!2165 = !DILocation(line: 1272, column: 2, scope: !2154)
!2166 = !DILocation(line: 1272, column: 2, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2154, file: !2141, line: 1272, column: 2)
!2168 = !DILocation(line: 1273, column: 31, scope: !2154)
!2169 = !DILocation(line: 1273, column: 2, scope: !2154)
!2170 = !DILocation(line: 1274, column: 31, scope: !2154)
!2171 = !DILocation(line: 1274, column: 2, scope: !2154)
!2172 = !DILocation(line: 1275, column: 32, scope: !2154)
!2173 = !DILocation(line: 1275, column: 35, scope: !2154)
!2174 = !DILocation(line: 1275, column: 40, scope: !2154)
!2175 = !DILocation(line: 1275, column: 9, scope: !2154)
!2176 = !DILocation(line: 1275, column: 2, scope: !2154)
!2177 = distinct !DISubprogram(name: "__i915_sw_fence_init", scope: !2, file: !2, line: 239, type: !2178, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2183)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !228, !239, !163, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2182, line: 206, elements: !608)
!2182 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2183 = !{!2184, !2185, !2186, !2187}
!2184 = !DILocalVariable(name: "fence", arg: 1, scope: !2177, file: !2, line: 239, type: !228)
!2185 = !DILocalVariable(name: "fn", arg: 2, scope: !2177, file: !2, line: 240, type: !239)
!2186 = !DILocalVariable(name: "name", arg: 3, scope: !2177, file: !2, line: 241, type: !163)
!2187 = !DILocalVariable(name: "key", arg: 4, scope: !2177, file: !2, line: 242, type: !2180)
!2188 = !DILocation(line: 239, column: 49, scope: !2177)
!2189 = !DILocation(line: 240, column: 29, scope: !2177)
!2190 = !DILocation(line: 241, column: 18, scope: !2177)
!2191 = !DILocation(line: 242, column: 29, scope: !2177)
!2192 = !DILocation(line: 244, column: 25, scope: !2177)
!2193 = !DILocation(line: 244, column: 32, scope: !2177)
!2194 = !DILocation(line: 244, column: 38, scope: !2177)
!2195 = !DILocation(line: 244, column: 44, scope: !2177)
!2196 = !DILocation(line: 244, column: 2, scope: !2177)
!2197 = !DILocation(line: 245, column: 14, scope: !2177)
!2198 = !DILocation(line: 245, column: 2, scope: !2177)
!2199 = !DILocation(line: 245, column: 9, scope: !2177)
!2200 = !DILocation(line: 245, column: 12, scope: !2177)
!2201 = !DILocation(line: 250, column: 23, scope: !2177)
!2202 = !DILocation(line: 250, column: 2, scope: !2177)
!2203 = !DILocation(line: 251, column: 1, scope: !2177)
!2204 = !DISubprogram(name: "__init_waitqueue_head", scope: !233, file: !233, line: 64, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2207, !163, !2180}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!2208 = distinct !DISubprogram(name: "i915_sw_fence_reinit", scope: !2, file: !2, line: 253, type: !2026, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2209)
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "fence", arg: 1, scope: !2208, file: !2, line: 253, type: !228)
!2211 = !DILocation(line: 253, column: 49, scope: !2208)
!2212 = !DILocation(line: 255, column: 19, scope: !2208)
!2213 = !DILocation(line: 255, column: 2, scope: !2208)
!2214 = !DILocation(line: 257, column: 14, scope: !2208)
!2215 = !DILocation(line: 257, column: 21, scope: !2208)
!2216 = !DILocation(line: 257, column: 2, scope: !2208)
!2217 = !DILocation(line: 258, column: 2, scope: !2208)
!2218 = !DILocation(line: 258, column: 9, scope: !2208)
!2219 = !DILocation(line: 258, column: 15, scope: !2208)
!2220 = !DILocation(line: 261, column: 1, scope: !2208)
!2221 = distinct !DISubprogram(name: "debug_fence_init", scope: !2, file: !2, line: 93, type: !2026, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2222)
!2222 = !{!2223}
!2223 = !DILocalVariable(name: "fence", arg: 1, scope: !2221, file: !2, line: 93, type: !228)
!2224 = !DILocation(line: 93, column: 59, scope: !2221)
!2225 = !DILocation(line: 95, column: 1, scope: !2221)
!2226 = distinct !DISubprogram(name: "atomic_set", scope: !2141, file: !2141, line: 65, type: !2227, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !2157, !132}
!2229 = !{!2230, !2231}
!2230 = !DILocalVariable(name: "v", arg: 1, scope: !2226, file: !2141, line: 65, type: !2157)
!2231 = !DILocalVariable(name: "i", arg: 2, scope: !2226, file: !2141, line: 65, type: !132)
!2232 = !DILocation(line: 65, column: 22, scope: !2226)
!2233 = !DILocation(line: 65, column: 29, scope: !2226)
!2234 = !DILocation(line: 67, column: 26, scope: !2226)
!2235 = !DILocation(line: 67, column: 2, scope: !2226)
!2236 = !DILocation(line: 68, column: 17, scope: !2226)
!2237 = !DILocation(line: 68, column: 20, scope: !2226)
!2238 = !DILocation(line: 68, column: 2, scope: !2226)
!2239 = !DILocation(line: 69, column: 1, scope: !2226)
!2240 = distinct !DISubprogram(name: "i915_sw_fence_commit", scope: !2, file: !2, line: 263, type: !2026, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2241)
!2241 = !{!2242}
!2242 = !DILocalVariable(name: "fence", arg: 1, scope: !2240, file: !2, line: 263, type: !228)
!2243 = !DILocation(line: 263, column: 49, scope: !2240)
!2244 = !DILocation(line: 265, column: 23, scope: !2240)
!2245 = !DILocation(line: 265, column: 2, scope: !2240)
!2246 = !DILocation(line: 266, column: 25, scope: !2240)
!2247 = !DILocation(line: 266, column: 2, scope: !2240)
!2248 = !DILocation(line: 267, column: 1, scope: !2240)
!2249 = distinct !DISubprogram(name: "debug_fence_activate", scope: !2, file: !2, line: 101, type: !2026, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2250)
!2250 = !{!2251}
!2251 = !DILocalVariable(name: "fence", arg: 1, scope: !2249, file: !2, line: 101, type: !228)
!2252 = !DILocation(line: 101, column: 63, scope: !2249)
!2253 = !DILocation(line: 103, column: 1, scope: !2249)
!2254 = distinct !DISubprogram(name: "i915_sw_fence_await_sw_fence", scope: !2, file: !2, line: 396, type: !2255, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!132, !228, !228, !1976}
!2257 = !{!2258, !2259, !2260}
!2258 = !DILocalVariable(name: "fence", arg: 1, scope: !2254, file: !2, line: 396, type: !228)
!2259 = !DILocalVariable(name: "signaler", arg: 2, scope: !2254, file: !2, line: 397, type: !228)
!2260 = !DILocalVariable(name: "wq", arg: 3, scope: !2254, file: !2, line: 398, type: !1976)
!2261 = !DILocation(line: 396, column: 56, scope: !2254)
!2262 = !DILocation(line: 397, column: 28, scope: !2254)
!2263 = !DILocation(line: 398, column: 26, scope: !2254)
!2264 = !DILocation(line: 400, column: 40, scope: !2254)
!2265 = !DILocation(line: 400, column: 47, scope: !2254)
!2266 = !DILocation(line: 400, column: 57, scope: !2254)
!2267 = !DILocation(line: 400, column: 9, scope: !2254)
!2268 = !DILocation(line: 400, column: 2, scope: !2254)
!2269 = distinct !DISubprogram(name: "__i915_sw_fence_await_sw_fence", scope: !2, file: !2, line: 340, type: !2270, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!132, !228, !228, !1976, !1999}
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2283}
!2273 = !DILocalVariable(name: "fence", arg: 1, scope: !2269, file: !2, line: 340, type: !228)
!2274 = !DILocalVariable(name: "signaler", arg: 2, scope: !2269, file: !2, line: 341, type: !228)
!2275 = !DILocalVariable(name: "wq", arg: 3, scope: !2269, file: !2, line: 342, type: !1976)
!2276 = !DILocalVariable(name: "gfp", arg: 4, scope: !2269, file: !2, line: 342, type: !1999)
!2277 = !DILocalVariable(name: "pending", scope: !2269, file: !2, line: 344, type: !17)
!2278 = !DILocalVariable(name: "flags", scope: !2269, file: !2, line: 345, type: !215)
!2279 = !DILocalVariable(name: "__dummy", scope: !2280, file: !2, line: 383, type: !215)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 383, column: 2)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 383, column: 2)
!2282 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 383, column: 2)
!2283 = !DILocalVariable(name: "__dummy2", scope: !2280, file: !2, line: 383, type: !215)
!2284 = !DILocation(line: 340, column: 65, scope: !2269)
!2285 = !DILocation(line: 341, column: 30, scope: !2269)
!2286 = !DILocation(line: 342, column: 28, scope: !2269)
!2287 = !DILocation(line: 342, column: 38, scope: !2269)
!2288 = !DILocation(line: 344, column: 2, scope: !2269)
!2289 = !DILocation(line: 344, column: 15, scope: !2269)
!2290 = !DILocation(line: 345, column: 2, scope: !2269)
!2291 = !DILocation(line: 345, column: 16, scope: !2269)
!2292 = !DILocation(line: 347, column: 21, scope: !2269)
!2293 = !DILocation(line: 347, column: 2, scope: !2269)
!2294 = !DILocation(line: 348, column: 2, scope: !2269)
!2295 = !DILocation(line: 348, column: 2, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 348, column: 2)
!2297 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 348, column: 2)
!2298 = !DILocation(line: 348, column: 2, scope: !2297)
!2299 = !DILocation(line: 348, column: 2, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 348, column: 2)
!2301 = !DILocation(line: 350, column: 25, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 350, column: 6)
!2303 = !DILocation(line: 350, column: 6, scope: !2302)
!2304 = !DILocation(line: 350, column: 6, scope: !2269)
!2305 = !DILocation(line: 351, column: 32, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 350, column: 36)
!2307 = !DILocation(line: 351, column: 39, scope: !2306)
!2308 = !DILocation(line: 351, column: 49, scope: !2306)
!2309 = !DILocation(line: 351, column: 3, scope: !2306)
!2310 = !DILocation(line: 352, column: 3, scope: !2306)
!2311 = !DILocation(line: 355, column: 21, scope: !2269)
!2312 = !DILocation(line: 355, column: 2, scope: !2269)
!2313 = !DILocation(line: 358, column: 6, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 358, column: 6)
!2315 = !DILocation(line: 358, column: 6, scope: !2269)
!2316 = !DILocation(line: 359, column: 3, scope: !2314)
!2317 = !DILocation(line: 361, column: 10, scope: !2269)
!2318 = !DILocation(line: 362, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 362, column: 6)
!2320 = !DILocation(line: 362, column: 6, scope: !2269)
!2321 = !DILocation(line: 363, column: 29, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 362, column: 11)
!2323 = !DILocation(line: 363, column: 8, scope: !2322)
!2324 = !DILocation(line: 363, column: 6, scope: !2322)
!2325 = !DILocation(line: 364, column: 8, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 364, column: 7)
!2327 = !DILocation(line: 364, column: 7, scope: !2322)
!2328 = !DILocation(line: 365, column: 33, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 365, column: 8)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 364, column: 12)
!2331 = !DILocation(line: 365, column: 9, scope: !2329)
!2332 = !DILocation(line: 365, column: 8, scope: !2330)
!2333 = !DILocation(line: 366, column: 5, scope: !2329)
!2334 = !DILocation(line: 368, column: 23, scope: !2330)
!2335 = !DILocation(line: 368, column: 4, scope: !2330)
!2336 = !DILocation(line: 369, column: 33, scope: !2330)
!2337 = !DILocation(line: 369, column: 40, scope: !2330)
!2338 = !DILocation(line: 369, column: 50, scope: !2330)
!2339 = !DILocation(line: 369, column: 4, scope: !2330)
!2340 = !DILocation(line: 370, column: 4, scope: !2330)
!2341 = !DILocation(line: 373, column: 11, scope: !2322)
!2342 = !DILocation(line: 374, column: 2, scope: !2322)
!2343 = !DILocation(line: 376, column: 18, scope: !2269)
!2344 = !DILocation(line: 376, column: 22, scope: !2269)
!2345 = !DILocation(line: 376, column: 2, scope: !2269)
!2346 = !DILocation(line: 377, column: 14, scope: !2269)
!2347 = !DILocation(line: 377, column: 2, scope: !2269)
!2348 = !DILocation(line: 377, column: 6, scope: !2269)
!2349 = !DILocation(line: 377, column: 12, scope: !2269)
!2350 = !DILocation(line: 378, column: 2, scope: !2269)
!2351 = !DILocation(line: 378, column: 6, scope: !2269)
!2352 = !DILocation(line: 378, column: 11, scope: !2269)
!2353 = !DILocation(line: 379, column: 16, scope: !2269)
!2354 = !DILocation(line: 379, column: 2, scope: !2269)
!2355 = !DILocation(line: 379, column: 6, scope: !2269)
!2356 = !DILocation(line: 379, column: 14, scope: !2269)
!2357 = !DILocation(line: 381, column: 22, scope: !2269)
!2358 = !DILocation(line: 381, column: 2, scope: !2269)
!2359 = !DILocation(line: 383, column: 2, scope: !2269)
!2360 = !DILocation(line: 383, column: 2, scope: !2282)
!2361 = !DILocation(line: 383, column: 2, scope: !2280)
!2362 = !DILocation(line: 383, column: 2, scope: !2281)
!2363 = !DILocation(line: 384, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 384, column: 6)
!2365 = !DILocation(line: 384, column: 6, scope: !2269)
!2366 = !DILocation(line: 385, column: 32, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !2, line: 384, column: 45)
!2368 = !DILocation(line: 385, column: 42, scope: !2367)
!2369 = !DILocation(line: 385, column: 48, scope: !2367)
!2370 = !DILocation(line: 385, column: 3, scope: !2367)
!2371 = !DILocation(line: 386, column: 11, scope: !2367)
!2372 = !DILocation(line: 387, column: 2, scope: !2367)
!2373 = !DILocation(line: 388, column: 22, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2364, file: !2, line: 387, column: 9)
!2375 = !DILocation(line: 388, column: 29, scope: !2374)
!2376 = !DILocation(line: 388, column: 39, scope: !2374)
!2377 = !DILocation(line: 388, column: 3, scope: !2374)
!2378 = !DILocation(line: 389, column: 11, scope: !2374)
!2379 = !DILocation(line: 391, column: 26, scope: !2269)
!2380 = !DILocation(line: 391, column: 36, scope: !2269)
!2381 = !DILocation(line: 391, column: 41, scope: !2269)
!2382 = !DILocation(line: 391, column: 47, scope: !2269)
!2383 = !DILocation(line: 391, column: 2, scope: !2269)
!2384 = !DILocation(line: 393, column: 9, scope: !2269)
!2385 = !DILocation(line: 393, column: 2, scope: !2269)
!2386 = !DILocation(line: 394, column: 1, scope: !2269)
!2387 = distinct !DISubprogram(name: "i915_sw_fence_await_sw_fence_gfp", scope: !2, file: !2, line: 403, type: !2388, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!132, !228, !228, !1999}
!2390 = !{!2391, !2392, !2393}
!2391 = !DILocalVariable(name: "fence", arg: 1, scope: !2387, file: !2, line: 403, type: !228)
!2392 = !DILocalVariable(name: "signaler", arg: 2, scope: !2387, file: !2, line: 404, type: !228)
!2393 = !DILocalVariable(name: "gfp", arg: 3, scope: !2387, file: !2, line: 405, type: !1999)
!2394 = !DILocation(line: 403, column: 60, scope: !2387)
!2395 = !DILocation(line: 404, column: 32, scope: !2387)
!2396 = !DILocation(line: 405, column: 16, scope: !2387)
!2397 = !DILocation(line: 407, column: 40, scope: !2387)
!2398 = !DILocation(line: 407, column: 47, scope: !2387)
!2399 = !DILocation(line: 407, column: 63, scope: !2387)
!2400 = !DILocation(line: 407, column: 9, scope: !2387)
!2401 = !DILocation(line: 407, column: 2, scope: !2387)
!2402 = distinct !DISubprogram(name: "i915_sw_fence_await_dma_fence", scope: !2, file: !2, line: 474, type: !2403, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!132, !228, !103, !215, !1999}
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2416}
!2406 = !DILocalVariable(name: "fence", arg: 1, scope: !2402, file: !2, line: 474, type: !228)
!2407 = !DILocalVariable(name: "dma", arg: 2, scope: !2402, file: !2, line: 475, type: !103)
!2408 = !DILocalVariable(name: "timeout", arg: 3, scope: !2402, file: !2, line: 476, type: !215)
!2409 = !DILocalVariable(name: "gfp", arg: 4, scope: !2402, file: !2, line: 477, type: !1999)
!2410 = !DILocalVariable(name: "cb", scope: !2402, file: !2, line: 479, type: !2004)
!2411 = !DILocalVariable(name: "func", scope: !2402, file: !2, line: 480, type: !99)
!2412 = !DILocalVariable(name: "ret", scope: !2402, file: !2, line: 481, type: !132)
!2413 = !DILocalVariable(name: "timer", scope: !2414, file: !2, line: 512, type: !82)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !2, line: 511, column: 15)
!2415 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 511, column: 6)
!2416 = !DILocalVariable(name: "__mptr", scope: !2417, file: !2, line: 513, type: !81)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 513, column: 4)
!2418 = !DILocation(line: 474, column: 57, scope: !2402)
!2419 = !DILocation(line: 475, column: 25, scope: !2402)
!2420 = !DILocation(line: 476, column: 21, scope: !2402)
!2421 = !DILocation(line: 477, column: 13, scope: !2402)
!2422 = !DILocation(line: 479, column: 2, scope: !2402)
!2423 = !DILocation(line: 479, column: 31, scope: !2402)
!2424 = !DILocation(line: 480, column: 2, scope: !2402)
!2425 = !DILocation(line: 480, column: 19, scope: !2402)
!2426 = !DILocation(line: 481, column: 2, scope: !2402)
!2427 = !DILocation(line: 481, column: 6, scope: !2402)
!2428 = !DILocation(line: 483, column: 21, scope: !2402)
!2429 = !DILocation(line: 483, column: 2, scope: !2402)
!2430 = !DILocation(line: 484, column: 2, scope: !2402)
!2431 = !DILocation(line: 484, column: 2, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !2, line: 484, column: 2)
!2433 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 484, column: 2)
!2434 = !DILocation(line: 484, column: 2, scope: !2433)
!2435 = !DILocation(line: 484, column: 2, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 484, column: 2)
!2437 = !DILocation(line: 486, column: 28, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 486, column: 6)
!2439 = !DILocation(line: 486, column: 6, scope: !2438)
!2440 = !DILocation(line: 486, column: 6, scope: !2402)
!2441 = !DILocation(line: 487, column: 32, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 486, column: 34)
!2443 = !DILocation(line: 487, column: 39, scope: !2442)
!2444 = !DILocation(line: 487, column: 44, scope: !2442)
!2445 = !DILocation(line: 487, column: 3, scope: !2442)
!2446 = !DILocation(line: 488, column: 3, scope: !2442)
!2447 = !DILocation(line: 491, column: 15, scope: !2402)
!2448 = !DILocation(line: 494, column: 8, scope: !2402)
!2449 = !DILocation(line: 491, column: 7, scope: !2402)
!2450 = !DILocation(line: 491, column: 5, scope: !2402)
!2451 = !DILocation(line: 495, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 495, column: 6)
!2453 = !DILocation(line: 495, column: 6, scope: !2402)
!2454 = !DILocation(line: 496, column: 32, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 496, column: 7)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 495, column: 11)
!2457 = !DILocation(line: 496, column: 8, scope: !2455)
!2458 = !DILocation(line: 496, column: 7, scope: !2456)
!2459 = !DILocation(line: 497, column: 4, scope: !2455)
!2460 = !DILocation(line: 499, column: 24, scope: !2456)
!2461 = !DILocation(line: 499, column: 9, scope: !2456)
!2462 = !DILocation(line: 499, column: 7, scope: !2456)
!2463 = !DILocation(line: 500, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 500, column: 7)
!2465 = !DILocation(line: 500, column: 7, scope: !2456)
!2466 = !DILocation(line: 501, column: 11, scope: !2464)
!2467 = !DILocation(line: 501, column: 4, scope: !2464)
!2468 = !DILocation(line: 503, column: 32, scope: !2456)
!2469 = !DILocation(line: 503, column: 39, scope: !2456)
!2470 = !DILocation(line: 503, column: 44, scope: !2456)
!2471 = !DILocation(line: 503, column: 3, scope: !2456)
!2472 = !DILocation(line: 504, column: 3, scope: !2456)
!2473 = !DILocation(line: 507, column: 14, scope: !2402)
!2474 = !DILocation(line: 507, column: 2, scope: !2402)
!2475 = !DILocation(line: 507, column: 6, scope: !2402)
!2476 = !DILocation(line: 507, column: 12, scope: !2402)
!2477 = !DILocation(line: 508, column: 22, scope: !2402)
!2478 = !DILocation(line: 508, column: 2, scope: !2402)
!2479 = !DILocation(line: 510, column: 7, scope: !2402)
!2480 = !DILocation(line: 511, column: 6, scope: !2415)
!2481 = !DILocation(line: 511, column: 6, scope: !2402)
!2482 = !DILocation(line: 512, column: 3, scope: !2414)
!2483 = !DILocation(line: 512, column: 38, scope: !2414)
!2484 = !DILocation(line: 513, column: 4, scope: !2417)
!2485 = !DILocation(line: 513, column: 4, scope: !2414)
!2486 = !DILocation(line: 515, column: 30, scope: !2414)
!2487 = !DILocation(line: 515, column: 16, scope: !2414)
!2488 = !DILocation(line: 515, column: 3, scope: !2414)
!2489 = !DILocation(line: 515, column: 10, scope: !2414)
!2490 = !DILocation(line: 515, column: 14, scope: !2414)
!2491 = !DILocation(line: 516, column: 18, scope: !2414)
!2492 = !DILocation(line: 516, column: 25, scope: !2414)
!2493 = !DILocation(line: 516, column: 3, scope: !2414)
!2494 = !DILocation(line: 518, column: 3, scope: !2414)
!2495 = !DILocation(line: 520, column: 14, scope: !2414)
!2496 = !DILocation(line: 520, column: 21, scope: !2414)
!2497 = !DILocation(line: 520, column: 45, scope: !2414)
!2498 = !DILocation(line: 520, column: 55, scope: !2414)
!2499 = !DILocation(line: 520, column: 53, scope: !2414)
!2500 = !DILocation(line: 520, column: 28, scope: !2414)
!2501 = !DILocation(line: 520, column: 3, scope: !2414)
!2502 = !DILocation(line: 522, column: 8, scope: !2414)
!2503 = !DILocation(line: 523, column: 2, scope: !2415)
!2504 = !DILocation(line: 523, column: 2, scope: !2414)
!2505 = !DILocation(line: 525, column: 31, scope: !2402)
!2506 = !DILocation(line: 525, column: 37, scope: !2402)
!2507 = !DILocation(line: 525, column: 41, scope: !2402)
!2508 = !DILocation(line: 525, column: 47, scope: !2402)
!2509 = !DILocation(line: 525, column: 8, scope: !2402)
!2510 = !DILocation(line: 525, column: 6, scope: !2402)
!2511 = !DILocation(line: 526, column: 6, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 526, column: 6)
!2513 = !DILocation(line: 526, column: 10, scope: !2512)
!2514 = !DILocation(line: 526, column: 6, scope: !2402)
!2515 = !DILocation(line: 527, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 526, column: 16)
!2517 = !DILocation(line: 528, column: 2, scope: !2516)
!2518 = !DILocation(line: 529, column: 3, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 528, column: 9)
!2520 = !DILocation(line: 529, column: 8, scope: !2519)
!2521 = !DILocation(line: 529, column: 14, scope: !2519)
!2522 = !DILocation(line: 529, column: 18, scope: !2519)
!2523 = !DILocation(line: 530, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 530, column: 7)
!2525 = !DILocation(line: 530, column: 11, scope: !2524)
!2526 = !DILocation(line: 530, column: 7, scope: !2519)
!2527 = !DILocation(line: 531, column: 8, scope: !2524)
!2528 = !DILocation(line: 531, column: 4, scope: !2524)
!2529 = !DILocation(line: 534, column: 9, scope: !2402)
!2530 = !DILocation(line: 534, column: 2, scope: !2402)
!2531 = !DILocation(line: 535, column: 1, scope: !2402)
!2532 = distinct !DISubprogram(name: "gfpflags_allow_blocking", scope: !2533, file: !2533, line: 34, type: !2534, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2537)
!2533 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!157, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!2537 = !{!2538}
!2538 = !DILocalVariable(name: "gfp_flags", arg: 1, scope: !2532, file: !2533, line: 34, type: !2536)
!2539 = !DILocation(line: 34, column: 56, scope: !2532)
!2540 = !DILocation(line: 36, column: 12, scope: !2532)
!2541 = !DILocation(line: 36, column: 22, scope: !2532)
!2542 = !DILocation(line: 36, column: 10, scope: !2532)
!2543 = !DILocation(line: 36, column: 9, scope: !2532)
!2544 = !DILocation(line: 36, column: 2, scope: !2532)
!2545 = !DILocation(line: 112, column: 2, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !9, file: !10, line: 112, column: 2)
!2547 = !DILocation(line: 112, column: 2, scope: !9)
!2548 = !DILocation(line: 113, column: 1, scope: !9)
!2549 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !56, file: !56, line: 449, type: !168, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2550)
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "fence", arg: 1, scope: !2549, file: !56, line: 449, type: !103)
!2552 = !DILocation(line: 449, column: 41, scope: !2549)
!2553 = !DILocation(line: 451, column: 6, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !56, line: 451, column: 6)
!2555 = !DILocation(line: 451, column: 6, scope: !2549)
!2556 = !DILocation(line: 452, column: 3, scope: !2554)
!2557 = !DILocation(line: 454, column: 6, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !56, line: 454, column: 6)
!2559 = !DILocation(line: 454, column: 13, scope: !2558)
!2560 = !DILocation(line: 454, column: 18, scope: !2558)
!2561 = !DILocation(line: 454, column: 27, scope: !2558)
!2562 = !DILocation(line: 454, column: 30, scope: !2558)
!2563 = !DILocation(line: 454, column: 37, scope: !2558)
!2564 = !DILocation(line: 454, column: 42, scope: !2558)
!2565 = !DILocation(line: 454, column: 51, scope: !2558)
!2566 = !DILocation(line: 454, column: 6, scope: !2549)
!2567 = !DILocation(line: 455, column: 20, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2558, file: !56, line: 454, column: 59)
!2569 = !DILocation(line: 455, column: 3, scope: !2568)
!2570 = !DILocation(line: 456, column: 3, scope: !2568)
!2571 = !DILocation(line: 459, column: 2, scope: !2549)
!2572 = !DILocation(line: 460, column: 1, scope: !2549)
!2573 = distinct !DISubprogram(name: "i915_sw_fence_set_error_once", scope: !16, file: !16, line: 117, type: !2574, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !228, !132}
!2576 = !{!2577, !2578, !2579, !2582, !2584, !2585, !2586}
!2577 = !DILocalVariable(name: "fence", arg: 1, scope: !2573, file: !16, line: 117, type: !228)
!2578 = !DILocalVariable(name: "error", arg: 2, scope: !2573, file: !16, line: 117, type: !132)
!2579 = !DILocalVariable(name: "__ai_ptr", scope: !2580, file: !16, line: 120, type: !908)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !16, line: 120, column: 3)
!2581 = distinct !DILexicalBlock(scope: !2573, file: !16, line: 119, column: 6)
!2582 = !DILocalVariable(name: "__ret", scope: !2583, file: !16, line: 120, type: !132)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !16, line: 120, column: 3)
!2584 = !DILocalVariable(name: "__old", scope: !2583, file: !16, line: 120, type: !132)
!2585 = !DILocalVariable(name: "__new", scope: !2583, file: !16, line: 120, type: !132)
!2586 = !DILocalVariable(name: "__ptr", scope: !2583, file: !16, line: 120, type: !1997)
!2587 = !DILocation(line: 117, column: 52, scope: !2573)
!2588 = !DILocation(line: 117, column: 63, scope: !2573)
!2589 = !DILocation(line: 119, column: 6, scope: !2581)
!2590 = !DILocation(line: 119, column: 6, scope: !2573)
!2591 = !DILocation(line: 120, column: 3, scope: !2580)
!2592 = !DILocation(line: 120, column: 3, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2580, file: !16, line: 120, column: 3)
!2594 = !DILocation(line: 120, column: 3, scope: !2583)
!2595 = !{i64 2152828846, i64 2152828885, i64 2152828906, i64 2152828943, i64 2152828966, i64 2152828975}
!2596 = !DILocation(line: 120, column: 3, scope: !2581)
!2597 = !DILocation(line: 121, column: 1, scope: !2573)
!2598 = distinct !DISubprogram(name: "kmalloc", scope: !63, file: !63, line: 591, type: !2599, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!81, !1355, !1999}
!2601 = !{!2602, !2603, !2604}
!2602 = !DILocalVariable(name: "size", arg: 1, scope: !2598, file: !63, line: 591, type: !1355)
!2603 = !DILocalVariable(name: "flags", arg: 2, scope: !2598, file: !63, line: 591, type: !1999)
!2604 = !DILocalVariable(name: "index", scope: !2605, file: !63, line: 594, type: !17)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !63, line: 593, column: 42)
!2606 = distinct !DILexicalBlock(scope: !2598, file: !63, line: 593, column: 6)
!2607 = !DILocation(line: 591, column: 61, scope: !2598)
!2608 = !DILocation(line: 591, column: 73, scope: !2598)
!2609 = !DILocation(line: 593, column: 27, scope: !2606)
!2610 = !DILocation(line: 593, column: 6, scope: !2606)
!2611 = !DILocation(line: 593, column: 33, scope: !2606)
!2612 = !DILocation(line: 593, column: 36, scope: !2606)
!2613 = !DILocation(line: 593, column: 6, scope: !2598)
!2614 = !DILocation(line: 594, column: 3, scope: !2605)
!2615 = !DILocation(line: 594, column: 16, scope: !2605)
!2616 = !DILocation(line: 596, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2605, file: !63, line: 596, column: 7)
!2618 = !DILocation(line: 596, column: 12, scope: !2617)
!2619 = !DILocation(line: 596, column: 7, scope: !2605)
!2620 = !DILocation(line: 597, column: 25, scope: !2617)
!2621 = !DILocation(line: 597, column: 31, scope: !2617)
!2622 = !DILocation(line: 597, column: 11, scope: !2617)
!2623 = !DILocation(line: 597, column: 4, scope: !2617)
!2624 = !DILocation(line: 599, column: 11, scope: !2605)
!2625 = !DILocation(line: 599, column: 9, scope: !2605)
!2626 = !DILocation(line: 601, column: 33, scope: !2605)
!2627 = !DILocation(line: 601, column: 40, scope: !2605)
!2628 = !DILocation(line: 601, column: 20, scope: !2605)
!2629 = !DILocation(line: 601, column: 5, scope: !2605)
!2630 = !DILocation(line: 601, column: 51, scope: !2605)
!2631 = !DILocation(line: 602, column: 5, scope: !2605)
!2632 = !DILocation(line: 602, column: 12, scope: !2605)
!2633 = !DILocation(line: 600, column: 10, scope: !2605)
!2634 = !DILocation(line: 600, column: 3, scope: !2605)
!2635 = !DILocation(line: 603, column: 2, scope: !2606)
!2636 = !DILocation(line: 604, column: 19, scope: !2598)
!2637 = !DILocation(line: 604, column: 25, scope: !2598)
!2638 = !DILocation(line: 604, column: 9, scope: !2598)
!2639 = !DILocation(line: 604, column: 2, scope: !2598)
!2640 = !DILocation(line: 605, column: 1, scope: !2598)
!2641 = distinct !DISubprogram(name: "dma_fence_wait", scope: !56, file: !56, line: 627, type: !2642, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!175, !103, !157}
!2644 = !{!2645, !2646, !2647}
!2645 = !DILocalVariable(name: "fence", arg: 1, scope: !2641, file: !56, line: 627, type: !103)
!2646 = !DILocalVariable(name: "intr", arg: 2, scope: !2641, file: !56, line: 627, type: !157)
!2647 = !DILocalVariable(name: "ret", scope: !2641, file: !56, line: 629, type: !175)
!2648 = !DILocation(line: 627, column: 60, scope: !2641)
!2649 = !DILocation(line: 627, column: 72, scope: !2641)
!2650 = !DILocation(line: 629, column: 2, scope: !2641)
!2651 = !DILocation(line: 629, column: 14, scope: !2641)
!2652 = !DILocation(line: 635, column: 31, scope: !2641)
!2653 = !DILocation(line: 635, column: 38, scope: !2641)
!2654 = !{i8 0, i8 2}
!2655 = !DILocation(line: 635, column: 8, scope: !2641)
!2656 = !DILocation(line: 635, column: 6, scope: !2641)
!2657 = !DILocation(line: 637, column: 9, scope: !2641)
!2658 = !DILocation(line: 637, column: 13, scope: !2641)
!2659 = !DILocation(line: 637, column: 19, scope: !2641)
!2660 = !DILocation(line: 638, column: 1, scope: !2641)
!2661 = !DILocation(line: 637, column: 2, scope: !2641)
!2662 = distinct !DISubprogram(name: "dma_i915_sw_fence_wake", scope: !2, file: !2, line: 418, type: !101, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2663)
!2663 = !{!2664, !2665, !2666, !2667}
!2664 = !DILocalVariable(name: "dma", arg: 1, scope: !2662, file: !2, line: 418, type: !103)
!2665 = !DILocalVariable(name: "data", arg: 2, scope: !2662, file: !2, line: 419, type: !226)
!2666 = !DILocalVariable(name: "cb", scope: !2662, file: !2, line: 421, type: !2004)
!2667 = !DILocalVariable(name: "__mptr", scope: !2668, file: !2, line: 421, type: !81)
!2668 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 421, column: 36)
!2669 = !DILocation(line: 418, column: 54, scope: !2662)
!2670 = !DILocation(line: 419, column: 29, scope: !2662)
!2671 = !DILocation(line: 421, column: 2, scope: !2662)
!2672 = !DILocation(line: 421, column: 31, scope: !2662)
!2673 = !DILocation(line: 421, column: 36, scope: !2668)
!2674 = !DILocation(line: 421, column: 36, scope: !2662)
!2675 = !DILocation(line: 423, column: 31, scope: !2662)
!2676 = !DILocation(line: 423, column: 35, scope: !2662)
!2677 = !DILocation(line: 423, column: 42, scope: !2662)
!2678 = !DILocation(line: 423, column: 47, scope: !2662)
!2679 = !DILocation(line: 423, column: 2, scope: !2662)
!2680 = !DILocation(line: 424, column: 25, scope: !2662)
!2681 = !DILocation(line: 424, column: 29, scope: !2662)
!2682 = !DILocation(line: 424, column: 2, scope: !2662)
!2683 = !DILocation(line: 425, column: 8, scope: !2662)
!2684 = !DILocation(line: 425, column: 2, scope: !2662)
!2685 = !DILocation(line: 426, column: 1, scope: !2662)
!2686 = distinct !DISubprogram(name: "dma_fence_get", scope: !56, file: !56, line: 305, type: !2687, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!103, !103}
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "fence", arg: 1, scope: !2686, file: !56, line: 305, type: !103)
!2691 = !DILocation(line: 305, column: 65, scope: !2686)
!2692 = !DILocation(line: 307, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2686, file: !56, line: 307, column: 6)
!2694 = !DILocation(line: 307, column: 6, scope: !2686)
!2695 = !DILocation(line: 308, column: 13, scope: !2693)
!2696 = !DILocation(line: 308, column: 20, scope: !2693)
!2697 = !DILocation(line: 308, column: 3, scope: !2693)
!2698 = !DILocation(line: 309, column: 9, scope: !2686)
!2699 = !DILocation(line: 309, column: 2, scope: !2686)
!2700 = distinct !DISubprogram(name: "init_irq_work", scope: !268, file: !268, line: 37, type: !2701, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !291, !288}
!2703 = !{!2704, !2705}
!2704 = !DILocalVariable(name: "work", arg: 1, scope: !2700, file: !268, line: 37, type: !291)
!2705 = !DILocalVariable(name: "func", arg: 2, scope: !2700, file: !268, line: 37, type: !288)
!2706 = !DILocation(line: 37, column: 37, scope: !2700)
!2707 = !DILocation(line: 37, column: 50, scope: !2700)
!2708 = !DILocation(line: 39, column: 3, scope: !2700)
!2709 = !DILocation(line: 39, column: 10, scope: !2700)
!2710 = !DILocation(line: 40, column: 1, scope: !2700)
!2711 = distinct !DISubprogram(name: "irq_i915_sw_fence_work", scope: !2, file: !2, line: 463, type: !289, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2712)
!2712 = !{!2713, !2714, !2715, !2717}
!2713 = !DILocalVariable(name: "wrk", arg: 1, scope: !2711, file: !2, line: 463, type: !291)
!2714 = !DILocalVariable(name: "cb", scope: !2711, file: !2, line: 465, type: !82)
!2715 = !DILocalVariable(name: "__mptr", scope: !2716, file: !2, line: 466, type: !81)
!2716 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 466, column: 3)
!2717 = !DILocalVariable(name: "___p", scope: !2718, file: !2, line: 471, type: !82)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 471, column: 2)
!2719 = !DILocation(line: 463, column: 53, scope: !2711)
!2720 = !DILocation(line: 465, column: 2, scope: !2711)
!2721 = !DILocation(line: 465, column: 37, scope: !2711)
!2722 = !DILocation(line: 466, column: 3, scope: !2716)
!2723 = !DILocation(line: 466, column: 3, scope: !2711)
!2724 = !DILocation(line: 468, column: 23, scope: !2711)
!2725 = !DILocation(line: 468, column: 27, scope: !2711)
!2726 = !DILocation(line: 468, column: 2, scope: !2711)
!2727 = !DILocation(line: 469, column: 16, scope: !2711)
!2728 = !DILocation(line: 469, column: 20, scope: !2711)
!2729 = !DILocation(line: 469, column: 2, scope: !2711)
!2730 = !DILocation(line: 471, column: 2, scope: !2711)
!2731 = !DILocation(line: 471, column: 2, scope: !2718)
!2732 = !DILocation(line: 471, column: 2, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2718, file: !2, line: 471, column: 2)
!2734 = !DILocation(line: 471, column: 2, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2733, file: !2, line: 471, column: 2)
!2736 = !DILocation(line: 471, column: 2, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 471, column: 2)
!2738 = !DILocation(line: 472, column: 1, scope: !2711)
!2739 = !DISubprogram(name: "init_timer_key", scope: !248, file: !248, line: 91, type: !2740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !262, !259, !17, !163, !2180}
!2742 = distinct !DISubprogram(name: "timer_i915_sw_fence_wake", scope: !2, file: !2, line: 428, type: !260, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2743)
!2743 = !{!2744, !2745, !2746, !2748, !2749, !2752}
!2744 = !DILocalVariable(name: "t", arg: 1, scope: !2742, file: !2, line: 428, type: !262)
!2745 = !DILocalVariable(name: "cb", scope: !2742, file: !2, line: 430, type: !82)
!2746 = !DILocalVariable(name: "__mptr", scope: !2747, file: !2, line: 430, type: !81)
!2747 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 430, column: 42)
!2748 = !DILocalVariable(name: "fence", scope: !2742, file: !2, line: 431, type: !228)
!2749 = !DILocalVariable(name: "__ai_ptr", scope: !2750, file: !2, line: 433, type: !2751)
!2750 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 433, column: 10)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!2752 = !DILocalVariable(name: "__ret", scope: !2753, file: !2, line: 433, type: !228)
!2753 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 433, column: 10)
!2754 = !DILocation(line: 428, column: 57, scope: !2742)
!2755 = !DILocation(line: 430, column: 2, scope: !2742)
!2756 = !DILocation(line: 430, column: 37, scope: !2742)
!2757 = !DILocation(line: 430, column: 42, scope: !2747)
!2758 = !DILocation(line: 430, column: 42, scope: !2742)
!2759 = !DILocation(line: 431, column: 2, scope: !2742)
!2760 = !DILocation(line: 431, column: 24, scope: !2742)
!2761 = !DILocation(line: 433, column: 10, scope: !2750)
!2762 = !DILocation(line: 433, column: 10, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 433, column: 10)
!2764 = !DILocation(line: 433, column: 10, scope: !2753)
!2765 = !{i64 2152858787}
!2766 = !DILocation(line: 433, column: 10, scope: !2742)
!2767 = !DILocation(line: 433, column: 8, scope: !2742)
!2768 = !DILocation(line: 434, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 434, column: 6)
!2770 = !DILocation(line: 434, column: 6, scope: !2742)
!2771 = !DILocation(line: 435, column: 3, scope: !2769)
!2772 = !DILocation(line: 437, column: 2, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 437, column: 2)
!2774 = !DILocation(line: 437, column: 2, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2773, file: !2, line: 437, column: 2)
!2776 = !DILocation(line: 443, column: 31, scope: !2742)
!2777 = !DILocation(line: 443, column: 2, scope: !2742)
!2778 = !DILocation(line: 444, column: 25, scope: !2742)
!2779 = !DILocation(line: 444, column: 2, scope: !2742)
!2780 = !DILocation(line: 445, column: 1, scope: !2742)
!2781 = !DISubprogram(name: "mod_timer", scope: !248, file: !248, line: 172, type: !2782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!132, !262, !215}
!2784 = !DISubprogram(name: "round_jiffies_up", scope: !248, file: !248, line: 227, type: !2785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!215, !215}
!2787 = distinct !DISubprogram(name: "dma_i915_sw_fence_wake_timer", scope: !2, file: !2, line: 447, type: !101, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2788)
!2788 = !{!2789, !2790, !2791, !2792, !2794, !2795, !2797}
!2789 = !DILocalVariable(name: "dma", arg: 1, scope: !2787, file: !2, line: 447, type: !103)
!2790 = !DILocalVariable(name: "data", arg: 2, scope: !2787, file: !2, line: 448, type: !226)
!2791 = !DILocalVariable(name: "cb", scope: !2787, file: !2, line: 450, type: !82)
!2792 = !DILocalVariable(name: "__mptr", scope: !2793, file: !2, line: 451, type: !81)
!2793 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 451, column: 3)
!2794 = !DILocalVariable(name: "fence", scope: !2787, file: !2, line: 452, type: !228)
!2795 = !DILocalVariable(name: "__ai_ptr", scope: !2796, file: !2, line: 454, type: !2751)
!2796 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 454, column: 10)
!2797 = !DILocalVariable(name: "__ret", scope: !2798, file: !2, line: 454, type: !228)
!2798 = distinct !DILexicalBlock(scope: !2796, file: !2, line: 454, column: 10)
!2799 = !DILocation(line: 447, column: 60, scope: !2787)
!2800 = !DILocation(line: 448, column: 28, scope: !2787)
!2801 = !DILocation(line: 450, column: 2, scope: !2787)
!2802 = !DILocation(line: 450, column: 37, scope: !2787)
!2803 = !DILocation(line: 451, column: 3, scope: !2793)
!2804 = !DILocation(line: 451, column: 3, scope: !2787)
!2805 = !DILocation(line: 452, column: 2, scope: !2787)
!2806 = !DILocation(line: 452, column: 24, scope: !2787)
!2807 = !DILocation(line: 454, column: 10, scope: !2796)
!2808 = !DILocation(line: 454, column: 10, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2796, file: !2, line: 454, column: 10)
!2810 = !DILocation(line: 454, column: 10, scope: !2798)
!2811 = !{i64 2152862186}
!2812 = !DILocation(line: 454, column: 10, scope: !2787)
!2813 = !DILocation(line: 454, column: 8, scope: !2787)
!2814 = !DILocation(line: 455, column: 6, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 455, column: 6)
!2816 = !DILocation(line: 455, column: 6, scope: !2787)
!2817 = !DILocation(line: 456, column: 32, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 455, column: 13)
!2819 = !DILocation(line: 456, column: 39, scope: !2818)
!2820 = !DILocation(line: 456, column: 44, scope: !2818)
!2821 = !DILocation(line: 456, column: 3, scope: !2818)
!2822 = !DILocation(line: 457, column: 26, scope: !2818)
!2823 = !DILocation(line: 457, column: 3, scope: !2818)
!2824 = !DILocation(line: 458, column: 2, scope: !2818)
!2825 = !DILocation(line: 460, column: 18, scope: !2787)
!2826 = !DILocation(line: 460, column: 22, scope: !2787)
!2827 = !DILocation(line: 460, column: 2, scope: !2787)
!2828 = !DILocation(line: 461, column: 1, scope: !2787)
!2829 = !DISubprogram(name: "dma_fence_add_callback", scope: !56, file: !56, line: 397, type: !2830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!132, !103, !226, !99}
!2832 = distinct !DISubprogram(name: "__i915_sw_fence_await_dma_fence", scope: !2, file: !2, line: 546, type: !2833, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!132, !228, !103, !2004}
!2835 = !{!2836, !2837, !2838, !2839}
!2836 = !DILocalVariable(name: "fence", arg: 1, scope: !2832, file: !2, line: 546, type: !228)
!2837 = !DILocalVariable(name: "dma", arg: 2, scope: !2832, file: !2, line: 547, type: !103)
!2838 = !DILocalVariable(name: "cb", arg: 3, scope: !2832, file: !2, line: 548, type: !2004)
!2839 = !DILocalVariable(name: "ret", scope: !2832, file: !2, line: 550, type: !132)
!2840 = !DILocation(line: 546, column: 59, scope: !2832)
!2841 = !DILocation(line: 547, column: 27, scope: !2832)
!2842 = !DILocation(line: 548, column: 38, scope: !2832)
!2843 = !DILocation(line: 550, column: 2, scope: !2832)
!2844 = !DILocation(line: 550, column: 6, scope: !2832)
!2845 = !DILocation(line: 552, column: 21, scope: !2832)
!2846 = !DILocation(line: 552, column: 2, scope: !2832)
!2847 = !DILocation(line: 554, column: 28, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 554, column: 6)
!2849 = !DILocation(line: 554, column: 6, scope: !2848)
!2850 = !DILocation(line: 554, column: 6, scope: !2832)
!2851 = !DILocation(line: 555, column: 32, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !2, line: 554, column: 34)
!2853 = !DILocation(line: 555, column: 39, scope: !2852)
!2854 = !DILocation(line: 555, column: 44, scope: !2852)
!2855 = !DILocation(line: 555, column: 3, scope: !2852)
!2856 = !DILocation(line: 556, column: 3, scope: !2852)
!2857 = !DILocation(line: 559, column: 14, scope: !2832)
!2858 = !DILocation(line: 559, column: 2, scope: !2832)
!2859 = !DILocation(line: 559, column: 6, scope: !2832)
!2860 = !DILocation(line: 559, column: 12, scope: !2832)
!2861 = !DILocation(line: 560, column: 22, scope: !2832)
!2862 = !DILocation(line: 560, column: 2, scope: !2832)
!2863 = !DILocation(line: 562, column: 6, scope: !2832)
!2864 = !DILocation(line: 563, column: 29, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 563, column: 6)
!2866 = !DILocation(line: 563, column: 35, scope: !2865)
!2867 = !DILocation(line: 563, column: 39, scope: !2865)
!2868 = !DILocation(line: 563, column: 6, scope: !2865)
!2869 = !DILocation(line: 563, column: 6, scope: !2832)
!2870 = !DILocation(line: 565, column: 28, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 563, column: 72)
!2872 = !DILocation(line: 565, column: 34, scope: !2871)
!2873 = !DILocation(line: 565, column: 38, scope: !2871)
!2874 = !DILocation(line: 565, column: 3, scope: !2871)
!2875 = !DILocation(line: 566, column: 7, scope: !2871)
!2876 = !DILocation(line: 567, column: 2, scope: !2871)
!2877 = !DILocation(line: 569, column: 9, scope: !2832)
!2878 = !DILocation(line: 569, column: 2, scope: !2832)
!2879 = !DILocation(line: 570, column: 1, scope: !2832)
!2880 = distinct !DISubprogram(name: "__dma_i915_sw_fence_wake", scope: !2, file: !2, line: 537, type: !101, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2881)
!2881 = !{!2882, !2883, !2884, !2885}
!2882 = !DILocalVariable(name: "dma", arg: 1, scope: !2880, file: !2, line: 537, type: !103)
!2883 = !DILocalVariable(name: "data", arg: 2, scope: !2880, file: !2, line: 538, type: !226)
!2884 = !DILocalVariable(name: "cb", scope: !2880, file: !2, line: 540, type: !2004)
!2885 = !DILocalVariable(name: "__mptr", scope: !2886, file: !2, line: 540, type: !81)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !2, line: 540, column: 36)
!2887 = !DILocation(line: 537, column: 56, scope: !2880)
!2888 = !DILocation(line: 538, column: 31, scope: !2880)
!2889 = !DILocation(line: 540, column: 2, scope: !2880)
!2890 = !DILocation(line: 540, column: 31, scope: !2880)
!2891 = !DILocation(line: 540, column: 36, scope: !2886)
!2892 = !DILocation(line: 540, column: 36, scope: !2880)
!2893 = !DILocation(line: 542, column: 31, scope: !2880)
!2894 = !DILocation(line: 542, column: 35, scope: !2880)
!2895 = !DILocation(line: 542, column: 42, scope: !2880)
!2896 = !DILocation(line: 542, column: 47, scope: !2880)
!2897 = !DILocation(line: 542, column: 2, scope: !2880)
!2898 = !DILocation(line: 543, column: 25, scope: !2880)
!2899 = !DILocation(line: 543, column: 29, scope: !2880)
!2900 = !DILocation(line: 543, column: 2, scope: !2880)
!2901 = !DILocation(line: 544, column: 1, scope: !2880)
!2902 = distinct !DISubprogram(name: "i915_sw_fence_await_reservation", scope: !2, file: !2, line: 572, type: !2903, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2925)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!132, !228, !2905, !157, !215, !1999}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !45, line: 155, size: 384, elements: !2907)
!2907 = !{!2908, !2922}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2906, file: !45, line: 166, baseType: !2909, size: 320)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !2910, line: 47, size: 320, elements: !2911)
!2910 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2909, file: !2910, line: 48, baseType: !721, size: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2909, file: !2910, line: 49, baseType: !2914, size: 64, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !2910, line: 55, size: 192, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920, !2921}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2915, file: !2910, line: 56, baseType: !297, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !2915, file: !2910, line: 57, baseType: !215, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !2915, file: !2910, line: 58, baseType: !17, size: 32, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !2915, file: !2910, line: 59, baseType: !149, size: 16, offset: 160)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !2915, file: !2910, line: 60, baseType: !149, size: 16, offset: 176)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !2906, file: !45, line: 178, baseType: !2923, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !45, line: 50, flags: DIFlagFwdDecl)
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2942, !2943, !2944}
!2926 = !DILocalVariable(name: "fence", arg: 1, scope: !2902, file: !2, line: 572, type: !228)
!2927 = !DILocalVariable(name: "resv", arg: 2, scope: !2902, file: !2, line: 573, type: !2905)
!2928 = !DILocalVariable(name: "write", arg: 3, scope: !2902, file: !2, line: 574, type: !157)
!2929 = !DILocalVariable(name: "timeout", arg: 4, scope: !2902, file: !2, line: 575, type: !215)
!2930 = !DILocalVariable(name: "gfp", arg: 5, scope: !2902, file: !2, line: 576, type: !1999)
!2931 = !DILocalVariable(name: "cursor", scope: !2902, file: !2, line: 578, type: !2932)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_iter", file: !45, line: 193, size: 384, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !2932, file: !45, line: 195, baseType: !2905, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2932, file: !45, line: 198, baseType: !44, size: 32, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !2932, file: !45, line: 201, baseType: !103, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fence_usage", scope: !2932, file: !45, line: 204, baseType: !44, size: 32, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2932, file: !45, line: 207, baseType: !17, size: 32, offset: 224)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !2932, file: !45, line: 210, baseType: !2923, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !2932, file: !45, line: 213, baseType: !17, size: 32, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "is_restarted", scope: !2932, file: !45, line: 216, baseType: !157, size: 8, offset: 352)
!2942 = !DILocalVariable(name: "f", scope: !2902, file: !2, line: 579, type: !103)
!2943 = !DILocalVariable(name: "ret", scope: !2902, file: !2, line: 580, type: !132)
!2944 = !DILocalVariable(name: "pending", scope: !2902, file: !2, line: 580, type: !132)
!2945 = !DILocation(line: 572, column: 59, scope: !2902)
!2946 = !DILocation(line: 573, column: 26, scope: !2902)
!2947 = !DILocation(line: 574, column: 14, scope: !2902)
!2948 = !DILocation(line: 575, column: 23, scope: !2902)
!2949 = !DILocation(line: 576, column: 15, scope: !2902)
!2950 = !DILocation(line: 578, column: 2, scope: !2902)
!2951 = !DILocation(line: 578, column: 23, scope: !2902)
!2952 = !DILocation(line: 579, column: 2, scope: !2902)
!2953 = !DILocation(line: 579, column: 20, scope: !2902)
!2954 = !DILocation(line: 580, column: 2, scope: !2902)
!2955 = !DILocation(line: 580, column: 6, scope: !2902)
!2956 = !DILocation(line: 580, column: 15, scope: !2902)
!2957 = !DILocation(line: 582, column: 21, scope: !2902)
!2958 = !DILocation(line: 582, column: 2, scope: !2902)
!2959 = !DILocation(line: 583, column: 2, scope: !2902)
!2960 = !DILocation(line: 583, column: 2, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !2, line: 583, column: 2)
!2962 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 583, column: 2)
!2963 = !DILocation(line: 583, column: 2, scope: !2962)
!2964 = !DILocation(line: 583, column: 2, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 583, column: 2)
!2966 = !DILocation(line: 585, column: 31, scope: !2902)
!2967 = !DILocation(line: 585, column: 55, scope: !2902)
!2968 = !DILocation(line: 585, column: 37, scope: !2902)
!2969 = !DILocation(line: 585, column: 2, scope: !2902)
!2970 = !DILocation(line: 586, column: 2, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 586, column: 2)
!2972 = !DILocation(line: 586, column: 2, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 586, column: 2)
!2974 = !DILocation(line: 587, column: 43, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2973, file: !2, line: 586, column: 47)
!2976 = !DILocation(line: 587, column: 50, scope: !2975)
!2977 = !DILocation(line: 587, column: 53, scope: !2975)
!2978 = !DILocation(line: 588, column: 8, scope: !2975)
!2979 = !DILocation(line: 587, column: 13, scope: !2975)
!2980 = !DILocation(line: 587, column: 11, scope: !2975)
!2981 = !DILocation(line: 589, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !2, line: 589, column: 7)
!2983 = !DILocation(line: 589, column: 15, scope: !2982)
!2984 = !DILocation(line: 589, column: 7, scope: !2975)
!2985 = !DILocation(line: 590, column: 10, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !2, line: 589, column: 20)
!2987 = !DILocation(line: 590, column: 8, scope: !2986)
!2988 = !DILocation(line: 591, column: 4, scope: !2986)
!2989 = !DILocation(line: 594, column: 10, scope: !2975)
!2990 = !DILocation(line: 594, column: 7, scope: !2975)
!2991 = !DILocation(line: 595, column: 2, scope: !2975)
!2992 = distinct !{!2992, !2970, !2993, !2136, !2137}
!2993 = !DILocation(line: 595, column: 2, scope: !2971)
!2994 = !DILocation(line: 596, column: 2, scope: !2902)
!2995 = !DILocation(line: 597, column: 9, scope: !2902)
!2996 = !DILocation(line: 598, column: 1, scope: !2902)
!2997 = !DILocation(line: 597, column: 2, scope: !2902)
!2998 = distinct !DISubprogram(name: "dma_resv_iter_begin", scope: !45, file: !45, line: 230, type: !2999, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3002)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !3001, !2905, !44}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!3002 = !{!3003, !3004, !3005}
!3003 = !DILocalVariable(name: "cursor", arg: 1, scope: !2998, file: !45, line: 230, type: !3001)
!3004 = !DILocalVariable(name: "obj", arg: 2, scope: !2998, file: !45, line: 231, type: !2905)
!3005 = !DILocalVariable(name: "usage", arg: 3, scope: !2998, file: !45, line: 232, type: !44)
!3006 = !DILocation(line: 230, column: 62, scope: !2998)
!3007 = !DILocation(line: 231, column: 29, scope: !2998)
!3008 = !DILocation(line: 232, column: 32, scope: !2998)
!3009 = !DILocation(line: 234, column: 16, scope: !2998)
!3010 = !DILocation(line: 234, column: 2, scope: !2998)
!3011 = !DILocation(line: 234, column: 10, scope: !2998)
!3012 = !DILocation(line: 234, column: 14, scope: !2998)
!3013 = !DILocation(line: 235, column: 18, scope: !2998)
!3014 = !DILocation(line: 235, column: 2, scope: !2998)
!3015 = !DILocation(line: 235, column: 10, scope: !2998)
!3016 = !DILocation(line: 235, column: 16, scope: !2998)
!3017 = !DILocation(line: 236, column: 2, scope: !2998)
!3018 = !DILocation(line: 236, column: 10, scope: !2998)
!3019 = !DILocation(line: 236, column: 16, scope: !2998)
!3020 = !DILocation(line: 237, column: 1, scope: !2998)
!3021 = distinct !DISubprogram(name: "dma_resv_usage_rw", scope: !45, file: !45, line: 126, type: !3022, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!44, !157}
!3024 = !{!3025}
!3025 = !DILocalVariable(name: "write", arg: 1, scope: !3021, file: !45, line: 126, type: !157)
!3026 = !DILocation(line: 126, column: 58, scope: !3021)
!3027 = !DILocation(line: 135, column: 9, scope: !3021)
!3028 = !DILocation(line: 135, column: 2, scope: !3021)
!3029 = !DISubprogram(name: "dma_resv_iter_first_unlocked", scope: !45, file: !45, line: 219, type: !3030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!103, !3001}
!3032 = !DISubprogram(name: "dma_resv_iter_next_unlocked", scope: !45, file: !45, line: 220, type: !3030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3033 = distinct !DISubprogram(name: "dma_resv_iter_end", scope: !45, file: !45, line: 246, type: !3034, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !3001}
!3036 = !{!3037}
!3037 = !DILocalVariable(name: "cursor", arg: 1, scope: !3033, file: !45, line: 246, type: !3001)
!3038 = !DILocation(line: 246, column: 60, scope: !3033)
!3039 = !DILocation(line: 248, column: 16, scope: !3033)
!3040 = !DILocation(line: 248, column: 24, scope: !3033)
!3041 = !DILocation(line: 248, column: 2, scope: !3033)
!3042 = !DILocation(line: 249, column: 1, scope: !3033)
!3043 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !2141, file: !2141, line: 1372, type: !3044, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!157, !2157}
!3046 = !{!3047}
!3047 = !DILocalVariable(name: "v", arg: 1, scope: !3043, file: !2141, line: 1372, type: !2157)
!3048 = !DILocation(line: 1372, column: 31, scope: !3043)
!3049 = !DILocation(line: 1374, column: 2, scope: !3043)
!3050 = !DILocation(line: 1374, column: 2, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3043, file: !2141, line: 1374, column: 2)
!3052 = !DILocation(line: 1375, column: 31, scope: !3043)
!3053 = !DILocation(line: 1375, column: 2, scope: !3043)
!3054 = !DILocation(line: 1376, column: 33, scope: !3043)
!3055 = !DILocation(line: 1376, column: 9, scope: !3043)
!3056 = !DILocation(line: 1376, column: 2, scope: !3043)
!3057 = distinct !DISubprogram(name: "debug_fence_set_state", scope: !2, file: !2, line: 105, type: !3058, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !228, !132, !132}
!3060 = !{!3061, !3062, !3063}
!3061 = !DILocalVariable(name: "fence", arg: 1, scope: !3057, file: !2, line: 105, type: !228)
!3062 = !DILocalVariable(name: "old", arg: 2, scope: !3057, file: !2, line: 106, type: !132)
!3063 = !DILocalVariable(name: "new", arg: 3, scope: !3057, file: !2, line: 106, type: !132)
!3064 = !DILocation(line: 105, column: 64, scope: !3057)
!3065 = !DILocation(line: 106, column: 11, scope: !3057)
!3066 = !DILocation(line: 106, column: 20, scope: !3057)
!3067 = !DILocation(line: 108, column: 1, scope: !3057)
!3068 = distinct !DISubprogram(name: "__i915_sw_fence_notify", scope: !2, file: !2, line: 128, type: !241, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3069)
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "fence", arg: 1, scope: !3068, file: !2, line: 128, type: !228)
!3071 = !DILocalVariable(name: "state", arg: 2, scope: !3068, file: !2, line: 129, type: !15)
!3072 = !DILocation(line: 128, column: 57, scope: !3068)
!3073 = !DILocation(line: 129, column: 33, scope: !3068)
!3074 = !DILocation(line: 131, column: 9, scope: !3068)
!3075 = !DILocation(line: 131, column: 16, scope: !3068)
!3076 = !DILocation(line: 131, column: 19, scope: !3068)
!3077 = !DILocation(line: 131, column: 26, scope: !3068)
!3078 = !DILocation(line: 131, column: 2, scope: !3068)
!3079 = distinct !DISubprogram(name: "__i915_sw_fence_wake_up_all", scope: !2, file: !2, line: 141, type: !2074, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3080)
!3080 = !{!3081, !3082, !3083, !3085, !3086, !3087, !3088, !3092, !3093, !3098, !3100, !3103, !3105, !3109, !3111, !3114}
!3081 = !DILocalVariable(name: "fence", arg: 1, scope: !3079, file: !2, line: 141, type: !228)
!3082 = !DILocalVariable(name: "continuation", arg: 2, scope: !3079, file: !2, line: 142, type: !96)
!3083 = !DILocalVariable(name: "x", scope: !3079, file: !2, line: 144, type: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!3085 = !DILocalVariable(name: "pos", scope: !3079, file: !2, line: 145, type: !1976)
!3086 = !DILocalVariable(name: "next", scope: !3079, file: !2, line: 145, type: !1976)
!3087 = !DILocalVariable(name: "flags", scope: !3079, file: !2, line: 146, type: !215)
!3088 = !DILocalVariable(name: "__dummy", scope: !3089, file: !2, line: 158, type: !215)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !2, line: 158, column: 2)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !2, line: 158, column: 2)
!3091 = distinct !DILexicalBlock(scope: !3079, file: !2, line: 158, column: 2)
!3092 = !DILocalVariable(name: "__dummy2", scope: !3089, file: !2, line: 158, type: !215)
!3093 = !DILocalVariable(name: "__mptr", scope: !3094, file: !2, line: 160, type: !81)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 160, column: 3)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 160, column: 3)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !2, line: 159, column: 20)
!3097 = distinct !DILexicalBlock(scope: !3079, file: !2, line: 159, column: 6)
!3098 = !DILocalVariable(name: "__mptr", scope: !3099, file: !2, line: 160, type: !81)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 160, column: 3)
!3100 = !DILocalVariable(name: "__mptr", scope: !3101, file: !2, line: 160, type: !81)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !2, line: 160, column: 3)
!3102 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 160, column: 3)
!3103 = !DILocalVariable(name: "extra", scope: !3104, file: !2, line: 167, type: !92)
!3104 = distinct !DILexicalBlock(scope: !3097, file: !2, line: 166, column: 9)
!3105 = !DILocalVariable(name: "__mptr", scope: !3106, file: !2, line: 170, type: !81)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 170, column: 4)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !2, line: 170, column: 4)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !2, line: 169, column: 6)
!3109 = !DILocalVariable(name: "__mptr", scope: !3110, file: !2, line: 170, type: !81)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 170, column: 4)
!3111 = !DILocalVariable(name: "wake_flags", scope: !3112, file: !2, line: 171, type: !132)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 170, column: 57)
!3113 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 170, column: 4)
!3114 = !DILocalVariable(name: "__mptr", scope: !3115, file: !2, line: 170, type: !81)
!3115 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 170, column: 4)
!3116 = !DILocation(line: 141, column: 63, scope: !3079)
!3117 = !DILocation(line: 142, column: 24, scope: !3079)
!3118 = !DILocation(line: 144, column: 2, scope: !3079)
!3119 = !DILocation(line: 144, column: 21, scope: !3079)
!3120 = !DILocation(line: 144, column: 26, scope: !3079)
!3121 = !DILocation(line: 144, column: 33, scope: !3079)
!3122 = !DILocation(line: 145, column: 2, scope: !3079)
!3123 = !DILocation(line: 145, column: 22, scope: !3079)
!3124 = !DILocation(line: 145, column: 28, scope: !3079)
!3125 = !DILocation(line: 146, column: 2, scope: !3079)
!3126 = !DILocation(line: 146, column: 16, scope: !3079)
!3127 = !DILocation(line: 148, column: 25, scope: !3079)
!3128 = !DILocation(line: 148, column: 2, scope: !3079)
!3129 = !DILocation(line: 149, column: 22, scope: !3079)
!3130 = !DILocation(line: 149, column: 29, scope: !3079)
!3131 = !DILocation(line: 149, column: 2, scope: !3079)
!3132 = !DILocation(line: 158, column: 2, scope: !3079)
!3133 = !DILocation(line: 158, column: 2, scope: !3091)
!3134 = !DILocation(line: 158, column: 2, scope: !3089)
!3135 = !DILocation(line: 158, column: 2, scope: !3090)
!3136 = !DILocation(line: 159, column: 6, scope: !3097)
!3137 = !DILocation(line: 159, column: 6, scope: !3079)
!3138 = !DILocation(line: 160, column: 3, scope: !3094)
!3139 = !DILocation(line: 160, column: 3, scope: !3095)
!3140 = !DILocation(line: 160, column: 3, scope: !3099)
!3141 = !DILocation(line: 160, column: 3, scope: !3102)
!3142 = !DILocation(line: 161, column: 8, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 161, column: 8)
!3144 = distinct !DILexicalBlock(scope: !3102, file: !2, line: 160, column: 56)
!3145 = !DILocation(line: 161, column: 13, scope: !3143)
!3146 = !DILocation(line: 161, column: 19, scope: !3143)
!3147 = !DILocation(line: 161, column: 8, scope: !3144)
!3148 = !DILocation(line: 162, column: 21, scope: !3143)
!3149 = !DILocation(line: 162, column: 26, scope: !3143)
!3150 = !DILocation(line: 162, column: 33, scope: !3143)
!3151 = !DILocation(line: 162, column: 5, scope: !3143)
!3152 = !DILocation(line: 164, column: 5, scope: !3143)
!3153 = !DILocation(line: 164, column: 10, scope: !3143)
!3154 = !DILocation(line: 164, column: 15, scope: !3143)
!3155 = !DILocation(line: 164, column: 36, scope: !3143)
!3156 = !DILocation(line: 165, column: 3, scope: !3144)
!3157 = !DILocation(line: 160, column: 3, scope: !3101)
!3158 = distinct !{!3158, !3139, !3159, !2136, !2137}
!3159 = !DILocation(line: 165, column: 3, scope: !3095)
!3160 = !DILocation(line: 166, column: 2, scope: !3096)
!3161 = !DILocation(line: 167, column: 3, scope: !3104)
!3162 = !DILocation(line: 169, column: 3, scope: !3104)
!3163 = !DILocation(line: 170, column: 4, scope: !3106)
!3164 = !DILocation(line: 170, column: 4, scope: !3107)
!3165 = !DILocation(line: 170, column: 4, scope: !3110)
!3166 = !DILocation(line: 170, column: 4, scope: !3113)
!3167 = !DILocation(line: 171, column: 5, scope: !3112)
!3168 = !DILocation(line: 171, column: 9, scope: !3112)
!3169 = !DILocation(line: 173, column: 16, scope: !3112)
!3170 = !DILocation(line: 174, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 174, column: 9)
!3172 = !DILocation(line: 174, column: 14, scope: !3171)
!3173 = !DILocation(line: 174, column: 20, scope: !3171)
!3174 = !DILocation(line: 174, column: 9, scope: !3112)
!3175 = !DILocation(line: 175, column: 19, scope: !3171)
!3176 = !DILocation(line: 175, column: 26, scope: !3171)
!3177 = !DILocation(line: 175, column: 17, scope: !3171)
!3178 = !DILocation(line: 175, column: 6, scope: !3171)
!3179 = !DILocation(line: 177, column: 5, scope: !3112)
!3180 = !DILocation(line: 177, column: 10, scope: !3112)
!3181 = !DILocation(line: 177, column: 15, scope: !3112)
!3182 = !DILocation(line: 177, column: 33, scope: !3112)
!3183 = !DILocation(line: 178, column: 4, scope: !3113)
!3184 = !DILocation(line: 178, column: 4, scope: !3112)
!3185 = !DILocation(line: 170, column: 4, scope: !3115)
!3186 = distinct !{!3186, !3164, !3187, !2136, !2137}
!3187 = !DILocation(line: 178, column: 4, scope: !3107)
!3188 = !DILocation(line: 180, column: 8, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3108, file: !2, line: 180, column: 8)
!3190 = !DILocation(line: 180, column: 8, scope: !3108)
!3191 = !DILocation(line: 181, column: 5, scope: !3189)
!3192 = !DILocation(line: 183, column: 35, scope: !3108)
!3193 = !DILocation(line: 183, column: 38, scope: !3108)
!3194 = !DILocation(line: 183, column: 4, scope: !3108)
!3195 = !DILocation(line: 184, column: 3, scope: !3108)
!3196 = distinct !{!3196, !3162, !3197, !2137}
!3197 = !DILocation(line: 184, column: 13, scope: !3104)
!3198 = !DILocation(line: 185, column: 2, scope: !3097)
!3199 = !DILocation(line: 186, column: 26, scope: !3079)
!3200 = !DILocation(line: 186, column: 29, scope: !3079)
!3201 = !DILocation(line: 186, column: 35, scope: !3079)
!3202 = !DILocation(line: 186, column: 2, scope: !3079)
!3203 = !DILocation(line: 188, column: 21, scope: !3079)
!3204 = !DILocation(line: 188, column: 2, scope: !3079)
!3205 = !DILocation(line: 189, column: 1, scope: !3079)
!3206 = distinct !DISubprogram(name: "debug_fence_destroy", scope: !2, file: !2, line: 114, type: !2026, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "fence", arg: 1, scope: !3206, file: !2, line: 114, type: !228)
!3209 = !DILocation(line: 114, column: 62, scope: !3206)
!3210 = !DILocation(line: 116, column: 1, scope: !3206)
!3211 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3212, file: !3212, line: 94, type: !3213, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3218)
!3212 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !3215, !1355}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3218 = !{!3219, !3220}
!3219 = !DILocalVariable(name: "v", arg: 1, scope: !3211, file: !3212, line: 94, type: !3215)
!3220 = !DILocalVariable(name: "size", arg: 2, scope: !3211, file: !3212, line: 94, type: !1355)
!3221 = !DILocation(line: 94, column: 79, scope: !3211)
!3222 = !DILocation(line: 94, column: 89, scope: !3211)
!3223 = !DILocation(line: 96, column: 20, scope: !3211)
!3224 = !DILocation(line: 96, column: 23, scope: !3211)
!3225 = !DILocation(line: 96, column: 2, scope: !3211)
!3226 = !DILocation(line: 97, column: 2, scope: !3211)
!3227 = !DILocation(line: 98, column: 1, scope: !3211)
!3228 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !3229, file: !3229, line: 2254, type: !3044, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3230)
!3229 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "v", arg: 1, scope: !3228, file: !3229, line: 2254, type: !2157)
!3232 = !DILocation(line: 2254, column: 35, scope: !3228)
!3233 = !DILocation(line: 2257, column: 34, scope: !3228)
!3234 = !DILocation(line: 2257, column: 9, scope: !3228)
!3235 = !DILocation(line: 2257, column: 2, scope: !3228)
!3236 = distinct !DISubprogram(name: "kasan_check_write", scope: !3237, file: !3237, line: 44, type: !3238, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3240)
!3237 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!157, !3215, !17}
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "p", arg: 1, scope: !3236, file: !3237, line: 44, type: !3215)
!3242 = !DILocalVariable(name: "size", arg: 2, scope: !3236, file: !3237, line: 44, type: !17)
!3243 = !DILocation(line: 44, column: 59, scope: !3236)
!3244 = !DILocation(line: 44, column: 75, scope: !3236)
!3245 = !DILocation(line: 46, column: 2, scope: !3236)
!3246 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3247, file: !3247, line: 229, type: !3248, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3250)
!3247 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !3215, !1355, !132}
!3250 = !{!3251, !3252, !3253}
!3251 = !DILocalVariable(name: "ptr", arg: 1, scope: !3246, file: !3247, line: 229, type: !3215)
!3252 = !DILocalVariable(name: "size", arg: 2, scope: !3246, file: !3247, line: 229, type: !1355)
!3253 = !DILocalVariable(name: "type", arg: 3, scope: !3246, file: !3247, line: 230, type: !132)
!3254 = !DILocation(line: 229, column: 60, scope: !3246)
!3255 = !DILocation(line: 229, column: 72, scope: !3246)
!3256 = !DILocation(line: 230, column: 15, scope: !3246)
!3257 = !DILocation(line: 230, column: 23, scope: !3246)
!3258 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !3259, file: !3259, line: 65, type: !3044, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3260)
!3259 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3260 = !{!3261, !3262}
!3261 = !DILocalVariable(name: "v", arg: 1, scope: !3258, file: !3259, line: 65, type: !2157)
!3262 = !DILocalVariable(name: "c", scope: !3263, file: !3259, line: 67, type: !157)
!3263 = distinct !DILexicalBlock(scope: !3258, file: !3259, line: 67, column: 9)
!3264 = !DILocation(line: 65, column: 64, scope: !3258)
!3265 = !DILocation(line: 67, column: 9, scope: !3263)
!3266 = !{i64 2148934121, i64 2148934160, i64 2148934181, i64 2148934218, i64 2148934241, i64 2148934250, i64 2148934324}
!3267 = !DILocation(line: 67, column: 9, scope: !3258)
!3268 = !DILocation(line: 67, column: 2, scope: !3258)
!3269 = distinct !DISubprogram(name: "debug_fence_deactivate", scope: !2, file: !2, line: 110, type: !2026, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3270)
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "fence", arg: 1, scope: !3269, file: !2, line: 110, type: !228)
!3272 = !DILocation(line: 110, column: 65, scope: !3269)
!3273 = !DILocation(line: 112, column: 1, scope: !3269)
!3274 = distinct !DISubprogram(name: "atomic_set_release", scope: !2141, file: !2141, line: 83, type: !2227, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3275)
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "v", arg: 1, scope: !3274, file: !2141, line: 83, type: !2157)
!3277 = !DILocalVariable(name: "i", arg: 2, scope: !3274, file: !2141, line: 83, type: !132)
!3278 = !DILocation(line: 83, column: 30, scope: !3274)
!3279 = !DILocation(line: 83, column: 37, scope: !3274)
!3280 = !DILocation(line: 85, column: 2, scope: !3274)
!3281 = !DILocation(line: 85, column: 2, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3274, file: !2141, line: 85, column: 2)
!3283 = !DILocation(line: 86, column: 26, scope: !3274)
!3284 = !DILocation(line: 86, column: 2, scope: !3274)
!3285 = !DILocation(line: 87, column: 25, scope: !3274)
!3286 = !DILocation(line: 87, column: 28, scope: !3274)
!3287 = !DILocation(line: 87, column: 2, scope: !3274)
!3288 = !DILocation(line: 88, column: 1, scope: !3274)
!3289 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !3290, file: !3290, line: 32, type: !3291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3290 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!215, !3293}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!3294 = distinct !DISubprogram(name: "spinlock_check", scope: !3295, file: !3295, line: 324, type: !3296, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3298)
!3295 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!3293, !107}
!3298 = !{!3299}
!3299 = !DILocalVariable(name: "lock", arg: 1, scope: !3294, file: !3295, line: 324, type: !107)
!3300 = !DILocation(line: 324, column: 67, scope: !3294)
!3301 = !DILocation(line: 326, column: 10, scope: !3294)
!3302 = !DILocation(line: 326, column: 16, scope: !3294)
!3303 = !DILocation(line: 326, column: 2, scope: !3294)
!3304 = distinct !DISubprogram(name: "list_move_tail", scope: !3305, file: !3305, line: 307, type: !3306, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3308)
!3305 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !96, !96}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "list", arg: 1, scope: !3304, file: !3305, line: 307, type: !96)
!3310 = !DILocalVariable(name: "head", arg: 2, scope: !3304, file: !3305, line: 308, type: !96)
!3311 = !DILocation(line: 307, column: 53, scope: !3304)
!3312 = !DILocation(line: 308, column: 25, scope: !3304)
!3313 = !DILocation(line: 310, column: 19, scope: !3304)
!3314 = !DILocation(line: 310, column: 2, scope: !3304)
!3315 = !DILocation(line: 311, column: 16, scope: !3304)
!3316 = !DILocation(line: 311, column: 22, scope: !3304)
!3317 = !DILocation(line: 311, column: 2, scope: !3304)
!3318 = !DILocation(line: 312, column: 1, scope: !3304)
!3319 = distinct !DISubprogram(name: "list_empty", scope: !3305, file: !3305, line: 371, type: !3320, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3324)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!132, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3324 = !{!3325}
!3325 = !DILocalVariable(name: "head", arg: 1, scope: !3319, file: !3305, line: 371, type: !3322)
!3326 = !DILocation(line: 371, column: 54, scope: !3319)
!3327 = !DILocation(line: 373, column: 9, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3319, file: !3305, line: 373, column: 9)
!3329 = !DILocation(line: 373, column: 9, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3328, file: !3305, line: 373, column: 9)
!3331 = !DILocation(line: 373, column: 34, scope: !3319)
!3332 = !DILocation(line: 373, column: 31, scope: !3319)
!3333 = !DILocation(line: 373, column: 2, scope: !3319)
!3334 = distinct !DISubprogram(name: "list_splice_tail_init", scope: !3305, file: !3305, line: 585, type: !3306, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3335)
!3335 = !{!3336, !3337}
!3336 = !DILocalVariable(name: "list", arg: 1, scope: !3334, file: !3305, line: 585, type: !96)
!3337 = !DILocalVariable(name: "head", arg: 2, scope: !3334, file: !3305, line: 586, type: !96)
!3338 = !DILocation(line: 585, column: 60, scope: !3334)
!3339 = !DILocation(line: 586, column: 25, scope: !3334)
!3340 = !DILocation(line: 588, column: 18, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3334, file: !3305, line: 588, column: 6)
!3342 = !DILocation(line: 588, column: 7, scope: !3341)
!3343 = !DILocation(line: 588, column: 6, scope: !3334)
!3344 = !DILocation(line: 589, column: 17, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !3305, line: 588, column: 25)
!3346 = !DILocation(line: 589, column: 23, scope: !3345)
!3347 = !DILocation(line: 589, column: 29, scope: !3345)
!3348 = !DILocation(line: 589, column: 35, scope: !3345)
!3349 = !DILocation(line: 589, column: 3, scope: !3345)
!3350 = !DILocation(line: 590, column: 18, scope: !3345)
!3351 = !DILocation(line: 590, column: 3, scope: !3345)
!3352 = !DILocation(line: 591, column: 2, scope: !3345)
!3353 = !DILocation(line: 592, column: 1, scope: !3334)
!3354 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3295, file: !3295, line: 404, type: !3355, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !107, !215}
!3357 = !{!3358, !3359, !3360, !3363}
!3358 = !DILocalVariable(name: "lock", arg: 1, scope: !3354, file: !3295, line: 404, type: !107)
!3359 = !DILocalVariable(name: "flags", arg: 2, scope: !3354, file: !3295, line: 404, type: !215)
!3360 = !DILocalVariable(name: "__dummy", scope: !3361, file: !3295, line: 406, type: !215)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3295, line: 406, column: 2)
!3362 = distinct !DILexicalBlock(scope: !3354, file: !3295, line: 406, column: 2)
!3363 = !DILocalVariable(name: "__dummy2", scope: !3361, file: !3295, line: 406, type: !215)
!3364 = !DILocation(line: 404, column: 64, scope: !3354)
!3365 = !DILocation(line: 404, column: 84, scope: !3354)
!3366 = !DILocation(line: 406, column: 2, scope: !3354)
!3367 = !DILocation(line: 406, column: 2, scope: !3361)
!3368 = !DILocation(line: 406, column: 2, scope: !3362)
!3369 = !DILocation(line: 407, column: 1, scope: !3354)
!3370 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3212, file: !3212, line: 80, type: !3213, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3371)
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "v", arg: 1, scope: !3370, file: !3212, line: 80, type: !3215)
!3373 = !DILocalVariable(name: "size", arg: 2, scope: !3370, file: !3212, line: 80, type: !1355)
!3374 = !DILocation(line: 80, column: 74, scope: !3370)
!3375 = !DILocation(line: 80, column: 84, scope: !3370)
!3376 = !DILocation(line: 82, column: 20, scope: !3370)
!3377 = !DILocation(line: 82, column: 23, scope: !3370)
!3378 = !DILocation(line: 82, column: 2, scope: !3370)
!3379 = !DILocation(line: 83, column: 2, scope: !3370)
!3380 = !DILocation(line: 84, column: 1, scope: !3370)
!3381 = distinct !DISubprogram(name: "raw_atomic_set_release", scope: !3229, file: !3229, line: 505, type: !2227, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3382)
!3382 = !{!3383, !3384}
!3383 = !DILocalVariable(name: "v", arg: 1, scope: !3381, file: !3229, line: 505, type: !2157)
!3384 = !DILocalVariable(name: "i", arg: 2, scope: !3381, file: !3229, line: 505, type: !132)
!3385 = !DILocation(line: 505, column: 34, scope: !3381)
!3386 = !DILocation(line: 505, column: 41, scope: !3381)
!3387 = !DILocation(line: 511, column: 3, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3229, line: 510, column: 31)
!3389 = distinct !DILexicalBlock(scope: !3381, file: !3229, line: 510, column: 6)
!3390 = !DILocation(line: 511, column: 3, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !3229, line: 511, column: 3)
!3392 = !DILocation(line: 511, column: 3, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3391, file: !3229, line: 511, column: 3)
!3394 = !DILocation(line: 511, column: 3, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3391, file: !3229, line: 511, column: 3)
!3396 = !DILocation(line: 511, column: 3, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3395, file: !3229, line: 511, column: 3)
!3398 = !{i64 2149120262}
!3399 = !DILocation(line: 511, column: 3, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !3229, line: 511, column: 3)
!3401 = !DILocation(line: 511, column: 3, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3400, file: !3229, line: 511, column: 3)
!3403 = !DILocation(line: 511, column: 3, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !3229, line: 511, column: 3)
!3405 = !DILocation(line: 517, column: 1, scope: !3381)
!3406 = distinct !DISubprogram(name: "__list_del_entry", scope: !3305, file: !3305, line: 213, type: !3407, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !96}
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "entry", arg: 1, scope: !3406, file: !3305, line: 213, type: !96)
!3411 = !DILocation(line: 213, column: 55, scope: !3406)
!3412 = !DILocation(line: 215, column: 30, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3406, file: !3305, line: 215, column: 6)
!3414 = !DILocation(line: 215, column: 7, scope: !3413)
!3415 = !DILocation(line: 215, column: 6, scope: !3406)
!3416 = !DILocation(line: 216, column: 3, scope: !3413)
!3417 = !DILocation(line: 218, column: 13, scope: !3406)
!3418 = !DILocation(line: 218, column: 20, scope: !3406)
!3419 = !DILocation(line: 218, column: 26, scope: !3406)
!3420 = !DILocation(line: 218, column: 33, scope: !3406)
!3421 = !DILocation(line: 218, column: 2, scope: !3406)
!3422 = !DILocation(line: 219, column: 1, scope: !3406)
!3423 = distinct !DISubprogram(name: "list_add_tail", scope: !3305, file: !3305, line: 181, type: !3306, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3424)
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "new", arg: 1, scope: !3423, file: !3305, line: 181, type: !96)
!3426 = !DILocalVariable(name: "head", arg: 2, scope: !3423, file: !3305, line: 181, type: !96)
!3427 = !DILocation(line: 181, column: 52, scope: !3423)
!3428 = !DILocation(line: 181, column: 75, scope: !3423)
!3429 = !DILocation(line: 183, column: 13, scope: !3423)
!3430 = !DILocation(line: 183, column: 18, scope: !3423)
!3431 = !DILocation(line: 183, column: 24, scope: !3423)
!3432 = !DILocation(line: 183, column: 30, scope: !3423)
!3433 = !DILocation(line: 183, column: 2, scope: !3423)
!3434 = !DILocation(line: 184, column: 1, scope: !3423)
!3435 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3305, file: !3305, line: 134, type: !3436, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!157, !96}
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "entry", arg: 1, scope: !3435, file: !3305, line: 134, type: !96)
!3440 = !DILocation(line: 134, column: 61, scope: !3435)
!3441 = !DILocation(line: 136, column: 2, scope: !3435)
!3442 = distinct !DISubprogram(name: "__list_del", scope: !3305, file: !3305, line: 193, type: !3306, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3443)
!3443 = !{!3444, !3445}
!3444 = !DILocalVariable(name: "prev", arg: 1, scope: !3442, file: !3305, line: 193, type: !96)
!3445 = !DILocalVariable(name: "next", arg: 2, scope: !3442, file: !3305, line: 193, type: !96)
!3446 = !DILocation(line: 193, column: 50, scope: !3442)
!3447 = !DILocation(line: 193, column: 75, scope: !3442)
!3448 = !DILocation(line: 195, column: 15, scope: !3442)
!3449 = !DILocation(line: 195, column: 2, scope: !3442)
!3450 = !DILocation(line: 195, column: 8, scope: !3442)
!3451 = !DILocation(line: 195, column: 13, scope: !3442)
!3452 = !DILocation(line: 196, column: 2, scope: !3442)
!3453 = !DILocation(line: 196, column: 2, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3442, file: !3305, line: 196, column: 2)
!3455 = !DILocation(line: 196, column: 2, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3454, file: !3305, line: 196, column: 2)
!3457 = !DILocation(line: 196, column: 2, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3454, file: !3305, line: 196, column: 2)
!3459 = !DILocation(line: 197, column: 1, scope: !3442)
!3460 = distinct !DISubprogram(name: "__list_add", scope: !3305, file: !3305, line: 146, type: !3461, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !96, !96, !96}
!3463 = !{!3464, !3465, !3466}
!3464 = !DILocalVariable(name: "new", arg: 1, scope: !3460, file: !3305, line: 146, type: !96)
!3465 = !DILocalVariable(name: "prev", arg: 2, scope: !3460, file: !3305, line: 147, type: !96)
!3466 = !DILocalVariable(name: "next", arg: 3, scope: !3460, file: !3305, line: 148, type: !96)
!3467 = !DILocation(line: 146, column: 49, scope: !3460)
!3468 = !DILocation(line: 147, column: 28, scope: !3460)
!3469 = !DILocation(line: 148, column: 28, scope: !3460)
!3470 = !DILocation(line: 150, column: 24, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3460, file: !3305, line: 150, column: 6)
!3472 = !DILocation(line: 150, column: 29, scope: !3471)
!3473 = !DILocation(line: 150, column: 35, scope: !3471)
!3474 = !DILocation(line: 150, column: 7, scope: !3471)
!3475 = !DILocation(line: 150, column: 6, scope: !3460)
!3476 = !DILocation(line: 151, column: 3, scope: !3471)
!3477 = !DILocation(line: 153, column: 15, scope: !3460)
!3478 = !DILocation(line: 153, column: 2, scope: !3460)
!3479 = !DILocation(line: 153, column: 8, scope: !3460)
!3480 = !DILocation(line: 153, column: 13, scope: !3460)
!3481 = !DILocation(line: 154, column: 14, scope: !3460)
!3482 = !DILocation(line: 154, column: 2, scope: !3460)
!3483 = !DILocation(line: 154, column: 7, scope: !3460)
!3484 = !DILocation(line: 154, column: 12, scope: !3460)
!3485 = !DILocation(line: 155, column: 14, scope: !3460)
!3486 = !DILocation(line: 155, column: 2, scope: !3460)
!3487 = !DILocation(line: 155, column: 7, scope: !3460)
!3488 = !DILocation(line: 155, column: 12, scope: !3460)
!3489 = !DILocation(line: 156, column: 2, scope: !3460)
!3490 = !DILocation(line: 156, column: 2, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3460, file: !3305, line: 156, column: 2)
!3492 = !DILocation(line: 156, column: 2, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3491, file: !3305, line: 156, column: 2)
!3494 = !DILocation(line: 156, column: 2, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !3305, line: 156, column: 2)
!3496 = !DILocation(line: 157, column: 1, scope: !3460)
!3497 = distinct !DISubprogram(name: "__list_add_valid", scope: !3305, file: !3305, line: 128, type: !3498, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!157, !96, !96, !96}
!3500 = !{!3501, !3502, !3503}
!3501 = !DILocalVariable(name: "new", arg: 1, scope: !3497, file: !3305, line: 128, type: !96)
!3502 = !DILocalVariable(name: "prev", arg: 2, scope: !3497, file: !3305, line: 129, type: !96)
!3503 = !DILocalVariable(name: "next", arg: 3, scope: !3497, file: !3305, line: 130, type: !96)
!3504 = !DILocation(line: 128, column: 55, scope: !3497)
!3505 = !DILocation(line: 129, column: 23, scope: !3497)
!3506 = !DILocation(line: 130, column: 23, scope: !3497)
!3507 = !DILocation(line: 132, column: 2, scope: !3497)
!3508 = distinct !DISubprogram(name: "__list_splice", scope: !3305, file: !3305, line: 523, type: !3509, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !3322, !96, !96}
!3511 = !{!3512, !3513, !3514, !3515, !3516}
!3512 = !DILocalVariable(name: "list", arg: 1, scope: !3508, file: !3305, line: 523, type: !3322)
!3513 = !DILocalVariable(name: "prev", arg: 2, scope: !3508, file: !3305, line: 524, type: !96)
!3514 = !DILocalVariable(name: "next", arg: 3, scope: !3508, file: !3305, line: 525, type: !96)
!3515 = !DILocalVariable(name: "first", scope: !3508, file: !3305, line: 527, type: !96)
!3516 = !DILocalVariable(name: "last", scope: !3508, file: !3305, line: 528, type: !96)
!3517 = !DILocation(line: 523, column: 58, scope: !3508)
!3518 = !DILocation(line: 524, column: 24, scope: !3508)
!3519 = !DILocation(line: 525, column: 24, scope: !3508)
!3520 = !DILocation(line: 527, column: 2, scope: !3508)
!3521 = !DILocation(line: 527, column: 20, scope: !3508)
!3522 = !DILocation(line: 527, column: 28, scope: !3508)
!3523 = !DILocation(line: 527, column: 34, scope: !3508)
!3524 = !DILocation(line: 528, column: 2, scope: !3508)
!3525 = !DILocation(line: 528, column: 20, scope: !3508)
!3526 = !DILocation(line: 528, column: 27, scope: !3508)
!3527 = !DILocation(line: 528, column: 33, scope: !3508)
!3528 = !DILocation(line: 530, column: 16, scope: !3508)
!3529 = !DILocation(line: 530, column: 2, scope: !3508)
!3530 = !DILocation(line: 530, column: 9, scope: !3508)
!3531 = !DILocation(line: 530, column: 14, scope: !3508)
!3532 = !DILocation(line: 531, column: 15, scope: !3508)
!3533 = !DILocation(line: 531, column: 2, scope: !3508)
!3534 = !DILocation(line: 531, column: 8, scope: !3508)
!3535 = !DILocation(line: 531, column: 13, scope: !3508)
!3536 = !DILocation(line: 533, column: 15, scope: !3508)
!3537 = !DILocation(line: 533, column: 2, scope: !3508)
!3538 = !DILocation(line: 533, column: 8, scope: !3508)
!3539 = !DILocation(line: 533, column: 13, scope: !3508)
!3540 = !DILocation(line: 534, column: 15, scope: !3508)
!3541 = !DILocation(line: 534, column: 2, scope: !3508)
!3542 = !DILocation(line: 534, column: 8, scope: !3508)
!3543 = !DILocation(line: 534, column: 13, scope: !3508)
!3544 = !DILocation(line: 535, column: 1, scope: !3508)
!3545 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3305, file: !3305, line: 35, type: !3407, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3546)
!3546 = !{!3547}
!3547 = !DILocalVariable(name: "list", arg: 1, scope: !3545, file: !3305, line: 35, type: !96)
!3548 = !DILocation(line: 35, column: 53, scope: !3545)
!3549 = !DILocation(line: 37, column: 2, scope: !3545)
!3550 = !DILocation(line: 37, column: 2, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3545, file: !3305, line: 37, column: 2)
!3552 = !DILocation(line: 37, column: 2, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3551, file: !3305, line: 37, column: 2)
!3554 = !DILocation(line: 37, column: 2, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !3305, line: 37, column: 2)
!3556 = !DILocation(line: 38, column: 2, scope: !3545)
!3557 = !DILocation(line: 38, column: 2, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3545, file: !3305, line: 38, column: 2)
!3559 = !DILocation(line: 38, column: 2, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3558, file: !3305, line: 38, column: 2)
!3561 = !DILocation(line: 38, column: 2, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !3305, line: 38, column: 2)
!3563 = !DILocation(line: 39, column: 1, scope: !3545)
!3564 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !3290, file: !3290, line: 43, type: !3565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3293, !215}
!3567 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3212, file: !3212, line: 66, type: !3213, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3568)
!3568 = !{!3569, !3570}
!3569 = !DILocalVariable(name: "v", arg: 1, scope: !3567, file: !3212, line: 66, type: !3215)
!3570 = !DILocalVariable(name: "size", arg: 2, scope: !3567, file: !3212, line: 66, type: !1355)
!3571 = !DILocation(line: 66, column: 73, scope: !3567)
!3572 = !DILocation(line: 66, column: 83, scope: !3567)
!3573 = !DILocation(line: 68, column: 19, scope: !3567)
!3574 = !DILocation(line: 68, column: 22, scope: !3567)
!3575 = !DILocation(line: 68, column: 2, scope: !3567)
!3576 = !DILocation(line: 69, column: 2, scope: !3567)
!3577 = !DILocation(line: 70, column: 1, scope: !3567)
!3578 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3229, file: !3229, line: 442, type: !2142, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3579)
!3579 = !{!3580}
!3580 = !DILocalVariable(name: "v", arg: 1, scope: !3578, file: !3229, line: 442, type: !2144)
!3581 = !DILocation(line: 442, column: 33, scope: !3578)
!3582 = !DILocation(line: 444, column: 26, scope: !3578)
!3583 = !DILocation(line: 444, column: 9, scope: !3578)
!3584 = !DILocation(line: 444, column: 2, scope: !3578)
!3585 = distinct !DISubprogram(name: "kasan_check_read", scope: !3237, file: !3237, line: 40, type: !3238, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3586)
!3586 = !{!3587, !3588}
!3587 = !DILocalVariable(name: "p", arg: 1, scope: !3585, file: !3237, line: 40, type: !3215)
!3588 = !DILocalVariable(name: "size", arg: 2, scope: !3585, file: !3237, line: 40, type: !17)
!3589 = !DILocation(line: 40, column: 58, scope: !3585)
!3590 = !DILocation(line: 40, column: 74, scope: !3585)
!3591 = !DILocation(line: 42, column: 2, scope: !3585)
!3592 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3259, file: !3259, line: 17, type: !2142, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3593)
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "v", arg: 1, scope: !3592, file: !3259, line: 17, type: !2144)
!3595 = !DILocation(line: 17, column: 61, scope: !3592)
!3596 = !DILocation(line: 23, column: 9, scope: !3592)
!3597 = !DILocation(line: 23, column: 2, scope: !3592)
!3598 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !3229, file: !3229, line: 2109, type: !2155, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3599)
!3599 = !{!3600, !3601, !3602}
!3600 = !DILocalVariable(name: "v", arg: 1, scope: !3598, file: !3229, line: 2109, type: !2157)
!3601 = !DILocalVariable(name: "old", arg: 2, scope: !3598, file: !3229, line: 2109, type: !908)
!3602 = !DILocalVariable(name: "new", arg: 3, scope: !3598, file: !3229, line: 2109, type: !132)
!3603 = !DILocation(line: 2109, column: 34, scope: !3598)
!3604 = !DILocation(line: 2109, column: 42, scope: !3598)
!3605 = !DILocation(line: 2109, column: 51, scope: !3598)
!3606 = !DILocation(line: 2112, column: 33, scope: !3598)
!3607 = !DILocation(line: 2112, column: 36, scope: !3598)
!3608 = !DILocation(line: 2112, column: 41, scope: !3598)
!3609 = !DILocation(line: 2112, column: 9, scope: !3598)
!3610 = !DILocation(line: 2112, column: 2, scope: !3598)
!3611 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !3259, file: !3259, line: 113, type: !2155, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3612)
!3612 = !{!3613, !3614, !3615, !3616, !3618, !3619, !3620, !3621}
!3613 = !DILocalVariable(name: "v", arg: 1, scope: !3611, file: !3259, line: 113, type: !2157)
!3614 = !DILocalVariable(name: "old", arg: 2, scope: !3611, file: !3259, line: 113, type: !908)
!3615 = !DILocalVariable(name: "new", arg: 3, scope: !3611, file: !3259, line: 113, type: !132)
!3616 = !DILocalVariable(name: "success", scope: !3617, file: !3259, line: 115, type: !157)
!3617 = distinct !DILexicalBlock(scope: !3611, file: !3259, line: 115, column: 9)
!3618 = !DILocalVariable(name: "_old", scope: !3617, file: !3259, line: 115, type: !908)
!3619 = !DILocalVariable(name: "__old", scope: !3617, file: !3259, line: 115, type: !132)
!3620 = !DILocalVariable(name: "__new", scope: !3617, file: !3259, line: 115, type: !132)
!3621 = !DILocalVariable(name: "__ptr", scope: !3617, file: !3259, line: 115, type: !1997)
!3622 = !DILocation(line: 113, column: 63, scope: !3611)
!3623 = !DILocation(line: 113, column: 71, scope: !3611)
!3624 = !DILocation(line: 113, column: 80, scope: !3611)
!3625 = !DILocation(line: 115, column: 9, scope: !3617)
!3626 = !{i64 2148950389, i64 2148950428, i64 2148950449, i64 2148950486, i64 2148950509, i64 2148950518, i64 2148950816}
!3627 = !DILocation(line: 115, column: 9, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3617, file: !3259, line: 115, column: 9)
!3629 = !DILocation(line: 115, column: 9, scope: !3611)
!3630 = !DILocation(line: 115, column: 2, scope: !3611)
!3631 = distinct !DISubprogram(name: "raw_atomic_set", scope: !3229, file: !3229, line: 488, type: !2227, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3632)
!3632 = !{!3633, !3634}
!3633 = !DILocalVariable(name: "v", arg: 1, scope: !3631, file: !3229, line: 488, type: !2157)
!3634 = !DILocalVariable(name: "i", arg: 2, scope: !3631, file: !3229, line: 488, type: !132)
!3635 = !DILocation(line: 488, column: 26, scope: !3631)
!3636 = !DILocation(line: 488, column: 33, scope: !3631)
!3637 = !DILocation(line: 490, column: 18, scope: !3631)
!3638 = !DILocation(line: 490, column: 21, scope: !3631)
!3639 = !DILocation(line: 490, column: 2, scope: !3631)
!3640 = !DILocation(line: 491, column: 1, scope: !3631)
!3641 = distinct !DISubprogram(name: "arch_atomic_set", scope: !3259, file: !3259, line: 26, type: !2227, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3642)
!3642 = !{!3643, !3644}
!3643 = !DILocalVariable(name: "v", arg: 1, scope: !3641, file: !3259, line: 26, type: !2157)
!3644 = !DILocalVariable(name: "i", arg: 2, scope: !3641, file: !3259, line: 26, type: !132)
!3645 = !DILocation(line: 26, column: 55, scope: !3641)
!3646 = !DILocation(line: 26, column: 62, scope: !3641)
!3647 = !DILocation(line: 28, column: 2, scope: !3641)
!3648 = !DILocation(line: 28, column: 2, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3641, file: !3259, line: 28, column: 2)
!3650 = !DILocation(line: 29, column: 1, scope: !3641)
!3651 = distinct !DISubprogram(name: "i915_sw_fence_check_if_after", scope: !2, file: !2, line: 333, type: !3652, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3655)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!157, !228, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2063)
!3655 = !{!3656, !3657}
!3656 = !DILocalVariable(name: "fence", arg: 1, scope: !3651, file: !2, line: 333, type: !228)
!3657 = !DILocalVariable(name: "signaler", arg: 2, scope: !3651, file: !2, line: 334, type: !3654)
!3658 = !DILocation(line: 333, column: 64, scope: !3651)
!3659 = !DILocation(line: 334, column: 42, scope: !3651)
!3660 = !DILocation(line: 336, column: 2, scope: !3651)
!3661 = distinct !DISubprogram(name: "i915_sw_fence_wait", scope: !16, file: !16, line: 111, type: !2026, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3662)
!3662 = !{!3663, !3664, !3667, !3668, !3672}
!3663 = !DILocalVariable(name: "fence", arg: 1, scope: !3661, file: !16, line: 111, type: !228)
!3664 = !DILocalVariable(name: "__wq_entry", scope: !3665, file: !16, line: 113, type: !1978)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !16, line: 113, column: 2)
!3666 = distinct !DILexicalBlock(scope: !3661, file: !16, line: 113, column: 2)
!3667 = !DILocalVariable(name: "__ret", scope: !3665, file: !16, line: 113, type: !175)
!3668 = !DILocalVariable(name: "__int", scope: !3669, file: !16, line: 113, type: !175)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !16, line: 113, column: 2)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !16, line: 113, column: 2)
!3671 = distinct !DILexicalBlock(scope: !3665, file: !16, line: 113, column: 2)
!3672 = !DILabel(scope: !3665, name: "__out", file: !16, line: 113)
!3673 = !DILocation(line: 111, column: 61, scope: !3661)
!3674 = !DILocation(line: 113, column: 2, scope: !3661)
!3675 = !DILocation(line: 113, column: 2, scope: !3666)
!3676 = !DILocation(line: 113, column: 2, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3666, file: !16, line: 113, column: 2)
!3678 = !DILocation(line: 113, column: 2, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3666, file: !16, line: 113, column: 2)
!3680 = !DILocation(line: 113, column: 2, scope: !3665)
!3681 = !DILocation(line: 113, column: 2, scope: !3669)
!3682 = !DILocation(line: 113, column: 2, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3669, file: !16, line: 113, column: 2)
!3684 = !DILocation(line: 113, column: 2, scope: !3670)
!3685 = distinct !{!3685, !3686, !3686, !2137}
!3686 = !DILocation(line: 113, column: 2, scope: !3671)
!3687 = !DILocation(line: 114, column: 1, scope: !3661)
!3688 = distinct !DISubprogram(name: "i915_sw_fence_wake", scope: !2, file: !2, line: 269, type: !3689, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!132, !1976, !17, !132, !81}
!3691 = !{!3692, !3693, !3694, !3695}
!3692 = !DILocalVariable(name: "wq", arg: 1, scope: !3688, file: !2, line: 269, type: !1976)
!3693 = !DILocalVariable(name: "mode", arg: 2, scope: !3688, file: !2, line: 269, type: !17)
!3694 = !DILocalVariable(name: "flags", arg: 3, scope: !3688, file: !2, line: 269, type: !132)
!3695 = !DILocalVariable(name: "key", arg: 4, scope: !3688, file: !2, line: 269, type: !81)
!3696 = !DILocation(line: 269, column: 51, scope: !3688)
!3697 = !DILocation(line: 269, column: 64, scope: !3688)
!3698 = !DILocation(line: 269, column: 74, scope: !3688)
!3699 = !DILocation(line: 269, column: 87, scope: !3688)
!3700 = !DILocation(line: 271, column: 31, scope: !3688)
!3701 = !DILocation(line: 271, column: 35, scope: !3688)
!3702 = !DILocation(line: 271, column: 44, scope: !3688)
!3703 = !DILocation(line: 271, column: 2, scope: !3688)
!3704 = !DILocation(line: 273, column: 12, scope: !3688)
!3705 = !DILocation(line: 273, column: 16, scope: !3688)
!3706 = !DILocation(line: 273, column: 2, scope: !3688)
!3707 = !DILocation(line: 274, column: 27, scope: !3688)
!3708 = !DILocation(line: 274, column: 31, scope: !3688)
!3709 = !DILocation(line: 274, column: 40, scope: !3688)
!3710 = !DILocation(line: 274, column: 2, scope: !3688)
!3711 = !DILocation(line: 276, column: 6, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 276, column: 6)
!3713 = !DILocation(line: 276, column: 10, scope: !3712)
!3714 = !DILocation(line: 276, column: 16, scope: !3712)
!3715 = !DILocation(line: 276, column: 6, scope: !3688)
!3716 = !DILocation(line: 277, column: 9, scope: !3712)
!3717 = !DILocation(line: 277, column: 3, scope: !3712)
!3718 = !DILocation(line: 278, column: 2, scope: !3688)
!3719 = distinct !DISubprogram(name: "__add_wait_queue_entry_tail", scope: !233, file: !233, line: 194, type: !3720, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !2207, !1987}
!3722 = !{!3723, !3724}
!3723 = !DILocalVariable(name: "wq_head", arg: 1, scope: !3719, file: !233, line: 194, type: !2207)
!3724 = !DILocalVariable(name: "wq_entry", arg: 2, scope: !3719, file: !233, line: 194, type: !1987)
!3725 = !DILocation(line: 194, column: 72, scope: !3719)
!3726 = !DILocation(line: 194, column: 106, scope: !3719)
!3727 = !DILocation(line: 196, column: 17, scope: !3719)
!3728 = !DILocation(line: 196, column: 27, scope: !3719)
!3729 = !DILocation(line: 196, column: 35, scope: !3719)
!3730 = !DILocation(line: 196, column: 44, scope: !3719)
!3731 = !DILocation(line: 196, column: 2, scope: !3719)
!3732 = !DILocation(line: 197, column: 1, scope: !3719)
!3733 = !DISubprogram(name: "init_wait_entry", scope: !233, file: !233, line: 290, type: !3734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{null, !1987, !132}
!3736 = !DISubprogram(name: "prepare_to_wait_event", scope: !233, file: !233, line: 1199, type: !3737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!175, !2207, !1987, !132}
!3739 = !DISubprogram(name: "schedule", scope: !299, file: !299, line: 303, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3740 = !DISubprogram(name: "finish_wait", scope: !233, file: !233, line: 1200, type: !3720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3741 = distinct !DISubprogram(name: "list_del", scope: !3305, file: !3305, line: 227, type: !3407, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3742)
!3742 = !{!3743}
!3743 = !DILocalVariable(name: "entry", arg: 1, scope: !3741, file: !3305, line: 227, type: !96)
!3744 = !DILocation(line: 227, column: 47, scope: !3741)
!3745 = !DILocation(line: 229, column: 19, scope: !3741)
!3746 = !DILocation(line: 229, column: 2, scope: !3741)
!3747 = !DILocation(line: 230, column: 2, scope: !3741)
!3748 = !DILocation(line: 230, column: 9, scope: !3741)
!3749 = !DILocation(line: 230, column: 14, scope: !3741)
!3750 = !DILocation(line: 231, column: 2, scope: !3741)
!3751 = !DILocation(line: 231, column: 9, scope: !3741)
!3752 = !DILocation(line: 231, column: 14, scope: !3741)
!3753 = !DILocation(line: 232, column: 1, scope: !3741)
!3754 = !DISubprogram(name: "kfree", scope: !63, file: !63, line: 227, type: !3755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{null, !3757}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3759 = distinct !DISubprogram(name: "const_test_bit", scope: !3760, file: !3760, line: 166, type: !3761, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3766)
!3760 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!157, !215, !3763}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3765)
!3765 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !215)
!3766 = !{!3767, !3768, !3769, !3770, !3771}
!3767 = !DILocalVariable(name: "nr", arg: 1, scope: !3759, file: !3760, line: 166, type: !215)
!3768 = !DILocalVariable(name: "addr", arg: 2, scope: !3759, file: !3760, line: 166, type: !3763)
!3769 = !DILocalVariable(name: "p", scope: !3759, file: !3760, line: 168, type: !2001)
!3770 = !DILocalVariable(name: "mask", scope: !3759, file: !3760, line: 169, type: !215)
!3771 = !DILocalVariable(name: "val", scope: !3759, file: !3760, line: 170, type: !215)
!3772 = !DILocation(line: 166, column: 30, scope: !3759)
!3773 = !DILocation(line: 166, column: 64, scope: !3759)
!3774 = !DILocation(line: 168, column: 2, scope: !3759)
!3775 = !DILocation(line: 168, column: 23, scope: !3759)
!3776 = !DILocation(line: 168, column: 50, scope: !3759)
!3777 = !DILocation(line: 168, column: 57, scope: !3759)
!3778 = !DILocation(line: 168, column: 55, scope: !3759)
!3779 = !DILocation(line: 169, column: 2, scope: !3759)
!3780 = !DILocation(line: 169, column: 16, scope: !3759)
!3781 = !DILocation(line: 169, column: 23, scope: !3759)
!3782 = !DILocation(line: 170, column: 2, scope: !3759)
!3783 = !DILocation(line: 170, column: 16, scope: !3759)
!3784 = !DILocation(line: 170, column: 23, scope: !3759)
!3785 = !DILocation(line: 170, column: 22, scope: !3759)
!3786 = !DILocation(line: 172, column: 12, scope: !3759)
!3787 = !DILocation(line: 172, column: 18, scope: !3759)
!3788 = !DILocation(line: 172, column: 16, scope: !3759)
!3789 = !DILocation(line: 172, column: 10, scope: !3759)
!3790 = !DILocation(line: 172, column: 9, scope: !3759)
!3791 = !DILocation(line: 173, column: 1, scope: !3759)
!3792 = !DILocation(line: 172, column: 2, scope: !3759)
!3793 = distinct !DISubprogram(name: "_test_bit", scope: !3794, file: !3794, line: 139, type: !3761, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3795)
!3794 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3795 = !{!3796, !3797}
!3796 = !DILocalVariable(name: "nr", arg: 1, scope: !3793, file: !3794, line: 139, type: !215)
!3797 = !DILocalVariable(name: "addr", arg: 2, scope: !3793, file: !3794, line: 139, type: !3763)
!3798 = !DILocation(line: 139, column: 25, scope: !3793)
!3799 = !DILocation(line: 139, column: 59, scope: !3793)
!3800 = !DILocation(line: 141, column: 25, scope: !3793)
!3801 = !DILocation(line: 141, column: 32, scope: !3793)
!3802 = !DILocation(line: 141, column: 30, scope: !3793)
!3803 = !DILocation(line: 141, column: 2, scope: !3793)
!3804 = !DILocation(line: 142, column: 23, scope: !3793)
!3805 = !DILocation(line: 142, column: 27, scope: !3793)
!3806 = !DILocation(line: 142, column: 9, scope: !3793)
!3807 = !DILocation(line: 142, column: 2, scope: !3793)
!3808 = !DISubprogram(name: "dma_fence_signal", scope: !56, file: !56, line: 390, type: !3809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!132, !103}
!3811 = distinct !DISubprogram(name: "arch_test_bit", scope: !3812, file: !3812, line: 237, type: !3761, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3813)
!3812 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "nr", arg: 1, scope: !3811, file: !3812, line: 237, type: !215)
!3815 = !DILocalVariable(name: "addr", arg: 2, scope: !3811, file: !3812, line: 237, type: !3763)
!3816 = !DILocation(line: 237, column: 29, scope: !3811)
!3817 = !DILocation(line: 237, column: 63, scope: !3811)
!3818 = !DILocation(line: 239, column: 30, scope: !3811)
!3819 = !DILocation(line: 239, column: 9, scope: !3811)
!3820 = !DILocation(line: 239, column: 54, scope: !3811)
!3821 = !DILocation(line: 239, column: 58, scope: !3811)
!3822 = !DILocation(line: 239, column: 36, scope: !3811)
!3823 = !DILocation(line: 240, column: 26, scope: !3811)
!3824 = !DILocation(line: 240, column: 30, scope: !3811)
!3825 = !DILocation(line: 240, column: 8, scope: !3811)
!3826 = !DILocation(line: 239, column: 2, scope: !3811)
!3827 = distinct !DISubprogram(name: "constant_test_bit", scope: !3812, file: !3812, line: 204, type: !3828, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3830)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!157, !175, !3763}
!3830 = !{!3831, !3832}
!3831 = !DILocalVariable(name: "nr", arg: 1, scope: !3827, file: !3812, line: 204, type: !175)
!3832 = !DILocalVariable(name: "addr", arg: 2, scope: !3827, file: !3812, line: 204, type: !3763)
!3833 = !DILocation(line: 204, column: 52, scope: !3827)
!3834 = !DILocation(line: 204, column: 86, scope: !3827)
!3835 = !DILocation(line: 206, column: 19, scope: !3827)
!3836 = !DILocation(line: 206, column: 22, scope: !3827)
!3837 = !DILocation(line: 206, column: 15, scope: !3827)
!3838 = !DILocation(line: 207, column: 4, scope: !3827)
!3839 = !DILocation(line: 207, column: 9, scope: !3827)
!3840 = !DILocation(line: 207, column: 12, scope: !3827)
!3841 = !DILocation(line: 206, column: 44, scope: !3827)
!3842 = !DILocation(line: 207, column: 37, scope: !3827)
!3843 = !DILocation(line: 206, column: 2, scope: !3827)
!3844 = distinct !DISubprogram(name: "variable_test_bit", scope: !3812, file: !3812, line: 224, type: !3828, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3845)
!3845 = !{!3846, !3847, !3848}
!3846 = !DILocalVariable(name: "nr", arg: 1, scope: !3844, file: !3812, line: 224, type: !175)
!3847 = !DILocalVariable(name: "addr", arg: 2, scope: !3844, file: !3812, line: 224, type: !3763)
!3848 = !DILocalVariable(name: "oldbit", scope: !3844, file: !3812, line: 226, type: !157)
!3849 = !DILocation(line: 224, column: 52, scope: !3844)
!3850 = !DILocation(line: 224, column: 86, scope: !3844)
!3851 = !DILocation(line: 226, column: 2, scope: !3844)
!3852 = !DILocation(line: 226, column: 7, scope: !3844)
!3853 = !DILocation(line: 231, column: 33, scope: !3844)
!3854 = !DILocation(line: 231, column: 46, scope: !3844)
!3855 = !DILocation(line: 228, column: 2, scope: !3844)
!3856 = !{i64 2148100442, i64 2148100516}
!3857 = !DILocation(line: 233, column: 9, scope: !3844)
!3858 = !DILocation(line: 234, column: 1, scope: !3844)
!3859 = !DILocation(line: 233, column: 2, scope: !3844)
!3860 = !DISubprogram(name: "kmalloc_large", scope: !63, file: !63, line: 531, type: !2599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3861 = distinct !DISubprogram(name: "__kmalloc_index", scope: !63, file: !63, line: 444, type: !3862, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!17, !1355, !157}
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "size", arg: 1, scope: !3861, file: !63, line: 444, type: !1355)
!3866 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3861, file: !63, line: 445, type: !157)
!3867 = !DILocation(line: 444, column: 60, scope: !3861)
!3868 = !DILocation(line: 445, column: 16, scope: !3861)
!3869 = !DILocation(line: 447, column: 7, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 447, column: 6)
!3871 = !DILocation(line: 447, column: 6, scope: !3861)
!3872 = !DILocation(line: 448, column: 3, scope: !3870)
!3873 = !DILocation(line: 450, column: 6, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 450, column: 6)
!3875 = !DILocation(line: 450, column: 11, scope: !3874)
!3876 = !DILocation(line: 450, column: 6, scope: !3861)
!3877 = !DILocation(line: 451, column: 3, scope: !3874)
!3878 = !DILocation(line: 453, column: 32, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 453, column: 6)
!3880 = !DILocation(line: 453, column: 37, scope: !3879)
!3881 = !DILocation(line: 453, column: 42, scope: !3879)
!3882 = !DILocation(line: 453, column: 45, scope: !3879)
!3883 = !DILocation(line: 453, column: 50, scope: !3879)
!3884 = !DILocation(line: 453, column: 6, scope: !3861)
!3885 = !DILocation(line: 454, column: 3, scope: !3879)
!3886 = !DILocation(line: 455, column: 32, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 455, column: 6)
!3888 = !DILocation(line: 455, column: 37, scope: !3887)
!3889 = !DILocation(line: 455, column: 43, scope: !3887)
!3890 = !DILocation(line: 455, column: 46, scope: !3887)
!3891 = !DILocation(line: 455, column: 51, scope: !3887)
!3892 = !DILocation(line: 455, column: 6, scope: !3861)
!3893 = !DILocation(line: 456, column: 3, scope: !3887)
!3894 = !DILocation(line: 457, column: 6, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 457, column: 6)
!3896 = !DILocation(line: 457, column: 11, scope: !3895)
!3897 = !DILocation(line: 457, column: 6, scope: !3861)
!3898 = !DILocation(line: 457, column: 26, scope: !3895)
!3899 = !DILocation(line: 458, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 458, column: 6)
!3901 = !DILocation(line: 458, column: 11, scope: !3900)
!3902 = !DILocation(line: 458, column: 6, scope: !3861)
!3903 = !DILocation(line: 458, column: 26, scope: !3900)
!3904 = !DILocation(line: 459, column: 6, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 459, column: 6)
!3906 = !DILocation(line: 459, column: 11, scope: !3905)
!3907 = !DILocation(line: 459, column: 6, scope: !3861)
!3908 = !DILocation(line: 459, column: 26, scope: !3905)
!3909 = !DILocation(line: 460, column: 6, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 460, column: 6)
!3911 = !DILocation(line: 460, column: 11, scope: !3910)
!3912 = !DILocation(line: 460, column: 6, scope: !3861)
!3913 = !DILocation(line: 460, column: 26, scope: !3910)
!3914 = !DILocation(line: 461, column: 6, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 461, column: 6)
!3916 = !DILocation(line: 461, column: 11, scope: !3915)
!3917 = !DILocation(line: 461, column: 6, scope: !3861)
!3918 = !DILocation(line: 461, column: 26, scope: !3915)
!3919 = !DILocation(line: 462, column: 6, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 462, column: 6)
!3921 = !DILocation(line: 462, column: 11, scope: !3920)
!3922 = !DILocation(line: 462, column: 6, scope: !3861)
!3923 = !DILocation(line: 462, column: 26, scope: !3920)
!3924 = !DILocation(line: 463, column: 6, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 463, column: 6)
!3926 = !DILocation(line: 463, column: 11, scope: !3925)
!3927 = !DILocation(line: 463, column: 6, scope: !3861)
!3928 = !DILocation(line: 463, column: 26, scope: !3925)
!3929 = !DILocation(line: 464, column: 6, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 464, column: 6)
!3931 = !DILocation(line: 464, column: 11, scope: !3930)
!3932 = !DILocation(line: 464, column: 6, scope: !3861)
!3933 = !DILocation(line: 464, column: 26, scope: !3930)
!3934 = !DILocation(line: 465, column: 6, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 465, column: 6)
!3936 = !DILocation(line: 465, column: 11, scope: !3935)
!3937 = !DILocation(line: 465, column: 6, scope: !3861)
!3938 = !DILocation(line: 465, column: 26, scope: !3935)
!3939 = !DILocation(line: 466, column: 6, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 466, column: 6)
!3941 = !DILocation(line: 466, column: 11, scope: !3940)
!3942 = !DILocation(line: 466, column: 6, scope: !3861)
!3943 = !DILocation(line: 466, column: 26, scope: !3940)
!3944 = !DILocation(line: 467, column: 6, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 467, column: 6)
!3946 = !DILocation(line: 467, column: 11, scope: !3945)
!3947 = !DILocation(line: 467, column: 6, scope: !3861)
!3948 = !DILocation(line: 467, column: 26, scope: !3945)
!3949 = !DILocation(line: 468, column: 6, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 468, column: 6)
!3951 = !DILocation(line: 468, column: 11, scope: !3950)
!3952 = !DILocation(line: 468, column: 6, scope: !3861)
!3953 = !DILocation(line: 468, column: 26, scope: !3950)
!3954 = !DILocation(line: 469, column: 6, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 469, column: 6)
!3956 = !DILocation(line: 469, column: 11, scope: !3955)
!3957 = !DILocation(line: 469, column: 6, scope: !3861)
!3958 = !DILocation(line: 469, column: 26, scope: !3955)
!3959 = !DILocation(line: 470, column: 6, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 470, column: 6)
!3961 = !DILocation(line: 470, column: 11, scope: !3960)
!3962 = !DILocation(line: 470, column: 6, scope: !3861)
!3963 = !DILocation(line: 470, column: 26, scope: !3960)
!3964 = !DILocation(line: 471, column: 6, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 471, column: 6)
!3966 = !DILocation(line: 471, column: 11, scope: !3965)
!3967 = !DILocation(line: 471, column: 6, scope: !3861)
!3968 = !DILocation(line: 471, column: 26, scope: !3965)
!3969 = !DILocation(line: 472, column: 6, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 472, column: 6)
!3971 = !DILocation(line: 472, column: 11, scope: !3970)
!3972 = !DILocation(line: 472, column: 6, scope: !3861)
!3973 = !DILocation(line: 472, column: 26, scope: !3970)
!3974 = !DILocation(line: 473, column: 6, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 473, column: 6)
!3976 = !DILocation(line: 473, column: 11, scope: !3975)
!3977 = !DILocation(line: 473, column: 6, scope: !3861)
!3978 = !DILocation(line: 473, column: 26, scope: !3975)
!3979 = !DILocation(line: 474, column: 6, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 474, column: 6)
!3981 = !DILocation(line: 474, column: 11, scope: !3980)
!3982 = !DILocation(line: 474, column: 6, scope: !3861)
!3983 = !DILocation(line: 474, column: 27, scope: !3980)
!3984 = !DILocation(line: 475, column: 6, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 475, column: 6)
!3986 = !DILocation(line: 475, column: 11, scope: !3985)
!3987 = !DILocation(line: 475, column: 6, scope: !3861)
!3988 = !DILocation(line: 475, column: 32, scope: !3985)
!3989 = !DILocation(line: 477, column: 50, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3861, file: !63, line: 477, column: 6)
!3991 = !DILocation(line: 477, column: 6, scope: !3861)
!3992 = !DILocation(line: 478, column: 3, scope: !3990)
!3993 = !DILocation(line: 478, column: 3, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !63, line: 478, column: 3)
!3995 = distinct !DILexicalBlock(scope: !3990, file: !63, line: 478, column: 3)
!3996 = !{i32 -2143549122}
!3997 = !DILocation(line: 478, column: 3, scope: !3995)
!3998 = !DILocation(line: 480, column: 3, scope: !3990)
!3999 = !DILocation(line: 480, column: 3, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3990, file: !63, line: 480, column: 3)
!4001 = !DILocation(line: 480, column: 3, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4000, file: !63, line: 480, column: 3)
!4003 = !DILocation(line: 480, column: 3, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4000, file: !63, line: 480, column: 3)
!4005 = !{i64 2151418377, i64 2151418406, i64 2151418452, i64 2151418510, i64 2151418564, i64 2151418618, i64 2151418673, i64 2151418704}
!4006 = !DILocation(line: 483, column: 2, scope: !3861)
!4007 = !DILocation(line: 484, column: 1, scope: !3861)
!4008 = !DISubprogram(name: "kmalloc_trace", scope: !63, file: !63, line: 525, type: !4009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!81, !4011, !1999, !1355}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1735, line: 11, flags: DIFlagFwdDecl)
!4013 = distinct !DISubprogram(name: "kmalloc_type", scope: !63, file: !63, line: 401, type: !4014, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!62, !1999, !215}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "flags", arg: 1, scope: !4013, file: !63, line: 401, type: !1999)
!4018 = !DILocalVariable(name: "caller", arg: 2, scope: !4013, file: !63, line: 401, type: !215)
!4019 = !DILocation(line: 401, column: 67, scope: !4013)
!4020 = !DILocation(line: 401, column: 88, scope: !4013)
!4021 = !DILocation(line: 407, column: 6, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4013, file: !63, line: 407, column: 6)
!4023 = !DILocation(line: 407, column: 6, scope: !4013)
!4024 = !DILocation(line: 413, column: 3, scope: !4022)
!4025 = !DILocation(line: 423, column: 38, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4013, file: !63, line: 423, column: 6)
!4027 = !DILocation(line: 423, column: 44, scope: !4026)
!4028 = !DILocation(line: 423, column: 6, scope: !4013)
!4029 = !DILocation(line: 424, column: 3, scope: !4026)
!4030 = !DILocation(line: 426, column: 3, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4013, file: !63, line: 425, column: 6)
!4032 = !DILocation(line: 429, column: 1, scope: !4013)
!4033 = !DISubprogram(name: "__kmalloc", scope: !63, file: !63, line: 488, type: !2599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4034 = !DISubprogram(name: "__compiletime_assert_117", scope: !63, file: !63, line: 478, type: !11, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4035 = !DISubprogram(name: "dma_fence_wait_timeout", scope: !56, file: !56, line: 605, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4036 = distinct !DISubprogram(name: "kref_get", scope: !218, file: !218, line: 43, type: !4037, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4040)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!4040 = !{!4041}
!4041 = !DILocalVariable(name: "kref", arg: 1, scope: !4036, file: !218, line: 43, type: !4039)
!4042 = !DILocation(line: 43, column: 42, scope: !4036)
!4043 = !DILocation(line: 45, column: 16, scope: !4036)
!4044 = !DILocation(line: 45, column: 22, scope: !4036)
!4045 = !DILocation(line: 45, column: 2, scope: !4036)
!4046 = !DILocation(line: 46, column: 1, scope: !4036)
!4047 = distinct !DISubprogram(name: "refcount_inc", scope: !73, file: !73, line: 265, type: !4048, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4051)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!4051 = !{!4052}
!4052 = !DILocalVariable(name: "r", arg: 1, scope: !4047, file: !73, line: 265, type: !4050)
!4053 = !DILocation(line: 265, column: 45, scope: !4047)
!4054 = !DILocation(line: 267, column: 17, scope: !4047)
!4055 = !DILocation(line: 267, column: 2, scope: !4047)
!4056 = !DILocation(line: 268, column: 1, scope: !4047)
!4057 = distinct !DISubprogram(name: "__refcount_inc", scope: !73, file: !73, line: 248, type: !4058, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !4050, !908}
!4060 = !{!4061, !4062}
!4061 = !DILocalVariable(name: "r", arg: 1, scope: !4057, file: !73, line: 248, type: !4050)
!4062 = !DILocalVariable(name: "oldp", arg: 2, scope: !4057, file: !73, line: 248, type: !908)
!4063 = !DILocation(line: 248, column: 47, scope: !4057)
!4064 = !DILocation(line: 248, column: 55, scope: !4057)
!4065 = !DILocation(line: 250, column: 20, scope: !4057)
!4066 = !DILocation(line: 250, column: 23, scope: !4057)
!4067 = !DILocation(line: 250, column: 2, scope: !4057)
!4068 = !DILocation(line: 251, column: 1, scope: !4057)
!4069 = distinct !DISubprogram(name: "__refcount_add", scope: !73, file: !73, line: 191, type: !4070, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !132, !4050, !908}
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DILocalVariable(name: "i", arg: 1, scope: !4069, file: !73, line: 191, type: !132)
!4074 = !DILocalVariable(name: "r", arg: 2, scope: !4069, file: !73, line: 191, type: !4050)
!4075 = !DILocalVariable(name: "oldp", arg: 3, scope: !4069, file: !73, line: 191, type: !908)
!4076 = !DILocalVariable(name: "old", scope: !4069, file: !73, line: 193, type: !132)
!4077 = !DILocation(line: 191, column: 39, scope: !4069)
!4078 = !DILocation(line: 191, column: 54, scope: !4069)
!4079 = !DILocation(line: 191, column: 62, scope: !4069)
!4080 = !DILocation(line: 193, column: 2, scope: !4069)
!4081 = !DILocation(line: 193, column: 6, scope: !4069)
!4082 = !DILocation(line: 193, column: 37, scope: !4069)
!4083 = !DILocation(line: 193, column: 41, scope: !4069)
!4084 = !DILocation(line: 193, column: 44, scope: !4069)
!4085 = !DILocation(line: 193, column: 12, scope: !4069)
!4086 = !DILocation(line: 195, column: 6, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4069, file: !73, line: 195, column: 6)
!4088 = !DILocation(line: 195, column: 6, scope: !4069)
!4089 = !DILocation(line: 196, column: 11, scope: !4087)
!4090 = !DILocation(line: 196, column: 4, scope: !4087)
!4091 = !DILocation(line: 196, column: 9, scope: !4087)
!4092 = !DILocation(line: 196, column: 3, scope: !4087)
!4093 = !DILocation(line: 198, column: 6, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4069, file: !73, line: 198, column: 6)
!4095 = !DILocation(line: 198, column: 6, scope: !4069)
!4096 = !DILocation(line: 199, column: 26, scope: !4094)
!4097 = !DILocation(line: 199, column: 3, scope: !4094)
!4098 = !DILocation(line: 200, column: 11, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4094, file: !73, line: 200, column: 11)
!4100 = !DILocation(line: 200, column: 11, scope: !4094)
!4101 = !DILocation(line: 201, column: 26, scope: !4099)
!4102 = !DILocation(line: 201, column: 3, scope: !4099)
!4103 = !DILocation(line: 202, column: 1, scope: !4069)
!4104 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2141, file: !2141, line: 250, type: !4105, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!132, !132, !2157}
!4107 = !{!4108, !4109}
!4108 = !DILocalVariable(name: "i", arg: 1, scope: !4104, file: !2141, line: 250, type: !132)
!4109 = !DILocalVariable(name: "v", arg: 2, scope: !4104, file: !2141, line: 250, type: !2157)
!4110 = !DILocation(line: 250, column: 30, scope: !4104)
!4111 = !DILocation(line: 250, column: 43, scope: !4104)
!4112 = !DILocation(line: 252, column: 31, scope: !4104)
!4113 = !DILocation(line: 252, column: 2, scope: !4104)
!4114 = !DILocation(line: 253, column: 38, scope: !4104)
!4115 = !DILocation(line: 253, column: 41, scope: !4104)
!4116 = !DILocation(line: 253, column: 9, scope: !4104)
!4117 = !DILocation(line: 253, column: 2, scope: !4104)
!4118 = !DISubprogram(name: "refcount_warn_saturate", scope: !73, file: !73, line: 127, type: !4119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4050, !72}
!4121 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !3229, file: !3229, line: 731, type: !4105, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4122)
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "i", arg: 1, scope: !4121, file: !3229, line: 731, type: !132)
!4124 = !DILocalVariable(name: "v", arg: 2, scope: !4121, file: !3229, line: 731, type: !2157)
!4125 = !DILocation(line: 731, column: 34, scope: !4121)
!4126 = !DILocation(line: 731, column: 47, scope: !4121)
!4127 = !DILocation(line: 736, column: 31, scope: !4121)
!4128 = !DILocation(line: 736, column: 34, scope: !4121)
!4129 = !DILocation(line: 736, column: 9, scope: !4121)
!4130 = !DILocation(line: 736, column: 2, scope: !4121)
!4131 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !3259, file: !3259, line: 95, type: !4105, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4132)
!4132 = !{!4133, !4134, !4135}
!4133 = !DILocalVariable(name: "i", arg: 1, scope: !4131, file: !3259, line: 95, type: !132)
!4134 = !DILocalVariable(name: "v", arg: 2, scope: !4131, file: !3259, line: 95, type: !2157)
!4135 = !DILocalVariable(name: "__ret", scope: !4136, file: !3259, line: 97, type: !132)
!4136 = distinct !DILexicalBlock(scope: !4131, file: !3259, line: 97, column: 9)
!4137 = !DILocation(line: 95, column: 54, scope: !4131)
!4138 = !DILocation(line: 95, column: 67, scope: !4131)
!4139 = !DILocation(line: 97, column: 9, scope: !4136)
!4140 = !{i64 2148942497, i64 2148942536, i64 2148942557, i64 2148942594, i64 2148942617, i64 2148942626}
!4141 = !DILocation(line: 97, column: 9, scope: !4131)
!4142 = !DILocation(line: 97, column: 2, scope: !4131)
!4143 = !DISubprogram(name: "timer_shutdown_sync", scope: !248, file: !248, line: 187, type: !4144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!132, !262}
!4146 = distinct !DISubprogram(name: "dma_fence_put", scope: !56, file: !56, line: 293, type: !178, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4147)
!4147 = !{!4148}
!4148 = !DILocalVariable(name: "fence", arg: 1, scope: !4146, file: !56, line: 293, type: !103)
!4149 = !DILocation(line: 293, column: 52, scope: !4146)
!4150 = !DILocation(line: 295, column: 6, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4146, file: !56, line: 295, column: 6)
!4152 = !DILocation(line: 295, column: 6, scope: !4146)
!4153 = !DILocation(line: 296, column: 13, scope: !4151)
!4154 = !DILocation(line: 296, column: 20, scope: !4151)
!4155 = !DILocation(line: 296, column: 3, scope: !4151)
!4156 = !DILocation(line: 297, column: 1, scope: !4146)
!4157 = !DISubprogram(name: "kvfree_call_rcu", scope: !4158, file: !4158, line: 37, type: !4159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4158 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !204, !81}
!4161 = distinct !DISubprogram(name: "kref_put", scope: !218, file: !218, line: 62, type: !4162, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4165)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!132, !4039, !4164}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4165 = !{!4166, !4167}
!4166 = !DILocalVariable(name: "kref", arg: 1, scope: !4161, file: !218, line: 62, type: !4039)
!4167 = !DILocalVariable(name: "release", arg: 2, scope: !4161, file: !218, line: 62, type: !4164)
!4168 = !DILocation(line: 62, column: 41, scope: !4161)
!4169 = !DILocation(line: 62, column: 54, scope: !4161)
!4170 = !DILocation(line: 64, column: 29, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4161, file: !218, line: 64, column: 6)
!4172 = !DILocation(line: 64, column: 35, scope: !4171)
!4173 = !DILocation(line: 64, column: 6, scope: !4171)
!4174 = !DILocation(line: 64, column: 6, scope: !4161)
!4175 = !DILocation(line: 65, column: 3, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4171, file: !218, line: 64, column: 46)
!4177 = !DILocation(line: 65, column: 11, scope: !4176)
!4178 = !DILocation(line: 66, column: 3, scope: !4176)
!4179 = !DILocation(line: 68, column: 2, scope: !4161)
!4180 = !DILocation(line: 69, column: 1, scope: !4161)
!4181 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !73, file: !73, line: 331, type: !4182, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4184)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!157, !4050}
!4184 = !{!4185}
!4185 = !DILocalVariable(name: "r", arg: 1, scope: !4181, file: !73, line: 331, type: !4050)
!4186 = !DILocation(line: 331, column: 67, scope: !4181)
!4187 = !DILocation(line: 333, column: 33, scope: !4181)
!4188 = !DILocation(line: 333, column: 9, scope: !4181)
!4189 = !DILocation(line: 333, column: 2, scope: !4181)
!4190 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !73, file: !73, line: 313, type: !4191, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!157, !4050, !908}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "r", arg: 1, scope: !4190, file: !73, line: 313, type: !4050)
!4195 = !DILocalVariable(name: "oldp", arg: 2, scope: !4190, file: !73, line: 313, type: !908)
!4196 = !DILocation(line: 313, column: 69, scope: !4190)
!4197 = !DILocation(line: 313, column: 77, scope: !4190)
!4198 = !DILocation(line: 315, column: 36, scope: !4190)
!4199 = !DILocation(line: 315, column: 39, scope: !4190)
!4200 = !DILocation(line: 315, column: 9, scope: !4190)
!4201 = !DILocation(line: 315, column: 2, scope: !4190)
!4202 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !73, file: !73, line: 270, type: !4203, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!157, !132, !4050, !908}
!4205 = !{!4206, !4207, !4208, !4209}
!4206 = !DILocalVariable(name: "i", arg: 1, scope: !4202, file: !73, line: 270, type: !132)
!4207 = !DILocalVariable(name: "r", arg: 2, scope: !4202, file: !73, line: 270, type: !4050)
!4208 = !DILocalVariable(name: "oldp", arg: 3, scope: !4202, file: !73, line: 270, type: !908)
!4209 = !DILocalVariable(name: "old", scope: !4202, file: !73, line: 272, type: !132)
!4210 = !DILocation(line: 270, column: 61, scope: !4202)
!4211 = !DILocation(line: 270, column: 76, scope: !4202)
!4212 = !DILocation(line: 270, column: 84, scope: !4202)
!4213 = !DILocation(line: 272, column: 2, scope: !4202)
!4214 = !DILocation(line: 272, column: 6, scope: !4202)
!4215 = !DILocation(line: 272, column: 37, scope: !4202)
!4216 = !DILocation(line: 272, column: 41, scope: !4202)
!4217 = !DILocation(line: 272, column: 44, scope: !4202)
!4218 = !DILocation(line: 272, column: 12, scope: !4202)
!4219 = !DILocation(line: 274, column: 6, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4202, file: !73, line: 274, column: 6)
!4221 = !DILocation(line: 274, column: 6, scope: !4202)
!4222 = !DILocation(line: 275, column: 11, scope: !4220)
!4223 = !DILocation(line: 275, column: 4, scope: !4220)
!4224 = !DILocation(line: 275, column: 9, scope: !4220)
!4225 = !DILocation(line: 275, column: 3, scope: !4220)
!4226 = !DILocation(line: 277, column: 6, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4202, file: !73, line: 277, column: 6)
!4228 = !DILocation(line: 277, column: 13, scope: !4227)
!4229 = !DILocation(line: 277, column: 10, scope: !4227)
!4230 = !DILocation(line: 277, column: 6, scope: !4202)
!4231 = !DILocation(line: 278, column: 3, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4227, file: !73, line: 277, column: 16)
!4233 = !DILocation(line: 278, column: 3, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4232, file: !73, line: 278, column: 3)
!4235 = !DILocation(line: 278, column: 3, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4234, file: !73, line: 278, column: 3)
!4237 = !DILocation(line: 278, column: 3, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4234, file: !73, line: 278, column: 3)
!4239 = !DILocation(line: 278, column: 3, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4238, file: !73, line: 278, column: 3)
!4241 = !{i64 2150235195}
!4242 = !DILocation(line: 279, column: 3, scope: !4232)
!4243 = !DILocation(line: 282, column: 6, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4202, file: !73, line: 282, column: 6)
!4245 = !DILocation(line: 282, column: 6, scope: !4202)
!4246 = !DILocation(line: 283, column: 26, scope: !4244)
!4247 = !DILocation(line: 283, column: 3, scope: !4244)
!4248 = !DILocation(line: 285, column: 2, scope: !4202)
!4249 = !DILocation(line: 286, column: 1, scope: !4202)
!4250 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2141, file: !2141, line: 397, type: !4105, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4251)
!4251 = !{!4252, !4253}
!4252 = !DILocalVariable(name: "i", arg: 1, scope: !4250, file: !2141, line: 397, type: !132)
!4253 = !DILocalVariable(name: "v", arg: 2, scope: !4250, file: !2141, line: 397, type: !2157)
!4254 = !DILocation(line: 397, column: 30, scope: !4250)
!4255 = !DILocation(line: 397, column: 43, scope: !4250)
!4256 = !DILocation(line: 399, column: 2, scope: !4250)
!4257 = !DILocation(line: 399, column: 2, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4250, file: !2141, line: 399, column: 2)
!4259 = !DILocation(line: 400, column: 31, scope: !4250)
!4260 = !DILocation(line: 400, column: 2, scope: !4250)
!4261 = !DILocation(line: 401, column: 38, scope: !4250)
!4262 = !DILocation(line: 401, column: 41, scope: !4250)
!4263 = !DILocation(line: 401, column: 9, scope: !4250)
!4264 = !DILocation(line: 401, column: 2, scope: !4250)
!4265 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !3229, file: !3229, line: 928, type: !4105, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4266)
!4266 = !{!4267, !4268}
!4267 = !DILocalVariable(name: "i", arg: 1, scope: !4265, file: !3229, line: 928, type: !132)
!4268 = !DILocalVariable(name: "v", arg: 2, scope: !4265, file: !3229, line: 928, type: !2157)
!4269 = !DILocation(line: 928, column: 34, scope: !4265)
!4270 = !DILocation(line: 928, column: 47, scope: !4265)
!4271 = !DILocation(line: 936, column: 31, scope: !4265)
!4272 = !DILocation(line: 936, column: 34, scope: !4265)
!4273 = !DILocation(line: 936, column: 9, scope: !4265)
!4274 = !DILocation(line: 936, column: 2, scope: !4265)
!4275 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !3259, file: !3259, line: 101, type: !4105, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4276)
!4276 = !{!4277, !4278, !4279}
!4277 = !DILocalVariable(name: "i", arg: 1, scope: !4275, file: !3259, line: 101, type: !132)
!4278 = !DILocalVariable(name: "v", arg: 2, scope: !4275, file: !3259, line: 101, type: !2157)
!4279 = !DILocalVariable(name: "__ret", scope: !4280, file: !3259, line: 103, type: !132)
!4280 = distinct !DILexicalBlock(scope: !4275, file: !3259, line: 103, column: 9)
!4281 = !DILocation(line: 101, column: 54, scope: !4275)
!4282 = !DILocation(line: 101, column: 67, scope: !4275)
!4283 = !DILocation(line: 103, column: 9, scope: !4280)
!4284 = !{i64 2148944682, i64 2148944721, i64 2148944742, i64 2148944779, i64 2148944802, i64 2148944811}
!4285 = !DILocation(line: 103, column: 9, scope: !4275)
!4286 = !DILocation(line: 103, column: 2, scope: !4275)
!4287 = !DISubprogram(name: "_printk", scope: !4288, file: !4288, line: 153, type: !4289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4288 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!132, !163, null}
!4291 = distinct !DISubprogram(name: "i915_sw_fence_debug_hint", scope: !2, file: !2, line: 37, type: !4292, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!81, !81}
!4294 = !{!4295}
!4295 = !DILocalVariable(name: "addr", arg: 1, scope: !4291, file: !2, line: 37, type: !81)
!4296 = !DILocation(line: 37, column: 45, scope: !4291)
!4297 = !DILocation(line: 39, column: 43, scope: !4291)
!4298 = !DILocation(line: 39, column: 50, scope: !4291)
!4299 = !DILocation(line: 39, column: 2, scope: !4291)
!4300 = !DISubprogram(name: "irq_work_queue", scope: !268, file: !268, line: 57, type: !4301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!157, !291}
